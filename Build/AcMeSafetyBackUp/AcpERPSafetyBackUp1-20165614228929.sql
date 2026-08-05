-- MySQL dump 10.13  Distrib 5.6.10, for Win32 (x86)
--
-- Host: localhost    Database: emptystruct
-- ------------------------------------------------------
-- Server version	5.6.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `emptystruct`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `emptystruct` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `emptystruct`;

--
-- Table structure for table `accounting_year`
--

DROP TABLE IF EXISTS `accounting_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounting_year` (
  `ACC_YEAR_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `YEAR_FROM` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `YEAR_TO` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `BOOKS_BEGINNING_FROM` datetime DEFAULT NULL,
  `STATUS` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1-Active,0-Inactive',
  `IS_FIRST_ACCOUNTING_YEAR` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ACC_YEAR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounting_year`
--

LOCK TABLES `accounting_year` WRITE;
/*!40000 ALTER TABLE `accounting_year` DISABLE KEYS */;
INSERT INTO `accounting_year` VALUES (27,'2006-04-01 00:00:00','2007-03-31 00:00:00','2006-04-01 00:00:00',1,1),(28,'2007-04-01 00:00:00','2008-03-31 00:00:00',NULL,0,0),(29,'2008-04-01 00:00:00','2009-03-31 00:00:00',NULL,0,0),(30,'2009-04-01 00:00:00','2010-03-31 00:00:00',NULL,0,0),(31,'2010-04-01 00:00:00','2011-03-31 00:00:00',NULL,0,0),(32,'2011-04-01 00:00:00','2012-03-31 00:00:00',NULL,0,0),(33,'2012-04-01 00:00:00','2013-03-31 00:00:00',NULL,0,0),(34,'2013-04-01 00:00:00','2014-03-31 00:00:00',NULL,0,0),(35,'2014-04-01 00:00:00','2015-03-31 00:00:00',NULL,0,0),(36,'2015-04-01 00:00:00','2016-03-31 00:00:00',NULL,0,0);
/*!40000 ALTER TABLE `accounting_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acme_config`
--

DROP TABLE IF EXISTS `acme_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acme_config` (
  `NAME` varchar(100) DEFAULT NULL,
  `VALUE` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acme_config`
--

LOCK TABLES `acme_config` WRITE;
/*!40000 ALTER TABLE `acme_config` DISABLE KEYS */;
INSERT INTO `acme_config` VALUES ('Code','NES -MON'),('Name','Institute of the Brothers of St. Gabriel Society'),('Version','1.0.0');
/*!40000 ALTER TABLE `acme_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acmeerp_logo`
--

DROP TABLE IF EXISTS `acmeerp_logo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acmeerp_logo` (
  `LOGO_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LOGO` longblob,
  PRIMARY KEY (`LOGO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acmeerp_logo`
--

LOCK TABLES `acmeerp_logo` WRITE;
/*!40000 ALTER TABLE `acmeerp_logo` DISABLE KEYS */;
/*!40000 ALTER TABLE `acmeerp_logo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activitiy_rights`
--

DROP TABLE IF EXISTS `activitiy_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activitiy_rights` (
  `ACTIVITY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PARENT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `OBJECT_NAME` varchar(50) NOT NULL DEFAULT '',
  `ENUMTYPE` varchar(100) NOT NULL DEFAULT '',
  `OBJECT_TYPE` varchar(50) NOT NULL DEFAULT '',
  `OBJECT_SUB_TYPE` varchar(100) DEFAULT NULL,
  `SORT_ORDER` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ACTIVITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitiy_rights`
--

LOCK TABLES `activitiy_rights` WRITE;
/*!40000 ALTER TABLE `activitiy_rights` DISABLE KEYS */;
INSERT INTO `activitiy_rights` VALUES (2,312,'Settings','MasterSetting','Settings','Master Settings',3101),(3,2,'UI Settings','UISettings','Settings','Master Settings',3102),(4,2,'Global Settings','GlobalSettings','Settings','Master Settings',3103),(5,89,'Map Accounts','AccountMapping','Settings','Account Mapping',2501),(6,5,'Map Project','MapProject','Settings','Account Mapping',2502),(7,5,'Map Ledger','MapLedger','Settings','Account Mapping',2503),(8,5,'Map Cost Centre','MapCostCentre','Settings','Account Mapping',2504),(9,5,'Map Donor','MapDonor','Settings','Account Mapping',2505),(10,5,'Map Vouchers','MapVouchers','Settings','Account Mapping',2506),(11,312,'Transaction Period','TransactionPeriod','Settings','Transaction Period',3201),(12,11,'Create Transaction','CreateTransaction','Settings','Transaction Period',3202),(13,11,'Edit Transaction','EditTransaction','Settings','Transaction Period',3203),(14,11,'Delete Transaction','DeleteTransaction','Settings','Transaction Period',3204),(15,11,'Print Transaction','PrintTransaction','Settings','Transaction Period',3205),(16,272,'Legal Entity','LegalEntity','Settings','Legal Entity',4700),(17,16,'Create Legal Entity','CreateLegalEntity','Settings','Legal Entity',4701),(18,16,'Edit Legal Entity','EditLegalEntity','Settings','Legal Entity',4702),(19,16,'Delete Legal Entity','DeleteLegalEntity','Settings','Legal Entity',4703),(20,16,'Print Legal Entity','PrintLegalEntity','Settings','Legal Entity',4704),(22,315,'Project Category','ProjectCategory','Masters','Project Category',101),(23,22,'Create Project Category','CreateProjectCategory','Masters','Project Category',102),(24,22,'Edit Project Category','EditProjectCategory','Masters','Project Category',103),(25,22,'Delete Project Category','DeleteProjectCategory','Masters','Project Category',104),(26,22,'Print Project Category','PrintProjectCategory','Masters','Project Category',105),(27,315,'Project','Project','Masters','Project',201),(28,27,'Create Project','CreateProject','Masters','Project',202),(29,27,'Edit Project','EditProject','Masters','Project',203),(30,27,'Delete Project','DeleteProject','Masters','Project',204),(31,27,'Print Project','PrintProject','Masters','Project',205),(32,315,'Ledger Group','LedgerGroup','Masters','Ledger Group',301),(33,32,'Create Ledger Group','CreateLedgerGroup','Masters','Ledger Group',302),(34,32,'Edit Ledger Group','EditLedgerGroup','Masters','Ledger Group',303),(35,32,'Delete Ledger Group','DeleteLedgerGroup','Masters','Ledger Group',304),(36,32,'Print Ledger Group','PrintLedgerGroup','Masters','Ledger Group',305),(37,315,'Ledger','Ledger','Masters','Ledger',401),(38,37,'Create Ledger','CreateLedger','Masters','Ledger',402),(39,37,'Edit Ledger','EditLedger','Masters','Ledger',403),(40,37,'Delete Ledger','DeleteLedger','Masters','Ledger',404),(41,37,'Print Ledger','PrintLedger','Masters','Ledger',405),(42,315,'Bank Accounts','BankAccounts','Masters','Bank Accounts',601),(43,42,'Create Bank Account','CreateBankAccount','Masters','Bank Accounts',602),(44,42,'Edit Bank Account','EditBankAccount','Masters','Bank Accounts',603),(45,42,'Delete Bank Account','DeleteBankAccount','Masters','Bank Accounts',604),(46,42,'Print Bank Account','PrintBankAccount','Masters','Bank Accounts',605),(47,318,'Voucher Number Definition','VoucherNumberDefinition','Masters','Voucher Number Definition',2301),(48,47,'Create Voucher ','CreateVoucher','Masters','Voucher Number Definition',2302),(49,47,'Edit Voucher','EditVoucher','Masters','Voucher Number Definition',2303),(50,47,'Delete Voucher','DeleteVoucher','Masters','Voucher Number Definition',2304),(51,47,'Print Voucher','PrintVoucher','Masters','Voucher Number Definition',2305),(52,315,'Cost Centre','CostCentre','Masters','Cost Centre',701),(53,52,'Create Cost Centre','CreateCostCentre','Masters','Cost Centre',702),(54,52,'Edit Cost Centre','EditCostCentre','Masters','Cost Centre',703),(55,52,'Delete Cost Centre','DeleteCostCentre','Masters','Cost Centre',704),(56,52,'Print Cost Centre','PrintCostCentre','Masters','Cost Centre',705),(57,315,'Bank','Bank','Masters','Bank ',501),(58,57,'Create Bank','CreateBank','Masters','Bank ',502),(59,57,'Edit Bank','EditBank','Masters','Bank ',503),(60,57,'Delete Bank','DeleteBank','Masters','Bank ',504),(61,57,'Print Bank','PrintBank','Masters','Bank ',505),(62,315,'Country','Country','Masters','Country',801),(63,62,'Create Country','CreateCountry','Masters','Country',802),(64,62,'Edit Country','EditCountry','Masters','Country',803),(65,62,'Delete Country','DeleteCountry','Masters','Country',804),(66,62,'Print Country','PrintCountry','Masters','Country',805),(67,272,'Audit Info','Audit Info','Masters','Audit Info',5000),(68,67,'Create Audit Info','CreateAuditInfo','Masters','Audit Info',5001),(69,67,'Edit Audit Info','EditAuditInfo','Masters','Audit Info',5002),(70,67,'Delete Audit Info','DeleteAuditInfo','Masters','Audit Info',5003),(71,67,'Print Audit Info','PrintAuditInfo','Masters','Audit Info',5004),(72,272,'Governing Bodies','GoverningMembers','Masters','Governing Members',4800),(73,72,'Create Governing Bodies','CreateGoverningMember','Masters','Governing Members',4801),(74,72,'Edit Governing Bodies','EditGoverningMember','Masters','Governing Members',4802),(75,72,'Delete Governing Bodies','DeleteGoverningMember','Masters','Governing Members',4803),(76,72,'Print Governing Bodies','PrintGoverningMember','Masters','Governing Members',4804),(77,272,'Auditor','Auditor','Masters','Auditor',5100),(78,77,'Create Auditor','CreateAuditor','Masters','Auditor',5101),(79,77,'Edit Auditor','EditAuditor','Masters','Auditor',5102),(80,77,'Delete Auditor','DeleteAuditor','Masters','Auditor',5103),(81,77,'Print Auditor','PrintAuditor','Masters','Auditor',5105),(82,315,'Donor','Donor','Masters','Donor',901),(83,82,'Create Donor','CreateDonor','Masters','Donor',902),(84,82,'Edit Donor','EditDonor','Masters','Donor',903),(85,82,'Delete Donor','DeleteDonor','Masters','Donor',904),(86,82,'Print Donor','PrintDonor','Masters','Donor',905),(87,315,'Purpose','Purpose','Masters','Purpose',1001),(88,87,'Print Purpose','PrintPurpose','Masters','Purpose',1002),(89,0,'Finance','Finance','Finance','Finance',100),(90,316,'Receipt','Receipt','Finance','Receipt',1101),(91,90,'Create Receipt Voucher','CreateReceiptVoucher','Finance','Receipt',1102),(92,90,'Edit Receipt Voucher','EditReceiptVoucher','Finance','Receipt',1103),(93,90,'Delete Receipt Voucher','DeleteReceiptVoucher','Finance','Receipt',1104),(94,90,'View Receipt Voucher','ViewReceiptVoucher','Finance','Receipt',1105),(95,90,'Print Receipt Voucher','PrintReceiptVoucher','Finance','Receipt',1108),(97,316,'Payments','Payments','Finance','Payments',1201),(98,97,'Create Payment Voucher','CreatePaymentVoucher','Finance','Payments',1202),(99,97,'Edit Payment Voucher','EditPaymentVoucher','Finance','Payments',1203),(100,97,'Delete Payment Voucher','DeletePaymentVoucher','Finance','Payments',1204),(101,97,'Move Payment Voucher','MovePaymentVoucher','Finance','Payments',1207),(102,97,'Print Payment Voucher','PrintPaymentVoucher','Finance','Payments',1208),(103,316,'Contra','Contra','Finance','Contra',1301),(104,103,'Create Contra Voucher','CreateContraVoucher','Finance','Contra',1302),(105,103,'Edit Contra Voucher','EditContraVoucher','Finance','Contra',1303),(106,103,'Delete Contra Voucher','DeleteContraVoucher','Finance','Contra',1304),(107,103,'Move Contra Voucher','MoveContraVoucher','Finance','Contra',1307),(108,103,'Print Contra Voucher','PrintContraVoucher','Finance','Contra',1308),(109,90,'Move Receipt  Voucher','MoveReceiptVoucher','Finance','Receipt',1107),(110,316,'Journal','Journal','Finance','Journal',1401),(111,110,'Create Journal Voucher','CreateJournalVoucher','Finance','Journal',1402),(112,110,'Edit Journal Voucher','EditJournalVoucher','Finance','Journal',1403),(113,110,'Delete Journal Voucher','DeleteJournalVoucher','Finance','Journal',1404),(114,110,'Print Journal Voucher','PrintJournalVoucher','Finance','Journal',1406),(115,316,'Bank Reconciliation','BankReconciliation','Finance','Bank Reconciliation',1501),(116,115,'Print Bank Reconciliation','PrintBankReconciliation','Finance','Bank Reconciliation',1502),(117,115,'Bank Reconciled','BankReconciled','Finance','Bank Reconciliation',1503),(118,115,'Bank UnReconcilied','BankUnReconcilied','Finance','Bank Reconciliation',1504),(119,115,'Bank Cleared','BankCleared','Finance','Bank Reconciliation',1505),(120,115,'Bank UnCleared','BankUnCleared','Finance','Bank Reconciliation',1506),(121,316,'Budget Period','Budget','Finance','Budget Period',1601),(122,121,'Create Budget Period','CreateBudget','Finance','Budget Period',1602),(123,121,'Edit Budget Period','EditBudget','Finance','Budget Period',1603),(124,121,'Delete Budget Period','DeleteBudget','Finance','Budget Period',1603),(125,121,'Print Budget Period','PrintBudget','Finance','Budget Period',1605),(126,317,'Fixed Ledger','FixedDepositLedger','Finance','Fixed Ledger',1701),(127,126,'Create FD Ledger','CreateFDLedger','Finance','Fixed Ledger',1702),(128,126,'Edit FD Ledger','EditFDLedger','Finance','Fixed Ledger',1703),(129,126,'Delete FD Ledger','DeleteFDLedger','Finance','Fixed Ledger',1704),(130,126,'Print FD Ledger','PrintFDLedger','Finance','Fixed Ledger',1705),(131,317,'Fixed Deposit','FixedDeposit','Finance','Fixed Deposit',1751),(132,131,'Create Fixed Deposit','CreateFixedDeposit','Finance','Fixed Deposit',1752),(133,131,'Edit Fixed Deposit','EditFixedDeposit','Finance','Fixed Deposit',1753),(134,131,'Delete Fixed Deposit','DeleteFixedDeposit','Finance','Fixed Deposit',1754),(135,131,'Print Fixed Deposit','PrintFixedDeposit','Finance','Fixed Deposit',1755),(136,317,'Fixed Investment','FixedInvestment','Finance','Fixed Investment',1801),(137,136,'Create Fixed Investment','CreateFixedInvestment','Finance','Fixed Investment',1802),(138,136,'Edit Fixed Investment','EditFixedInvestment','Finance','Fixed Investment',1803),(139,136,'Delete Fixed Investment','DeleteFixedInvestment','Finance','Fixed Investment',1804),(140,136,'Print Fixed Investment','PrintFixedInvestment','Finance','Fixed Investment',1805),(141,317,'Fixed Deposit Renewal','FixedDepositRenewal','Finance','Fixed Deposit Renewal',1901),(142,141,'Renew Fixed Deposit','RenewFixedDeposit','Finance','Fixed Deposit Renewal',1902),(143,141,'Modify Fixed Deposit Renewal','ModifyFixedDepostRenewal','Finance','Fixed Deposit Renewal',1903),(144,141,'Delete Fixed Deposit Renewal','DeleteFixedDepositRenewal','Finance','Fixed Deposit Renewal',1904),(145,141,'Print Fixed Deposit Renewal','PrintFixedDepositRenewal','Finance','Fixed Deposit Renewal',1905),(146,317,'FD Withdrawal','FDWithdrawal','Finance','Fixed Deposit Withdraw',2001),(147,146,' Withdraw Fixed Deposit','WithdrawFixedDeposit','Finance','Fixed Deposit Withdraw',2002),(148,146,'Print Fixed Deposit Withdraw','PrintFixedDepositWithdraw','Finance','Fixed Deposit Withdraw',2003),(149,317,'Fixed Deposit Register','FixedDepositRegister','Finance','Fixed Deposit Register',2101),(150,149,'Print Fixed Deposit Register','PrintFixedDepositRegister','Finance','Fixed Deposit Register',2102),(152,313,'User','User','User Management','User ',3301),(153,152,'Create User','CreateUser','User Management','User',3302),(154,152,'Edit User','EditUser','User Management','User',3303),(155,152,'Delete User','DeleteUser','User Management','User',3304),(156,152,'Print User','PrintUser','User Management','User',3305),(157,313,'User Role','UserRole','User Management','User Role',3401),(158,157,'Create User Role','CreateUserRole','User Management','User Role',3402),(159,157,'Edit User Role','EditUserRole','User Management','User Role',3403),(160,157,'Delete User Role','DeleteUserRole','User Management','User Role',3404),(161,157,'Print User Role','PrintUserRole','User Management','User Role',3405),(162,313,'User Rights','UserRightsManagement','User Management','User Rights',3501),(163,162,'Assign User Rights','AssignUserRights','User Management','User Rights',3502),(164,313,'Manage User Security','ManageSecurity','User Management','Manage Security',3601),(165,164,'Reset Password','ResetPassword','User Management','Manage Security',3602),(166,157,'View User Role','ViewUserRole','User Management','User Role',3406),(167,152,'View User','ViewUser','User Management','User',3306),(168,11,'View Transaction','ViewTransaction','Settings','Transaction Period',3206),(169,16,'View Legal Entity','ViewLedgalEntity','Settings','Legal Entity',4705),(170,22,'View Project Category','ViewProjectCategory','Masters','Project Category',106),(171,27,'View Project','ViewProject','Masters','Project',206),(172,32,'View Ledger Group','ViewLedgerGroup','Masters','Ledger Group',306),(173,37,'View Ledger','ViewLedger','Masters','Ledger',406),(174,42,'View Bank Accounts','ViewBankAccounts','Masters','Bank Accounts',606),(175,47,'View Voucher','ViewVoucher','Masters','Voucher Number Definition',2306),(176,52,'View Cost Cetre','ViewCostCentre','Masters','Cost Centre',706),(177,57,'View Bank','ViewBank','Masters','Bank ',506),(178,62,'View Country','ViewCountry','Masters','Country',806),(179,67,'View Audit Info','ViewAuditInfo','Masters','Audit Info',5005),(180,72,'View Governing Bodies','ViewGoverningMembers','Masters','Governing Members',4805),(181,77,'View Auditor','ViewAuditor','Masters','Auditor',5104),(182,82,'View Donor','ViewDonor','Masters','Donor',906),(183,87,'View Purpose','ViewPurpose','Masters','Purpose',103),(184,97,'View Payment Voucher','ViewPaymentVoucher','Finance','Payments',1205),(185,103,'View Contra Voucher','ViewContraVoucher','Finance','Contra',1305),(186,110,'View Journal Voucher','ViewJournalVoucher','Finance','Journal',1405),(187,115,'View Bank Reconciliation','ViewBankReconciliation','Finance','Bank Reconciliation',1507),(188,121,'View Budget Period','ViewBudget','Finance','Budget Period',1604),(189,126,'View FD Ledger','ViewFDLedger','Finance','Fixed Ledger',1706),(190,131,'View Fixed Deposit','ViewFixedDeposit','Finance','Fixed Deposit',1756),(191,136,'View Fixed Investment','ViewFixedInvestment','Finance','Fixed Investment',1806),(192,141,'View Fixed Deposit Renewal','ViewFixedDepositRenewal','Finance','Fixed Deposit Renewal',1906),(193,146,'View Fixed Deposit Withdraw','ViewFixedDepositWithdraw','Finance','Fixed Deposit Withdraw',2004),(194,149,'View Fixed Deposit Register','ViewFixedDepositRegister','Finance','Fixed Deposit Register',2013),(195,164,'View Manage Security','ViewManageSecurity','User Management','Manage Security',3603),(196,0,'Reports','Reports','Reports','Reports',300),(197,196,'Abstract','Abstract','Reports','Activities',6001),(198,196,'Bank Activities','BankActivities','Reports','Activities',6002),(199,196,'Book of Accounts','BookofAccounts','Reports','Activities',6003),(200,196,'Final Accounts','FinalAccounts','Reports','Activities',6004),(201,196,'Foregin Contribution','ForeginContribution','Reports','Activities',6005),(202,196,'Cost Centre','CostCentre','Reports','Activities',6007),(203,196,'Financial Records','FinancialRecords','Reports','Activities',6008),(204,196,'Budget','Budget','Reports','Activities',6009),(205,0,'Utilites','DataUtility','Data Utility','Data Utility',400),(206,314,'Backup','Backup','Data Utility','Activities',4101),(207,314,'Restore','Restore','Data Utility','Activities',4001),(208,89,'Refresh Ledger Balance','RefreshBalance','Data Utility','Activities',2201),(209,89,'Regenarate Voucher Number','RegenarateVoucher','Data Utility','Activities',2401),(210,314,'Data Migration','DataMigration','Data Utility','Activities',3901),(211,314,'Data Export','DataExport','Data Utility','Activities',3701),(212,314,'Migration','MigrationMapping','Data Utility','Activities',3801),(213,89,'DashBoard','DashBoard','Finance','Dash Board',2701),(214,213,'View Receipt and Payments','ViewReceiptPayments','Finance','Dash Board',2702),(215,213,'Show FD Alert','ShowFDAlert','Finance','Dash Board',2703),(216,213,'Show Bank Reconciliation','ShowBankReconciliation','Finance','Dash Board',2704),(217,213,'Show Project Details','ShowProjectDetails','Finance','Dash Board',2705),(218,319,'Import Masters','ShowImportMasters','Data Utility','Activities',4301),(219,319,'Export Vouchers','ShowExportVouchers','Data Utility','Activities',4401),(220,319,'Map Ledgers','ShowMapLedgers','Data Utility','Activities',4501),(223,314,'Manage Multi Branch','ManageMultiBranch','Data Utility','Activities',4002),(224,314,'Sub Branch List','SubBranchList','Data Utility','Activities',4102),(225,314,'Export Master to Sub-Branch','ExportMastertoSubBranch','Data Utility','Activities',4103),(226,314,'Upload Sub-Branch Vouchers','UploadSubBranchVouchers','Data Utility','Activities',4104),(227,319,'License Key','LicenseKey','Data Utility','Activities',4201),(228,319,'Upload Database','UploadDatabase','Data Utility','Activities',4501),(229,314,'Portal Updates','PortalUpdates','Data Utility','Activities',4105),(230,315,'Audit Lock Type','AuditLockType','Masters','Audit Lock Type',880),(231,230,'Create Lock Type','CreateLockType','Masters','Audit Lock Type',881),(232,230,'Edit Lock Type','EditLockType','Masters','Audit Lock Type',882),(233,230,'Delete Lock Type','DeleteLockType','Masters','Audit Lock Type',883),(234,230,'Print Lock Type','PrintLockType','Masters','Audit Lock Type',884),(235,318,'Audit Lock Trans','AuditLockTrans','Masters','Audit Lock Trans',2600),(236,235,'Create Lock Trans','CreateLockTrans','Masters','Audit Lock Trans',2601),(237,235,'Edit Lock Trans','EditLockTrans','Masters','Audit Lock Trans',2602),(238,235,'Delete Lock Trans','DeleteLockTrans','Masters','Audit Lock Trans',2603),(239,235,'Print Lock Trans','PrintLockTrans','Masters','Audit Lock Trans',2604),(240,230,'View Lock Type','ViewLockType','Masters','Audit Lock Type',885),(241,235,'View Lock Trans','ViewLockTrans','Masters','Audit Lock Trans',2605),(242,316,'Budget Annual','BudgetAnnual','Finance','Budget Annual',1650),(243,242,'Create Budget Annual','CreateBudgetAnnual','Finance','Budget Annual',1651),(244,242,'Edit Budget Annual','EditBudgetAnnual','Finance','Budget Annual',1652),(245,242,'Delete Budget Annual','DeleteBudgetAnnual','Finance','Budget Annual',1653),(246,242,'Print Budget Annual','PrintBudgetAnnual','Finance','Budget Annual',1655),(247,242,'View Budget Annual','ViewBudgetAnnual','Finance','Budget Annual',1654),(254,315,'State','State','Masters','State',850),(255,254,'Create State','CreateState','Masters','State',851),(256,254,'Edit State','EditState','Masters','State',852),(257,254,'Delete State','DeleteState','Masters','State',853),(258,254,'Print State','PrintState','Masters','State',854),(259,254,'View State','ViewState','Masters','State',855),(260,315,'Cost Centre Category','CostCentreCategory','Masters','Cost Centre Category',650),(261,260,'Create Cost Centre Category','CreateCostCentreCategory','Masters','Cost Centre Category',651),(262,260,'Edit Cost Centre Category','EditCostCentreCategory','Masters','Cost Centre Category',652),(263,260,'Delete Cost Centre Category','DeleteCostCentreCategory','Masters','Cost Centre Category',653),(264,260,'Print Cost Centre Category','PrintCostCentreCategory','Masters','Cost Centre Category',654),(265,260,'View Cost Centre Category','ViewCostCentreCategory','Masters','Cost Centre Category',655),(266,90,'Insert Receipt Voucher','InsertReceiptVoucher','Finance','Receipt',1106),(267,97,'Insert Payment Voucher','InsertPaymentVoucher','Finance','Payment',1206),(268,103,'Insert Contra Voucher','InsertContraVoucher','Finance','Contra',1306),(269,90,'Show Nagative Balance','ShowReceiptNagativeBalance','Finance','Receipt',1109),(270,97,'Show Nagative Balance','ShowPaymentNagativeBalance','Finance','Payment',1209),(271,103,'Show Nagative Balance','ShowContraNagativeBalance','Finance','Contra',1309),(272,0,'Statutory','Statutory','TDS','TDS',200),(273,320,'TDS Company Info','TDSCompanyInfo','TDS','TDS',5200),(274,320,'TDS Section','TDSSection','TDS','TDS',5300),(275,274,'Create TDS Section','CreateTDSSection','TDS','TDS',5301),(276,274,'Edit TDS Section','EditTDSSection','TDS','TDS',5302),(277,274,'Delete TDS Section','DeleteTDSSection','TDS','TDS',5303),(278,274,'Print TDS Section','PrintTDSSection','TDS ','TDS',5304),(279,274,'View TDS Section','ViewTDSSection','TDS','TDS',5305),(280,320,'Audit Type','AuditType','TDS','TDS',4900),(281,280,'Create Audit Type','CreateAuditType','TDS','TDS',4901),(282,280,'Edit Audit Type','EditAuditType','TDS','TDS',4902),(283,280,'Delete Audit Type','DeleteAuditType','TDS','TDS',4903),(284,280,'Print Audit Type','PrintAuditType','TDS','TDS',4904),(285,280,'View Audit Type','ViewAuditType','TDS','TDS',4905),(286,320,'TDS Nature of Payments','TDSNatureofPayments','TDS','TDS',5400),(287,286,'Create Nature of Payments','CreateNatureofPayments','TDS','TDS',5401),(288,286,'Edit Nature of Payments','EditNatureofPayments','TDS','TDS',5402),(289,286,'Delete Nature of Payments','DeleteNatureofPayments','TDS','TDS',5403),(290,286,'Print Nature of Payments','PrintNatureofPayments','TDS','TDS',5404),(291,286,'View Nature of Payments','ViewNatureofPayments','TDS','TDS',5405),(292,320,'TDS Deductee Type','TDSDeducteeType','TDS','TDS',5500),(293,292,'Create Deductee Type','CreateDeducteeType','TDS','TDS',5501),(294,292,'Edit Deductee Type','EditDeducteeType','TDS','TDS',5502),(295,292,'Delete DeducteeType','DeleteDeducteeType','TDS','TDS',5503),(296,292,'Print Deductee Type','PrintDeducteeType','TDS','TDS',5504),(297,292,'View Deductee Type','ViewDeducteeType','TDS','TDS',5505),(298,320,'TDS Policy','TDSPolicy','TDS','TDS',5600),(299,298,'Edit TDS Policy','EditTDSPolicy','TDS','TDS',5601),(300,298,'Delete TDS Policy','DeleteTDSPolicy','TDS','TDS',502),(301,298,'View TDS Policy','ViewTDSPolicy','TDS','TDS',5603),(302,320,'TDS Ledger','TDSLedger','TDS','TDS',5700),(303,302,'Print TDS Ledger','PrintTDSLedger','TDS','TDS',5701),(304,302,'View TDS Ledger','ViewTDSLedger','TDS','TDS',5702),(305,320,'TDS Duty Tax','TDSDutyTax','TDS','TDS',5800),(306,305,'Edit Duty Tax','EditDutyTax','TDS','TDS',5801),(307,305,'Print Duty Tax','PrintDutyTax','TDS','TDS',5802),(308,305,'View Duty Tax','ViewDutyTax','TDS','TDS',5803),(309,321,'TDS Deduction','TDSDeduction','TDS','TDS',5900),(310,5,'Map FC Purpose','MapFCPurpose','Masters','Account Mapping',2507),(311,312,'Institute Info','InstituteInfo','Masters','Utilities',3001),(312,205,'Configuration','Configuration','Utility','Utility',500),(313,205,'User Management','User Management','Utility','Utility',600),(314,205,'Data Management','Data Management','Utility','Utility',700),(315,89,'Masters','Masters','Finance','Finance',100),(316,89,'Accounting','Accounting','Finance','Finance',200),(317,89,'Fixed Deposit','Fixed Deposit','Finance','Finance',300),(318,89,'Options','Options','Finance','Finance',400),(319,205,'Head Office Interface','HeadOfficeInterface','Utility','Utility',800),(320,272,'TDS Masters','TDS Masters','TDS','TDS',4699),(321,272,'Transactions','Transactions','TDS','TDS',5801),(359,2,'Finnance Setting','FinanceSettings','Settings','Master Settings',NULL),(360,2,'TDS Setting','TDSSetting','Settings','Master Settings',NULL),(361,2,'Asset Setting','AssetSetting','Settings','Master Settings',NULL);
/*!40000 ALTER TABLE `activitiy_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allot_fund`
--

DROP TABLE IF EXISTS `allot_fund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allot_fund` (
  `BUDGET_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MONTH1` decimal(13,2) NOT NULL DEFAULT '0.00',
  `MONTH2` decimal(13,2) NOT NULL DEFAULT '0.00',
  `MONTH3` decimal(13,2) NOT NULL DEFAULT '0.00',
  `MONTH4` decimal(13,2) NOT NULL DEFAULT '0.00',
  `MONTH5` decimal(13,2) NOT NULL DEFAULT '0.00',
  `MONTH6` decimal(13,2) NOT NULL DEFAULT '0.00',
  `MONTH7` decimal(13,2) NOT NULL DEFAULT '0.00',
  `MONTH8` decimal(13,2) NOT NULL DEFAULT '0.00',
  `MONTH9` decimal(13,2) NOT NULL DEFAULT '0.00',
  `MONTH10` decimal(13,2) NOT NULL DEFAULT '0.00',
  `MONTH11` decimal(13,2) NOT NULL DEFAULT '0.00',
  `MONTH12` decimal(13,2) NOT NULL DEFAULT '0.00',
  KEY `FK_BUDGET_ID` (`BUDGET_ID`),
  KEY `FK_LEDGER_ID` (`LEDGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allot_fund`
--

LOCK TABLES `allot_fund` WRITE;
/*!40000 ALTER TABLE `allot_fund` DISABLE KEYS */;
/*!40000 ALTER TABLE `allot_fund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch_office`
--

DROP TABLE IF EXISTS `branch_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch_office` (
  `BRANCH_OFFICE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BRANCH_OFFICE_CODE` varchar(12) NOT NULL DEFAULT '',
  `BRANCH_OFFICE_NAME` varchar(50) NOT NULL DEFAULT '',
  `HEAD_OFFICE_CODE` varchar(6) NOT NULL DEFAULT '0',
  `CREATED_DATE` datetime DEFAULT NULL,
  `CREATED_BY` int(10) unsigned DEFAULT NULL,
  `DEPLOYMENT_TYPE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 Standalone 1    Client-Server',
  `ADDRESS` text,
  `STATE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PINCODE` varchar(6) NOT NULL DEFAULT '',
  `COUNTRY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PHONE_NO` varchar(20) NOT NULL DEFAULT '',
  `MOBILE_NO` varchar(15) NOT NULL DEFAULT '',
  `BRANCH_EMAIL_ID` varchar(100) NOT NULL DEFAULT '',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1 - Created\r\n2 - Activated\r\n3 - De Activated',
  `MODIFIED_DATE` datetime DEFAULT NULL,
  `MODIFIED_BY` int(10) unsigned DEFAULT NULL,
  `USER_CREATED_STATUS` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 - Created (Head office)\r\n1 - Communicated for approval (Head office Approval)\r\n2 - User created and Not communicated (User- Email Comm)\r\n3 - Communicated to head office',
  `CITY` varchar(100) DEFAULT NULL,
  `BRANCH_PART_CODE` varchar(6) NOT NULL DEFAULT '' COMMENT 'To save branch code of 6 digits',
  `COUNTRY_CODE` varchar(5) DEFAULT NULL,
  `BRANCH_KEY_CODE` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`BRANCH_OFFICE_ID`),
  UNIQUE KEY `Index_BranchCode` (`BRANCH_OFFICE_CODE`),
  KEY `Unique_Branch_Key_Code` (`BRANCH_KEY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_office`
--

LOCK TABLES `branch_office` WRITE;
/*!40000 ALTER TABLE `branch_office` DISABLE KEYS */;
/*!40000 ALTER TABLE `branch_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_costcenter`
--

DROP TABLE IF EXISTS `budget_costcenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_costcenter` (
  `BUDGET_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `COST_CENTRE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `COST_CENTRE_TABLE` varchar(45) DEFAULT NULL,
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `SEQUENCE_NO` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_costcenter`
--

LOCK TABLES `budget_costcenter` WRITE;
/*!40000 ALTER TABLE `budget_costcenter` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget_costcenter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_ledger`
--

DROP TABLE IF EXISTS `budget_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_ledger` (
  `BUDGET_ID` int(11) NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `TRANS_MODE` varchar(2) NOT NULL DEFAULT '',
  `NARRATION` varchar(150) DEFAULT NULL,
  KEY `FK_BUDGET_LEDGER_BUDGET_ID` (`BUDGET_ID`),
  KEY `FK_budget_ledger_LEDGER_ID` (`LEDGER_ID`),
  CONSTRAINT `FK_budget_ledger_LEDGER_ID` FOREIGN KEY (`LEDGER_ID`) REFERENCES `master_ledger` (`LEDGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_ledger`
--

LOCK TABLES `budget_ledger` WRITE;
/*!40000 ALTER TABLE `budget_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_master`
--

DROP TABLE IF EXISTS `budget_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_master` (
  `BUDGET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BUDGET_NAME` varchar(150) NOT NULL DEFAULT '' COMMENT 'Name of the budget',
  `BUDGET_TYPE_ID` int(11) NOT NULL DEFAULT '0' COMMENT 'Accounting Year/ Period',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Project for which the budget is prepared',
  `DATE_FROM` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DATE_TO` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `REMARKS` varchar(500) DEFAULT NULL COMMENT 'Comments on the budget',
  `IS_ACTIVE` int(11) NOT NULL DEFAULT '1' COMMENT '1- Active  0 - Inactive',
  PRIMARY KEY (`BUDGET_ID`),
  KEY `FK_budget_master_Project_id` (`PROJECT_ID`),
  CONSTRAINT `FK_budget_master_PROJECT_ID` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_master`
--

LOCK TABLES `budget_master` WRITE;
/*!40000 ALTER TABLE `budget_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_type`
--

DROP TABLE IF EXISTS `budget_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_type` (
  `BUDGET_TYPE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BUDGET_TYPE` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`BUDGET_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_type`
--

LOCK TABLES `budget_type` WRITE;
/*!40000 ALTER TABLE `budget_type` DISABLE KEYS */;
INSERT INTO `budget_type` VALUES (1,'Accounting Year'),(2,'Period');
/*!40000 ALTER TABLE `budget_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costcategory_costcentre`
--

DROP TABLE IF EXISTS `costcategory_costcentre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `costcategory_costcentre` (
  `COST_CATEGORY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `COST_CENTRE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`COST_CATEGORY_ID`,`COST_CENTRE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costcategory_costcentre`
--

LOCK TABLES `costcategory_costcentre` WRITE;
/*!40000 ALTER TABLE `costcategory_costcentre` DISABLE KEYS */;
INSERT INTO `costcategory_costcentre` VALUES (4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(4,13),(4,14),(4,15),(4,16),(4,17),(4,18),(4,19),(4,20),(4,21),(4,22),(4,23),(4,24),(4,25),(4,26),(4,27),(4,28),(4,29),(4,30),(4,31),(4,32),(4,33),(4,34),(4,35),(4,36),(4,37),(4,38),(4,39),(4,40),(4,41),(4,42),(4,43),(4,44),(4,45),(4,46),(4,47),(4,48),(4,49),(4,50),(4,51),(4,52),(4,53),(4,54),(4,55),(4,56),(4,57),(4,58),(4,59),(4,60),(4,61),(4,62),(4,63),(4,64),(4,65),(4,66),(4,67),(4,68),(4,69),(4,70),(4,71),(4,72),(4,73),(4,74),(4,75),(4,76),(4,77),(4,78),(4,79),(4,80),(4,81),(4,82),(4,83),(4,84),(4,85),(4,86),(4,87),(4,88),(4,89),(4,90),(4,91),(4,92),(4,93),(4,94),(4,95),(4,96),(4,97),(4,98),(4,99),(4,100),(4,101),(4,102),(4,103),(4,104),(4,105),(4,106),(4,107),(4,108),(4,109),(4,110),(4,111),(4,112),(4,113),(4,114),(4,115),(4,116),(4,117),(4,118),(4,119),(4,120),(4,121),(4,122),(4,123),(4,124),(4,125),(4,126),(4,127),(4,128),(4,129),(4,130),(4,131),(4,132),(4,133),(4,134),(4,135),(4,136),(4,137),(4,138),(4,139),(4,140),(4,141),(4,142),(4,143),(4,144),(4,145),(4,146),(4,147),(4,148),(4,149),(4,150),(4,151),(4,152),(4,153),(4,154),(4,155),(4,156),(4,157),(4,158),(4,159),(4,160),(4,161),(4,162),(4,163),(4,164),(4,165),(4,166),(4,167),(4,168),(4,169),(4,170),(4,171),(4,172),(4,173),(4,174),(4,175),(4,176),(4,177),(4,178),(4,179),(4,180),(4,181),(4,182),(4,183),(4,184),(4,185),(4,186),(4,187),(4,188),(4,189),(4,190),(4,191),(4,192),(4,193),(4,194),(4,195),(4,196),(4,197),(4,198),(4,199),(4,200),(4,201),(4,202),(4,203),(4,204),(4,205),(4,206),(4,207),(4,208),(4,209),(4,210),(4,211),(4,212),(4,213),(4,214),(4,215),(4,216),(4,217),(4,218),(4,219),(4,220),(4,221),(4,222),(4,223),(4,224),(4,225),(4,226),(4,227),(4,228),(4,229),(4,230),(4,231),(4,232),(4,233),(4,234),(4,235),(4,236),(4,237),(4,238),(4,239),(4,240),(4,241),(4,242),(4,243),(4,244),(4,245),(4,246),(4,247),(4,248),(4,249),(4,250),(4,251),(4,252),(4,253),(4,254),(4,255),(4,256),(4,257),(4,258),(4,259),(4,260),(4,261),(4,262),(4,263),(4,264),(4,265),(4,266),(4,267),(4,268),(4,269),(4,270),(4,271),(4,272),(4,273),(4,274),(4,275),(4,276),(4,277),(4,278),(4,279),(4,280),(4,281),(4,282),(4,283),(4,284),(4,285),(4,286),(4,287),(4,288),(4,289),(4,290),(4,291),(4,292),(4,293),(4,294),(4,295),(4,296),(4,297),(4,298),(4,299),(4,300),(4,301),(4,302),(4,303),(4,304),(4,305),(4,306),(4,307),(4,308),(4,309),(4,310),(4,311),(4,312),(4,313),(4,314),(4,315),(4,316),(4,317),(4,318),(4,319),(5,320),(5,321),(5,322),(5,323),(5,324),(5,325),(5,326),(5,327),(5,328),(5,329),(5,330),(5,331),(5,332),(5,333),(5,334),(5,335),(5,336),(5,337),(5,338),(5,339),(5,340),(5,341),(5,342),(5,343),(5,344),(5,345),(5,346),(5,347),(5,348),(5,349),(5,350),(5,351),(5,352),(5,353),(5,354),(5,355),(5,356),(5,357),(5,358),(5,359),(5,360),(5,361),(5,362),(5,363),(5,364),(5,365),(5,366),(5,367),(5,368),(5,369),(5,370),(5,371),(5,372),(5,373),(5,374),(5,375),(5,376),(5,377),(5,378),(5,379),(5,380),(5,381),(5,382),(5,383),(5,384),(5,385),(5,386),(5,387),(5,388),(5,389),(5,390),(5,391),(5,392),(5,393),(5,394),(5,395),(5,396),(5,397),(5,398),(5,399),(5,400),(5,401),(5,402),(5,403),(5,404),(5,405),(5,406),(5,407),(5,408),(5,409),(5,410),(5,411),(5,412),(5,413),(5,414),(5,415),(5,416),(5,417),(5,418),(5,419),(5,420),(5,421),(5,422),(5,423),(5,424),(5,425),(5,426),(5,427),(5,428),(5,429),(5,430),(5,431),(5,432),(5,433),(5,434),(5,435),(5,436),(5,437),(5,438),(5,439),(5,440),(5,441),(5,442),(5,443),(5,444),(5,445),(5,446),(5,447),(5,448),(5,449),(5,450),(5,451),(5,452),(5,453),(5,454),(5,455),(5,456),(5,457),(5,458),(5,459),(5,460),(5,461),(5,462),(5,463),(5,464),(5,465),(5,466),(5,467),(5,468),(5,469),(5,470),(5,471),(5,472),(5,473),(5,474),(5,475),(5,476),(5,477),(5,478),(5,479),(5,480),(5,481),(5,482),(5,483),(5,484),(5,485),(5,486),(5,487),(5,488),(5,489),(5,490),(5,491),(5,492),(5,493),(5,494),(5,495),(5,496),(5,497),(5,498),(5,499),(5,500),(5,501),(5,502),(5,503),(5,504),(5,505),(5,506),(5,507),(5,508),(5,509),(5,510),(5,511),(5,512),(5,513),(5,514),(5,515),(5,516),(5,517),(5,518),(5,519),(5,520),(5,521),(5,522),(5,523),(5,524),(5,525),(5,526),(5,527),(5,528),(5,529),(5,530),(5,531),(5,532),(5,533),(5,534),(5,535),(5,536),(5,537),(5,538),(5,539),(5,540),(5,541),(5,542),(5,543),(5,544),(5,545),(5,546),(5,547),(5,548),(5,549),(5,550),(5,551),(5,552),(5,553),(5,554),(5,555),(5,556),(5,557),(5,558),(5,559),(5,560),(5,561),(5,562),(5,563),(5,564),(5,565),(5,566),(5,567),(5,568),(5,569),(5,570),(5,571),(5,572),(5,573),(5,574),(5,575),(5,576),(5,577),(5,578),(5,579),(5,580),(5,581),(5,582),(5,583),(5,584),(5,585),(5,586),(5,587),(5,588),(5,589),(5,590),(5,591),(5,592),(5,593),(5,594),(5,595),(5,596),(5,597),(5,598),(5,599),(5,600),(5,601),(5,602),(5,603),(5,604),(5,605),(5,606),(5,607),(5,608),(5,609),(5,610),(5,611),(5,612),(5,613),(5,614),(5,615),(5,616),(5,617),(5,618),(5,619),(5,620),(5,621),(5,622),(5,623),(5,624),(5,625),(5,626),(5,627),(5,628),(5,629),(5,630),(5,631),(5,632),(5,633),(5,634),(5,635),(5,636),(5,637),(5,638),(6,639),(6,640),(6,641),(6,642),(6,643),(6,644),(6,645),(6,646),(6,647),(6,648),(6,649),(6,650),(6,651),(6,652),(6,653),(6,654),(6,655),(6,656),(6,657),(6,658),(6,659),(6,660),(6,661),(6,662),(6,663),(6,664),(6,665),(6,666),(6,667),(6,668),(6,669),(6,670),(6,671),(6,672),(6,673),(6,674),(6,675),(6,676),(6,677),(6,678),(6,679),(6,680),(6,681),(6,682),(6,683),(6,684),(6,685),(6,686),(6,687),(6,688),(6,689),(6,690),(6,691),(6,692),(6,693),(6,694),(6,695),(6,696),(6,697),(6,698),(6,699),(6,700),(6,701),(6,702),(6,703),(6,704),(6,705),(6,706),(6,707),(6,708),(6,709),(6,710),(6,711),(6,712),(6,713),(6,714),(6,715),(6,716),(6,717),(6,718),(6,719),(6,720),(6,721),(6,722),(6,723),(6,724),(6,725),(6,726),(6,727),(6,728),(6,729),(6,730),(6,731),(6,732),(6,733),(6,734),(6,735),(6,736),(6,737),(6,738),(6,739),(6,740),(6,741),(6,742),(6,743),(6,744),(6,745),(6,746),(6,747),(6,748),(6,749),(6,750),(6,751),(6,752),(6,753),(6,754),(6,755),(6,756),(6,757),(6,758),(6,759),(6,760),(6,761),(6,762),(6,763),(6,764),(6,765),(6,766),(6,767),(6,768),(6,769),(6,770),(6,771),(6,772),(6,773),(6,774),(6,775),(6,776),(6,777),(6,778),(6,779),(6,780),(6,781),(6,782),(6,783),(6,784),(6,785),(6,786),(6,787),(6,788),(6,789),(6,790),(6,791),(6,792),(6,793),(6,794),(6,795),(6,796),(6,797),(6,798),(6,799),(6,800),(6,801),(6,802),(6,803),(6,804),(6,805),(6,806),(6,807),(6,808),(6,809),(6,810),(6,811),(6,812),(6,813),(6,814),(6,815),(6,816),(6,817),(6,818),(6,819),(6,820),(6,821),(6,822),(6,823),(6,824),(6,825),(6,826),(6,827),(6,828),(6,829),(6,830),(6,831),(6,832),(6,833),(6,834),(6,835),(6,836),(6,837),(6,838),(6,839),(6,840),(6,841),(6,842),(6,843),(6,844),(6,845),(6,846),(6,847),(6,848),(6,849),(6,850),(6,851),(6,852),(6,853),(6,854),(6,855),(6,856),(6,857),(6,858),(6,859),(6,860),(6,861),(6,862),(6,863),(6,864),(6,865),(6,866),(6,867),(6,868),(6,869),(6,870),(6,871),(6,872),(6,873),(6,874),(6,875),(6,876),(6,877),(6,878),(6,879),(6,880),(6,881),(6,882),(6,883),(6,884),(6,885),(6,886),(6,887),(6,888),(6,889),(6,890),(6,891),(6,892),(6,893),(6,894),(6,895),(6,896),(6,897),(6,898),(6,899),(6,900),(6,901),(6,902),(6,903),(6,904),(6,905),(6,906),(6,907),(6,908),(6,909),(6,910),(6,911),(6,912),(6,913),(6,914),(6,915),(6,916),(6,917),(6,918),(6,919),(6,920),(6,921),(6,922),(6,923),(6,924),(6,925),(6,926),(6,927),(6,928),(6,929),(6,930),(6,931),(6,932),(6,933),(6,934),(6,935),(6,936),(6,937),(6,938),(6,939),(6,940),(6,941),(6,942),(6,943),(6,944),(6,945),(6,946),(6,947),(6,948),(6,949),(6,950),(6,951),(6,952),(6,953),(6,954),(6,955),(6,956),(6,957),(7,958),(7,959),(7,960),(7,961),(7,962),(7,963),(7,964),(7,965),(7,966),(7,967),(7,968),(7,969),(7,970),(7,971),(7,972),(7,973),(7,974),(7,975),(7,976),(7,977),(7,978),(7,979),(7,980),(7,981),(7,982),(7,983),(7,984),(7,985),(7,986),(7,987),(7,988),(7,989),(7,990),(7,991),(7,992),(7,993),(7,994),(7,995),(7,996),(7,997),(7,998),(7,999),(7,1000),(7,1001),(7,1002),(7,1003),(7,1004),(7,1005),(7,1006),(7,1007),(7,1008),(7,1009),(7,1010),(7,1011),(7,1012),(7,1013),(7,1014),(7,1015),(7,1016),(7,1017),(7,1018),(7,1019),(7,1020),(7,1021),(7,1022),(7,1023),(7,1024),(7,1025),(7,1026),(7,1027),(7,1028),(7,1029),(7,1030),(7,1031),(7,1032),(7,1033),(7,1034),(7,1035),(7,1036),(7,1037),(7,1038),(7,1039),(7,1040),(7,1041),(7,1042),(7,1043),(7,1044),(7,1045),(7,1046),(7,1047),(7,1048),(7,1049),(7,1050),(7,1051),(7,1052),(7,1053),(7,1054),(7,1055),(7,1056),(7,1057),(7,1058),(7,1059),(7,1060),(7,1061),(7,1062),(7,1063),(7,1064),(7,1065),(7,1066),(7,1067),(7,1068),(7,1069),(7,1070),(7,1071),(7,1072),(7,1073),(7,1074),(7,1075),(7,1076),(7,1077),(7,1078),(7,1079),(7,1080),(7,1081),(7,1082),(7,1083),(7,1084),(7,1085),(7,1086),(7,1087),(7,1088),(7,1089),(7,1090),(7,1091),(7,1092),(7,1093),(7,1094),(7,1095),(7,1096),(7,1097),(7,1098),(7,1099),(7,1100),(7,1101),(7,1102),(7,1103),(7,1104),(7,1105),(7,1106),(7,1107),(7,1108),(7,1109),(7,1110),(7,1111),(7,1112),(7,1113),(7,1114),(7,1115),(7,1116),(7,1117),(7,1118),(7,1119),(7,1120),(7,1121),(7,1122),(7,1123),(7,1124),(7,1125),(7,1126),(7,1127),(7,1128),(7,1129),(7,1130),(7,1131),(7,1132),(7,1133),(7,1134),(7,1135),(7,1136),(7,1137),(7,1138),(7,1139),(7,1140),(7,1141),(7,1142),(7,1143),(7,1144),(7,1145),(7,1146),(7,1147),(7,1148),(7,1149),(7,1150),(7,1151),(7,1152),(7,1153),(7,1154),(7,1155),(7,1156),(7,1157),(7,1158),(7,1159),(7,1160),(7,1161),(7,1162),(7,1163),(7,1164),(7,1165),(7,1166),(7,1167),(7,1168),(7,1169),(7,1170),(7,1171),(7,1172),(7,1173),(7,1174),(7,1175),(7,1176),(7,1177),(7,1178),(7,1179),(7,1180),(7,1181),(7,1182),(7,1183),(7,1184),(7,1185),(7,1186),(7,1187),(7,1188),(7,1189),(7,1190),(7,1191),(7,1192),(7,1193),(7,1194),(7,1195),(7,1196),(7,1197),(7,1198),(7,1199),(7,1200),(7,1201),(7,1202),(7,1203),(7,1204),(7,1205),(7,1206),(7,1207),(7,1208),(7,1209),(7,1210),(7,1211),(7,1212),(7,1213),(7,1214),(7,1215),(7,1216),(7,1217),(7,1218),(7,1219),(7,1220),(7,1221),(7,1222),(7,1223),(7,1224),(7,1225),(7,1226),(7,1227),(7,1228),(7,1229),(7,1230),(7,1231),(7,1232),(7,1233),(7,1234),(7,1235),(7,1236),(7,1237),(7,1238),(7,1239),(7,1240),(7,1241),(7,1242),(7,1243),(7,1244),(7,1245),(7,1246),(7,1247),(7,1248),(7,1249),(7,1250),(7,1251),(7,1252),(7,1253),(7,1254),(7,1255),(7,1256),(7,1257),(7,1258),(7,1259),(7,1260),(7,1261),(7,1262),(7,1263),(7,1264),(7,1265),(7,1266),(7,1267),(7,1268),(7,1269),(7,1270),(7,1271),(7,1272),(7,1273),(7,1274),(7,1275),(7,1276),(8,1277),(8,1278),(8,1279),(8,1280),(8,1281),(8,1282),(8,1283),(8,1284),(8,1285),(8,1286),(8,1287),(8,1288),(8,1289),(8,1290),(8,1291),(8,1292),(8,1293),(8,1294),(8,1295),(8,1296),(8,1297),(8,1298),(8,1299),(8,1300),(8,1301),(8,1302),(8,1303),(8,1304),(8,1305),(8,1306),(8,1307),(8,1308),(8,1309),(8,1310),(8,1311),(8,1312),(8,1313),(8,1314),(8,1315),(8,1316),(8,1317),(8,1318),(8,1319),(8,1320),(8,1321),(8,1322),(8,1323),(8,1324),(8,1325),(8,1326),(8,1327),(8,1328),(8,1329),(8,1330),(8,1331),(8,1332),(8,1333),(8,1334),(8,1335),(8,1336),(8,1337),(8,1338),(8,1339),(8,1340),(8,1341),(8,1342),(8,1343),(8,1344),(8,1345),(8,1346),(8,1347),(8,1348),(8,1349),(8,1350),(8,1351),(8,1352),(8,1353),(8,1354),(8,1355),(8,1356),(8,1357),(8,1358),(8,1359),(8,1360),(8,1361),(8,1362),(8,1363),(8,1364),(8,1365),(8,1366),(8,1367),(8,1368),(8,1369),(8,1370),(8,1371),(8,1372),(8,1373),(8,1374),(8,1375),(8,1376),(8,1377),(8,1378),(8,1379),(8,1380),(8,1381),(8,1382),(8,1383),(8,1384),(8,1385),(8,1386),(8,1387),(8,1388),(8,1389),(8,1390),(8,1391),(8,1392),(8,1393),(8,1394),(8,1395),(8,1396),(8,1397),(8,1398),(8,1399),(8,1400),(8,1401),(8,1402),(8,1403),(8,1404),(8,1405),(8,1406),(8,1407),(8,1408),(8,1409),(8,1410),(8,1411),(8,1412),(8,1413),(8,1414),(8,1415),(8,1416),(8,1417),(8,1418),(8,1419),(8,1420),(8,1421),(8,1422),(8,1423),(8,1424),(8,1425),(8,1426),(8,1427),(8,1428),(8,1429),(8,1430),(8,1431),(8,1432),(8,1433),(8,1434),(8,1435),(8,1436),(8,1437),(8,1438),(8,1439),(8,1440),(8,1441),(8,1442),(8,1443),(8,1444),(8,1445),(8,1446),(8,1447),(8,1448),(8,1449),(8,1450),(8,1451),(8,1452),(8,1453),(8,1454),(8,1455),(8,1456),(8,1457),(8,1458),(8,1459),(8,1460),(8,1461),(8,1462),(8,1463),(8,1464),(8,1465),(8,1466),(8,1467),(8,1468),(8,1469),(8,1470),(8,1471),(8,1472),(8,1473),(8,1474),(8,1475),(8,1476),(8,1477),(8,1478),(8,1479),(8,1480),(8,1481),(8,1482),(8,1483),(8,1484),(8,1485),(8,1486),(8,1487),(8,1488),(8,1489),(8,1490),(8,1491),(8,1492),(8,1493),(8,1494),(8,1495),(8,1496),(8,1497),(8,1498),(8,1499),(8,1500),(8,1501),(8,1502),(8,1503),(8,1504),(8,1505),(8,1506),(8,1507),(8,1508),(8,1509),(8,1510),(8,1511),(8,1512),(8,1513),(8,1514),(8,1515),(8,1516),(8,1517),(8,1518),(8,1519),(8,1520),(8,1521),(8,1522),(8,1523),(8,1524),(8,1525),(8,1526),(8,1527),(8,1528),(8,1529),(8,1530),(8,1531),(8,1532),(8,1533),(8,1534),(8,1535),(8,1536),(8,1537),(8,1538),(8,1539),(8,1540),(8,1541),(8,1542),(8,1543),(8,1544),(8,1545),(8,1546),(8,1547),(8,1548),(8,1549),(8,1550),(8,1551),(8,1552),(8,1553),(8,1554),(8,1555),(8,1556),(8,1557),(8,1558),(8,1559),(8,1560),(8,1561),(8,1562),(8,1563),(8,1564),(8,1565),(8,1566),(8,1567),(8,1568),(8,1569),(8,1570),(8,1571),(8,1572),(8,1573),(8,1574),(8,1575),(8,1576),(8,1577),(8,1578),(8,1579),(8,1580),(8,1581),(8,1582),(8,1583),(8,1584),(8,1585),(8,1586),(8,1587),(8,1588),(8,1589),(8,1590),(8,1591),(8,1592),(8,1593),(8,1594),(8,1595),(9,1596),(9,1597),(9,1598),(9,1599),(9,1600),(9,1601),(9,1602),(9,1603),(9,1604),(9,1605),(9,1606),(9,1607),(9,1608),(9,1609),(9,1610),(9,1611),(9,1612),(9,1613),(9,1614),(9,1615),(9,1616),(9,1617),(9,1618),(9,1619),(9,1620),(9,1621),(9,1622),(9,1623),(9,1624),(9,1625),(9,1626),(9,1627),(9,1628),(9,1629),(9,1630),(9,1631),(9,1632),(9,1633),(9,1634),(9,1635),(9,1636),(9,1637),(9,1638),(9,1639),(9,1640),(9,1641),(9,1642),(9,1643),(9,1644),(9,1645),(9,1646),(9,1647),(9,1648),(9,1649),(9,1650),(9,1651),(9,1652),(9,1653),(9,1654),(9,1655),(9,1656),(9,1657),(9,1658),(9,1659),(9,1660),(9,1661),(9,1662),(9,1663),(9,1664),(9,1665),(9,1666),(9,1667),(9,1668),(9,1669),(9,1670),(9,1671),(9,1672),(9,1673),(9,1674),(9,1675),(9,1676),(9,1677),(9,1678),(9,1679),(9,1680),(9,1681),(9,1682),(9,1683),(9,1684),(9,1685),(9,1686),(9,1687),(9,1688),(9,1689),(9,1690),(9,1691),(9,1692),(9,1693),(9,1694),(9,1695),(9,1696),(9,1697),(9,1698),(9,1699),(9,1700),(9,1701),(9,1702),(9,1703),(9,1704),(9,1705),(9,1706),(9,1707),(9,1708),(9,1709),(9,1710),(9,1711),(9,1712),(9,1713),(9,1714),(9,1715),(9,1716),(9,1717),(9,1718),(9,1719),(9,1720),(9,1721),(9,1722),(9,1723),(9,1724),(9,1725),(9,1726),(9,1727),(9,1728),(9,1729),(9,1730),(9,1731),(9,1732),(9,1733),(9,1734),(9,1735),(9,1736),(9,1737),(9,1738),(9,1739),(9,1740),(9,1741),(9,1742),(9,1743),(9,1744),(9,1745),(9,1746),(9,1747),(9,1748),(9,1749),(9,1750),(9,1751),(9,1752),(9,1753),(9,1754),(9,1755),(9,1756),(9,1757),(9,1758),(9,1759),(9,1760),(9,1761),(9,1762),(9,1763),(9,1764),(9,1765),(9,1766),(9,1767),(9,1768),(9,1769),(9,1770),(9,1771),(9,1772),(9,1773),(9,1774),(9,1775),(9,1776),(9,1777),(9,1778),(9,1779),(9,1780),(9,1781),(9,1782),(9,1783),(9,1784),(9,1785),(9,1786),(9,1787),(9,1788),(9,1789),(9,1790),(9,1791),(9,1792),(9,1793),(9,1794),(9,1795),(9,1796),(9,1797),(9,1798),(9,1799),(9,1800),(9,1801),(9,1802),(9,1803),(9,1804),(9,1805),(9,1806),(9,1807),(9,1808),(9,1809),(9,1810),(9,1811),(9,1812),(9,1813),(9,1814),(9,1815),(9,1816),(9,1817),(9,1818),(9,1819),(9,1820),(9,1821),(9,1822),(9,1823),(9,1824),(9,1825),(9,1826),(9,1827),(9,1828),(9,1829),(9,1830),(9,1831),(9,1832),(9,1833),(9,1834),(9,1835),(9,1836),(9,1837),(9,1838),(9,1839),(9,1840),(9,1841),(9,1842),(9,1843),(9,1844),(9,1845),(9,1846),(9,1847),(9,1848),(9,1849),(9,1850),(9,1851),(9,1852),(9,1853),(9,1854),(9,1855),(9,1856),(9,1857),(9,1858),(9,1859),(9,1860),(9,1861),(9,1862),(9,1863),(9,1864),(9,1865),(9,1866),(9,1867),(9,1868),(9,1869),(9,1870),(9,1871),(9,1872),(9,1873),(9,1874),(9,1875),(9,1876),(9,1877),(9,1878),(9,1879),(9,1880),(9,1881),(9,1882),(9,1883),(9,1884),(9,1885),(9,1886),(9,1887),(9,1888),(9,1889),(9,1890),(9,1891),(9,1892),(9,1893),(9,1894),(9,1895),(9,1896),(9,1897),(9,1898),(9,1899),(9,1900),(9,1901),(9,1902),(9,1903),(9,1904),(9,1905),(9,1906),(9,1907),(9,1908),(9,1909),(9,1910),(9,1911),(9,1912),(9,1913),(9,1914),(10,1915),(10,1916),(10,1917),(10,1918),(10,1919),(10,1920),(10,1921),(10,1922),(10,1923),(10,1924),(10,1925),(10,1926),(10,1927),(10,1928),(10,1929),(10,1930),(10,1931),(10,1932),(10,1933),(10,1934),(10,1935),(10,1936),(10,1937),(10,1938),(10,1939),(10,1940),(10,1941),(10,1942),(10,1943),(10,1944),(10,1945),(10,1946),(10,1947),(10,1948),(10,1949),(10,1950),(10,1951),(10,1952),(10,1953),(10,1954),(10,1955),(10,1956),(10,1957),(10,1958),(10,1959),(10,1960),(10,1961),(10,1962),(10,1963),(10,1964),(10,1965),(10,1966),(10,1967),(10,1968),(10,1969),(10,1970),(10,1971),(10,1972),(10,1973),(10,1974),(10,1975),(10,1976),(10,1977),(10,1978),(10,1979),(10,1980),(10,1981),(10,1982),(10,1983),(10,1984),(10,1985),(10,1986),(10,1987),(10,1988),(10,1989),(10,1990),(10,1991),(10,1992),(10,1993),(10,1994),(10,1995),(10,1996),(10,1997),(10,1998),(10,1999),(10,2000),(10,2001),(10,2002),(10,2003),(10,2004),(10,2005),(10,2006),(10,2007),(10,2008),(10,2009),(10,2010),(10,2011),(10,2012),(10,2013),(10,2014),(10,2015),(10,2016),(10,2017),(10,2018),(10,2019),(10,2020),(10,2021),(10,2022),(10,2023),(10,2024),(10,2025),(10,2026),(10,2027),(10,2028),(10,2029),(10,2030),(10,2031),(10,2032),(10,2033),(10,2034),(10,2035),(10,2036),(10,2037),(10,2038),(10,2039),(10,2040),(10,2041),(10,2042),(10,2043),(10,2044),(10,2045),(10,2046),(10,2047),(10,2048),(10,2049),(10,2050),(10,2051),(10,2052),(10,2053),(10,2054),(10,2055),(10,2056),(10,2057),(10,2058),(10,2059),(10,2060),(10,2061),(10,2062),(10,2063),(10,2064),(10,2065),(10,2066),(10,2067),(10,2068),(10,2069),(10,2070),(10,2071),(10,2072),(10,2073),(10,2074),(10,2075),(10,2076),(10,2077),(10,2078),(10,2079),(10,2080),(10,2081),(10,2082),(10,2083),(10,2084),(10,2085),(10,2086),(10,2087),(10,2088),(10,2089),(10,2090),(10,2091),(10,2092),(10,2093),(10,2094),(10,2095),(10,2096),(10,2097),(10,2098),(10,2099),(10,2100),(10,2101),(10,2102),(10,2103),(10,2104),(10,2105),(10,2106),(10,2107),(10,2108),(10,2109),(10,2110),(10,2111),(10,2112),(10,2113),(10,2114),(10,2115),(10,2116),(10,2117),(10,2118),(10,2119),(10,2120),(10,2121),(10,2122),(10,2123),(10,2124),(10,2125),(10,2126),(10,2127),(10,2128),(10,2129),(10,2130),(10,2131),(10,2132),(10,2133),(10,2134),(10,2135),(10,2136),(10,2137),(10,2138),(10,2139),(10,2140),(10,2141),(10,2142),(10,2143),(10,2144),(10,2145),(10,2146),(10,2147),(10,2148),(10,2149),(10,2150),(10,2151),(10,2152),(10,2153),(10,2154),(10,2155),(10,2156),(10,2157),(10,2158),(10,2159),(10,2160),(10,2161),(10,2162),(10,2163),(10,2164),(10,2165),(10,2166),(10,2167),(10,2168),(10,2169),(10,2170),(10,2171),(10,2172),(10,2173),(10,2174),(10,2175),(10,2176),(10,2177),(10,2178),(10,2179),(10,2180),(10,2181),(10,2182),(10,2183),(10,2184),(10,2185),(10,2186),(10,2187),(10,2188),(10,2189),(10,2190),(10,2191),(10,2192),(10,2193),(10,2194),(10,2195),(10,2196),(10,2197),(10,2198),(10,2199),(10,2200),(10,2201),(10,2202),(10,2203),(10,2204),(10,2205),(10,2206),(10,2207),(10,2208),(10,2209),(10,2210),(10,2211),(10,2212),(10,2213),(10,2214),(10,2215),(10,2216),(10,2217),(10,2218),(10,2219),(10,2220),(10,2221),(10,2222),(10,2223),(10,2224),(10,2225),(10,2226),(10,2227),(10,2228),(10,2229),(10,2230),(10,2231),(10,2232),(10,2233),(11,2234),(11,2235),(11,2236),(11,2237),(11,2238),(11,2239),(11,2240),(11,2241),(11,2242),(11,2243),(11,2244),(11,2245),(11,2246),(11,2247),(11,2248),(11,2249),(11,2250),(11,2251),(11,2252),(11,2253),(11,2254),(11,2255),(11,2256),(11,2257),(11,2258),(11,2259),(11,2260),(11,2261),(11,2262),(11,2263),(11,2264),(11,2265),(11,2266),(11,2267),(11,2268),(11,2269),(11,2270),(11,2271),(11,2272),(11,2273),(11,2274),(11,2275),(11,2276),(11,2277),(11,2278),(11,2279),(11,2280),(11,2281),(11,2282),(11,2283),(11,2284),(11,2285),(11,2286),(11,2287),(11,2288),(11,2289),(11,2290),(11,2291),(11,2292),(11,2293),(11,2294),(11,2295),(11,2296),(11,2297),(11,2298),(11,2299),(11,2300),(11,2301),(11,2302),(11,2303),(11,2304),(11,2305),(11,2306),(11,2307),(11,2308),(11,2309),(11,2310),(11,2311),(11,2312),(11,2313),(11,2314),(11,2315),(11,2316),(11,2317),(11,2318),(11,2319),(11,2320),(11,2321),(11,2322),(11,2323),(11,2324),(11,2325),(11,2326),(11,2327),(11,2328),(11,2329),(11,2330),(11,2331),(11,2332),(11,2333),(11,2334),(11,2335),(11,2336),(11,2337),(11,2338),(11,2339),(11,2340),(11,2341),(11,2342),(11,2343),(11,2344),(11,2345),(11,2346),(11,2347),(11,2348),(11,2349),(11,2350),(11,2351),(11,2352),(11,2353),(11,2354),(11,2355),(11,2356),(11,2357),(11,2358),(11,2359),(11,2360),(11,2361),(11,2362),(11,2363),(11,2364),(11,2365),(11,2366),(11,2367),(11,2368),(11,2369),(11,2370),(11,2371),(11,2372),(11,2373),(11,2374),(11,2375),(11,2376),(11,2377),(11,2378),(11,2379),(11,2380),(11,2381),(11,2382),(11,2383),(11,2384),(11,2385),(11,2386),(11,2387),(11,2388),(11,2389),(11,2390),(11,2391),(11,2392),(11,2393),(11,2394),(11,2395),(11,2396),(11,2397),(11,2398),(11,2399),(11,2400),(11,2401),(11,2402),(11,2403),(11,2404),(11,2405),(11,2406),(11,2407),(11,2408),(11,2409),(11,2410),(11,2411),(11,2412),(11,2413),(11,2414),(11,2415),(11,2416),(11,2417),(11,2418),(11,2419),(11,2420),(11,2421),(11,2422),(11,2423),(11,2424),(11,2425),(11,2426),(11,2427),(11,2428),(11,2429),(11,2430),(11,2431),(11,2432),(11,2433),(11,2434),(11,2435),(11,2436),(11,2437),(11,2438),(11,2439),(11,2440),(11,2441),(11,2442),(11,2443),(11,2444),(11,2445),(11,2446),(11,2447),(11,2448),(11,2449),(11,2450),(11,2451),(11,2452),(11,2453),(11,2454),(11,2455),(11,2456),(11,2457),(11,2458),(11,2459),(11,2460),(11,2461),(11,2462),(11,2463),(11,2464),(11,2465),(11,2466),(11,2467),(11,2468),(11,2469),(11,2470),(11,2471),(11,2472),(11,2473),(11,2474),(11,2475),(11,2476),(11,2477),(11,2478),(11,2479),(11,2480),(11,2481),(11,2482),(11,2483),(11,2484),(11,2485),(11,2486),(11,2487),(11,2488),(11,2489),(11,2490),(11,2491),(11,2492),(11,2493),(11,2494),(11,2495),(11,2496),(11,2497),(11,2498),(11,2499),(11,2500),(11,2501),(11,2502),(11,2503),(11,2504),(11,2505),(11,2506),(11,2507),(11,2508),(11,2509),(11,2510),(11,2511),(11,2512),(11,2513),(11,2514),(11,2515),(11,2516),(11,2517),(11,2518),(11,2519),(11,2520),(11,2521),(11,2522),(11,2523),(11,2524),(11,2525),(11,2526),(11,2527),(11,2528),(11,2529),(11,2530),(11,2531),(11,2532),(11,2533),(11,2534),(11,2535),(11,2536),(11,2537),(11,2538),(11,2539),(11,2540),(11,2541),(11,2542),(11,2543),(11,2544),(11,2545),(11,2546),(11,2547),(11,2548),(11,2549),(11,2550),(11,2551),(11,2552),(12,2553),(12,2554),(12,2555),(12,2556),(12,2557),(12,2558),(12,2559),(12,2560),(12,2561),(12,2562),(12,2563),(12,2564),(12,2565),(12,2566),(12,2567),(12,2568),(12,2569),(12,2570),(12,2571),(12,2572),(12,2573),(12,2574),(12,2575),(12,2576),(12,2577),(12,2578),(12,2579),(12,2580),(12,2581),(12,2582),(12,2583),(12,2584),(12,2585),(12,2586),(12,2587),(12,2588),(12,2589),(12,2590),(12,2591),(12,2592),(12,2593),(12,2594),(12,2595),(12,2596),(12,2597),(12,2598),(12,2599),(12,2600),(12,2601),(12,2602),(12,2603),(12,2604),(12,2605),(12,2606),(12,2607),(12,2608),(12,2609),(12,2610),(12,2611),(12,2612),(12,2613),(12,2614),(12,2615),(12,2616),(12,2617),(12,2618),(12,2619),(12,2620),(12,2621),(12,2622),(12,2623),(12,2624),(12,2625),(12,2626),(12,2627),(12,2628),(12,2629),(12,2630),(12,2631),(12,2632),(12,2633),(12,2634),(12,2635),(12,2636),(12,2637),(12,2638),(12,2639),(12,2640),(12,2641),(12,2642),(12,2643),(12,2644),(12,2645),(12,2646),(12,2647),(12,2648),(12,2649),(12,2650),(12,2651),(12,2652),(12,2653),(12,2654),(12,2655),(12,2656),(12,2657),(12,2658),(12,2659),(12,2660),(12,2661),(12,2662),(12,2663),(12,2664),(12,2665),(12,2666),(12,2667),(12,2668),(12,2669),(12,2670),(12,2671),(12,2672),(12,2673),(12,2674),(12,2675),(12,2676),(12,2677),(12,2678),(12,2679),(12,2680),(12,2681),(12,2682),(12,2683),(12,2684),(12,2685),(12,2686),(12,2687),(12,2688),(12,2689),(12,2690),(12,2691),(12,2692),(12,2693),(12,2694),(12,2695),(12,2696),(12,2697),(12,2698),(12,2699),(12,2700),(12,2701),(12,2702),(12,2703),(12,2704),(12,2705),(12,2706),(12,2707),(12,2708),(12,2709),(12,2710),(12,2711),(12,2712),(12,2713),(12,2714),(12,2715),(12,2716),(12,2717),(12,2718),(12,2719),(12,2720),(12,2721),(12,2722),(12,2723),(12,2724),(12,2725),(12,2726),(12,2727),(12,2728),(12,2729),(12,2730),(12,2731),(12,2732),(12,2733),(12,2734),(12,2735),(12,2736),(12,2737),(12,2738),(12,2739),(12,2740),(12,2741),(12,2742),(12,2743),(12,2744),(12,2745),(12,2746),(12,2747),(12,2748),(12,2749),(12,2750),(12,2751),(12,2752),(12,2753),(12,2754),(12,2755),(12,2756),(12,2757),(12,2758),(12,2759),(12,2760),(12,2761),(12,2762),(12,2763),(12,2764),(12,2765),(12,2766),(12,2767),(12,2768),(12,2769),(12,2770),(12,2771),(12,2772),(12,2773),(12,2774),(12,2775),(12,2776),(12,2777),(12,2778),(12,2779),(12,2780),(12,2781),(12,2782),(12,2783),(12,2784),(12,2785),(12,2786),(12,2787),(12,2788),(12,2789),(12,2790),(12,2791),(12,2792),(12,2793),(12,2794),(12,2795),(12,2796),(12,2797),(12,2798),(12,2799),(12,2800),(12,2801),(12,2802),(12,2803),(12,2804),(12,2805),(12,2806),(12,2807),(12,2808),(12,2809),(12,2810),(12,2811),(12,2812),(12,2813),(12,2814),(12,2815),(12,2816),(12,2817),(12,2818),(12,2819),(12,2820),(12,2821),(12,2822),(12,2823),(12,2824),(12,2825),(12,2826),(12,2827),(12,2828),(12,2829),(12,2830),(12,2831),(12,2832),(12,2833),(12,2834),(12,2835),(12,2836),(12,2837),(12,2838),(12,2839),(12,2840),(12,2841),(12,2842),(12,2843),(12,2844),(12,2845),(12,2846),(12,2847),(12,2848),(12,2849),(12,2850),(12,2851),(12,2852),(12,2853),(12,2854),(12,2855),(12,2856),(12,2857),(12,2858),(12,2859),(12,2860),(12,2861),(12,2862),(12,2863),(12,2864),(12,2865),(12,2866),(12,2867),(12,2868),(12,2869),(12,2870),(12,2871),(13,2872),(13,2873),(13,2874),(13,2875),(13,2876),(13,2877),(13,2878),(13,2879),(13,2880),(13,2881),(13,2882),(13,2883),(13,2884),(13,2885),(13,2886),(13,2887),(13,2888),(13,2889),(13,2890),(13,2891),(13,2892),(13,2893),(13,2894),(13,2895),(13,2896),(13,2897),(13,2898),(13,2899),(13,2900),(13,2901),(13,2902),(13,2903),(13,2904),(13,2905),(13,2906),(13,2907),(13,2908),(13,2909),(13,2910),(13,2911),(13,2912),(13,2913),(13,2914),(13,2915),(13,2916),(13,2917),(13,2918),(13,2919),(13,2920),(13,2921),(13,2922),(13,2923),(13,2924),(13,2925),(13,2926),(13,2927),(13,2928),(13,2929),(13,2930),(13,2931),(13,2932),(13,2933),(13,2934),(13,2935),(13,2936),(13,2937),(13,2938),(13,2939),(13,2940),(13,2941),(13,2942),(13,2943),(13,2944),(13,2945),(13,2946),(13,2947),(13,2948),(13,2949),(13,2950),(13,2951),(13,2952),(13,2953),(13,2954),(13,2955),(13,2956),(13,2957),(13,2958),(13,2959),(13,2960),(13,2961),(13,2962),(13,2963),(13,2964),(13,2965),(13,2966),(13,2967),(13,2968),(13,2969),(13,2970),(13,2971),(13,2972),(13,2973),(13,2974),(13,2975),(13,2976),(13,2977),(13,2978),(13,2979),(13,2980),(13,2981),(13,2982),(13,2983),(13,2984),(13,2985),(13,2986),(13,2987),(13,2988),(13,2989),(13,2990),(13,2991),(13,2992),(13,2993),(13,2994),(13,2995),(13,2996),(13,2997),(13,2998),(13,2999),(13,3000),(13,3001),(13,3002),(13,3003),(13,3004),(13,3005),(13,3006),(13,3007),(13,3008),(13,3009),(13,3010),(13,3011),(13,3012),(13,3013),(13,3014),(13,3015),(13,3016),(13,3017),(13,3018),(13,3019),(13,3020),(13,3021),(13,3022),(13,3023),(13,3024),(13,3025),(13,3026),(13,3027),(13,3028),(13,3029),(13,3030),(13,3031),(13,3032),(13,3033),(13,3034),(13,3035),(13,3036),(13,3037),(13,3038),(13,3039),(13,3040),(13,3041),(13,3042),(13,3043),(13,3044),(13,3045),(13,3046),(13,3047),(13,3048),(13,3049),(13,3050),(13,3051),(13,3052),(13,3053),(13,3054),(13,3055),(13,3056),(13,3057),(13,3058),(13,3059),(13,3060),(13,3061),(13,3062),(13,3063),(13,3064),(13,3065),(13,3066),(13,3067),(13,3068),(13,3069),(13,3070),(13,3071),(13,3072),(13,3073),(13,3074),(13,3075),(13,3076),(13,3077),(13,3078),(13,3079),(13,3080),(13,3081),(13,3082),(13,3083),(13,3084),(13,3085),(13,3086),(13,3087),(13,3088),(13,3089),(13,3090),(13,3091),(13,3092),(13,3093),(13,3094),(13,3095),(13,3096),(13,3097),(13,3098),(13,3099),(13,3100),(13,3101),(13,3102),(13,3103),(13,3104),(13,3105),(13,3106),(13,3107),(13,3108),(13,3109),(13,3110),(13,3111),(13,3112),(13,3113),(13,3114),(13,3115),(13,3116),(13,3117),(13,3118),(13,3119),(13,3120),(13,3121),(13,3122),(13,3123),(13,3124),(13,3125),(13,3126),(13,3127),(13,3128),(13,3129),(13,3130),(13,3131),(13,3132),(13,3133),(13,3134),(13,3135),(13,3136),(13,3137),(13,3138),(13,3139),(13,3140),(13,3141),(13,3142),(13,3143),(13,3144),(13,3145),(13,3146),(13,3147),(13,3148),(13,3149),(13,3150),(13,3151),(13,3152),(13,3153),(13,3154),(13,3155),(13,3156),(13,3157),(13,3158),(13,3159),(13,3160),(13,3161),(13,3162),(13,3163),(13,3164),(13,3165),(13,3166),(13,3167),(13,3168),(13,3169),(13,3170),(13,3171),(13,3172),(13,3173),(13,3174),(13,3175),(13,3176),(13,3177),(13,3178),(13,3179),(13,3180),(13,3181),(13,3182),(13,3183),(13,3184),(13,3185),(13,3186),(13,3187),(13,3188),(13,3189),(13,3190),(14,3191),(14,3192),(14,3193),(14,3194),(14,3195),(14,3196),(14,3197),(14,3198),(14,3199),(14,3200),(14,3201),(14,3202),(14,3203),(14,3204),(14,3205),(14,3206),(14,3207),(14,3208),(14,3209),(14,3210),(14,3211),(14,3212),(14,3213),(14,3214),(14,3215),(14,3216),(14,3217),(14,3218),(14,3219),(14,3220),(14,3221),(14,3222),(14,3223),(14,3224),(14,3225),(14,3226),(14,3227),(14,3228),(14,3229),(14,3230),(14,3231),(14,3232),(14,3233),(14,3234),(14,3235),(14,3236),(14,3237),(14,3238),(14,3239),(14,3240),(14,3241),(14,3242),(14,3243),(14,3244),(14,3245),(14,3246),(14,3247),(14,3248),(14,3249),(14,3250),(14,3251),(14,3252),(14,3253),(14,3254),(14,3255),(14,3256),(14,3257),(14,3258),(14,3259),(14,3260),(14,3261),(14,3262),(14,3263),(14,3264),(14,3265),(14,3266),(14,3267),(14,3268),(14,3269),(14,3270),(14,3271),(14,3272),(14,3273),(14,3274),(14,3275),(14,3276),(14,3277),(14,3278),(14,3279),(14,3280),(14,3281),(14,3282),(14,3283),(14,3284),(14,3285),(14,3286),(14,3287),(14,3288),(14,3289),(14,3290),(14,3291),(14,3292),(14,3293),(14,3294),(14,3295),(14,3296),(14,3297),(14,3298),(14,3299),(14,3300),(14,3301),(14,3302),(14,3303),(14,3304),(14,3305),(14,3306),(14,3307),(14,3308),(14,3309),(14,3310),(14,3311),(14,3312),(14,3313),(14,3314),(14,3315),(14,3316),(14,3317),(14,3318),(14,3319),(14,3320),(14,3321),(14,3322),(14,3323),(14,3324),(14,3325),(14,3326),(14,3327),(14,3328),(14,3329),(14,3330),(14,3331),(14,3332),(14,3333),(14,3334),(14,3335),(14,3336),(14,3337),(14,3338),(14,3339),(14,3340),(14,3341),(14,3342),(14,3343),(14,3344),(14,3345),(14,3346),(14,3347),(14,3348),(14,3349),(14,3350),(14,3351),(14,3352),(14,3353),(14,3354),(14,3355),(14,3356),(14,3357),(14,3358),(14,3359),(14,3360),(14,3361),(14,3362),(14,3363),(14,3364),(14,3365),(14,3366),(14,3367),(14,3368),(14,3369),(14,3370),(14,3371),(14,3372),(14,3373),(14,3374),(14,3375),(14,3376),(14,3377),(14,3378),(14,3379),(14,3380),(14,3381),(14,3382),(14,3383),(14,3384),(14,3385),(14,3386),(14,3387),(14,3388),(14,3389),(14,3390),(14,3391),(14,3392),(14,3393),(14,3394),(14,3395),(14,3396),(14,3397),(14,3398),(14,3399),(14,3400),(14,3401),(14,3402),(14,3403),(14,3404),(14,3405),(14,3406),(14,3407),(14,3408),(14,3409),(14,3410),(14,3411),(14,3412),(14,3413),(14,3414),(14,3415),(14,3416),(14,3417),(14,3418),(14,3419),(14,3420),(14,3421),(14,3422),(14,3423),(14,3424),(14,3425),(14,3426),(14,3427),(14,3428),(14,3429),(14,3430),(14,3431),(14,3432),(14,3433),(14,3434),(14,3435),(14,3436),(14,3437),(14,3438),(14,3439),(14,3440),(14,3441),(14,3442),(14,3443),(14,3444),(14,3445),(14,3446),(14,3447),(14,3448),(14,3449),(14,3450),(14,3451),(14,3452),(14,3453),(14,3454),(14,3455),(14,3456),(14,3457),(14,3458),(14,3459),(14,3460),(14,3461),(14,3462),(14,3463),(14,3464),(14,3465),(14,3466),(14,3467),(14,3468),(14,3469),(14,3470),(14,3471),(14,3472),(14,3473),(14,3474),(14,3475),(14,3476),(14,3477),(14,3478),(14,3479),(14,3480),(14,3481),(14,3482),(14,3483),(14,3484),(14,3485),(14,3486),(14,3487),(14,3488),(14,3489),(14,3490),(14,3491),(14,3492),(14,3493),(14,3494),(14,3495),(14,3496),(14,3497),(14,3498),(14,3499),(14,3500),(14,3501),(14,3502),(14,3503),(14,3504),(14,3505),(14,3506),(14,3507),(14,3508),(14,3509),(15,3510),(15,3511),(15,3512),(15,3513),(15,3514),(15,3515),(15,3516),(15,3517),(15,3518),(15,3519),(15,3520),(15,3521),(15,3522),(15,3523),(15,3524),(15,3525),(15,3526),(15,3527),(15,3528),(15,3529),(15,3530),(15,3531),(15,3532),(15,3533),(15,3534),(15,3535),(15,3536),(15,3537),(15,3538),(15,3539),(15,3540),(15,3541),(15,3542),(15,3543),(15,3544),(15,3545),(15,3546),(15,3547),(15,3548),(15,3549),(15,3550),(15,3551),(15,3552),(15,3553),(15,3554),(15,3555),(15,3556),(15,3557),(15,3558),(15,3559),(15,3560),(15,3561),(15,3562),(15,3563),(15,3564),(15,3565),(15,3566),(15,3567),(15,3568),(15,3569),(15,3570),(15,3571),(15,3572),(15,3573),(15,3574),(15,3575),(15,3576),(15,3577),(15,3578),(15,3579),(15,3580),(15,3581),(15,3582),(15,3583),(15,3584),(15,3585),(15,3586),(15,3587),(15,3588),(15,3589),(15,3590),(15,3591),(15,3592),(15,3593),(15,3594),(15,3595),(15,3596),(15,3597),(15,3598),(15,3599),(15,3600),(15,3601),(15,3602),(15,3603),(15,3604),(15,3605),(15,3606),(15,3607),(15,3608),(15,3609),(15,3610),(15,3611),(15,3612),(15,3613),(15,3614),(15,3615),(15,3616),(15,3617),(15,3618),(15,3619),(15,3620),(15,3621),(15,3622),(15,3623),(15,3624),(15,3625),(15,3626),(15,3627),(15,3628),(15,3629),(15,3630),(15,3631),(15,3632),(15,3633),(15,3634),(15,3635),(15,3636),(15,3637),(15,3638),(15,3639),(15,3640),(15,3641),(15,3642),(15,3643),(15,3644),(15,3645),(15,3646),(15,3647),(15,3648),(15,3649),(15,3650),(15,3651),(15,3652),(15,3653),(15,3654),(15,3655),(15,3656),(15,3657),(15,3658),(15,3659),(15,3660),(15,3661),(15,3662),(15,3663),(15,3664),(15,3665),(15,3666),(15,3667),(15,3668),(15,3669),(15,3670),(15,3671),(15,3672),(15,3673),(15,3674),(15,3675),(15,3676),(15,3677),(15,3678),(15,3679),(15,3680),(15,3681),(15,3682),(15,3683),(15,3684),(15,3685),(15,3686),(15,3687),(15,3688),(15,3689),(15,3690),(15,3691),(15,3692),(15,3693),(15,3694),(15,3695),(15,3696),(15,3697),(15,3698),(15,3699),(15,3700),(15,3701),(15,3702),(15,3703),(15,3704),(15,3705),(15,3706),(15,3707),(15,3708),(15,3709),(15,3710),(15,3711),(15,3712),(15,3713),(15,3714),(15,3715),(15,3716),(15,3717),(15,3718),(15,3719),(15,3720),(15,3721),(15,3722),(15,3723),(15,3724),(15,3725),(15,3726),(15,3727),(15,3728),(15,3729),(15,3730),(15,3731),(15,3732),(15,3733),(15,3734),(15,3735),(15,3736),(15,3737),(15,3738),(15,3739),(15,3740),(15,3741),(15,3742),(15,3743),(15,3744),(15,3745),(15,3746),(15,3747),(15,3748),(15,3749),(15,3750),(15,3751),(15,3752),(15,3753),(15,3754),(15,3755),(15,3756),(15,3757),(15,3758),(15,3759),(15,3760),(15,3761),(15,3762),(15,3763),(15,3764),(15,3765),(15,3766),(15,3767),(15,3768),(15,3769),(15,3770),(15,3771),(15,3772),(15,3773),(15,3774),(15,3775),(15,3776),(15,3777),(15,3778),(15,3779),(15,3780),(15,3781),(15,3782),(15,3783),(15,3784),(15,3785),(15,3786),(15,3787),(15,3788),(15,3789),(15,3790),(15,3791),(15,3792),(15,3793),(15,3794),(15,3795),(15,3796),(15,3797),(15,3798),(15,3799),(15,3800),(15,3801),(15,3802),(15,3803),(15,3804),(15,3805),(15,3806),(15,3807),(15,3808),(15,3809),(15,3810),(15,3811),(15,3812),(15,3813),(15,3814),(15,3815),(15,3816),(15,3817),(15,3818),(15,3819),(15,3820),(15,3821),(15,3822),(15,3823),(15,3824),(15,3825),(15,3826),(15,3827),(15,3828);
/*!40000 ALTER TABLE `costcategory_costcentre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_symbols`
--

DROP TABLE IF EXISTS `country_symbols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_symbols` (
  `Currency_Symbols` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_symbols`
--

LOCK TABLES `country_symbols` WRITE;
/*!40000 ALTER TABLE `country_symbols` DISABLE KEYS */;
INSERT INTO `country_symbols` VALUES ('ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚ÂÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('NT$'),('KÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬'),('kr.'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('$'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('Ft'),('kr.'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('kr'),('zÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬'),('R$'),('fr.'),('lei'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‹'),('kn'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('Lek'),('kr'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ÃƒÆ’'),('TL'),('Rs'),('Rp'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‹'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('kr'),('Ls'),('Lt'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‹'),('ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚'),('man.'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚ÂÃƒÆ’'),('R'),('R'),('R'),('R'),('Lari'),('kr.'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('kr'),('RM'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚ÂÃƒÆ’'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‹'),('S'),('m.'),('so'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‹'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¡ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ÃƒÆ’'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â‚¬Å¾Ã‚'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ÃƒÆ’'),('$'),('ETB'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œÃƒÆ’'),('PhP'),('ÃƒÆ’Ã†â€™Ãƒâ€¦Ã‚Â¾ÃƒÆ’'),('N'),('N'),('$b'),('R'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã¢'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('kr.'),('N'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('$'),('$'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('$'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‹'),('Q'),('RWF'),('XOF'),('ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œÃƒÆ’'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œÃƒÆ’'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('Fr.'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('$'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('fr.'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('kr'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('Din.'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚ÂÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('kr'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('$'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‹'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ÃƒÆ’'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('$'),('DZD'),('$'),('ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œÃƒÆ’'),('HK$'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('$'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('$'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚ÂÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('S/.'),('ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œÃƒÆ’'),('$'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('$'),('Q'),('fr.'),('KM'),('kr'),('ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œÃƒÆ’'),('MOP'),('CHF'),('$'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('KM'),('kr'),('ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('B/.'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('KM'),('kr'),('ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œÃƒÆ’'),('R'),('RD$'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚ÂÃƒÆ’'),('kr'),('ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œÃƒÆ’'),('J$'),('Bs. F.'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚ÂÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œÃƒÆ’'),('$'),('$'),('Din.'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â‚¬Å¾Ã‚'),('BZ$'),('S/.'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚ÂÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œÃƒÆ’'),('TT$'),('$'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â‚¬Å¾Ã‚'),('Z$'),('$'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’'),('ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œÃƒÆ’'),('Php'),('$'),('ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œÃƒÆ’'),('$U'),('ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œÃƒÆ’'),('Gs'),('ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œÃƒÆ’'),('Rs.'),('$b'),('RM'),('$'),('$'),('L.'),('C$'),('$'),('$'),('ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ÃƒÆ’');
/*!40000 ALTER TABLE `country_symbols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datasync_status`
--

DROP TABLE IF EXISTS `datasync_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datasync_status` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Status` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datasync_status`
--

LOCK TABLES `datasync_status` WRITE;
/*!40000 ALTER TABLE `datasync_status` DISABLE KEYS */;
INSERT INTO `datasync_status` VALUES (1,'Received'),(2,'InProgress'),(3,'Closed'),(4,'Falied');
/*!40000 ALTER TABLE `datasync_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datasync_task`
--

DROP TABLE IF EXISTS `datasync_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datasync_task` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `HEAD_OFFICE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BRANCH_OFFICE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `UPLOADED_ON` datetime DEFAULT NULL,
  `STARTED_ON` datetime DEFAULT NULL,
  `COMPLETED_ON` datetime DEFAULT NULL,
  `XML_FILENAME` varchar(250) NOT NULL DEFAULT '',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '0',
  `REMARKS` varchar(500) DEFAULT NULL,
  `TRANS_DATE_FROM` datetime DEFAULT NULL COMMENT 'Transaction Date from (Branch Office Transaction)',
  `TRANS_DATE_TO` datetime DEFAULT NULL COMMENT 'Transaction Date To (Branch Office Transaction)',
  PRIMARY KEY (`ID`),
  KEY `FK_HEAD_OFFICE_ID` (`HEAD_OFFICE_ID`),
  KEY `FK_BRANCH_OFFICE_ID` (`BRANCH_OFFICE_ID`),
  KEY `FK_datasync_task_Status` (`STATUS`),
  CONSTRAINT `FK_BRANCH_OFFICE_ID` FOREIGN KEY (`BRANCH_OFFICE_ID`) REFERENCES `branch_office` (`BRANCH_OFFICE_ID`),
  CONSTRAINT `FK_datasync_task_Status` FOREIGN KEY (`STATUS`) REFERENCES `datasync_status` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datasync_task`
--

LOCK TABLES `datasync_task` WRITE;
/*!40000 ALTER TABLE `datasync_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `datasync_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `denomination`
--

DROP TABLE IF EXISTS `denomination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `denomination` (
  `DENOMINATION_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DENOMINATION` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`DENOMINATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `denomination`
--

LOCK TABLES `denomination` WRITE;
/*!40000 ALTER TABLE `denomination` DISABLE KEYS */;
INSERT INTO `denomination` VALUES (1,1),(2,2),(3,5),(4,10),(5,20),(6,50),(7,100),(8,500),(9,1000);
/*!40000 ALTER TABLE `denomination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dsafds`
--

DROP TABLE IF EXISTS `dsafds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dsafds` (
  `id var` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id var`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dsafds`
--

LOCK TABLES `dsafds` WRITE;
/*!40000 ALTER TABLE `dsafds` DISABLE KEYS */;
/*!40000 ALTER TABLE `dsafds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fd_account`
--

DROP TABLE IF EXISTS `fd_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fd_account` (
  `FD_ACCOUNT_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FD_ACCOUNT_NUMBER` varchar(100) NOT NULL DEFAULT '',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BANK_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BANK_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `FD_VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `TRANS_MODE` varchar(2) NOT NULL DEFAULT 'DR',
  `TRANS_TYPE` varchar(2) NOT NULL DEFAULT '' COMMENT 'OP/IN (Opening / Investment)',
  `RECEIPT_NO` varchar(50) DEFAULT NULL,
  `ACCOUNT_HOLDER` varchar(100) DEFAULT NULL,
  `INVESTMENT_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `MATURED_ON` datetime DEFAULT NULL,
  `INTEREST_RATE` double NOT NULL DEFAULT '0',
  `INTEREST_AMOUNT` double NOT NULL DEFAULT '0',
  `INTEREST_TYPE` varchar(50) DEFAULT NULL,
  `STATUS` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1-ACTIVE, 0-CANCELLED',
  `FD_STATUS` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1= ACTIVE ,0 =CLOSED',
  `FD_SUB_TYPES` varchar(4) NOT NULL DEFAULT 'FD-I',
  `NOTES` varchar(500) DEFAULT NULL,
  `BRANCH_ID` varchar(45) NOT NULL DEFAULT '0',
  `LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`FD_ACCOUNT_ID`,`BRANCH_ID`,`LOCATION_ID`),
  KEY `FK_FD_PROJECT_ID` (`PROJECT_ID`),
  KEY `FK_FD_LEDGER_ID` (`LEDGER_ID`),
  KEY `FK_FD_BANK_ID` (`BANK_ID`),
  KEY `FK_FD_VOUCHER_ID` (`FD_VOUCHER_ID`),
  CONSTRAINT `FK_BANK_ID` FOREIGN KEY (`BANK_ID`) REFERENCES `master_bank` (`BANK_ID`),
  CONSTRAINT `FK_fd_account_LEDGER_ID` FOREIGN KEY (`LEDGER_ID`) REFERENCES `master_ledger` (`LEDGER_ID`),
  CONSTRAINT `FK_fd_account_PROJECT_ID` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fd_account`
--

LOCK TABLES `fd_account` WRITE;
/*!40000 ALTER TABLE `fd_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `fd_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fd_registers`
--

DROP TABLE IF EXISTS `fd_registers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fd_registers` (
  `ACCOUNT_NO` varchar(25) NOT NULL DEFAULT '0',
  `FD_NO` varchar(25) DEFAULT NULL,
  `INVESTED_ON` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `MATURITY_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `INTEREST_RATE` decimal(15,2) NOT NULL DEFAULT '0.00',
  `INTEREST_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `BANK_ACCOUNT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1=Renewal, 2=Closed',
  `TRANS_MODE` varchar(2) NOT NULL DEFAULT 'TR' COMMENT 'OP =Opening,TR=Transaction',
  `PERIOD_YEAR` int(10) unsigned NOT NULL DEFAULT '0',
  `PERIOD_MTH` int(10) unsigned NOT NULL DEFAULT '0',
  `PERIOD_DAY` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_INTEREST_RECEIVED_PERIODICALLY` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0=Yes,1=No',
  `INTEREST_TERM` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 =Days ,1=Months, 2=Years',
  `INTEREST_PERIOD` int(10) unsigned NOT NULL DEFAULT '0',
  `FD_REGISTER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`FD_REGISTER_ID`),
  KEY `FK_fd_registers` (`BANK_ACCOUNT_ID`),
  CONSTRAINT `FK_BANK_ACCOUNT_ID` FOREIGN KEY (`BANK_ACCOUNT_ID`) REFERENCES `master_bank_account` (`BANK_ACCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fd_registers`
--

LOCK TABLES `fd_registers` WRITE;
/*!40000 ALTER TABLE `fd_registers` DISABLE KEYS */;
/*!40000 ALTER TABLE `fd_registers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fd_renewal`
--

DROP TABLE IF EXISTS `fd_renewal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fd_renewal` (
  `FD_ACCOUNT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `FD_RENEWAL_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RENEWAL_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `MATURITY_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `INTEREST_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BANK_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `FD_INTEREST_VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `FD_VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `INTEREST_AMOUNT` double NOT NULL DEFAULT '0',
  `WITHDRAWAL_AMOUNT` double NOT NULL DEFAULT '0',
  `INTEREST_RATE` double NOT NULL DEFAULT '0',
  `INTEREST_TYPE` int(10) unsigned NOT NULL DEFAULT '0',
  `RECEIPT_NO` varchar(50) DEFAULT NULL,
  `RENEWAL_TYPE` varchar(4) NOT NULL DEFAULT '' COMMENT 'IRI=INTEREST RECEIVED\r\nACI=ACCUMULATED iNTEREST\r\nWDI=WITHDRAWAL INTEREST\r\nPWD=PARTIAL WITHDRAW INTEREST',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1-ACTIVE, 0-CANCELLED',
  `IS_DELETED` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1-ACTIVE, 0-DELETED',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `FD_TYPE` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`FD_RENEWAL_ID`,`BRANCH_ID`,`LOCATION_ID`),
  KEY `FK_fd_ACCOUNT_ID` (`FD_ACCOUNT_ID`),
  CONSTRAINT `FK_fd_ACCOUNT_ID` FOREIGN KEY (`FD_ACCOUNT_ID`) REFERENCES `fd_account` (`FD_ACCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fd_renewal`
--

LOCK TABLES `fd_renewal` WRITE;
/*!40000 ALTER TABLE `fd_renewal` DISABLE KEYS */;
/*!40000 ALTER TABLE `fd_renewal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `head_message`
--

DROP TABLE IF EXISTS `head_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `head_message` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DATE` datetime DEFAULT NULL,
  `SUBJECT` text,
  `CONTENT` text,
  `TYPE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1- Mail, 2-Broadcast,3-Both',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `head_message`
--

LOCK TABLES `head_message` WRITE;
/*!40000 ALTER TABLE `head_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `head_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `headoffice_mapped_ledger`
--

DROP TABLE IF EXISTS `headoffice_mapped_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `headoffice_mapped_ledger` (
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `HEADOFFICE_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`LEDGER_ID`,`HEADOFFICE_LEDGER_ID`),
  KEY `FK_HEADOFFICE_LEDGER_ID` (`HEADOFFICE_LEDGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `headoffice_mapped_ledger`
--

LOCK TABLES `headoffice_mapped_ledger` WRITE;
/*!40000 ALTER TABLE `headoffice_mapped_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `headoffice_mapped_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ledger_balance`
--

DROP TABLE IF EXISTS `ledger_balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ledger_balance` (
  `BALANCE_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'ONLY DATE',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'BALANCE_DATE,PROJECT_ID,LEDGER_ID(PK)',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `TRANS_MODE` varchar(2) NOT NULL DEFAULT '' COMMENT 'CR-CREDIT, DR-DEBIT\r\n',
  `TRANS_FLAG` varchar(2) NOT NULL DEFAULT 'TR' COMMENT 'OP-OPENING BALANCE, TR-TRANSACTION',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`BALANCE_DATE`,`PROJECT_ID`,`LEDGER_ID`,`BRANCH_ID`),
  KEY `Index_Ledger_Id` (`LEDGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ledger_balance`
--

LOCK TABLES `ledger_balance` WRITE;
/*!40000 ALTER TABLE `ledger_balance` DISABLE KEYS */;
INSERT INTO `ledger_balance` VALUES ('2006-03-31 00:00:00',67,1,40679.40,'DR','OP',0),('2006-03-31 00:00:00',68,1,156473.00,'DR','OP',0),('2006-03-31 00:00:00',69,1,607435.00,'CR','OP',0),('2006-03-31 00:00:00',70,1,892456.02,'DR','OP',0),('2006-03-31 00:00:00',70,5026,3526883.00,'CR','OP',0),('2006-03-31 00:00:00',70,5027,3006942.00,'CR','OP',0),('2006-03-31 00:00:00',70,5028,33183.00,'CR','OP',0),('2006-03-31 00:00:00',71,1,6000.00,'DR','OP',0),('2006-03-31 00:00:00',72,1,495780.00,'DR','OP',0);
/*!40000 ALTER TABLE `ledger_balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mas_user`
--

DROP TABLE IF EXISTS `mas_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mas_user` (
  `USER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(45) DEFAULT NULL,
  `PASSWORD` varchar(45) DEFAULT NULL,
  `STATUS` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  `FULL_NAME` varchar(45) NOT NULL DEFAULT '',
  `ROLE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mas_user`
--

LOCK TABLES `mas_user` WRITE;
/*!40000 ALTER TABLE `mas_user` DISABLE KEYS */;
INSERT INTO `mas_user` VALUES (1,'admin','admin',0000000001,'',0);
/*!40000 ALTER TABLE `mas_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_account_type`
--

DROP TABLE IF EXISTS `master_account_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_account_type` (
  `ACCOUNT_TYPE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ACCOUNT_TYPE` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`ACCOUNT_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_account_type`
--

LOCK TABLES `master_account_type` WRITE;
/*!40000 ALTER TABLE `master_account_type` DISABLE KEYS */;
INSERT INTO `master_account_type` VALUES (1,'Bank Account'),(2,'Fixed Deposit');
/*!40000 ALTER TABLE `master_account_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_audit_type`
--

DROP TABLE IF EXISTS `master_audit_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_audit_type` (
  `AUDIT_TYPE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AUDIT_TYPE` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`AUDIT_TYPE_ID`),
  UNIQUE KEY `UNQ_AUDIT_TYPE` (`AUDIT_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_audit_type`
--

LOCK TABLES `master_audit_type` WRITE;
/*!40000 ALTER TABLE `master_audit_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_audit_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_auditing_info`
--

DROP TABLE IF EXISTS `master_auditing_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_auditing_info` (
  `AUDIT_INFO_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AUDIT_BEGIN` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `AUDIT_END` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `AUDIT_TYPE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DONAUD_ID` int(11) DEFAULT NULL,
  `NOTES` varchar(500) DEFAULT NULL,
  `AUDITED_ON` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`AUDIT_INFO_ID`),
  UNIQUE KEY `UNQ_PROJECT_ID` (`PROJECT_ID`,`AUDIT_BEGIN`,`AUDIT_END`) USING BTREE,
  KEY `FK_master_auditing_info_2` (`DONAUD_ID`),
  KEY `FK_master_auditing_info_audit_ype` (`AUDIT_TYPE_ID`),
  CONSTRAINT `FK_DONAUD_ID` FOREIGN KEY (`DONAUD_ID`) REFERENCES `master_donaud` (`DONAUD_ID`),
  CONSTRAINT `FK_master_auditing_info_audit_ype` FOREIGN KEY (`AUDIT_TYPE_ID`) REFERENCES `master_audit_type` (`AUDIT_TYPE_ID`),
  CONSTRAINT `FK_master_auditing_info_PROJECT_ID` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_auditing_info`
--

LOCK TABLES `master_auditing_info` WRITE;
/*!40000 ALTER TABLE `master_auditing_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_auditing_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_bank`
--

DROP TABLE IF EXISTS `master_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_bank` (
  `BANK_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BANK_CODE` varchar(10) DEFAULT NULL,
  `BANK` varchar(50) NOT NULL DEFAULT '',
  `BRANCH` varchar(50) NOT NULL DEFAULT '',
  `ADDRESS` varchar(100) NOT NULL DEFAULT '',
  `IFSCCODE` varchar(25) DEFAULT NULL,
  `MICRCODE` varchar(25) DEFAULT NULL,
  `CONTACTNUMBER` varchar(15) DEFAULT NULL,
  `ACCOUNTNAME` varchar(50) DEFAULT NULL,
  `SWIFTCODE` varchar(25) DEFAULT NULL,
  `NOTES` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`BANK_ID`),
  UNIQUE KEY `UNQ_BANK_BRANCH` (`BANK`,`BRANCH`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_bank`
--

LOCK TABLES `master_bank` WRITE;
/*!40000 ALTER TABLE `master_bank` DISABLE KEYS */;
INSERT INTO `master_bank` VALUES (309,'B01','CATHOLIC SYRIAN BANK','MANANTHAVADY','',NULL,NULL,NULL,NULL,NULL,NULL),(310,'B02','FEDERAL BANK','MANANTHAVADY','',NULL,NULL,NULL,NULL,NULL,NULL),(311,'B03','MFSC BANK','Mananthavady','',NULL,NULL,NULL,NULL,NULL,NULL),(312,'B04','Nalloornadu SCB','Mananthavady','',NULL,NULL,NULL,NULL,NULL,NULL),(313,'B05','NMG Bank','Mananthavady','',NULL,NULL,NULL,NULL,NULL,NULL),(314,'B06','State Bank of India','Mananthavady  ( Anjukunnu)','',NULL,NULL,NULL,NULL,NULL,NULL),(315,'B07','State Bank of Trivancore','Mananthavady','',NULL,NULL,NULL,NULL,NULL,NULL),(316,'B08','Syndicate Bank','Mananthavady','',NULL,NULL,NULL,NULL,NULL,NULL),(317,'B09','Treassury Savings Bank','Dwaraka','',NULL,NULL,NULL,NULL,NULL,NULL),(318,'B10','Federal Bank','Kalpetta','',NULL,NULL,NULL,NULL,NULL,NULL),(319,'B11','SBI Mutual Aid Fund','Anjukunnu','',NULL,NULL,NULL,NULL,NULL,NULL),(320,'B12','Bhadratha Social Security Scheme','Kalpetta','',NULL,NULL,NULL,NULL,NULL,NULL),(321,'B13','National Savings','Kalpetta','',NULL,NULL,NULL,NULL,NULL,NULL),(322,'B14','UTI Mutual Fund','Kalpetta','',NULL,NULL,NULL,NULL,NULL,NULL),(323,'B15','Syndicate Bank','Erumad','Erumad  643 239',NULL,NULL,NULL,NULL,NULL,NULL),(324,'B16','Federal Bank','Badagara','Vadagara',NULL,NULL,NULL,NULL,NULL,NULL),(325,'B17','National Savings','Mananthavady','',NULL,NULL,NULL,NULL,NULL,NULL),(326,'B18','Life Insurance Corpaoration of India','Mananthavady','LIC OF INDIA, 6-536/A, Mananthavady',NULL,NULL,NULL,NULL,NULL,NULL),(327,'MUF01','Franklin Templeton Mutual Fund','Ernakulam','41/418-C, First Floor,Rajaji Road , EKM',NULL,NULL,NULL,NULL,NULL,NULL),(328,'LIC02','Life Insurance Corporation of India - Kalpetta','Kalpetta','Branch office, PB No 31, Madiyoorkuni, Kalpetta',NULL,NULL,NULL,NULL,NULL,NULL),(329,'B19','South Indian Bank','Kalpetta','',NULL,NULL,NULL,NULL,NULL,NULL),(330,'B20','Syndicate Bank','Dwaraka','',NULL,NULL,NULL,NULL,NULL,NULL),(331,'B21','The Wayanad District Co-Operative Bank','Mananthavady','',NULL,NULL,NULL,NULL,NULL,NULL),(332,'B22','The South Indian Bank','Manathavady','',NULL,NULL,NULL,NULL,NULL,NULL),(333,'OD18','Federal Bank','Sulthan Bathery','Bathery .P.O',NULL,NULL,NULL,NULL,NULL,NULL),(334,'0BK','South Indian Bank','B.G road Banglore','Banglore',NULL,NULL,NULL,NULL,NULL,NULL),(335,'FDL43','SIB','Mananthavady','',NULL,NULL,NULL,NULL,NULL,NULL),(336,'B23','Panjab National Bank','Manathavady','KPV Comp,Jose Theater ,Mtdy',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `master_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_bank_account`
--

DROP TABLE IF EXISTS `master_bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_bank_account` (
  `BANK_ACCOUNT_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ACCOUNT_CODE` varchar(25) DEFAULT NULL,
  `ACCOUNT_NUMBER` varchar(50) NOT NULL DEFAULT '',
  `ACCOUNT_HOLDER_NAME` varchar(50) DEFAULT NULL,
  `ACCOUNT_TYPE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BANK_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DATE_OPENED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DATE_CLOSED` datetime DEFAULT NULL,
  `OPERATED_BY` varchar(200) DEFAULT NULL,
  `PERIOD_YEAR` int(10) unsigned NOT NULL DEFAULT '0',
  `PERIOD_MTH` int(10) unsigned NOT NULL DEFAULT '0',
  `PERIOD_DAY` int(10) unsigned NOT NULL DEFAULT '0',
  `INTEREST_RATE` decimal(15,2) NOT NULL DEFAULT '0.00',
  `MATURITY_DATE` datetime DEFAULT NULL,
  `NOTES` varchar(500) DEFAULT NULL,
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_FCRA_ACCOUNT` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`BANK_ACCOUNT_ID`),
  KEY `FK_master_bank_bank_id` (`BANK_ID`),
  CONSTRAINT `FK_master_bank_id` FOREIGN KEY (`BANK_ID`) REFERENCES `master_bank` (`BANK_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=385 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_bank_account`
--

LOCK TABLES `master_bank_account` WRITE;
/*!40000 ALTER TABLE `master_bank_account` DISABLE KEYS */;
INSERT INTO `master_bank_account` VALUES (353,5105,'LB01','6/74-LB01',NULL,1,309,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(354,5106,'LB02','1-LB02',NULL,1,310,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(355,5107,'LB03','54/89-LB03',NULL,1,309,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(356,5108,'LB05','1688-LB05',NULL,1,311,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(357,5109,'LB06','5387-LB06',NULL,1,311,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(358,5110,'LB07','4342-LB07',NULL,1,311,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(359,5111,'LB08','17712-LB08',NULL,1,312,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(360,5112,'LB09','12470-LB09',NULL,1,313,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(361,5113,'LB10','10589177235 (C&I - 95)-LB10',NULL,1,314,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(362,5114,'LB11','57066988309 - (67109)-LB11',NULL,1,315,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(363,5115,'LB12','19334 ( 4612/220/32442)-LB12',NULL,1,316,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(364,5116,'LB13','14257 ( 42162200005097)-LB13',NULL,1,316,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(365,5117,'LB14','603-LB14',NULL,1,317,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(366,5118,'LB04','796-LB04',NULL,1,318,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(367,5119,'F01','100/76-F01',NULL,1,309,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(368,5120,'LB15','9810-LB15',NULL,1,311,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(369,5121,'LB20','2453-LB20',NULL,1,310,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(370,5122,'AC01','623622022222-AC01',NULL,1,323,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(371,5123,'AC1','10710100172727-AC1',NULL,1,324,'2007-09-29 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(372,5124,'LSB03','20050156-LSB03',NULL,1,309,'2005-12-08 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(373,5125,'SB 01','22527-SB 01',NULL,1,312,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(374,5126,'SB01','0536053000000132-SB01',NULL,1,329,'2009-03-28 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(375,5127,'SB02','0536053000000001-SB02',NULL,1,329,'2009-03-21 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(376,5128,'SB03','47512200000011-SB03',NULL,1,330,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(377,5129,'LB1','2081-LB1',NULL,1,331,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(378,5130,'SB1','0605053000000001-SB1',NULL,1,332,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(379,5131,'OD18','10690101259619-OD18',NULL,1,333,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(380,5132,'0BK','04735-0BK',NULL,1,334,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(381,5133,'FDL51','001-FDL51',NULL,1,335,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(382,5134,'FDL65','32974-FDL65',NULL,1,311,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(383,5135,'FDL70','114796-FDL70',NULL,1,335,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(384,5136,'LB21','2879000100051647-LB21',NULL,1,336,'2006-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0);
/*!40000 ALTER TABLE `master_bank_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_contribution_head`
--

DROP TABLE IF EXISTS `master_contribution_head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_contribution_head` (
  `CONTRIBUTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(15) DEFAULT NULL,
  `FC_PURPOSE` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`CONTRIBUTION_ID`),
  UNIQUE KEY `HEAD` (`FC_PURPOSE`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_contribution_head`
--

LOCK TABLES `master_contribution_head` WRITE;
/*!40000 ALTER TABLE `master_contribution_head` DISABLE KEYS */;
INSERT INTO `master_contribution_head` VALUES (1,'1','Celebration of national events (Independence / Republic day) / festivals etc.'),(2,'2','Theatre / Films'),(3,'3','Maintenance of place of historical and cultural importance'),(4,'4','Preservation of ancient / tribal art forms'),(5,'5','Research'),(6,'6','Cultural shows'),(7,'7','Setting up and running handicraft centre / cottage and Khadi industry / social forestry projects'),(8,'8','Animal husbandry projects'),(9,'9','Income generation projects / schemes'),(10,'10','Micro-finance projects, including setting up banking co-operatives and self-help groups'),(11,'11','Agricultural activity'),(12,'12','Rural Development'),(13,'13','Construction and maintenance of school / college'),(14,'14','Construction and running of hostel for poor students'),(15,'15','Grant of stipend / Scholarship / assistance in cash and kind to poor / deserving children'),(16,'16','Purchase and supply of educational material - books, notebooks etc.'),(17,'17','Conducting adult literacy programs'),(18,'18','Education / Schools for the mentally challenged'),(19,'19','Non-formal education projects / coaching classes'),(20,'20','Construction / Repair / Maintenance of places of worship'),(21,'21','Religious schools / education of priests and preachers'),(22,'22','Publication and distribution of religious literature'),(23,'23','Religious functions'),(24,'24','Maintenance of priests / preachers / other religious functionaries'),(25,'25','Construction / Running of hospital / dispensary / clinic'),(26,'26','Construction of community halls etc.'),(27,'27','Construction and Management of old age home'),(28,'28','Welfare of the aged / widows'),(29,'29','Construction and Management of Orphanage'),(30,'30','Welfare of the orphans'),(31,'31','Construction and Management of dharamshala / shelter'),(32,'32','Holding of free medical / health / family welfare / immunisation camps'),(33,'33','Supply of free medicine, and medical aid, including hearing aids, visual aids, family planning aids etc.'),(34,'34','Provision of aids such as Tricycles, calipers etc. to the handicapped'),(35,'35','Treatment / Rehabilitation of persons suffering from leprosy'),(36,'36','Treatment / Rehabilitation of drug addicts'),(37,'37','Welfare / Empowerment of women'),(38,'38','Welfare of children'),(39,'39','Provision of free clothing / food to the poor, needy and destitute'),(40,'40','Relief / Rehabilitation of victims of natural calamities'),(41,'41','Help to the victims of riots / other disturbances'),(42,'42','Digging of bore wells'),(43,'43','Sanitation including community toilets etc.'),(44,'44','Vocational training - tailoring, motor repairs, computers etc.'),(45,'45','Awareness Camp / Seminar / Workshop / Meeting / Conference'),(46,'46','Providing free legal aid / Running legal aid centre'),(47,'47','Holding sports meet'),(48,'48','Awareness about Acquired Immune Deficiency Syndrome (AIDS) / Treatment and rehabilitation of persons affected by AIDS'),(49,'49','Welfare of the physically and mentally challenged'),(50,'50','Welfare of the Scheduled Castes'),(51,'51','Welfare of the Scheduled Tribes'),(52,'52','Welfare of the Other Backward Classes'),(53,'53','Environmental programs'),(54,'54','Survey for socio-economic and other welfare programs'),(55,'55','Establishment expenses'),(56,'56','Activities other than those mentioned above (Furnish details)'),(58,'P56','56A - Own Institution and Programme'),(59,'P57','56B - Donation for Other Institutions'),(60,'P58','56C - Donation for Individuals and Seminarians'),(61,'P59','56D - General Purpose');
/*!40000 ALTER TABLE `master_contribution_head` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_cost_centre`
--

DROP TABLE IF EXISTS `master_cost_centre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_cost_centre` (
  `COST_CENTRE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ABBREVATION` varchar(10) DEFAULT NULL,
  `COST_CENTRE_NAME` varchar(50) NOT NULL DEFAULT '',
  `NOTES` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`COST_CENTRE_ID`),
  UNIQUE KEY `UNQ_COST_CENTRE_NAME` (`COST_CENTRE_NAME`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=3829 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_cost_centre`
--

LOCK TABLES `master_cost_centre` WRITE;
/*!40000 ALTER TABLE `master_cost_centre` DISABLE KEYS */;
INSERT INTO `master_cost_centre` VALUES (3510,'M001','Hassan',NULL),(3511,'M002','Mandya Mission',NULL),(3512,'M003','Mysore',NULL),(3513,'M004','N. R. Pura',NULL),(3514,'M005','Shimoga',NULL),(3515,'P001','Adakkathode - St Joseph`s Church',NULL),(3516,'P002','Adikolly  -  St Sebastian`s Church',NULL),(3517,'P003','Alattil - Mary`s Church',NULL),(3518,'P004','Amarakuni - St. Jude Church',NULL),(3519,'P005','Ambalavayal - Martin De Pores Church',NULL),(3520,'P006','Ambayathode - St. George Church',NULL),(3521,'P007','Appapara - St. George Church',NULL),(3522,'P008','Arattuthara - St. Thomas Church',NULL),(3523,'P009','Arinchermala - St.Thomas Church',NULL),(3524,'P010','Arulnilayam - Sacred  Heart Church',NULL),(3525,'P011','Bavali - St.Joseph`s Church',NULL),(3526,'P012','Becky - St.Mary`s Church',NULL),(3527,'P013','Bhoodanam - St.Mary`s Church',NULL),(3528,'P014','Burliar - Annai Velankanny',NULL),(3529,'P015','Charity - St.George Church',NULL),(3530,'P016','Chennalode - St.Sebastian`s Church',NULL),(3531,'P017','Cherukattoor - St.Sebastian`s Church',NULL),(3532,'P018','Chithragiri - St. George Church',NULL),(3533,'P019','Chokkad - Holy Family Church',NULL),(3534,'P020','Chulliana - Good Shephered Church',NULL),(3535,'P021','Chulliode - Fransis Assisi Church',NULL),(3536,'P022','Chundakkara - St.Joseph`s Church',NULL),(3537,'P023','Chungakkunnu - Fathima Matha Church',NULL),(3538,'P024','Coonnoor - St. Sebastian`s Church',NULL),(3539,'P025','Deepthigiri - St. Thomas Church',NULL),(3540,'P026','Dharmagiri - St.Sebastian`s Church',NULL),(3541,'P027','Dwaraka - St. Alphonsa Church',NULL),(3542,'P028','Edappetty - St.Sebastian`s Church',NULL),(3543,'P029','Edayoorkunnu - Bl.Chavara Kuriakose Church',NULL),(3544,'P030','Edivanna - St. Thomas Church',NULL),(3545,'P031','Elapeedika - St.Sebastian`s Church',NULL),(3546,'P032','Hinkal - Infant Jesus Church',NULL),(3547,'P033','Irulam - St.Sebastian`s Church',NULL),(3548,'P034','Kabanigiri - St.Mary`s Church',NULL),(3549,'P035','Kadalmad - St.Mary`s Church',NULL),(3550,'P036','Kallody - St.George Church',NULL),(3551,'P037','Kallumukku - St.George Chruch',NULL),(3552,'P038','Kalluvayal - St.Mary`s Church',NULL),(3553,'P039','Kalpetta - St.Vincent De Paul Church',NULL),(3554,'P040','Kalpra - St.Mary`s Church',NULL),(3555,'P041','Kammana - Little Flower Chruch',NULL),(3556,'P042','Kaniambetta - St.Mary`s Church',NULL),(3557,'P043','Karakkamala - St.Mary`s Church',NULL),(3558,'P044','Karani - Christ The King Church',NULL),(3559,'P045','Karimani - Infant Jesus Church',NULL),(3560,'P046','Karimbil - St.Sebastian`s Church',NULL),(3561,'P047','Kartikulam - St.Sebastian`s Church',NULL),(3562,'P048','Kavummannam - Lourde Matha Church',NULL),(3563,'P049','Kayyunny - Fathima Matha Church',NULL),(3564,'P050','Kelakam - St.Joseph`s Church',NULL),(3565,'P051','Kenichira - St.Sebastian`s Church',NULL),(3566,'P052','Kolavayal - St.George Church',NULL),(3567,'P053','Kommayad - St.Sebastian`s Church',NULL),(3568,'P054','Kottathara - St.Antony`s Church',NULL),(3569,'P055','Kottiyoor - St.Sebastian`s Church',NULL),(3570,'P056','Kunjhome - St.Antony`s Church',NULL),(3571,'P057','Kunnalady - Fathima Matha Church',NULL),(3572,'P058','Kurumani - St.Sebastian`s Church',NULL),(3573,'P059','Kurumbala - St.Joseph`s Church',NULL),(3574,'P060','Kuttimoola - St.Xavier Church',NULL),(3575,'P061','Lakkidi - St.Moses Church',NULL),(3576,'P062','Machikolly - St.Joseph`s Church',NULL),(3577,'P063','Makkiyad - St.Jude Church',NULL),(3578,'P064','Mananthavady Cathedral - St.Joseph`s Church',NULL),(3579,'P065','Mananthavady Town - St.Peter &Paul Church',NULL),(3580,'P066','Mangalam - Good Shephered Church',NULL),(3581,'P067','Mangalassery - St.Sebastian`s Church',NULL),(3582,'P068','Manimooly - Christ The King Church',NULL),(3583,'P069','Manjoora - St.Peter & Paul Church',NULL),(3584,'P070','Manvayal - St.Sebastian`s Church',NULL),(3585,'P071','Marakavu - St.Thomas Church',NULL),(3586,'P072','Marakkadavu - St.Joseph`s Church',NULL),(3587,'P073','Martin Nagar - St.Martin De Porus  Church',NULL),(3588,'P074','Meenangadi - Francis Assisi Church',NULL),(3589,'P075','Moolepadam - St.Joseph Church',NULL),(3590,'P076','Mothakkara - Holy Face Church',NULL),(3591,'P077','Mullenkolly - St.Mary`s Church',NULL),(3592,'P078','Munderi - St.George Church',NULL),(3593,'P079','Nadavayal - Holy Cross Forane Church',NULL),(3594,'P080','Narivalamunda - St.Joseph`s Church',NULL),(3595,'P081','Nedumpala - St.Mary`s Church',NULL),(3596,'P082','Neikuppa - St.Joseph`s Church',NULL),(3597,'P083','Nelliyodi - St Jude Church',NULL),(3598,'P084','Nilambur - Little Flower Church',NULL),(3599,'P085','Niravilpuzha - St.Elias Church',NULL),(3600,'P086','Njarappadam - St.Joseph`s Church',NULL),(3601,'P087','Olivumala - St.Thomas Church',NULL),(3602,'P088','Ottaplavu - St.Alphonsa Church',NULL),(3603,'P089','Ozhukkanmoola - St.Thomas Church',NULL),(3604,'P090','Padamala - St.Alphonsa Church',NULL),(3605,'P091','Padichira - St.Sebastian`s Church',NULL),(3606,'P092','Palankara - St.Sebastian`s Church',NULL),(3607,'P093','Palchuram - Bl.Chavara Kuriakose Elias Chruch',NULL),(3608,'P094','Palemad - St.Thomas Church',NULL),(3609,'P095','Panamchira - St.Sebastian`s Church',NULL),(3610,'P096','Panavally - St.Mary`s Church',NULL),(3611,'P097','Paralikunnu - St.Sebastian`s Church',NULL),(3612,'P098','Parathottam - St.Mary`s Church',NULL),(3613,'P099','Pathiripadam - St.Mary`s Church',NULL),(3614,'P100','Pattanikoopp - Infant Jesus Church',NULL),(3615,'P101','Payyampally- St.Catherine Church',NULL),(3616,'P102','Pazhoor - St.Antony`s Church',NULL),(3617,'P103','Peria - St.Mary`s Church',NULL),(3618,'P104','Pookkottumpadam - St.Mary`s Church',NULL),(3619,'P105','Poolappadam - St.George Church',NULL),(3620,'P106','Poroor - St.Sebastian`s Church',NULL),(3621,'P107','Pulpally - Sacred Heart Town Chruch',NULL),(3622,'P108','Puthiyidom -Little Flower Church',NULL),(3623,'P109','Puthiyidamkunu - Bl.Chavara Kuriakose Elias Church',NULL),(3624,'P110','Puthusserikkadavu - Christ The King Church',NULL),(3625,'P111','Puthussery - St.Mary`s Church',NULL),(3626,'P112','Rippon -St.Joseph Chruch',NULL),(3627,'P113','Rubynagar - St.Jude Church',NULL),(3628,'P114','Santhigiri -St.Sebastian`s Church',NULL),(3629,'P115','Seethamount - St.Joseph Church',NULL),(3630,'P116','Sisumala - Infant Jesus Church',NULL),(3631,'P117','Sulthan Bathery - Assumption of Our lady Church',NULL),(3632,'P118','Thalanji - St.Mary`s Church',NULL),(3633,'P119','Thalapuzha - Our Lady of Mt. Carmel Church',NULL),(3634,'P120','Thariode - St.Mary`s Church',NULL),(3635,'P121','Thavinjal - St.Mary`s Church',NULL),(3636,'P122','Thelpara - St.Mary`s Church',NULL),(3637,'P123','Theneri - Fathima Matha Church',NULL),(3638,'P124','Thomattuchal - St.Thomas Church',NULL),(3639,'P125','Thonichal - St.Sebastian`s Church',NULL),(3640,'P126','Thrissilery - St.George Church',NULL),(3641,'P127','Vadakkanad - St.Joseph`s Church',NULL),(3642,'P128','Vakery - St.Antony`s Church',NULL),(3643,'P129','Valad - St.George Church',NULL),(3644,'P130','Valavayal - St.Sebastian`s Church',NULL),(3645,'P131','Vallikett - St.Mary`s Church',NULL),(3646,'P132','Vanjode - St.Joseph`s Church',NULL),(3647,'P133','Vazhavatta - St.Sebastian`s Church',NULL),(3648,'P134','Velloonny - Providence Church',NULL),(3649,'P135','Vilambukandam - St.Sebastian`s Church',NULL),(3650,'P136','Vimalagiri - St.Mary`s Church',NULL),(3651,'P137','Vythiri - St.Mary`s Church',NULL),(3652,'S001','Anjukunnu',NULL),(3653,'S002','Arattupara - St. Mary`s Church',NULL),(3654,'S003','Aruvankadu - St.Thomas Church',NULL),(3655,'S004','Cheengeri - St.Mary`s Church',NULL),(3656,'S005','Cheengavallam - St.Sebastian`s Church',NULL),(3657,'S006','Chooralmala - St. Sebastian`s Church',NULL),(3658,'S007','Kurumbalakotta - St.Jude Church',NULL),(3659,'S008','Marutha - St.Mary`s Church',NULL),(3660,'S009','Muttiyel - St.Alphonsa Church',NULL),(3661,'S010','Muthireri - Little Flower Chruch',NULL),(3662,'S011','Ootty - St.Joseph`s Church',NULL),(3663,'S012','Prasanthigiri - St.Joseph`s Church',NULL),(3664,'S013','Pushpagiri orphanage Panamaram',NULL),(3665,'S014','Puzhamudi - St.Mary`sChurch',NULL),(3666,'S015','T.K.Colony - St.George Church',NULL),(3667,'S016','Valanchery - St.Mary`sChurch',NULL),(3668,'P139','Jude`s Mount - St.Jude`s Church',NULL),(3669,'E001','Jordania, Gandibagilu',NULL),(3670,'E002','Seminary Villa Estate, Nedumpoil',NULL),(3671,'E003','St. Thomas Mount, Estate  Mananthavady',NULL),(3672,'E004','Woodlands Estate, Kartikulam',NULL),(3673,'E005','Greenpeak Estate, Kalpetta',NULL),(3674,'E006','Santigiri Estate, Santhigiri',NULL),(3675,'E007','Mary Matha, Estate Ondayangadi',NULL),(3676,'I001','Pastoral Centre, Dwaraka',NULL),(3677,'I002','Regional Pastoral Centre,- Manimooly',NULL),(3678,'I003','Zion CRC, Dwaraka',NULL),(3679,'I004','St. Joseph`s Hospital, Mananthavady',NULL),(3680,'I005','Mary Matha Arts & Science College, Mananthavady',NULL),(3681,'I006','Newman`s College, Mananthavady',NULL),(3682,'I007','De-Paul Public School',NULL),(3683,'I008','Sacred Heart Matriculation School, Kayyunni',NULL),(3684,'I009','St. Peter`s Childrens Home, Kartikulam',NULL),(3685,'I010','Boy`s Town, Varayal Orphanage',NULL),(3686,'I011','Shanthinilayam Orphanage , Kunjhome',NULL),(3687,'I012','Vianney Bhavan, Dwaraka',NULL),(3688,'I013','Legal Aid Centre, Mananthavady',NULL),(3689,'I014','Samaritan Bhavan, Mananthavady',NULL),(3690,'I015','Vikas Kendra, Mananthavady',NULL),(3691,'I016','St. Joseph`s Book Stall, Mananthavady',NULL),(3692,'A001','Catechetical Instruction',NULL),(3693,'A002','Corporate Management of Schools',NULL),(3694,'A003','Wayanad Social Service Society',NULL),(3695,'A004','Cherupushpa Mission League',NULL),(3696,'A005','Kerala Catholic Youth Movement',NULL),(3697,'A006','Society of St. Vincent De Paul',NULL),(3698,'A007','All Kerala Catholic Congress',NULL),(3699,'A008','Family Apostolate',NULL),(3700,'A009','Renewal Ministry',NULL),(3701,'A010','Navachaithanya',NULL),(3702,'A011','Vocation Bureau',NULL),(3703,'A012','Indian Farmers Movement',NULL),(3704,'A013','Liturgical Commission',NULL),(3705,'A014','Labour commission',NULL),(3706,'A015','Holy childhood  & Bible Apostolate',NULL),(3707,'A016','PRO',NULL),(3708,'C001','Building Dwaraka (Alphonsa Shoping Complex)',NULL),(3709,'I017','Mount Mary College, Mananthavady',NULL),(3710,'I018','Jyothi Vikas Centre, Honnamanakatte',NULL),(3711,'Z001','Family Year 2006 - 2007',NULL),(3712,'Z002','Library - Bishop`s House',NULL),(3713,'Z003','Sundaram Finance Ltd',NULL),(3714,'I019','Legal Aid Centre, Manimooly',NULL),(3715,'A017','Madyavirudha Samithi',NULL),(3716,'I020','Ep. Tribunal',NULL),(3717,'E008','Vianney Bhavan Estate, Dwaraka',NULL),(3718,'M006','Jeevadaru, Hand Post',NULL),(3719,'P138','Boys` Town - Holy Family Church',NULL),(3720,'IO21','WWA Chithragiri',NULL),(3721,'Z004','Students Education Fund',NULL),(3722,'I022','Emmaus Villa Thonichal',NULL),(3723,'I023','St.Josephs Orphanage, Mananthavady',NULL),(3724,'I024','SH Childrens Home, Kottiyoor',NULL),(3725,'I20','Jayamatha Orphanage, Kartikulam',NULL),(3726,'I025','St.Josephs Ophanage, Manimooly',NULL),(3727,'I026','Jyothi Balabhavan, NR Pura',NULL),(3728,'I027','Gulabi Childrens Home, Mandya',NULL),(3729,'I028','Fr.Tezass orphanage,Kuttiyamvayal',NULL),(3730,'I029','St.Mary`s Orhanage, Bathery',NULL),(3731,'I030','Vimala Balabhavan, Kellur',NULL),(3732,'I031','Goretti Balabhavan, Nadavayal',NULL),(3733,'I032','Campus ministry',NULL),(3734,'I033','Karuna Nilaya - Badravathi Orphanage',NULL),(3735,'I33','Pushpa Charitable Trust',NULL),(3736,'Z005','Audit Fees',NULL),(3737,'IND01','Fr.',NULL),(3738,'Ins01','Santhome Bangalore',NULL),(3739,'P140','Panamaram',NULL),(3740,'Z006','Pauldary',NULL),(3741,'Z007','Cow',NULL),(3742,'Ins05','Jesus fretenity',NULL),(3743,'P141','Bangalore Santhome',NULL),(3744,'P142','Vadapuram - St.Fransis Chruch',NULL),(3745,'Ins02','Construction of Honnammanakatte School',NULL),(3746,'P143','Vincentian Nilambur',NULL),(3747,'P01','Fr.Kochuchackalackal MST, Sikkaripura',NULL),(3748,'Ins04','St. Antonys Balabhavan, Iduvally',NULL),(3749,'Ins06','Honnamanakatte School',NULL),(3750,'P144','Yavanarkulam - St.Mary`s Church',NULL),(3751,'P145','Valiyakolly - Infant Jesus Church',NULL),(3752,'Z008','Social Awareness Year 2007-2008',NULL),(3753,'Z009','Diocesian Day',NULL),(3754,'I034','Norbert House Mananthavady',NULL),(3755,'E009','Gudaloor Regional Estate',NULL),(3756,'Ins03','Nirmala Shopping Complex Dwaraka',NULL),(3757,'Z010','Solar',NULL),(3758,'Z011','Contractor Account',NULL),(3759,'A018','CBCI',NULL),(3760,'A019','KCBC',NULL),(3761,'P146','Yavanarkulam - St Mary`s Church',NULL),(3762,'Ins07','Bhadravathy  Diocese',NULL),(3763,'I035','CMI Kozhikode Province ( Amalapuri )',NULL),(3764,'AO20','Education Aid Fund',NULL),(3765,'Ins08','SH Provincial House',NULL),(3766,'Ins09','Nagavally Lourd Matha Church',NULL),(3767,'Ins10','Kristuraj Ashram Anavatty',NULL),(3768,'Ins11','St Mary`s Church  Holehonnur',NULL),(3769,'Z012','Fax Mechine',NULL),(3770,'Z013','Corporate Teachers Association',NULL),(3771,'MS01','Pushpagiri  Ashram Panamaram',NULL),(3772,'Z014','Electricity Charges',NULL),(3773,'PL01','Mysore Land',NULL),(3774,'Z015','PG Studys',NULL),(3775,'I036','Aluva St Joseph`s Seminary',NULL),(3776,'I037','Kottayam  St Thomas AP Seminary',NULL),(3777,'I038','Thrissur Seminary',NULL),(3778,'I039','Kunnoth Seminary',NULL),(3779,'I040','Mangalore Seminary',NULL),(3780,'Ins12','MMB Generalate Thrissur',NULL),(3781,'Ins13','Good Shephered Major Seminary Kunnoth',NULL),(3782,'Ins14','Sanjos Shopping Complex mtdy',NULL),(3783,'Z016','TDS',NULL),(3784,'0K','Workers Stationary',NULL),(3785,'ER01','Roof Leak Repaire',NULL),(3786,'000','Vachanavarsham',NULL),(3787,'P147','Kunnambetta - Nithya Sahayamatha Church',NULL),(3788,'P148','Koppa -Church',NULL),(3789,'Ins15','Thalanji Carmel Gigi English Mediam School',NULL),(3790,'P149','Heggade - St Mary`s Church',NULL),(3791,'Ins16','Balthangady Diocese',NULL),(3792,'P150','Panthipoyil - Immaculate Conception Church',NULL),(3793,'Ins17','De-Paul Shopping Complex Kalpetta',NULL),(3794,'A021','PRO- Radio Mattoly',NULL),(3795,'P151','Gundelpet  Church',NULL),(3796,'S017','Moolankavue  - St.Jude Church',NULL),(3797,'Z017','Food & Accomadation  Staff',NULL),(3798,'Z018','Loan To Staff',NULL),(3799,'Z019','Stationary',NULL),(3800,'Z020','Vehicle - Bishop`s House',NULL),(3801,'Z021','Employees Salary',NULL),(3802,'Z022','Subscription',NULL),(3803,'023','Telephone',NULL),(3804,'Z024','Festvel Allowance',NULL),(3805,'Ins18','START',NULL),(3806,'Ins19','Mandya Diocese',NULL),(3807,'Ins20','WSSS',NULL),(3808,'I041','Regional Pastoral Center - Gudaloor',NULL),(3809,'Ins25','Vianney Bhavan New Block',NULL),(3810,'Ins26','MCBS Province - Kottayam',NULL),(3811,'Ins27','Trinity Shopping Complex Mananthavady',NULL),(3812,'1050','Eluru St Cammillus College Janampet  AP',NULL),(3813,'E010','Peruvaka Land',NULL),(3814,'Ins28','Olive Arcade Mananthavady',NULL),(3815,'E10','Moolithode Land (Kallody)',NULL),(3816,'A031','Christian Civic Service Society(CCSS)',NULL),(3817,'P152','Valery - St. Alphonsa Church',NULL),(3818,'A022','Kerala Labour Movement (KLM)',NULL),(3819,'Ins29','Vazakala Building Project Ekm',NULL),(3820,'Ins30','Angamalli Building Project',NULL),(3821,'Ins31','Palm Grove Arcade, Panamaram',NULL),(3822,'Ins32','Panamaram Complex 02',NULL),(3823,'P153','Panamaram, St. Jude Church',NULL),(3824,'Ins34','Catechism',NULL),(3825,'Ins33','Media commision',NULL),(3826,'Ins35','SABS Provincial House, Dwaraka',NULL),(3827,'Ins36','Papal Seminary: Puna: Jnana Deepa Vidhyapitham',NULL),(3828,'P154','Thrikkaipetta - St.John Paul II Church',NULL);
/*!40000 ALTER TABLE `master_cost_centre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_cost_centre_category`
--

DROP TABLE IF EXISTS `master_cost_centre_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_cost_centre_category` (
  `COST_CENTRECATEGORY_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `COST_CENTRE_CATEGORY_NAME` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`COST_CENTRECATEGORY_ID`),
  UNIQUE KEY `UNQ_COST_CATEGORY` (`COST_CENTRE_CATEGORY_NAME`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_cost_centre_category`
--

LOCK TABLES `master_cost_centre_category` WRITE;
/*!40000 ALTER TABLE `master_cost_centre_category` DISABLE KEYS */;
INSERT INTO `master_cost_centre_category` VALUES (15,'General');
/*!40000 ALTER TABLE `master_cost_centre_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_country`
--

DROP TABLE IF EXISTS `master_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_country` (
  `COUNTRY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COUNTRY` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `COUNTRY_CODE` varchar(5) DEFAULT NULL,
  `CURRENCY_CODE` varchar(8) DEFAULT NULL,
  `CURRENCY_SYMBOL` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CURRENCY_NAME` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_ID`),
  UNIQUE KEY `UNQ_COUNTRY` (`COUNTRY`) USING BTREE,
  UNIQUE KEY `UNQ_COUNTRY_CODE` (`COUNTRY_CODE`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_country`
--

LOCK TABLES `master_country` WRITE;
/*!40000 ALTER TABLE `master_country` DISABLE KEYS */;
INSERT INTO `master_country` VALUES (248,'India','IND',NULL,'Rs',NULL),(249,'Australia','1',NULL,'$A',NULL),(250,'France','2',NULL,'FF',NULL),(251,'Italy','3',NULL,'Lit',NULL),(252,'Germany','4',NULL,'Â£',NULL),(253,'Switzerland','5',NULL,'SFr',NULL),(254,'Canada','6',NULL,'Can$',NULL),(255,'U.S.A','7',NULL,'$',NULL),(256,'Netherlands','8',NULL,'â‚¬',NULL),(257,'United States of America','9',NULL,'$',NULL),(258,'United Kingdom','10',NULL,'Â£',NULL);
/*!40000 ALTER TABLE `master_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_division`
--

DROP TABLE IF EXISTS `master_division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_division` (
  `DIVISION_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DIVISION` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`DIVISION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_division`
--

LOCK TABLES `master_division` WRITE;
/*!40000 ALTER TABLE `master_division` DISABLE KEYS */;
INSERT INTO `master_division` VALUES (1,'Local'),(2,'Foreign');
/*!40000 ALTER TABLE `master_division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_donaud`
--

DROP TABLE IF EXISTS `master_donaud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_donaud` (
  `DONAUD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(150) DEFAULT NULL,
  `TYPE` int(10) unsigned DEFAULT NULL COMMENT 'Institutional -1   Individual -2 ',
  `PLACE` varchar(30) DEFAULT NULL,
  `COMPANY_NAME` varchar(45) DEFAULT NULL,
  `COUNTRY_ID` int(11) DEFAULT NULL,
  `PINCODE` varchar(10) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `FAX` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `IDENTITYKEY` int(10) unsigned DEFAULT NULL COMMENT '0 -Donor   1- Auditor',
  `URL` varchar(50) DEFAULT NULL,
  `FCDONOR` int(10) unsigned DEFAULT NULL COMMENT '0 - No    1- yes',
  `STATE` varchar(30) DEFAULT NULL,
  `ADDRESS` varchar(300) DEFAULT NULL,
  `NOTES` varchar(500) DEFAULT NULL,
  `PAN` varchar(20) DEFAULT NULL,
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CUSTOMERID` int(10) unsigned NOT NULL DEFAULT '0',
  `STATE_ID` int(10) unsigned DEFAULT NULL,
  `INSTITUTIONAL_TYPE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `REGISTRATION_TYPE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TITLE` varchar(20) DEFAULT NULL,
  `GENDER` int(10) unsigned DEFAULT NULL COMMENT 'MALE FEMALE',
  `DOB` datetime DEFAULT NULL,
  `LANGUAGE` varchar(100) DEFAULT NULL,
  `RELIGION` varchar(100) DEFAULT NULL,
  `REFERRED_STAFF` varchar(100) DEFAULT NULL,
  `OCCUPATION` varchar(100) DEFAULT NULL,
  `ORG_EMPLOYED` varchar(100) DEFAULT NULL,
  `STATUS` int(10) unsigned NOT NULL DEFAULT '1',
  `PAYMENT_MODE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MARITAL_STATUS` varchar(100) NOT NULL DEFAULT '0',
  `ANNIVERSARY_DATE` varchar(100) DEFAULT NULL,
  `REASON_FOR_ACTIVE` varchar(200) DEFAULT NULL,
  `LASTNAME` varchar(100) DEFAULT NULL,
  `CURRENT_BIRTHDAY_DATE_EMAIL` datetime DEFAULT NULL,
  `BIRTHDAY_WISHING_DATE_EMAIL` datetime DEFAULT NULL,
  `CURRENT_MARRIAGE_DATE_EMAIL` datetime DEFAULT NULL,
  `MARRIAGE_WISHING_DATE_EMAIL` datetime DEFAULT NULL,
  `APPEAL_SENT_DATE_EMAIL` datetime DEFAULT NULL,
  `CURRENT_BIRTHDAY_DATE_SMS` datetime DEFAULT NULL,
  `BIRTHDAY_WISHING_DATE_SMS` datetime DEFAULT NULL,
  `CURRENT_MARRIAGE_DATE_SMS` datetime DEFAULT NULL,
  `MARRIAGE_WISHING_DATE_SMS` datetime DEFAULT NULL,
  `APPEAL_SENT_DATE_SMS` datetime DEFAULT NULL,
  PRIMARY KEY (`DONAUD_ID`),
  UNIQUE KEY `UNQ_NAMEADDRESS` (`NAME`,`LASTNAME`,`COUNTRY_ID`,`PLACE`),
  KEY `FK_master_donaud_1` (`COUNTRY_ID`),
  CONSTRAINT `FK_master_donaud_1` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `master_country` (`COUNTRY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3925 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_donaud`
--

LOCK TABLES `master_donaud` WRITE;
/*!40000 ALTER TABLE `master_donaud` DISABLE KEYS */;
INSERT INTO `master_donaud` VALUES (3598,'C/o Fr. Joseph Kallunkamakkal',0,'',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3599,'Anton Lintermans',0,'',NULL,256,'','','','',0,'',0,NULL,'Abbey of Berne, PO Box 60',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3600,'Apostolic Nunciature',1,'New Delhi',NULL,248,'110021','','','',0,'',0,NULL,'50-C Nitimarg, Chanakyapuri',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3601,'Cacilie Plicth',1,'Ann Schwancuhot-16',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3602,'Bischoefliches',1,'Mozartstr',NULL,252,'952064','','','',0,'',0,NULL,'Helfswerk Misereor EV',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3603,'Frauinge Fuhrmann',0,'Eifeler Backstube',NULL,252,'56637','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3604,'Familie Pickenhahn',0,'Friedrich Ebert 38',NULL,252,'56637','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3605,'Pfr.Scite Iserlobrn and Heer morgen brod',0,'',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3606,'Missio EV',1,'Goethster-43',NULL,252,'D-52064','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3607,'Helmut & Monica',0,'Gustar treytag',NULL,252,'','','','',0,'',0,NULL,'Peter & Pauls Chuch',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3608,'C/o Rev.Fr.James Kuttimakkal',0,'Kath Plarrant,Trunstadt',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3609,'Famile Boldgs, Wittmess. str.40',1,'91809 -Welhim',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3610,'Shija P George Porunnedath',0,'2442 Cnanmore, Snell ville',NULL,257,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3611,'Caritas Italiyana',1,'Viale ferdinando, Baldelli',NULL,251,'41-00146','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3612,'Italian Bishops Conference',0,'',NULL,251,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3613,'CEI- Italian Bishpops Conference',1,'',NULL,251,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3614,'C/o Fr.Sebastian Kandeth',0,'Burgster',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3615,'Parrochia Maria',0,'',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3616,'Concregation for the orintal churches in Rome',1,'',NULL,251,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3617,'Paepstliches Mission',1,'Swerk D Kinder',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3618,'Kratt, Herdrnlu',0,'',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3619,'C/o Fr. George Muthirakalayil',0,'Zum Kusterland 13',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3620,'Dr. JohannBddrp',0,'',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3621,'Robert Ncusline',0,'',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3622,'Eroing Marget',0,'',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3623,'Mrs.Gadi Scahirenburg',0,'Kelin Reutersberg 2 #100',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3624,'Dr. Med. Michel Dor',0,'Enziantr, 17A',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3625,'Sr. Mary Stephen SH',0,'Hespenreede 1',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3626,'C/o Fr. Francis Karippukattil',0,'Rindernscherdeich 45-53',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3627,'Surore Missionarie',1,'Clis.petroclaver',NULL,251,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3628,'Sherin Mathew',0,'240 Blackburn RD',NULL,249,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3629,'C/o Fr. Saji Neunkallel',0,'St.Josef hospital',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3630,'Mr. Joseph Mwaben',0,'Wapputal',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3631,'Sr Cacila Mirller',0,'Am-Burdorf-4',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3632,'C/o Fr James Vadakkekkara CMI',1,'Kinder Mission Work',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3633,'Antonio Garafalo',0,'Via Roneello 19/13',NULL,251,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3634,'Sisters of St Peter Claver',1,'Via Dell ` Olamata - 16',NULL,251,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3635,'Sr Brnnhilde',0,'Haus der Barmherzigen Schweste',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3636,'C/o Fr Werner Bega Tschef',0,'Germany',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3637,'Gerhard Schwan pfr.',0,'Kopper Str-12',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3638,'Edith Innz',0,'',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3639,'Alexander Geab',0,'Near Weg / 9',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3640,'C/O Fr Thomas Thekkethala',0,'Fladderburger',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3641,'Katholische Kirchen Germeinde',0,'WUlmeringhausen',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3642,'C/o Fr Cyriac Valachinath',0,'USA',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3643,'C/o Fr Vinu Madathiparambil',0,'Chickago',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3644,'C/o Fr Luke Thirunelliparambil',0,'USA',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3645,'C/o Fr Mathew Plathottam',0,'USA',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3646,'C/o Fr kurian Manikuttiyil',0,'USA',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3647,'Mercy Joseph',0,'Oceanside',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3648,'Mr Noble Thomas',0,'USA',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3649,'Mr Joseph Sebastian',0,'USA',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3650,'Mr Chacko Kurianippadam',0,'USA',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3651,'Maya Augustine',0,'Washington',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3652,'Mr George Luke',0,'Sabre St.',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3653,'Mr John T Verghese',0,'753N.willow',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3654,'Mr Joseph K Chandy',0,'645 Oaklawn Ave',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3655,'Mr Augustine Mathews',0,'215 Linden Ave',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3656,'Mr Roy Joseph',0,'USA',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3657,'Congriegation of Mother of Carmel',1,'Chikkago',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3658,'Mr Stephen T Doughherty',0,'Bee ville',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3659,'Our Lady of Victory Church',1,'707 North Avenue',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3660,'St. Peter Catholic Church',1,'Ben Bolt',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3661,'Mrs Bincy E Cherian',0,'1321 Herald Ave',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3662,'Mr James Thomas',0,'80-15-257 St..',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3663,'Mr Joseph Augustine',0,'9 mack Ave',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3664,'Aleyamma Cyriac',0,'172 South St..',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3665,'Mr Mathew Thoyalil',0,'1840 Feuerisen',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3666,'Mr Sebastian V Varkey',0,'254 Park Ave',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3667,'Mr Jose Sebastian',0,'17 Sunset Ave',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3668,'Elsie & Eappen',0,'II hartsdale St',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3669,'Reena J Kiniyanthan',0,'18 madeley ln',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3670,'Mr Jose B Thottam',0,'92 Truxton Road',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3671,'Regina Joseph',0,'30 Crest Drive',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3672,'Sisters of the Adoration of the Blessed Sacrament',1,'26 Franklin Street',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3673,'Daneil F Donna',0,'6339 Mockingbrid',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3674,'St Sebastian`s Church Corp,',1,'155 Washington St',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3675,'SMCB 3 Vianai St',1,'Somer Ville',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3676,'Syro Malabar Diocese of Chicago',1,'5000 St , Charles Road',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3677,'St  Mary`s Syro Malabar Cathiolic chruch',1,'24 Westminister Rd',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3678,'St Thomas Syro Malabar Catholic church',1,'Chickago',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3679,'Christ The King Catholic Church',1,'1505 E , kivett',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3680,'Sisters of The Charity of Vincent De Paul',1,'1505 E , kivett Dr',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3681,'Mr Mathew M 7 Margeret Arikunnel',0,'512 South Broadway',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3682,'Mr Mathai C Thomas',0,'87 Beverly Rd',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3683,'St Anns Kath - Kirchengemeinde, Herschach',1,'Herschach',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3684,'CNEWA',1,'Earnakulam',NULL,248,'682030','','','',0,'',0,NULL,'The Syro Malabar major Archiepsicopal Curia , EKM',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3685,'Cilly Schardt , Bahnhof str',0,'Bahnhof Str.2',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3686,'Mr pius Kurian, Sally kurian',0,'Ballydoyle Dt',NULL,255,'45503','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3687,'Society of Propagation of the faith ,Arch diocese',1,'NewYork',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3688,'The NewYork Province of the Society of Jesus',1,'39 East Eighty third Street',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3689,'Don Giuliano Mattiolo',0,'Parrocchia  Di  S',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3690,'Arch Bishop, Hans josef Becker',1,'Paderborn',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3691,'C/o Fr James Purathayil CST, Miss.Ver.D.Hi',0,'Hauptstr',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3692,'Mr Hugo Knamm',0,'Runkel',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3693,'Claretine,  Missionsproke,',1,'Wurzburg',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3694,'Donald and Virginia Dubuque,',0,'464 Shoreline Dr.Polson, MT',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3695,'Hochw. Harren Pfarrer Willi Dapper',0,'Meerbusch- 3- Lank,',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3696,'Fr Edger Volk, Kath, Pfrarrant',1,'Kath, Pfrarrant , St.Maria Mag',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3697,'C/o Fr Francis Vattakudiyil',1,'59 Church Street',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3698,'Mr Sigfried Hornung , Margaret, & Fr Andreas',0,'StUckbrunn 1',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3699,'Man Foundation GAC 1121  Oystetr Bag Rd,',0,'East Norwich Ny',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3700,'C/o Fr Jose kandathikudy',1,'Chickago in Newyork',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3701,'Mrs Janetschka Dorothea',0,'BreitengUssbach',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3702,'Mr Ton Groeneweg CMC Programmes Dept.',1,'Po Box 16442',NULL,256,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3703,'C/o Fr.Stephen Spiegel',0,'Hauptstr.6,',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3704,'Catholic Parish,',1,'St. Franziskas,',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3705,'Verein der FOrderer der Missioonarischen and barmb',1,'An Busdorf 4',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3706,'Pfr.Franz- Josef Abmann,Kath, Pfarrgemeinde,',0,'Ostentor - 7',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3707,'IRVIN Meerbush',0,'Meer Bush',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3708,'Frau Edith JUnger. Hinter der MUhle16',0,'MUhle -16',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3709,'Pfr.Kasperski, Humbolt, str 53',0,'Humbolt str. 53',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3710,'Fr.Brunetto, Fioravanti,Santa Maria Scandici',0,'Santa Maria Scandici',NULL,251,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3711,'Bruno Lichte, Maximillian-Kolbe Str-4',0,'Maximillian-Kolbe Str-4',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3712,'Diocese of Corpus Christi,',0,'Post Box No 2620,Corpur Christ',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3713,'Herrn Sigfried, Horung,Kirchberg -15',0,'Horung,Kirchberg -15',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3714,'Mrs.Christel Fadler, Wester waldstr-8',0,'Wester waldstr-8',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3715,'Frau Pickenhahn, Friedrich Ebert 38',0,'Friedrich Ebert 38,',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3716,'Kath. Pfarramt St. Anna, Hein rich- te- poel,',0,'Hein rich- te- poel, Stra Be 5',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3717,'Dr. Rudolf Solzbacher , Erzbistum KOln. Generalvik',1,'Erzbistum KOln.',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3718,'Pfr. Carsten Rcipp,C/O IRMA HUSCHENS,Kath Pfarrai',1,'Am Kirchberg 7 , 54588 Gillenf',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3719,'Diocese of Rottenburg Stuttgort, BischOfliches ord',1,'Postfech G, D - 72101',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3720,'Dr. Lydia and Dr.Johann Boldys,',0,'Wittmess Str. 40,',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3721,'Frau inge Klotz Pfarrer ,',0,'Hofler Strasse 1,',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3722,'MR Josef. MaaBen,',0,'Farnweg 19 a',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3723,'St. Petrus SodalitAt, Billerstr-20',1,'Billerstr - 20',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3724,'Kath. kirchengemeinde, Talstr 24, De 79677',1,'Talstr 24, De 79677',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3725,'Mr.Armin Kiermeier, Gambach - 17',0,'85 296 Robrbach',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3726,'Scaria Thomas Thoppil 820 Division St',0,'820 Division St , 60532 Lisle.',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3727,'Fr.Philip Kollithanam,',0,'1505, E Kivett,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3728,'Mrs. Treesa Mathew ,',0,'702 ,  Live Oak Ln,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3729,'St. Thomas The Apostolic Catholic Church',1,'4922 Rosehill Rd, Garland ,TX',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3730,'Mr. George Joseph,',0,'110 Walnut Forest Lane,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3731,'C/o Fr. michael koblhaas,',0,'Heinrich -te-Poel Str.',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3732,'Mr. George Thomas',0,'30 Ludlam Ave; Elmont',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3733,'Mr. Joseph Nediyakalayil',0,'45 Kalda Ave,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3734,'Mr. Paul Chulliyil',0,'21 Fir - Drive,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3735,'Cheriyan O Chooranadel,',0,'619 Yaupon Dr,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3736,'Mr. Emmanuel Poovathinkal',0,'3906 Citadel Dr,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3737,'Mr Biju Mon K Joseph',0,'1303 Ima St.Edinburg',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3738,'Mr. Thomas',0,'3133 Kensington PL,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3739,'Mr. Robert R Lyons',0,'260.W 52nd Apt 5 K',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3740,'Mr. Lalu M Abraham',0,'2 Lea, Court',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3741,'Sisters Poor Servents of the Mother of God',1,'1315 Greensboro Road,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3742,'Mr. Xavier G Pandiamakeel',0,'2704 Cambridge Rd',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3743,'Mr. Paul Vadukumssery',0,'227 Green Wood Road',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3744,'Mrs Mary Joseph',0,'708 Violet Court,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3745,'M rs Margaret Joseph',0,'1076 Jannifer DL',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3746,'Mr. Tom Francis',0,'Garland, TX',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3747,'Mr. Mathew J Ozhukayil',0,'413 Remington Dr,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3748,'Mr.Robin Varghese',0,'47 Alvarez Ave,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3749,'Mr. Antony Mathew',0,'300,White Wing Ave,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3750,'Mrs.Teja Thomas',0,'1422 Ricco st,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3751,'Mr. Joseph Pulickal',0,'4202 Lebanon',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3752,'Mrs. Betty john',0,'1907- Beatrice Ave,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3753,'Mr. Antony paul',0,'1512 New Haven Dr.',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3754,'Mr. Joseph Puthiyamadam',0,'61- Donald Drive,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3755,'Mrs. Valsamma mathew',0,'143 Suffolk Ave,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3756,'Divine Food Mart LIC',0,'5621 FM 88',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3757,'Sacred Heart Church',1,'217 W. San patircio Ave',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3758,'Dr.Savio Manattt',0,'2520 Gleneaglies Dr.',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3759,'Mr.Antony Cyriac',0,'5000 St Charles Road',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3760,'Mr. Tomy Cheriyan',0,'3300 Yellowhammer Ave,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3761,'Mr.Babu mathew & Mrs Anna mathew',0,'12 W. Ellington Str,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3762,'Mr.Ronald Dabuque',0,'',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3763,'Dr.Michalel DOrr,',0,'Enizian Strasse 17 a,',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3764,'Derard Van Der- Eng,',0,'Karkstraat 8-20 ,',NULL,256,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3765,'Gerard Van Der',0,'Karkastraat 8-20',NULL,256,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3766,'Sr Superior , Kongregation der Barmb',1,'Schuestern',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3767,'C/o Fr ames kumbeeckal, St Charles Barromeo Church',1,'49/6 Trier Road,',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3768,'Mr. George Thalody MD Jayamma Thalody',0,'Kristy , Wathung',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3769,'Bishop`s Paderbone',1,'',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3770,'Mrs. Inge Fuhrmann,',0,'Eifeler Backstube,',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3771,'C/o Fr paul Horst,St Johannes Baptist',0,'Garrel ,Kirchstr-1',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3772,'Mrs Christa Kroneck,',0,'Auf der Schlicht 10,',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3773,'Frau Ella Schindler,',0,'Doktorsberg.5,',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3774,'C/o Fr Kalus Gobbel, Kath Kirchengemeinde,',0,'St. Nikolas',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3775,'Pickernahn, Fricdrich Ebert -38',0,'56637 . Plaidt',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3776,'C/o Fr.Mathew Kazhuthadiyil',0,'Istituto San Gevanni- Damascen',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3777,'MIVA, Vijverstraat,',0,'12,4818, ST',NULL,256,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3778,'Norbertine Fathers  ( FC )',1,'Mananthavady',NULL,248,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3779,'Norbertine Fathers (F.C Account )',1,'Mananthavady',NULL,248,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3780,'Mary Sebastian',0,'5 Thomas Weg',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3781,'Nancy Thottam ,',0,'92 Troxton Roada, Dix Hills,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3782,'Mr Sebastian njelian,',0,'160S Franklin Flds',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3783,'Don Giulio Vegerri',0,'Barbaiana de, Lainate,',NULL,251,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3784,'Don paulo Masperi',0,'Abbaitegrasso',NULL,251,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3785,'Katholic pafargemeinde,',0,'Herdringen',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3786,'Pfr.Ulrich MUller, Hammer Strasse- 61',0,'45772 Morl',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3787,'St.Johannas Church',1,'Neheim',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3788,'Mensen meteen mission , People on a Mission',1,'Seeretariat Programmea dept,',NULL,256,'','','','',0,'',0,NULL,'2500 BKDENHAAG, Holland',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3789,'Vinceention Sisters',1,'Fulda',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3790,'Mariamma Joseph Beena Koottiyanickal,',0,'26- Franklin St. ,',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3791,'The Society of the Propagation of the Faith',0,'1011 First Avenue,',NULL,251,'','','','',0,'',0,NULL,'Arch Bishop Of New York',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3792,'C/O Fr. James Puthenparambil, S.H Church,Texas',0,'Texas',NULL,255,'78368','','','',0,'',0,NULL,'S.h Church,217 Wsan Patricio Avenue Mathis, Texas',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3793,'C/O Fr. James Puthenparambil,S.H Church, Texas',0,'Texas',NULL,255,'78368','','','',0,'',0,NULL,'S.H Church, 217 W San Patricio Avenue, Mathis, Tex',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3794,'Frau Hildegrad Kohnle',0,'Lussweg - 1',NULL,252,'','','','',0,'',0,NULL,'Untermeiingen , Germany',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3795,'Raskob Foundation',1,'For Catholic Activitie',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3796,'Pfr Karl,LAUDENBACH',0,'',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3797,'Feu Edeltrud, Hagmann',0,'Ravensbug',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3798,'Don Giulio Vagezi, Milan',0,'',NULL,251,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3799,'Don Diuseppe, Megna',0,'',NULL,251,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3800,'Franz Josef Asmana , St. Antonius V Vitu',1,'Ostento - 7',NULL,252,'','','','',0,'',0,NULL,'Hedringen',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3801,'Mrs baabara Kilian, Kat. Pfaant',0,'St.Franziseus Mel',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3802,'Ezbium',0,'Koln',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3803,'Bichof Kinderman, Strase - 23',1,'Pocfach 1209',NULL,252,'','','','',0,'',0,NULL,'Konigstrin',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3804,'Katholisches Pfarramt',0,'Heilig-Geist, Kirchplatz-2',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3805,'Kirche in not Bisehof Kindermann',0,'Strasse-23 D -61462',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3806,'Die Katholisehe',0,'Kirechengemaide/ST.Cyrakus',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3807,'Rimoldi Anna',0,'Via Orealletto-07',NULL,251,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3808,'Fr Joseph Parayil',0,'1331 Middletown Ave',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3809,'Mr Wilson P George',0,'2086 Chambord Way',NULL,255,'30078-5617','','','',0,'',0,NULL,'Snellville',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3810,'Fr Jose Kandathikudy',0,'810E.221st  St',NULL,255,'10467-5104','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3811,'St Alphonsa Syro Malabar Catholic Church',1,'4561 Rosebud Rd',NULL,255,'30052','','','',0,'',0,NULL,'Loanvilla',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3812,'Sr Superior sisters of St Martha',0,'441 Church street',NULL,255,'06260','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3813,'Manimala Management',1,'LLC Chill Out,',NULL,255,'78539-6648','','','',0,'',0,NULL,'2508,Kings Drive',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3814,'Fr Vicar,St rancis Church',1,'Agua Dulac',NULL,255,'TX78330','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3815,'Fr Vicar, St Francis Church',0,'Agua Dulac',NULL,255,'TX 78330','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3816,'Sr Superior,Sisters of the Adoration Corp',1,'Birchwood Hight',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3817,'Sr Superior,Sisters of Charity of St VincentDepaul',1,'1225 Elon Place',NULL,255,'','','','',0,'',0,NULL,'St Vincents Convent',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3818,'President,Nerevo Camino Kath',0,'Pfrrgemeinde,Herdringen',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3819,'Fr Vicar,pfarrgemeinde St.Elisabeth Und',1,'Hubertus,Pastor Doppelfeld',NULL,252,'41466','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3820,'Fr Franz-Josef Assmaann,Kath',0,'Pfrrgemeinde,Herdringen',NULL,252,'59757','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3821,'Barabara Kilian KathPfarramt',0,'St Franziseus',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3822,'Missionszentrale Derfr',0,'Bonn',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3823,'Herr Karl Engelhart',0,'Laudenbach',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3824,'General Vikariat Erzlistam',0,'Koln',NULL,252,'50606','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3825,'Kath. Pfarramt',0,'Munderkingen',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3826,'Fr Edaltrauel Hagmann',0,'Grunkraut',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3827,'Fr James Karippukattil',0,'Rinderschereich',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3828,'Our Lady of Belen',0,'101-A,Tenth North Street',NULL,255,'87002','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3829,'Archdioces of Paderborn,Der Bischof sviker',1,'For die,Weltkireche',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3830,'Pfr.Ulrich Mueller Kath Kirchen Germein de',0,'St.Franziskus Mail',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3831,'Kath.Kirchengem Wulmering',0,'Oisberger-Sfr 51,59955',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3832,'Kath. Pfarrant Kirchenpliege',0,'Bodnegg',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3833,'Pfr.Gerhard Sehwan Kath Parrant',0,'Kopper St. 12',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3834,'Pfarers Paul Horst Kath. Kirchengemeinde',0,'St. Johnnes Baptist',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3835,'Frau Krista Hammer Im Kessel 1',0,'86551-Aichach',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3836,'The Bishops House Augesburg',0,'',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3837,'Kath Kirchen Gemeinde Bruchnausen',0,'Olsbug 59939',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3838,'Allerto Contini',0,'',NULL,251,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3839,'Famiglia Garofalo',0,'Via Roneallo 19',NULL,251,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3840,'Pfarral St. Anna',0,'Pfarrguro Herschbach Heinrich',NULL,252,'56249','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3841,'Anschrift pfraahaus',0,'Kirechsfr -1',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3842,'Sr Superiour,Medical Sisters of St Joseph',1,'Oklahoma- 6313 N',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3843,'Pincy Andrews',0,'2508 Kings Dr',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3844,'Sr Superiour, Congrigation of Mothe of Carm',1,'8120 S California Ave',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3845,'Manoj Michael',0,'616 Blue Bird Ave',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3846,'Philip Jojo',0,'3113 Whitewing Ave',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3847,'Bishop Jacob Angadiyathu, Diocese of Chicago',0,'372 - South Prairie Ave',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3848,'Mr Andrew P Thomas',0,'4301 -Westview Dr',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3849,'Mr Wilson Porunnedathu',0,'2086 Chembord Way',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3850,'Fr Augestine Naduvilakoot',0,'Po Box 256',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3851,'Mr Babu T Mathew',0,'509 Waterview D',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3852,'St Joseph Catholic Church',1,'512 W Wainman Ave',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3853,'Mr Mathew K Mathai',0,'939 S Alemo',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3854,'Holy Family Syro-Mal.Catholic Church',0,'P.O Box 267',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3855,'Abraham Augusthy Chairman Convention Committee',0,'St thomas Syro Mal.C.Conv.',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3856,'The Director,Aid to the Church in Need',0,'Postfach 1209, D - 61452',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3857,'Hildegard Kohnle',0,'Lussweg - 1, 86836',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3858,'Mrs. Edeltrud Hagmann',0,'Grunkrout',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3859,'Kath.Pfarramt Bodnegg',0,'',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3860,'Kath.Pfarramt Schelklingen',0,'',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3861,'R Kurian Manikuttiyil',0,'16498 SW Geskin',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3862,'Diocese of Augsburg',1,'',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3863,'St.Petri Pfarremeinde',1,'Ostentor',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3864,'Michael Dorr',0,'Enzianster 17 a',NULL,252,'','02131463848','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3865,'Fr Kuriakose Kumbakeel',0,'7501 NW Express Way',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3866,'Fr Augestin Puthenpura',0,'219 Adams Avenew',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3867,'St mariae Himnelfa',1,'Hrt Kleve',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3868,'Pfarri Sankt Anna',0,'Herschbach',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3869,'Prince Andrews',0,'2508 Kings Drive',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3870,'Manoj Michal',0,'616 Blue Bird Ave',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3871,'Fr Werner Bogotschef',0,'Gartenstrasse - 12',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3872,'St.Peter Kirche',1,'Bad Waldsee',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3873,'Fr Vakkachan Thattuparambil',0,'St.Joseph Parish,Indian Head',NULL,254,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3874,'Sisiters of the Adoation Corp',0,'95 Birchwood Hts Storrs',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3875,'Kath Pfarramt',0,'St Johannes',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3876,'Diocese of Regensburg Bisehofliche Administration',0,'Erhardgesse - 4',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3877,'Pfr. Josef Mchler',0,'Hohne 15',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3878,'Frau Hagmann',0,'Edaltraud',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3879,'Fr John Pulinthanath',0,'Santha Mariya Madre Delle Chri',NULL,251,'','','','',0,'',0,NULL,'Santha Maria 50,00132,Panthano,Rome',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3880,'Erzbistum Paderbon',1,'Domplatz 3',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3881,'Kath.pfarrkirchens tiftung',0,'Mornehshefstr-1A',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3882,'Kath.Kirchenpflege',0,'Klosterhof 1',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3883,'Mr Edmund gluesenkamp',0,'Zur Howe - 70',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3884,'Kireche in Not GGMBH',0,'',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3885,'Dorothea Janetschka',0,'Bachgasse-13',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3886,'Kath.Kirchengem St Thomas Baptist',0,'Garrel',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3887,'Olsberg',1,'Bruch hausen',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3888,'Erzbistum Marzellanstr 2',0,'50668 Koeln',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3889,'St Christophers Cathedral',1,'SS Frannkelin Street',NULL,249,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3890,'Loyola Foundation',1,'Democrecy Lane 10335',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3891,'Catholic Parish of St George',1,'Amberg,Bich Stuhi V Rgbg',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3892,'Fr Justin Oorekatt,',0,'Kaipadamugal,Kalamassery',NULL,248,'','','','',0,'',0,NULL,'Ordo Caninicrum Regularium Sanetae erucis ,Martha',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3893,'Fr Justin Oorekkatt,',0,'Kaipadamugal,Kalamassery',NULL,248,'683503','','','',0,'',0,NULL,'Odo Canonicorum Regularium Sanetae Crucis,',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3894,'Sisiters of Adoration Corp',1,'95 Bichwood Hts',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3895,'Fr Justin Oorekkatt',1,'Ordo Canonicorum Regulation',NULL,248,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3896,'Chacko Joseph & Anna Chacko',0,'9832 Clark ST',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3897,'St Thomas Syro MalabarCatholic Church Philadelphia',0,'608 Welsh Road',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3898,'Holy Family Syro Malabar Catolic Church Phoenix',0,'3221 N 24th st',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3899,'St Thomas The Apostle Catholic Church Garland',1,'4922 Rosehill Rd',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3900,'Our Lady of Helth Catholic Church - Coral Springs',1,'201 N Univercity Dr',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3901,'St Alphonsa Catholic Church Logenvilla',1,'4561 Rosebud Road',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3902,'St Thomas Catholic Chuch of Sanfrancisco',1,'200 N Abbott Ave',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3903,'St Thomas the Apostol Catholic Church Garland',1,'4922 Rosehill Rd',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3904,'Fr Justin Oorekkattu',1,'O.C. Regularium Senetal Crucis',NULL,248,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3905,'Kuriakose Abraham',0,'201N University Dr',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3906,'Casadei Ritiri',0,'Santa Regina Via-B-Piccolomini',NULL,251,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3907,'Syro Malabar Community',1,'Pallmall',NULL,255,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3908,'St Antonious U Vitus',1,'Cath Pfarramt,Ostenor Str 7',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3909,'C/O Fr Jose Thayyil Mathew',0,'St Augustine`s Presbitery',NULL,258,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3910,'Kath.Pfarramt St Peter Gut',1,'Betha - Platz 9',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3911,'Bisch.Administration Regensberg',1,'Bisch.Sth IV .Rgbg',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3912,'Pframpt Sant Anna',1,'Herschbach',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3913,'Kath.Kirchengem Heil.Geist',1,'Mozartstr 7 DE1',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3914,'Norbert Bentele',0,'Pfarrer Mozarstr 7',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3915,'Kath.Pfrramt St Jakobus',0,'Hopfengartenweg 10',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3916,'Katholiches Pfarramt St Nikolous',1,'Birresborn Koppe Strabe 12',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3917,'Katholische Kirchengmeinde St Mariae',0,'Himmelfahrt Kapitelstr -12',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3918,'Katholische Pfarramt St Martinus',1,'Kornwestheim',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3919,'Kath.K.G. St Peter Simarplatz',1,'Simarplatz 7',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3920,'Sacred Heart House',1,'119 Cedars Road',NULL,258,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3921,'Volker Hollender Nelkenstr',0,'21 Meerbusch',NULL,252,'','','','',0,'',0,NULL,'',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3922,'Fr.Philip Kollithanath',0,'Ashebord',NULL,255,'27203','','','',0,'',0,NULL,'St.Josephs Catholic Church, Ashebord',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3923,'Fr.Augustine Puthenpura',0,'Montgomary',NULL,255,'','','','',0,'',0,NULL,'219 Adams Avenue',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3924,'Kath. Kirchengemeinde St. Johannes Baptist - Garre',1,'Garrel',NULL,252,'','','','',0,'',0,NULL,'Kath. Kirchengemeinde St. Johannes Baptist - Garre',NULL,NULL,0,0,327,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `master_donaud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_donaud_ins_type`
--

DROP TABLE IF EXISTS `master_donaud_ins_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_donaud_ins_type` (
  `INSTITUTIONAL_TYPE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `INSTITUTIONAL_TYPE` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`INSTITUTIONAL_TYPE_ID`),
  UNIQUE KEY `UNQ_INSTITUTIONAL_TYPE` (`INSTITUTIONAL_TYPE`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_donaud_ins_type`
--

LOCK TABLES `master_donaud_ins_type` WRITE;
/*!40000 ALTER TABLE `master_donaud_ins_type` DISABLE KEYS */;
INSERT INTO `master_donaud_ins_type` VALUES (2,'College'),(4,'Corporate'),(3,'Non-Government Organization'),(6,'Parish'),(5,'Religious Community'),(1,'School');
/*!40000 ALTER TABLE `master_donaud_ins_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_donaud_pay_mode`
--

DROP TABLE IF EXISTS `master_donaud_pay_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_donaud_pay_mode` (
  `PAYMENT_MODE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PAYMENT_MODE` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`PAYMENT_MODE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_donaud_pay_mode`
--

LOCK TABLES `master_donaud_pay_mode` WRITE;
/*!40000 ALTER TABLE `master_donaud_pay_mode` DISABLE KEYS */;
INSERT INTO `master_donaud_pay_mode` VALUES (1,'Cash'),(2,'Cheque'),(3,'Demand Draft'),(4,'Direct Debit');
/*!40000 ALTER TABLE `master_donaud_pay_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_donaud_prospects`
--

DROP TABLE IF EXISTS `master_donaud_prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_donaud_prospects` (
  `PROSPECT_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(150) NOT NULL DEFAULT '',
  `TYPE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Institutional -1   Individual -2 ',
  `INSTITUTIONAL_TYPE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `COUNTRY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LANGUAGE` varchar(100) DEFAULT NULL,
  `RELIGION` varchar(100) DEFAULT NULL,
  `PLACE` varchar(30) NOT NULL DEFAULT '',
  `STATE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ADDRESS` varchar(300) NOT NULL DEFAULT '',
  `PINCODE` varchar(10) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `FAX` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `URL` varchar(50) DEFAULT NULL,
  `SOURCE_INFORMATION` varchar(150) DEFAULT NULL,
  `REGISTRATION_TYPE_ID` int(10) unsigned DEFAULT NULL,
  `REFERENCE_NUMBER` varchar(20) DEFAULT NULL,
  `NOTES` varchar(500) DEFAULT NULL,
  `PAN` varchar(20) DEFAULT NULL,
  `TITLE` varchar(20) DEFAULT NULL,
  `GENDER` int(10) unsigned DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `REFERRED_STAFF` varchar(50) DEFAULT NULL,
  `OCCUPATION` varchar(50) DEFAULT NULL,
  `PAYMENT_MODE_ID` int(10) unsigned DEFAULT NULL,
  `ORG_EMPLOYED` varchar(100) DEFAULT NULL,
  `MARITAL_STATUS` varchar(20) DEFAULT NULL,
  `ANNIVERSARY_DATE` datetime DEFAULT NULL,
  `LASTNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PROSPECT_ID`),
  UNIQUE KEY `Unique_Prospect_Name` (`NAME`,`LASTNAME`,`COUNTRY_ID`,`PLACE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_donaud_prospects`
--

LOCK TABLES `master_donaud_prospects` WRITE;
/*!40000 ALTER TABLE `master_donaud_prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_donaud_prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_donaud_reg_type`
--

DROP TABLE IF EXISTS `master_donaud_reg_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_donaud_reg_type` (
  `REGISTRATION_TYPE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `REGISTRATION_TYPE` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`REGISTRATION_TYPE_ID`),
  KEY `REGISTRATION_TYPE` (`REGISTRATION_TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_donaud_reg_type`
--

LOCK TABLES `master_donaud_reg_type` WRITE;
/*!40000 ALTER TABLE `master_donaud_reg_type` DISABLE KEYS */;
INSERT INTO `master_donaud_reg_type` VALUES (2,'Company'),(1,'ECS'),(3,'Educational Institution'),(5,'Foreign'),(4,'Religious Reference');
/*!40000 ALTER TABLE `master_donaud_reg_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_donor_letter_tags`
--

DROP TABLE IF EXISTS `master_donor_letter_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_donor_letter_tags` (
  `TAG_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `REF_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '0',
  `SENT_DATE` datetime DEFAULT NULL,
  `TYPE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0- Donor, 1- Prospects',
  `COMMUNICATION_MODE` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1- Mail, 1- SMS'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_donor_letter_tags`
--

LOCK TABLES `master_donor_letter_tags` WRITE;
/*!40000 ALTER TABLE `master_donor_letter_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_donor_letter_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_donor_letters`
--

DROP TABLE IF EXISTS `master_donor_letters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_donor_letters` (
  `LETTER_TYPE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LETTER_NAME` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`LETTER_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_donor_letters`
--

LOCK TABLES `master_donor_letters` WRITE;
/*!40000 ALTER TABLE `master_donor_letters` DISABLE KEYS */;
INSERT INTO `master_donor_letters` VALUES (1,'Thanksgiving'),(2,'Appeal'),(3,'NewsLetter'),(4,'Anniversary'),(5,'FeastDay');
/*!40000 ALTER TABLE `master_donor_letters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_donor_mailing_history`
--

DROP TABLE IF EXISTS `master_donor_mailing_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_donor_mailing_history` (
  `DONPROS_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LETTER_TYPE_ID` text,
  `SENT_DATE` datetime DEFAULT NULL,
  `TYPE` int(10) unsigned DEFAULT NULL COMMENT '1---Donor,2---Prospect',
  `COMMUNICATION_MODE` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_donor_mailing_history`
--

LOCK TABLES `master_donor_mailing_history` WRITE;
/*!40000 ALTER TABLE `master_donor_mailing_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_donor_mailing_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_donor_reference`
--

DROP TABLE IF EXISTS `master_donor_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_donor_reference` (
  `REFERED_STAFF_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `REFERED_STAFF_NAME` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`REFERED_STAFF_ID`),
  UNIQUE KEY `UNQ_REFERED_STAFF_NAME` (`REFERED_STAFF_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_donor_reference`
--

LOCK TABLES `master_donor_reference` WRITE;
/*!40000 ALTER TABLE `master_donor_reference` DISABLE KEYS */;
INSERT INTO `master_donor_reference` VALUES (1,'ss');
/*!40000 ALTER TABLE `master_donor_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_donor_tags`
--

DROP TABLE IF EXISTS `master_donor_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_donor_tags` (
  `TAG_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TAG_NAME` varchar(200) NOT NULL DEFAULT '',
  `TAG_CREATED_DATE` datetime DEFAULT NULL,
  `NEWS_LETTER` longblob,
  `LETTER_TYPE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TEMPLATE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`TAG_ID`),
  KEY `FK_master_LETTER_TYPE` (`LETTER_TYPE_ID`),
  KEY `UNQ_TAG_NAME` (`TAG_NAME`),
  CONSTRAINT `FK_master_LETTER_TYPE` FOREIGN KEY (`LETTER_TYPE_ID`) REFERENCES `master_donor_letters` (`LETTER_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_donor_tags`
--

LOCK TABLES `master_donor_tags` WRITE;
/*!40000 ALTER TABLE `master_donor_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_donor_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_donor_templates`
--

DROP TABLE IF EXISTS `master_donor_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_donor_templates` (
  `TEMPLATE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LETTER_TYPE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NAME` varchar(100) DEFAULT NULL,
  `CONTENT` blob,
  `COMMUNICATION_MODE` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`TEMPLATE_ID`),
  UNIQUE KEY `UNQ_NAME` (`NAME`,`COMMUNICATION_MODE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_donor_templates`
--

LOCK TABLES `master_donor_templates` WRITE;
/*!40000 ALTER TABLE `master_donor_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_donor_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_donor_title`
--

DROP TABLE IF EXISTS `master_donor_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_donor_title` (
  `TITLE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`TITLE_ID`),
  UNIQUE KEY `UNQ_TITLE` (`TITLE`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_donor_title`
--

LOCK TABLES `master_donor_title` WRITE;
/*!40000 ALTER TABLE `master_donor_title` DISABLE KEYS */;
INSERT INTO `master_donor_title` VALUES (8,'Br'),(4,'Dr'),(6,'Fr'),(1,'Mr'),(3,'Mrs'),(2,'Ms'),(5,'Prof'),(7,'Sr');
/*!40000 ALTER TABLE `master_donor_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_executive_committee`
--

DROP TABLE IF EXISTS `master_executive_committee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_executive_committee` (
  `EXECUTIVE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EXECUTIVE` varchar(50) NOT NULL DEFAULT '',
  `NAME` varchar(50) DEFAULT NULL,
  `DATE_OF_BIRTH` datetime DEFAULT NULL,
  `RELIGION` varchar(30) DEFAULT NULL,
  `ROLE` varchar(30) DEFAULT NULL,
  `NATIONALITY` varchar(25) NOT NULL DEFAULT '',
  `OCCUPATION` varchar(25) DEFAULT NULL,
  `ASSOCIATION` varchar(50) DEFAULT NULL,
  `OFFICE_BEARER` varchar(50) DEFAULT NULL,
  `PLACE` varchar(30) DEFAULT NULL,
  `STATE` varchar(30) DEFAULT NULL,
  `COUNTRY_ID` int(11) DEFAULT NULL,
  `ADDRESS` varchar(150) DEFAULT NULL,
  `PIN_CODE` varchar(10) DEFAULT NULL,
  `PAN_SSN` varchar(10) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `FAX` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `URL` varchar(30) DEFAULT NULL,
  `DATE_OF_APPOINTMENT` datetime DEFAULT NULL,
  `DATE_OF_EXIT` datetime DEFAULT NULL,
  `IMAGES` longblob,
  `NOTES` varchar(500) DEFAULT NULL,
  `CUSTOMERID` int(10) unsigned NOT NULL DEFAULT '0',
  `STATE_ID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`EXECUTIVE_ID`),
  KEY `FK_MASTER_COUNTRY` (`COUNTRY_ID`),
  CONSTRAINT `FK_MASTER_COUNTRY` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `master_country` (`COUNTRY_ID`),
  CONSTRAINT `FK_master_executive_committee_1` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `master_country` (`COUNTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_executive_committee`
--

LOCK TABLES `master_executive_committee` WRITE;
/*!40000 ALTER TABLE `master_executive_committee` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_executive_committee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_headoffice_ledger`
--

DROP TABLE IF EXISTS `master_headoffice_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_headoffice_ledger` (
  `HEADOFFICE_LEDGER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LEDGER_CODE` varchar(15) NOT NULL DEFAULT '',
  `LEDGER_NAME` varchar(100) NOT NULL DEFAULT '',
  `GROUP_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_TYPE` varchar(3) NOT NULL DEFAULT 'GN' COMMENT '''CA'',''BK'',''FD'',''GN'',''IK''',
  `LEDGER_SUB_TYPE` varchar(3) NOT NULL DEFAULT 'GN' COMMENT '''LQ'',GN LQ(CA,BK,FD)',
  `BANK_ACCOUNT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_COST_CENTER` int(1) unsigned NOT NULL DEFAULT '0',
  `NOTES` varchar(500) DEFAULT NULL,
  `IS_BANK_INTEREST_LEDGER` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-No,1-Yes',
  `SORT_ID` int(10) unsigned NOT NULL DEFAULT '255',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-Active,1-InActive',
  `ACCESS_FLAG` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`HEADOFFICE_LEDGER_ID`),
  KEY `FK_master_bank_account_id` (`BANK_ACCOUNT_ID`),
  KEY `FK_master_ledger_group_id` (`GROUP_ID`),
  KEY `UNQ_LEDGER` (`LEDGER_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_headoffice_ledger`
--

LOCK TABLES `master_headoffice_ledger` WRITE;
/*!40000 ALTER TABLE `master_headoffice_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_headoffice_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_inkind_article`
--

DROP TABLE IF EXISTS `master_inkind_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_inkind_article` (
  `ARTICLE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ABBREVATION` varchar(10) NOT NULL DEFAULT '',
  `ARTICLE` varchar(100) NOT NULL DEFAULT '',
  `OP_QUANTITY` float DEFAULT NULL,
  `OP_VALUE` float DEFAULT NULL,
  `NOTES` varchar(500) DEFAULT NULL,
  `RECORDSTATUS` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000' COMMENT '0 =ACTIVE AND 1 =INACTIVE ',
  PRIMARY KEY (`ARTICLE_ID`),
  UNIQUE KEY `UNQ_ABBREVATION` (`ABBREVATION`,`ARTICLE`) USING HASH,
  KEY `UNQ_ARTICLE` (`ARTICLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_inkind_article`
--

LOCK TABLES `master_inkind_article` WRITE;
/*!40000 ALTER TABLE `master_inkind_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_inkind_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_insti_perference`
--

DROP TABLE IF EXISTS `master_insti_perference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_insti_perference` (
  `CUSTOMERID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `INSTITUTENAME` varchar(150) DEFAULT NULL,
  `SOCIETYNAME` varchar(100) NOT NULL DEFAULT '0',
  `CONTACTPERSON` varchar(100) DEFAULT NULL,
  `ADDRESS` varchar(200) DEFAULT NULL,
  `PLACE` varchar(100) DEFAULT NULL,
  `STATE` varchar(100) DEFAULT NULL,
  `COUNTRY_ID` int(11) DEFAULT NULL,
  `PINCODE` varchar(20) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `FAX` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `URL` varchar(100) DEFAULT NULL,
  `REGNO` varchar(100) DEFAULT NULL,
  `REGDATE` datetime DEFAULT NULL,
  `PERMISSIONNO` varchar(50) DEFAULT NULL,
  `PERMISSIONDATE` datetime DEFAULT NULL,
  `A12NO` varchar(100) DEFAULT NULL,
  `PANNO` varchar(50) DEFAULT NULL,
  `GIRNO` varchar(50) DEFAULT NULL,
  `TANNO` varchar(50) DEFAULT NULL,
  `ASSOCIATIONNATURE` varchar(15) DEFAULT NULL COMMENT '0-Cultural,1-Ecomomic,2-Educational,3-Religious,4-Social',
  `DENOMINATION` int(11) DEFAULT NULL COMMENT '0-Hindu,1-Sikh,2-Muslim,3-Christian,4-Buddhist,5-Others',
  `OTHER_ASSOCIATION_NATURE` varchar(100) DEFAULT NULL,
  `OTHER_DENOMINATION` varchar(100) DEFAULT NULL,
  `FCRINO` varchar(30) DEFAULT NULL,
  `FCRIREGDATE` datetime DEFAULT NULL,
  `EIGHTYGNO` varchar(30) DEFAULT NULL,
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `STATE_ID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`CUSTOMERID`),
  KEY `FK_COUNTRY_ID` (`COUNTRY_ID`),
  CONSTRAINT `FK_COUNTRY_ID` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `master_country` (`COUNTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_insti_perference`
--

LOCK TABLES `master_insti_perference` WRITE;
/*!40000 ALTER TABLE `master_insti_perference` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_insti_perference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_ledger`
--

DROP TABLE IF EXISTS `master_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_ledger` (
  `LEDGER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LEDGER_CODE` varchar(15) DEFAULT NULL,
  `LEDGER_NAME` varchar(100) NOT NULL DEFAULT '',
  `GROUP_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_TYPE` varchar(3) NOT NULL DEFAULT 'GN' COMMENT '''CA'',''BK'',''FD'',''GN'',''IK''',
  `LEDGER_SUB_TYPE` varchar(3) NOT NULL DEFAULT 'GN' COMMENT '''LQ'',GN LQ(CA,BK,FD)',
  `BANK_ACCOUNT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_COST_CENTER` int(1) unsigned NOT NULL DEFAULT '0',
  `IS_TDS_LEDGER` int(10) unsigned NOT NULL DEFAULT '0',
  `NOTES` varchar(500) DEFAULT NULL,
  `IS_BANK_INTEREST_LEDGER` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-No,1-Yes',
  `SORT_ID` int(10) unsigned NOT NULL DEFAULT '255',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-Active,1-InActive',
  `ACCESS_FLAG` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_BRANCH_LEDGER` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_INKIND_LEDGER` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_DEPRECIATION_LEDGER` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_ASSET_GAIN_LEDGER` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_ASSET_LOSS_LEDGER` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_DISPOSAL_LEDGER` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`LEDGER_ID`),
  UNIQUE KEY `LEDGER_NAME` (`LEDGER_NAME`) USING HASH,
  KEY `FK_master_bank_account_id` (`BANK_ACCOUNT_ID`),
  KEY `UNQ_LEDGER` (`LEDGER_NAME`) USING BTREE,
  KEY `FK_master_ledger_group_id` (`GROUP_ID`),
  CONSTRAINT `FK_master_ledger_group_id` FOREIGN KEY (`GROUP_ID`) REFERENCES `master_ledger_group` (`GROUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5137 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_ledger`
--

LOCK TABLES `master_ledger` WRITE;
/*!40000 ALTER TABLE `master_ledger` DISABLE KEYS */;
INSERT INTO `master_ledger` VALUES (1,'CS911','Cash',13,'GN','GN',0,0,0,'',0,1,0,2,0,0,0,0,0,0),(2,'FD912','Fixed Deposit',14,'GN','FD',0,0,0,'',0,2,0,2,0,0,0,0,0,0),(3,'CF913','Capital Fund',21,'GN','GN',0,0,0,'',0,3,0,2,0,0,0,0,0,0),(4796,'ZZZ','Depreciation',9,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4797,'RB01','Bank Interest - FD a/c',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4798,'RD01','Contribution from own  Institutions',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4799,'RI02','Income from Institutions',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4800,'RP01','Collections - Priest Welfare fund ( Peseha )',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4801,'RC11','Collections - Peter`s Pence',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4802,'RC09','Collections - Justice Sunday',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4803,'RC04','Collections - Bible Sunday',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4804,'RC10','Collections - Mission Sunday',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4805,'RC06','Collections - Communication Media Day',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4806,'RC13','Collections - Syro - Malabar Day',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4807,'RC14','Collections - Syro - Malabar Mission Sunday',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4808,'RC08','Collections - Holy Childhood',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4809,'RC03','Collections - Anti Alcoholic Day',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4810,'RC07','Collections - Education Aid Fund',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4811,'RB03','Bulletin Subscription Received',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4812,'RI01','Income from Estates',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4813,'RT01','Travel Allowance',6,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4814,'LM01','Marriage Tribunel',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4815,'ES05','Subsidy / Contribution to Missions',222,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4816,'ED02','Donation Given / Transfered',223,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4817,'EP03','Priests Allowance',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4818,'EE01','Educational aid to Parishes/Schools',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4819,'EP02','Priest Welfare Expense',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4820,'ER07','Retreat & Seminar Expense for Priests',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4821,'EM01','Major Seminarians Expenses',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4822,'LP11','Mass Wine',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4823,'ES01','Seminars & Training',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4824,'EA02','Alms & Charity',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4825,'LP13','Vehicle',11,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4826,'EE07','Expense to Estates',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4827,'LM06','Mess',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4828,'EE03','Employee Salary & Allowances',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4829,'EL01','Labour Welfare',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4830,'ES03','Subscriptions & Periodicals',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4831,'EP01','Postage Expenses',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4832,'EE02','Electricity Charges',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4833,'EP04','Printing Expenses',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4834,'ET02','Travel Expense',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4835,'ER06','Repair & Maintenance',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4836,'EH01','House Maintenance',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4837,'ED01','Domestic Expenses',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4838,'LP09','Books',11,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4839,'EL02','Liturgical Expenses',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4840,'LA03','Animal Husbandry',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4841,'LP07','Computer Software / Hardware',11,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4842,'EV01','Vehicle Maintenance & Fuel',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4843,'ED03','Duty & Taxes Paid',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4844,'LP10','Furniture & Fixtures',11,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4845,'EB01','Bank Charges',9,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4846,'EM07','Miscellaneous',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4847,'EC03','Construction of Honnamanakatte School',18,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4848,'LR03','Priest Provident Fund',213,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4849,'EV02','Vocation Bureau',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4850,'EA01','Advertisement/Broadcast, etc.',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4851,'EI01','Interest on Loan',9,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4852,'RM05','Mutual Aid Fund Collection',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4853,'RB02','Bank Interest - SB a/c',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4854,'RC02','Security on Rental Buildings',11,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4855,'OD05','Loan CSB A/c No 20070003',28,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4856,'LL02','Loan & Advance - Individual',27,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4857,'LL03','Loan & Advance - Institutions',27,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4858,'LM03','Mass Stipend',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4859,'RP02','Priests` Salary',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4860,'RR01','Receipt on Rental Buildings',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4861,'RS06','Service Charge for Projects',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4862,'EC01','Celeberation & Ceremonies Exp.',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4863,'EE04','Exp. of Syncellus - Education Ministry',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4864,'EE05','Exp. of Syncellus - Manimooly Region',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4865,'EE06','Exp. of Syncellus - Social & Charitable Ministry',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4866,'LM04','Mass Intention',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4867,'EM05','Medical Expense',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4868,'EP05','Professional fees Paid',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4869,'LP06','Purchase & Improvement of Land',11,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4870,'LP08','Animals',11,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4871,'ER04','Relief of Natuaral Disasters',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4872,'ES02','Stationary Expenses',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4873,'ES04','Subsidy / Contribution to Institutions',222,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4874,'ES06','Subsidy / Contribution to Parishes',222,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4875,'ET01','Telephone Bills Paid',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4876,'EW01','Wages & Coolie',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4877,'A002','Corporate Management of Schools',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4878,'A005','Kerala Catholic Youth Movement',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4879,'A006','Society of St. Vincent De Paul',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4880,'A008','Family Apostolate',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4881,'A009','Renewal Ministry',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4882,'A010','Navachaithanya',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4883,'A012','Indian Farmers Movement',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4884,'A013','Liturgical Commission',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4885,'A014','Labour commission',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4886,'A015','Holy childhood  & Bible Apostolate',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4887,'A016','PRO',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4888,'A017','Madyavirudha Samithi',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4889,'C001','Construction of Nirmala Shoping Complex, Dwaraka',18,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4890,'E001','Jordania, Gandibagilu',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4891,'E002','Seminary Villa Estate, Nedumpoil',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4892,'E005','Greenpeak Estate, Kalpetta',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4893,'E006','Santigiri Estate, Santhigiri',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4894,'E007','Mary Matha, Estate Ondayangadi',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4895,'I001','Pastoral Centre, Dwaraka',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4896,'I002','Regional Pastoral Centre, Manimooly',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4897,'I004','St. Joseph`s Hospital, Mananthavady',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4898,'I005','Mary Matha Arts & Science College, Mananthavady',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4899,'I006','Newman`s College, Mananthavady',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4900,'I007','De-Paul Public School',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4901,'I008','Sacred Heart Matriculation School, Kayyunni',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4902,'I010','Boy`s Town, Varayal',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4903,'I011','Shanthinilayam, Kunjhome',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4904,'I013','Legal Aid Centre, Mananthavady',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4905,'I014','Samaritan Bhavan, Mananthavady',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4906,'I016','St. Joseph`s Book Stall, Mananthavady',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4907,'I017','Mount Mary College, Mananthavady',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4908,'I018','Jyothi Vikas Centre, Honnamanakatte',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4909,'I019','Legal Aid Centre, Manimooly',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4910,'I020','Ep. Tribunal',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4911,'M001','Hassan',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4912,'M002','Mandya Mission',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4913,'M003','Mysore',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4914,'M005','Shimoga',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4915,'M006','Jeevadaru, Hand Post',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4916,'P026','Dharmagiri',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4917,'P027','Dwaraka',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4918,'P028','Edappetty',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4919,'P029','Edayoorkunnu',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4920,'P030','Edivanna',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4921,'P035','Kadalmad',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4922,'P036','Kallody',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4923,'P037','Kallumukku',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4924,'P038','Kalluvayal',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4925,'P039','Kalpetta',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4926,'P040','Kalpra',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4927,'P043','Karachamala',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4928,'P044','Karani',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4929,'P047','Kartikulam',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4930,'P048','Kavummannam',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4931,'P049','Kayyunny',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4932,'P050','Kelakam',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4933,'P051','Kenichira',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4934,'P052','Kolavayal',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4935,'P053','Kommayad',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4936,'P064','Mananthavady Cathedral',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4937,'P065','Mananthavady Town',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4938,'P066','Mangalam',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4939,'P067','Mangalassery',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4940,'P074','Meenangadi',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4941,'P077','Mullenkolly',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4942,'P078','Munderi',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4943,'P079','Nadavayal',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4944,'P081','Nedumpala',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4945,'P082','Neikuppa',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4946,'P083','Nelliyodi',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4947,'P084','Nilambur',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4948,'P085','Niravilpuzha',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4949,'P087','Olivumala',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4950,'P088','Ottaplavu',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4951,'P089','Ozhukkanmoola',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4952,'P090','Padamala',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4953,'P091','Padichira',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4954,'P092','Palankara',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4955,'P093','Palchuram',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4956,'P094','Palemad',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4957,'P096','Panavally',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4958,'P097','Paralikunnu',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4959,'P098','Parathottam',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4960,'P099','Pathiripadam',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4961,'P100','Pattanikoopp',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4962,'P101','Payyampally',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4963,'P102','Pazhoor',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4964,'P103','Peria',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4965,'P104','Pookkottumpadam',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4966,'P108','Puthiyidom',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4967,'P109','Puthiyidamkunnu',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4968,'P110','Puthusserikkadavu',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4969,'P112','Rippon',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4970,'P113','Rubynagar',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4971,'P114','Santhigiri',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4972,'P115','Seethamount',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4973,'P116','Sisumala',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4974,'P139','Jude`s Mount',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4975,'S007','Kurumbalakotta',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4976,'S009','Muttiyel',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4977,'S010','Muthireri',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4978,'S011','Ooty',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4979,'S012','Prasanthigiri',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4980,'S013','Pushpanagiri Panamaram',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4981,'S014','Puzhamudi',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4982,'Z001','Family Year 2006 - 2007',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4983,'Z002','Library - Bishop`s House',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4984,'Z003','Sundaram Finance Ltd',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4985,'RD03','Donation received and disbursed for Orphanages',223,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4986,'RD04','Donation  for other institutions',223,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4987,'RD05','Donation for Parishes',223,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4988,'RD06','Donation for own instituion and programmes',223,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4989,'RD07','Donation for Individuals and seminarians',218,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4990,'RD08','Mass obligation received and fullfilled',219,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4991,'RD09','Gift and presentations',220,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4992,'RD10','Donation for other  FCRA Regd. institutions',223,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4993,'C002','Construction of  Vianny Bhavan - Project Fund',220,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4994,'EL03','Laundry expenses',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4995,'RP03','Printing Income',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4996,'RC16','Collections - Seminary Formation Fund',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4997,'EA03','Allowance to Sisters',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4998,'Is01','Income from sale of old equipments',23,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(4999,'Es1','Subscription and contribution to Associations',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5000,'Ead1','Advance for sale /purchase of land',27,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5001,'EP06','Priest Study',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5002,'L01','Loan for vehicle purchase',27,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5003,'EE08','Employers  Assurane',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5004,'LT01','TDS Collected and remitted',23,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5005,'Esl01','Contribution to/from Bishops House',23,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5006,'Esl02','Fertilizers and pesticides',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5007,'Esl03','Sale of Rubber',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5008,'Esl04','Sale of Arecunut',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5009,'Esl05','Sale of Cocunut',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5010,'Esl06','Sale of Tea leaves',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5011,'Esl07','Sale of Firewood',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5012,'Esl08','Travel and transporting',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5013,'Esl09','Salary and allowances',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5014,'Esl10','Printing and stationery',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5015,'Esl11','Labour charges',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5016,'Esl12','Electricity and fuel',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5017,'Esl13','Food expenses',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5018,'Esl14','Licence and taxes',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5019,'Esl15','Sale of Coffee',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5020,'Esl16','Land improvement',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5021,'Esl17','Plantain and seedlings',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5022,'Esl18','Postage and telephone',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5023,'EC05','Curia Ernakulam',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5024,'ER08','Recreation',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5025,'RB04','Mess Fees',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5026,'OD02','Federal Bank (Mtdy) Loan No.IPS 41. (412 )',28,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5027,'OD03','Federal Bank (Mtdy) Loan No. IPS 81.',28,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5028,'OD04','Federal Bank,Kalpetta  Loan no.415',28,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5029,'EC10','Construction of Vianny Bhavan - General Fund',18,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5030,'Ex01','Purchase of Seedlings',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5031,'Ex2','Tools and equpiments',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5032,'RN02','Nirmala Shoping Complex Dwaraka',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5033,'EP07','Priest Medical Expense',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5034,'Ad01','Advance for Electrical Works',15,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5035,'FL01','Federal Bank Loan No.FCDL 1',28,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5036,'RC17','Collection - Jesus Fraternity',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5037,'EC06','Contribution to Association',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5038,'EE09','Exp.of Dept. of Public Relations',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5039,'EC11','Constructiion of Sanjos Shoping Complex',18,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5040,'RC18','Collection -  Malabar Vision',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5041,'Z004','Collection - Vachanavarsham - ( Bible Year ) 2008',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5042,'RC19','Collections - Good Friday',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5043,'OD06','Loan CSB A/c No 20070005',28,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5044,'RS07','Sale of Land',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5045,'RN03','Sanjo`s Shoping Complex Mtdy',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5046,'ES07','Stationary for Workers',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5047,'RC22','Collections - Orrissa Fund',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5048,'01','Cash opening',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5049,'LP14','Computer And Printer Repaire Work',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5050,'EC17','Repaire work /Construction - De Paul Building Comp',11,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5051,'C003','Construction De Paul Shopping Complex Kalpetta',18,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5052,'RC20','Collection - Vachananidhi',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5053,'RC21','Collection - Yesu Maholsavu',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5054,'OD07','Loan Syndicate Bank Mtdy - 42161260000504',28,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5055,'RC23','Collection - Relief Fund Chithragiri',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5056,'L12','Loan  NGM  A/C . NO. 2009000049',31,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5057,'RC15','Collection - Retired Priest Wealfare Fund',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5058,'00011','Electricals',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5059,'0001','Diocesan day',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5060,'S 001','Seminary Study',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5061,'02','Cash from CSB A/C-100/76',12,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5062,'C004','Construction Trinity Shopping Complex Mananthavady',18,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5063,'Ef05','Funaral Expenses',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5064,'OD08','Loan SIB- Kalpetta - 0536656000000021',28,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5065,'RA 01','Agriculure Subsidy  from Government',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5066,'RS08','Subsidy from Govt. Agriculture Board',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5067,'Asso02','Media Comession',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5068,'RC26','Collection-Mission Year',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5069,'C005','Construction of Olive Arcade',18,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5070,'RN04','Olive Arcade Mananthavady',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5071,'RD15','Corpus Donation to Diocese',223,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5072,'RD16','Donation Received',223,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5073,'Ad05','Capital Gain On Sale of Land at Bangalore',21,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5074,'Ad06','Advancement for Sale of Land at Jordaniya',21,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5075,'Ad07','Capital Gain on Sale of Land at Kalpetta',21,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5076,'1114','Building for Branch Houses - Flat at Bangalore',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5077,'1115','Corpus Contribution to Santhome Study House',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5078,'1116','Corpus Contribution to Pastoral Center Dwaraka',212,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5079,'1121','Corpus Contribution to Viyanny Bhavan',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5080,'1123','Corpus Contribution to CML',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5081,'1124','Corpus Contribution to KCYM',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5082,'EC02','Major Arch Bishop`s Visit to Diocese',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5083,'EA14','Allowance to Brothers',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5084,'LA04','Fishery',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5085,'C006','Construction of Vazakala Project Ekm',18,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5086,'C007','Construction Angamalli Project',18,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5087,'C008','Construction of Palm Grove Arcade',18,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5088,'C009','Constuction of Panamaram Complex 02',18,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5089,'ED04','Service Tax Paid (Central Govt.)',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5090,'LA05','Paultry',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5091,'1125','Corpus Contribution to Kristhudasi (SKD)',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5092,'1126','Copus Contribution to Carmelgiri Eng. School',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5093,'1127','Corpus Contribution to Navajyothy SS Socity',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5094,'1128','Corpus Contribution to Navajyothy Old Age Home',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5095,'EC04','Bible Convention',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5096,'I021','Eparchial Commissions',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5097,'OD 09','Loan SIB Kalpetta 053608300000015',28,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5098,'LE 01','Loss of Investments',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5099,'EA15','CD & Book Publishing',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5100,'IM01','Internet Mission',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5101,'RK01','Collection - Kashmir Aid Fund',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5102,'RM01','Collection - Middle East Christian Aid Fund',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5103,'CO01','Construction - Thrikkaipetta',8,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5104,'RC24','Collection: Nepal Aid Fund',5,'GN','GN',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5105,'LB01BK','6/74-LB01',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5106,'LB02BK','1-LB02',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5107,'LB03BK','54/89-LB03',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5108,'LB05BK','1688-LB05',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5109,'LB06BK','5387-LB06',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5110,'LB07BK','4342-LB07',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5111,'LB08BK','17712-LB08',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5112,'LB09BK','12470-LB09',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5113,'LB10BK','10589177235 (C&I - 95)-LB10',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5114,'LB11BK','57066988309 - (67109)-LB11',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5115,'LB12BK','19334 ( 4612/220/32442)-LB12',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5116,'LB13BK','14257 ( 42162200005097)-LB13',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5117,'LB14BK','603-LB14',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5118,'LB04BK','796-LB04',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5119,'F01BK','100/76-F01',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5120,'LB15BK','9810-LB15',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5121,'LB20BK','2453-LB20',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5122,'AC01BK','623622022222-AC01',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5123,'AC1BK','10710100172727-AC1',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5124,'LSB03BK','20050156-LSB03',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5125,'SB 01BK','22527-SB 01',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5126,'SB01BK','0536053000000132-SB01',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5127,'SB02BK','0536053000000001-SB02',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5128,'SB03BK','47512200000011-SB03',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5129,'LB1BK','2081-LB1',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5130,'SB1BK','0605053000000001-SB1',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5131,'OD18BK','10690101259619-OD18',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5132,'0BKBK','04735-0BK',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5133,'FDL51BK','001-FDL51',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5134,'FDL65BK','32974-FDL65',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5135,'FDL70BK','114796-FDL70',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0),(5136,'LB21BK','2879000100051647-LB21',12,'GN','BK',0,0,0,NULL,0,255,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `master_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_ledger_group`
--

DROP TABLE IF EXISTS `master_ledger_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_ledger_group` (
  `GROUP_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `GROUP_CODE` varchar(10) DEFAULT NULL,
  `LEDGER_GROUP` varchar(100) NOT NULL DEFAULT '',
  `PARENT_GROUP_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NATURE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MAIN_GROUP_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `IMAGE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ACCESS_FLAG` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-Access,1-Editable,2-Readonly',
  `SORT_ORDER` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`GROUP_ID`),
  UNIQUE KEY `UNQ_GRP` (`LEDGER_GROUP`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_ledger_group`
--

LOCK TABLES `master_ledger_group` WRITE;
/*!40000 ALTER TABLE `master_ledger_group` DISABLE KEYS */;
INSERT INTO `master_ledger_group` VALUES (1,'01','Incomes',1,1,1,0,2,0),(2,'02','Expenses',2,2,2,0,2,0),(3,'03','Assets',3,3,3,0,2,0),(4,'04','Liabilities',4,4,4,0,2,0),(5,'05','Direct Incomes',1,1,1,0,0,0),(6,'06','Indirect Incomes',1,1,1,0,0,0),(7,'07','Sales Accounts',1,1,1,0,0,0),(8,'08','Direct Expenses',2,2,2,0,0,0),(9,'09','Indirect Expenses',2,2,2,0,0,0),(10,'10','Purchase Accounts',2,2,2,0,0,0),(11,'18','Current Assets',3,3,3,0,2,0),(12,'101','Bank Accounts',11,3,11,0,2,0),(13,'100','Cash-in-hand',11,3,11,0,2,0),(14,'102','Fixed Deposits',11,3,11,0,2,0),(15,'16','Loans and Advances (Asset)',11,3,11,0,0,0),(16,'14','Stock-in-hand',11,3,11,0,0,0),(17,'15','Sundry Debtors',11,3,11,0,0,0),(18,'11','Fixed Assets',3,3,3,0,0,0),(19,'12','Investments',3,3,3,0,0,0),(20,'13','Misc. Expenses (Asset)',3,3,3,0,0,0),(21,'21','Capital Fund',4,4,4,0,2,0),(22,'22','Reserves and Surplus (Fixed Assets)',4,4,4,0,0,0),(23,'27','Current Liabilities',4,4,4,0,0,0),(24,'24','Duties & Taxes',23,4,23,0,0,0),(25,'25','Provisions',23,4,23,0,0,0),(26,'26','Sundry Creditors',23,4,23,0,0,0),(27,'23','Loans and Advances (Liability)',4,4,4,0,0,0),(28,'28','Bank OD A/c',27,4,27,0,0,0),(29,'29','Secured Loans',27,4,27,0,0,0),(30,'30','Unsecured Loans',27,4,27,0,0,0),(31,'31','Suspense A/c',4,4,4,0,0,0),(208,'01','Income',1,1,1,0,0,0),(209,'24','Duties and Taxes',23,4,23,0,0,0),(210,'DON','Donation Received',5,1,5,0,0,0),(211,'DO','Donation Received1',1,1,37,0,0,0),(212,'32','Institutions',17,3,11,0,0,0),(213,'33','Individuals',17,3,11,0,0,0),(214,'100','Donation for welfare of Orphans',4,4,40,0,0,0),(215,'101','Donation for other institutions',4,4,41,0,0,0),(216,'102','Donation for parishes',4,4,42,0,0,0),(217,'103','Donation for own institution and programmes',4,4,43,0,0,0),(218,'104','Donation for individuals and seminarians',4,4,44,0,0,0),(219,'105','Donation for Religious Functions',4,4,45,0,0,0),(220,'106','Donation for General purposes',1,1,46,0,0,0),(221,'107','Donation for other FCRA Regd institutions',4,4,47,0,0,0),(222,'SUB','SUBSIDY',8,2,8,0,0,0),(223,'DN','DONATION',8,2,8,0,0,0);
/*!40000 ALTER TABLE `master_ledger_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_lock_trans`
--

DROP TABLE IF EXISTS `master_lock_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_lock_trans` (
  `LOCK_TRANS_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LOCK_TYPE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DATE_FROM` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DATE_TO` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PASSWORD` varchar(500) NOT NULL DEFAULT '',
  `REASON` varchar(500) NOT NULL DEFAULT '',
  `PASSWORD_HINT` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`LOCK_TRANS_ID`),
  KEY `PK_Master_Lock_Trans` (`LOCK_TYPE_ID`),
  CONSTRAINT `PK_Master_Lock_Trans` FOREIGN KEY (`LOCK_TYPE_ID`) REFERENCES `master_lock_type` (`LOCK_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_lock_trans`
--

LOCK TABLES `master_lock_trans` WRITE;
/*!40000 ALTER TABLE `master_lock_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_lock_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_lock_type`
--

DROP TABLE IF EXISTS `master_lock_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_lock_type` (
  `LOCK_TYPE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LOCK_TYPE` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`LOCK_TYPE_ID`),
  UNIQUE KEY `uqi_lock_type` (`LOCK_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_lock_type`
--

LOCK TABLES `master_lock_type` WRITE;
/*!40000 ALTER TABLE `master_lock_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_lock_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_nature`
--

DROP TABLE IF EXISTS `master_nature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_nature` (
  `NATURE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NATURE` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`NATURE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_nature`
--

LOCK TABLES `master_nature` WRITE;
/*!40000 ALTER TABLE `master_nature` DISABLE KEYS */;
INSERT INTO `master_nature` VALUES (1,'Incomes'),(2,'Expenses'),(3,'Assets'),(4,'Liabilities');
/*!40000 ALTER TABLE `master_nature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_project`
--

DROP TABLE IF EXISTS `master_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_project` (
  `PROJECT_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PROJECT_CODE` varchar(15) DEFAULT NULL,
  `PROJECT` varchar(100) NOT NULL DEFAULT '',
  `DIVISION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ACCOUNT_DATE` datetime DEFAULT NULL,
  `DATE_STARTED` datetime DEFAULT NULL,
  `DATE_CLOSED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `NOTES` varchar(500) DEFAULT NULL,
  `PROJECT_CATEGORY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DELETE_FLAG` int(10) unsigned NOT NULL DEFAULT '0',
  `CUSTOMERID` int(10) unsigned NOT NULL DEFAULT '0',
  `CONTRIBUTION_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FC6 Purpose Id',
  PRIMARY KEY (`PROJECT_ID`),
  UNIQUE KEY `unq_project` (`PROJECT`) USING HASH,
  KEY `FK_master_project_Category_ID` (`PROJECT_CATEGORY_ID`),
  CONSTRAINT `FK_Pro_cate_Id` FOREIGN KEY (`PROJECT_CATEGORY_ID`) REFERENCES `master_project_catogory` (`PROJECT_CATOGORY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_project`
--

LOCK TABLES `master_project` WRITE;
/*!40000 ALTER TABLE `master_project` DISABLE KEYS */;
INSERT INTO `master_project` VALUES (67,'0004','Vianney Bhavan Estate  - Dwaraka',1,'2006-04-01 00:00:00','2006-04-01 00:00:00',NULL,'',NULL,12,0,0,0),(68,'0003','Diocesian Collection Register',1,'2006-04-01 00:00:00','2008-04-01 00:00:00',NULL,'',NULL,12,0,0,0),(69,'E005','Greenpeak Estate, Kalpetta',1,'2006-04-01 00:00:00','2006-04-01 00:00:00',NULL,'',NULL,12,0,0,0),(70,'0002','Local',1,'2006-04-01 00:00:00','2006-04-01 00:00:00',NULL,'Bishop`s House',NULL,12,0,0,0),(71,'02','Test Foreign',2,'2006-04-01 00:00:00','2006-04-01 00:00:00',NULL,'',NULL,12,0,0,0),(72,'0001','Foreign',2,'2006-04-01 00:00:00','2006-04-01 00:00:00',NULL,'Bishop`s House',NULL,12,0,0,0);
/*!40000 ALTER TABLE `master_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_project_catogory`
--

DROP TABLE IF EXISTS `master_project_catogory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_project_catogory` (
  `PROJECT_CATOGORY_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PROJECT_CATOGORY_NAME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PROJECT_CATOGORY_ID`),
  UNIQUE KEY `UNQ_PROJECT_CATOGORY_NAME` (`PROJECT_CATOGORY_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_project_catogory`
--

LOCK TABLES `master_project_catogory` WRITE;
/*!40000 ALTER TABLE `master_project_catogory` DISABLE KEYS */;
INSERT INTO `master_project_catogory` VALUES (12,'Primary');
/*!40000 ALTER TABLE `master_project_catogory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_rights`
--

DROP TABLE IF EXISTS `master_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_rights` (
  `MASTER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MASTER_NAME` varchar(150) NOT NULL DEFAULT '',
  `ALLOW_ACCESS` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0- Read only,1 Full Access',
  PRIMARY KEY (`MASTER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_rights`
--

LOCK TABLES `master_rights` WRITE;
/*!40000 ALTER TABLE `master_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_setting`
--

DROP TABLE IF EXISTS `master_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_setting` (
  `SETTING_NAME` varchar(100) NOT NULL DEFAULT '',
  `VALUE` varchar(50) NOT NULL DEFAULT '',
  `USER_ID` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`USER_ID`,`SETTING_NAME`),
  KEY `SETTING_NAME` (`SETTING_NAME`) USING BTREE,
  CONSTRAINT `USER` FOREIGN KEY (`USER_ID`) REFERENCES `user_info` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_setting`
--

LOCK TABLES `master_setting` WRITE;
/*!40000 ALTER TABLE `master_setting` DISABLE KEYS */;
INSERT INTO `master_setting` VALUES ('Country','1',1),('Currency','Ã Â¤Â°',1),('CurrencyCode','',1),('CurrencyCodePosition','',1),('CurrencyNegativePattern','14',1),('CurrencyNegativeSign','( )',1),('CurrencyPosition','Before',1),('CurrencyPositivePattern','2',1),('DecimalPlaces','2',1),('DecimalSeparator','.',1),('DigitGrouping','3,2,2',1),('GroupingSeparator',',',1),('HighNaturedAmt','500',1),('Location','Primary',1),('TransEntryMethod','',1),('UIDateFormat','dd/MM/yyyy',1),('UIDateSeparator','/',1),('UIFilterMode','Starts',1),('UILanguage','en-US',1),('UIProjSelection','1',1),('UIThemes','Office 2010 Silver',1),('UITransClose','1',1),('UITransType','Codeless',1);
/*!40000 ALTER TABLE `master_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_state`
--

DROP TABLE IF EXISTS `master_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_state` (
  `STATE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `STATE_NAME` varchar(100) NOT NULL DEFAULT '',
  `COUNTRY_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`STATE_ID`),
  UNIQUE KEY `UNQ_STATE_NAME` (`STATE_NAME`),
  KEY `FK_master_state_Country` (`COUNTRY_ID`),
  CONSTRAINT `FK_master_state_Country` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `master_country` (`COUNTRY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_state`
--

LOCK TABLES `master_state` WRITE;
/*!40000 ALTER TABLE `master_state` DISABLE KEYS */;
INSERT INTO `master_state` VALUES (327,'Tamil Nadu',NULL);
/*!40000 ALTER TABLE `master_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_voucher`
--

DROP TABLE IF EXISTS `master_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_voucher` (
  `VOUCHER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `VOUCHER_NAME` varchar(45) NOT NULL DEFAULT '',
  `VOUCHER_TYPE` int(10) unsigned NOT NULL DEFAULT '0',
  `VOUCHER_METHOD` int(10) unsigned NOT NULL DEFAULT '0',
  `PREFIX_CHAR` varchar(10) NOT NULL DEFAULT '',
  `SUFFIX_CHAR` varchar(10) NOT NULL DEFAULT '',
  `STARTING_NUMBER` int(10) unsigned NOT NULL DEFAULT '0',
  `NUMBERICAL_WITH` int(10) unsigned NOT NULL DEFAULT '0',
  `PREFIX_WITH_ZERO` int(10) unsigned NOT NULL DEFAULT '0',
  `MONTH` varchar(25) NOT NULL DEFAULT '',
  `DURATION` int(10) unsigned NOT NULL DEFAULT '0',
  `ALLOW_DUPLICATE` int(10) unsigned NOT NULL DEFAULT '0',
  `NOTE` varchar(500) DEFAULT NULL,
  `IS_NARRATION_ENABLED` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`VOUCHER_ID`),
  UNIQUE KEY `VOUCHER_NAME` (`VOUCHER_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_voucher`
--

LOCK TABLES `master_voucher` WRITE;
/*!40000 ALTER TABLE `master_voucher` DISABLE KEYS */;
INSERT INTO `master_voucher` VALUES (1,'Receipts',1,1,'','',1,2,0,'January',1,0,'',0),(2,'Payments',2,1,'','',1,2,0,'January',1,0,'',0),(3,'Contra',3,1,'','',1,2,0,'January',1,0,'',0),(4,'Journal',4,1,'','',1,2,0,'January',1,0,'',0);
/*!40000 ALTER TABLE `master_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll`
--

DROP TABLE IF EXISTS `payroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payroll` (
  `PAYROLLID` int(10) unsigned NOT NULL DEFAULT '0',
  `FROMDATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TODATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll`
--

LOCK TABLES `payroll` WRITE;
/*!40000 ALTER TABLE `payroll` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_finance`
--

DROP TABLE IF EXISTS `payroll_finance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payroll_finance` (
  `POST_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PAYROLL_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PRNAME` varchar(45) NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER` varchar(100) NOT NULL DEFAULT '',
  `AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `CASHBANK_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CASHBANK_LEDGER` varchar(100) NOT NULL DEFAULT '',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TYPE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NARRATION` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`POST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_finance`
--

LOCK TABLES `payroll_finance` WRITE;
/*!40000 ALTER TABLE `payroll_finance` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll_finance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_ledger`
--

DROP TABLE IF EXISTS `payroll_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payroll_ledger` (
  `TYPE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_ledger`
--

LOCK TABLES `payroll_ledger` WRITE;
/*!40000 ALTER TABLE `payroll_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_project`
--

DROP TABLE IF EXISTS `payroll_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payroll_project` (
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PAYROLLID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`PROJECT_ID`,`PAYROLLID`),
  KEY `FK_payroll_project_PAYROLLID` (`PAYROLLID`),
  CONSTRAINT `FK_payroll_project_PROJECTID` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_project`
--

LOCK TABLES `payroll_project` WRITE;
/*!40000 ALTER TABLE `payroll_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_range_formula`
--

DROP TABLE IF EXISTS `payroll_range_formula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payroll_range_formula` (
  `COMPONENTID` int(10) unsigned NOT NULL DEFAULT '0',
  `LINK_COMPONENT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MIN_VALUE` varchar(50) NOT NULL DEFAULT '',
  `MAX_VALUE` varchar(50) NOT NULL DEFAULT '',
  `MAX_SLAB` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_range_formula`
--

LOCK TABLES `payroll_range_formula` WRITE;
/*!40000 ALTER TABLE `payroll_range_formula` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll_range_formula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_amendment_message`
--

DROP TABLE IF EXISTS `portal_amendment_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_amendment_message` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `VOUCHER_ID` int(10) unsigned DEFAULT NULL,
  `AMENDMENT_STATUS` text,
  `AMENDMENT_DATE` datetime DEFAULT NULL,
  `VOUCHER_DATE` datetime DEFAULT NULL,
  `LEDGER_NAME` varchar(45) DEFAULT NULL,
  `PROJECT` varchar(100) DEFAULT NULL,
  `VOUCHER_NO` int(10) unsigned DEFAULT NULL,
  `VOUCHER_TYPE` varchar(45) DEFAULT NULL,
  `AMOUNT` int(10) unsigned DEFAULT NULL,
  `REMARKS` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_amendment_message`
--

LOCK TABLES `portal_amendment_message` WRITE;
/*!40000 ALTER TABLE `portal_amendment_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal_amendment_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_datasyn_message`
--

DROP TABLE IF EXISTS `portal_datasyn_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_datasyn_message` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UPLOADED_ON` datetime DEFAULT NULL,
  `STATUS` text,
  `TRANS_DATE_FROM` datetime DEFAULT NULL,
  `TRANS_DATE_TO` datetime DEFAULT NULL,
  `REMARKS` varchar(1000) DEFAULT NULL,
  `TYPE` int(10) unsigned NOT NULL DEFAULT '0',
  `REFRESH_DATE` datetime DEFAULT NULL,
  `STARTED_ON` datetime DEFAULT NULL,
  `COMPLETED_ON` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_datasyn_message`
--

LOCK TABLES `portal_datasyn_message` WRITE;
/*!40000 ALTER TABLE `portal_datasyn_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal_datasyn_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prcompmonth`
--

DROP TABLE IF EXISTS `prcompmonth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prcompmonth` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PAYROLLID` int(10) unsigned NOT NULL DEFAULT '0',
  `SALARYGROUPID` int(10) unsigned DEFAULT NULL,
  `COMPONENTID` int(10) unsigned DEFAULT NULL,
  `TYPE` varchar(20) DEFAULT NULL,
  `DEFVALUE` varchar(50) DEFAULT NULL,
  `EQUATION` varchar(500) DEFAULT NULL,
  `EQUATIONID` varchar(500) DEFAULT NULL,
  `MAXSLAB` decimal(15,2) DEFAULT NULL,
  `LNKVALUE` varchar(50) DEFAULT NULL,
  `COMP_ORDER` int(10) unsigned DEFAULT NULL,
  `COMPROUND` int(10) unsigned DEFAULT NULL,
  `IFCONDITION` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_PRCOMPMONTH_1` (`COMPONENTID`),
  KEY `FK_prcompmonth_2` (`PAYROLLID`),
  CONSTRAINT `FK_PRCOMPMONTH_1` FOREIGN KEY (`COMPONENTID`) REFERENCES `prcomponent` (`COMPONENTID`),
  CONSTRAINT `FK_prcompmonth_2` FOREIGN KEY (`PAYROLLID`) REFERENCES `prcreate` (`PAYROLLID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prcompmonth`
--

LOCK TABLES `prcompmonth` WRITE;
/*!40000 ALTER TABLE `prcompmonth` DISABLE KEYS */;
/*!40000 ALTER TABLE `prcompmonth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prcomponent`
--

DROP TABLE IF EXISTS `prcomponent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prcomponent` (
  `COMPONENTID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `COMPONENT` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `TYPE` varchar(50) DEFAULT NULL,
  `DEFVALUE` varchar(100) DEFAULT NULL,
  `LINKVALUE` varchar(50) DEFAULT NULL,
  `EQUATION` varchar(4000) DEFAULT NULL,
  `EQUATIONID` varchar(4000) DEFAULT NULL,
  `MAXSLAP` decimal(15,2) DEFAULT NULL,
  `COMPROUND` decimal(15,2) DEFAULT NULL,
  `IFCONDITION` varchar(50) DEFAULT NULL,
  `SHOWINBROWSE` int(10) unsigned DEFAULT NULL,
  `RELATEDCOMPONENTS` varchar(40) DEFAULT NULL,
  `ISEDITABLE` int(10) unsigned NOT NULL DEFAULT '0',
  `ACCESS_FLAG` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PROCESS_TYPE_ID` int(10) unsigned DEFAULT NULL,
  `PROCESS_DATE` datetime DEFAULT NULL,
  `PAYABLE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1-Payable,0-not payable',
  PRIMARY KEY (`COMPONENTID`),
  UNIQUE KEY `unq_component` (`COMPONENT`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prcomponent`
--

LOCK TABLES `prcomponent` WRITE;
/*!40000 ALTER TABLE `prcomponent` DISABLE KEYS */;
INSERT INTO `prcomponent` VALUES (13,'BASIC','Basic Pay','0','0','Basicpay','','',0.00,1.00,'0',0,'',0,1,0,NULL,NULL,0),(14,'DA','Dearness Allowance','0','1653','','','',0.00,1.00,'0',0,'',0,1,0,NULL,NULL,0),(15,'HRA','House Rent Allowance','0','0','','<BASIC>*40/100','<13>*40/100~0~0',0.00,1.00,'1',0,'ÃƒÂª13ÃƒÂª',0,1,0,NULL,NULL,0),(16,'PF WAGES','Basic and Dearness Allowance','1','0','','<BASIC>+<DA>','<13>+<14>~0~0',0.00,1.00,'1',0,'ÃƒÂª13ÃƒÂª14ÃƒÂª',0,1,0,NULL,NULL,0),(17,'PF','Provident Fund','1','0','','<PF WAGES>*12/100','<16>*12/100~0~0',0.00,1.00,'1',0,'ÃƒÂª16ÃƒÂª',0,1,0,NULL,NULL,0),(18,'PT','Professional Tax','1','0','','','',0.00,1.00,'0',0,'',0,1,0,NULL,NULL,0),(19,'GROSS WAGES','GROSS SALARY','0','0','','<BASIC>+<DA>+<HRA>','<13>+<14>+<15>~0~0',0.00,1.00,'1',0,'ÃƒÂª13ÃƒÂª14ÃƒÂª15ÃƒÂª',0,1,0,NULL,NULL,0),(20,'DEDUCTIONS','DEDUCTIONS','1','0','','<PF>+<PT>','<17>+<18>~0~0',0.00,1.00,'1',0,'ÃƒÂª17ÃƒÂª18ÃƒÂª',0,1,0,NULL,NULL,0),(21,'NETPAY','Net Payable Amount to the Employee','0','0','','<GROSS WAGES>-<DEDUCTIONS>','<19>-<20>~0~0',0.00,1.00,'1',0,'ÃƒÂª19ÃƒÂª20ÃƒÂª',0,1,0,NULL,NULL,0),(22,'NAME','Name of the Employee','2','0','Name','','',0.00,1.00,'0',0,'',0,1,0,NULL,NULL,0),(23,'DESIGNATION','DESIGNATION','2','0','Designation','','',0.00,1.00,'0',0,'',0,1,0,NULL,NULL,0);
/*!40000 ALTER TABLE `prcomponent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prcreate`
--

DROP TABLE IF EXISTS `prcreate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prcreate` (
  `PAYROLLID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PRDATE` datetime DEFAULT NULL,
  `PRNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PAYROLLID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prcreate`
--

LOCK TABLES `prcreate` WRITE;
/*!40000 ALTER TABLE `prcreate` DISABLE KEYS */;
/*!40000 ALTER TABLE `prcreate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prformulagroup`
--

DROP TABLE IF EXISTS `prformulagroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prformulagroup` (
  `FORMULAGROUPID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FORMULA_DESC` varchar(200) DEFAULT NULL,
  `STAFFID_COLLECTION` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`FORMULAGROUPID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prformulagroup`
--

LOCK TABLES `prformulagroup` WRITE;
/*!40000 ALTER TABLE `prformulagroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `prformulagroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `princome`
--

DROP TABLE IF EXISTS `princome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `princome` (
  `INCOME_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `INCOME_NAME` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`INCOME_ID`),
  UNIQUE KEY `Unique_IncomeName` (`INCOME_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `princome`
--

LOCK TABLES `princome` WRITE;
/*!40000 ALTER TABLE `princome` DISABLE KEYS */;
INSERT INTO `princome` VALUES (1,'Basicpay'),(2,'YOS');
/*!40000 ALTER TABLE `princome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prloan`
--

DROP TABLE IF EXISTS `prloan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prloan` (
  `LOANID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LOANNAME` varchar(100) DEFAULT NULL,
  `LOANABBRIVIATION` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`LOANID`),
  UNIQUE KEY `UK_LOAN_LOAN_NAME_1` (`LOANNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prloan`
--

LOCK TABLES `prloan` WRITE;
/*!40000 ALTER TABLE `prloan` DISABLE KEYS */;
/*!40000 ALTER TABLE `prloan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prloanget`
--

DROP TABLE IF EXISTS `prloanget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prloanget` (
  `PRLOANGETID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `STAFFID` int(10) unsigned NOT NULL DEFAULT '0',
  `LOANID` int(10) unsigned NOT NULL DEFAULT '0',
  `AMOUNT` decimal(15,2) DEFAULT NULL,
  `INSTALLMENT` int(10) unsigned DEFAULT NULL,
  `FROMDATE` datetime DEFAULT NULL,
  `TODATE` datetime DEFAULT NULL,
  `INTEREST` decimal(15,2) DEFAULT NULL,
  `INTRESTMODE` int(10) unsigned DEFAULT NULL,
  `INTRESTAMOUNT` decimal(15,2) DEFAULT NULL,
  `CURRENTINSTALLMENT` int(10) unsigned DEFAULT NULL,
  `COMPLETED` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PRLOANGETID`),
  KEY `LOANID_1` (`LOANID`),
  KEY `FK_prloanget_StaffId` (`STAFFID`),
  CONSTRAINT `FK_prloanget_LoanId` FOREIGN KEY (`LOANID`) REFERENCES `prloan` (`LOANID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_prloanget_StaffId` FOREIGN KEY (`STAFFID`) REFERENCES `stfpersonal` (`STAFFID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `LOANID_1` FOREIGN KEY (`LOANID`) REFERENCES `prloan` (`LOANID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prloanget`
--

LOCK TABLES `prloanget` WRITE;
/*!40000 ALTER TABLE `prloanget` DISABLE KEYS */;
/*!40000 ALTER TABLE `prloanget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prloanpaid`
--

DROP TABLE IF EXISTS `prloanpaid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prloanpaid` (
  `LOAN_ROWID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PAYROLLID` int(10) unsigned NOT NULL DEFAULT '0',
  `LOANID` int(10) unsigned DEFAULT NULL,
  `PRLOANGETID` int(10) unsigned DEFAULT NULL,
  `STAFFID` int(10) unsigned DEFAULT NULL,
  `PAIDDATE` datetime DEFAULT NULL,
  `AMOUNT` decimal(15,2) DEFAULT NULL,
  `INSTALLMENT` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`LOAN_ROWID`),
  KEY `FK_prloanpaid_LoanId` (`LOANID`),
  KEY `FK_prloanpaid_StaffId` (`STAFFID`),
  CONSTRAINT `FK_prloanpaid_LoanId` FOREIGN KEY (`LOANID`) REFERENCES `prloan` (`LOANID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_prloanpaid_StaffId` FOREIGN KEY (`STAFFID`) REFERENCES `stfpersonal` (`STAFFID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prloanpaid`
--

LOCK TABLES `prloanpaid` WRITE;
/*!40000 ALTER TABLE `prloanpaid` DISABLE KEYS */;
/*!40000 ALTER TABLE `prloanpaid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process_type`
--

DROP TABLE IF EXISTS `process_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process_type` (
  `TYPE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PROCESS_TYPE` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process_type`
--

LOCK TABLES `process_type` WRITE;
/*!40000 ALTER TABLE `process_type` DISABLE KEYS */;
INSERT INTO `process_type` VALUES (0,'Salary'),(1,'PF Contribution'),(2,'ESI Contribution'),(3,'Deductions');
/*!40000 ALTER TABLE `process_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_branch`
--

DROP TABLE IF EXISTS `project_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_branch` (
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `FK_project_branch_master_project` (`PROJECT_ID`),
  KEY `FK_project_branch_branch_office` (`BRANCH_ID`),
  CONSTRAINT `FK_project_branch_branch_office` FOREIGN KEY (`BRANCH_ID`) REFERENCES `branch_office` (`BRANCH_OFFICE_ID`),
  CONSTRAINT `FK_project_branch_master_project` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_branch`
--

LOCK TABLES `project_branch` WRITE;
/*!40000 ALTER TABLE `project_branch` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_costcentre`
--

DROP TABLE IF EXISTS `project_costcentre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_costcentre` (
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `COST_CENTRE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `TRANS_MODE` varchar(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`PROJECT_ID`,`COST_CENTRE_ID`),
  KEY `FK_PROJECT_COSTCENTRE_MAPPING` (`PROJECT_ID`),
  KEY `FK_PROJECT_COSTCENTRE_MAPPING_COSTCENTRE` (`COST_CENTRE_ID`) USING BTREE,
  CONSTRAINT `FK_project_costcentre_PROJECT_ID` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`),
  CONSTRAINT `FK_PROJECT_COST_CENTRE_COSTCENTRE_ID` FOREIGN KEY (`COST_CENTRE_ID`) REFERENCES `master_cost_centre` (`COST_CENTRE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_costcentre`
--

LOCK TABLES `project_costcentre` WRITE;
/*!40000 ALTER TABLE `project_costcentre` DISABLE KEYS */;
INSERT INTO `project_costcentre` VALUES (70,3546,0.00,'DR'),(70,3547,0.00,'DR'),(70,3551,0.00,'DR'),(70,3555,0.00,'DR'),(70,3560,0.00,'DR'),(70,3562,0.00,'DR'),(70,3563,0.00,'DR'),(70,3572,0.00,'DR'),(70,3576,0.00,'DR'),(70,3580,0.00,'DR'),(70,3588,0.00,'DR'),(70,3593,0.00,'DR'),(70,3605,0.00,'DR'),(70,3611,0.00,'DR'),(70,3614,0.00,'CR'),(70,3615,0.00,'DR'),(70,3616,0.00,'DR'),(70,3617,0.00,'DR'),(70,3620,0.00,'DR'),(70,3624,0.00,'DR'),(70,3628,0.00,'DR'),(70,3629,0.00,'DR'),(70,3630,0.00,'DR'),(70,3631,0.00,'CR'),(70,3632,0.00,'DR'),(70,3636,0.00,'DR'),(70,3637,0.00,'DR'),(70,3646,0.00,'DR'),(70,3650,0.00,'DR'),(70,3669,0.00,'DR'),(70,3671,0.00,'CR'),(70,3672,0.00,'DR'),(70,3673,0.00,'CR'),(70,3675,0.00,'CR'),(70,3687,0.00,'CR'),(70,3708,0.00,'CR'),(70,3717,0.00,'DR'),(70,3736,0.00,'CR'),(72,3514,0.00,'CR'),(72,3534,0.00,'DR'),(72,3538,0.00,'DR'),(72,3541,0.00,'DR'),(72,3557,0.00,'DR'),(72,3577,0.00,'DR'),(72,3580,0.00,'CR'),(72,3592,0.00,'CR'),(72,3629,0.00,'CR'),(72,3634,0.00,'CR'),(72,3651,0.00,'DR'),(72,3661,0.00,'DR'),(72,3671,0.00,'CR'),(72,3673,0.00,'CR'),(72,3675,0.00,'CR'),(72,3677,0.00,'CR'),(72,3682,0.00,'CR'),(72,3685,0.00,'DR'),(72,3686,0.00,'DR'),(72,3687,0.00,'CR'),(72,3688,0.00,'DR'),(72,3689,0.00,'CR'),(72,3695,0.00,'CR'),(72,3702,0.00,'CR'),(72,3708,0.00,'CR'),(72,3709,0.00,'CR'),(72,3710,0.00,'CR'),(72,3711,0.00,'CR'),(72,3718,0.00,'CR'),(72,3720,0.00,'DR'),(72,3721,0.00,'DR'),(72,3722,0.00,'DR'),(72,3723,0.00,'DR'),(72,3724,0.00,'DR'),(72,3725,0.00,'DR'),(72,3726,0.00,'DR'),(72,3727,0.00,'DR'),(72,3728,0.00,'DR'),(72,3729,0.00,'DR'),(72,3730,0.00,'DR'),(72,3731,0.00,'DR'),(72,3732,0.00,'DR'),(72,3733,0.00,'DR'),(72,3734,0.00,'DR'),(72,3735,0.00,'CR');
/*!40000 ALTER TABLE `project_costcentre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_donor`
--

DROP TABLE IF EXISTS `project_donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_donor` (
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DONOR_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`PROJECT_ID`,`DONOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_donor`
--

LOCK TABLES `project_donor` WRITE;
/*!40000 ALTER TABLE `project_donor` DISABLE KEYS */;
INSERT INTO `project_donor` VALUES (72,3598),(72,3599),(72,3600),(72,3601),(72,3602),(72,3603),(72,3604),(72,3605),(72,3606),(72,3607),(72,3608),(72,3609),(72,3610),(72,3611),(72,3613),(72,3614);
/*!40000 ALTER TABLE `project_donor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_ledger`
--

DROP TABLE IF EXISTS `project_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_ledger` (
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `UK_PROJ_LEDGER` (`PROJECT_ID`,`LEDGER_ID`),
  KEY `LEDGER_ID` (`LEDGER_ID`),
  CONSTRAINT `FK_project_id_MASTER_PROJECT` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`),
  CONSTRAINT `FK_project_ledger_LEDGER_ID` FOREIGN KEY (`LEDGER_ID`) REFERENCES `master_ledger` (`LEDGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_ledger`
--

LOCK TABLES `project_ledger` WRITE;
/*!40000 ALTER TABLE `project_ledger` DISABLE KEYS */;
INSERT INTO `project_ledger` VALUES (67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(67,3),(68,3),(70,3),(71,3),(72,3),(67,4796),(68,4796),(70,4796),(71,4796),(72,4796),(67,4797),(68,4797),(70,4797),(71,4797),(72,4797),(67,4798),(70,4798),(71,4798),(72,4798),(67,4799),(70,4799),(71,4799),(72,4799),(67,4800),(68,4800),(70,4800),(71,4800),(72,4800),(67,4801),(68,4801),(70,4801),(71,4801),(72,4801),(67,4802),(68,4802),(70,4802),(71,4802),(72,4802),(67,4803),(68,4803),(70,4803),(71,4803),(72,4803),(67,4804),(68,4804),(70,4804),(71,4804),(72,4804),(67,4805),(68,4805),(70,4805),(71,4805),(72,4805),(67,4806),(68,4806),(70,4806),(71,4806),(72,4806),(67,4807),(68,4807),(70,4807),(71,4807),(72,4807),(67,4808),(68,4808),(70,4808),(71,4808),(72,4808),(67,4809),(68,4809),(70,4809),(71,4809),(72,4809),(67,4810),(68,4810),(70,4810),(71,4810),(72,4810),(67,4811),(68,4811),(70,4811),(71,4811),(72,4811),(67,4812),(70,4812),(71,4812),(72,4812),(67,4813),(70,4813),(71,4813),(72,4813),(67,4814),(70,4814),(71,4814),(72,4814),(67,4815),(70,4815),(71,4815),(72,4815),(70,4816),(71,4816),(72,4816),(67,4817),(70,4817),(71,4817),(72,4817),(67,4818),(70,4818),(71,4818),(72,4818),(67,4819),(70,4819),(71,4819),(72,4819),(67,4820),(70,4820),(71,4820),(72,4820),(67,4821),(70,4821),(71,4821),(72,4821),(67,4822),(68,4822),(70,4822),(71,4822),(72,4822),(67,4823),(70,4823),(71,4823),(72,4823),(67,4824),(70,4824),(71,4824),(72,4824),(67,4825),(70,4825),(71,4825),(72,4825),(67,4826),(70,4826),(71,4826),(72,4826),(67,4827),(70,4827),(71,4827),(72,4827),(67,4828),(70,4828),(71,4828),(72,4828),(67,4829),(70,4829),(71,4829),(72,4829),(67,4830),(70,4830),(71,4830),(72,4830),(67,4831),(70,4831),(71,4831),(72,4831),(67,4832),(70,4832),(71,4832),(72,4832),(67,4833),(70,4833),(71,4833),(72,4833),(67,4834),(70,4834),(71,4834),(72,4834),(67,4835),(70,4835),(71,4835),(72,4835),(67,4836),(70,4836),(71,4836),(72,4836),(67,4837),(70,4837),(71,4837),(72,4837),(67,4838),(70,4838),(71,4838),(72,4838),(67,4839),(70,4839),(71,4839),(72,4839),(67,4840),(70,4840),(71,4840),(72,4840),(67,4841),(70,4841),(71,4841),(72,4841),(67,4842),(70,4842),(71,4842),(72,4842),(67,4843),(70,4843),(71,4843),(72,4843),(67,4844),(70,4844),(71,4844),(72,4844),(67,4845),(70,4845),(71,4845),(72,4845),(67,4846),(70,4846),(71,4846),(72,4846),(67,4847),(70,4847),(71,4847),(72,4847),(67,4848),(70,4848),(71,4848),(72,4848),(67,4849),(70,4849),(71,4849),(72,4849),(67,4850),(70,4850),(71,4850),(72,4850),(67,4851),(70,4851),(71,4851),(72,4851),(67,4852),(70,4852),(71,4852),(72,4852),(67,4853),(70,4853),(71,4853),(72,4853),(67,4854),(70,4854),(71,4854),(72,4854),(67,4855),(70,4855),(71,4855),(72,4855),(67,4856),(70,4856),(71,4856),(72,4856),(67,4857),(70,4857),(71,4857),(72,4857),(67,4858),(70,4858),(71,4858),(72,4858),(67,4859),(70,4859),(71,4859),(72,4859),(67,4860),(70,4860),(71,4860),(72,4860),(67,4861),(70,4861),(71,4861),(72,4861),(67,4862),(70,4862),(71,4862),(72,4862),(67,4863),(70,4863),(71,4863),(72,4863),(67,4864),(70,4864),(71,4864),(72,4864),(67,4865),(70,4865),(71,4865),(72,4865),(67,4866),(70,4866),(71,4866),(72,4866),(67,4867),(70,4867),(71,4867),(72,4867),(67,4868),(70,4868),(71,4868),(72,4868),(67,4869),(70,4869),(71,4869),(72,4869),(67,4870),(70,4870),(71,4870),(72,4870),(67,4871),(70,4871),(71,4871),(72,4871),(67,4872),(70,4872),(71,4872),(72,4872),(67,4873),(70,4873),(71,4873),(72,4873),(67,4874),(70,4874),(71,4874),(72,4874),(67,4875),(70,4875),(71,4875),(72,4875),(67,4876),(70,4876),(71,4876),(72,4876),(67,4877),(70,4877),(71,4877),(72,4877),(67,4878),(70,4878),(71,4878),(72,4878),(67,4879),(70,4879),(71,4879),(72,4879),(67,4880),(70,4880),(71,4880),(72,4880),(67,4881),(70,4881),(71,4881),(72,4881),(67,4882),(70,4882),(71,4882),(72,4882),(67,4883),(70,4883),(71,4883),(72,4883),(67,4884),(70,4884),(71,4884),(72,4884),(67,4885),(70,4885),(71,4885),(72,4885),(67,4886),(70,4886),(71,4886),(72,4886),(67,4887),(70,4887),(71,4887),(72,4887),(67,4888),(70,4888),(71,4888),(72,4888),(67,4889),(70,4889),(71,4889),(72,4889),(67,4890),(70,4890),(71,4890),(72,4890),(67,4891),(70,4891),(71,4891),(72,4891),(67,4892),(70,4892),(71,4892),(67,4893),(70,4893),(71,4893),(72,4893),(67,4894),(70,4894),(71,4894),(72,4894),(67,4895),(70,4895),(71,4895),(72,4895),(67,4896),(70,4896),(71,4896),(72,4896),(67,4897),(70,4897),(71,4897),(72,4897),(67,4898),(70,4898),(71,4898),(72,4898),(67,4899),(70,4899),(71,4899),(72,4899),(67,4900),(70,4900),(71,4900),(72,4900),(67,4901),(70,4901),(71,4901),(72,4901),(67,4902),(70,4902),(71,4902),(72,4902),(67,4903),(70,4903),(71,4903),(72,4903),(67,4904),(70,4904),(71,4904),(72,4904),(67,4905),(70,4905),(71,4905),(72,4905),(67,4906),(70,4906),(71,4906),(72,4906),(67,4907),(70,4907),(71,4907),(72,4907),(67,4908),(70,4908),(71,4908),(72,4908),(67,4909),(70,4909),(71,4909),(72,4909),(67,4910),(70,4910),(71,4910),(72,4910),(67,4911),(70,4911),(71,4911),(72,4911),(67,4912),(70,4912),(71,4912),(72,4912),(67,4913),(70,4913),(71,4913),(72,4913),(67,4914),(70,4914),(71,4914),(72,4914),(67,4915),(70,4915),(71,4915),(72,4915),(67,4916),(70,4916),(71,4916),(72,4916),(67,4917),(70,4917),(71,4917),(72,4917),(67,4918),(70,4918),(71,4918),(72,4918),(67,4919),(70,4919),(71,4919),(72,4919),(67,4920),(70,4920),(71,4920),(72,4920),(67,4921),(70,4921),(71,4921),(72,4921),(67,4922),(70,4922),(71,4922),(72,4922),(67,4923),(70,4923),(71,4923),(72,4923),(67,4924),(70,4924),(71,4924),(72,4924),(67,4925),(70,4925),(71,4925),(72,4925),(67,4926),(70,4926),(71,4926),(72,4926),(67,4927),(70,4927),(71,4927),(72,4927),(67,4928),(70,4928),(71,4928),(72,4928),(67,4929),(70,4929),(71,4929),(72,4929),(67,4930),(70,4930),(71,4930),(72,4930),(67,4931),(70,4931),(71,4931),(72,4931),(67,4932),(70,4932),(71,4932),(72,4932),(67,4933),(70,4933),(71,4933),(72,4933),(67,4934),(70,4934),(71,4934),(72,4934),(67,4935),(70,4935),(71,4935),(72,4935),(67,4936),(70,4936),(71,4936),(72,4936),(67,4937),(70,4937),(71,4937),(72,4937),(67,4938),(70,4938),(71,4938),(72,4938),(67,4939),(70,4939),(71,4939),(72,4939),(67,4940),(70,4940),(71,4940),(72,4940),(67,4941),(70,4941),(71,4941),(72,4941),(67,4942),(70,4942),(71,4942),(72,4942),(67,4943),(70,4943),(71,4943),(72,4943),(67,4944),(70,4944),(71,4944),(72,4944),(67,4945),(70,4945),(71,4945),(72,4945),(67,4946),(70,4946),(71,4946),(72,4946),(67,4947),(70,4947),(71,4947),(72,4947),(67,4948),(70,4948),(71,4948),(72,4948),(67,4949),(70,4949),(71,4949),(72,4949),(67,4950),(70,4950),(71,4950),(72,4950),(67,4951),(70,4951),(71,4951),(72,4951),(67,4952),(70,4952),(71,4952),(72,4952),(67,4953),(70,4953),(71,4953),(72,4953),(67,4954),(70,4954),(71,4954),(72,4954),(67,4955),(70,4955),(71,4955),(72,4955),(67,4956),(70,4956),(71,4956),(72,4956),(67,4957),(70,4957),(71,4957),(72,4957),(67,4958),(70,4958),(71,4958),(72,4958),(67,4959),(70,4959),(71,4959),(72,4959),(67,4960),(70,4960),(71,4960),(72,4960),(67,4961),(70,4961),(71,4961),(72,4961),(67,4962),(70,4962),(71,4962),(72,4962),(67,4963),(70,4963),(71,4963),(72,4963),(67,4964),(70,4964),(71,4964),(72,4964),(67,4965),(70,4965),(71,4965),(72,4965),(67,4966),(70,4966),(71,4966),(72,4966),(67,4967),(70,4967),(71,4967),(72,4967),(67,4968),(70,4968),(71,4968),(72,4968),(67,4969),(70,4969),(71,4969),(72,4969),(67,4970),(70,4970),(71,4970),(72,4970),(67,4971),(70,4971),(71,4971),(72,4971),(67,4972),(70,4972),(71,4972),(72,4972),(67,4973),(70,4973),(71,4973),(72,4973),(67,4974),(70,4974),(71,4974),(72,4974),(67,4975),(70,4975),(71,4975),(72,4975),(67,4976),(70,4976),(71,4976),(72,4976),(67,4977),(70,4977),(71,4977),(72,4977),(67,4978),(70,4978),(71,4978),(72,4978),(67,4979),(70,4979),(71,4979),(72,4979),(67,4980),(70,4980),(71,4980),(72,4980),(67,4981),(70,4981),(71,4981),(72,4981),(67,4982),(70,4982),(71,4982),(72,4982),(67,4983),(70,4983),(71,4983),(72,4983),(67,4984),(70,4984),(71,4984),(72,4984),(67,4985),(70,4985),(71,4985),(72,4985),(67,4986),(70,4986),(71,4986),(72,4986),(67,4987),(70,4987),(71,4987),(72,4987),(67,4988),(70,4988),(71,4988),(72,4988),(67,4989),(70,4989),(71,4989),(72,4989),(67,4990),(70,4990),(71,4990),(72,4990),(67,4991),(70,4991),(71,4991),(72,4991),(67,4992),(70,4992),(71,4992),(72,4992),(67,4993),(70,4993),(71,4993),(72,4993),(67,4994),(70,4994),(71,4994),(72,4994),(67,4995),(68,4995),(70,4995),(71,4995),(72,4995),(67,4996),(68,4996),(70,4996),(71,4996),(72,4996),(67,4997),(70,4997),(71,4997),(72,4997),(67,4998),(70,4998),(71,4998),(72,4998),(67,4999),(70,4999),(71,4999),(72,4999),(67,5000),(70,5000),(71,5000),(72,5000),(67,5001),(70,5001),(71,5001),(72,5001),(67,5002),(70,5002),(71,5002),(72,5002),(67,5003),(70,5003),(71,5003),(72,5003),(67,5004),(70,5004),(71,5004),(72,5004),(67,5005),(69,5005),(71,5005),(67,5006),(69,5006),(71,5006),(67,5007),(69,5007),(71,5007),(67,5008),(69,5008),(71,5008),(67,5009),(69,5009),(71,5009),(67,5010),(69,5010),(71,5010),(67,5011),(69,5011),(71,5011),(67,5012),(69,5012),(71,5012),(67,5013),(69,5013),(71,5013),(67,5014),(69,5014),(71,5014),(67,5015),(69,5015),(71,5015),(67,5016),(69,5016),(71,5016),(67,5017),(69,5017),(71,5017),(67,5018),(69,5018),(71,5018),(67,5019),(69,5019),(71,5019),(67,5020),(69,5020),(71,5020),(67,5021),(69,5021),(71,5021),(69,5022),(71,5022),(67,5023),(69,5023),(70,5023),(71,5023),(72,5023),(67,5024),(69,5024),(70,5024),(71,5024),(72,5024),(67,5025),(69,5025),(70,5025),(71,5025),(72,5025),(67,5026),(70,5026),(71,5026),(67,5027),(70,5027),(71,5027),(67,5028),(70,5028),(71,5028),(67,5029),(69,5029),(70,5029),(71,5029),(72,5029),(67,5030),(69,5030),(71,5030),(67,5031),(69,5031),(71,5031),(67,5032),(69,5032),(70,5032),(71,5032),(72,5032),(67,5033),(69,5033),(70,5033),(71,5033),(72,5033),(67,5034),(70,5034),(71,5034),(72,5034),(67,5035),(70,5035),(71,5035),(67,5036),(68,5036),(69,5036),(70,5036),(71,5036),(72,5036),(67,5037),(69,5037),(70,5037),(71,5037),(72,5037),(67,5038),(70,5038),(71,5038),(72,5038),(67,5039),(70,5039),(71,5039),(72,5039),(67,5040),(68,5040),(69,5040),(70,5040),(71,5040),(72,5040),(68,5041),(70,5041),(71,5041),(72,5041),(67,5042),(68,5042),(70,5042),(71,5042),(72,5042),(67,5043),(70,5043),(71,5043),(72,5043),(67,5044),(69,5044),(70,5044),(71,5044),(72,5044),(67,5045),(69,5045),(70,5045),(71,5045),(72,5045),(67,5046),(69,5046),(70,5046),(71,5046),(72,5046),(67,5047),(68,5047),(70,5047),(71,5047),(67,5048),(70,5048),(71,5048),(67,5049),(70,5049),(71,5049),(72,5049),(67,5050),(70,5050),(71,5050),(72,5050),(70,5051),(71,5051),(72,5051),(68,5052),(70,5052),(71,5052),(68,5053),(70,5053),(71,5053),(70,5054),(71,5054),(68,5055),(70,5055),(71,5055),(70,5056),(71,5056),(68,5057),(70,5057),(71,5057),(71,5058),(71,5059),(71,5060),(70,5061),(71,5061),(70,5062),(71,5062),(72,5062),(70,5063),(71,5063),(72,5063),(70,5064),(71,5064),(70,5065),(71,5065),(70,5066),(71,5066),(70,5067),(71,5067),(72,5067),(68,5068),(70,5068),(71,5068),(72,5068),(70,5069),(71,5069),(72,5069),(70,5070),(71,5070),(72,5070),(68,5071),(70,5071),(71,5071),(72,5071),(68,5072),(70,5072),(71,5072),(72,5072),(68,5073),(70,5073),(71,5073),(72,5073),(68,5074),(70,5074),(71,5074),(72,5074),(68,5075),(70,5075),(71,5075),(72,5075),(68,5076),(70,5076),(71,5076),(72,5076),(68,5077),(70,5077),(71,5077),(72,5077),(68,5078),(70,5078),(71,5078),(72,5078),(68,5079),(70,5079),(71,5079),(72,5079),(68,5080),(70,5080),(71,5080),(72,5080),(68,5081),(70,5081),(71,5081),(72,5081),(68,5082),(70,5082),(71,5082),(72,5082),(70,5083),(71,5083),(72,5083),(70,5084),(71,5084),(72,5084),(70,5085),(71,5085),(72,5085),(70,5086),(71,5086),(72,5086),(70,5087),(71,5087),(72,5087),(70,5088),(71,5088),(72,5088),(70,5089),(71,5089),(72,5089),(70,5090),(71,5090),(72,5090),(70,5091),(71,5091),(72,5091),(70,5092),(71,5092),(72,5092),(70,5093),(71,5093),(72,5093),(70,5094),(71,5094),(72,5094),(70,5095),(71,5095),(72,5095),(70,5096),(71,5096),(72,5096),(70,5097),(71,5097),(70,5098),(71,5098),(72,5098),(70,5099),(71,5099),(72,5099),(70,5100),(71,5100),(68,5101),(70,5101),(71,5101),(68,5102),(70,5102),(71,5102),(70,5103),(71,5103),(72,5103),(68,5104),(71,5104),(70,5105),(70,5106),(70,5107),(70,5108),(70,5109),(70,5110),(70,5111),(70,5112),(70,5113),(70,5114),(70,5115),(70,5116),(70,5117),(70,5118),(72,5119),(70,5120),(70,5121),(70,5122),(70,5123),(70,5124),(67,5125),(70,5126),(70,5127),(70,5128),(70,5129),(70,5130),(70,5131),(70,5132),(70,5133),(70,5134),(70,5135),(70,5136);
/*!40000 ALTER TABLE `project_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_purpose`
--

DROP TABLE IF EXISTS `project_purpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_purpose` (
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CONTRIBUTION_ID` int(11) NOT NULL DEFAULT '0',
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `TRANS_MODE` varchar(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`PROJECT_ID`,`CONTRIBUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_purpose`
--

LOCK TABLES `project_purpose` WRITE;
/*!40000 ALTER TABLE `project_purpose` DISABLE KEYS */;
INSERT INTO `project_purpose` VALUES (72,20,2401271.42,'CR'),(72,23,1312321.20,'CR'),(72,27,0.00,'CR'),(72,30,841983.12,'CR'),(72,40,38665.00,'CR'),(72,44,0.00,'CR'),(72,58,65912.47,'CR'),(72,59,958540.00,'CR'),(72,60,4327662.65,'CR'),(72,61,2349904.61,'CR');
/*!40000 ALTER TABLE `project_purpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_voucher`
--

DROP TABLE IF EXISTS `project_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_voucher` (
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `FK_MASTER_PROJECT_ID` (`PROJECT_ID`),
  KEY `FK_MASTER_VOUCHER_ID` (`VOUCHER_ID`),
  CONSTRAINT `FK_MASTER_VOUCHER_VOUCHER_ID` FOREIGN KEY (`VOUCHER_ID`) REFERENCES `master_voucher` (`VOUCHER_ID`),
  CONSTRAINT `FK_project_voucher_PROJECT_ID` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_voucher`
--

LOCK TABLES `project_voucher` WRITE;
/*!40000 ALTER TABLE `project_voucher` DISABLE KEYS */;
INSERT INTO `project_voucher` VALUES (67,3),(67,4),(67,2),(67,1),(68,3),(68,4),(68,2),(68,1),(69,3),(69,4),(69,2),(69,1),(70,3),(70,4),(70,2),(70,1),(71,3),(71,4),(71,2),(71,1),(72,3),(72,4),(72,2),(72,1);
/*!40000 ALTER TABLE `project_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prproject_staff`
--

DROP TABLE IF EXISTS `prproject_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prproject_staff` (
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `STAFFID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`PROJECT_ID`,`STAFFID`),
  KEY `FK_prproject_staff_staffid` (`STAFFID`),
  CONSTRAINT `FK_prproject_staff_projectid` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_prproject_staff_staffid` FOREIGN KEY (`STAFFID`) REFERENCES `stfpersonal` (`STAFFID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prproject_staff`
--

LOCK TABLES `prproject_staff` WRITE;
/*!40000 ALTER TABLE `prproject_staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `prproject_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prsalarygroup`
--

DROP TABLE IF EXISTS `prsalarygroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prsalarygroup` (
  `GROUPID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `GROUPNAME` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`GROUPID`),
  UNIQUE KEY `Uqi_GROUP_NAME` (`GROUPNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prsalarygroup`
--

LOCK TABLES `prsalarygroup` WRITE;
/*!40000 ALTER TABLE `prsalarygroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `prsalarygroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prstaff`
--

DROP TABLE IF EXISTS `prstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prstaff` (
  `PAYROLLID` int(10) unsigned NOT NULL DEFAULT '0',
  `STAFFID` int(10) unsigned DEFAULT NULL,
  `COMPVALUE` varchar(200) DEFAULT NULL,
  `COMPORDER` int(10) unsigned DEFAULT NULL,
  `COMPONENTID` int(10) unsigned DEFAULT NULL,
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TRANSACTIONDATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `FK_prstaff_stfpersonal` (`STAFFID`),
  CONSTRAINT `FK_prstaff_stfpersonal` FOREIGN KEY (`STAFFID`) REFERENCES `stfpersonal` (`STAFFID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prstaff`
--

LOCK TABLES `prstaff` WRITE;
/*!40000 ALTER TABLE `prstaff` DISABLE KEYS */;
/*!40000 ALTER TABLE `prstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prstaffgroup`
--

DROP TABLE IF EXISTS `prstaffgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prstaffgroup` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `GROUPID` int(10) unsigned DEFAULT NULL,
  `STAFFORDER` int(10) unsigned DEFAULT NULL,
  `PAYROLLID` int(10) unsigned DEFAULT NULL,
  `STAFFID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prstaffgroup`
--

LOCK TABLES `prstaffgroup` WRITE;
/*!40000 ALTER TABLE `prstaffgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `prstaffgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prstafftemp`
--

DROP TABLE IF EXISTS `prstafftemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prstafftemp` (
  `PAYROLLID` int(10) unsigned NOT NULL,
  `STAFFID` int(10) unsigned NOT NULL DEFAULT '0',
  `COMPONENTID` int(10) unsigned NOT NULL DEFAULT '0',
  `COMPVALUE` varchar(100) NOT NULL DEFAULT '',
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prstafftemp`
--

LOCK TABLES `prstafftemp` WRITE;
/*!40000 ALTER TABLE `prstafftemp` DISABLE KEYS */;
/*!40000 ALTER TABLE `prstafftemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prstatus`
--

DROP TABLE IF EXISTS `prstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prstatus` (
  `PAYROLLID` int(10) unsigned NOT NULL,
  `COMPCREATED` varchar(5) NOT NULL DEFAULT '',
  `PRCREATED` varchar(50) DEFAULT NULL,
  `LOCKEDSTATUS` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`PAYROLLID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prstatus`
--

LOCK TABLES `prstatus` WRITE;
/*!40000 ALTER TABLE `prstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `prstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prtext`
--

DROP TABLE IF EXISTS `prtext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prtext` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TNAME` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Unique_Tname` (`TNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prtext`
--

LOCK TABLES `prtext` WRITE;
/*!40000 ALTER TABLE `prtext` DISABLE KEYS */;
INSERT INTO `prtext` VALUES (16,'Account_Number'),(10,'Basic Pay'),(7,'DateofAppointment'),(5,'DateofBirth'),(6,'DateofJoin'),(8,'Designation'),(1,'EmployeeNo'),(4,'Gender'),(15,'Increment Date'),(3,'KnownAs'),(12,'MAXWAGESBASIC'),(13,'MAXWAGESHRA'),(2,'Name'),(14,'PFNUMBER'),(9,'RetirementDate'),(11,'ScaleofPay');
/*!40000 ALTER TABLE `prtext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restore_db`
--

DROP TABLE IF EXISTS `restore_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restore_db` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Db_Name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restore_db`
--

LOCK TABLES `restore_db` WRITE;
/*!40000 ALTER TABLE `restore_db` DISABLE KEYS */;
INSERT INTO `restore_db` VALUES (1,'EMPTYSTRUCT');
/*!40000 ALTER TABLE `restore_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shortcuts`
--

DROP TABLE IF EXISTS `shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shortcuts` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SHORTCUT` varchar(45) NOT NULL DEFAULT '',
  `MODULE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DESCRIPTION` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shortcuts`
--

LOCK TABLES `shortcuts` WRITE;
/*!40000 ALTER TABLE `shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stfpersonal`
--

DROP TABLE IF EXISTS `stfpersonal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stfpersonal` (
  `STAFFID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EMPNO` varchar(50) NOT NULL DEFAULT '',
  `FIRSTNAME` varchar(100) DEFAULT NULL,
  `LASTNAME` varchar(100) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `DATEOFBIRTH` datetime DEFAULT NULL,
  `DATEOFJOIN` datetime DEFAULT NULL,
  `CATEGORY` varchar(100) DEFAULT NULL,
  `RETIREMENTDATE` datetime DEFAULT NULL,
  `KNOWNAS` varchar(100) DEFAULT NULL,
  `LEAVINGDATE` datetime DEFAULT NULL,
  `LEAVEREMARKS` varchar(500) DEFAULT NULL,
  `DEGREE` varchar(100) DEFAULT NULL,
  `DESIGNATION` varchar(100) DEFAULT NULL,
  `DEPARTMENT` varchar(100) DEFAULT NULL,
  `DEPTID` int(10) unsigned DEFAULT NULL,
  `PAYINCM1` int(10) unsigned zerofill DEFAULT NULL,
  `PAYINCM2` int(10) unsigned zerofill DEFAULT NULL,
  `ACCOUNT_NUMBER` varchar(45) DEFAULT NULL,
  `YOS` float DEFAULT NULL,
  PRIMARY KEY (`STAFFID`),
  UNIQUE KEY `UNI_EMPNO` (`EMPNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stfpersonal`
--

LOCK TABLES `stfpersonal` WRITE;
/*!40000 ALTER TABLE `stfpersonal` DISABLE KEYS */;
/*!40000 ALTER TABLE `stfpersonal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stfservice`
--

DROP TABLE IF EXISTS `stfservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stfservice` (
  `SERVICEID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `STAFFID` int(10) unsigned NOT NULL DEFAULT '0',
  `SCALEOFPAY` varchar(100) DEFAULT NULL,
  `REMARKS` varchar(200) DEFAULT NULL,
  `PAY` varchar(50) DEFAULT NULL,
  `DATEOFTERMINATION` datetime DEFAULT NULL,
  `DATEOFAPPOINTMENT` datetime DEFAULT NULL,
  `MAXWAGESBASIC` decimal(15,2) DEFAULT NULL,
  `PFNUMBER` varchar(50) DEFAULT NULL,
  `MAXWAGESHRA` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`SERVICEID`),
  KEY `FK_stfservice_1` (`STAFFID`),
  CONSTRAINT `FK_stfservice_1` FOREIGN KEY (`STAFFID`) REFERENCES `stfpersonal` (`STAFFID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stfservice`
--

LOCK TABLES `stfservice` WRITE;
/*!40000 ALTER TABLE `stfservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `stfservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltest`
--

DROP TABLE IF EXISTS `tbltest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltest` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL DEFAULT '',
  `DOB` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltest`
--

LOCK TABLES `tbltest` WRITE;
/*!40000 ALTER TABLE `tbltest` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tds_booking`
--

DROP TABLE IF EXISTS `tds_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tds_booking` (
  `BOOKING_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BOOKING_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PROJECT_ID` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  `EXPENSE_LEDGER_ID` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  `PARTY_LEDGER_ID` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  `AMOUNT` decimal(15,2) unsigned zerofill NOT NULL DEFAULT '0000000000000.00',
  `VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_DELETED` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1=ACTIVE,0=INACTIVE',
  `DEDUCTEE_TYPE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`BOOKING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_booking`
--

LOCK TABLES `tds_booking` WRITE;
/*!40000 ALTER TABLE `tds_booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `tds_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tds_booking_detail`
--

DROP TABLE IF EXISTS `tds_booking_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tds_booking_detail` (
  `BOOKING_DETAIL_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BOOKING_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NATURE_OF_PAYMENT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ASSESS_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'EXPENSES AMOUNT',
  `IS_TDS_DEDUCTED` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000' COMMENT '1 - DEDUCTED WHILE BOOKING, 0 - DEDUCTED LATER',
  PRIMARY KEY (`BOOKING_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_booking_detail`
--

LOCK TABLES `tds_booking_detail` WRITE;
/*!40000 ALTER TABLE `tds_booking_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tds_booking_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tds_company_deductors`
--

DROP TABLE IF EXISTS `tds_company_deductors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tds_company_deductors` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TAX_DEDUCTION_ACCOUNT_NO` varchar(50) NOT NULL DEFAULT '',
  `HEAD_OFFICE_TAN_NO` varchar(10) NOT NULL DEFAULT '',
  `PAN_NO` varchar(10) NOT NULL DEFAULT '',
  `TAN_REGISTRATION_NO` varchar(50) NOT NULL DEFAULT '',
  `INCOME_TAX_CIRCLE` varchar(50) NOT NULL DEFAULT '',
  `DEDUCTOR_TYPE` varchar(50) NOT NULL DEFAULT '',
  `RESPONSIBLE_PERSON` varchar(50) NOT NULL DEFAULT '',
  `SON_DAUGHTER_OF` varchar(50) NOT NULL DEFAULT '',
  `DESIGNATION` varchar(100) NOT NULL DEFAULT '',
  `FULL_NAME` varchar(100) NOT NULL DEFAULT '',
  `ADDRESS` varchar(100) NOT NULL DEFAULT '',
  `FLAT_NO` varchar(50) NOT NULL DEFAULT '',
  `PREMISES` varchar(50) NOT NULL DEFAULT '',
  `STREET` varchar(50) NOT NULL DEFAULT '',
  `LOCATION` varchar(50) NOT NULL DEFAULT '',
  `DISTRICT` varchar(50) NOT NULL DEFAULT '',
  `STATE` varchar(50) NOT NULL DEFAULT '',
  `PINCODE` varchar(6) NOT NULL DEFAULT '',
  `TELEPHONE_NO` varchar(15) NOT NULL DEFAULT '',
  `EMAIL` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_company_deductors`
--

LOCK TABLES `tds_company_deductors` WRITE;
/*!40000 ALTER TABLE `tds_company_deductors` DISABLE KEYS */;
/*!40000 ALTER TABLE `tds_company_deductors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tds_credtiors_profile`
--

DROP TABLE IF EXISTS `tds_credtiors_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tds_credtiors_profile` (
  `DEDUTEE_TYPE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NATURE_OF_PAYMENT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CREDITORS_PROFILE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(250) DEFAULT NULL,
  `ADDRESS` varchar(250) DEFAULT NULL,
  `STATE_ID` int(10) unsigned DEFAULT NULL,
  `PIN_CODE` varchar(10) DEFAULT NULL,
  `CONTACT_PERSON` varchar(100) DEFAULT NULL,
  `CONTACT_NUMBER` varchar(15) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `LEDGER_ID` int(10) unsigned DEFAULT NULL,
  `IS_BANK_DETAILS` int(10) unsigned DEFAULT NULL,
  `NICK_NAME` varchar(100) DEFAULT NULL,
  `FAVOURING_NAME` varchar(250) DEFAULT NULL,
  `TRANSACTION_TYPE` int(10) unsigned DEFAULT NULL,
  `BANK_NAME` varchar(100) DEFAULT NULL,
  `ACCOUNT_NUMBER` varchar(20) DEFAULT NULL,
  `IFS_CODE` varchar(10) DEFAULT NULL,
  `PAN_NUMBER` varchar(10) DEFAULT NULL,
  `PAN_IT_HOLDER_NAME` varchar(100) DEFAULT NULL,
  `SALES_TAX_NO` varchar(10) DEFAULT NULL,
  `CST_NUMBER` varchar(10) DEFAULT NULL,
  `COUNTRY_ID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`CREDITORS_PROFILE_ID`),
  KEY `FK_TDS_CREDTIORS_PROFILE` (`DEDUTEE_TYPE_ID`),
  KEY `FK_tds_ledger_id` (`LEDGER_ID`),
  CONSTRAINT `FK_tds_ledger_id` FOREIGN KEY (`LEDGER_ID`) REFERENCES `master_ledger` (`LEDGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_credtiors_profile`
--

LOCK TABLES `tds_credtiors_profile` WRITE;
/*!40000 ALTER TABLE `tds_credtiors_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `tds_credtiors_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tds_deductee_type`
--

DROP TABLE IF EXISTS `tds_deductee_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tds_deductee_type` (
  `DEDUCTEE_TYPE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL DEFAULT '',
  `RESIDENTIAL_STATUS` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 - Resident, 1- Non-Resident',
  `DEDUCTEE_TYPE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0- Company, 1- Non-Company',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0= INACTIVE ,1 =ACTIVE',
  PRIMARY KEY (`DEDUCTEE_TYPE_ID`),
  UNIQUE KEY `UNQ-NAME` (`NAME`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_deductee_type`
--

LOCK TABLES `tds_deductee_type` WRITE;
/*!40000 ALTER TABLE `tds_deductee_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tds_deductee_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tds_deduction`
--

DROP TABLE IF EXISTS `tds_deduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tds_deduction` (
  `DEDUCTION_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DEDUCTION_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PROJECT_ID` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  `PARTY_LEDGER_ID` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  `AMOUNT` decimal(15,2) unsigned zerofill NOT NULL DEFAULT '0000000000000.00',
  `VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_DELETED` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1=ACTIVE,0=INACTIVE',
  PRIMARY KEY (`DEDUCTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_deduction`
--

LOCK TABLES `tds_deduction` WRITE;
/*!40000 ALTER TABLE `tds_deduction` DISABLE KEYS */;
/*!40000 ALTER TABLE `tds_deduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tds_deduction_detail`
--

DROP TABLE IF EXISTS `tds_deduction_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tds_deduction_detail` (
  `DEDUCTION_DETAIL_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DEDUCTION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BOOKING_DETAIL_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TAX_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TAX_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`DEDUCTION_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_deduction_detail`
--

LOCK TABLES `tds_deduction_detail` WRITE;
/*!40000 ALTER TABLE `tds_deduction_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tds_deduction_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tds_dedutee_type`
--

DROP TABLE IF EXISTS `tds_dedutee_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tds_dedutee_type` (
  `DEDUTEE_TYPE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL DEFAULT '',
  `RESIDENTIAL_STATUS` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 - Resident, 1- Non-Resident',
  `DETUTEE_TYPE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0- Company, 1- Non-Company',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0= INACTIVE ,1 =ACTIVE',
  PRIMARY KEY (`DEDUTEE_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_dedutee_type`
--

LOCK TABLES `tds_dedutee_type` WRITE;
/*!40000 ALTER TABLE `tds_dedutee_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tds_dedutee_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tds_duty_taxtype`
--

DROP TABLE IF EXISTS `tds_duty_taxtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tds_duty_taxtype` (
  `TDS_DUTY_TAXTYPE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TAX_TYPE_NAME` varchar(50) NOT NULL DEFAULT '0',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1=ACTIVE,0=INACTIVE',
  PRIMARY KEY (`TDS_DUTY_TAXTYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_duty_taxtype`
--

LOCK TABLES `tds_duty_taxtype` WRITE;
/*!40000 ALTER TABLE `tds_duty_taxtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `tds_duty_taxtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tds_nature_payment`
--

DROP TABLE IF EXISTS `tds_nature_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tds_nature_payment` (
  `NATURE_PAY_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(150) NOT NULL DEFAULT '',
  `SECTION` varchar(7) DEFAULT NULL,
  `SECTION_NAME` varchar(100) DEFAULT NULL,
  `PAYMENT_CODE` varchar(7) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(400) DEFAULT NULL,
  `TDS_SECTION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1=ACTIVE,0=INACTIVE',
  PRIMARY KEY (`NATURE_PAY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_nature_payment`
--

LOCK TABLES `tds_nature_payment` WRITE;
/*!40000 ALTER TABLE `tds_nature_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tds_nature_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tds_party_payment`
--

DROP TABLE IF EXISTS `tds_party_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tds_party_payment` (
  `PARTY_PAYMENT_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PAYMENT_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PARTY_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PAYMENT_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_DELETED` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '0-Deleted,1-Active',
  PRIMARY KEY (`PARTY_PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_party_payment`
--

LOCK TABLES `tds_party_payment` WRITE;
/*!40000 ALTER TABLE `tds_party_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tds_party_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tds_party_payment_detail`
--

DROP TABLE IF EXISTS `tds_party_payment_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tds_party_payment_detail` (
  `PARTY_PAYMENT_DETAIL_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PARTY_PAYMENT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BOOKING_DETAIL_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DEDUCTION_DETAIL_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PAID_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `IS_ADVANCE_PAID` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  `IS_ADVANCE_ADJUSTED` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  PRIMARY KEY (`PARTY_PAYMENT_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_party_payment_detail`
--

LOCK TABLES `tds_party_payment_detail` WRITE;
/*!40000 ALTER TABLE `tds_party_payment_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tds_party_payment_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tds_payment`
--

DROP TABLE IF EXISTS `tds_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tds_payment` (
  `TDS_PAYMENT_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PAYMENT_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PAYMENT_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_DELETED` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`TDS_PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_payment`
--

LOCK TABLES `tds_payment` WRITE;
/*!40000 ALTER TABLE `tds_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tds_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tds_payment_detail`
--

DROP TABLE IF EXISTS `tds_payment_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tds_payment_detail` (
  `TDS_PAYMENT_DETAIL_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TDS_PAYMENT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DEDUCTION_DETAIL_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PAID_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `IS_ADVANCE_PAID` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  `IS_ADVANCE_ADJUSTED` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  `LEDGER_ID` int(11) DEFAULT '0',
  `FLAG` int(11) DEFAULT '0',
  PRIMARY KEY (`TDS_PAYMENT_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_payment_detail`
--

LOCK TABLES `tds_payment_detail` WRITE;
/*!40000 ALTER TABLE `tds_payment_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tds_payment_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tds_policy`
--

DROP TABLE IF EXISTS `tds_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tds_policy` (
  `TDS_POLICY_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TDS_DEDUCTEE_TYPE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TDS_NATURE_PAYMENT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `APPLICABLE_FROM` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`TDS_POLICY_ID`),
  KEY `FK_TDS_DEDUTEE_DETAILS_PAYMENT_ID` (`TDS_NATURE_PAYMENT_ID`),
  KEY `FK_TDS_DEDUTEE_DETAILS_DEDUTEE_TYPE_ID` (`TDS_DEDUCTEE_TYPE_ID`) USING BTREE,
  CONSTRAINT `FK_tds_policy_DEDUCTEE_TYPE_ID` FOREIGN KEY (`TDS_DEDUCTEE_TYPE_ID`) REFERENCES `tds_deductee_type` (`DEDUCTEE_TYPE_ID`),
  CONSTRAINT `FK_tds_policy_NATURE_PAYMENT_ID` FOREIGN KEY (`TDS_NATURE_PAYMENT_ID`) REFERENCES `tds_nature_payment` (`NATURE_PAY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_policy`
--

LOCK TABLES `tds_policy` WRITE;
/*!40000 ALTER TABLE `tds_policy` DISABLE KEYS */;
/*!40000 ALTER TABLE `tds_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tds_section`
--

DROP TABLE IF EXISTS `tds_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tds_section` (
  `TDS_SECTION_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CODE` varchar(45) NOT NULL DEFAULT '',
  `SECTION_NAME` varchar(100) NOT NULL DEFAULT '',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1=ACTIVE,0=INACTIVE',
  PRIMARY KEY (`TDS_SECTION_ID`),
  UNIQUE KEY `Index_CODE` (`CODE`) USING HASH,
  UNIQUE KEY `Index_SECTION_NAME` (`SECTION_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_section`
--

LOCK TABLES `tds_section` WRITE;
/*!40000 ALTER TABLE `tds_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `tds_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tds_tax_rate`
--

DROP TABLE IF EXISTS `tds_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tds_tax_rate` (
  `TAX_RATE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TDS_POLICY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TDS_RATE` decimal(10,2) NOT NULL DEFAULT '0.00',
  `TDS_EXEMPTION_LIMIT` decimal(10,2) NOT NULL DEFAULT '0.00',
  `TDS_TAX_TYPE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`TAX_RATE_ID`),
  KEY `FK_TDS_POLICY_ID` (`TDS_POLICY_ID`),
  KEY `FK_TAX_TYPE_ID` (`TDS_TAX_TYPE_ID`),
  CONSTRAINT `FK_tds_tax_rate_POLICY_ID` FOREIGN KEY (`TDS_POLICY_ID`) REFERENCES `tds_policy` (`TDS_POLICY_ID`),
  CONSTRAINT `FK_tds_tax_rate_TAX_TYPE_ID` FOREIGN KEY (`TDS_TAX_TYPE_ID`) REFERENCES `tds_duty_taxtype` (`TDS_DUTY_TAXTYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_tax_rate`
--

LOCK TABLES `tds_tax_rate` WRITE;
/*!40000 ALTER TABLE `tds_tax_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `tds_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trouble_ticket`
--

DROP TABLE IF EXISTS `trouble_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trouble_ticket` (
  `TICKET_ID` int(10) unsigned DEFAULT NULL,
  `SUBJECT` varchar(250) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(1000) NOT NULL DEFAULT '',
  `PRIORITY` int(10) unsigned DEFAULT NULL COMMENT '1- High 2- Medium 3- Low',
  `POSTED_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `COMPLETED_DATE` datetime DEFAULT NULL,
  `ATTACH_FILE_NAME` varchar(100) DEFAULT NULL,
  `POSTED_BY` int(10) unsigned NOT NULL DEFAULT '0',
  `REPLIED_TICKET_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `USER_NAME` varchar(45) DEFAULT NULL,
  `PHYSICAL_FILE_NAME` varchar(45) DEFAULT NULL,
  `STATUS` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_BRANCH_TICKET` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trouble_ticket`
--

LOCK TABLES `trouble_ticket` WRITE;
/*!40000 ALTER TABLE `trouble_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `trouble_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `USER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FIRSTNAME` varchar(100) NOT NULL DEFAULT '',
  `LASTNAME` varchar(100) DEFAULT NULL,
  `USER_NAME` varchar(100) NOT NULL DEFAULT '',
  `PASSWORD` varchar(100) NOT NULL DEFAULT '',
  `NAME` varchar(150) DEFAULT NULL,
  `GENDER` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 0-Male,1-Female,2 -Others',
  `ADDRESS` varchar(300) DEFAULT NULL,
  `CONTACT_NO` varchar(50) DEFAULT NULL,
  `EMAIL_ID` varchar(100) DEFAULT NULL,
  `USER_PHOTO` longblob,
  `ROLE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '1',
  `CREATED_BY` varchar(100) NOT NULL DEFAULT '',
  `CREATED_ON` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `MODIFIED_BY` varchar(100) NOT NULL DEFAULT '',
  `MODIFIED_ON` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `NOTES` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `USER_NAME` (`USER_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'Admin','Admin','admin','1uHL2oMM9bq8iOYovzJfbQ==','Admin',0,NULL,NULL,NULL,NULL,1,1,'','0000-00-00 00:00:00','','0000-00-00 00:00:00',NULL),(36,'',NULL,'Supervisor','Supervisor','Supervisor',0,NULL,NULL,NULL,NULL,0,1,'','0000-00-00 00:00:00','','0000-00-00 00:00:00',NULL),(37,'',NULL,'bishop','zZoS^mtA','bishop',0,NULL,NULL,NULL,NULL,0,1,'','0000-00-00 00:00:00','','0000-00-00 00:00:00',NULL),(38,'',NULL,'accountant','n@zS];','accountant',0,NULL,NULL,NULL,NULL,0,1,'','0000-00-00 00:00:00','','0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_project`
--

DROP TABLE IF EXISTS `user_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_project` (
  `ROLE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ROLE_ID`,`PROJECT_ID`),
  KEY `FK_user_project_Project_id` (`PROJECT_ID`),
  CONSTRAINT `FK_user_project_PROJECT_ID` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`),
  CONSTRAINT `FK_user_project_Role_id` FOREIGN KEY (`ROLE_ID`) REFERENCES `user_role` (`USERROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_project`
--

LOCK TABLES `user_project` WRITE;
/*!40000 ALTER TABLE `user_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_rights`
--

DROP TABLE IF EXISTS `user_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_rights` (
  `USER_ROLE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ACTIVITY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `FK_user_rights_UserRole` (`USER_ROLE_ID`),
  KEY `FK_user_rights_ActivityId` (`ACTIVITY_ID`),
  CONSTRAINT `FK_user_rights_UserRole` FOREIGN KEY (`USER_ROLE_ID`) REFERENCES `user_role` (`USERROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_rights`
--

LOCK TABLES `user_rights` WRITE;
/*!40000 ALTER TABLE `user_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `USERROLE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `USERROLE` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`USERROLE_ID`),
  UNIQUE KEY `USERROLE` (`USERROLE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'Admin'),(2,'Supervisor');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `usr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usr_code` varchar(70) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `stat` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_cc_trans`
--

DROP TABLE IF EXISTS `voucher_cc_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_cc_trans` (
  `VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `COST_CENTRE_TABLE` varchar(30) DEFAULT NULL,
  `COST_CENTRE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `SEQUENCE_NO` int(10) unsigned NOT NULL DEFAULT '0',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`VOUCHER_ID`,`SEQUENCE_NO`,`BRANCH_ID`,`LOCATION_ID`),
  KEY `FK_VOUCHER_COST_CENTRE_ID` (`COST_CENTRE_ID`),
  KEY `FK_voucher_cost_centre_voucher_ID` (`VOUCHER_ID`),
  KEY `FK_voucher_cc_trans_3` (`LEDGER_ID`),
  CONSTRAINT `FK_voucher_cc_trans_VOUCHER_ID` FOREIGN KEY (`VOUCHER_ID`) REFERENCES `voucher_master_trans` (`VOUCHER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_cc_trans`
--

LOCK TABLES `voucher_cc_trans` WRITE;
/*!40000 ALTER TABLE `voucher_cc_trans` DISABLE KEYS */;
INSERT INTO `voucher_cc_trans` VALUES (3474,4826,'0LDR4826',3671,3180.00,0,0,0),(3481,4889,'0LDR4889',3708,16930.00,0,0,0),(3483,4988,'0LDR4988',3718,9000.00,0,0,0),(3491,4873,'0LDR4873',3689,10000.00,0,0,0),(3492,4873,'0LDR4873',3687,10000.00,0,0,0),(3500,4826,'0LDR4826',3673,2500.00,0,0,0),(3501,4873,'0LDR4873',3702,20000.00,0,0,0),(3509,4812,'0LDR4812',3672,50000.00,0,0,0),(3510,4812,'0LDR4812',3672,50000.00,0,0,0),(3513,4987,'0LDR4987',3629,27155.00,0,0,0),(3517,4873,'0LDR4873',3709,25000.00,0,0,0),(3519,4815,'0LDR4815',3710,10000.00,0,0,0),(3521,4889,'0LDR4889',3708,3700.00,0,0,0),(3523,4826,'0LDR4826',3671,2870.00,0,0,0),(3529,4826,'0LDR4826',3671,19428.00,0,0,0),(3537,4826,'0LDR4826',3671,2000.00,0,0,0),(3538,4826,'0LDR4826',3671,1810.00,0,0,0),(3539,4992,'0LDR4992',3514,392130.00,0,0,0),(3542,4874,'0LDR4874',3580,5000.00,0,0,0),(3545,4826,'0LDR4826',3671,180.00,0,0,0),(3546,4843,'0LDR4843',3687,116.00,0,0,0),(3552,4826,'0LDR4826',3671,800.00,0,0,0),(3553,4826,'0LDR4826',3671,55.00,0,0,0),(3554,4826,'0LDR4826',3671,484.00,0,0,0),(3555,4873,'0LDR4873',3687,10000.00,0,0,0),(3556,4812,'0LDR4812',3671,2484.00,0,0,0),(3557,4812,'0LDR4812',3671,225.00,0,0,0),(3567,4826,'0LDR4826',3671,11000.00,0,0,0),(3571,4805,'0LDR4805',3624,100.00,0,0,0),(3572,4805,'0LDR4805',3580,100.00,0,0,0),(3574,4889,'0LDR4889',3708,4753.00,0,0,0),(3577,4826,'0LDR4826',3671,570.00,0,0,0),(3578,4826,'0LDR4826',3673,5000.00,0,0,0),(3579,4826,'0LDR4826',3671,180.00,0,0,0),(3581,4826,'0LDR4826',3672,9000.00,0,0,0),(3584,4874,'0LDR4874',3614,100000.00,0,0,0),(3589,4889,'0LDR4889',3708,363072.00,0,0,0),(3598,4826,'0LDR4826',3675,513.00,0,0,0),(3602,4988,'0LDR4988',3718,109445.00,0,0,0),(3603,4992,'0LDR4992',3720,57640.00,0,0,0),(3604,4987,'0LDR4987',3651,57640.00,0,0,0),(3606,4987,'0LDR4987',3538,34584.00,0,0,0),(3607,4989,'0LDR4989',3534,57640.00,0,0,0),(3608,4988,'0LDR4988',3688,199410.00,0,0,0),(3612,4988,'0LDR4988',3721,8565.00,0,0,0),(3613,4985,'0LDR4985',3722,1772.00,0,0,0),(3614,4985,'0LDR4985',3723,3987.00,0,0,0),(3615,4985,'0LDR4985',3724,1240.40,0,0,0),(3616,4985,'0LDR4985',3686,2658.00,0,0,0),(3617,4987,'0LDR4987',3577,443000.00,0,0,0),(3619,4985,'0LDR4985',3725,464000.00,0,0,0),(3621,4985,'0LDR4985',3685,55112.50,0,0,0),(3622,4985,'0LDR4985',3722,88180.00,0,0,0),(3623,4985,'0LDR4985',3723,52908.00,0,0,0),(3624,4985,'0LDR4985',3724,52908.00,0,0,0),(3625,4985,'0LDR4985',3726,41334.37,0,0,0),(3626,4985,'0LDR4985',3727,23147.25,0,0,0),(3627,4985,'0LDR4985',3728,30311.88,0,0,0),(3628,4985,'0LDR4985',3729,43538.88,0,0,0),(3629,4985,'0LDR4985',3730,49380.80,0,0,0),(3630,4985,'0LDR4985',3731,44751.35,0,0,0),(3631,4985,'0LDR4985',3732,36704.92,0,0,0),(3633,4985,'0LDR4985',3723,689.25,0,0,0),(3634,4985,'0LDR4985',3730,2757.00,0,0,0),(3636,4987,'0LDR4987',3557,158886.00,0,0,0),(3637,4988,'0LDR4988',3733,3493849.00,0,0,0),(3638,4985,'0LDR4985',3685,57734.20,0,0,0),(3639,4985,'0LDR4985',3722,90920.00,0,0,0),(3640,4985,'0LDR4985',3723,54552.00,0,0,0),(3641,4985,'0LDR4985',3724,55461.20,0,0,0),(3642,4985,'0LDR4985',3730,50915.20,0,0,0),(3643,4985,'0LDR4985',3726,42618.75,0,0,0),(3644,4985,'0LDR4985',3731,45460.00,0,0,0),(3645,4985,'0LDR4985',3727,23866.50,0,0,0),(3646,4985,'0LDR4985',3732,36936.25,0,0,0),(3647,4985,'0LDR4985',3686,53301.85,0,0,0),(3648,4985,'0LDR4985',3728,31253.75,0,0,0),(3649,4985,'0LDR4985',3729,44891.75,0,0,0),(3650,4992,'0LDR4992',3734,79555.00,0,0,0),(3651,4987,'0LDR4987',3661,68190.00,0,0,0),(3653,4987,'0LDR4987',3541,136045.00,0,0,0),(3654,4987,'0LDR4987',3541,193421.00,0,0,0),(3656,4873,'0LDR4873',3687,5000.00,0,0,0),(3657,4985,'0LDR4985',3686,20000.00,0,0,0),(3658,4826,'0LDR4826',3671,1820.00,0,0,0),(3659,4873,'0LDR4873',3695,50000.00,0,0,0),(3660,4992,'0LDR4992',3735,566410.00,0,0,0),(3665,4873,'0LDR4873',3709,25000.00,0,0,0),(3677,4826,'0LDR4826',3671,2525.00,0,0,0),(3678,4826,'0LDR4826',3671,2310.00,0,0,0),(3679,4873,'0LDR4873',3687,7000.00,0,0,0),(3683,4826,'0LDR4826',3671,650.00,0,0,0),(3685,4985,'0LDR4985',3685,150000.00,0,0,0),(3689,4873,'0LDR4873',3689,10000.00,0,0,0),(3698,4873,'0LDR4873',3687,5000.00,0,0,0),(3702,4835,'0LDR4835',3687,330.00,0,0,0),(3705,4835,'0LDR4835',3682,1675.00,0,0,0),(3732,4826,'0LDR4826',3671,160.00,0,0,0),(3733,4812,'0LDR4812',3671,110.00,0,0,0),(3734,4826,'0LDR4826',3675,156.00,0,0,0),(3746,4826,'0LDR4826',3671,2295.00,0,0,0),(3758,4987,'0LDR4987',3557,200000.00,0,0,0),(3759,4873,'0LDR4873',3709,50000.00,0,0,0),(3760,4873,'0LDR4873',3709,6000.00,0,0,0),(3763,4834,'0LDR4834',3634,6000.00,0,0,0),(3772,4873,'0LDR4873',3709,4000.00,0,0,0),(3778,4873,'0LDR4873',3687,10000.00,0,0,0),(3780,4826,'0LDR4826',3671,11000.00,0,0,0),(3784,4815,'0LDR4815',3710,10000.00,0,0,0),(3785,4985,'0LDR4985',3686,15000.00,0,0,0),(3788,4826,'0LDR4826',3671,3785.00,0,0,0),(3801,4985,'0LDR4985',3686,78271.00,0,0,0),(3802,4985,'0LDR4985',3686,40000.00,0,0,0),(3803,4985,'0LDR4985',3685,150000.00,0,0,0),(3805,4873,'0LDR4873',3677,25000.00,0,0,0),(3806,4987,'0LDR4987',3592,100000.00,0,0,0),(3807,4815,'0LDR4815',3718,10000.00,0,0,0),(3817,4873,'0LDR4873',3687,20000.00,0,0,0),(3821,4826,'0LDR4826',3675,2500.00,0,0,0),(3826,4988,'0LDR4988',3689,2500.00,0,0,0),(3838,4826,'0LDR4826',3673,2500.00,0,0,0),(3840,4826,'0LDR4826',3671,22000.00,0,0,0),(3841,4985,'0LDR4985',3686,51254.63,0,0,0),(3842,4826,'0LDR4826',3673,3270.00,0,0,0),(3854,4874,'0LDR4874',3631,300000.00,0,0,0),(3866,4826,'0LDR4826',3672,2500.00,0,0,0),(3870,4873,'0LDR4873',3687,5000.00,0,0,0),(3874,4812,'0LDR4812',3669,200000.00,0,0,0),(3876,4812,'0LDR4812',3672,250000.00,0,0,0),(3878,4812,'0LDR4812',3717,10500.00,0,0,0),(3880,4812,'0LDR4812',3717,13359.00,0,0,0),(3893,4826,'0LDR4826',3671,490.00,0,0,0),(3894,4868,'0LDR4868',3736,10000.00,0,0,0),(3895,4826,'0LDR4826',3673,10000.00,0,0,0),(3896,4826,'0LDR4826',3673,5000.00,0,0,0),(3897,4826,'0LDR4826',3673,15000.00,0,0,0),(3898,4826,'0LDR4826',3673,10000.00,0,0,0),(3899,4826,'0LDR4826',3673,2500.00,0,0,0),(3901,4801,'0LDR4801',3650,300.00,0,0,0),(3902,4801,'0LDR4801',3620,400.00,0,0,0),(3903,4801,'0LDR4801',3617,150.00,0,0,0),(3904,4801,'0LDR4801',3555,310.00,0,0,0),(3905,4801,'0LDR4801',3611,50.00,0,0,0),(3906,4801,'0LDR4801',3616,50.00,0,0,0),(3907,4801,'0LDR4801',3551,50.00,0,0,0),(3908,4801,'0LDR4801',3588,457.00,0,0,0),(3909,4801,'0LDR4801',3624,650.00,0,0,0),(3910,4801,'0LDR4801',3580,100.00,0,0,0),(3911,4801,'0LDR4801',3572,175.00,0,0,0),(3912,4801,'0LDR4801',3546,150.00,0,0,0),(3913,4801,'0LDR4801',3551,850.00,0,0,0),(3914,4801,'0LDR4801',3628,100.00,0,0,0),(3915,4801,'0LDR4801',3563,724.00,0,0,0),(3916,4801,'0LDR4801',3576,248.00,0,0,0),(3917,4801,'0LDR4801',3547,100.00,0,0,0),(3918,4801,'0LDR4801',3562,200.00,0,0,0),(3919,4801,'0LDR4801',3632,1000.00,0,0,0),(3920,4801,'0LDR4801',3636,100.00,0,0,0),(3922,4987,'0LDR4987',3592,100000.00,0,0,0),(3923,4801,'0LDR4801',3637,260.00,0,0,0),(3924,4801,'0LDR4801',3615,750.00,0,0,0),(3925,4801,'0LDR4801',3646,165.00,0,0,0),(3926,4801,'0LDR4801',3560,150.00,0,0,0),(3927,4801,'0LDR4801',3629,300.00,0,0,0),(3928,4801,'0LDR4801',3593,1943.00,0,0,0),(3929,4801,'0LDR4801',3605,385.00,0,0,0),(3930,4801,'0LDR4801',3630,275.00,0,0,0),(3937,4826,'0LDR4826',3671,2310.00,0,0,0),(3941,4873,'0LDR4873',3689,10000.00,0,0,0),(3942,4988,'0LDR4988',3718,36093.00,0,0,0),(3943,4985,'0LDR4985',3686,20000.00,0,0,0),(3945,4826,'0LDR4826',3673,2500.00,0,0,0),(3946,4826,'0LDR4826',3673,5500.00,0,0,0),(3947,4826,'0LDR4826',3675,1600.00,0,0,0),(3949,4988,'0LDR4988',3688,199410.00,0,0,0),(3950,4985,'0LDR4985',3723,59443.50,0,0,0),(3951,4985,'0LDR4985',3732,59268.02,0,0,0),(3952,4985,'0LDR4985',3731,44751.35,0,0,0),(3954,4826,'0LDR4826',3671,18000.00,0,0,0),(3955,4826,'0LDR4826',3671,3750.00,0,0,0),(3958,4826,'0LDR4826',3671,1700.00,0,0,0),(3962,4873,'0LDR4873',3709,50000.00,0,0,0),(3963,4873,'0LDR4873',3709,75000.00,0,0,0),(3964,4985,'0LDR4985',3725,200000.00,0,0,0),(3965,4985,'0LDR4985',3722,89704.95,0,0,0),(3966,4985,'0LDR4985',3726,43948.57,0,0,0),(3967,4987,'0LDR4987',3577,100000.00,0,0,0),(3968,4987,'0LDR4987',3538,34584.00,0,0,0),(3969,4985,'0LDR4985',3730,52212.85,0,0,0),(3970,4873,'0LDR4873',3711,25000.00,0,0,0),(3971,4985,'0LDR4985',3729,43538.88,0,0,0),(3972,4992,'0LDR4992',3720,57640.00,0,0,0),(3976,4826,'0LDR4826',3671,200.00,0,0,0),(3980,4985,'0LDR4985',3728,30311.88,0,0,0);
/*!40000 ALTER TABLE `voucher_cc_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_denomination_trans`
--

DROP TABLE IF EXISTS `voucher_denomination_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_denomination_trans` (
  `VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SEQUENCE_NO` int(10) unsigned NOT NULL DEFAULT '0',
  `DENOMINATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AMOUNT` decimal(13,2) unsigned NOT NULL DEFAULT '0.00',
  `BRANCH_ID` varchar(45) NOT NULL DEFAULT '',
  `COUNT` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_denomination_trans`
--

LOCK TABLES `voucher_denomination_trans` WRITE;
/*!40000 ALTER TABLE `voucher_denomination_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher_denomination_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_fd_interest`
--

DROP TABLE IF EXISTS `voucher_fd_interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_fd_interest` (
  `FD_VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Fd Voucher',
  `FD_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FD_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Fd Ledger Id',
  `BK_INT_VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Bank Interest voucher',
  `BK_INT_LEDGER_ID` varchar(45) NOT NULL DEFAULT '' COMMENT 'Bank Interest Ledger',
  PRIMARY KEY (`FD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_fd_interest`
--

LOCK TABLES `voucher_fd_interest` WRITE;
/*!40000 ALTER TABLE `voucher_fd_interest` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher_fd_interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_master_trans`
--

DROP TABLE IF EXISTS `voucher_master_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_master_trans` (
  `VOUCHER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `VOUCHER_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VOUCHER_NO` varchar(25) DEFAULT NULL,
  `VOUCHER_TYPE` varchar(2) DEFAULT NULL COMMENT 'RC -Receipts,PY -Payments,CN -Contra ,JR -Journal',
  `VOUCHER_SUB_TYPE` varchar(3) NOT NULL DEFAULT 'GN',
  `DONOR_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PURPOSE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CONTRIBUTION_TYPE` varchar(1) NOT NULL DEFAULT 'N' COMMENT 'NO,F-FIRST,S-SECOND/SUBSEQUENT\r\nDEFAULT (N)\r\n',
  `CONTRIBUTION_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `CURRENCY_COUNTRY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `EXCHANGE_RATE` decimal(15,2) NOT NULL DEFAULT '0.00',
  `EXCHANGE_COUNTRY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NARRATION` varchar(500) DEFAULT NULL,
  `STATUS` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'DEFAULT(1)\r\n0- INACTIVE/CANCELLED\r\n1-ACTIVE\r\n',
  `CREATED_ON` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `MODIFIED_ON` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CREATED_BY` int(10) unsigned NOT NULL DEFAULT '0',
  `MODIFIED_BY` int(10) unsigned NOT NULL DEFAULT '0',
  `CALCULATED_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ACTUAL_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `NAME_ADDRESS` varchar(100) DEFAULT NULL,
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CREATED_BY_NAME` varchar(50) NOT NULL DEFAULT '',
  `MODIFIED_BY_NAME` varchar(50) NOT NULL DEFAULT '',
  `CLIENT_REFERENCE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CLIENT_CODE` varchar(15) DEFAULT '',
  PRIMARY KEY (`VOUCHER_ID`,`BRANCH_ID`),
  KEY `FK_VOUCHER_MASTER_PROJECT_ID` (`VOUCHER_DATE`,`PROJECT_ID`) USING BTREE,
  KEY `FK_voucher_master_trans_PROJECT_ID` (`PROJECT_ID`,`VOUCHER_DATE`,`VOUCHER_TYPE`) USING BTREE,
  CONSTRAINT `FK_voucher_master_trans_PROJECT_ID` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3983 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_master_trans`
--

LOCK TABLES `voucher_master_trans` WRITE;
/*!40000 ALTER TABLE `voucher_master_trans` DISABLE KEYS */;
INSERT INTO `voucher_master_trans` VALUES (3471,'2006-04-01 00:00:00',70,'1','PY','GN',0,0,'N',0.00,0,0.00,0,'Marriage Asistance',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3472,'2006-04-01 00:00:00',70,'2','PY','GN',0,0,'N',0.00,0,0.00,0,'Medical Help',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3473,'2006-04-01 00:00:00',70,'3','PY','GN',0,0,'N',0.00,0,0.00,0,'Cooly',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3474,'2006-04-01 00:00:00',70,'4','PY','GN',0,0,'N',0.00,0,0.00,0,'Coolies  St. Thomas Mount, Mananthavady',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3475,'2006-04-03 00:00:00',72,'1','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3476,'2006-04-03 00:00:00',72,'1','PY','GN',0,0,'N',0.00,0,0.00,0,'Electrical Work',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3477,'2006-04-03 00:00:00',70,'14','PY','GN',0,0,'N',0.00,0,0.00,0,'Motor Repair',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3478,'2006-04-03 00:00:00',70,'11','PY','GN',0,0,'N',0.00,0,0.00,0,'Vegetable, Cake, Oil',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3479,'2006-04-03 00:00:00',70,'10','PY','GN',0,0,'N',0.00,0,0.00,0,'Electrical Repair',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3480,'2006-04-03 00:00:00',72,'2','PY','GN',0,0,'N',0.00,0,0.00,0,'10 April to 15 May',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3481,'2006-04-03 00:00:00',72,'3','PY','GN',0,0,'N',0.00,0,0.00,0,'Cement',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3482,'2006-04-03 00:00:00',72,'4','PY','GN',0,0,'N',0.00,0,0.00,0,'Clamp, etc',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3483,'2006-04-03 00:00:00',72,'5','PY','GN',0,0,'N',0.00,0,0.00,0,'Jeevadharu For Construction',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3484,'2006-04-03 00:00:00',70,'12','PY','GN',0,0,'N',0.00,0,0.00,0,'Purchase of Mass Wine 400 bottles at Rs 55',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3485,'2006-04-03 00:00:00',72,'6','PY','GN',0,0,'N',0.00,0,0.00,0,'Medical Help',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3486,'2006-04-03 00:00:00',72,'7','PY','GN',0,0,'N',0.00,0,0.00,0,'Animal Husbandry - Cattle Feed',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3487,'2006-04-03 00:00:00',72,'8','PY','GN',0,0,'N',0.00,0,0.00,0,'Purchase of Fruits',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3488,'2006-04-03 00:00:00',70,'13','PY','GN',0,0,'N',0.00,0,0.00,0,'Purchase of Stamps and Inlands Covers',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3489,'2006-04-03 00:00:00',72,'9','PY','GN',0,0,'N',0.00,0,0.00,0,'Purchase of Ice-cream',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3490,'2006-04-04 00:00:00',70,'2','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3491,'2006-04-04 00:00:00',72,'10','PY','GN',0,0,'N',0.00,0,0.00,0,'Samaritan Bhavan, Mananthavady, Daily Espenses',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3492,'2006-04-04 00:00:00',72,'11','PY','GN',0,0,'N',0.00,0,0.00,0,'Vianney Bhavan, Dwaraka Daily Expenses',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3493,'2006-04-04 00:00:00',70,'15','PY','GN',0,0,'N',0.00,0,0.00,0,'Flower Reeth to Bp Vallopilly',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3494,'2006-04-04 00:00:00',70,'16','PY','GN',0,0,'N',0.00,0,0.00,0,'Loan to PPF A/c 189/92',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3495,'2006-04-04 00:00:00',70,'18','PY','GN',0,0,'N',0.00,0,0.00,0,'Mess Expense',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3496,'2006-04-04 00:00:00',72,'12','PY','GN',0,0,'N',0.00,0,0.00,0,'Petrol KL-12 5811',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3497,'2006-04-04 00:00:00',72,'13','PY','GN',0,0,'N',0.00,0,0.00,0,'Washing',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3498,'2006-04-04 00:00:00',72,'14','PY','GN',0,0,'N',0.00,0,0.00,0,'Purchase of A/C Book',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3499,'2006-04-04 00:00:00',72,'15','PY','GN',0,0,'N',0.00,0,0.00,0,'Given to Thomas',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3500,'2006-04-04 00:00:00',70,'17','PY','GN',0,0,'N',0.00,0,0.00,0,'Salary to Supervisor - Mr. Thangachan',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3501,'2006-04-05 00:00:00',72,'16','PY','GN',0,0,'N',0.00,0,0.00,0,'Vocation Bureau- Fr. Tomy Mangalathil',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3502,'2006-04-05 00:00:00',70,'21','PY','GN',0,0,'N',0.00,0,0.00,0,'Purchase of Stamp & Inland Convers',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3503,'2006-04-05 00:00:00',72,'17','PY','GN',0,0,'N',0.00,0,0.00,0,'TA to Mangalore - Bro. Jaison Kalliyath',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3504,'2006-04-05 00:00:00',72,'18','PY','GN',0,0,'N',0.00,0,0.00,0,'Given to Babu & Parameshwaran',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3505,'2006-04-05 00:00:00',72,'19','PY','GN',0,0,'N',0.00,0,0.00,0,'Reg. Post to Fr. Kallumkamakkal',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3506,'2006-04-05 00:00:00',72,'20','PY','GN',0,0,'N',0.00,0,0.00,0,'Paid to Cable TV Network',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3507,'2006-04-06 00:00:00',70,'4','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3508,'2006-04-06 00:00:00',70,'5','CN','GN',0,0,'N',0.00,0,0.00,0,'6/74 CSB',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3509,'2006-04-06 00:00:00',70,'88','RC','GN',0,0,'N',0.00,0,0.00,0,'Agriculture Income from Woodland Estate',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3510,'2006-04-06 00:00:00',70,'89','RC','GN',0,0,'N',0.00,0,0.00,0,'Agriculture Income from Vianney Bhavan Estate - Kartikulam',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3511,'2006-04-06 00:00:00',70,'23','PY','GN',0,0,'N',0.00,0,0.00,0,'Ice Cream',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3512,'2006-04-06 00:00:00',70,'24','PY','GN',0,0,'N',0.00,0,0.00,0,'Purchase of Mass Wine for Bishop House',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3513,'2006-04-07 00:00:00',72,'21','PY','GN',0,0,'N',0.00,0,0.00,0,'Seethamount Parish',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3514,'2006-04-07 00:00:00',72,'22','PY','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3515,'2006-04-07 00:00:00',72,'23','PY','GN',0,0,'N',0.00,0,0.00,0,'Given to Krishnan',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3516,'2006-04-08 00:00:00',72,'24','PY','GN',0,0,'N',0.00,0,0.00,0,'Major Seminarians Gathering',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3517,'2006-04-08 00:00:00',72,'25','PY','GN',0,0,'N',0.00,0,0.00,0,'Daily Exp. Given to Mount Mary College',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3518,'2006-04-08 00:00:00',72,'26','PY','GN',0,0,'N',0.00,0,0.00,0,'Postage',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3519,'2006-04-08 00:00:00',72,'27','PY','GN',0,0,'N',0.00,0,0.00,0,'Jyothi Vikas, Honnamanakatte',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3520,'2006-04-08 00:00:00',70,'8','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3521,'2006-04-08 00:00:00',70,'32','PY','GN',0,0,'N',0.00,0,0.00,0,'Given to Dwaraka Building for Electrical Work',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3522,'2006-04-08 00:00:00',72,'28','PY','GN',0,0,'N',0.00,0,0.00,0,'Fruits',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3523,'2006-04-08 00:00:00',70,'33','PY','GN',0,0,'N',0.00,0,0.00,0,'St. Thomas Mount - Wages given',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3524,'2006-04-08 00:00:00',72,'29','PY','GN',0,0,'N',0.00,0,0.00,0,'Reg. Post',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3525,'2006-04-10 00:00:00',72,'30','PY','GN',0,0,'N',0.00,0,0.00,0,'ITC, Dwaraka - Computer Table',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3526,'2006-04-10 00:00:00',72,'31','PY','GN',0,0,'N',0.00,0,0.00,0,'Texas Computers - Office Computerisation',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3527,'2006-04-10 00:00:00',72,'2','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3528,'2006-04-10 00:00:00',70,'39','PY','GN',0,0,'N',0.00,0,0.00,0,'De Paul Bording - JCB Work',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3529,'2006-04-10 00:00:00',72,'32','PY','GN',0,0,'N',0.00,0,0.00,0,'St Thomas Mount - JCB Work',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3530,'2006-04-10 00:00:00',72,'33','PY','GN',0,0,'N',0.00,0,0.00,0,'Charity paid to Ravi',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3531,'2006-04-10 00:00:00',72,'34','PY','GN',0,0,'N',0.00,0,0.00,0,'Fruits',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3532,'2006-04-10 00:00:00',72,'35','PY','GN',0,0,'N',0.00,0,0.00,0,'Chrism Bottles',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3533,'2006-04-10 00:00:00',72,'36','PY','GN',0,0,'N',0.00,0,0.00,0,'Stationary - Refills',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3534,'2006-04-10 00:00:00',72,'37','PY','GN',0,0,'N',0.00,0,0.00,0,'Fuel KL 12 B 4938',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3535,'2006-04-12 00:00:00',72,'38','PY','GN',0,0,'N',0.00,0,0.00,0,'Painting - Bishop`s House',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3536,'2006-04-12 00:00:00',72,'3','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3537,'2006-04-12 00:00:00',72,'39','PY','GN',0,0,'N',0.00,0,0.00,0,'St Thomas Mount - Gift to Workers',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3538,'2006-04-12 00:00:00',72,'40','PY','GN',0,0,'N',0.00,0,0.00,0,'St Thomas Mount - Wages',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3539,'2006-04-12 00:00:00',72,'41','PY','GN',0,0,'N',0.00,0,0.00,0,'MCBS Fathers, Shimoga',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3540,'2006-04-12 00:00:00',72,'42','PY','GN',0,0,'N',0.00,0,0.00,0,'Deepika - Demise of Mar Vallopilly',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3541,'2006-04-12 00:00:00',72,'4','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3542,'2006-04-12 00:00:00',72,'43','PY','GN',0,0,'N',0.00,0,0.00,0,'Donation Transfered to Mangalam',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3543,'2006-04-12 00:00:00',72,'44','PY','GN',0,0,'N',0.00,0,0.00,0,'TA to reach Pastoral Centre',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3544,'2006-04-12 00:00:00',72,'45','PY','GN',0,0,'N',0.00,0,0.00,0,'Registered Post',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3545,'2006-04-12 00:00:00',70,'43','PY','GN',0,0,'N',0.00,0,0.00,0,'Taxi charges',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3546,'2006-04-12 00:00:00',70,'44','PY','GN',0,0,'N',0.00,0,0.00,0,'Building Tax, Vianney Bhavan',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3547,'2006-04-12 00:00:00',70,'45','PY','GN',0,0,'N',0.00,0,0.00,0,'Stationary, Gum & Refill',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3548,'2006-04-12 00:00:00',70,'46','PY','GN',0,0,'N',0.00,0,0.00,0,'Fruits, Grocery',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3549,'2006-04-11 00:00:00',70,'42','PY','GN',0,0,'N',0.00,0,0.00,0,'Indian Express, Mangalam',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3550,'2006-04-02 00:00:00',70,'9','PY','GN',0,0,'N',0.00,0,0.00,0,'Tciket fee for Orchastra to Major Seminarians Gathering',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3551,'2006-04-02 00:00:00',70,'8','PY','GN',0,0,'N',0.00,0,0.00,0,'Honorarium - Major Seminarians` Workshop',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3552,'2006-04-07 00:00:00',70,'26','PY','GN',0,0,'N',0.00,0,0.00,0,'Equipments, St Thomas Mount',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3553,'2006-04-12 00:00:00',70,'47','PY','GN',0,0,'N',0.00,0,0.00,0,'Fertilizers, St Thomas Mount',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3554,'2006-04-12 00:00:00',72,'46','PY','GN',0,0,'N',0.00,0,0.00,0,'St. Thomas Mount, Mananthavady- Easter Gift to Sebastian',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3555,'2006-04-13 00:00:00',72,'47','PY','GN',0,0,'N',0.00,0,0.00,0,'Vianney Bhavan, Day to day Expenses',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3556,'2006-04-13 00:00:00',70,'294','RC','GN',0,0,'N',0.00,0,0.00,0,'St Thomas Mount, Sale of Rubber',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3557,'2006-04-13 00:00:00',70,'295','RC','GN',0,0,'N',0.00,0,0.00,0,'St Thomas Mount, Sale of Coconut',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3558,'2006-04-15 00:00:00',72,'49','PY','GN',0,0,'N',0.00,0,0.00,0,'KL 12 B 4938 - Vehicle Maintenance fuel',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3559,'2006-04-15 00:00:00',72,'50','PY','GN',0,0,'N',0.00,0,0.00,0,'Postage - Stamp',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3560,'2006-04-12 00:00:00',70,'48','PY','GN',0,0,'N',0.00,0,0.00,0,'Stationary items, Decreation paper',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3561,'2006-04-15 00:00:00',72,'51','PY','GN',0,0,'N',0.00,0,0.00,0,'Mess - Pork',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3562,'2006-04-17 00:00:00',72,'56','PY','GN',0,0,'N',0.00,0,0.00,0,'Stationery Rubber',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3563,'2006-04-17 00:00:00',72,'54','PY','GN',0,0,'N',0.00,0,0.00,0,'Charity Mary Puzhavayal',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3564,'2006-04-17 00:00:00',72,'53','PY','GN',0,0,'N',0.00,0,0.00,0,'Vehicle Maintenance fuel',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3565,'2006-04-17 00:00:00',70,'58','PY','GN',0,0,'N',0.00,0,0.00,0,'Electrical repaer Renil',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3566,'2006-04-17 00:00:00',70,'59','PY','GN',0,0,'N',0.00,0,0.00,0,'Mess Toddy',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3567,'2006-04-18 00:00:00',70,'66','PY','GN',0,0,'N',0.00,0,0.00,0,'Purchase Cow Dung',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3568,'2006-04-17 00:00:00',70,'60','PY','GN',0,0,'N',0.00,0,0.00,0,'Charity Sunish kottiyoor',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3569,'2006-04-17 00:00:00',70,'61','PY','GN',0,0,'N',0.00,0,0.00,0,'Vianney Bhavan Electrical repair',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3570,'2006-04-17 00:00:00',70,'62','PY','GN',0,0,'N',0.00,0,0.00,0,'Electrical Work - Motor Repaer',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3571,'2006-04-12 00:00:00',70,'243','RC','GN',0,0,'N',0.00,0,0.00,0,'Puthuserykadavu - Collection of Comunication Media M.R # 307',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3572,'2006-04-12 00:00:00',70,'244','RC','GN',0,0,'N',0.00,0,0.00,0,'Mangalam - Collection of Comunication Media M.R # 308',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3573,'2006-05-06 00:00:00',72,'21','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3574,'2006-04-17 00:00:00',70,'63','PY','GN',0,0,'N',0.00,0,0.00,0,'Electrical Work C/o Renil',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3575,'2006-04-17 00:00:00',70,'64','PY','GN',0,0,'N',0.00,0,0.00,0,'Easter Gift to Varies Persons',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3576,'2006-04-17 00:00:00',70,'65','PY','GN',0,0,'N',0.00,0,0.00,0,'Easter Gift to Mr Thomas  Cook BH',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3577,'2006-04-12 00:00:00',70,'49','PY','GN',0,0,'N',0.00,0,0.00,0,'St. Thomas Mount, Mananthavady Coolie & Gift to over time Workers',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3578,'2006-04-16 00:00:00',70,'56','PY','GN',0,0,'N',0.00,0,0.00,0,'Green Peak Estate Kalpetta Salary to Mr Thankachan',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3579,'2006-04-16 00:00:00',72,'52','PY','GN',0,0,'N',0.00,0,0.00,0,'St. Thomas Mount, Mananthavady Coolie to Workers',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3580,'2006-04-17 00:00:00',72,'55','PY','GN',0,0,'N',0.00,0,0.00,0,'Animal Husbandry - Medicine',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3581,'2006-04-19 00:00:00',70,'74','PY','GN',0,0,'N',0.00,0,0.00,0,'Woodlands Estate, Kartikulam Sent off exp -  Fr Paul',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3582,'2006-04-19 00:00:00',70,'75','PY','GN',0,0,'N',0.00,0,0.00,0,'Stationary exp Purchase Chart Paper',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3583,'2006-04-19 00:00:00',70,'76','PY','GN',0,0,'N',0.00,0,0.00,0,'Gift to Fr Paul Kartikulam Send Off',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3584,'2006-04-19 00:00:00',70,'77','PY','GN',0,0,'N',0.00,0,0.00,0,'Pattanikoop Church  For purchase of Land',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3585,'2006-04-20 00:00:00',70,'79','PY','GN',0,0,'N',0.00,0,0.00,0,'Electricity Charge - Three Bill',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3586,'2006-04-20 00:00:00',70,'78','PY','GN',0,0,'N',0.00,0,0.00,0,'Phone Charge  Cell',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3587,'2006-04-18 00:00:00',70,'67','PY','GN',0,0,'N',0.00,0,0.00,0,'Animal Husbendry  - Medicine',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3588,'2006-04-18 00:00:00',70,'68','PY','GN',0,0,'N',0.00,0,0.00,0,'Purchase Host',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3589,'2006-04-20 00:00:00',72,'57','PY','GN',0,0,'N',0.00,0,0.00,0,'Building Dwaraka (Alphonsa Shoping Complex) C/o PP traders',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3590,'2006-04-18 00:00:00',70,'69','PY','GN',0,0,'N',0.00,0,0.00,0,'Stationary Items - Soap',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3591,'2006-04-18 00:00:00',70,'70','PY','GN',0,0,'N',0.00,0,0.00,0,'Various Persons',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3592,'2006-04-18 00:00:00',70,'71','PY','GN',0,0,'N',0.00,0,0.00,0,'Mess _ Fish, Vegitable',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3593,'2006-04-18 00:00:00',70,'72','PY','GN',0,0,'N',0.00,0,0.00,0,'Stationary Washing Soap',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3594,'2006-04-20 00:00:00',70,'80','PY','GN',0,0,'N',0.00,0,0.00,0,'Purchase of mass wine',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3595,'2006-04-20 00:00:00',70,'81','PY','GN',0,0,'N',0.00,0,0.00,0,'Purchase of Cake',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3596,'2006-04-21 00:00:00',70,'84','PY','GN',0,0,'N',0.00,0,0.00,0,'Gift to UDF Committee',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3597,'2006-04-21 00:00:00',70,'85','PY','GN',0,0,'N',0.00,0,0.00,0,'Achappam',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3598,'2006-04-21 00:00:00',70,'86','PY','GN',0,0,'N',0.00,0,0.00,0,'Mary Matha, Ondayangadi Agricultural purpose',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3599,'2006-04-03 00:00:00',70,'1','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3600,'2006-04-25 00:00:00',72,'1','RC','GN',3598,61,'F',50.00,5,44.55,5,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,99257.40,2228.00,NULL,0,0,'','',0,''),(3601,'2006-04-25 00:00:00',72,'2','RC','GN',3598,61,'F',100.00,5,44.55,5,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,198470.25,4455.00,NULL,0,0,'','',0,''),(3602,'2006-04-27 00:00:00',72,'3','RC','GN',3599,58,'F',1969.50,10,55.57,10,'Jeevadaru, Hand Post',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,6081858.65,109445.00,NULL,0,0,'','',0,''),(3603,'2006-05-18 00:00:00',72,'22','RC','GN',3601,59,'F',1000.00,5,57.64,5,'WWA Chithragiri -Out of Rs.224796/-',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,3322369.60,57640.00,NULL,0,0,'','',0,''),(3604,'2006-05-18 00:00:00',72,'23','RC','GN',3601,20,'F',1000.00,5,57.64,5,'Vythiri - Out of Rs.224796/-',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,3322369.60,57640.00,NULL,0,0,'','',0,''),(3605,'2006-05-18 00:00:00',72,'24','RC','GN',3601,61,'F',300.00,5,57.64,5,'Out of Rs.224796/-',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,996710.88,17292.00,NULL,0,0,'','',0,''),(3606,'2006-05-18 00:00:00',72,'25','RC','GN',3601,20,'F',600.00,5,57.64,5,'Coonoor for organ out of Rs.224796/-',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1993421.76,34584.00,NULL,0,0,'','',0,''),(3607,'2006-05-18 00:00:00',72,'26','RC','GN',3601,60,'F',1000.00,5,57.64,5,'Chulliyana for nursing students out of Rs.224796/-',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,3322369.60,57640.00,NULL,0,0,'','',0,''),(3608,'2006-05-20 00:00:00',72,'28','RC','GN',3602,58,'F',0.00,5,1.00,5,'Legal Aid Centre, Mananthavady',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,199410.00,199410.00,NULL,0,0,'','',0,''),(3609,'2006-05-29 00:00:00',72,'29','RC','GN',3598,61,'F',1250.00,5,57.89,5,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,4189094.07,72363.00,NULL,0,0,'','',0,''),(3610,'2006-05-29 00:00:00',72,'30','RC','GN',3604,60,'F',600.00,5,57.10,5,'Out of Rs.68520/-',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1956246.00,34260.00,NULL,0,0,'','',0,''),(3611,'2006-05-29 00:00:00',72,'31','RC','GN',3603,60,'F',600.00,5,57.10,5,'Out of Rs.34260',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1956246.00,34260.00,NULL,0,0,'','',0,''),(3612,'2006-05-29 00:00:00',72,'32','RC','GN',3605,58,'F',150.00,5,57.10,5,'Students Education Fund',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,489061.50,8565.00,NULL,0,0,'','',0,''),(3613,'2006-05-29 00:00:00',72,'33','RC','GN',3600,30,'S',40.00,1,44.30,1,'Emmaus Villa, Out of Rs.452657.40',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,78499.60,1772.00,NULL,0,0,'','',0,''),(3614,'2006-05-29 00:00:00',72,'34','RC','GN',3600,30,'S',0.00,1,1.00,1,'St.Josephs Mtdy Out of Rs.452657.40',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,3987.00,3987.00,NULL,0,0,'','',0,''),(3615,'2006-05-29 00:00:00',72,'35','RC','GN',3600,30,'S',0.00,1,0.00,1,'SH Childrens Home Kottiyoor, Out of Rs.452657.40',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,1240.40,NULL,0,0,'','',0,''),(3616,'2006-05-29 00:00:00',72,'36','RC','GN',3600,30,'S',0.00,1,0.00,1,'Santhinilayam, Kunjome , Out of Rs.452657.40',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,2658.00,NULL,0,0,'','',0,''),(3617,'2006-05-29 00:00:00',72,'37','RC','GN',3600,20,'S',10000.00,1,44.30,1,'Makkiyad, Out of Rs.452657.40',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,19624900.00,443000.00,NULL,0,0,'','',0,''),(3618,'2006-06-26 00:00:00',72,'1','RC','GN',3606,27,'F',0.00,5,0.00,5,'Vianny bhavan',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,2008741.52,NULL,0,0,'','',0,''),(3619,'2006-06-28 00:00:00',72,'2','RC','GN',3607,30,'F',0.00,5,1.00,5,'Jayamatha Kartikulam',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,464000.00,464000.00,NULL,0,0,'','',0,''),(3620,'2006-07-04 00:00:00',72,'1','RC','GN',3608,61,'F',2300.00,5,58.60,5,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,7898108.00,134780.00,NULL,0,0,'','',0,''),(3621,'2006-05-04 00:00:00',72,'1','RC','GN',3600,30,'S',0.00,1,0.00,1,'Boy`s Town Out of Rs.569532.58',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,55112.50,NULL,0,0,'','',0,''),(3622,'2006-05-04 00:00:00',72,'2','RC','GN',3600,30,'S',0.00,1,0.00,1,'Emmaus Villa,Out of Rs.569532.58',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,88180.00,NULL,0,0,'','',0,''),(3623,'2006-05-04 00:00:00',72,'3','RC','GN',3600,30,'S',0.00,1,0.00,1,'St.Josephs Mananthavady,Out of Rs.569532.58',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,52908.00,NULL,0,0,'','',0,''),(3624,'2006-05-04 00:00:00',72,'4','RC','GN',3600,30,'S',0.00,1,0.00,1,'SH Kottiyoor Out of Rs.569532.58',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,52908.00,NULL,0,0,'','',0,''),(3625,'2006-05-04 00:00:00',72,'5','RC','GN',3600,30,'S',0.00,1,0.00,1,'St.Josephs Orphanage, Manmooly Out of Rs.569532.58',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,41334.37,NULL,0,0,'','',0,''),(3626,'2006-05-04 00:00:00',72,'6','RC','GN',3600,30,'S',0.00,1,0.00,1,'Jyothi Balabhavan, NR Pura, Out of Rs.569532.58',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,23147.25,NULL,0,0,'','',0,''),(3627,'2006-05-04 00:00:00',72,'7','RC','GN',3600,30,'S',0.00,1,0.00,1,'Gulabi Childrens Home, Mandya, Out of Rs.569532.58',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,30311.88,NULL,0,0,'','',0,''),(3628,'2006-05-04 00:00:00',72,'8','RC','GN',3600,30,'S',0.00,1,0.00,1,'Fr.Tezass orphanage,Kuttiyamvayal, Out of Rs.569532.58',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,43538.88,NULL,0,0,'','',0,''),(3629,'2006-05-04 00:00:00',72,'9','RC','GN',3600,30,'S',0.00,1,0.00,1,'St.Mary`s Orhanage, Bathery Out of Rs.569532.58',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,49380.80,NULL,0,0,'','',0,''),(3630,'2006-05-04 00:00:00',72,'10','RC','GN',3600,30,'S',0.00,1,0.00,1,'Vimala Balabhavan, Kellur, Out of Rs.569532.58',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,44751.35,NULL,0,0,'','',0,''),(3631,'2006-05-04 00:00:00',72,'11','RC','GN',3600,30,'S',0.00,1,1.00,1,'Goretti Balabhavan, Nadavayal, Out of Rs.569532.58',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,36704.92,36704.92,NULL,0,0,'','',0,''),(3632,'2006-07-04 00:00:00',72,'2','RC','GN',3609,60,'F',500.00,5,58.60,5,'For Seminarians',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1716980.00,29300.00,NULL,0,0,'','',0,''),(3633,'2006-07-04 00:00:00',72,'3','RC','GN',3600,30,'S',0.00,1,0.00,1,'St.Josephs Orphanage, Mananthavady Out of Rs.3446.25',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,689.25,NULL,0,0,'','',0,''),(3634,'2006-07-04 00:00:00',72,'4','RC','GN',3600,30,'S',0.00,1,0.00,1,'St.Mary`s Orhanage, Bathery, Out of Rs.3446.25',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,2757.00,NULL,0,0,'','',0,''),(3635,'2006-07-04 00:00:00',72,'5','RC','GN',3610,60,'F',500.00,11,45.79,11,'Seminarians',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1048362.05,22895.00,NULL,0,0,'','',0,''),(3636,'2006-07-05 00:00:00',72,'6','RC','GN',3611,20,'F',2716.00,4,58.50,4,'Karachamala Drinking Water Project',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,9294831.00,158886.00,NULL,0,0,'','',0,''),(3637,'2006-07-11 00:00:00',72,'7','RC','GN',3613,44,'F',59775.00,4,58.45,4,'Campus ministry',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,204215474.05,3493849.00,NULL,0,0,'','',0,''),(3638,'2006-07-28 00:00:00',72,'8','RC','GN',3600,30,'S',0.00,1,0.00,1,'Boy`s Town, Varayal Out of Rs.735656.45',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,57734.20,NULL,0,0,'','',0,''),(3639,'2006-07-28 00:00:00',72,'9','RC','GN',3600,30,'S',0.00,1,0.00,1,'Emmaus Villa Out of Rs.735656.45',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,90920.00,NULL,0,0,'','',0,''),(3640,'2006-07-28 00:00:00',72,'10','RC','GN',3600,30,'S',0.00,1,0.00,1,'St.Josephs Orphanage, Mananthavady Out of Rs.735656.45',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,54552.00,NULL,0,0,'','',0,''),(3641,'2006-07-28 00:00:00',72,'11','RC','GN',3600,30,'S',0.00,1,0.00,1,'SH Childrens Home, Kottiyoor out of Rs.735656.45',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,55461.20,NULL,0,0,'','',0,''),(3642,'2006-07-28 00:00:00',72,'12','RC','GN',3600,30,'S',0.00,1,0.00,1,'St.Mary`s Orhanage, Bathery out of Rs.735656.45',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,50915.20,NULL,0,0,'','',0,''),(3643,'2006-07-28 00:00:00',72,'13','RC','GN',3600,30,'S',0.00,1,0.00,1,'St.Josephs Ophanage, Manimooly out of Rs.735656.45',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,42618.75,NULL,0,0,'','',0,''),(3644,'2006-07-28 00:00:00',72,'14','RC','GN',3600,30,'S',0.00,1,0.00,1,'Vimala Balabhavan, Kellur out of Rs.735656.45',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,45460.00,NULL,0,0,'','',0,''),(3645,'2006-07-28 00:00:00',72,'15','RC','GN',3600,30,'S',0.00,1,0.00,1,'Jyothi Balabhavan, NR Pura out of Rs.735656.45',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,23866.50,NULL,0,0,'','',0,''),(3646,'2006-07-28 00:00:00',72,'16','RC','GN',3600,30,'S',0.00,1,0.00,1,'Goretti Balabhavan, Nadavayal out of Rs.735656.45',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,36936.25,NULL,0,0,'','',0,''),(3647,'2006-07-28 00:00:00',72,'17','RC','GN',3600,30,'S',0.00,1,0.00,1,'Shanthinilayam, Kunjhome out of Rs.735656.45',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,53301.85,NULL,0,0,'','',0,''),(3648,'2006-07-28 00:00:00',72,'18','RC','GN',3600,30,'S',0.00,1,0.00,1,'Gulabi Childrens Home, Mandya out of Rs.735656.5',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,31253.75,NULL,0,0,'','',0,''),(3649,'2006-07-28 00:00:00',72,'19','RC','GN',3600,30,'S',0.00,1,0.00,1,'Fr.Tezass orphanage,Kuttiyamvayal out of Rs.735656.45',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,44891.75,NULL,0,0,'','',0,''),(3650,'2006-07-28 00:00:00',72,'20','RC','GN',3600,59,'S',0.00,1,0.00,1,'Badravathi Orphanage out of Rs.735656.45',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,79555.00,NULL,0,0,'','',0,''),(3651,'2006-07-28 00:00:00',72,'21','RC','GN',3600,20,'S',0.00,1,0.00,1,'Muthireri out of Rs.735656.45',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,68190.00,NULL,0,0,'','',0,''),(3652,'2006-08-14 00:00:00',72,'1','RC','GN',3608,61,'F',0.00,5,0.00,5,'Fr James Kuttimakkal  Salary',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,1183000.00,NULL,0,0,'','',0,''),(3653,'2006-08-14 00:00:00',72,'2','RC','GN',3598,20,'F',2300.00,5,59.15,5,'Dwaraka Church',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,8047061.75,136045.00,NULL,0,0,'','',0,''),(3654,'2006-08-14 00:00:00',72,'3','RC','GN',3614,20,'F',0.00,5,0.00,5,'Dwaraka Church',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,193421.00,NULL,0,0,'','',0,''),(3655,'2006-08-23 00:00:00',72,'4','RC','GN',3614,61,'F',0.00,5,0.00,5,'Fr Sebastian Kandeth Salary',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,593200.00,NULL,0,0,'','',0,''),(3656,'2006-04-21 00:00:00',72,'58','PY','GN',0,0,'N',0.00,0,0.00,0,'Vianney Bhavan, Dwaraka',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3657,'2006-04-21 00:00:00',72,'59','PY','GN',0,0,'N',0.00,0,0.00,0,'Shanthinilayam, Kunjhome',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3658,'2006-04-22 00:00:00',72,'60','PY','GN',0,0,'N',0.00,0,0.00,0,'St. Thomas Mount, Mananthavady -cooly',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3659,'2006-04-24 00:00:00',72,'61','PY','GN',0,0,'N',0.00,0,0.00,0,'Cherupushpa Mission League',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3660,'2006-05-04 00:00:00',72,'10','PY','GN',0,0,'N',0.00,0,0.00,0,'Badravathi -St.Treasas nursery school',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3661,'2006-04-25 00:00:00',72,'6','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3662,'2006-04-25 00:00:00',72,'62','PY','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3663,'2006-04-25 00:00:00',72,'63','PY','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3664,'2006-04-25 00:00:00',72,'64','PY','GN',0,0,'N',0.00,0,0.00,0,'8+15',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3665,'2006-04-26 00:00:00',72,'65','PY','GN',0,0,'N',0.00,0,0.00,0,'Mount Mary College, Mananthavady',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3666,'2006-04-26 00:00:00',72,'66','PY','GN',0,0,'N',0.00,0,0.00,0,'Office computers',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3667,'2006-04-28 00:00:00',72,'67','PY','GN',0,0,'N',0.00,0,0.00,0,'Salary to Sr.Molly',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3668,'2006-04-28 00:00:00',72,'68','PY','GN',0,0,'N',0.00,0,0.00,0,'Allowance to Fr.Njarlakkatt',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3669,'2006-04-28 00:00:00',72,'69','PY','GN',0,0,'N',0.00,0,0.00,0,'Fr.Jose Kocharakkal',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3670,'2006-04-28 00:00:00',72,'70','PY','GN',0,0,'N',0.00,0,0.00,0,'Fr.Vinu Madathiparambil',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3671,'2006-04-28 00:00:00',72,'71','PY','GN',0,0,'N',0.00,0,0.00,0,'Fr.Garvasis Mattam',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3672,'2006-04-28 00:00:00',72,'72','PY','GN',0,0,'N',0.00,0,0.00,0,'Sr.Neetha',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3673,'2006-04-28 00:00:00',72,'73','PY','GN',0,0,'N',0.00,0,0.00,0,'Fr.Joseph Paruvummel',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3674,'2006-04-28 00:00:00',72,'74','PY','GN',0,0,'N',0.00,0,0.00,0,'Vinoy',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3675,'2006-04-28 00:00:00',72,'75','PY','GN',0,0,'N',0.00,0,0.00,0,'Babu',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3676,'2006-04-28 00:00:00',72,'76','PY','GN',0,0,'N',0.00,0,0.00,0,'Anoop',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3677,'2006-04-28 00:00:00',72,'77','PY','GN',0,0,'N',0.00,0,0.00,0,'St. Thomas Mount, Mananthavady- Coolie',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3678,'2006-04-28 00:00:00',72,'78','PY','GN',0,0,'N',0.00,0,0.00,0,'St. Thomas Mount, Mananthavady- Sebastian',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3679,'2006-04-29 00:00:00',72,'79','PY','GN',0,0,'N',0.00,0,0.00,0,'Vianney Bhavan, Dwaraka',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3680,'2006-04-29 00:00:00',72,'80','PY','GN',0,0,'N',0.00,0,0.00,0,'Death anniversary of Bp.Pothanamuzhy',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3681,'2006-04-14 00:00:00',72,'48','PY','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3682,'2006-04-16 00:00:00',72,'5','CN','GN',0,0,'N',0.00,0,0.00,0,'Reversal of Ch.290785 wrongly entered in previous books',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3683,'2006-04-22 00:00:00',70,'88','PY','GN',0,0,'N',0.00,0,0.00,0,'St. Thomas Mount, Mananthavady',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3684,'2006-04-22 00:00:00',70,'89','PY','GN',0,0,'N',0.00,0,0.00,0,'Alms & Chariti',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3685,'2006-05-01 00:00:00',72,'1','PY','GN',0,0,'N',0.00,0,0.00,0,'Boy`s Town, Varayal',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3686,'2006-05-01 00:00:00',72,'2','PY','GN',0,0,'N',0.00,0,0.00,0,'Electrical work',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3687,'2006-05-01 00:00:00',72,'3','PY','GN',0,0,'N',0.00,0,0.00,0,'Electrical work BH',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3688,'2006-05-01 00:00:00',72,'1','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3689,'2006-05-02 00:00:00',72,'4','PY','GN',0,0,'N',0.00,0,0.00,0,'Samaritan Bhavan, Mananthavady',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3690,'2006-05-03 00:00:00',72,'7','PY','GN',0,0,'N',0.00,0,0.00,0,'Sunny',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3691,'2006-05-03 00:00:00',72,'2','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3692,'2006-05-03 00:00:00',72,'3','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3693,'2006-05-04 00:00:00',72,'11','PY','GN',0,0,'N',0.00,0,0.00,0,'Diocesan day expenses',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3694,'2006-05-02 00:00:00',72,'5','PY','GN',0,0,'N',0.00,0,0.00,0,'Meat etc',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3695,'2006-05-02 00:00:00',72,'6','PY','GN',0,0,'N',0.00,0,0.00,0,'Diocesan day gift 230,530,1014',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3696,'2006-05-03 00:00:00',72,'8','PY','GN',0,0,'N',0.00,0,0.00,0,'Thomas- medical',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3697,'2006-05-03 00:00:00',72,'9','PY','GN',0,0,'N',0.00,0,0.00,0,'Cake',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3698,'2006-05-04 00:00:00',72,'12','PY','GN',0,0,'N',0.00,0,0.00,0,'Vianney Bhavan, Dwaraka Running',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3699,'2006-05-04 00:00:00',72,'13','PY','GN',0,0,'N',0.00,0,0.00,0,'Venu etc',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3700,'2006-05-04 00:00:00',72,'14','PY','GN',0,0,'N',0.00,0,0.00,0,'Chicken etc',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3701,'2006-05-04 00:00:00',72,'15','PY','GN',0,0,'N',0.00,0,0.00,0,'Electrical',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3702,'2006-05-04 00:00:00',72,'16','PY','GN',0,0,'N',0.00,0,0.00,0,'Vianney Bhavan, Dwaraka electrical',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3703,'2006-05-04 00:00:00',72,'17','PY','GN',0,0,'N',0.00,0,0.00,0,'Sunny',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3704,'2006-05-04 00:00:00',72,'18','PY','GN',0,0,'N',0.00,0,0.00,0,'Plastic etc',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3705,'2006-05-04 00:00:00',72,'19','PY','GN',0,0,'N',0.00,0,0.00,0,'Boarding office expenses',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3706,'2006-05-05 00:00:00',72,'20','PY','GN',0,0,'N',0.00,0,0.00,0,'Repair',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3707,'2006-05-05 00:00:00',72,'21','PY','GN',0,0,'N',0.00,0,0.00,0,'Jubilarians',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3708,'2006-05-05 00:00:00',72,'22','PY','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3709,'2006-05-05 00:00:00',72,'23','PY','GN',0,0,'N',0.00,0,0.00,0,'Kerosine',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3710,'2006-05-05 00:00:00',72,'24','PY','GN',0,0,'N',0.00,0,0.00,0,'Cattle feed',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3711,'2006-05-05 00:00:00',72,'25','PY','GN',0,0,'N',0.00,0,0.00,0,'Fish etc',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3712,'2006-05-05 00:00:00',72,'26','PY','GN',0,0,'N',0.00,0,0.00,0,'Anoop',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3713,'2006-05-05 00:00:00',72,'27','PY','GN',0,0,'N',0.00,0,0.00,0,'Baby',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3714,'2006-05-05 00:00:00',72,'28','PY','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3715,'2006-05-04 00:00:00',72,'4','CN','GN',0,0,'N',0.00,0,0.00,0,'Deposited with interest - Rs.4534447',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3716,'2006-05-04 00:00:00',72,'12','RC','GN',0,0,'N',0.00,0,0.00,0,'Deposited with interest - Rs.4534447',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3717,'2006-05-04 00:00:00',72,'5','CN','GN',0,0,'N',0.00,0,0.00,0,'Deposited with interest - Rs.35579',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3718,'2006-05-04 00:00:00',72,'6','CN','GN',0,0,'N',0.00,0,0.00,0,'Deposited with interest - Rs.548219',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3719,'2006-05-04 00:00:00',72,'7','CN','GN',0,0,'N',0.00,0,0.00,0,'Deposited with interest - Rs.94659',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3720,'2006-05-04 00:00:00',72,'8','CN','GN',0,0,'N',0.00,0,0.00,0,'Deposited with interest - Rs.657864',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3721,'2006-05-04 00:00:00',72,'9','CN','GN',0,0,'N',0.00,0,0.00,0,'Deposited with interest - Rs.274110',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3722,'2006-05-04 00:00:00',72,'10','CN','GN',0,0,'N',0.00,0,0.00,0,'Deposited with interest - Rs.212040',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3723,'2006-05-04 00:00:00',72,'11','CN','GN',0,0,'N',0.00,0,0.00,0,'Deposited with interest - Rs.1010230',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3724,'2006-05-04 00:00:00',72,'13','RC','GN',0,0,'N',0.00,0,0.00,0,'Deposited with interest - Rs.35579',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3725,'2006-05-04 00:00:00',72,'14','RC','GN',0,0,'N',0.00,0,0.00,0,'Deposited with interest - Rs.548219',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3726,'2006-05-04 00:00:00',72,'15','RC','GN',0,0,'N',0.00,0,0.00,0,'Deposited with interest - Rs.94659',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3727,'2006-05-04 00:00:00',72,'16','RC','GN',0,0,'N',0.00,0,0.00,0,'Deposited with interest - Rs.657864',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3728,'2006-05-04 00:00:00',72,'17','RC','GN',0,0,'N',0.00,0,0.00,0,'Deposited with interest - Rs.274110',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3729,'2006-05-04 00:00:00',72,'18','RC','GN',0,0,'N',0.00,0,0.00,0,'Deposited with interest - Rs.212040',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3730,'2006-05-04 00:00:00',72,'19','RC','GN',0,0,'N',0.00,0,0.00,0,'Deposited with interest - Rs.1010230',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3731,'2006-04-22 00:00:00',70,'90','PY','GN',0,0,'N',0.00,0,0.00,0,'Stamp purchased',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3732,'2006-04-22 00:00:00',70,'91','PY','GN',0,0,'N',0.00,0,0.00,0,'St. Thomas Mount, Mananthavady Travelling exp.',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3733,'2006-04-22 00:00:00',70,'385','RC','GN',0,0,'N',0.00,0,0.00,0,'St. Thomas Mount, Mananthavady sale of Cocanut',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3734,'2006-04-22 00:00:00',70,'92','PY','GN',0,0,'N',0.00,0,0.00,0,'Mary Matha, Ondayangadi  Jeep fire',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3735,'2006-05-04 00:00:00',72,'12','CN','GN',0,0,'N',0.00,0,0.00,0,'Renewal',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3736,'2006-05-04 00:00:00',72,'13','CN','GN',0,0,'N',0.00,0,0.00,0,'Renewal',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3737,'2006-05-04 00:00:00',72,'14','CN','GN',0,0,'N',0.00,0,0.00,0,'Renewal',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3738,'2006-05-04 00:00:00',72,'15','CN','GN',0,0,'N',0.00,0,0.00,0,'Renewal',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3739,'2006-05-04 00:00:00',72,'16','CN','GN',0,0,'N',0.00,0,0.00,0,'Renewal',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3740,'2006-05-04 00:00:00',72,'17','CN','GN',0,0,'N',0.00,0,0.00,0,'Renewal',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3741,'2006-05-04 00:00:00',72,'18','CN','GN',0,0,'N',0.00,0,0.00,0,'Renewal',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3742,'2006-05-04 00:00:00',72,'19','CN','GN',0,0,'N',0.00,0,0.00,0,'Renewal',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3743,'2006-05-11 00:00:00',72,'22','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3744,'2006-05-11 00:00:00',72,'21','RC','GN',0,0,'N',0.00,0,0.00,0,'Deposited with interest- Rs.79483',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3745,'2006-08-09 00:00:00',70,'2','CN','GN',0,0,'N',0.00,0,0.00,0,'A/C FD-572',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3746,'2006-05-06 00:00:00',72,'34','PY','GN',0,0,'N',0.00,0,0.00,0,'Cooly',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3747,'2006-05-06 00:00:00',72,'35','PY','GN',0,0,'N',0.00,0,0.00,0,'Washing',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3748,'2006-05-05 00:00:00',72,'20','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3749,'2006-05-05 00:00:00',72,'29','PY','GN',0,0,'N',0.00,0,0.00,0,'C/o Fr Vinu Madathiparambil',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3750,'2006-05-07 00:00:00',72,'37','PY','GN',0,0,'N',0.00,0,0.00,0,'Diocesan Day -pipe work, stage',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3751,'2006-05-05 00:00:00',72,'30','PY','GN',0,0,'N',0.00,0,0.00,0,'Ice cream',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3752,'2006-05-05 00:00:00',72,'31','PY','GN',0,0,'N',0.00,0,0.00,0,'Tape etc',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3753,'2006-05-05 00:00:00',72,'32','PY','GN',0,0,'N',0.00,0,0.00,0,'Regd post',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3754,'2006-05-07 00:00:00',72,'38','PY','GN',0,0,'N',0.00,0,0.00,0,'C/o Fr Vinu Madathiparambil',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3755,'2006-05-07 00:00:00',72,'39','PY','GN',0,0,'N',0.00,0,0.00,0,'Babu',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3756,'2006-05-07 00:00:00',72,'40','PY','GN',0,0,'N',0.00,0,0.00,0,'Gift to Brothers for Library work incentives',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3757,'2006-05-07 00:00:00',72,'41','PY','GN',0,0,'N',0.00,0,0.00,0,'Medicine & Service charge',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3758,'2006-05-08 00:00:00',72,'42','PY','GN',0,0,'N',0.00,0,0.00,0,'Karachamala Presbytery Construction',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3759,'2006-05-09 00:00:00',72,'54','PY','GN',0,0,'N',0.00,0,0.00,0,'Mount Mary College, Mananthavady',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3760,'2006-05-08 00:00:00',72,'43','PY','GN',0,0,'N',0.00,0,0.00,0,'Mess fee of Sr.Neetha',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3761,'2006-05-08 00:00:00',72,'44','PY','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3762,'2006-05-08 00:00:00',72,'45','PY','GN',0,0,'N',0.00,0,0.00,0,'Office',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3763,'2006-05-08 00:00:00',72,'46','PY','GN',0,0,'N',0.00,0,0.00,0,'For travelling to Belthangadi  for Transfer  to Father',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3764,'2006-05-08 00:00:00',72,'47','PY','GN',0,0,'N',0.00,0,0.00,0,'Cable',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3765,'2006-05-08 00:00:00',72,'48','PY','GN',0,0,'N',0.00,0,0.00,0,'Soap',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3766,'2006-05-08 00:00:00',72,'49','PY','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3767,'2006-05-08 00:00:00',72,'50','PY','GN',0,0,'N',0.00,0,0.00,0,'Diocesan day- liturgy',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3768,'2006-05-08 00:00:00',72,'51','PY','GN',0,0,'N',0.00,0,0.00,0,'Lissy',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3769,'2006-05-08 00:00:00',72,'52','PY','GN',0,0,'N',0.00,0,0.00,0,'Fruits',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3770,'2006-05-08 00:00:00',72,'53','PY','GN',0,0,'N',0.00,0,0.00,0,'Fruits etc',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3771,'2006-05-09 00:00:00',72,'55','PY','GN',0,0,'N',0.00,0,0.00,0,'Diocesan day -stage',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3772,'2006-05-09 00:00:00',72,'56','PY','GN',0,0,'N',0.00,0,0.00,0,'Mount Mary College, Mananthavady- Seminarians gathering',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3773,'2006-05-09 00:00:00',72,'57','PY','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3774,'2006-05-09 00:00:00',72,'58','PY','GN',0,0,'N',0.00,0,0.00,0,'Diocesan day -Entrance',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3775,'2006-05-09 00:00:00',72,'59','PY','GN',0,0,'N',0.00,0,0.00,0,'Ondayangady -Baby',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3776,'2006-05-10 00:00:00',72,'61','PY','GN',0,0,'N',0.00,0,0.00,0,'Petrol',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3777,'2006-05-10 00:00:00',72,'62','PY','GN',0,0,'N',0.00,0,0.00,0,'Diocesan Day -Liturgy',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3778,'2006-05-11 00:00:00',72,'64','PY','GN',0,0,'N',0.00,0,0.00,0,'Vianney Bhavan, Dwaraka running',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3779,'2006-05-10 00:00:00',72,'63','PY','GN',0,0,'N',0.00,0,0.00,0,'Regd.',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3780,'2006-05-09 00:00:00',72,'60','PY','GN',0,0,'N',0.00,0,0.00,0,'St. Thomas Mount, Mananthavady - Cow dung',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3781,'2006-05-19 00:00:00',72,'23','CN','GN',0,0,'N',0.00,0,0.00,0,'Deposited with interest - Rs.2332972',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3782,'2006-05-19 00:00:00',72,'27','RC','GN',0,0,'N',0.00,0,0.00,0,'Deposited in SB Rs.2332972.00',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3783,'2006-05-11 00:00:00',72,'65','PY','GN',0,0,'N',0.00,0,0.00,0,'Bro.Vathelil',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3784,'2006-05-11 00:00:00',72,'66','PY','GN',0,0,'N',0.00,0,0.00,0,'Jyothi Vikas Centre, Honnamanakatte',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3785,'2006-05-11 00:00:00',72,'67','PY','GN',0,0,'N',0.00,0,0.00,0,'Shanthinilayam, Kunjhome',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3786,'2006-05-12 00:00:00',72,'68','PY','GN',0,0,'N',0.00,0,0.00,0,'Diocesan day - Album',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3787,'2006-05-12 00:00:00',72,'69','PY','GN',0,0,'N',0.00,0,0.00,0,'Fruits etc',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3788,'2006-05-13 00:00:00',72,'70','PY','GN',0,0,'N',0.00,0,0.00,0,'Cooly',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3789,'2006-05-13 00:00:00',72,'71','PY','GN',0,0,'N',0.00,0,0.00,0,'Fruits etc',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3790,'2006-05-16 00:00:00',72,'75','PY','GN',0,0,'N',0.00,0,0.00,0,'Bro. Sujesh',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3791,'2006-05-16 00:00:00',72,'76','PY','GN',0,0,'N',0.00,0,0.00,0,'Cell',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3792,'2006-05-13 00:00:00',72,'72','PY','GN',0,0,'N',0.00,0,0.00,0,'Petrol',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3793,'2006-05-13 00:00:00',72,'73','PY','GN',0,0,'N',0.00,0,0.00,0,'Mathruboomi',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3794,'2006-05-14 00:00:00',72,'74','PY','GN',0,0,'N',0.00,0,0.00,0,'Pork',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3795,'2006-05-06 00:00:00',72,'36','PY','GN',0,0,'N',0.00,0,0.00,0,'Petro;',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3796,'2006-05-17 00:00:00',72,'77','PY','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3797,'2006-05-18 00:00:00',72,'78','PY','GN',0,0,'N',0.00,0,0.00,0,'Diocesan day -light and Sound',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3798,'2006-05-18 00:00:00',72,'79','PY','GN',0,0,'N',0.00,0,0.00,0,'Fr.Saggi Parippanal',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3799,'2006-05-18 00:00:00',72,'80','PY','GN',0,0,'N',0.00,0,0.00,0,'Supervisor',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3800,'2006-05-18 00:00:00',72,'81','PY','GN',0,0,'N',0.00,0,0.00,0,'Supervisor',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3801,'2006-05-20 00:00:00',72,'84','PY','GN',0,0,'N',0.00,0,0.00,0,'Shanthinilayam, Kunjhome',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3802,'2006-05-20 00:00:00',72,'85','PY','GN',0,0,'N',0.00,0,0.00,0,'Shanthinilayam, Kunjhome',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3803,'2006-05-20 00:00:00',72,'86','PY','GN',0,0,'N',0.00,0,0.00,0,'Boy`s Town, Varayal',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3804,'2006-05-20 00:00:00',72,'87','PY','GN',0,0,'N',0.00,0,0.00,0,'Supervisor',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3805,'2006-05-20 00:00:00',72,'88','PY','GN',0,0,'N',0.00,0,0.00,0,'Regional Pastoral Centre, Manimooly',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3806,'2006-05-20 00:00:00',72,'89','PY','GN',0,0,'N',0.00,0,0.00,0,'Munderi Presbytri construction',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3807,'2006-05-25 00:00:00',72,'90','PY','GN',0,0,'N',0.00,0,0.00,0,'Jeevadaru, Hand Post',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3808,'2006-05-26 00:00:00',72,'91','PY','GN',0,0,'N',0.00,0,0.00,0,'Bil',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3809,'2006-05-26 00:00:00',72,'92','PY','GN',0,0,'N',0.00,0,0.00,0,'Fr. Kocharackal',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3810,'2006-05-26 00:00:00',72,'93','PY','GN',0,0,'N',0.00,0,0.00,0,'Deepika',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3811,'2006-05-26 00:00:00',72,'94','PY','GN',0,0,'N',0.00,0,0.00,0,'Fr.Njarlakkatt sent off',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3812,'2006-05-26 00:00:00',72,'95','PY','GN',0,0,'N',0.00,0,0.00,0,'Office (13/5/06)',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3813,'2006-05-31 00:00:00',72,'25','CN','GN',0,0,'N',0.00,0,0.00,0,'Renewed with interest to 81257',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3814,'2006-05-31 00:00:00',72,'38','RC','GN',0,0,'N',0.00,0,0.00,0,'Renewed with interest to 81257',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3815,'2006-05-31 00:00:00',72,'26','CN','GN',0,0,'N',0.00,0,0.00,0,'Renewal of FD Rs.78547',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3816,'2006-05-26 00:00:00',72,'96','PY','GN',0,0,'N',0.00,0,0.00,0,'Fr.Thomas',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3817,'2006-05-27 00:00:00',72,'97','PY','GN',0,0,'N',0.00,0,0.00,0,'Vianney Bhavan, Dwaraka running',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3818,'2006-05-30 00:00:00',72,'24','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3819,'2006-05-18 00:00:00',72,'82','PY','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3820,'2006-05-18 00:00:00',72,'83','PY','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3821,'2006-05-30 00:00:00',72,'98','PY','GN',0,0,'N',0.00,0,0.00,0,'Cooly to bobby Pulikkal (25/05/06)',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3822,'2006-04-22 00:00:00',70,'93','PY','GN',0,0,'N',0.00,0,0.00,0,'Purchase toddy',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3823,'2006-04-22 00:00:00',70,'94','PY','GN',0,0,'N',0.00,0,0.00,0,'Fish,fruits, vegitable etc..',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3824,'2006-04-21 00:00:00',70,'87','PY','GN',0,0,'N',0.00,0,0.00,0,'Soap',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3825,'2006-05-30 00:00:00',72,'99','PY','GN',0,0,'N',0.00,0,0.00,0,'Painting of BH (29/5)',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3826,'2006-05-30 00:00:00',72,'100','PY','GN',0,0,'N',0.00,0,0.00,0,'Samaritan Bhavan, Mananthavady',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3827,'2006-05-31 00:00:00',72,'105','PY','GN',0,0,'N',0.00,0,0.00,0,'C/o Vinoy',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3828,'2006-05-31 00:00:00',72,'106','PY','GN',0,0,'N',0.00,0,0.00,0,'Fuel',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3829,'2006-05-31 00:00:00',72,'107','PY','GN',0,0,'N',0.00,0,0.00,0,'C/O Babu',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3830,'2006-05-30 00:00:00',72,'101','PY','GN',0,0,'N',0.00,0,0.00,0,'Vegitables',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3831,'2006-05-31 00:00:00',72,'108','PY','GN',0,0,'N',0.00,0,0.00,0,'Sunny KP',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3832,'2006-05-31 00:00:00',72,'109','PY','GN',0,0,'N',0.00,0,0.00,0,'Fuel',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3833,'2006-05-30 00:00:00',72,'102','PY','GN',0,0,'N',0.00,0,0.00,0,'Washing Items ,(29/5)',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3834,'2006-05-30 00:00:00',72,'103','PY','GN',0,0,'N',0.00,0,0.00,0,'Fuel',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3835,'2006-05-30 00:00:00',72,'104','PY','GN',0,0,'N',0.00,0,0.00,0,'At Calicut',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3836,'2006-05-31 00:00:00',72,'110','PY','GN',0,0,'N',0.00,0,0.00,0,'Courier',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3837,'2006-05-31 00:00:00',72,'111','PY','GN',0,0,'N',0.00,0,0.00,0,'Fuel',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3838,'2006-05-31 00:00:00',72,'112','PY','GN',0,0,'N',0.00,0,0.00,0,'Coolie (13/5)',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3839,'2006-05-31 00:00:00',72,'113','PY','GN',0,0,'N',0.00,0,0.00,0,'Lorry rent for steel transporting',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3840,'2006-05-05 00:00:00',72,'33','PY','GN',0,0,'N',0.00,0,0.00,0,'St. Thomas Mount, Mananthavady Purchase of cowdung',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3841,'2006-05-04 00:00:00',72,'20','RC','GN',3600,30,'S',0.00,1,0.00,1,'Shanthinilayam, Kunjhome',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,51254.63,NULL,0,0,'','',0,''),(3842,'2006-05-31 00:00:00',72,'114','PY','GN',0,0,'N',0.00,0,0.00,0,'Coolie for workers',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3843,'2006-05-31 00:00:00',72,'115','PY','GN',0,0,'N',0.00,0,0.00,0,'Medicine',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3844,'2006-04-23 00:00:00',70,'97','PY','GN',0,0,'N',0.00,0,0.00,0,'Petrol',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3845,'2006-04-23 00:00:00',70,'98','PY','GN',0,0,'N',0.00,0,0.00,0,'FRF',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3846,'2006-04-24 00:00:00',70,'99','PY','GN',0,0,'N',0.00,0,0.00,0,'Vice postulator cause of Venerable` Kunjachan`',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3847,'2006-04-24 00:00:00',70,'100','PY','GN',0,0,'N',0.00,0,0.00,0,'Course exp ..',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3848,'2006-04-24 00:00:00',70,'17','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3849,'2006-04-24 00:00:00',70,'101','PY','GN',0,0,'N',0.00,0,0.00,0,'Shopping',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3850,'2006-04-24 00:00:00',70,'102','PY','GN',0,0,'N',0.00,0,0.00,0,'Rubberand',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3851,'2006-04-24 00:00:00',70,'103','PY','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3852,'2006-04-24 00:00:00',70,'104','PY','GN',0,0,'N',0.00,0,0.00,0,'Vianney Bhavan regent Bro. Anoop',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3853,'2006-04-25 00:00:00',70,'106','PY','GN',0,0,'N',0.00,0,0.00,0,'Books of Mission policy of our Church',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3854,'2006-04-25 00:00:00',70,'107','PY','GN',0,0,'N',0.00,0,0.00,0,'Sulthan Bathery Land purchase for Moolankavu',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3855,'2006-04-25 00:00:00',70,'108','PY','GN',0,0,'N',0.00,0,0.00,0,'RKG & Fruits',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3856,'2006-04-25 00:00:00',70,'109','PY','GN',0,0,'N',0.00,0,0.00,0,'Regestred post & Phone purchased',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3857,'2006-04-25 00:00:00',70,'110','PY','GN',0,0,'N',0.00,0,0.00,0,'Plastic sheet for office table',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3858,'2006-04-26 00:00:00',70,'115','PY','GN',0,0,'N',0.00,0,0.00,0,'Fish, Vegitable',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3859,'2006-04-25 00:00:00',70,'111','PY','GN',0,0,'N',0.00,0,0.00,0,'Fruits,Icecream, Vegitables',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3860,'2006-04-25 00:00:00',70,'112','PY','GN',0,0,'N',0.00,0,0.00,0,'Medical help for worker Mr. Anoop',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3861,'2006-04-25 00:00:00',70,'113','PY','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3862,'2006-04-26 00:00:00',70,'116','PY','GN',0,0,'N',0.00,0,0.00,0,'Pork',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3863,'2006-04-26 00:00:00',70,'117','PY','GN',0,0,'N',0.00,0,0.00,0,'Fuel KL 12 B 4938',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3864,'2006-04-26 00:00:00',70,'118','PY','GN',0,0,'N',0.00,0,0.00,0,'C/O Bro Bineesh',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3865,'2006-04-27 00:00:00',70,'23','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3866,'2006-04-27 00:00:00',70,'120','PY','GN',0,0,'N',0.00,0,0.00,0,'Woodlands Estate, Kartikulam Supervisor Baby Salary',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3867,'2006-04-26 00:00:00',70,'119','PY','GN',0,0,'N',0.00,0,0.00,0,'Lakhmi , John',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3868,'2006-04-27 00:00:00',70,'121','PY','GN',0,0,'N',0.00,0,0.00,0,'Vegitable, Soup, Fruits etc .',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3869,'2006-04-27 00:00:00',70,'122','PY','GN',0,0,'N',0.00,0,0.00,0,'Soap pody for washing',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3870,'2006-04-27 00:00:00',70,'123','PY','GN',0,0,'N',0.00,0,0.00,0,'Vianney Bhavan, Dwaraka',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3871,'2006-04-27 00:00:00',70,'124','PY','GN',0,0,'N',0.00,0,0.00,0,'Purchase Pril',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3872,'2006-04-28 00:00:00',70,'127','PY','GN',0,0,'N',0.00,0,0.00,0,'FishFruits etc',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3873,'2006-04-28 00:00:00',70,'128','PY','GN',0,0,'N',0.00,0,0.00,0,'Mathrubhoomy',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3874,'2006-04-22 00:00:00',70,'386','RC','GN',0,0,'N',0.00,0,0.00,0,'Jordania, Gandibagilu',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3875,'2006-04-22 00:00:00',70,'15','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3876,'2006-04-24 00:00:00',70,'431','RC','GN',0,0,'N',0.00,0,0.00,0,'Woodlands Estate, Kartikulam',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3877,'2006-04-24 00:00:00',70,'18','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3878,'2006-04-24 00:00:00',70,'432','RC','GN',0,0,'N',0.00,0,0.00,0,'Vianney Bhavan Estate, Dwaraka Advance received - Latex',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3879,'2006-04-24 00:00:00',70,'19','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3880,'2006-04-24 00:00:00',70,'433','RC','GN',0,0,'N',0.00,0,0.00,0,'Vianney Bhavan Estate, Dwaraka Sale of Latex (1/3/06-31/3/06 )',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3881,'2006-04-24 00:00:00',70,'20','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3882,'2006-04-28 00:00:00',70,'531','RC','GN',0,0,'N',0.00,0,0.00,0,'Salary from Fr. Justine Moonnanal',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3883,'2006-04-21 00:00:00',70,'14','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3884,'2006-04-29 00:00:00',70,'130','PY','GN',0,0,'N',0.00,0,0.00,0,'Fuel KL 12 5811',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3885,'2006-04-29 00:00:00',70,'131','PY','GN',0,0,'N',0.00,0,0.00,0,'Fuel KL12B 4938',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3886,'2006-04-09 00:00:00',70,'38','PY','GN',0,0,'N',0.00,0,0.00,0,'Fuel KL 12 3147 C/O Chancellor',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3887,'2006-04-20 00:00:00',70,'82','PY','GN',0,0,'N',0.00,0,0.00,0,'Cake',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3888,'2006-04-30 00:00:00',70,'133','PY','GN',0,0,'N',0.00,0,0.00,0,'Maintenance Work C/O Vinoy',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3889,'2006-04-30 00:00:00',70,'134','PY','GN',0,0,'N',0.00,0,0.00,0,'Fuel C/O Vinoy Joseph',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3890,'2006-04-30 00:00:00',70,'135','PY','GN',0,0,'N',0.00,0,0.00,0,'Pork, Fish , Fruits etc',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3891,'2006-04-30 00:00:00',70,'136','PY','GN',0,0,'N',0.00,0,0.00,0,'Mariyamma',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3892,'2006-04-30 00:00:00',70,'137','PY','GN',0,0,'N',0.00,0,0.00,0,'Cell phone bill',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3893,'2006-04-25 00:00:00',70,'114','PY','GN',0,0,'N',0.00,0,0.00,0,'Mop etc',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3894,'2006-04-10 00:00:00',70,'40','PY','GN',0,0,'N',0.00,0,0.00,0,'Audit Fees Mr Shiju Internal Auditor',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3895,'2006-04-29 00:00:00',70,'132','PY','GN',0,0,'N',0.00,0,0.00,0,'Salary Mr thankachan',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3896,'2006-04-15 00:00:00',70,'54','PY','GN',0,0,'N',0.00,0,0.00,0,'Coolie for Workers',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3897,'2006-04-22 00:00:00',70,'95','PY','GN',0,0,'N',0.00,0,0.00,0,'Coolie for workers',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3898,'2006-04-27 00:00:00',70,'125','PY','GN',0,0,'N',0.00,0,0.00,0,'Greenpeak Estate, Kalpetta Coolie for Workers',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3899,'2006-04-30 00:00:00',70,'138','PY','GN',0,0,'N',0.00,0,0.00,0,'Greenpeak Estate, Kalpetta Salary Thankachan',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3900,'2006-04-30 00:00:00',70,'139','PY','GN',0,0,'N',0.00,0,0.00,0,'Mr. Ragu Rajan',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3901,'2006-04-03 00:00:00',70,'17','RC','GN',0,0,'N',0.00,0,0.00,0,'Collections - Peter`s Pence Vimalagiri  MR#533',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3902,'2006-04-03 00:00:00',70,'18','RC','GN',0,0,'N',0.00,0,0.00,0,'Poroor ,Collections - Peter`s Pence  MR # 534',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3903,'2006-04-05 00:00:00',70,'57','RC','GN',0,0,'N',0.00,0,0.00,0,'Peria Collections - Peter`s  Pence MR # 535',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3904,'2006-04-08 00:00:00',70,'122','RC','GN',0,0,'N',0.00,0,0.00,0,'Kammana Collections - Peter`s Pence MR# 536',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3905,'2006-04-08 00:00:00',70,'123','RC','GN',0,0,'N',0.00,0,0.00,0,'Parlikunnu Collections - Peter`s Pence MR # 537',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3906,'2006-04-10 00:00:00',70,'157','RC','GN',0,0,'N',0.00,0,0.00,0,'Pazhoor Collections - Peter`s Pence MR # 538',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3907,'2006-04-10 00:00:00',70,'158','RC','GN',0,0,'N',0.00,0,0.00,0,'Kallumukku Collections - Peter`s Pence MR # 539',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3908,'2006-04-10 00:00:00',70,'159','RC','GN',0,0,'N',0.00,0,0.00,0,'Meenangadi Collections - Peter`s Pence MR # 540',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3909,'2006-04-12 00:00:00',70,'245','RC','GN',0,0,'N',0.00,0,0.00,0,'Puthusserikkadavu Collections - Peter`s Pence MR # 541',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3910,'2006-04-12 00:00:00',70,'246','RC','GN',0,0,'N',0.00,0,0.00,0,'Mangalam Collections - Peter`s Pence MR # 542',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3911,'2006-04-12 00:00:00',70,'247','RC','GN',0,0,'N',0.00,0,0.00,0,'Kurumani   MR # 543',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3912,'2006-04-19 00:00:00',70,'323','RC','GN',0,0,'N',0.00,0,0.00,0,'Hinkal Collections - Peter`s Pence MR # 544',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3913,'2006-04-22 00:00:00',70,'387','RC','GN',0,0,'N',0.00,0,0.00,0,'Kallumukku Collections - Peter`s Pence MR # 545',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3914,'2006-04-22 00:00:00',70,'388','RC','GN',0,0,'N',0.00,0,0.00,0,'Santhigiri Collections - Peter`s Pence MR # 546',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3915,'2006-04-22 00:00:00',70,'389','RC','GN',0,0,'N',0.00,0,0.00,0,'Kayyuunny Collections - Peter`s Pence MR # 547',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3916,'2006-04-22 00:00:00',70,'390','RC','GN',0,0,'N',0.00,0,0.00,0,'Machikolly Collections - Peter`s Pence MR # 548',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3917,'2006-04-25 00:00:00',70,'459','RC','GN',0,0,'N',0.00,0,0.00,0,'Irulam Collections - Peter`s Pence MR # 549',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3918,'2006-04-25 00:00:00',70,'460','RC','GN',0,0,'N',0.00,0,0.00,0,'Kavummannam Collections - Peter`s Pence MR # 550',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3919,'2006-04-27 00:00:00',70,'509','RC','GN',0,0,'N',0.00,0,0.00,0,'Thalanji Collections - Peter`s Pence MR # 551',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3920,'2006-04-27 00:00:00',70,'510','RC','GN',0,0,'N',0.00,0,0.00,0,'Thelpara Collections - Peter`s Pence MR # 552',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3921,'2006-06-01 00:00:00',72,'1','PY','GN',0,0,'N',0.00,0,0.00,0,'Babu',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3922,'2006-06-01 00:00:00',72,'2','PY','GN',0,0,'N',0.00,0,0.00,0,'Munderi',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3923,'2006-05-08 00:00:00',70,'79','RC','GN',0,0,'N',0.00,0,0.00,0,'Theneri Church MR # 554',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3924,'2006-05-05 00:00:00',70,'41','RC','GN',0,0,'N',0.00,0,0.00,0,'Payyampally MR # 553',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3925,'2006-06-06 00:00:00',70,'32','RC','GN',0,0,'N',0.00,0,0.00,0,'Vanjode Church MR # 555',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3926,'2006-06-26 00:00:00',70,'168','RC','GN',0,0,'N',0.00,0,0.00,0,'Karimbil Church MR # 556',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3927,'2006-06-28 00:00:00',70,'176','RC','GN',0,0,'N',0.00,0,0.00,0,'Seethamount Church MR # 557',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3928,'2006-06-28 00:00:00',70,'177','RC','GN',0,0,'N',0.00,0,0.00,0,'Nadavayal  MR # 558',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3929,'2006-06-28 00:00:00',70,'178','RC','GN',0,0,'N',0.00,0,0.00,0,'Padichira MR # 559',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3930,'2006-06-28 00:00:00',70,'179','RC','GN',0,0,'N',0.00,0,0.00,0,'Sisumala MR # 560',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3931,'2006-06-02 00:00:00',72,'3','PY','GN',0,0,'N',0.00,0,0.00,0,'Fr.Garvasis Mattam',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3932,'2006-06-02 00:00:00',72,'4','PY','GN',0,0,'N',0.00,0,0.00,0,'Fr.Joseph Paruvummel',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3933,'2006-06-02 00:00:00',72,'5','PY','GN',0,0,'N',0.00,0,0.00,0,'Fr.Vinu',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3934,'2006-06-02 00:00:00',72,'6','PY','GN',0,0,'N',0.00,0,0.00,0,'Msgr. George Moolayil',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3935,'2006-06-02 00:00:00',72,'7','PY','GN',0,0,'N',0.00,0,0.00,0,'Vinoy',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3936,'2006-06-02 00:00:00',72,'8','PY','GN',0,0,'N',0.00,0,0.00,0,'Anoop',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3937,'2006-06-02 00:00:00',72,'9','PY','GN',0,0,'N',0.00,0,0.00,0,'St. Thomas Mount, Mananthavady -Sebastian',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3938,'2006-06-02 00:00:00',72,'10','PY','GN',0,0,'N',0.00,0,0.00,0,'Sr.Molly',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3939,'2006-06-02 00:00:00',72,'11','PY','GN',0,0,'N',0.00,0,0.00,0,'Sr. Neetha',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3940,'2006-06-02 00:00:00',72,'12','PY','GN',0,0,'N',0.00,0,0.00,0,'Steel Purchase',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3941,'2006-06-02 00:00:00',72,'13','PY','GN',0,0,'N',0.00,0,0.00,0,'Samarittan Bhavan',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3942,'2006-06-02 00:00:00',72,'14','PY','GN',0,0,'N',0.00,0,0.00,0,'Jeevadharu',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3943,'2006-06-02 00:00:00',72,'15','PY','GN',0,0,'N',0.00,0,0.00,0,'Santhinilayam',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3944,'2006-06-03 00:00:00',72,'1','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3945,'2006-06-03 00:00:00',72,'16','PY','GN',0,0,'N',0.00,0,0.00,0,'Greenpeak Estate, Kalpetta, Salary to  Thankachan',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3946,'2006-06-03 00:00:00',72,'17','PY','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3947,'2006-06-03 00:00:00',72,'18','PY','GN',0,0,'N',0.00,0,0.00,0,'Mary Matha, Ondayangadi, Coolies- Rubber plantation',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3948,'2006-06-06 00:00:00',72,'23','PY','GN',0,0,'N',0.00,0,0.00,0,'Calicut',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3949,'2006-06-05 00:00:00',72,'19','PY','GN',0,0,'N',0.00,0,0.00,0,'Legal Aid Centre, Mananthavady',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3950,'2006-06-05 00:00:00',72,'20','PY','GN',0,0,'N',0.00,0,0.00,0,'St.Josephs Orphanage, Mananthavady, Sr. Elsy',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3951,'2006-06-05 00:00:00',72,'21','PY','GN',0,0,'N',0.00,0,0.00,0,'Goretti Balabhavan, Nadavayal',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3952,'2006-06-05 00:00:00',72,'22','PY','GN',0,0,'N',0.00,0,0.00,0,'Vimala Balabhavan, Kellur',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3953,'2006-06-05 00:00:00',72,'2','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3954,'2006-06-08 00:00:00',70,'50','PY','GN',0,0,'N',0.00,0,0.00,0,'St. Thomas Mount, Mananthavady Rubber Seedlings',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3955,'2006-06-08 00:00:00',72,'32','PY','GN',0,0,'N',0.00,0,0.00,0,'St. Thomas Mount, Mananthavady Lorry Charge',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3956,'2006-06-08 00:00:00',72,'33','PY','GN',0,0,'N',0.00,0,0.00,0,'PG Students',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3957,'2006-06-07 00:00:00',72,'24','PY','GN',0,0,'N',0.00,0,0.00,0,'Cable TV',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3958,'2006-06-12 00:00:00',72,'39','PY','GN',0,0,'N',0.00,0,0.00,0,'Copper sulphate',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3959,'2006-06-14 00:00:00',72,'48','PY','GN',0,0,'N',0.00,0,0.00,0,'Stamp',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3960,'2006-06-07 00:00:00',72,'25','PY','GN',0,0,'N',0.00,0,0.00,0,'Cement',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3961,'2006-06-07 00:00:00',72,'26','PY','GN',0,0,'N',0.00,0,0.00,0,'Cement etc',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3962,'2006-06-07 00:00:00',72,'27','PY','GN',0,0,'N',0.00,0,0.00,0,'Mount Mary College, Mananthavady Construction',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3963,'2006-06-07 00:00:00',72,'28','PY','GN',0,0,'N',0.00,0,0.00,0,'Mount Mary College, Mananthavady Daily exp',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3964,'2006-06-07 00:00:00',72,'29','PY','GN',0,0,'N',0.00,0,0.00,0,'Jayamatha Orphanage, Kartikulam Daily exp',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3965,'2006-06-07 00:00:00',72,'30','PY','GN',0,0,'N',0.00,0,0.00,0,'Emmaus Villa',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3966,'2006-06-07 00:00:00',72,'31','PY','GN',0,0,'N',0.00,0,0.00,0,'St.Josephs Ophanage, Manimooly',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3967,'2006-06-08 00:00:00',72,'34','PY','GN',0,0,'N',0.00,0,0.00,0,'Makkiyad Presbytry Construction',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3968,'2006-06-08 00:00:00',72,'35','PY','GN',0,0,'N',0.00,0,0.00,0,'Coonnoor -Organ',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3969,'2006-06-08 00:00:00',72,'36','PY','GN',0,0,'N',0.00,0,0.00,0,'St.Mary`s Orhanage, Bathery',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3970,'2006-06-12 00:00:00',72,'40','PY','GN',0,0,'N',0.00,0,0.00,0,'Family Year 2006 - 2007',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3971,'2006-06-12 00:00:00',72,'41','PY','GN',0,0,'N',0.00,0,0.00,0,'Fr.Tezass orphanage,Kuttiyamvayal',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3972,'2006-06-15 00:00:00',72,'50','PY','GN',0,0,'N',0.00,0,0.00,0,'WWA Chithragiri',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3973,'2006-06-15 00:00:00',72,'3','CN','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3974,'2006-06-20 00:00:00',72,'64','PY','GN',0,0,'N',0.00,0,0.00,0,'Fish',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3975,'2006-06-20 00:00:00',72,'65','PY','GN',0,0,'N',0.00,0,0.00,0,'Registred',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3976,'2006-06-19 00:00:00',72,'61','PY','GN',0,0,'N',0.00,0,0.00,0,'St. Thomas Mount, Mananthavady Gift to workers',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3977,'2006-06-15 00:00:00',72,'51','PY','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3978,'2006-06-15 00:00:00',72,'52','PY','GN',0,0,'N',0.00,0,0.00,0,'Fr Thomas Mannoor',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3979,'2006-06-15 00:00:00',72,'53','PY','GN',0,0,'N',0.00,0,0.00,0,'Br Vibin',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3980,'2006-06-16 00:00:00',72,'54','PY','GN',0,0,'N',0.00,0,0.00,0,'Gulabi Childrens Home, Mandya',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3981,'2006-06-16 00:00:00',72,'55','PY','GN',0,0,'N',0.00,0,0.00,0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,''),(3982,'2006-06-17 00:00:00',72,'57','PY','GN',0,0,'N',0.00,0,0.00,0,'Tress work',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,0.00,0.00,NULL,0,0,'','',0,'');
/*!40000 ALTER TABLE `voucher_master_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_number_format`
--

DROP TABLE IF EXISTS `voucher_number_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_number_format` (
  `NUMBER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NUMBER_FORMAT_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1-Voucher Number,2-Receipt Number',
  `LAST_VOUCHER_NUMBER` varchar(45) NOT NULL DEFAULT '',
  `RUNNING_NUMBER` int(10) unsigned NOT NULL DEFAULT '0',
  `NUMBER_FORMAT` varchar(25) NOT NULL DEFAULT '',
  `MONTH` varchar(45) NOT NULL DEFAULT '' COMMENT 'Applicable from',
  `VOUCHER_MONTH` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Current Voucher Month',
  `DURATION` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Reset Month',
  `VOUCHER_YEAR` int(10) unsigned NOT NULL DEFAULT '0',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`NUMBER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_number_format`
--

LOCK TABLES `voucher_number_format` WRITE;
/*!40000 ALTER TABLE `voucher_number_format` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher_number_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_trans`
--

DROP TABLE IF EXISTS `voucher_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_trans` (
  `VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'VOUCHER_ID,SEQUENCE_NO(PK)',
  `SEQUENCE_NO` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `TRANS_MODE` varchar(2) DEFAULT NULL COMMENT 'CR-CREDIT\r\nDR-DEBIT\r\n',
  `LEDGER_FLAG` varchar(2) DEFAULT NULL COMMENT 'C-CASH\r\nB-BANK\r\nF-FIXED DEPOSIT\r\nJ-JOURNAL\r\nCA-CASH (CASH LEDGER TRANS)\r\nBK-BANK(BANK LEDGER TRANS) \r\nFD-FIXED DEPOSIT(FD LEDGER TRANS)\r\n',
  `CHEQUE_NO` varchar(25) DEFAULT NULL,
  `MATERIALIZED_ON` datetime DEFAULT NULL COMMENT 'CLEARED/RECONCILED',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'DEFAULT(1)\r\n0- INACTIVE/CANCELLED\r\n1-ACTIVE\r\n',
  `NARRATION` varchar(500) DEFAULT NULL,
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`VOUCHER_ID`,`SEQUENCE_NO`,`BRANCH_ID`),
  KEY `LEDGER_ID` (`LEDGER_ID`),
  CONSTRAINT `FK_voucher_trans_LEDGER_ID` FOREIGN KEY (`LEDGER_ID`) REFERENCES `master_ledger` (`LEDGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_trans`
--

LOCK TABLES `voucher_trans` WRITE;
/*!40000 ALTER TABLE `voucher_trans` DISABLE KEYS */;
INSERT INTO `voucher_trans` VALUES (3471,1,4824,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3471,2,1,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3472,1,4867,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(3472,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(3473,1,4876,130.00,'DR',NULL,'',NULL,1,NULL,0,0),(3473,2,1,130.00,'CR',NULL,'',NULL,1,NULL,0,0),(3474,1,4826,3180.00,'DR',NULL,'',NULL,1,NULL,0,0),(3474,2,1,3180.00,'CR',NULL,'',NULL,1,NULL,0,0),(3475,1,5119,4127.00,'CR',NULL,'169102',NULL,1,NULL,0,0),(3475,2,1,4127.00,'DR',NULL,'169102',NULL,1,NULL,0,0),(3476,1,4993,1575.00,'DR',NULL,'',NULL,1,NULL,0,0),(3476,2,1,1575.00,'CR',NULL,'',NULL,1,NULL,0,0),(3477,1,4835,6041.00,'DR',NULL,'',NULL,1,NULL,0,0),(3477,2,1,6041.00,'CR',NULL,'',NULL,1,NULL,0,0),(3478,1,4827,569.00,'DR',NULL,'',NULL,1,NULL,0,0),(3478,2,1,569.00,'CR',NULL,'',NULL,1,NULL,0,0),(3479,1,4835,182.00,'DR',NULL,'',NULL,1,NULL,0,0),(3479,2,1,182.00,'CR',NULL,'',NULL,1,NULL,0,0),(3480,1,4817,4500.00,'DR',NULL,'169103',NULL,1,NULL,0,0),(3480,2,5119,4500.00,'CR',NULL,'169103',NULL,1,NULL,0,0),(3481,1,4889,16930.00,'DR',NULL,'169105',NULL,1,NULL,0,0),(3481,2,5119,16930.00,'CR',NULL,'169105',NULL,1,NULL,0,0),(3482,1,4993,2539.00,'DR',NULL,'169106',NULL,1,NULL,0,0),(3482,2,5119,2539.00,'CR',NULL,'169106',NULL,1,NULL,0,0),(3483,1,4988,9000.00,'DR',NULL,'169107',NULL,1,NULL,0,0),(3483,2,5119,9000.00,'CR',NULL,'169107',NULL,1,NULL,0,0),(3484,1,4822,22000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3484,2,1,22000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3485,1,4824,350.00,'DR',NULL,'',NULL,1,NULL,0,0),(3485,2,1,350.00,'CR',NULL,'',NULL,1,NULL,0,0),(3486,1,4840,405.00,'DR',NULL,'',NULL,1,NULL,0,0),(3486,2,1,405.00,'CR',NULL,'',NULL,1,NULL,0,0),(3487,1,4827,178.00,'DR',NULL,'',NULL,1,NULL,0,0),(3487,2,1,178.00,'CR',NULL,'',NULL,1,NULL,0,0),(3488,1,4831,2750.00,'DR',NULL,'',NULL,1,NULL,0,0),(3488,2,1,2750.00,'CR',NULL,'',NULL,1,NULL,0,0),(3489,1,4827,70.00,'DR',NULL,'',NULL,1,NULL,0,0),(3489,2,1,70.00,'CR',NULL,'',NULL,1,NULL,0,0),(3490,1,1,14250.00,'CR',NULL,'',NULL,1,NULL,0,0),(3490,2,5106,14250.00,'DR',NULL,'',NULL,1,NULL,0,0),(3491,1,4873,10000.00,'DR',NULL,'169108',NULL,1,NULL,0,0),(3491,2,5119,10000.00,'CR',NULL,'169108',NULL,1,NULL,0,0),(3492,1,4873,10000.00,'DR',NULL,'169109',NULL,1,NULL,0,0),(3492,2,5119,10000.00,'CR',NULL,'169109',NULL,1,NULL,0,0),(3493,1,4833,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(3493,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(3494,1,4857,110525.00,'DR',NULL,'290796',NULL,1,NULL,0,0),(3494,2,5105,110525.00,'CR',NULL,'290796',NULL,1,NULL,0,0),(3495,1,4827,2136.00,'DR',NULL,'',NULL,1,NULL,0,0),(3495,2,1,2136.00,'CR',NULL,'',NULL,1,NULL,0,0),(3496,1,4842,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(3496,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(3497,1,4837,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(3497,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(3498,1,4833,125.00,'DR',NULL,'',NULL,1,NULL,0,0),(3498,2,1,125.00,'CR',NULL,'',NULL,1,NULL,0,0),(3499,1,4824,40.00,'DR',NULL,'',NULL,1,NULL,0,0),(3499,2,1,40.00,'CR',NULL,'',NULL,1,NULL,0,0),(3500,1,4826,2500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3500,2,1,2500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3501,1,4873,20000.00,'DR',NULL,'169111',NULL,1,NULL,0,0),(3501,2,5119,20000.00,'CR',NULL,'169111',NULL,1,NULL,0,0),(3502,1,4831,1450.00,'DR',NULL,'',NULL,1,NULL,0,0),(3502,2,1,1450.00,'CR',NULL,'',NULL,1,NULL,0,0),(3503,1,4821,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(3503,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(3504,1,4824,25.00,'DR',NULL,'',NULL,1,NULL,0,0),(3504,2,1,25.00,'CR',NULL,'',NULL,1,NULL,0,0),(3505,1,4831,114.00,'DR',NULL,'',NULL,1,NULL,0,0),(3505,2,1,114.00,'CR',NULL,'',NULL,1,NULL,0,0),(3506,1,4837,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(3506,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(3507,1,5105,40000.00,'CR',NULL,'290797',NULL,1,NULL,0,0),(3507,2,1,40000.00,'DR',NULL,'290797',NULL,1,NULL,0,0),(3508,1,1,100000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3508,2,5105,100000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3509,1,4812,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3509,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3510,1,4812,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3510,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3511,1,4827,275.00,'DR',NULL,'',NULL,1,NULL,0,0),(3511,2,1,275.00,'CR',NULL,'',NULL,1,NULL,0,0),(3512,1,4839,60.00,'DR',NULL,'',NULL,1,NULL,0,0),(3512,2,1,60.00,'CR',NULL,'',NULL,1,NULL,0,0),(3513,1,4987,27155.00,'DR',NULL,'169112',NULL,1,NULL,0,0),(3513,2,5119,27155.00,'CR',NULL,'169112',NULL,1,NULL,0,0),(3514,1,4865,3115.00,'DR',NULL,'169113',NULL,1,NULL,0,0),(3514,2,5119,3115.00,'CR',NULL,'169113',NULL,1,NULL,0,0),(3515,1,4824,10.00,'DR',NULL,'',NULL,1,NULL,0,0),(3515,2,1,10.00,'CR',NULL,'',NULL,1,NULL,0,0),(3516,1,4821,13500.00,'DR',NULL,'169114',NULL,1,NULL,0,0),(3516,2,5119,13500.00,'CR',NULL,'169114',NULL,1,NULL,0,0),(3517,1,4873,25000.00,'DR',NULL,'169115',NULL,1,NULL,0,0),(3517,2,5119,25000.00,'CR',NULL,'169115',NULL,1,NULL,0,0),(3518,1,4831,11.00,'DR',NULL,'',NULL,1,NULL,0,0),(3518,2,1,11.00,'CR',NULL,'',NULL,1,NULL,0,0),(3519,1,4815,10000.00,'DR',NULL,'169120',NULL,1,NULL,0,0),(3519,2,5119,10000.00,'CR',NULL,'169120',NULL,1,NULL,0,0),(3520,1,5105,40000.00,'CR',NULL,'290798',NULL,1,NULL,0,0),(3520,2,1,40000.00,'DR',NULL,'290798',NULL,1,NULL,0,0),(3521,1,4889,3700.00,'DR',NULL,'',NULL,1,NULL,0,0),(3521,2,1,3700.00,'CR',NULL,'',NULL,1,NULL,0,0),(3522,1,4827,128.00,'DR',NULL,'',NULL,1,NULL,0,0),(3522,2,1,128.00,'CR',NULL,'',NULL,1,NULL,0,0),(3523,1,4826,2870.00,'DR',NULL,'',NULL,1,NULL,0,0),(3523,2,1,2870.00,'CR',NULL,'',NULL,1,NULL,0,0),(3524,1,4831,126.00,'DR',NULL,'',NULL,1,NULL,0,0),(3524,2,1,126.00,'CR',NULL,'',NULL,1,NULL,0,0),(3525,1,4844,20000.00,'DR',NULL,'169119',NULL,1,NULL,0,0),(3525,2,5119,20000.00,'CR',NULL,'169119',NULL,1,NULL,0,0),(3526,1,4841,63000.00,'DR',NULL,'169118',NULL,1,NULL,0,0),(3526,2,5119,63000.00,'CR',NULL,'169118',NULL,1,NULL,0,0),(3527,1,5119,23500.00,'CR',NULL,'169121',NULL,1,NULL,0,0),(3527,2,1,23500.00,'DR',NULL,'169121',NULL,1,NULL,0,0),(3528,1,4835,14072.00,'DR',NULL,'',NULL,1,NULL,0,0),(3528,2,1,14072.00,'CR',NULL,'',NULL,1,NULL,0,0),(3529,1,4826,19428.00,'DR',NULL,'',NULL,1,NULL,0,0),(3529,2,1,19428.00,'CR',NULL,'',NULL,1,NULL,0,0),(3530,1,4824,19.00,'DR',NULL,'',NULL,1,NULL,0,0),(3530,2,1,19.00,'CR',NULL,'',NULL,1,NULL,0,0),(3531,1,4827,236.00,'DR',NULL,'',NULL,1,NULL,0,0),(3531,2,1,236.00,'CR',NULL,'',NULL,1,NULL,0,0),(3532,1,4839,249.00,'DR',NULL,'',NULL,1,NULL,0,0),(3532,2,1,249.00,'CR',NULL,'',NULL,1,NULL,0,0),(3533,1,4833,16.00,'DR',NULL,'',NULL,1,NULL,0,0),(3533,2,1,16.00,'CR',NULL,'',NULL,1,NULL,0,0),(3534,1,4842,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3534,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3535,1,4835,50000.00,'DR',NULL,'169122',NULL,1,NULL,0,0),(3535,2,5119,50000.00,'CR',NULL,'169122',NULL,1,NULL,0,0),(3536,1,5119,3810.00,'CR',NULL,'169123',NULL,1,NULL,0,0),(3536,2,1,3810.00,'DR',NULL,'169123',NULL,1,NULL,0,0),(3537,1,4826,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3537,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3538,1,4826,1810.00,'DR',NULL,'',NULL,1,NULL,0,0),(3538,2,1,1810.00,'CR',NULL,'',NULL,1,NULL,0,0),(3539,1,4992,392130.00,'DR',NULL,'169124',NULL,1,NULL,0,0),(3539,2,5119,392130.00,'CR',NULL,'169124',NULL,1,NULL,0,0),(3540,1,4850,5800.00,'DR',NULL,'',NULL,1,NULL,0,0),(3540,2,1,5800.00,'CR',NULL,'',NULL,1,NULL,0,0),(3541,1,5119,8800.00,'CR',NULL,'169125',NULL,1,NULL,0,0),(3541,2,1,8800.00,'DR',NULL,'169125',NULL,1,NULL,0,0),(3542,1,4874,5000.00,'DR',NULL,'169126',NULL,1,NULL,0,0),(3542,2,5119,5000.00,'CR',NULL,'169126',NULL,1,NULL,0,0),(3543,1,4834,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(3543,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(3544,1,4831,295.00,'DR',NULL,'',NULL,1,NULL,0,0),(3544,2,1,295.00,'CR',NULL,'',NULL,1,NULL,0,0),(3545,1,4826,180.00,'DR',NULL,'',NULL,1,NULL,0,0),(3545,2,1,180.00,'CR',NULL,'',NULL,1,NULL,0,0),(3546,1,4843,116.00,'DR',NULL,'',NULL,1,NULL,0,0),(3546,2,1,116.00,'CR',NULL,'',NULL,1,NULL,0,0),(3547,1,4833,190.00,'DR',NULL,'',NULL,1,NULL,0,0),(3547,2,1,190.00,'CR',NULL,'',NULL,1,NULL,0,0),(3548,1,4827,2022.00,'DR',NULL,'',NULL,1,NULL,0,0),(3548,2,1,2022.00,'CR',NULL,'',NULL,1,NULL,0,0),(3549,1,4830,251.00,'DR',NULL,'',NULL,1,NULL,0,0),(3549,2,1,251.00,'CR',NULL,'',NULL,1,NULL,0,0),(3550,1,4862,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3550,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3551,1,4821,1900.00,'DR',NULL,'',NULL,1,NULL,0,0),(3551,2,1,1900.00,'CR',NULL,'',NULL,1,NULL,0,0),(3552,1,4826,800.00,'DR',NULL,'',NULL,1,NULL,0,0),(3552,2,1,800.00,'CR',NULL,'',NULL,1,NULL,0,0),(3553,1,4826,55.00,'DR',NULL,'',NULL,1,NULL,0,0),(3553,2,1,55.00,'CR',NULL,'',NULL,1,NULL,0,0),(3554,1,4826,484.00,'DR',NULL,'',NULL,1,NULL,0,0),(3554,2,1,484.00,'CR',NULL,'',NULL,1,NULL,0,0),(3555,1,4873,10000.00,'DR',NULL,'169127',NULL,1,NULL,0,0),(3555,2,5119,10000.00,'CR',NULL,'169127',NULL,1,NULL,0,0),(3556,1,4812,2484.00,'CR',NULL,'',NULL,1,NULL,0,0),(3556,2,1,2484.00,'DR',NULL,'',NULL,1,NULL,0,0),(3557,1,4812,225.00,'CR',NULL,'',NULL,1,NULL,0,0),(3557,2,1,225.00,'DR',NULL,'',NULL,1,NULL,0,0),(3558,1,4842,640.00,'DR',NULL,'',NULL,1,NULL,0,0),(3558,2,1,640.00,'CR',NULL,'',NULL,1,NULL,0,0),(3559,1,4831,70.00,'DR',NULL,'',NULL,1,NULL,0,0),(3559,2,1,70.00,'CR',NULL,'',NULL,1,NULL,0,0),(3560,1,4833,190.00,'DR',NULL,'',NULL,1,NULL,0,0),(3560,2,1,190.00,'CR',NULL,'',NULL,1,NULL,0,0),(3561,1,4827,240.00,'DR',NULL,'',NULL,1,NULL,0,0),(3561,2,1,240.00,'CR',NULL,'',NULL,1,NULL,0,0),(3562,1,4833,20.00,'DR',NULL,'',NULL,1,NULL,0,0),(3562,2,1,20.00,'CR',NULL,'',NULL,1,NULL,0,0),(3563,1,4824,30.00,'DR',NULL,'',NULL,1,NULL,0,0),(3563,2,1,30.00,'CR',NULL,'',NULL,1,NULL,0,0),(3564,1,4842,134.00,'DR',NULL,'',NULL,1,NULL,0,0),(3564,2,1,134.00,'CR',NULL,'',NULL,1,NULL,0,0),(3565,1,4832,1193.00,'DR',NULL,'',NULL,1,NULL,0,0),(3565,2,1,1193.00,'CR',NULL,'',NULL,1,NULL,0,0),(3566,1,4827,52.00,'DR',NULL,'',NULL,1,NULL,0,0),(3566,2,1,52.00,'CR',NULL,'',NULL,1,NULL,0,0),(3567,1,4826,11000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3567,2,1,11000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3568,1,4824,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(3568,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(3569,1,5029,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(3569,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(3570,1,4835,2200.00,'DR',NULL,'',NULL,1,NULL,0,0),(3570,2,1,2200.00,'CR',NULL,'',NULL,1,NULL,0,0),(3571,1,4805,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(3571,2,1,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(3572,1,4805,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(3572,2,1,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(3574,1,4889,4753.00,'DR',NULL,'',NULL,1,NULL,0,0),(3574,2,1,4753.00,'CR',NULL,'',NULL,1,NULL,0,0),(3575,1,4991,594.00,'DR',NULL,'',NULL,1,NULL,0,0),(3575,2,1,594.00,'CR',NULL,'',NULL,1,NULL,0,0),(3576,1,4991,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(3576,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(3577,1,4826,570.00,'DR',NULL,'',NULL,1,NULL,0,0),(3577,2,1,570.00,'CR',NULL,'',NULL,1,NULL,0,0),(3578,1,4826,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3578,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3579,1,4826,180.00,'DR',NULL,'',NULL,1,NULL,0,0),(3579,2,1,180.00,'CR',NULL,'',NULL,1,NULL,0,0),(3580,1,4840,44.00,'DR',NULL,'',NULL,1,NULL,0,0),(3580,2,1,44.00,'CR',NULL,'',NULL,1,NULL,0,0),(3581,1,4826,9000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3581,2,1,9000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3582,1,4872,75.00,'DR',NULL,'',NULL,1,NULL,0,0),(3582,2,1,75.00,'CR',NULL,'',NULL,1,NULL,0,0),(3583,1,4991,975.00,'DR',NULL,'',NULL,1,NULL,0,0),(3583,2,1,975.00,'CR',NULL,'',NULL,1,NULL,0,0),(3584,1,4874,100000.00,'DR',NULL,'74422',NULL,1,NULL,0,0),(3584,2,5110,100000.00,'CR',NULL,'74422',NULL,1,NULL,0,0),(3585,1,4832,2990.00,'DR',NULL,'',NULL,1,NULL,0,0),(3585,2,1,2990.00,'CR',NULL,'',NULL,1,NULL,0,0),(3586,1,4875,879.00,'DR',NULL,'',NULL,1,NULL,0,0),(3586,2,1,879.00,'CR',NULL,'',NULL,1,NULL,0,0),(3587,1,4840,53.00,'DR',NULL,'',NULL,1,NULL,0,0),(3587,2,1,53.00,'CR',NULL,'',NULL,1,NULL,0,0),(3588,1,4839,30.00,'DR',NULL,'',NULL,1,NULL,0,0),(3588,2,1,30.00,'CR',NULL,'',NULL,1,NULL,0,0),(3589,1,4889,363072.00,'DR',NULL,'169128',NULL,1,NULL,0,0),(3589,2,5119,363072.00,'CR',NULL,'169128',NULL,1,NULL,0,0),(3590,1,4872,90.00,'DR',NULL,'',NULL,1,NULL,0,0),(3590,2,1,90.00,'CR',NULL,'',NULL,1,NULL,0,0),(3591,1,4824,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(3591,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(3592,1,4827,3841.00,'DR',NULL,'',NULL,1,NULL,0,0),(3592,2,1,3841.00,'CR',NULL,'',NULL,1,NULL,0,0),(3593,1,4872,196.00,'DR',NULL,'',NULL,1,NULL,0,0),(3593,2,1,196.00,'CR',NULL,'',NULL,1,NULL,0,0),(3594,1,4839,60.00,'DR',NULL,'',NULL,1,NULL,0,0),(3594,2,1,60.00,'CR',NULL,'',NULL,1,NULL,0,0),(3595,1,4827,30.00,'DR',NULL,'',NULL,1,NULL,0,0),(3595,2,1,30.00,'CR',NULL,'',NULL,1,NULL,0,0),(3596,1,4824,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(3596,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(3597,1,4827,30.00,'DR',NULL,'',NULL,1,NULL,0,0),(3597,2,1,30.00,'CR',NULL,'',NULL,1,NULL,0,0),(3598,1,4826,513.00,'DR',NULL,'',NULL,1,NULL,0,0),(3598,2,1,513.00,'CR',NULL,'',NULL,1,NULL,0,0),(3599,1,5106,22000.00,'CR',NULL,'0779044',NULL,1,NULL,0,0),(3599,2,1,22000.00,'DR',NULL,'0779044',NULL,1,NULL,0,0),(3600,1,4991,2228.00,'CR',NULL,'',NULL,1,NULL,0,0),(3600,2,5119,2228.00,'DR',NULL,'',NULL,1,NULL,0,0),(3601,1,4991,4455.00,'CR',NULL,'',NULL,1,NULL,0,0),(3601,2,5119,4455.00,'DR',NULL,'',NULL,1,NULL,0,0),(3602,1,4988,109445.00,'CR',NULL,'',NULL,1,NULL,0,0),(3602,2,5119,109445.00,'DR',NULL,'',NULL,1,NULL,0,0),(3603,1,4992,57640.00,'CR',NULL,'',NULL,1,NULL,0,0),(3603,2,5119,57640.00,'DR',NULL,'',NULL,1,NULL,0,0),(3604,1,4987,57640.00,'CR',NULL,'',NULL,1,NULL,0,0),(3604,2,5119,57640.00,'DR',NULL,'',NULL,1,NULL,0,0),(3605,1,4991,17292.00,'CR',NULL,'',NULL,1,NULL,0,0),(3605,2,5119,17292.00,'DR',NULL,'',NULL,1,NULL,0,0),(3606,1,4987,34584.00,'CR',NULL,'',NULL,1,NULL,0,0),(3606,2,5119,34584.00,'DR',NULL,'',NULL,1,NULL,0,0),(3607,1,4989,57640.00,'CR',NULL,'',NULL,1,NULL,0,0),(3607,2,5119,57640.00,'DR',NULL,'',NULL,1,NULL,0,0),(3608,1,4988,199410.00,'CR',NULL,'',NULL,1,NULL,0,0),(3608,2,5119,199410.00,'DR',NULL,'',NULL,1,NULL,0,0),(3609,1,4991,72363.00,'CR',NULL,'',NULL,1,NULL,0,0),(3609,2,5119,72363.00,'DR',NULL,'',NULL,1,NULL,0,0),(3610,1,4989,34260.00,'CR',NULL,'',NULL,1,NULL,0,0),(3610,2,5119,34260.00,'DR',NULL,'',NULL,1,NULL,0,0),(3611,1,4989,34260.00,'CR',NULL,'',NULL,1,NULL,0,0),(3611,2,5119,34260.00,'DR',NULL,'',NULL,1,NULL,0,0),(3612,1,4988,8565.00,'CR',NULL,'',NULL,1,NULL,0,0),(3612,2,5119,8565.00,'DR',NULL,'',NULL,1,NULL,0,0),(3613,1,4985,1772.00,'CR',NULL,'',NULL,1,NULL,0,0),(3613,2,5119,1772.00,'DR',NULL,'',NULL,1,NULL,0,0),(3614,1,4985,3987.00,'CR',NULL,'',NULL,1,NULL,0,0),(3614,2,5119,3987.00,'DR',NULL,'',NULL,1,NULL,0,0),(3615,1,4985,1240.40,'CR',NULL,'',NULL,1,NULL,0,0),(3615,2,5119,1240.40,'DR',NULL,'',NULL,1,NULL,0,0),(3616,1,4985,2658.00,'CR',NULL,'',NULL,1,NULL,0,0),(3616,2,5119,2658.00,'DR',NULL,'',NULL,1,NULL,0,0),(3617,1,4987,443000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3617,2,5119,443000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3618,1,4993,2008741.52,'CR',NULL,'',NULL,1,NULL,0,0),(3618,2,5119,2008741.52,'DR',NULL,'',NULL,1,NULL,0,0),(3619,1,4985,464000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3619,2,5119,464000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3620,1,4991,134780.00,'CR',NULL,'',NULL,1,NULL,0,0),(3620,2,5119,134780.00,'DR',NULL,'',NULL,1,NULL,0,0),(3621,1,4985,55112.50,'CR',NULL,'',NULL,1,NULL,0,0),(3621,2,5119,55112.50,'DR',NULL,'',NULL,1,NULL,0,0),(3622,1,4985,88180.00,'CR',NULL,'',NULL,1,NULL,0,0),(3622,2,5119,88180.00,'DR',NULL,'',NULL,1,NULL,0,0),(3623,1,4985,52908.00,'CR',NULL,'',NULL,1,NULL,0,0),(3623,2,5119,52908.00,'DR',NULL,'',NULL,1,NULL,0,0),(3624,1,4985,52908.00,'CR',NULL,'',NULL,1,NULL,0,0),(3624,2,5119,52908.00,'DR',NULL,'',NULL,1,NULL,0,0),(3625,1,4985,41334.37,'CR',NULL,'',NULL,1,NULL,0,0),(3625,2,5119,41334.37,'DR',NULL,'',NULL,1,NULL,0,0),(3626,1,4985,23147.25,'CR',NULL,'',NULL,1,NULL,0,0),(3626,2,5119,23147.25,'DR',NULL,'',NULL,1,NULL,0,0),(3627,1,4985,30311.88,'CR',NULL,'',NULL,1,NULL,0,0),(3627,2,5119,30311.88,'DR',NULL,'',NULL,1,NULL,0,0),(3628,1,4985,43538.88,'CR',NULL,'',NULL,1,NULL,0,0),(3628,2,5119,43538.88,'DR',NULL,'',NULL,1,NULL,0,0),(3629,1,4985,49380.80,'CR',NULL,'',NULL,1,NULL,0,0),(3629,2,5119,49380.80,'DR',NULL,'',NULL,1,NULL,0,0),(3630,1,4985,44751.35,'CR',NULL,'',NULL,1,NULL,0,0),(3630,2,5119,44751.35,'DR',NULL,'',NULL,1,NULL,0,0),(3631,1,4985,36704.92,'CR',NULL,'',NULL,1,NULL,0,0),(3631,2,5119,36704.92,'DR',NULL,'',NULL,1,NULL,0,0),(3632,1,4989,29300.00,'CR',NULL,'',NULL,1,NULL,0,0),(3632,2,5119,29300.00,'DR',NULL,'',NULL,1,NULL,0,0),(3633,1,4985,689.25,'CR',NULL,'',NULL,1,NULL,0,0),(3633,2,5119,689.25,'DR',NULL,'',NULL,1,NULL,0,0),(3634,1,4985,2757.00,'CR',NULL,'',NULL,1,NULL,0,0),(3634,2,5119,2757.00,'DR',NULL,'',NULL,1,NULL,0,0),(3635,1,4989,22895.00,'CR',NULL,'',NULL,1,NULL,0,0),(3635,2,5119,22895.00,'DR',NULL,'',NULL,1,NULL,0,0),(3636,1,4987,158886.00,'CR',NULL,'',NULL,1,NULL,0,0),(3636,2,5119,158886.00,'DR',NULL,'',NULL,1,NULL,0,0),(3637,1,4988,3493849.00,'CR',NULL,'',NULL,1,NULL,0,0),(3637,2,5119,3493849.00,'DR',NULL,'',NULL,1,NULL,0,0),(3638,1,4985,57734.20,'CR',NULL,'',NULL,1,NULL,0,0),(3638,2,5119,57734.20,'DR',NULL,'',NULL,1,NULL,0,0),(3639,1,4985,90920.00,'CR',NULL,'',NULL,1,NULL,0,0),(3639,2,5119,90920.00,'DR',NULL,'',NULL,1,NULL,0,0),(3640,1,4985,54552.00,'CR',NULL,'',NULL,1,NULL,0,0),(3640,2,5119,54552.00,'DR',NULL,'',NULL,1,NULL,0,0),(3641,1,4985,55461.20,'CR',NULL,'',NULL,1,NULL,0,0),(3641,2,5119,55461.20,'DR',NULL,'',NULL,1,NULL,0,0),(3642,1,4985,50915.20,'CR',NULL,'',NULL,1,NULL,0,0),(3642,2,5119,50915.20,'DR',NULL,'',NULL,1,NULL,0,0),(3643,1,4985,42618.75,'CR',NULL,'',NULL,1,NULL,0,0),(3643,2,5119,42618.75,'DR',NULL,'',NULL,1,NULL,0,0),(3644,1,4985,45460.00,'CR',NULL,'',NULL,1,NULL,0,0),(3644,2,5119,45460.00,'DR',NULL,'',NULL,1,NULL,0,0),(3645,1,4985,23866.50,'CR',NULL,'',NULL,1,NULL,0,0),(3645,2,5119,23866.50,'DR',NULL,'',NULL,1,NULL,0,0),(3646,1,4985,36936.25,'CR',NULL,'',NULL,1,NULL,0,0),(3646,2,5119,36936.25,'DR',NULL,'',NULL,1,NULL,0,0),(3647,1,4985,53301.85,'CR',NULL,'',NULL,1,NULL,0,0),(3647,2,5119,53301.85,'DR',NULL,'',NULL,1,NULL,0,0),(3648,1,4985,31253.75,'CR',NULL,'',NULL,1,NULL,0,0),(3648,2,5119,31253.75,'DR',NULL,'',NULL,1,NULL,0,0),(3649,1,4985,44891.75,'CR',NULL,'',NULL,1,NULL,0,0),(3649,2,5119,44891.75,'DR',NULL,'',NULL,1,NULL,0,0),(3650,1,4992,79555.00,'CR',NULL,'',NULL,1,NULL,0,0),(3650,2,5119,79555.00,'DR',NULL,'',NULL,1,NULL,0,0),(3651,1,4987,68190.00,'CR',NULL,'',NULL,1,NULL,0,0),(3651,2,5119,68190.00,'DR',NULL,'',NULL,1,NULL,0,0),(3652,1,4859,1183000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3652,2,5119,1183000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3653,1,4987,136045.00,'CR',NULL,'',NULL,1,NULL,0,0),(3653,2,5119,136045.00,'DR',NULL,'',NULL,1,NULL,0,0),(3654,1,4987,193421.00,'CR',NULL,'',NULL,1,NULL,0,0),(3654,2,5119,193421.00,'DR',NULL,'',NULL,1,NULL,0,0),(3655,1,4859,593200.00,'CR',NULL,'',NULL,1,NULL,0,0),(3655,2,5119,593200.00,'DR',NULL,'',NULL,1,NULL,0,0),(3656,1,4873,5000.00,'DR',NULL,'169129',NULL,1,NULL,0,0),(3656,2,5119,5000.00,'CR',NULL,'169129',NULL,1,NULL,0,0),(3657,1,4985,20000.00,'DR',NULL,'169130',NULL,1,NULL,0,0),(3657,2,5119,20000.00,'CR',NULL,'169130',NULL,1,NULL,0,0),(3658,1,4826,1820.00,'DR',NULL,'169131',NULL,1,NULL,0,0),(3658,2,5119,1820.00,'CR',NULL,'169131',NULL,1,NULL,0,0),(3659,1,4873,50000.00,'DR',NULL,'169132',NULL,1,NULL,0,0),(3659,2,5119,50000.00,'CR',NULL,'169132',NULL,1,NULL,0,0),(3660,1,4992,566410.00,'DR',NULL,'169133',NULL,1,NULL,0,0),(3660,2,5119,566410.00,'CR',NULL,'169133',NULL,1,NULL,0,0),(3661,1,5119,15445.00,'CR',NULL,'169134',NULL,1,NULL,0,0),(3661,2,1,15445.00,'DR',NULL,'169134',NULL,1,NULL,0,0),(3662,1,4832,6181.00,'DR',NULL,'',NULL,1,NULL,0,0),(3662,2,1,6181.00,'CR',NULL,'',NULL,1,NULL,0,0),(3663,1,4875,9264.00,'DR',NULL,'',NULL,1,NULL,0,0),(3663,2,1,9264.00,'CR',NULL,'',NULL,1,NULL,0,0),(3664,1,4845,23.00,'DR',NULL,'',NULL,1,NULL,0,0),(3664,2,5119,23.00,'CR',NULL,'',NULL,1,NULL,0,0),(3665,1,4873,25000.00,'DR',NULL,'169135',NULL,1,NULL,0,0),(3665,2,5119,25000.00,'CR',NULL,'169135',NULL,1,NULL,0,0),(3666,1,4841,88079.00,'DR',NULL,'169136',NULL,1,NULL,0,0),(3666,2,5119,88079.00,'CR',NULL,'169136',NULL,1,NULL,0,0),(3667,1,4997,1850.00,'DR',NULL,'169142',NULL,1,NULL,0,0),(3667,2,5119,1850.00,'CR',NULL,'169142',NULL,1,NULL,0,0),(3668,1,4817,1750.00,'DR',NULL,'169137',NULL,1,NULL,0,0),(3668,2,5119,1750.00,'CR',NULL,'169137',NULL,1,NULL,0,0),(3669,1,4817,1750.00,'DR',NULL,'169138',NULL,1,NULL,0,0),(3669,2,5119,1750.00,'CR',NULL,'169138',NULL,1,NULL,0,0),(3670,1,4817,1750.00,'DR',NULL,'169139',NULL,1,NULL,0,0),(3670,2,5119,1750.00,'CR',NULL,'169139',NULL,1,NULL,0,0),(3671,1,4817,1750.00,'DR',NULL,'169140',NULL,1,NULL,0,0),(3671,2,5119,1750.00,'CR',NULL,'169140',NULL,1,NULL,0,0),(3672,1,4997,1500.00,'DR',NULL,'169141',NULL,1,NULL,0,0),(3672,2,5119,1500.00,'CR',NULL,'169141',NULL,1,NULL,0,0),(3673,1,4817,1750.00,'DR',NULL,'169143',NULL,1,NULL,0,0),(3673,2,5119,1750.00,'CR',NULL,'169143',NULL,1,NULL,0,0),(3674,1,4828,2640.00,'DR',NULL,'169145',NULL,1,NULL,0,0),(3674,2,5119,2640.00,'CR',NULL,'169145',NULL,1,NULL,0,0),(3675,1,4828,3740.00,'DR',NULL,'169146',NULL,1,NULL,0,0),(3675,2,5119,3740.00,'CR',NULL,'169146',NULL,1,NULL,0,0),(3676,1,4828,1760.00,'DR',NULL,'169147',NULL,1,NULL,0,0),(3676,2,5119,1760.00,'CR',NULL,'169147',NULL,1,NULL,0,0),(3677,1,4826,2525.00,'DR',NULL,'169148',NULL,1,NULL,0,0),(3677,2,5119,2525.00,'CR',NULL,'169148',NULL,1,NULL,0,0),(3678,1,4826,2310.00,'DR',NULL,'169149',NULL,1,NULL,0,0),(3678,2,5119,2310.00,'CR',NULL,'169149',NULL,1,NULL,0,0),(3679,1,4873,7000.00,'DR',NULL,'169150',NULL,1,NULL,0,0),(3679,2,5119,7000.00,'CR',NULL,'169150',NULL,1,NULL,0,0),(3680,1,4862,3173.00,'DR',NULL,'169151',NULL,1,NULL,0,0),(3680,2,5119,3173.00,'CR',NULL,'169151',NULL,1,NULL,0,0),(3681,1,4824,15.00,'DR',NULL,'',NULL,1,NULL,0,0),(3681,2,1,15.00,'CR',NULL,'',NULL,1,NULL,0,0),(3682,1,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3682,2,5119,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3683,1,4826,650.00,'DR',NULL,'',NULL,1,NULL,0,0),(3683,2,1,650.00,'CR',NULL,'',NULL,1,NULL,0,0),(3684,1,4824,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(3684,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(3685,1,4985,150000.00,'DR',NULL,'169152',NULL,1,NULL,0,0),(3685,2,5119,150000.00,'CR',NULL,'169152',NULL,1,NULL,0,0),(3686,1,4993,708.00,'DR',NULL,'',NULL,1,NULL,0,0),(3686,2,1,708.00,'CR',NULL,'',NULL,1,NULL,0,0),(3687,1,4835,2658.00,'DR',NULL,'',NULL,1,NULL,0,0),(3687,2,1,2658.00,'CR',NULL,'',NULL,1,NULL,0,0),(3688,1,5119,3366.00,'CR',NULL,'169153',NULL,1,NULL,0,0),(3688,2,1,3366.00,'DR',NULL,'169153',NULL,1,NULL,0,0),(3689,1,4873,10000.00,'DR',NULL,'169154',NULL,1,NULL,0,0),(3689,2,5119,10000.00,'CR',NULL,'169154',NULL,1,NULL,0,0),(3690,1,4828,3575.00,'DR',NULL,'169155',NULL,1,NULL,0,0),(3690,2,5119,3575.00,'CR',NULL,'169155',NULL,1,NULL,0,0),(3691,1,5119,53500.00,'CR',NULL,'169156',NULL,1,NULL,0,0),(3691,2,1,53500.00,'DR',NULL,'169156',NULL,1,NULL,0,0),(3692,1,5119,4000.00,'CR',NULL,'169157',NULL,1,NULL,0,0),(3692,2,1,4000.00,'DR',NULL,'169157',NULL,1,NULL,0,0),(3693,1,4862,62155.00,'DR',NULL,'169158',NULL,1,NULL,0,0),(3693,2,5119,62155.00,'CR',NULL,'169158',NULL,1,NULL,0,0),(3694,1,4827,2294.00,'DR',NULL,'',NULL,1,NULL,0,0),(3694,2,1,2294.00,'CR',NULL,'',NULL,1,NULL,0,0),(3695,1,4862,1774.00,'DR',NULL,'',NULL,1,NULL,0,0),(3695,2,1,1774.00,'CR',NULL,'',NULL,1,NULL,0,0),(3696,1,4824,98.00,'DR',NULL,'',NULL,1,NULL,0,0),(3696,2,1,98.00,'CR',NULL,'',NULL,1,NULL,0,0),(3697,1,4827,60.00,'DR',NULL,'',NULL,1,NULL,0,0),(3697,2,1,60.00,'CR',NULL,'',NULL,1,NULL,0,0),(3698,1,4873,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3698,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3699,1,4824,330.00,'DR',NULL,'',NULL,1,NULL,0,0),(3699,2,1,330.00,'CR',NULL,'',NULL,1,NULL,0,0),(3700,1,4827,301.00,'DR',NULL,'',NULL,1,NULL,0,0),(3700,2,1,301.00,'CR',NULL,'',NULL,1,NULL,0,0),(3701,1,4835,72.00,'DR',NULL,'',NULL,1,NULL,0,0),(3701,2,1,72.00,'CR',NULL,'',NULL,1,NULL,0,0),(3702,1,4835,330.00,'DR',NULL,'',NULL,1,NULL,0,0),(3702,2,1,330.00,'CR',NULL,'',NULL,1,NULL,0,0),(3703,1,4834,50.00,'DR',NULL,'',NULL,1,NULL,0,0),(3703,2,1,50.00,'CR',NULL,'',NULL,1,NULL,0,0),(3704,1,4889,287.00,'DR',NULL,'',NULL,1,NULL,0,0),(3704,2,1,287.00,'CR',NULL,'',NULL,1,NULL,0,0),(3705,1,4835,1675.00,'DR',NULL,'',NULL,1,NULL,0,0),(3705,2,1,1675.00,'CR',NULL,'',NULL,1,NULL,0,0),(3706,1,4842,77.00,'DR',NULL,'',NULL,1,NULL,0,0),(3706,2,1,77.00,'CR',NULL,'',NULL,1,NULL,0,0),(3707,1,4991,4511.00,'DR',NULL,'',NULL,1,NULL,0,0),(3707,2,1,4511.00,'CR',NULL,'',NULL,1,NULL,0,0),(3708,1,4842,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(3708,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(3709,1,4827,504.00,'DR',NULL,'',NULL,1,NULL,0,0),(3709,2,1,504.00,'CR',NULL,'',NULL,1,NULL,0,0),(3710,1,4840,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3710,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3711,1,4827,159.00,'DR',NULL,'',NULL,1,NULL,0,0),(3711,2,1,159.00,'CR',NULL,'',NULL,1,NULL,0,0),(3712,1,4834,15.00,'DR',NULL,'',NULL,1,NULL,0,0),(3712,2,1,15.00,'CR',NULL,'',NULL,1,NULL,0,0),(3713,1,4824,20.00,'DR',NULL,'',NULL,1,NULL,0,0),(3713,2,1,20.00,'CR',NULL,'',NULL,1,NULL,0,0),(3714,1,4834,20.00,'DR',NULL,'',NULL,1,NULL,0,0),(3714,2,1,20.00,'CR',NULL,'',NULL,1,NULL,0,0),(3716,1,4797,46062.00,'CR',NULL,'',NULL,1,NULL,0,0),(3716,2,5119,46062.00,'DR',NULL,'',NULL,1,NULL,0,0),(3724,1,4797,1382.00,'CR',NULL,'',NULL,1,NULL,0,0),(3724,2,5119,1382.00,'DR',NULL,'',NULL,1,NULL,0,0),(3725,1,4797,17219.00,'CR',NULL,'',NULL,1,NULL,0,0),(3725,2,5119,17219.00,'DR',NULL,'',NULL,1,NULL,0,0),(3726,1,4797,2973.00,'CR',NULL,'',NULL,1,NULL,0,0),(3726,2,5119,2973.00,'DR',NULL,'',NULL,1,NULL,0,0),(3727,1,4797,20664.00,'CR',NULL,'',NULL,1,NULL,0,0),(3727,2,5119,20664.00,'DR',NULL,'',NULL,1,NULL,0,0),(3728,1,4797,8610.00,'CR',NULL,'',NULL,1,NULL,0,0),(3728,2,5119,8610.00,'DR',NULL,'',NULL,1,NULL,0,0),(3729,1,4797,6753.00,'CR',NULL,'',NULL,1,NULL,0,0),(3729,2,5119,6753.00,'DR',NULL,'',NULL,1,NULL,0,0),(3730,1,4797,10230.00,'CR',NULL,'',NULL,1,NULL,0,0),(3730,2,5119,10230.00,'DR',NULL,'',NULL,1,NULL,0,0),(3731,1,4831,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3731,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3732,1,4826,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(3732,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(3733,1,4812,110.00,'CR',NULL,'',NULL,1,NULL,0,0),(3733,2,1,110.00,'DR',NULL,'',NULL,1,NULL,0,0),(3734,1,4826,156.00,'DR',NULL,'',NULL,1,NULL,0,0),(3734,2,1,156.00,'CR',NULL,'',NULL,1,NULL,0,0),(3744,1,4797,936.00,'CR',NULL,'',NULL,1,NULL,0,0),(3744,2,5119,936.00,'DR',NULL,'',NULL,1,NULL,0,0),(3746,1,4826,2295.00,'DR',NULL,'169161',NULL,1,NULL,0,0),(3746,2,5119,2295.00,'CR',NULL,'169161',NULL,1,NULL,0,0),(3747,1,4994,1360.00,'DR',NULL,'169162',NULL,1,NULL,0,0),(3747,2,5119,1360.00,'CR',NULL,'169162',NULL,1,NULL,0,0),(3748,1,5119,1350.00,'CR',NULL,'169164',NULL,1,NULL,0,0),(3748,2,1,1350.00,'DR',NULL,'169164',NULL,1,NULL,0,0),(3749,1,4842,719.00,'DR',NULL,'',NULL,1,NULL,0,0),(3749,2,1,719.00,'CR',NULL,'',NULL,1,NULL,0,0),(3750,1,4862,2063.00,'DR',NULL,'169163',NULL,1,NULL,0,0),(3750,2,5119,2063.00,'CR',NULL,'169163',NULL,1,NULL,0,0),(3751,1,4827,65.00,'DR',NULL,'',NULL,1,NULL,0,0),(3751,2,1,65.00,'CR',NULL,'',NULL,1,NULL,0,0),(3752,1,4872,247.00,'DR',NULL,'',NULL,1,NULL,0,0),(3752,2,1,247.00,'CR',NULL,'',NULL,1,NULL,0,0),(3753,1,4831,50.00,'DR',NULL,'',NULL,1,NULL,0,0),(3753,2,1,50.00,'CR',NULL,'',NULL,1,NULL,0,0),(3754,1,4872,631.00,'DR',NULL,'',NULL,1,NULL,0,0),(3754,2,1,631.00,'CR',NULL,'',NULL,1,NULL,0,0),(3755,1,4842,12521.00,'DR',NULL,'',NULL,1,NULL,0,0),(3755,2,1,12521.00,'CR',NULL,'',NULL,1,NULL,0,0),(3756,1,4983,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3756,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3757,1,4840,216.00,'DR',NULL,'',NULL,1,NULL,0,0),(3757,2,1,216.00,'CR',NULL,'',NULL,1,NULL,0,0),(3758,1,4987,200000.00,'DR',NULL,'169165',NULL,1,NULL,0,0),(3758,2,5119,200000.00,'CR',NULL,'169165',NULL,1,NULL,0,0),(3759,1,4873,50000.00,'DR',NULL,'169166',NULL,1,NULL,0,0),(3759,2,5119,50000.00,'CR',NULL,'169166',NULL,1,NULL,0,0),(3760,1,4873,6000.00,'DR',NULL,'169160',NULL,1,NULL,0,0),(3760,2,5119,6000.00,'CR',NULL,'169160',NULL,1,NULL,0,0),(3761,1,4830,375.00,'DR',NULL,'',NULL,1,NULL,0,0),(3761,2,1,375.00,'CR',NULL,'',NULL,1,NULL,0,0),(3762,1,4872,257.00,'DR',NULL,'',NULL,1,NULL,0,0),(3762,2,1,257.00,'CR',NULL,'',NULL,1,NULL,0,0),(3763,1,4834,6000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3763,2,1,6000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3764,1,4830,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(3764,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(3765,1,4994,55.00,'DR',NULL,'',NULL,1,NULL,0,0),(3765,2,1,55.00,'CR',NULL,'',NULL,1,NULL,0,0),(3766,1,4827,85.00,'DR',NULL,'',NULL,1,NULL,0,0),(3766,2,1,85.00,'CR',NULL,'',NULL,1,NULL,0,0),(3767,1,4862,491.00,'DR',NULL,'',NULL,1,NULL,0,0),(3767,2,1,491.00,'CR',NULL,'',NULL,1,NULL,0,0),(3768,1,4824,275.00,'DR',NULL,'',NULL,1,NULL,0,0),(3768,2,1,275.00,'CR',NULL,'',NULL,1,NULL,0,0),(3769,1,4827,173.00,'DR',NULL,'',NULL,1,NULL,0,0),(3769,2,1,173.00,'CR',NULL,'',NULL,1,NULL,0,0),(3770,1,4827,933.00,'DR',NULL,'',NULL,1,NULL,0,0),(3770,2,1,933.00,'CR',NULL,'',NULL,1,NULL,0,0),(3771,1,4862,240.00,'DR',NULL,'',NULL,1,NULL,0,0),(3771,2,1,240.00,'CR',NULL,'',NULL,1,NULL,0,0),(3772,1,4873,4000.00,'DR',NULL,'169167',NULL,1,NULL,0,0),(3772,2,5119,4000.00,'CR',NULL,'169167',NULL,1,NULL,0,0),(3773,1,4983,1600.00,'DR',NULL,'169168',NULL,1,NULL,0,0),(3773,2,5119,1600.00,'CR',NULL,'169168',NULL,1,NULL,0,0),(3774,1,4862,2400.00,'DR',NULL,'',NULL,1,NULL,0,0),(3774,2,1,2400.00,'CR',NULL,'',NULL,1,NULL,0,0),(3775,1,4834,50.00,'DR',NULL,'',NULL,1,NULL,0,0),(3775,2,1,50.00,'CR',NULL,'',NULL,1,NULL,0,0),(3776,1,4842,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3776,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3777,1,4862,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(3777,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(3778,1,4873,10000.00,'DR',NULL,'169170',NULL,1,NULL,0,0),(3778,2,5119,10000.00,'CR',NULL,'169170',NULL,1,NULL,0,0),(3779,1,4831,22.00,'DR',NULL,'',NULL,1,NULL,0,0),(3779,2,1,22.00,'CR',NULL,'',NULL,1,NULL,0,0),(3780,1,4826,11000.00,'DR',NULL,'169169',NULL,1,NULL,0,0),(3780,2,5119,11000.00,'CR',NULL,'169169',NULL,1,NULL,0,0),(3782,1,4797,32972.00,'CR',NULL,'',NULL,1,NULL,0,0),(3782,2,5119,32972.00,'DR',NULL,'',NULL,1,NULL,0,0),(3783,1,4991,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3783,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3784,1,4815,10000.00,'DR',NULL,'169171',NULL,1,NULL,0,0),(3784,2,5119,10000.00,'CR',NULL,'169171',NULL,1,NULL,0,0),(3785,1,4985,15000.00,'DR',NULL,'169172',NULL,1,NULL,0,0),(3785,2,5119,15000.00,'CR',NULL,'169172',NULL,1,NULL,0,0),(3786,1,4862,1700.00,'DR',NULL,'',NULL,1,NULL,0,0),(3786,2,1,1700.00,'CR',NULL,'',NULL,1,NULL,0,0),(3787,1,4827,733.00,'DR',NULL,'',NULL,1,NULL,0,0),(3787,2,1,733.00,'CR',NULL,'',NULL,1,NULL,0,0),(3788,1,4826,3785.00,'DR',NULL,'',NULL,1,NULL,0,0),(3788,2,1,3785.00,'CR',NULL,'',NULL,1,NULL,0,0),(3789,1,4827,3140.00,'DR',NULL,'',NULL,1,NULL,0,0),(3789,2,1,3140.00,'CR',NULL,'',NULL,1,NULL,0,0),(3790,1,4991,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3790,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3791,1,4831,583.00,'DR',NULL,'',NULL,1,NULL,0,0),(3791,2,1,583.00,'CR',NULL,'',NULL,1,NULL,0,0),(3792,1,4842,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3792,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3793,1,4830,167.00,'DR',NULL,'',NULL,1,NULL,0,0),(3793,2,1,167.00,'CR',NULL,'',NULL,1,NULL,0,0),(3794,1,4827,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(3794,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(3795,1,4842,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(3795,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(3796,1,4831,10.00,'DR',NULL,'',NULL,1,NULL,0,0),(3796,2,1,10.00,'CR',NULL,'',NULL,1,NULL,0,0),(3797,1,4862,14360.00,'DR',NULL,'169173',NULL,1,NULL,0,0),(3797,2,5119,14360.00,'CR',NULL,'169173',NULL,1,NULL,0,0),(3798,1,4817,20000.00,'DR',NULL,'169174',NULL,1,NULL,0,0),(3798,2,5119,20000.00,'CR',NULL,'169174',NULL,1,NULL,0,0),(3799,1,4993,100000.00,'DR',NULL,'170201',NULL,1,NULL,0,0),(3799,2,5119,100000.00,'CR',NULL,'170201',NULL,1,NULL,0,0),(3800,1,4993,100000.00,'DR',NULL,'170203',NULL,1,NULL,0,0),(3800,2,5119,100000.00,'CR',NULL,'170203',NULL,1,NULL,0,0),(3801,1,4985,78271.00,'DR',NULL,'170204',NULL,1,NULL,0,0),(3801,2,5119,78271.00,'CR',NULL,'170204',NULL,1,NULL,0,0),(3802,1,4985,40000.00,'DR',NULL,'170205',NULL,1,NULL,0,0),(3802,2,5119,40000.00,'CR',NULL,'170205',NULL,1,NULL,0,0),(3803,1,4985,150000.00,'DR',NULL,'170206',NULL,1,NULL,0,0),(3803,2,5119,150000.00,'CR',NULL,'170206',NULL,1,NULL,0,0),(3804,1,4993,100000.00,'DR',NULL,'170202',NULL,1,NULL,0,0),(3804,2,5119,100000.00,'CR',NULL,'170202',NULL,1,NULL,0,0),(3805,1,4873,25000.00,'DR',NULL,'170207',NULL,1,NULL,0,0),(3805,2,5119,25000.00,'CR',NULL,'170207',NULL,1,NULL,0,0),(3806,1,4987,100000.00,'DR',NULL,'170208',NULL,1,NULL,0,0),(3806,2,5119,100000.00,'CR',NULL,'170208',NULL,1,NULL,0,0),(3807,1,4815,10000.00,'DR',NULL,'170209',NULL,1,NULL,0,0),(3807,2,5119,10000.00,'CR',NULL,'170209',NULL,1,NULL,0,0),(3808,1,4832,6378.00,'DR',NULL,'170210',NULL,1,NULL,0,0),(3808,2,5119,6378.00,'CR',NULL,'170210',NULL,1,NULL,0,0),(3809,1,4863,5925.00,'DR',NULL,'170211',NULL,1,NULL,0,0),(3809,2,5119,5925.00,'CR',NULL,'170211',NULL,1,NULL,0,0),(3810,1,4850,11000.00,'DR',NULL,'170212',NULL,1,NULL,0,0),(3810,2,5119,11000.00,'CR',NULL,'170212',NULL,1,NULL,0,0),(3811,1,4991,11000.00,'DR',NULL,'170213',NULL,1,NULL,0,0),(3811,2,5119,11000.00,'CR',NULL,'170213',NULL,1,NULL,0,0),(3812,1,4872,3257.00,'DR',NULL,'170214',NULL,1,NULL,0,0),(3812,2,5119,3257.00,'CR',NULL,'170214',NULL,1,NULL,0,0),(3814,1,4797,2710.00,'CR',NULL,'',NULL,1,NULL,0,0),(3814,2,1,2710.00,'DR',NULL,'',NULL,1,NULL,0,0),(3816,1,4865,4157.00,'DR',NULL,'170215',NULL,1,NULL,0,0),(3816,2,5119,4157.00,'CR',NULL,'170215',NULL,1,NULL,0,0),(3817,1,4873,20000.00,'DR',NULL,'170216',NULL,1,NULL,0,0),(3817,2,5119,20000.00,'CR',NULL,'170216',NULL,1,NULL,0,0),(3818,1,5119,51000.00,'CR',NULL,'170218',NULL,1,NULL,0,0),(3818,2,1,51000.00,'DR',NULL,'170218',NULL,1,NULL,0,0),(3819,1,4845,770.00,'DR',NULL,'',NULL,1,NULL,0,0),(3819,2,5119,770.00,'CR',NULL,'',NULL,1,NULL,0,0),(3820,1,4845,248.00,'DR',NULL,'',NULL,1,NULL,0,0),(3820,2,5119,248.00,'CR',NULL,'',NULL,1,NULL,0,0),(3821,1,4826,2500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3821,2,1,2500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3822,1,4827,53.00,'DR',NULL,'',NULL,1,NULL,0,0),(3822,2,1,53.00,'CR',NULL,'',NULL,1,NULL,0,0),(3823,1,4827,1123.00,'DR',NULL,'',NULL,1,NULL,0,0),(3823,2,1,1123.00,'CR',NULL,'',NULL,1,NULL,0,0),(3824,1,4994,55.00,'DR',NULL,'',NULL,1,NULL,0,0),(3824,2,1,55.00,'CR',NULL,'',NULL,1,NULL,0,0),(3825,1,4835,15180.00,'DR',NULL,'',NULL,1,NULL,0,0),(3825,2,1,15180.00,'CR',NULL,'',NULL,1,NULL,0,0),(3826,1,4988,2500.00,'DR',NULL,'170217',NULL,1,NULL,0,0),(3826,2,5119,2500.00,'CR',NULL,'170217',NULL,1,NULL,0,0),(3827,1,4842,3071.00,'DR',NULL,'',NULL,1,NULL,0,0),(3827,2,1,3071.00,'CR',NULL,'',NULL,1,NULL,0,0),(3828,1,4842,9155.00,'DR',NULL,'',NULL,1,NULL,0,0),(3828,2,1,9155.00,'CR',NULL,'',NULL,1,NULL,0,0),(3829,1,4842,6198.00,'DR',NULL,'',NULL,1,NULL,0,0),(3829,2,1,6198.00,'CR',NULL,'',NULL,1,NULL,0,0),(3830,1,4827,1108.00,'DR',NULL,'',NULL,1,NULL,0,0),(3830,2,1,1108.00,'CR',NULL,'',NULL,1,NULL,0,0),(3831,1,4828,3575.00,'DR',NULL,'170219',NULL,1,NULL,0,0),(3831,2,5119,3575.00,'CR',NULL,'170219',NULL,1,NULL,0,0),(3832,1,4842,845.00,'DR',NULL,'',NULL,1,NULL,0,0),(3832,2,1,845.00,'CR',NULL,'',NULL,1,NULL,0,0),(3833,1,4994,642.00,'DR',NULL,'',NULL,1,NULL,0,0),(3833,2,1,642.00,'CR',NULL,'',NULL,1,NULL,0,0),(3834,1,4842,1253.00,'DR',NULL,'',NULL,1,NULL,0,0),(3834,2,1,1253.00,'CR',NULL,'',NULL,1,NULL,0,0),(3835,1,4834,138.00,'DR',NULL,'',NULL,1,NULL,0,0),(3835,2,1,138.00,'CR',NULL,'',NULL,1,NULL,0,0),(3836,1,4831,10.00,'DR',NULL,'',NULL,1,NULL,0,0),(3836,2,1,10.00,'CR',NULL,'',NULL,1,NULL,0,0),(3837,1,4842,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(3837,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(3838,1,4826,2500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3838,2,1,2500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3839,1,4993,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3839,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3840,1,4826,22000.00,'DR',NULL,'169159',NULL,1,NULL,0,0),(3840,2,5119,22000.00,'CR',NULL,'169159',NULL,1,NULL,0,0),(3841,1,4985,51254.63,'CR',NULL,'',NULL,1,NULL,0,0),(3841,2,5119,51254.63,'DR',NULL,'',NULL,1,NULL,0,0),(3842,1,4826,3270.00,'DR',NULL,'',NULL,1,NULL,0,0),(3842,2,1,3270.00,'CR',NULL,'',NULL,1,NULL,0,0),(3843,1,4840,30.00,'DR',NULL,'',NULL,1,NULL,0,0),(3843,2,1,30.00,'CR',NULL,'',NULL,1,NULL,0,0),(3844,1,4842,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3844,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3845,1,4991,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3845,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3846,1,4991,1000.00,'DR',NULL,'290802',NULL,1,NULL,0,0),(3846,2,5105,1000.00,'CR',NULL,'290802',NULL,1,NULL,0,0),(3847,1,4821,13500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3847,2,1,13500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3848,1,5105,8500.00,'CR',NULL,'290803',NULL,1,NULL,0,0),(3848,2,1,8500.00,'DR',NULL,'290803',NULL,1,NULL,0,0),(3849,1,4834,13.00,'DR',NULL,'',NULL,1,NULL,0,0),(3849,2,1,13.00,'CR',NULL,'',NULL,1,NULL,0,0),(3850,1,4872,40.00,'DR',NULL,'',NULL,1,NULL,0,0),(3850,2,1,40.00,'CR',NULL,'',NULL,1,NULL,0,0),(3851,1,4837,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3851,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3852,1,4991,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3852,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3853,1,4983,970.00,'DR',NULL,'290804',NULL,1,NULL,0,0),(3853,2,5105,970.00,'CR',NULL,'290804',NULL,1,NULL,0,0),(3854,1,4874,300000.00,'DR',NULL,'74423',NULL,1,NULL,0,0),(3854,2,5110,300000.00,'CR',NULL,'74423',NULL,1,NULL,0,0),(3855,1,4827,600.00,'DR',NULL,'',NULL,1,NULL,0,0),(3855,2,1,600.00,'CR',NULL,'',NULL,1,NULL,0,0),(3856,1,4831,448.00,'DR',NULL,'',NULL,1,NULL,0,0),(3856,2,1,448.00,'CR',NULL,'',NULL,1,NULL,0,0),(3857,1,4872,263.00,'DR',NULL,'',NULL,1,NULL,0,0),(3857,2,1,263.00,'CR',NULL,'',NULL,1,NULL,0,0),(3858,1,4827,178.00,'DR',NULL,'',NULL,1,NULL,0,0),(3858,2,1,178.00,'CR',NULL,'',NULL,1,NULL,0,0),(3859,1,4827,535.00,'DR',NULL,'',NULL,1,NULL,0,0),(3859,2,1,535.00,'CR',NULL,'',NULL,1,NULL,0,0),(3860,1,4867,454.00,'DR',NULL,'',NULL,1,NULL,0,0),(3860,2,1,454.00,'CR',NULL,'',NULL,1,NULL,0,0),(3861,1,4872,33.00,'DR',NULL,'',NULL,1,NULL,0,0),(3861,2,1,33.00,'CR',NULL,'',NULL,1,NULL,0,0),(3862,1,4827,218.00,'DR',NULL,'',NULL,1,NULL,0,0),(3862,2,1,218.00,'CR',NULL,'',NULL,1,NULL,0,0),(3863,1,4842,1620.00,'DR',NULL,'',NULL,1,NULL,0,0),(3863,2,1,1620.00,'CR',NULL,'',NULL,1,NULL,0,0),(3864,1,4834,18.00,'DR',NULL,'',NULL,1,NULL,0,0),(3864,2,1,18.00,'CR',NULL,'',NULL,1,NULL,0,0),(3865,1,5105,30000.00,'CR',NULL,'290805',NULL,1,NULL,0,0),(3865,2,1,30000.00,'DR',NULL,'290805',NULL,1,NULL,0,0),(3866,1,4826,2500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3866,2,1,2500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3867,1,4824,20.00,'DR',NULL,'',NULL,1,NULL,0,0),(3867,2,1,20.00,'CR',NULL,'',NULL,1,NULL,0,0),(3868,1,4827,2153.00,'DR',NULL,'',NULL,1,NULL,0,0),(3868,2,1,2153.00,'CR',NULL,'',NULL,1,NULL,0,0),(3869,1,4994,262.00,'DR',NULL,'',NULL,1,NULL,0,0),(3869,2,1,262.00,'CR',NULL,'',NULL,1,NULL,0,0),(3870,1,4873,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3870,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3871,1,4827,52.00,'DR',NULL,'',NULL,1,NULL,0,0),(3871,2,1,52.00,'CR',NULL,'',NULL,1,NULL,0,0),(3872,1,4827,142.00,'DR',NULL,'',NULL,1,NULL,0,0),(3872,2,1,142.00,'CR',NULL,'',NULL,1,NULL,0,0),(3873,1,4830,167.00,'DR',NULL,'',NULL,1,NULL,0,0),(3873,2,1,167.00,'CR',NULL,'',NULL,1,NULL,0,0),(3874,1,4812,200000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3874,2,1,200000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3875,1,1,100000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3875,2,5105,100000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3876,1,4812,250000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3876,2,1,250000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3877,1,1,250000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3877,2,5105,250000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3878,1,4812,10500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3878,2,1,10500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3879,1,1,10500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3879,2,5105,10500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3880,1,4812,13359.00,'CR',NULL,'',NULL,1,NULL,0,0),(3880,2,1,13359.00,'DR',NULL,'',NULL,1,NULL,0,0),(3881,1,1,13359.00,'CR',NULL,'',NULL,1,NULL,0,0),(3881,2,5105,13359.00,'DR',NULL,'',NULL,1,NULL,0,0),(3882,1,4859,20000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3882,2,5105,20000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3883,1,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3883,2,5106,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3884,1,4842,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(3884,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(3885,1,4842,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3885,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3886,1,4842,902.00,'DR',NULL,'',NULL,1,NULL,0,0),(3886,2,1,902.00,'CR',NULL,'',NULL,1,NULL,0,0),(3887,1,4827,60.00,'DR',NULL,'',NULL,1,NULL,0,0),(3887,2,1,60.00,'CR',NULL,'',NULL,1,NULL,0,0),(3888,1,4842,161.00,'DR',NULL,'',NULL,1,NULL,0,0),(3888,2,1,161.00,'CR',NULL,'',NULL,1,NULL,0,0),(3889,1,4842,10146.00,'DR',NULL,'',NULL,1,NULL,0,0),(3889,2,1,10146.00,'CR',NULL,'',NULL,1,NULL,0,0),(3890,1,4827,478.00,'DR',NULL,'',NULL,1,NULL,0,0),(3890,2,1,478.00,'CR',NULL,'',NULL,1,NULL,0,0),(3891,1,4824,20.00,'DR',NULL,'',NULL,1,NULL,0,0),(3891,2,1,20.00,'CR',NULL,'',NULL,1,NULL,0,0),(3892,1,4831,228.00,'DR',NULL,'',NULL,1,NULL,0,0),(3892,2,1,228.00,'CR',NULL,'',NULL,1,NULL,0,0),(3893,1,4826,490.00,'DR',NULL,'',NULL,1,NULL,0,0),(3893,2,1,490.00,'CR',NULL,'',NULL,1,NULL,0,0),(3894,1,4868,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3894,2,1,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3895,1,4826,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3895,2,1,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3896,1,4826,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3896,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3897,1,4826,15000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3897,2,1,15000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3898,1,4826,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3898,2,1,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3899,1,4826,2500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3899,2,1,2500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3900,1,4840,1600.00,'DR',NULL,'',NULL,1,NULL,0,0),(3900,2,1,1600.00,'CR',NULL,'',NULL,1,NULL,0,0),(3901,1,4801,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(3901,2,1,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(3902,1,4801,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(3902,2,1,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(3903,1,4801,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(3903,2,1,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(3904,1,4801,310.00,'CR',NULL,'',NULL,1,NULL,0,0),(3904,2,1,310.00,'DR',NULL,'',NULL,1,NULL,0,0),(3905,1,4801,50.00,'CR',NULL,'',NULL,1,NULL,0,0),(3905,2,1,50.00,'DR',NULL,'',NULL,1,NULL,0,0),(3906,1,4801,50.00,'CR',NULL,'',NULL,1,NULL,0,0),(3906,2,1,50.00,'DR',NULL,'',NULL,1,NULL,0,0),(3907,1,4801,50.00,'CR',NULL,'',NULL,1,NULL,0,0),(3907,2,1,50.00,'DR',NULL,'',NULL,1,NULL,0,0),(3908,1,4801,457.00,'CR',NULL,'',NULL,1,NULL,0,0),(3908,2,1,457.00,'DR',NULL,'',NULL,1,NULL,0,0),(3909,1,4801,650.00,'CR',NULL,'',NULL,1,NULL,0,0),(3909,2,1,650.00,'DR',NULL,'',NULL,1,NULL,0,0),(3910,1,4801,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(3910,2,1,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(3911,1,4801,175.00,'CR',NULL,'',NULL,1,NULL,0,0),(3911,2,1,175.00,'DR',NULL,'',NULL,1,NULL,0,0),(3912,1,4801,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(3912,2,1,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(3913,1,4801,850.00,'CR',NULL,'',NULL,1,NULL,0,0),(3913,2,1,850.00,'DR',NULL,'',NULL,1,NULL,0,0),(3914,1,4801,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(3914,2,1,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(3915,1,4801,724.00,'CR',NULL,'',NULL,1,NULL,0,0),(3915,2,1,724.00,'DR',NULL,'',NULL,1,NULL,0,0),(3916,1,4801,248.00,'CR',NULL,'',NULL,1,NULL,0,0),(3916,2,1,248.00,'DR',NULL,'',NULL,1,NULL,0,0),(3917,1,4801,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(3917,2,1,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(3918,1,4801,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(3918,2,1,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(3919,1,4801,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3919,2,1,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3920,1,4801,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(3920,2,1,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(3921,1,4828,3740.00,'DR',NULL,'170220',NULL,1,NULL,0,0),(3921,2,5119,3740.00,'CR',NULL,'170220',NULL,1,NULL,0,0),(3922,1,4987,100000.00,'DR',NULL,'170221',NULL,1,NULL,0,0),(3922,2,5119,100000.00,'CR',NULL,'170221',NULL,1,NULL,0,0),(3923,1,4801,260.00,'CR',NULL,'',NULL,1,NULL,0,0),(3923,2,1,260.00,'DR',NULL,'',NULL,1,NULL,0,0),(3924,1,4801,750.00,'CR',NULL,'',NULL,1,NULL,0,0),(3924,2,1,750.00,'DR',NULL,'',NULL,1,NULL,0,0),(3925,1,4801,165.00,'CR',NULL,'',NULL,1,NULL,0,0),(3925,2,1,165.00,'DR',NULL,'',NULL,1,NULL,0,0),(3926,1,4801,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(3926,2,1,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(3927,1,4801,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(3927,2,1,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(3928,1,4801,1943.00,'CR',NULL,'',NULL,1,NULL,0,0),(3928,2,1,1943.00,'DR',NULL,'',NULL,1,NULL,0,0),(3929,1,4801,385.00,'CR',NULL,'',NULL,1,NULL,0,0),(3929,2,1,385.00,'DR',NULL,'',NULL,1,NULL,0,0),(3930,1,4801,275.00,'CR',NULL,'',NULL,1,NULL,0,0),(3930,2,1,275.00,'DR',NULL,'',NULL,1,NULL,0,0),(3931,1,4817,1750.00,'DR',NULL,'170223',NULL,1,NULL,0,0),(3931,2,5119,1750.00,'CR',NULL,'170223',NULL,1,NULL,0,0),(3932,1,4817,1750.00,'DR',NULL,'170224',NULL,1,NULL,0,0),(3932,2,5119,1750.00,'CR',NULL,'170224',NULL,1,NULL,0,0),(3933,1,4817,1750.00,'DR',NULL,'170225',NULL,1,NULL,0,0),(3933,2,5119,1750.00,'CR',NULL,'170225',NULL,1,NULL,0,0),(3934,1,4817,1250.00,'DR',NULL,'170226',NULL,1,NULL,0,0),(3934,2,5119,1250.00,'CR',NULL,'170226',NULL,1,NULL,0,0),(3935,1,4828,2640.00,'DR',NULL,'170227',NULL,1,NULL,0,0),(3935,2,5119,2640.00,'CR',NULL,'170227',NULL,1,NULL,0,0),(3936,1,4828,1760.00,'DR',NULL,'170228',NULL,1,NULL,0,0),(3936,2,5119,1760.00,'CR',NULL,'170228',NULL,1,NULL,0,0),(3937,1,4826,2310.00,'DR',NULL,'170229',NULL,1,NULL,0,0),(3937,2,5119,2310.00,'CR',NULL,'170229',NULL,1,NULL,0,0),(3938,1,4997,1850.00,'DR',NULL,'170230',NULL,1,NULL,0,0),(3938,2,5119,1850.00,'CR',NULL,'170230',NULL,1,NULL,0,0),(3939,1,4997,1500.00,'DR',NULL,'170231',NULL,1,NULL,0,0),(3939,2,5119,1500.00,'CR',NULL,'170231',NULL,1,NULL,0,0),(3940,1,4993,406149.00,'DR',NULL,'170232',NULL,1,NULL,0,0),(3940,2,5119,406149.00,'CR',NULL,'170232',NULL,1,NULL,0,0),(3941,1,4873,10000.00,'DR',NULL,'170233',NULL,1,NULL,0,0),(3941,2,5119,10000.00,'CR',NULL,'170233',NULL,1,NULL,0,0),(3942,1,4988,36093.00,'DR',NULL,'170234',NULL,1,NULL,0,0),(3942,2,5119,36093.00,'CR',NULL,'170234',NULL,1,NULL,0,0),(3943,1,4985,20000.00,'DR',NULL,'170235',NULL,1,NULL,0,0),(3943,2,5119,20000.00,'CR',NULL,'170235',NULL,1,NULL,0,0),(3944,1,5119,10000.00,'CR',NULL,'170236',NULL,1,NULL,0,0),(3944,2,1,10000.00,'DR',NULL,'170236',NULL,1,NULL,0,0),(3945,1,4826,2500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3945,2,1,2500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3946,1,4826,5500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3946,2,1,5500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3947,1,4826,1600.00,'DR',NULL,'',NULL,1,NULL,0,0),(3947,2,1,1600.00,'CR',NULL,'',NULL,1,NULL,0,0),(3948,1,4834,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(3948,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(3949,1,4988,199410.00,'DR',NULL,'170238',NULL,1,NULL,0,0),(3949,2,5119,199410.00,'CR',NULL,'170238',NULL,1,NULL,0,0),(3950,1,4985,59443.50,'DR',NULL,'170239',NULL,1,NULL,0,0),(3950,2,5119,59443.50,'CR',NULL,'170239',NULL,1,NULL,0,0),(3951,1,4985,59268.02,'DR',NULL,'170240',NULL,1,NULL,0,0),(3951,2,5119,59268.02,'CR',NULL,'170240',NULL,1,NULL,0,0),(3952,1,4985,44751.35,'DR',NULL,'170241',NULL,1,NULL,0,0),(3952,2,5119,44751.35,'CR',NULL,'170241',NULL,1,NULL,0,0),(3953,1,5119,30000.00,'CR',NULL,'170237',NULL,1,NULL,0,0),(3953,2,1,30000.00,'DR',NULL,'170237',NULL,1,NULL,0,0),(3954,1,4826,18000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3954,2,1,18000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3955,1,4826,3750.00,'DR',NULL,'',NULL,1,NULL,0,0),(3955,2,1,3750.00,'CR',NULL,'',NULL,1,NULL,0,0),(3956,1,4821,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(3956,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(3957,1,4830,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(3957,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(3958,1,4826,1700.00,'DR',NULL,'',NULL,1,NULL,0,0),(3958,2,1,1700.00,'CR',NULL,'',NULL,1,NULL,0,0),(3959,1,4831,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(3959,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(3960,1,4889,76775.00,'DR',NULL,'170242',NULL,1,NULL,0,0),(3960,2,5119,76775.00,'CR',NULL,'170242',NULL,1,NULL,0,0),(3961,1,4993,45243.00,'DR',NULL,'170243',NULL,1,NULL,0,0),(3961,2,5119,45243.00,'CR',NULL,'170243',NULL,1,NULL,0,0),(3962,1,4873,50000.00,'DR',NULL,'170244',NULL,1,NULL,0,0),(3962,2,5119,50000.00,'CR',NULL,'170244',NULL,1,NULL,0,0),(3963,1,4873,75000.00,'DR',NULL,'170245',NULL,1,NULL,0,0),(3963,2,5119,75000.00,'CR',NULL,'170245',NULL,1,NULL,0,0),(3964,1,4985,200000.00,'DR',NULL,'170246',NULL,1,NULL,0,0),(3964,2,5119,200000.00,'CR',NULL,'170246',NULL,1,NULL,0,0),(3965,1,4985,89704.95,'DR',NULL,'170247',NULL,1,NULL,0,0),(3965,2,5119,89704.95,'CR',NULL,'170247',NULL,1,NULL,0,0),(3966,1,4985,43948.57,'DR',NULL,'170248',NULL,1,NULL,0,0),(3966,2,5119,43948.57,'CR',NULL,'170248',NULL,1,NULL,0,0),(3967,1,4987,100000.00,'DR',NULL,'170249',NULL,1,NULL,0,0),(3967,2,5119,100000.00,'CR',NULL,'170249',NULL,1,NULL,0,0),(3968,1,4987,34584.00,'DR',NULL,'170250',NULL,1,NULL,0,0),(3968,2,5119,34584.00,'CR',NULL,'170250',NULL,1,NULL,0,0),(3969,1,4985,52212.85,'DR',NULL,'170251',NULL,1,NULL,0,0),(3969,2,5119,52212.85,'CR',NULL,'170251',NULL,1,NULL,0,0),(3970,1,4873,25000.00,'DR',NULL,'170252',NULL,1,NULL,0,0),(3970,2,5119,25000.00,'CR',NULL,'170252',NULL,1,NULL,0,0),(3971,1,4985,43538.88,'DR',NULL,'170253',NULL,1,NULL,0,0),(3971,2,5119,43538.88,'CR',NULL,'170253',NULL,1,NULL,0,0),(3972,1,4992,57640.00,'DR',NULL,'170254',NULL,1,NULL,0,0),(3972,2,5119,57640.00,'CR',NULL,'170254',NULL,1,NULL,0,0),(3973,1,5119,3131.00,'CR',NULL,'170255',NULL,1,NULL,0,0),(3973,2,1,3131.00,'DR',NULL,'170255',NULL,1,NULL,0,0),(3974,1,4827,204.00,'DR',NULL,'',NULL,1,NULL,0,0),(3974,2,1,204.00,'CR',NULL,'',NULL,1,NULL,0,0),(3975,1,4831,27.00,'DR',NULL,'',NULL,1,NULL,0,0),(3975,2,1,27.00,'CR',NULL,'',NULL,1,NULL,0,0),(3976,1,4826,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(3976,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(3977,1,4863,2930.00,'DR',NULL,'170256',NULL,1,NULL,0,0),(3977,2,5119,2930.00,'CR',NULL,'170256',NULL,1,NULL,0,0),(3978,1,4817,9000.00,'DR',NULL,'170257',NULL,1,NULL,0,0),(3978,2,5119,9000.00,'CR',NULL,'170257',NULL,1,NULL,0,0),(3979,1,4821,5000.00,'DR',NULL,'170258',NULL,1,NULL,0,0),(3979,2,5119,5000.00,'CR',NULL,'170258',NULL,1,NULL,0,0),(3980,1,4985,30311.88,'DR',NULL,'170259',NULL,1,NULL,0,0),(3980,2,5119,30311.88,'CR',NULL,'170259',NULL,1,NULL,0,0),(3981,1,4865,4000.00,'DR',NULL,'170260',NULL,1,NULL,0,0),(3981,2,5119,4000.00,'CR',NULL,'170260',NULL,1,NULL,0,0),(3982,1,4993,100000.00,'DR',NULL,'170261',NULL,1,NULL,0,0);
/*!40000 ALTER TABLE `voucher_trans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-06 14:22:09

