-- MySQL dump 10.13  Distrib 5.6.10, for Win32 (x86)
--
-- Host: localhost    Database: acperp
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
-- Current Database: `acperp`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `acperp` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `acperp`;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounting_year`
--

LOCK TABLES `accounting_year` WRITE;
/*!40000 ALTER TABLE `accounting_year` DISABLE KEYS */;
INSERT INTO `accounting_year` VALUES (8,'2015-04-01 00:00:00','2016-03-31 00:00:00','2015-04-01 00:00:00',1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
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
INSERT INTO `headoffice_mapped_ledger` VALUES (1045,1),(1046,2),(1047,3),(1048,4),(1049,5),(1050,6),(1051,7),(1052,8),(1053,9),(1054,10),(1055,11),(1056,12),(1057,13),(1058,14),(1059,15),(1060,16),(1061,17),(1062,18),(1063,19),(1064,20),(1065,21),(1066,22),(1067,23),(1068,24),(1069,25),(1070,26),(1071,27),(1072,28),(1073,29),(1074,30),(1075,31),(1076,32),(1077,33),(1078,34),(1079,35),(1080,36),(1081,37),(1082,38),(1083,39),(1084,40),(1085,41),(1086,42),(1087,43),(1088,44),(1089,45),(1090,46),(1091,47),(1092,48),(1093,49),(1094,50),(1095,51),(1096,52),(1097,53),(1098,54),(1099,55),(1100,56),(1101,57),(1102,58),(1103,59),(1104,60),(1105,61),(1106,62),(1107,63),(1108,64),(1109,65),(1110,66),(1111,67),(1112,68),(1113,69),(1114,70),(1115,71),(1116,72),(1117,73),(1118,74),(1119,75),(1120,76),(1121,77),(1122,78),(1123,79),(1124,80),(1125,81),(1126,82),(1127,83),(1128,84),(1129,85),(1130,86),(1131,87),(1132,88),(1133,89),(1134,90),(1135,91),(1136,92),(1137,93),(1138,94),(1139,95),(1140,96),(1141,97),(1142,98),(1143,99),(1144,100),(1145,101),(1146,102),(1147,103),(1148,104),(1149,105),(1150,106),(1151,107),(1152,108),(1153,109),(1154,110),(1155,111),(1156,112),(1157,113),(1158,114),(1159,115),(1160,116),(1161,117),(1162,118),(1163,119),(1164,120),(1165,121),(1166,122),(1167,123),(1168,124),(1169,125),(1170,126),(1171,127),(1172,128),(1173,129),(1174,130),(1175,131),(1176,132),(1177,133),(1178,134),(1179,135),(1180,136),(1181,137),(1182,138),(1183,139),(1184,140),(1185,141),(1186,142),(1187,143),(1188,144),(1189,145),(1190,146),(1191,147),(1192,148),(1193,149),(1194,150),(1195,151),(1196,152),(1197,153),(1198,154),(1199,155),(1200,156),(1201,157),(1202,158),(1203,159),(1204,160),(1205,161),(1206,162),(1207,163),(1208,164),(1209,165),(1210,166),(1211,167),(1212,168),(1213,169),(1214,170),(1215,171),(1216,172),(1217,173),(1218,174),(1219,175),(1220,176),(1221,177),(1222,178),(1223,179),(1224,180),(1225,181),(1226,182),(1227,183),(1228,184),(1229,185),(1230,186),(1231,187),(1232,188),(1233,189),(1234,190),(1235,191),(1236,192),(1237,193),(1238,194),(1239,195),(1240,196),(1241,197),(1242,198),(1243,199),(1244,200),(1245,201),(1246,202),(1247,203),(1248,204),(1249,205),(1250,206),(1251,207),(1252,208),(1253,209),(1254,210),(1255,211),(1256,212),(1257,213),(1258,214),(1259,215),(1260,216),(1261,217),(1262,218),(1263,219),(1264,220),(1265,221),(1266,222),(1267,223),(1268,224),(1269,225),(1270,226),(1271,227),(1272,228),(1273,229),(1274,230),(1275,231),(1276,232),(1277,233),(1278,234),(1279,235),(1280,236),(1281,237),(1282,238),(1283,239),(1284,240),(1285,241),(1286,242),(1287,243),(1288,244),(1289,245),(1290,246),(1291,247),(1292,248),(1293,249),(1294,250),(1295,251),(1296,252),(1297,253),(1298,254),(1299,255),(1300,256),(1301,257),(1302,258),(1303,259),(1304,260),(1305,261),(1306,262),(1307,263),(1308,264),(1309,265),(1310,266),(1311,267),(1312,268),(1313,269),(1314,270),(1315,271),(1316,272),(1317,273),(1318,274),(1319,275),(1320,276),(1321,277),(1322,278),(1323,279),(1324,280),(1325,281),(1326,282),(1327,283),(1328,284),(1329,285),(1330,286),(1331,287),(1332,288),(1333,289),(1334,290),(1335,291);
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
INSERT INTO `ledger_balance` VALUES ('2015-03-28 00:00:00',1,1351,1397.00,'DR','OP',0),('2015-03-28 00:00:00',2,1,19226.00,'DR','OP',0),('2015-03-28 00:00:00',2,1353,302563.50,'DR','OP',0),('2015-03-28 00:00:00',3,1,12488.00,'DR','OP',0),('2015-03-28 00:00:00',4,1,840.00,'DR','OP',0),('2015-03-28 00:00:00',4,1352,72680.00,'DR','OP',0),('2015-03-31 00:00:00',1,1366,0.00,'CR','OP',0),('2015-03-31 00:00:00',2,1366,0.00,'CR','OP',0),('2015-03-31 00:00:00',3,1366,0.00,'CR','OP',0),('2015-03-31 00:00:00',4,1366,0.00,'CR','OP',0),('2015-04-01 00:00:00',4,1,2660.00,'CR','TR',0),('2015-04-01 00:00:00',4,1119,3500.00,'DR','TR',0),('2015-04-01 00:00:00',4,1352,72680.00,'DR','TR',0),('2015-04-02 00:00:00',2,1,18475.00,'DR','TR',0),('2015-04-02 00:00:00',2,1155,480.00,'DR','TR',0),('2015-04-02 00:00:00',2,1227,271.00,'DR','TR',0),('2015-04-03 00:00:00',2,1,20175.00,'DR','TR',0),('2015-04-03 00:00:00',2,1106,1700.00,'CR','TR',0),('2015-04-04 00:00:00',2,1,18042.00,'DR','TR',0),('2015-04-04 00:00:00',2,1211,1000.00,'DR','TR',0),('2015-04-04 00:00:00',2,1221,845.00,'DR','TR',0),('2015-04-04 00:00:00',2,1236,288.00,'DR','TR',0),('2015-04-05 00:00:00',2,1,17863.00,'DR','TR',0),('2015-04-05 00:00:00',2,1221,1024.00,'DR','TR',0),('2015-04-05 00:00:00',3,1,12368.00,'DR','TR',0),('2015-04-05 00:00:00',3,1221,120.00,'DR','TR',0),('2015-04-06 00:00:00',2,1,17803.00,'DR','TR',0),('2015-04-06 00:00:00',2,1170,6.00,'DR','TR',0),('2015-04-06 00:00:00',2,1171,60.00,'DR','TR',0),('2015-04-06 00:00:00',2,1238,72700.00,'DR','TR',0),('2015-04-06 00:00:00',2,1353,229857.50,'DR','TR',0),('2015-04-08 00:00:00',3,1,13168.00,'DR','TR',0),('2015-04-08 00:00:00',3,1096,800.00,'CR','TR',0),('2015-04-09 00:00:00',2,1,37503.00,'DR','TR',0),('2015-04-09 00:00:00',2,1224,300.00,'DR','TR',0),('2015-04-09 00:00:00',2,1238,82700.00,'DR','TR',0),('2015-04-09 00:00:00',2,1353,199857.50,'DR','TR',0),('2015-04-09 00:00:00',3,1,12965.00,'DR','TR',0),('2015-04-09 00:00:00',3,1221,323.00,'DR','TR',0),('2015-04-10 00:00:00',2,1,27443.00,'DR','TR',0),('2015-04-10 00:00:00',2,1221,1084.00,'DR','TR',0),('2015-04-10 00:00:00',2,1238,92700.00,'DR','TR',0),('2015-04-10 00:00:00',3,1,11465.00,'DR','TR',0),('2015-04-10 00:00:00',3,1221,1823.00,'DR','TR',0),('2015-04-11 00:00:00',2,1,25851.00,'DR','TR',0),('2015-04-11 00:00:00',2,1221,1374.00,'DR','TR',0),('2015-04-11 00:00:00',2,1226,652.00,'DR','TR',0),('2015-04-11 00:00:00',2,1241,300.00,'DR','TR',0),('2015-04-11 00:00:00',2,1245,100.00,'DR','TR',0),('2015-04-11 00:00:00',2,1249,250.00,'DR','TR',0),('2015-04-11 00:00:00',3,1,13465.00,'DR','TR',0),('2015-04-11 00:00:00',3,1096,2800.00,'CR','TR',0),('2015-04-15 00:00:00',2,1,24201.00,'DR','TR',0),('2015-04-15 00:00:00',2,1211,1350.00,'DR','TR',0),('2015-04-15 00:00:00',2,1241,1600.00,'DR','TR',0),('2015-04-15 00:00:00',3,1,11940.00,'DR','TR',0),('2015-04-15 00:00:00',3,1221,3348.00,'DR','TR',0),('2015-04-16 00:00:00',2,1,22766.00,'DR','TR',0),('2015-04-16 00:00:00',2,1171,148.00,'DR','TR',0),('2015-04-16 00:00:00',2,1221,2483.00,'DR','TR',0),('2015-04-16 00:00:00',2,1226,820.00,'DR','TR',0),('2015-04-16 00:00:00',2,1249,320.00,'DR','TR',0),('2015-04-17 00:00:00',3,1,13440.00,'DR','TR',0),('2015-04-17 00:00:00',3,1096,4300.00,'CR','TR',0),('2015-04-18 00:00:00',2,1,22636.00,'DR','TR',0),('2015-04-18 00:00:00',2,1171,278.00,'DR','TR',0),('2015-04-19 00:00:00',2,1,22156.00,'DR','TR',0),('2015-04-19 00:00:00',2,1152,300.00,'DR','TR',0),('2015-04-19 00:00:00',2,1249,500.00,'DR','TR',0),('2015-04-21 00:00:00',2,1,71843.00,'DR','TR',0),('2015-04-21 00:00:00',2,1171,378.00,'DR','TR',0),('2015-04-21 00:00:00',2,1221,2696.00,'DR','TR',0),('2015-04-21 00:00:00',2,1353,149857.50,'DR','TR',0),('2015-04-21 00:00:00',3,1,14440.00,'DR','TR',0),('2015-04-21 00:00:00',3,1096,5300.00,'CR','TR',0),('2015-04-22 00:00:00',2,1,71493.00,'DR','TR',0),('2015-04-22 00:00:00',2,1245,450.00,'DR','TR',0),('2015-04-22 00:00:00',3,1,13578.00,'DR','TR',0),('2015-04-22 00:00:00',3,1221,4210.00,'DR','TR',0),('2015-04-23 00:00:00',2,1,71400.00,'DR','TR',0),('2015-04-23 00:00:00',2,1221,2789.00,'DR','TR',0),('2015-04-23 00:00:00',3,1,11603.00,'DR','TR',0),('2015-04-23 00:00:00',3,1221,6185.00,'DR','TR',0),('2015-04-24 00:00:00',2,1,61450.00,'DR','TR',0),('2015-04-24 00:00:00',2,1238,102650.00,'DR','TR',0),('2015-04-25 00:00:00',2,1,49915.00,'DR','TR',0),('2015-04-25 00:00:00',2,1221,3059.00,'DR','TR',0),('2015-04-25 00:00:00',2,1238,113715.00,'DR','TR',0),('2015-04-25 00:00:00',2,1241,1800.00,'DR','TR',0),('2015-04-26 00:00:00',2,1,49795.00,'DR','TR',0),('2015-04-26 00:00:00',2,1221,3179.00,'DR','TR',0),('2015-04-27 00:00:00',2,1,41045.00,'DR','TR',0),('2015-04-27 00:00:00',2,1238,122465.00,'DR','TR',0),('2015-04-28 00:00:00',2,1,40562.00,'DR','TR',0),('2015-04-28 00:00:00',2,1227,654.00,'DR','TR',0),('2015-04-28 00:00:00',2,1245,550.00,'DR','TR',0),('2015-04-29 00:00:00',2,1,31062.00,'DR','TR',0),('2015-04-29 00:00:00',2,1223,750.00,'DR','TR',0),('2015-04-29 00:00:00',2,1238,131215.00,'DR','TR',0),('2015-04-30 00:00:00',2,1,25923.00,'DR','TR',0),('2015-04-30 00:00:00',2,1119,18500.00,'CR','TR',0),('2015-04-30 00:00:00',2,1152,8130.00,'DR','TR',0),('2015-04-30 00:00:00',2,1160,270.00,'DR','TR',0),('2015-04-30 00:00:00',2,1171,1298.00,'DR','TR',0),('2015-04-30 00:00:00',2,1197,100.00,'DR','TR',0),('2015-04-30 00:00:00',2,1221,8618.00,'DR','TR',0),('2015-04-30 00:00:00',2,1238,139965.00,'DR','TR',0),('2015-04-30 00:00:00',2,1245,880.00,'DR','TR',0),('2015-04-30 00:00:00',3,1,5803.00,'DR','TR',0),('2015-04-30 00:00:00',3,1119,4000.00,'DR','TR',0),('2015-04-30 00:00:00',3,1152,1800.00,'DR','TR',0),('2015-04-30 00:00:00',4,1,1690.00,'DR','TR',0),('2015-04-30 00:00:00',4,1100,4350.00,'CR','TR',0),('2015-05-02 00:00:00',2,1,25871.00,'DR','TR',0),('2015-05-02 00:00:00',2,1221,8670.00,'DR','TR',0),('2015-05-04 00:00:00',2,1,20146.00,'DR','TR',0),('2015-05-04 00:00:00',2,1205,294.00,'DR','TR',0),('2015-05-04 00:00:00',2,1211,2350.00,'DR','TR',0),('2015-05-04 00:00:00',2,1221,9381.00,'DR','TR',0),('2015-05-04 00:00:00',2,1249,4220.00,'DR','TR',0),('2015-05-06 00:00:00',2,1,19271.00,'DR','TR',0),('2015-05-06 00:00:00',2,1171,2173.00,'DR','TR',0),('2015-05-07 00:00:00',2,1,18538.00,'DR','TR',0),('2015-05-07 00:00:00',2,1171,2473.00,'DR','TR',0),('2015-05-07 00:00:00',2,1205,727.00,'DR','TR',0),('2015-05-08 00:00:00',2,1,17238.00,'DR','TR',0),('2015-05-08 00:00:00',2,1171,3773.00,'DR','TR',0),('2015-05-08 00:00:00',3,1,5000.00,'DR','TR',0),('2015-05-08 00:00:00',3,1221,6988.00,'DR','TR',0),('2015-05-09 00:00:00',2,1,16368.00,'DR','TR',0),('2015-05-09 00:00:00',2,1171,4643.00,'DR','TR',0),('2015-05-11 00:00:00',2,1,14488.00,'DR','TR',0),('2015-05-11 00:00:00',2,1155,1010.00,'DR','TR',0),('2015-05-11 00:00:00',2,1171,5243.00,'DR','TR',0),('2015-05-11 00:00:00',2,1224,500.00,'DR','TR',0),('2015-05-11 00:00:00',2,1227,1204.00,'DR','TR',0),('2015-05-12 00:00:00',2,1,46968.00,'DR','TR',0),('2015-05-12 00:00:00',2,1154,90.00,'DR','TR',0),('2015-05-12 00:00:00',2,1171,5323.00,'DR','TR',0),('2015-05-12 00:00:00',2,1238,147315.00,'DR','TR',0),('2015-05-12 00:00:00',2,1353,109857.50,'DR','TR',0),('2015-05-13 00:00:00',2,1,31386.00,'DR','TR',0),('2015-05-13 00:00:00',2,1238,162015.00,'DR','TR',0),('2015-05-13 00:00:00',2,1241,2682.00,'DR','TR',0),('2015-05-14 00:00:00',2,1,28316.00,'DR','TR',0),('2015-05-14 00:00:00',2,1171,6543.00,'DR','TR',0),('2015-05-14 00:00:00',2,1205,1577.00,'DR','TR',0),('2015-05-14 00:00:00',2,1211,3350.00,'DR','TR',0),('2015-05-15 00:00:00',2,1,23112.00,'DR','TR',0),('2015-05-15 00:00:00',2,1154,345.00,'DR','TR',0),('2015-05-15 00:00:00',2,1221,11163.00,'DR','TR',0),('2015-05-15 00:00:00',2,1224,2325.00,'DR','TR',0),('2015-05-15 00:00:00',2,1226,1712.00,'DR','TR',0),('2015-05-15 00:00:00',2,1236,718.00,'DR','TR',0),('2015-05-15 00:00:00',2,1249,4240.00,'DR','TR',0),('2015-05-15 00:00:00',4,1,1520.00,'DR','TR',0),('2015-05-15 00:00:00',4,1171,170.00,'DR','TR',0),('2015-05-16 00:00:00',2,1,23013.00,'DR','TR',0),('2015-05-16 00:00:00',2,1221,11262.00,'DR','TR',0),('2015-05-18 00:00:00',2,1,22317.00,'DR','TR',0),('2015-05-18 00:00:00',2,1205,1800.00,'DR','TR',0),('2015-05-18 00:00:00',2,1221,11735.00,'DR','TR',0),('2015-05-19 00:00:00',2,1,6417.00,'DR','TR',0),('2015-05-19 00:00:00',2,1238,177915.00,'DR','TR',0),('2015-05-20 00:00:00',2,1,6357.00,'DR','TR',0),('2015-05-20 00:00:00',2,1221,11795.00,'DR','TR',0),('2015-05-22 00:00:00',2,1,1058.00,'CR','TR',0),('2015-05-22 00:00:00',2,1157,7192.00,'DR','TR',0),('2015-05-22 00:00:00',2,1205,1993.00,'DR','TR',0),('2015-05-22 00:00:00',2,1221,11825.00,'DR','TR',0),('2015-05-23 00:00:00',2,1,1426.00,'CR','TR',0),('2015-05-23 00:00:00',2,1155,1300.00,'DR','TR',0),('2015-05-23 00:00:00',2,1221,11903.00,'DR','TR',0),('2015-05-24 00:00:00',2,1,2026.00,'CR','TR',0),('2015-05-24 00:00:00',2,1171,7143.00,'DR','TR',0),('2015-05-25 00:00:00',2,1,36974.00,'DR','TR',0),('2015-05-25 00:00:00',2,1211,4350.00,'DR','TR',0),('2015-05-25 00:00:00',2,1353,69857.50,'DR','TR',0),('2015-05-27 00:00:00',2,1,24174.00,'DR','TR',0),('2015-05-27 00:00:00',2,1205,2103.00,'DR','TR',0),('2015-05-27 00:00:00',2,1224,2615.00,'DR','TR',0),('2015-05-27 00:00:00',2,1238,190315.00,'DR','TR',0),('2015-05-28 00:00:00',2,1,23114.00,'DR','TR',0),('2015-05-28 00:00:00',2,1221,12113.00,'DR','TR',0),('2015-05-28 00:00:00',2,1224,3465.00,'DR','TR',0),('2015-05-29 00:00:00',2,1,21280.00,'DR','TR',0),('2015-05-29 00:00:00',2,1227,3038.00,'DR','TR',0),('2015-05-30 00:00:00',2,1,3161.00,'DR','TR',0),('2015-05-30 00:00:00',2,1152,16984.00,'DR','TR',0),('2015-05-30 00:00:00',2,1171,7255.00,'DR','TR',0),('2015-05-30 00:00:00',2,1189,1500.00,'DR','TR',0),('2015-05-30 00:00:00',2,1197,305.00,'DR','TR',0),('2015-05-30 00:00:00',2,1206,88.00,'DR','TR',0),('2015-05-30 00:00:00',2,1211,4850.00,'DR','TR',0),('2015-05-30 00:00:00',2,1221,17705.00,'DR','TR',0),('2015-05-30 00:00:00',2,1224,3615.00,'DR','TR',0),('2015-05-30 00:00:00',2,1226,2115.00,'DR','TR',0),('2015-05-30 00:00:00',2,1236,933.00,'DR','TR',0),('2015-05-30 00:00:00',2,1238,190465.00,'DR','TR',0),('2015-05-30 00:00:00',2,1249,4590.00,'DR','TR',0),('2015-05-31 00:00:00',2,1,10436.00,'DR','TR',0),('2015-05-31 00:00:00',2,1119,26000.00,'CR','TR',0),('2015-05-31 00:00:00',2,1221,17930.00,'DR','TR',0),('2015-05-31 00:00:00',3,1,0.00,'DR','TR',0),('2015-05-31 00:00:00',3,1119,8000.00,'DR','TR',0),('2015-05-31 00:00:00',3,1152,2800.00,'DR','TR',0),('2015-05-31 00:00:00',4,1,1020.00,'DR','TR',0),('2015-05-31 00:00:00',4,1100,7350.00,'CR','TR',0),('2015-05-31 00:00:00',4,1119,7000.00,'DR','TR',0),('2015-06-01 00:00:00',2,1,10053.00,'DR','TR',0),('2015-06-01 00:00:00',2,1227,3421.00,'DR','TR',0),('2015-06-02 00:00:00',2,1,8757.00,'DR','TR',0),('2015-06-02 00:00:00',2,1205,3399.00,'DR','TR',0),('2015-06-03 00:00:00',2,1,10657.00,'DR','TR',0),('2015-06-03 00:00:00',2,1130,2000.00,'CR','TR',0),('2015-06-03 00:00:00',2,1238,190565.00,'DR','TR',0),('2015-06-03 00:00:00',2,1288,100000.00,'CR','TR',0),('2015-06-03 00:00:00',2,1353,169857.50,'DR','TR',0),('2015-06-04 00:00:00',2,1,10617.00,'DR','TR',0),('2015-06-04 00:00:00',2,1171,7295.00,'DR','TR',0),('2015-06-06 00:00:00',2,1,9802.00,'DR','TR',0),('2015-06-06 00:00:00',2,1223,1565.00,'DR','TR',0),('2015-06-07 00:00:00',2,1,9615.00,'DR','TR',0),('2015-06-07 00:00:00',2,1205,3586.00,'DR','TR',0),('2015-06-08 00:00:00',2,1,9570.00,'DR','TR',0),('2015-06-08 00:00:00',2,1205,3631.00,'DR','TR',0),('2015-06-09 00:00:00',2,1,39570.00,'DR','TR',0),('2015-06-09 00:00:00',2,1353,139857.50,'DR','TR',0),('2015-06-11 00:00:00',2,1,39510.00,'DR','TR',0),('2015-06-11 00:00:00',2,1221,17990.00,'DR','TR',0),('2015-06-12 00:00:00',2,1,37948.00,'DR','TR',0),('2015-06-12 00:00:00',2,1205,3706.00,'DR','TR',0),('2015-06-12 00:00:00',2,1221,18037.00,'DR','TR',0),('2015-06-12 00:00:00',2,1236,2373.00,'DR','TR',0),('2015-06-17 00:00:00',2,1,35886.00,'DR','TR',0),('2015-06-17 00:00:00',2,1171,7685.00,'DR','TR',0),('2015-06-17 00:00:00',2,1221,19461.00,'DR','TR',0),('2015-06-17 00:00:00',2,1226,2363.00,'DR','TR',0),('2015-06-17 00:00:00',3,1,2800.00,'DR','TR',0),('2015-06-17 00:00:00',3,1096,8100.00,'CR','TR',0),('2015-06-18 00:00:00',2,1,34886.00,'DR','TR',0),('2015-06-18 00:00:00',2,1249,5590.00,'DR','TR',0),('2015-06-19 00:00:00',2,1,34443.00,'DR','TR',0),('2015-06-19 00:00:00',2,1226,2806.00,'DR','TR',0),('2015-06-19 00:00:00',3,1,1622.00,'CR','TR',0),('2015-06-19 00:00:00',3,1221,9314.00,'DR','TR',0),('2015-06-19 00:00:00',3,1226,2096.00,'DR','TR',0),('2015-06-20 00:00:00',3,1,1772.00,'CR','TR',0),('2015-06-20 00:00:00',3,1155,150.00,'DR','TR',0),('2015-06-21 00:00:00',2,1,34193.00,'DR','TR',0),('2015-06-21 00:00:00',2,1152,17234.00,'DR','TR',0),('2015-06-21 00:00:00',3,1,1928.00,'CR','TR',0),('2015-06-21 00:00:00',3,1221,9470.00,'DR','TR',0),('2015-06-22 00:00:00',2,1,33966.00,'DR','TR',0),('2015-06-22 00:00:00',2,1221,19605.00,'DR','TR',0),('2015-06-22 00:00:00',2,1226,2889.00,'DR','TR',0),('2015-06-24 00:00:00',2,1,31897.00,'DR','TR',0),('2015-06-24 00:00:00',2,1205,4015.00,'DR','TR',0),('2015-06-24 00:00:00',2,1221,21365.00,'DR','TR',0),('2015-06-24 00:00:00',4,1,920.00,'DR','TR',0),('2015-06-24 00:00:00',4,1227,100.00,'DR','TR',0),('2015-06-25 00:00:00',2,1,31785.00,'DR','TR',0),('2015-06-25 00:00:00',2,1227,3533.00,'DR','TR',0),('2015-06-25 00:00:00',3,1,24072.00,'DR','TR',0),('2015-06-25 00:00:00',3,1096,34100.00,'CR','TR',0),('2015-06-26 00:00:00',2,1,31409.00,'DR','TR',0),('2015-06-26 00:00:00',2,1205,4391.00,'DR','TR',0),('2015-06-27 00:00:00',2,1,31109.00,'DR','TR',0),('2015-06-27 00:00:00',2,1152,17534.00,'DR','TR',0),('2015-06-27 00:00:00',3,1,31072.00,'DR','TR',0),('2015-06-27 00:00:00',3,1096,41100.00,'CR','TR',0),('2015-06-28 00:00:00',3,1,29561.00,'DR','TR',0),('2015-06-28 00:00:00',3,1221,9621.00,'DR','TR',0),('2015-06-28 00:00:00',3,1241,1360.00,'DR','TR',0),('2015-06-29 00:00:00',2,1,28719.00,'DR','TR',0),('2015-06-29 00:00:00',2,1155,1600.00,'DR','TR',0),('2015-06-29 00:00:00',2,1171,7765.00,'DR','TR',0),('2015-06-29 00:00:00',2,1211,5850.00,'DR','TR',0),('2015-06-29 00:00:00',2,1241,3692.00,'DR','TR',0),('2015-06-29 00:00:00',3,1,39561.00,'DR','TR',0),('2015-06-29 00:00:00',3,1096,51100.00,'CR','TR',0),('2015-06-30 00:00:00',2,1,30818.00,'DR','TR',0),('2015-06-30 00:00:00',2,1119,43500.00,'CR','TR',0),('2015-06-30 00:00:00',2,1152,26719.00,'DR','TR',0),('2015-06-30 00:00:00',2,1160,480.00,'DR','TR',0),('2015-06-30 00:00:00',2,1171,8200.00,'DR','TR',0),('2015-06-30 00:00:00',2,1197,405.00,'DR','TR',0),('2015-06-30 00:00:00',2,1206,253.00,'DR','TR',0),('2015-06-30 00:00:00',2,1221,26154.00,'DR','TR',0),('2015-06-30 00:00:00',2,1236,2573.00,'DR','TR',0),('2015-06-30 00:00:00',2,1238,190632.00,'DR','TR',0),('2015-06-30 00:00:00',2,1310,250.00,'DR','TR',0),('2015-06-30 00:00:00',3,1,32371.00,'DR','TR',0),('2015-06-30 00:00:00',3,1119,12000.00,'DR','TR',0),('2015-06-30 00:00:00',3,1152,4800.00,'DR','TR',0),('2015-06-30 00:00:00',3,1221,10811.00,'DR','TR',0),('2015-06-30 00:00:00',4,1,100.00,'DR','TR',0),('2015-06-30 00:00:00',4,1100,10030.00,'CR','TR',0),('2015-06-30 00:00:00',4,1119,10500.00,'DR','TR',0),('2015-07-02 00:00:00',2,1,30598.00,'DR','TR',0),('2015-07-02 00:00:00',2,1221,26374.00,'DR','TR',0),('2015-07-02 00:00:00',3,1,35111.00,'DR','TR',0),('2015-07-02 00:00:00',3,1096,54100.00,'CR','TR',0),('2015-07-02 00:00:00',3,1221,11071.00,'DR','TR',0),('2015-07-03 00:00:00',3,1,38111.00,'DR','TR',0),('2015-07-03 00:00:00',3,1096,57100.00,'CR','TR',0),('2015-07-04 00:00:00',2,1,29098.00,'DR','TR',0),('2015-07-04 00:00:00',2,1152,28219.00,'DR','TR',0),('2015-07-04 00:00:00',3,1,37772.00,'DR','TR',0),('2015-07-04 00:00:00',3,1221,11410.00,'DR','TR',0),('2015-07-05 00:00:00',4,1,2476.00,'CR','TR',0),('2015-07-05 00:00:00',4,1227,2676.00,'DR','TR',0),('2015-07-07 00:00:00',2,1,28238.00,'DR','TR',0),('2015-07-07 00:00:00',2,1181,860.00,'DR','TR',0),('2015-07-07 00:00:00',3,1,38772.00,'DR','TR',0),('2015-07-07 00:00:00',3,1096,58100.00,'CR','TR',0),('2015-07-09 00:00:00',2,1,27488.00,'DR','TR',0),('2015-07-09 00:00:00',2,1223,2315.00,'DR','TR',0),('2015-07-09 00:00:00',3,1,41197.00,'DR','TR',0),('2015-07-09 00:00:00',3,1096,61100.00,'CR','TR',0),('2015-07-09 00:00:00',3,1226,2671.00,'DR','TR',0),('2015-07-10 00:00:00',2,1,23337.00,'DR','TR',0),('2015-07-10 00:00:00',2,1221,26475.00,'DR','TR',0),('2015-07-10 00:00:00',2,1227,3913.00,'DR','TR',0),('2015-07-10 00:00:00',2,1238,194132.00,'DR','TR',0),('2015-07-10 00:00:00',2,1249,5760.00,'DR','TR',0),('2015-07-10 00:00:00',3,1,46093.00,'DR','TR',0),('2015-07-10 00:00:00',3,1096,66100.00,'CR','TR',0),('2015-07-10 00:00:00',3,1221,11514.00,'DR','TR',0),('2015-07-12 00:00:00',2,1,17787.00,'DR','TR',0),('2015-07-12 00:00:00',2,1238,198682.00,'DR','TR',0),('2015-07-12 00:00:00',2,1249,6760.00,'DR','TR',0),('2015-07-13 00:00:00',2,1,13587.00,'DR','TR',0),('2015-07-13 00:00:00',2,1238,202882.00,'DR','TR',0),('2015-07-13 00:00:00',3,1,45928.00,'DR','TR',0),('2015-07-13 00:00:00',3,1221,11679.00,'DR','TR',0),('2015-07-14 00:00:00',2,1,10087.00,'DR','TR',0),('2015-07-14 00:00:00',2,1238,206382.00,'DR','TR',0),('2015-07-15 00:00:00',2,1,6774.00,'DR','TR',0),('2015-07-15 00:00:00',2,1152,31219.00,'DR','TR',0),('2015-07-15 00:00:00',2,1221,26788.00,'DR','TR',0),('2015-07-15 00:00:00',3,1,44093.00,'DR','TR',0),('2015-07-15 00:00:00',3,1221,13514.00,'DR','TR',0),('2015-07-16 00:00:00',2,1,6119.00,'DR','TR',0),('2015-07-16 00:00:00',2,1154,435.00,'DR','TR',0),('2015-07-16 00:00:00',2,1155,1750.00,'DR','TR',0),('2015-07-16 00:00:00',2,1221,26895.00,'DR','TR',0),('2015-07-16 00:00:00',2,1227,4221.00,'DR','TR',0),('2015-07-17 00:00:00',3,1,34371.00,'DR','TR',0),('2015-07-17 00:00:00',3,1221,23236.00,'DR','TR',0),('2015-07-18 00:00:00',2,1,5619.00,'DR','TR',0),('2015-07-18 00:00:00',2,1227,4721.00,'DR','TR',0),('2015-07-20 00:00:00',4,1,3420.00,'CR','TR',0),('2015-07-20 00:00:00',4,1227,3620.00,'DR','TR',0),('2015-07-21 00:00:00',2,1,699.00,'DR','TR',0),('2015-07-21 00:00:00',2,1157,12112.00,'DR','TR',0),('2015-07-21 00:00:00',3,1,37371.00,'DR','TR',0),('2015-07-21 00:00:00',3,1096,69100.00,'CR','TR',0),('2015-07-25 00:00:00',2,1,654.00,'DR','TR',0),('2015-07-25 00:00:00',2,1171,8245.00,'DR','TR',0),('2015-07-25 00:00:00',3,1,37151.00,'DR','TR',0),('2015-07-25 00:00:00',3,1221,23456.00,'DR','TR',0),('2015-07-27 00:00:00',2,1,94.00,'DR','TR',0),('2015-07-27 00:00:00',2,1154,515.00,'DR','TR',0),('2015-07-27 00:00:00',2,1205,4536.00,'DR','TR',0),('2015-07-27 00:00:00',2,1221,27145.00,'DR','TR',0),('2015-07-27 00:00:00',2,1226,2974.00,'DR','TR',0),('2015-07-27 00:00:00',3,1,36786.00,'DR','TR',0),('2015-07-27 00:00:00',3,1096,72100.00,'CR','TR',0),('2015-07-27 00:00:00',3,1154,35.00,'DR','TR',0),('2015-07-27 00:00:00',3,1221,26786.00,'DR','TR',0),('2015-07-28 00:00:00',2,1,88.00,'CR','TR',0),('2015-07-28 00:00:00',2,1221,27327.00,'DR','TR',0),('2015-07-30 00:00:00',2,1,258.00,'CR','TR',0),('2015-07-30 00:00:00',2,1249,6930.00,'DR','TR',0),('2015-07-31 00:00:00',2,1,3672.00,'DR','TR',0),('2015-07-31 00:00:00',2,1119,65000.00,'CR','TR',0),('2015-07-31 00:00:00',2,1152,40904.00,'DR','TR',0),('2015-07-31 00:00:00',2,1171,9103.00,'DR','TR',0),('2015-07-31 00:00:00',2,1197,605.00,'DR','TR',0),('2015-07-31 00:00:00',2,1221,33464.00,'DR','TR',0),('2015-07-31 00:00:00',2,1236,2873.00,'DR','TR',0),('2015-07-31 00:00:00',2,1238,206522.00,'DR','TR',0),('2015-07-31 00:00:00',2,1310,500.00,'DR','TR',0),('2015-07-31 00:00:00',3,1,26856.00,'DR','TR',0),('2015-07-31 00:00:00',3,1119,16000.00,'DR','TR',0),('2015-07-31 00:00:00',3,1143,2000.00,'DR','TR',0),('2015-07-31 00:00:00',3,1221,30716.00,'DR','TR',0),('2015-07-31 00:00:00',4,1,810.00,'DR','TR',0),('2015-07-31 00:00:00',4,1116,7730.00,'CR','TR',0),('2015-07-31 00:00:00',4,1152,3500.00,'DR','TR',0),('2015-08-02 00:00:00',2,1,208.00,'CR','TR',0),('2015-08-02 00:00:00',2,1205,4836.00,'DR','TR',0),('2015-08-02 00:00:00',2,1221,34262.00,'DR','TR',0),('2015-08-02 00:00:00',2,1238,209304.00,'DR','TR',0),('2015-08-02 00:00:00',3,1,23228.00,'DR','TR',0),('2015-08-02 00:00:00',3,1221,34344.00,'DR','TR',0),('2015-08-03 00:00:00',2,1,238.00,'CR','TR',0),('2015-08-03 00:00:00',2,1221,34292.00,'DR','TR',0),('2015-08-04 00:00:00',2,1,38579.00,'DR','TR',0),('2015-08-04 00:00:00',2,1154,538.00,'DR','TR',0),('2015-08-04 00:00:00',2,1238,210464.00,'DR','TR',0),('2015-08-04 00:00:00',2,1353,99857.50,'DR','TR',0),('2015-08-04 00:00:00',4,1,530.00,'DR','TR',0),('2015-08-04 00:00:00',4,1227,3900.00,'DR','TR',0),('2015-08-05 00:00:00',2,1,32865.00,'DR','TR',0),('2015-08-05 00:00:00',2,1221,38027.00,'DR','TR',0),('2015-08-05 00:00:00',2,1226,3843.00,'DR','TR',0),('2015-08-05 00:00:00',2,1238,210574.00,'DR','TR',0),('2015-08-05 00:00:00',2,1249,7930.00,'DR','TR',0),('2015-08-06 00:00:00',2,1,32611.00,'DR','TR',0),('2015-08-06 00:00:00',2,1221,38281.00,'DR','TR',0),('2015-08-07 00:00:00',2,1,27611.00,'DR','TR',0),('2015-08-07 00:00:00',2,1152,42404.00,'DR','TR',0),('2015-08-07 00:00:00',2,1238,214074.00,'DR','TR',0),('2015-08-08 00:00:00',2,1,27371.00,'DR','TR',0),('2015-08-08 00:00:00',2,1238,214314.00,'DR','TR',0),('2015-08-08 00:00:00',3,1,23046.00,'DR','TR',0),('2015-08-08 00:00:00',3,1221,34526.00,'DR','TR',0),('2015-08-10 00:00:00',2,1,27093.00,'DR','TR',0),('2015-08-10 00:00:00',2,1205,5054.00,'DR','TR',0),('2015-08-10 00:00:00',2,1221,38341.00,'DR','TR',0),('2015-08-11 00:00:00',2,1,25402.00,'DR','TR',0),('2015-08-11 00:00:00',2,1154,719.00,'DR','TR',0),('2015-08-11 00:00:00',2,1155,3000.00,'DR','TR',0),('2015-08-11 00:00:00',2,1224,3875.00,'DR','TR',0),('2015-08-13 00:00:00',3,1,21546.00,'DR','TR',0),('2015-08-13 00:00:00',3,1248,1500.00,'DR','TR',0),('2015-08-14 00:00:00',4,1,2515.00,'CR','TR',0),('2015-08-14 00:00:00',4,1227,6945.00,'DR','TR',0),('2015-08-15 00:00:00',2,1,25522.00,'DR','TR',0),('2015-08-15 00:00:00',2,1126,120.00,'CR','TR',0),('2015-08-16 00:00:00',2,1,22612.00,'DR','TR',0),('2015-08-16 00:00:00',2,1110,200.00,'CR','TR',0),('2015-08-16 00:00:00',2,1172,2280.00,'DR','TR',0),('2015-08-16 00:00:00',2,1238,215144.00,'DR','TR',0),('2015-08-16 00:00:00',3,1,21364.00,'DR','TR',0),('2015-08-16 00:00:00',3,1221,34708.00,'DR','TR',0),('2015-08-16 00:00:00',4,1,3185.00,'CR','TR',0),('2015-08-16 00:00:00',4,1172,570.00,'DR','TR',0),('2015-08-16 00:00:00',4,1205,100.00,'DR','TR',0),('2015-08-17 00:00:00',2,1,19461.00,'DR','TR',0),('2015-08-17 00:00:00',2,1191,150.00,'DR','TR',0),('2015-08-17 00:00:00',2,1205,5555.00,'DR','TR',0),('2015-08-17 00:00:00',2,1238,217644.00,'DR','TR',0),('2015-08-17 00:00:00',3,1,20149.00,'DR','TR',0),('2015-08-17 00:00:00',3,1248,2715.00,'DR','TR',0),('2015-08-19 00:00:00',2,1,19201.00,'DR','TR',0),('2015-08-19 00:00:00',2,1171,9363.00,'DR','TR',0),('2015-08-19 00:00:00',3,1,19009.00,'DR','TR',0),('2015-08-19 00:00:00',3,1155,360.00,'DR','TR',0),('2015-08-19 00:00:00',3,1248,3645.00,'DR','TR',0),('2015-08-20 00:00:00',2,1,17035.00,'DR','TR',0),('2015-08-20 00:00:00',2,1227,5137.00,'DR','TR',0),('2015-08-20 00:00:00',2,1238,219294.00,'DR','TR',0),('2015-08-20 00:00:00',2,1241,3792.00,'DR','TR',0),('2015-08-21 00:00:00',2,1,13955.00,'DR','TR',0),('2015-08-21 00:00:00',2,1221,38421.00,'DR','TR',0),('2015-08-21 00:00:00',2,1238,222294.00,'DR','TR',0),('2015-08-22 00:00:00',2,1,13895.00,'DR','TR',0),('2015-08-22 00:00:00',2,1205,5615.00,'DR','TR',0),('2015-08-24 00:00:00',2,1,10525.00,'DR','TR',0),('2015-08-24 00:00:00',2,1238,222834.00,'DR','TR',0),('2015-08-24 00:00:00',2,1241,4292.00,'DR','TR',0),('2015-08-24 00:00:00',2,1249,10260.00,'DR','TR',0),('2015-08-24 00:00:00',3,1,20827.00,'DR','TR',0),('2015-08-24 00:00:00',3,1096,74100.00,'CR','TR',0),('2015-08-24 00:00:00',3,1221,34890.00,'DR','TR',0),('2015-08-25 00:00:00',3,1,20652.00,'DR','TR',0),('2015-08-25 00:00:00',3,1221,35065.00,'DR','TR',0),('2015-08-25 00:00:00',4,1,3418.00,'CR','TR',0),('2015-08-25 00:00:00',4,1227,7178.00,'DR','TR',0),('2015-08-26 00:00:00',2,1,9395.00,'DR','TR',0),('2015-08-26 00:00:00',2,1205,5745.00,'DR','TR',0),('2015-08-26 00:00:00',2,1227,6137.00,'DR','TR',0),('2015-08-27 00:00:00',2,1,8069.00,'DR','TR',0),('2015-08-27 00:00:00',2,1155,3040.00,'DR','TR',0),('2015-08-27 00:00:00',2,1221,38607.00,'DR','TR',0),('2015-08-27 00:00:00',2,1257,1100.00,'DR','TR',0),('2015-08-28 00:00:00',2,1,7916.00,'DR','TR',0),('2015-08-28 00:00:00',2,1221,38760.00,'DR','TR',0),('2015-08-29 00:00:00',2,1,7726.00,'DR','TR',0),('2015-08-29 00:00:00',2,1205,5855.00,'DR','TR',0),('2015-08-29 00:00:00',2,1221,38840.00,'DR','TR',0),('2015-08-30 00:00:00',2,1,7375.00,'DR','TR',0),('2015-08-30 00:00:00',2,1155,3190.00,'DR','TR',0),('2015-08-30 00:00:00',2,1221,39041.00,'DR','TR',0),('2015-08-30 00:00:00',3,1,18970.00,'DR','TR',0),('2015-08-30 00:00:00',3,1221,36047.00,'DR','TR',0),('2015-08-30 00:00:00',3,1223,700.00,'DR','TR',0),('2015-08-31 00:00:00',2,1,5346.00,'DR','TR',0),('2015-08-31 00:00:00',2,1119,84500.00,'CR','TR',0),('2015-08-31 00:00:00',2,1152,52139.00,'DR','TR',0),('2015-08-31 00:00:00',2,1171,9763.00,'DR','TR',0),('2015-08-31 00:00:00',2,1197,1005.00,'DR','TR',0),('2015-08-31 00:00:00',2,1206,263.00,'DR','TR',0),('2015-08-31 00:00:00',2,1221,44183.00,'DR','TR',0),('2015-08-31 00:00:00',2,1226,4170.00,'DR','TR',0),('2015-08-31 00:00:00',2,1236,3023.00,'DR','TR',0),('2015-08-31 00:00:00',2,1238,223194.00,'DR','TR',0),('2015-08-31 00:00:00',2,1241,8147.00,'DR','TR',0),('2015-08-31 00:00:00',2,1249,11160.00,'DR','TR',0),('2015-08-31 00:00:00',2,1310,750.00,'DR','TR',0),('2015-08-31 00:00:00',3,1,12760.00,'DR','TR',0),('2015-08-31 00:00:00',3,1096,79100.00,'CR','TR',0),('2015-08-31 00:00:00',3,1152,10800.00,'DR','TR',0),('2015-08-31 00:00:00',3,1221,40457.00,'DR','TR',0),('2015-08-31 00:00:00',3,1248,4445.00,'DR','TR',0),('2015-08-31 00:00:00',4,1,852.00,'DR','TR',0),('2015-08-31 00:00:00',4,1106,7770.00,'CR','TR',0),('2015-08-31 00:00:00',4,1119,14000.00,'DR','TR',0),('2015-09-01 00:00:00',2,1,5196.00,'DR','TR',0),('2015-09-01 00:00:00',2,1240,150.00,'DR','TR',0),('2015-09-01 00:00:00',3,1,12604.00,'DR','TR',0),('2015-09-01 00:00:00',3,1221,40613.00,'DR','TR',0),('2015-09-02 00:00:00',2,1,3896.00,'DR','TR',0),('2015-09-02 00:00:00',2,1240,250.00,'DR','TR',0),('2015-09-02 00:00:00',2,1241,9347.00,'DR','TR',0),('2015-09-03 00:00:00',2,1,3856.00,'DR','TR',0),('2015-09-03 00:00:00',2,1205,5895.00,'DR','TR',0),('2015-09-04 00:00:00',2,1,23726.00,'DR','TR',0),('2015-09-04 00:00:00',2,1155,3320.00,'DR','TR',0),('2015-09-04 00:00:00',2,1353,79857.50,'DR','TR',0),('2015-09-05 00:00:00',3,1,12448.00,'DR','TR',0),('2015-09-05 00:00:00',3,1221,40769.00,'DR','TR',0),('2015-09-06 00:00:00',1,1131,28.00,'CR','TR',0),('2015-09-06 00:00:00',1,1351,1425.00,'DR','TR',0),('2015-09-06 00:00:00',2,1,21332.00,'DR','TR',0),('2015-09-06 00:00:00',2,1131,2836.00,'CR','TR',0),('2015-09-06 00:00:00',2,1155,3614.00,'DR','TR',0),('2015-09-06 00:00:00',2,1205,5995.00,'DR','TR',0),('2015-09-06 00:00:00',2,1241,11347.00,'DR','TR',0),('2015-09-06 00:00:00',2,1353,82693.50,'DR','TR',0),('2015-09-06 00:00:00',3,1,15448.00,'DR','TR',0),('2015-09-06 00:00:00',3,1096,82100.00,'CR','TR',0),('2015-09-06 00:00:00',4,1131,1465.00,'CR','TR',0),('2015-09-06 00:00:00',4,1352,74145.00,'DR','TR',0),('2015-09-07 00:00:00',2,1,20992.00,'DR','TR',0),('2015-09-07 00:00:00',2,1154,799.00,'DR','TR',0),('2015-09-07 00:00:00',2,1205,6255.00,'DR','TR',0),('2015-09-08 00:00:00',2,1,20332.00,'DR','TR',0),('2015-09-08 00:00:00',2,1221,44343.00,'DR','TR',0),('2015-09-08 00:00:00',2,1240,750.00,'DR','TR',0),('2015-09-08 00:00:00',3,1,14653.00,'DR','TR',0),('2015-09-08 00:00:00',3,1221,41564.00,'DR','TR',0),('2015-09-09 00:00:00',2,1,19197.00,'DR','TR',0),('2015-09-09 00:00:00',2,1171,9808.00,'DR','TR',0),('2015-09-09 00:00:00',2,1221,45433.00,'DR','TR',0),('2015-09-10 00:00:00',2,1,18768.00,'DR','TR',0),('2015-09-10 00:00:00',2,1227,6536.00,'DR','TR',0),('2015-09-10 00:00:00',2,1241,11377.00,'DR','TR',0),('2015-09-13 00:00:00',2,1,17921.00,'DR','TR',0),('2015-09-13 00:00:00',2,1191,800.00,'DR','TR',0),('2015-09-13 00:00:00',2,1205,6452.00,'DR','TR',0),('2015-09-14 00:00:00',2,1,17171.00,'DR','TR',0),('2015-09-14 00:00:00',2,1152,52739.00,'DR','TR',0),('2015-09-14 00:00:00',2,1205,6602.00,'DR','TR',0),('2015-09-15 00:00:00',3,1,14403.00,'DR','TR',0),('2015-09-15 00:00:00',3,1155,480.00,'DR','TR',0),('2015-09-15 00:00:00',3,1221,41694.00,'DR','TR',0),('2015-09-18 00:00:00',2,1,16736.00,'DR','TR',0),('2015-09-18 00:00:00',2,1171,10158.00,'DR','TR',0),('2015-09-18 00:00:00',2,1226,4255.00,'DR','TR',0),('2015-09-19 00:00:00',2,1,15945.00,'DR','TR',0),('2015-09-19 00:00:00',2,1205,6902.00,'DR','TR',0),('2015-09-19 00:00:00',2,1221,45924.00,'DR','TR',0),('2015-09-23 00:00:00',2,1,14795.00,'DR','TR',0),('2015-09-23 00:00:00',2,1249,12310.00,'DR','TR',0),('2015-09-25 00:00:00',2,1,13843.00,'DR','TR',0),('2015-09-25 00:00:00',2,1205,7187.00,'DR','TR',0),('2015-09-25 00:00:00',2,1227,7203.00,'DR','TR',0),('2015-09-25 00:00:00',4,1,512.00,'DR','TR',0),('2015-09-25 00:00:00',4,1227,7518.00,'DR','TR',0),('2015-09-27 00:00:00',2,1,7612.00,'DR','TR',0),('2015-09-27 00:00:00',2,1157,17982.00,'DR','TR',0),('2015-09-27 00:00:00',2,1205,7392.00,'DR','TR',0),('2015-09-27 00:00:00',2,1221,46080.00,'DR','TR',0),('2015-09-29 00:00:00',2,1,20546.00,'DR','TR',0),('2015-09-29 00:00:00',2,1171,10702.00,'DR','TR',0),('2015-09-29 00:00:00',2,1221,46885.00,'DR','TR',0),('2015-09-29 00:00:00',2,1226,4972.00,'DR','TR',0),('2015-09-29 00:00:00',2,1353,67693.50,'DR','TR',0),('2015-09-30 00:00:00',2,1,19216.00,'DR','TR',0),('2015-09-30 00:00:00',2,1119,104000.00,'CR','TR',0),('2015-09-30 00:00:00',2,1144,4000.00,'DR','TR',0),('2015-09-30 00:00:00',2,1152,58539.00,'DR','TR',0),('2015-09-30 00:00:00',2,1156,30.00,'DR','TR',0),('2015-09-30 00:00:00',2,1171,11435.00,'DR','TR',0),('2015-09-30 00:00:00',2,1197,1019.00,'DR','TR',0),('2015-09-30 00:00:00',2,1206,309.00,'DR','TR',0),('2015-09-30 00:00:00',2,1221,56172.00,'DR','TR',0),('2015-09-30 00:00:00',2,1236,3573.00,'DR','TR',0),('2015-09-30 00:00:00',2,1245,1000.00,'DR','TR',0),('2015-09-30 00:00:00',2,1310,1000.00,'DR','TR',0),('2015-09-30 00:00:00',3,1,1224.00,'DR','TR',0),('2015-09-30 00:00:00',3,1119,20000.00,'DR','TR',0),('2015-09-30 00:00:00',3,1152,12800.00,'DR','TR',0),('2015-09-30 00:00:00',3,1171,130.00,'DR','TR',0),('2015-09-30 00:00:00',3,1221,47970.00,'DR','TR',0),('2015-09-30 00:00:00',3,1226,3444.00,'DR','TR',0),('2015-09-30 00:00:00',4,1,2972.00,'DR','TR',0),('2015-09-30 00:00:00',4,1106,13730.00,'CR','TR',0),('2015-09-30 00:00:00',4,1119,17500.00,'DR','TR',0),('2015-10-01 00:00:00',2,1,19058.00,'DR','TR',0),('2015-10-01 00:00:00',2,1204,85.00,'DR','TR',0),('2015-10-01 00:00:00',2,1221,56245.00,'DR','TR',0),('2015-10-03 00:00:00',3,1,3224.00,'DR','TR',0),('2015-10-03 00:00:00',3,1096,84100.00,'CR','TR',0),('2015-10-04 00:00:00',2,1,18518.00,'DR','TR',0),('2015-10-04 00:00:00',2,1204,625.00,'DR','TR',0),('2015-10-04 00:00:00',3,1,3068.00,'DR','TR',0),('2015-10-04 00:00:00',3,1221,48126.00,'DR','TR',0),('2015-10-06 00:00:00',2,1,18046.00,'DR','TR',0),('2015-10-06 00:00:00',2,1155,3832.00,'DR','TR',0),('2015-10-06 00:00:00',2,1241,11631.00,'DR','TR',0),('2015-10-07 00:00:00',2,1,17833.00,'DR','TR',0),('2015-10-07 00:00:00',2,1221,56386.00,'DR','TR',0),('2015-10-07 00:00:00',2,1227,7275.00,'DR','TR',0),('2015-10-08 00:00:00',2,1,17205.00,'DR','TR',0),('2015-10-08 00:00:00',2,1221,56464.00,'DR','TR',0),('2015-10-08 00:00:00',2,1224,3985.00,'DR','TR',0),('2015-10-08 00:00:00',2,1227,7715.00,'DR','TR',0),('2015-10-11 00:00:00',2,1,17120.00,'DR','TR',0),('2015-10-11 00:00:00',2,1221,56549.00,'DR','TR',0),('2015-10-11 00:00:00',3,1,2886.00,'DR','TR',0),('2015-10-11 00:00:00',3,1221,48308.00,'DR','TR',0),('2015-10-12 00:00:00',2,1,17010.00,'DR','TR',0),('2015-10-12 00:00:00',2,1221,56659.00,'DR','TR',0),('2015-10-14 00:00:00',2,1,14863.00,'DR','TR',0),('2015-10-14 00:00:00',2,1221,56706.00,'DR','TR',0),('2015-10-14 00:00:00',2,1227,7885.00,'DR','TR',0),('2015-10-14 00:00:00',2,1241,12481.00,'DR','TR',0),('2015-10-14 00:00:00',2,1249,13390.00,'DR','TR',0),('2015-10-17 00:00:00',2,1,14811.00,'DR','TR',0),('2015-10-17 00:00:00',2,1221,56758.00,'DR','TR',0),('2015-10-19 00:00:00',2,1,14081.00,'DR','TR',0),('2015-10-19 00:00:00',2,1154,899.00,'DR','TR',0),('2015-10-19 00:00:00',2,1155,3952.00,'DR','TR',0),('2015-10-19 00:00:00',2,1221,56868.00,'DR','TR',0),('2015-10-19 00:00:00',2,1224,4385.00,'DR','TR',0),('2015-10-20 00:00:00',2,1,13650.00,'DR','TR',0),('2015-10-20 00:00:00',2,1204,740.00,'DR','TR',0),('2015-10-20 00:00:00',2,1221,56934.00,'DR','TR',0),('2015-10-20 00:00:00',2,1249,13640.00,'DR','TR',0),('2015-10-22 00:00:00',2,1,13145.00,'DR','TR',0),('2015-10-22 00:00:00',2,1204,1245.00,'DR','TR',0),('2015-10-24 00:00:00',2,1,9821.00,'DR','TR',0),('2015-10-24 00:00:00',2,1221,59308.00,'DR','TR',0),('2015-10-24 00:00:00',2,1249,14590.00,'DR','TR',0),('2015-10-24 00:00:00',3,1,1626.00,'DR','TR',0),('2015-10-24 00:00:00',3,1238,1260.00,'DR','TR',0),('2015-10-26 00:00:00',3,1,2626.00,'DR','TR',0),('2015-10-26 00:00:00',3,1096,85100.00,'CR','TR',0),('2015-10-27 00:00:00',2,1,29078.00,'DR','TR',0),('2015-10-27 00:00:00',2,1155,4071.00,'DR','TR',0),('2015-10-27 00:00:00',2,1227,8509.00,'DR','TR',0),('2015-10-27 00:00:00',2,1353,47693.50,'DR','TR',0),('2015-10-27 00:00:00',3,1,16296.00,'DR','TR',0),('2015-10-27 00:00:00',3,1096,99100.00,'CR','TR',0),('2015-10-27 00:00:00',3,1171,330.00,'DR','TR',0),('2015-10-27 00:00:00',3,1221,48438.00,'DR','TR',0),('2015-10-28 00:00:00',2,1,19798.00,'DR','TR',0),('2015-10-28 00:00:00',2,1189,2500.00,'DR','TR',0),('2015-10-28 00:00:00',2,1249,22870.00,'DR','TR',0),('2015-10-29 00:00:00',3,1,18296.00,'DR','TR',0),('2015-10-29 00:00:00',3,1096,101100.00,'CR','TR',0),('2015-10-30 00:00:00',2,1,18123.00,'DR','TR',0),('2015-10-30 00:00:00',2,1241,14156.00,'DR','TR',0),('2015-10-30 00:00:00',3,1,15322.00,'DR','TR',0),('2015-10-30 00:00:00',3,1155,650.00,'DR','TR',0),('2015-10-30 00:00:00',3,1221,50202.00,'DR','TR',0),('2015-10-30 00:00:00',3,1238,2300.00,'DR','TR',0),('2015-10-31 00:00:00',2,1,16603.00,'DR','TR',0),('2015-10-31 00:00:00',2,1119,123500.00,'CR','TR',0),('2015-10-31 00:00:00',2,1152,70299.00,'DR','TR',0),('2015-10-31 00:00:00',2,1171,11787.00,'DR','TR',0),('2015-10-31 00:00:00',2,1197,1074.00,'DR','TR',0),('2015-10-31 00:00:00',2,1206,369.00,'DR','TR',0),('2015-10-31 00:00:00',2,1221,65837.00,'DR','TR',0),('2015-10-31 00:00:00',2,1223,2959.00,'DR','TR',0),('2015-10-31 00:00:00',2,1236,3673.00,'DR','TR',0),('2015-10-31 00:00:00',2,1245,1270.00,'DR','TR',0),('2015-10-31 00:00:00',2,1246,1000.00,'DR','TR',0),('2015-10-31 00:00:00',2,1310,1250.00,'DR','TR',0),('2015-10-31 00:00:00',3,1,6190.00,'DR','TR',0),('2015-10-31 00:00:00',3,1119,24000.00,'DR','TR',0),('2015-10-31 00:00:00',3,1143,4000.00,'DR','TR',0),('2015-10-31 00:00:00',3,1221,53334.00,'DR','TR',0),('2015-10-31 00:00:00',4,1,1966.00,'DR','TR',0),('2015-10-31 00:00:00',4,1103,2494.00,'CR','TR',0),('2015-10-31 00:00:00',4,1119,21000.00,'DR','TR',0),('2015-11-01 00:00:00',3,1,6034.00,'DR','TR',0),('2015-11-01 00:00:00',3,1221,53490.00,'DR','TR',0),('2015-11-02 00:00:00',2,1,16488.00,'DR','TR',0),('2015-11-02 00:00:00',2,1171,11872.00,'DR','TR',0),('2015-11-02 00:00:00',2,1249,22900.00,'DR','TR',0),('2015-11-03 00:00:00',2,1,16458.00,'DR','TR',0),('2015-11-03 00:00:00',2,1154,929.00,'DR','TR',0),('2015-11-05 00:00:00',2,1,16235.00,'DR','TR',0),('2015-11-05 00:00:00',2,1221,66060.00,'DR','TR',0),('2015-11-05 00:00:00',3,1,8008.00,'DR','TR',0),('2015-11-05 00:00:00',3,1096,103100.00,'CR','TR',0),('2015-11-05 00:00:00',3,1221,53516.00,'DR','TR',0),('2015-11-07 00:00:00',2,1,16190.00,'DR','TR',0),('2015-11-07 00:00:00',2,1205,7437.00,'DR','TR',0),('2015-11-08 00:00:00',3,1,7034.00,'DR','TR',0),('2015-11-08 00:00:00',3,1221,53835.00,'DR','TR',0),('2015-11-08 00:00:00',3,1223,1355.00,'DR','TR',0),('2015-11-09 00:00:00',2,1,15835.00,'DR','TR',0),('2015-11-09 00:00:00',2,1155,4326.00,'DR','TR',0),('2015-11-09 00:00:00',2,1226,5072.00,'DR','TR',0),('2015-11-09 00:00:00',3,1,12034.00,'DR','TR',0),('2015-11-09 00:00:00',3,1096,108100.00,'CR','TR',0),('2015-11-09 00:00:00',4,1,1666.00,'DR','TR',0),('2015-11-09 00:00:00',4,1227,7818.00,'DR','TR',0),('2015-11-10 00:00:00',2,1,9804.00,'DR','TR',0),('2015-11-10 00:00:00',2,1171,12380.00,'DR','TR',0),('2015-11-10 00:00:00',2,1221,67650.00,'DR','TR',0),('2015-11-10 00:00:00',2,1224,5210.00,'DR','TR',0),('2015-11-10 00:00:00',2,1227,10617.00,'DR','TR',0),('2015-11-10 00:00:00',2,1249,23900.00,'DR','TR',0),('2015-11-10 00:00:00',3,1,8585.00,'DR','TR',0),('2015-11-10 00:00:00',3,1221,57115.00,'DR','TR',0),('2015-11-10 00:00:00',3,1226,3613.00,'DR','TR',0),('2015-11-10 00:00:00',4,1,1366.00,'DR','TR',0),('2015-11-10 00:00:00',4,1227,8118.00,'DR','TR',0),('2015-11-13 00:00:00',2,1,9566.00,'DR','TR',0),('2015-11-13 00:00:00',2,1221,67888.00,'DR','TR',0),('2015-11-14 00:00:00',2,1,4566.00,'DR','TR',0),('2015-11-14 00:00:00',2,1155,9326.00,'DR','TR',0),('2015-11-15 00:00:00',3,1,8410.00,'DR','TR',0),('2015-11-15 00:00:00',3,1221,57290.00,'DR','TR',0),('2015-11-16 00:00:00',2,1,834.00,'CR','TR',0),('2015-11-16 00:00:00',2,1155,14726.00,'DR','TR',0),('2015-11-16 00:00:00',3,1,11910.00,'DR','TR',0),('2015-11-16 00:00:00',3,1096,111600.00,'CR','TR',0),('2015-11-19 00:00:00',2,1,1214.00,'CR','TR',0),('2015-11-19 00:00:00',2,1221,67948.00,'DR','TR',0),('2015-11-19 00:00:00',2,1227,10937.00,'DR','TR',0),('2015-11-20 00:00:00',2,1,5477.00,'CR','TR',0),('2015-11-20 00:00:00',2,1157,22245.00,'DR','TR',0),('2015-11-21 00:00:00',2,1,6239.00,'CR','TR',0),('2015-11-21 00:00:00',2,1155,15226.00,'DR','TR',0),('2015-11-21 00:00:00',2,1249,24162.00,'DR','TR',0),('2015-11-22 00:00:00',2,1,6479.00,'CR','TR',0),('2015-11-22 00:00:00',2,1205,7677.00,'DR','TR',0),('2015-11-22 00:00:00',3,1,11750.00,'DR','TR',0),('2015-11-22 00:00:00',3,1221,57450.00,'DR','TR',0),('2015-11-23 00:00:00',3,1,13720.00,'DR','TR',0),('2015-11-23 00:00:00',3,1096,113600.00,'CR','TR',0),('2015-11-23 00:00:00',3,1154,65.00,'DR','TR',0),('2015-11-25 00:00:00',2,1,6899.00,'CR','TR',0),('2015-11-25 00:00:00',2,1154,979.00,'DR','TR',0),('2015-11-25 00:00:00',2,1221,68318.00,'DR','TR',0),('2015-11-25 00:00:00',3,1,13612.00,'DR','TR',0),('2015-11-25 00:00:00',3,1221,57558.00,'DR','TR',0),('2015-11-26 00:00:00',2,1,6999.00,'CR','TR',0),('2015-11-26 00:00:00',2,1221,68418.00,'DR','TR',0),('2015-11-27 00:00:00',3,1,16612.00,'DR','TR',0),('2015-11-27 00:00:00',3,1096,116600.00,'CR','TR',0),('2015-11-28 00:00:00',2,1,7312.00,'CR','TR',0),('2015-11-28 00:00:00',2,1205,7755.00,'DR','TR',0),('2015-11-28 00:00:00',2,1221,68653.00,'DR','TR',0),('2015-11-28 00:00:00',3,1,16430.00,'DR','TR',0),('2015-11-28 00:00:00',3,1221,57740.00,'DR','TR',0),('2015-11-29 00:00:00',2,1,9262.00,'CR','TR',0),('2015-11-29 00:00:00',2,1249,26112.00,'DR','TR',0),('2015-11-29 00:00:00',3,1,15966.00,'DR','TR',0),('2015-11-29 00:00:00',3,1221,58204.00,'DR','TR',0),('2015-11-30 00:00:00',2,1,13344.00,'DR','TR',0),('2015-11-30 00:00:00',2,1119,143000.00,'CR','TR',0),('2015-11-30 00:00:00',2,1143,9690.00,'DR','TR',0),('2015-11-30 00:00:00',2,1156,80.00,'DR','TR',0),('2015-11-30 00:00:00',2,1171,12517.00,'DR','TR',0),('2015-11-30 00:00:00',2,1197,1094.00,'DR','TR',0),('2015-11-30 00:00:00',2,1206,510.00,'DR','TR',0),('2015-11-30 00:00:00',2,1221,74169.00,'DR','TR',0),('2015-11-30 00:00:00',2,1236,4573.00,'DR','TR',0),('2015-11-30 00:00:00',2,1238,223384.00,'DR','TR',0),('2015-11-30 00:00:00',2,1310,1500.00,'DR','TR',0),('2015-11-30 00:00:00',2,1353,27693.50,'DR','TR',0),('2015-11-30 00:00:00',3,1,5721.00,'DR','TR',0),('2015-11-30 00:00:00',3,1152,18800.00,'DR','TR',0),('2015-11-30 00:00:00',3,1221,62449.00,'DR','TR',0),('2015-11-30 00:00:00',4,1,1576.00,'DR','TR',0),('2015-11-30 00:00:00',4,1103,6204.00,'CR','TR',0),('2015-11-30 00:00:00',4,1119,24500.00,'DR','TR',0),('2015-12-01 00:00:00',2,1288,200000.00,'CR','TR',0),('2015-12-01 00:00:00',2,1353,127693.50,'DR','TR',0),('2015-12-02 00:00:00',1,1326,30000.00,'CR','TR',0),('2015-12-02 00:00:00',1,1351,31425.00,'DR','TR',0),('2015-12-02 00:00:00',2,1,13137.00,'DR','TR',0),('2015-12-02 00:00:00',2,1318,207.00,'DR','TR',0),('2015-12-03 00:00:00',2,1,12655.00,'DR','TR',0),('2015-12-03 00:00:00',2,1171,12817.00,'DR','TR',0),('2015-12-03 00:00:00',2,1221,74351.00,'DR','TR',0),('2015-12-04 00:00:00',1,1,15000.00,'DR','TR',0),('2015-12-04 00:00:00',1,1351,16425.00,'DR','TR',0),('2015-12-05 00:00:00',3,1,485.00,'CR','TR',0),('2015-12-05 00:00:00',3,1221,68655.00,'DR','TR',0),('2015-12-07 00:00:00',2,1,12525.00,'DR','TR',0),('2015-12-07 00:00:00',2,1155,15336.00,'DR','TR',0),('2015-12-07 00:00:00',2,1221,74371.00,'DR','TR',0),('2015-12-08 00:00:00',2,1,11440.00,'DR','TR',0),('2015-12-08 00:00:00',2,1246,2000.00,'DR','TR',0),('2015-12-08 00:00:00',2,1318,292.00,'DR','TR',0),('2015-12-08 00:00:00',3,1,5515.00,'DR','TR',0),('2015-12-08 00:00:00',3,1096,122600.00,'CR','TR',0),('2015-12-09 00:00:00',1,1,29000.00,'DR','TR',0),('2015-12-09 00:00:00',1,1198,1000.00,'DR','TR',0),('2015-12-09 00:00:00',1,1351,1425.00,'DR','TR',0),('2015-12-09 00:00:00',2,1,21440.00,'DR','TR',0),('2015-12-09 00:00:00',2,1353,117693.50,'DR','TR',0),('2015-12-11 00:00:00',1,1,19320.00,'DR','TR',0),('2015-12-11 00:00:00',1,1221,1220.00,'DR','TR',0),('2015-12-11 00:00:00',1,1224,6535.00,'DR','TR',0),('2015-12-11 00:00:00',1,1227,1925.00,'DR','TR',0),('2015-12-11 00:00:00',2,1,18055.00,'DR','TR',0),('2015-12-11 00:00:00',2,1178,335.00,'DR','TR',0),('2015-12-11 00:00:00',2,1189,3500.00,'DR','TR',0),('2015-12-11 00:00:00',2,1221,74481.00,'DR','TR',0),('2015-12-11 00:00:00',2,1224,5826.00,'DR','TR',0),('2015-12-11 00:00:00',2,1226,5359.00,'DR','TR',0),('2015-12-11 00:00:00',2,1227,11839.00,'DR','TR',0),('2015-12-11 00:00:00',2,1318,427.00,'DR','TR',0),('2015-12-13 00:00:00',1,1,18347.00,'DR','TR',0),('2015-12-13 00:00:00',1,1227,2898.00,'DR','TR',0),('2015-12-14 00:00:00',3,1,5465.00,'DR','TR',0),('2015-12-14 00:00:00',3,1221,68705.00,'DR','TR',0),('2015-12-15 00:00:00',3,1,4601.00,'CR','TR',0),('2015-12-15 00:00:00',3,1154,150.00,'DR','TR',0),('2015-12-15 00:00:00',3,1221,77720.00,'DR','TR',0),('2015-12-15 00:00:00',3,1226,4579.00,'DR','TR',0),('2015-12-17 00:00:00',3,1,1601.00,'CR','TR',0),('2015-12-17 00:00:00',3,1096,125600.00,'CR','TR',0),('2015-12-18 00:00:00',2,1,24659.00,'DR','TR',0),('2015-12-18 00:00:00',2,1171,12853.00,'DR','TR',0),('2015-12-18 00:00:00',2,1191,3600.00,'DR','TR',0),('2015-12-18 00:00:00',2,1238,223594.00,'DR','TR',0),('2015-12-18 00:00:00',2,1246,2350.00,'DR','TR',0),('2015-12-18 00:00:00',2,1353,107693.50,'DR','TR',0),('2015-12-18 00:00:00',4,1,1101.00,'DR','TR',0),('2015-12-18 00:00:00',4,1249,12475.00,'DR','TR',0),('2015-12-18 00:00:00',4,1352,62145.00,'DR','TR',0),('2015-12-19 00:00:00',1,1,14861.00,'DR','TR',0),('2015-12-19 00:00:00',1,1224,7060.00,'DR','TR',0),('2015-12-19 00:00:00',1,1227,4859.00,'DR','TR',0),('2015-12-19 00:00:00',1,1246,1000.00,'DR','TR',0),('2015-12-20 00:00:00',1,1,6418.00,'DR','TR',0),('2015-12-20 00:00:00',1,1154,270.00,'DR','TR',0),('2015-12-20 00:00:00',1,1221,5447.00,'DR','TR',0),('2015-12-20 00:00:00',1,1224,10545.00,'DR','TR',0),('2015-12-20 00:00:00',1,1226,461.00,'DR','TR',0),('2015-12-22 00:00:00',2,1,23289.00,'DR','TR',0),('2015-12-22 00:00:00',2,1171,13223.00,'DR','TR',0),('2015-12-22 00:00:00',2,1246,3350.00,'DR','TR',0),('2015-12-23 00:00:00',1,1,4051.00,'DR','TR',0),('2015-12-23 00:00:00',1,1221,6178.00,'DR','TR',0),('2015-12-23 00:00:00',1,1224,10945.00,'DR','TR',0),('2015-12-23 00:00:00',1,1226,1697.00,'DR','TR',0),('2015-12-23 00:00:00',2,1,22218.00,'DR','TR',0),('2015-12-23 00:00:00',2,1171,13448.00,'DR','TR',0),('2015-12-23 00:00:00',2,1178,435.00,'DR','TR',0),('2015-12-23 00:00:00',2,1221,75027.00,'DR','TR',0),('2015-12-23 00:00:00',2,1241,14356.00,'DR','TR',0),('2015-12-24 00:00:00',2,1,22158.00,'DR','TR',0),('2015-12-24 00:00:00',2,1221,75087.00,'DR','TR',0),('2015-12-25 00:00:00',2,1,22050.00,'DR','TR',0),('2015-12-25 00:00:00',2,1221,75195.00,'DR','TR',0),('2015-12-26 00:00:00',2,1,21173.00,'DR','TR',0),('2015-12-26 00:00:00',2,1221,75411.00,'DR','TR',0),('2015-12-26 00:00:00',2,1227,12000.00,'DR','TR',0),('2015-12-26 00:00:00',2,1246,3850.00,'DR','TR',0),('2015-12-28 00:00:00',1,1,488.00,'DR','TR',0),('2015-12-28 00:00:00',1,1221,6241.00,'DR','TR',0),('2015-12-28 00:00:00',1,1313,3500.00,'DR','TR',0),('2015-12-28 00:00:00',2,1,20773.00,'DR','TR',0),('2015-12-28 00:00:00',2,1171,13848.00,'DR','TR',0),('2015-12-28 00:00:00',3,1,7399.00,'DR','TR',0),('2015-12-28 00:00:00',3,1096,134600.00,'CR','TR',0),('2015-12-29 00:00:00',2,1,28562.00,'DR','TR',0),('2015-12-29 00:00:00',2,1106,1900.00,'CR','TR',0),('2015-12-29 00:00:00',2,1155,16347.00,'DR','TR',0),('2015-12-29 00:00:00',2,1157,22645.00,'DR','TR',0),('2015-12-29 00:00:00',2,1249,27112.00,'DR','TR',0),('2015-12-29 00:00:00',2,1353,97693.50,'DR','TR',0),('2015-12-29 00:00:00',3,1,11399.00,'DR','TR',0),('2015-12-29 00:00:00',3,1096,138600.00,'CR','TR',0),('2015-12-29 00:00:00',4,1,522.00,'CR','TR',0),('2015-12-29 00:00:00',4,1278,1623.00,'DR','TR',0),('2015-12-30 00:00:00',1,1,0.00,'DR','TR',0),('2015-12-30 00:00:00',1,1227,5347.00,'DR','TR',0),('2015-12-30 00:00:00',2,1,27822.00,'DR','TR',0),('2015-12-30 00:00:00',2,1223,3699.00,'DR','TR',0),('2015-12-30 00:00:00',3,1,9749.00,'DR','TR',0),('2015-12-30 00:00:00',3,1096,143600.00,'CR','TR',0),('2015-12-30 00:00:00',3,1221,83720.00,'DR','TR',0),('2015-12-30 00:00:00',3,1238,2950.00,'DR','TR',0),('2015-12-31 00:00:00',2,1,14546.00,'DR','TR',0),('2015-12-31 00:00:00',2,1119,150500.00,'CR','TR',0),('2015-12-31 00:00:00',2,1152,80522.00,'DR','TR',0),('2015-12-31 00:00:00',2,1156,180.00,'DR','TR',0),('2015-12-31 00:00:00',2,1160,1230.00,'DR','TR',0),('2015-12-31 00:00:00',2,1171,14344.00,'DR','TR',0),('2015-12-31 00:00:00',2,1197,1244.00,'DR','TR',0),('2015-12-31 00:00:00',2,1206,560.00,'DR','TR',0),('2015-12-31 00:00:00',2,1221,83968.00,'DR','TR',0),('2015-12-31 00:00:00',2,1238,223694.00,'DR','TR',0),('2015-12-31 00:00:00',2,1310,1750.00,'DR','TR',0),('2015-12-31 00:00:00',2,1318,527.00,'DR','TR',0),('2015-12-31 00:00:00',3,1,3099.00,'DR','TR',0),('2015-12-31 00:00:00',3,1096,147600.00,'CR','TR',0),('2015-12-31 00:00:00',3,1119,28000.00,'DR','TR',0),('2015-12-31 00:00:00',3,1143,6000.00,'DR','TR',0),('2015-12-31 00:00:00',3,1221,88370.00,'DR','TR',0),('2015-12-31 00:00:00',4,1,1568.00,'DR','TR',0),('2015-12-31 00:00:00',4,1103,11794.00,'CR','TR',0),('2015-12-31 00:00:00',4,1119,28000.00,'DR','TR',0),('2016-01-02 00:00:00',2,1,13346.00,'DR','TR',0),('2016-01-02 00:00:00',2,1318,1727.00,'DR','TR',0),('2016-01-04 00:00:00',2,1,13115.00,'DR','TR',0),('2016-01-04 00:00:00',2,1154,1088.00,'DR','TR',0),('2016-01-04 00:00:00',2,1221,84015.00,'DR','TR',0),('2016-01-04 00:00:00',2,1318,1802.00,'DR','TR',0),('2016-01-05 00:00:00',2,1,12965.00,'DR','TR',0),('2016-01-05 00:00:00',2,1246,4000.00,'DR','TR',0),('2016-01-05 00:00:00',3,1,3059.00,'DR','TR',0),('2016-01-05 00:00:00',3,1221,88410.00,'DR','TR',0),('2016-01-06 00:00:00',2,1,12763.00,'DR','TR',0),('2016-01-06 00:00:00',2,1155,16497.00,'DR','TR',0),('2016-01-06 00:00:00',2,1221,84067.00,'DR','TR',0),('2016-01-06 00:00:00',3,1,2909.00,'DR','TR',0),('2016-01-06 00:00:00',3,1155,800.00,'DR','TR',0),('2016-01-07 00:00:00',2,1,12607.00,'DR','TR',0),('2016-01-07 00:00:00',2,1318,1958.00,'DR','TR',0),('2016-01-09 00:00:00',3,1,2708.00,'DR','TR',0),('2016-01-09 00:00:00',3,1221,88611.00,'DR','TR',0),('2016-01-10 00:00:00',2,1,12341.00,'DR','TR',0),('2016-01-10 00:00:00',2,1318,2224.00,'DR','TR',0),('2016-01-12 00:00:00',2,1,11617.00,'DR','TR',0),('2016-01-12 00:00:00',2,1221,84457.00,'DR','TR',0),('2016-01-12 00:00:00',2,1318,2558.00,'DR','TR',0),('2016-01-12 00:00:00',3,1,4708.00,'DR','TR',0),('2016-01-12 00:00:00',3,1096,149600.00,'CR','TR',0),('2016-01-14 00:00:00',2,1,11321.00,'DR','TR',0),('2016-01-14 00:00:00',2,1318,2854.00,'DR','TR',0),('2016-01-15 00:00:00',3,1,4603.00,'DR','TR',0),('2016-01-15 00:00:00',3,1221,88716.00,'DR','TR',0),('2016-01-16 00:00:00',2,1,31272.00,'DR','TR',0),('2016-01-16 00:00:00',2,1119,162500.00,'CR','TR',0),('2016-01-16 00:00:00',2,1171,14494.00,'DR','TR',0),('2016-01-16 00:00:00',2,1238,225364.00,'DR','TR',0),('2016-01-16 00:00:00',2,1318,3083.00,'DR','TR',0),('2016-01-16 00:00:00',2,1353,87693.50,'DR','TR',0),('2016-01-18 00:00:00',3,1,8603.00,'DR','TR',0),('2016-01-18 00:00:00',3,1096,153600.00,'CR','TR',0),('2016-01-19 00:00:00',2,1,30922.00,'DR','TR',0),('2016-01-19 00:00:00',2,1221,84667.00,'DR','TR',0),('2016-01-19 00:00:00',2,1246,4140.00,'DR','TR',0),('2016-01-19 00:00:00',3,1,18903.00,'DR','TR',0),('2016-01-19 00:00:00',3,1096,163900.00,'CR','TR',0),('2016-01-20 00:00:00',3,1,20721.00,'DR','TR',0),('2016-01-20 00:00:00',3,1096,165900.00,'CR','TR',0),('2016-01-20 00:00:00',3,1221,88898.00,'DR','TR',0),('2016-01-21 00:00:00',2,1,29683.00,'DR','TR',0),('2016-01-21 00:00:00',2,1155,16736.00,'DR','TR',0),('2016-01-21 00:00:00',2,1249,28112.00,'DR','TR',0),('2016-01-22 00:00:00',2,1,23229.00,'DR','TR',0),('2016-01-22 00:00:00',2,1157,27193.00,'DR','TR',0),('2016-01-22 00:00:00',2,1221,86573.00,'DR','TR',0),('2016-01-22 00:00:00',3,1,16690.00,'DR','TR',0),('2016-01-22 00:00:00',3,1221,89988.00,'DR','TR',0),('2016-01-22 00:00:00',3,1224,2712.00,'DR','TR',0),('2016-01-22 00:00:00',3,1226,4808.00,'DR','TR',0),('2016-01-24 00:00:00',2,1,23139.00,'DR','TR',0),('2016-01-24 00:00:00',2,1226,5449.00,'DR','TR',0),('2016-01-25 00:00:00',2,1,22789.00,'DR','TR',0),('2016-01-25 00:00:00',2,1318,3433.00,'DR','TR',0),('2016-01-26 00:00:00',2,1,21789.00,'DR','TR',0),('2016-01-26 00:00:00',2,1246,5140.00,'DR','TR',0),('2016-01-27 00:00:00',2,1,20104.00,'DR','TR',0),('2016-01-27 00:00:00',2,1155,17921.00,'DR','TR',0),('2016-01-27 00:00:00',2,1241,14856.00,'DR','TR',0),('2016-01-27 00:00:00',3,1,16105.00,'DR','TR',0),('2016-01-27 00:00:00',3,1221,90573.00,'DR','TR',0),('2016-01-30 00:00:00',3,1,12450.00,'DR','TR',0),('2016-01-30 00:00:00',3,1221,94228.00,'DR','TR',0),('2016-01-31 00:00:00',2,1,12325.00,'DR','TR',0),('2016-01-31 00:00:00',2,1119,170000.00,'CR','TR',0),('2016-01-31 00:00:00',2,1152,85522.00,'DR','TR',0),('2016-01-31 00:00:00',2,1171,14724.00,'DR','TR',0),('2016-01-31 00:00:00',2,1197,1298.00,'DR','TR',0),('2016-01-31 00:00:00',2,1206,624.00,'DR','TR',0),('2016-01-31 00:00:00',2,1221,91439.00,'DR','TR',0),('2016-01-31 00:00:00',2,1236,5073.00,'DR','TR',0),('2016-01-31 00:00:00',2,1238,225434.00,'DR','TR',0),('2016-01-31 00:00:00',2,1310,2000.00,'DR','TR',0),('2016-01-31 00:00:00',2,1317,4245.00,'DR','TR',0),('2016-01-31 00:00:00',3,1,1160.00,'DR','TR',0),('2016-01-31 00:00:00',3,1152,24800.00,'DR','TR',0),('2016-01-31 00:00:00',3,1221,99518.00,'DR','TR',0),('2016-01-31 00:00:00',4,1,2262.00,'DR','TR',0),('2016-01-31 00:00:00',4,1103,16164.00,'CR','TR',0),('2016-01-31 00:00:00',4,1152,7000.00,'DR','TR',0),('2016-01-31 00:00:00',4,1227,8294.00,'DR','TR',0);
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
  CONSTRAINT `FK_master_auditing_info_audit_ype` FOREIGN KEY (`AUDIT_TYPE_ID`) REFERENCES `master_audit_type` (`AUDIT_TYPE_ID`),
  CONSTRAINT `FK_DONAUD_ID` FOREIGN KEY (`DONAUD_ID`) REFERENCES `master_donaud` (`DONAUD_ID`),
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_bank`
--

LOCK TABLES `master_bank` WRITE;
/*!40000 ALTER TABLE `master_bank` DISABLE KEYS */;
INSERT INTO `master_bank` VALUES (4,'01','ANDHRA BANK','KESAMUDRAM','MARKET ROAD, KESAMUDRAM, WARANGAL DIST, TELANGANA','ANDB0000642','506011564','8719250340',NULL,'',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_bank_account`
--

LOCK TABLES `master_bank_account` WRITE;
/*!40000 ALTER TABLE `master_bank_account` DISABLE KEYS */;
INSERT INTO `master_bank_account` VALUES (10,1351,'1','064210100052763','St.Bartolomea Nivas Dannasari . Kesamudram',1,4,'2011-08-11 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(11,1352,'02','064210011008317','M/S ST.BARTOLOMEA HEALTH CENTRE',1,4,'2007-06-26 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(12,1353,'01','064210011008316','M/S ST. BARTOLOMEA NIVAS-CONVENT',1,4,'2007-06-26 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_contribution_head`
--

LOCK TABLES `master_contribution_head` WRITE;
/*!40000 ALTER TABLE `master_contribution_head` DISABLE KEYS */;
INSERT INTO `master_contribution_head` VALUES (1,'1','Celebration of national events (Independence / Republic day) / festivals etc.'),(2,'2','Theatre / Films'),(3,'3','Maintenance of place of historical and cultural importance'),(4,'4','Preservation of ancient / tribal art forms'),(5,'5','Research'),(6,'6','Cultural shows'),(7,'7','Setting up and running handicraft centre / cottage and Khadi industry / social forestry projects'),(8,'8','Animal husbandry projects'),(9,'9','Income generation projects / schemes'),(10,'10','Micro-finance projects, including setting up banking co-operatives and self-help groups'),(11,'11','Agricultural activity'),(12,'12','Rural Development'),(13,'13','Construction and maintenance of school / college'),(14,'14','Construction and running of hostel for poor students'),(15,'15','Grant of stipend / Scholarship / assistance in cash and kind to poor / deserving children'),(16,'16','Purchase and supply of educational material - books, notebooks etc.'),(17,'17','Conducting adult literacy programs'),(18,'18','Education / Schools for the mentally challenged'),(19,'19','Non-formal education projects / coaching classes'),(20,'20','Construction / Repair / Maintenance of places of worship'),(21,'21','Religious schools / education of priests and preachers'),(22,'22','Publication and distribution of religious literature'),(23,'23','Religious functions'),(24,'24','Maintenance of priests / preachers / other religious functionaries'),(25,'25','Construction / Running of hospital / dispensary / clinic'),(26,'26','Construction of community halls etc.'),(27,'27','Construction and Management of old age home'),(28,'28','Welfare of the aged / widows'),(29,'29','Construction and Management of Orphanage'),(30,'30','Welfare of the orphans'),(31,'31','Construction and Management of dharamshala / shelter'),(32,'32','Holding of free medical / health / family welfare / immunisation camps'),(33,'33','Supply of free medicine, and medical aid, including hearing aids, visual aids, family planning aids etc.'),(34,'34','Provision of aids such as Tricycles, calipers etc. to the handicapped'),(35,'35','Treatment / Rehabilitation of persons suffering from leprosy'),(36,'36','Treatment / Rehabilitation of drug addicts'),(37,'37','Welfare / Empowerment of women'),(38,'38','Welfare of children'),(39,'39','Provision of free clothing / food to the poor, needy and destitute'),(40,'40','Relief / Rehabilitation of victims of natural calamities'),(41,'41','Help to the victims of riots / other disturbances'),(42,'42','Digging of bore wells'),(43,'43','Sanitation including community toilets etc.'),(44,'44','Vocational training - tailoring, motor repairs, computers etc.'),(45,'45','Awareness Camp / Seminar / Workshop / Meeting / Conference'),(46,'46','Providing free legal aid / Running legal aid centre'),(47,'47','Holding sports meet'),(48,'48','Awareness about Acquired Immune Deficiency Syndrome (AIDS) / Treatment and rehabilitation of persons affected by AIDS'),(49,'49','Welfare of the physically and mentally challenged'),(50,'50','Welfare of the Scheduled Castes'),(51,'51','Welfare of the Scheduled Tribes'),(52,'52','Welfare of the Other Backward Classes'),(53,'53','Environmental programs'),(54,'54','Survey for socio-economic and other welfare programs'),(55,'55','Establishment expenses'),(56,'56','Activities other than those mentioned above (Furnish details)');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_cost_centre`
--

LOCK TABLES `master_cost_centre` WRITE;
/*!40000 ALTER TABLE `master_cost_centre` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_cost_centre_category`
--

LOCK TABLES `master_cost_centre_category` WRITE;
/*!40000 ALTER TABLE `master_cost_centre_category` DISABLE KEYS */;
INSERT INTO `master_cost_centre_category` VALUES (1,'Primary');
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_country`
--

LOCK TABLES `master_country` WRITE;
/*!40000 ALTER TABLE `master_country` DISABLE KEYS */;
INSERT INTO `master_country` VALUES (1,'India','IND',NULL,'à¤°',NULL),(9,'Saudi Arabia','SAU','SAR','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Saudi Riyal'),(10,'Bulgaria','BGR','BGN','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â','Bulgarian Lev'),(11,'Spain','ESP','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(12,'Taiwan','TWN','TWD','NT$','New Taiwan Dollar'),(13,'Czech Republic','CZE','CZK','KÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢','Czech Koruna'),(14,'Denmark','DNK','DKK','kr.','Danish Krone'),(15,'Germany','DEU','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(16,'Greece','GRC','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(17,'United States','USA','USD','$','US Dollar'),(18,'Finland','FIN','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(19,'France','FRA','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(20,'Israel','ISR','ILS','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Israeli New Shekel'),(21,'Hungary','HUN','HUF','Ft','Hungarian Forint'),(22,'Iceland','ISL','ISK','kr.','Icelandic Krona'),(23,'Italy','ITA','EUR','â‚¬','Euro'),(24,'Japan','JPN','JPY','ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€š','Japanese Yen'),(25,'Korea','KOR','KRW','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Korean Won'),(26,'Netherlands','NLD','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(27,'Norway','NOR','NOK','kr','Norwegian Krone'),(28,'Poland','POL','PLN','zÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢','Polish Zloty'),(29,'Brazil','BRA','BRL','R$','Real'),(30,'Switzerland','CHE','CHF','fr.','Swiss Franc'),(31,'Romania','ROU','RON','lei','Romanian Leu'),(32,'Russia','RUS','RUB','ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€š','Russian Ruble'),(33,'Croatia','HRV','HRK','kn','Croatian Kuna'),(34,'Slovakia','SVK','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(35,'Albania','ALB','ALL','Lek','Albanian Lek'),(36,'Sweden','SWE','SEK','kr','Swedish Krona'),(37,'Thailand','THA','THB','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ','Thai Baht'),(38,'Turkey','TUR','TRY','TL','Turkish Lira'),(39,'Islamic Republic of Pakistan','PAK','PKR','Rs','Pakistan Rupee'),(40,'Indonesia','IDN','IDR','Rp','Indonesian Rupiah'),(41,'Ukraine','UKR','UAH','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Ukrainian Grivna'),(42,'Belarus','BLR','BYR','ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€š','Belarusian Ruble'),(43,'Slovenia','SVN','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(44,'Estonia','EST','EEK','kr','Estonian Kroon'),(45,'Latvia','LVA','LVL','Ls','Latvian Lats'),(46,'Lithuania','LTU','LTL','Lt','Lithuanian Litas'),(47,'Tajikistan','TAJ','TJS','ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€š','Ruble'),(48,'Iran','IRN','IRR','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Iranian Rial'),(49,'Vietnam','VNM','VND','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Vietnamese Dong'),(50,'Armenia','ARM','AMD','ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€š','Armenian Dram'),(51,'Azerbaijan','AZE','AZN','man.','Azerbaijanian Manat'),(52,'Macedonia (FYROM)','MKD','MKD','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â','Macedonian Denar'),(53,'South Africa','ZAF','ZAR','R','South African Rand'),(54,'Georgia','GEO','GEL','Lari','Lari'),(55,'Faroe Islands','FRO','DKK','kr.','Danish Krone'),(56,'Puerto Rico','PRI','USD','$','US Dollar'),(57,'Malta','MLT','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(58,'Malaysia','MYS','MYR','RM','Malaysian Ringgit'),(59,'Kazakhstan','KAZ','KZT','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â','Tenge'),(60,'Kyrgyzstan','KGZ','KGS','ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€š','som'),(61,'Kenya','KEN','KES','S','Kenyan Shilling'),(62,'Turkmenistan','TKM','TMT','m.','Turkmen manat'),(63,'United Kingdom','GBR','GBP','ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€š','UK Pound Sterling'),(64,'Cambodia','KHM','KHR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¡','Riel'),(65,'Lao P.D.R.','LAO','LAK','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Kip'),(66,'Syria','SYR','SYP','ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â‚¬','Syrian Pound'),(67,'Sri Lanka','LKA','LKR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ','Sri Lanka Rupee'),(68,'Canada','CAN','CAD','$','Canadian Dollar'),(69,'Ethiopia','ETH','ETB','ETB','Ethiopian Birr'),(70,'Nepal','NPL','NPR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ','Nepalese Rupees'),(71,'Afghanistan','AFG','AFN','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Afghani'),(72,'Philippines','PHL','PHP','PhP','Philippine Peso'),(73,'Maldives','MDV','MVR','ÃƒÆ’Ã†â€™Ãƒâ€¦Ã‚Â¾','Rufiyaa'),(74,'Nigeria','NGA','NIO','N','Nigerian Naira'),(75,'Bolivia','BOL','BOB','$b','Boliviano'),(76,'Luxembourg','LUX','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(77,'Greenland','GRL','DKK','kr.','Danish Krone'),(78,'New Zealand','NZL','NZD','$','New Zealand Dollar'),(79,'Guatemala','GTM','GTQ','Q','Guatemalan Quetzal'),(80,'Rwanda','RWA','RWF','RWF','Rwandan Franc'),(81,'Senegal','SEN','XOF','XOF','XOF Senegal'),(82,'Iraq','IRQ','IQD','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Iraqi Dinar'),(83,'Algeria','DZA','DZD','DZD','Algerian Dinar'),(84,'Ecuador','ECU','USD','$','US Dollar'),(85,'Egypt','EGY','EGP','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Egyptian Pound'),(86,'Hong Kong S.A.R.','HKG','HKD','HK$','Hong Kong Dollar'),(87,'Austria','AUT','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(88,'Australia','AUS','AUD','$','Australian Dollar'),(89,'Serbia and Montenegro (Former)','SCG','CSD','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â','Serbian Dinar'),(90,'Peru','PER','PEN','S/.','Peruvian Nuevo Sol'),(91,'Libya','LBY','LYD','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Libyan Dinar'),(92,'Singapore','SGP','SGD','$','Singapore Dollar'),(93,'Bosnia and Herzegovina','BIH','BAM','KM','Convertible Marks'),(94,'Macao S.A.R.','MAC','MOP','MOP','Macao Pataca'),(95,'Liechtenstein','LIE','CHF','CHF','Swiss Franc'),(96,'Costa Rica','CRI','CRC','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Costa Rican Colon'),(97,'Morocco','MAR','MAD','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Moroccan Dirham'),(98,'Ireland','IRL','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(99,'Panama','PAN','PAB','B/.','Panamanian Balboa'),(100,'Principality of Monaco','MCO','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(101,'Tunisia','TUN','TND','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Tunisian Dinar'),(102,'Dominican Republic','DOM','DOP','RD$','Dominican Peso'),(103,'Oman','OMN','OMR','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Omani Rial'),(104,'Jamaica','JAM','JMD','J$','Jamaican Dollar'),(105,'Bolivarian Republic of Venezuela','VEN','VEF','Bs. F.','Venezuelan Bolivar'),(106,'Yemen','YEM','YER','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Yemeni Rial'),(107,'Caribbean','CR','USD','$','US Dollar'),(108,'Colombia','COL','COP','$','Colombian Peso'),(109,'Serbia','SRB','RSD','Din.','Serbian Dinar'),(110,'Belize','BLZ','BZD','BZ$','Belize Dollar'),(111,'Jordan','JOR','JOD','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Jordanian Dinar'),(112,'Trinidad and Tobago','TTO','TTD','TT$','Trinidad Dollar'),(113,'Argentina','ARG','ARS','$','Argentine Peso'),(114,'Montenegro','MNE','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(115,'Lebanon','LBN','LBP','ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â‚¬','Lebanese Pound'),(116,'Zimbabwe','ZWE','ZWL','Z$','Zimbabwe Dollar'),(117,'Kuwait','KWT','KWD','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Kuwaiti Dinar'),(118,'Chile','CHL','CLP','$','Chilean Peso'),(119,'U.A.E.','ARE','AED','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','UAE Dirham'),(120,'Uruguay','URY','UYU','$U','Peso Uruguayo'),(121,'Bahrain','BHR','BHD','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Bahraini Dinar'),(122,'Paraguay','PRY','PYG','Gs','Paraguay Guarani'),(123,'Qatar','QAT','QAR','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Qatari Rial'),(124,'El Salvador','SLV','USD','$','US Dollar'),(125,'Honduras','HND','HNL','L.','Honduran Lempira'),(126,'Nicaragua','NIC','NIO','C$','Nicaraguan Cordoba Oro');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_donaud`
--

LOCK TABLES `master_donaud` WRITE;
/*!40000 ALTER TABLE `master_donaud` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_headoffice_ledger`
--

LOCK TABLES `master_headoffice_ledger` WRITE;
/*!40000 ALTER TABLE `master_headoffice_ledger` DISABLE KEYS */;
INSERT INTO `master_headoffice_ledger` VALUES (1,'10000','Tution fee',72,'GN','GN',0,0,'',0,0,0,0),(2,'10001','Admission fee',72,'GN','GN',0,0,'',0,0,0,0),(3,'10002','Establishement fees',72,'GN','GN',0,0,'',0,0,0,0),(4,'10003','Additional fee',72,'GN','GN',0,0,'',0,0,0,0),(5,'10004','Examination fee',72,'GN','GN',0,0,'',0,0,0,0),(6,'10005','Maintenance fee',72,'GN','GN',0,0,'',0,0,0,0),(7,'10006','Term fee',72,'GN','GN',0,0,'',0,0,0,0),(8,'10007','Registration fee',72,'GN','GN',0,0,'',0,0,0,0),(9,'10008','Special fee',72,'GN','GN',0,0,'',0,0,0,0),(10,'10009','Library fee',72,'GN','GN',0,0,'',0,0,0,0),(11,'10010','Laboratory fee',72,'GN','GN',0,0,'',0,0,0,0),(12,'10011','Building Fund fee',72,'GN','GN',0,0,'',0,0,0,0),(13,'10012','Psychology Fee',72,'GN','GN',0,0,'',0,0,0,0),(14,'10013','Group A fee',72,'GN','GN',0,0,'',0,0,0,0),(15,'10014','Group B fee',72,'GN','GN',0,0,'',0,0,0,0),(16,'10015','Computer fee',72,'GN','GN',0,0,'',0,0,0,0),(17,'10016','K.G. fee',72,'GN','GN',0,0,'',0,0,0,0),(18,'10017','Stationary fee',72,'GN','GN',0,0,'',0,0,0,0),(19,'10018','Bus/ Van fee',72,'GN','GN',0,0,'',0,0,0,0),(20,'10019','Administration fee',72,'GN','GN',0,0,'',0,0,0,0),(21,'10020','Retreat fee',72,'GN','GN',0,0,'',0,0,0,0),(22,'10021','Annual fee',72,'GN','GN',0,0,'',0,0,0,0),(23,'10022','Education Development Fund',72,'GN','GN',0,0,'',0,0,0,0),(24,'10023','Games Fee',72,'GN','GN',0,0,'',0,0,0,0),(25,'10024','Student Welfare Fee',72,'GN','GN',0,0,'',0,0,0,0),(26,'10025','Student Aid Fee',72,'GN','GN',0,0,'',0,0,0,0),(27,'10026','Inter Collegiate fee',72,'GN','GN',0,0,'',0,0,0,0),(28,'10027','Audio Visual fee',72,'GN','GN',0,0,'',0,0,0,0),(29,'10028','Inspection fee',72,'GN','GN',0,0,'',0,0,0,0),(30,'10029','University Affiliation fee',72,'GN','GN',0,0,'',0,0,0,0),(31,'10030','Magazine Fee',72,'GN','GN',0,0,'',0,0,0,0),(32,'10031','Founded Prize collections',72,'GN','GN',0,0,'',0,0,0,0),(33,'10032','Laboratory Development fee',72,'GN','GN',0,0,'',0,0,0,0),(34,'10033','Medical fee',72,'GN','GN',0,0,'',0,0,0,0),(35,'10034','Course fee',72,'GN','GN',0,0,'',0,0,0,0),(36,'10035','Staff Welfare fee',72,'GN','GN',0,0,'',0,0,0,0),(37,'10036','Development fee',72,'GN','GN',0,0,'',0,0,0,0),(38,'10037','Student Recognition Fee',72,'GN','GN',0,0,'',0,0,0,0),(39,'10038','Student Union Fee',72,'GN','GN',0,0,'',0,0,0,0),(40,'10039','Provisional Certificate Fee',72,'GN','GN',0,0,'',0,0,0,0),(41,'10040','Project Fee',72,'GN','GN',0,0,'',0,0,0,0),(42,'10041','Revaluation Fee',72,'GN','GN',0,0,'',0,0,0,0),(43,'10042','Processing Fees',72,'GN','GN',0,0,'',0,0,0,0),(44,'10043','University Fee',72,'GN','GN',0,0,'',0,0,0,0),(45,'10044','Convocation Fees',72,'GN','GN',0,0,'',0,0,0,0),(46,'10045','Semester Fee',72,'GN','GN',0,0,'',0,0,0,0),(47,'10046','House Exam Fee',72,'GN','GN',0,0,'',0,0,0,0),(48,'10047','Application/Prospectus Fee',72,'GN','GN',0,0,'',0,0,0,0),(49,'10048','Private Candidates Fee Collection',72,'GN','GN',0,0,'',0,0,0,0),(50,'10049','PTA Fees',72,'GN','GN',0,0,'',0,0,0,0),(51,'10050','Condonation Fee',72,'GN','GN',0,0,'',0,0,0,0),(52,'10051','Boarding Fee/ Hostel Fee /Mess Fee',72,'GN','GN',0,0,'',0,0,0,0),(53,'10052','Consultation Fee',72,'GN','GN',0,0,'',0,0,0,0),(54,'10053','Noviciate Maintainance Fee',72,'GN','GN',0,0,'',0,0,0,0),(55,'10054','Other Fee Collections',72,'GN','GN',0,0,'',0,0,0,0),(56,'10101','Hospital/Dispensary Income',73,'GN','GN',0,0,'',0,0,0,0),(57,'10102','Out Patients Collections',73,'GN','GN',0,0,'',0,0,0,0),(58,'10103','In Patients Collections',73,'GN','GN',0,0,'',0,0,0,0),(59,'10104','Pharmacy Income/Sale of Medicine',73,'GN','GN',0,0,'',0,0,0,0),(60,'10105','Laboratory/X ray / Scanning Income',73,'GN','GN',0,0,'',0,0,0,0),(61,'10106','Commission from Book Seller',73,'GN','GN',0,0,'',0,0,0,0),(62,'10107','Miscelleneous Income',73,'GN','GN',0,0,'',0,0,0,0),(63,'10108','Sale of Vehicle / Sale of other fixed Assets',73,'GN','GN',0,0,'',0,0,0,0),(64,'10109','Income from Fixed Assets',73,'GN','GN',0,0,'',0,0,0,0),(65,'10110','Sale of Ties /Badges/belts/bags/books/uniform',73,'GN','GN',0,0,'',0,0,0,0),(66,'10111','sale of scraps/ papers',73,'GN','GN',0,0,'',0,0,0,0),(67,'10112','Fine',73,'GN','GN',0,0,'',0,0,0,0),(68,'10113','Student Fund',73,'GN','GN',0,0,'',0,0,0,0),(69,'10114','Educational Income',73,'GN','GN',0,0,'',0,0,0,0),(70,'10115','Income from Picnic/Excursion',73,'GN','GN',0,0,'',0,0,0,0),(71,'10116','Breakage/ Deposits/Bonafide/phone calls/sale of other items',73,'GN','GN',0,0,'',0,0,0,0),(72,'10117','Other Collections',73,'GN','GN',0,0,'',0,0,0,0),(73,'10118','Inmate Pension',73,'GN','GN',0,0,'',0,0,0,0),(74,'10119','Gate Pass/ Security Deposit',73,'GN','GN',0,0,'',0,0,0,0),(75,'10201','Sisters Salaries / Remuneration/Honororium',74,'GN','GN',0,0,'',0,0,0,0),(76,'10202','Sisters Pension/ Arrears / Gratuity /EPF/Other benefits',74,'GN','GN',0,0,'',0,0,0,0),(77,'10203','Donations for sisters',74,'GN','GN',0,0,'',0,0,0,0),(78,'10204','Dowry',74,'GN','GN',0,0,'',0,0,0,0),(79,'10205','Gifts and Awards to Members',74,'GN','GN',0,0,'',0,0,0,0),(80,'10206','Scholarship for Sisters',74,'GN','GN',0,0,'',0,0,0,0),(81,'10207','Sisters bank A/c closed',74,'GN','GN',0,0,'',0,0,0,0),(82,'10301','Agricultural Income',75,'GN','GN',0,0,'',0,0,0,0),(83,'10302','Income from Livestock',75,'GN','GN',0,0,'',0,0,0,0),(84,'10303','Land Compensation Received',75,'GN','GN',0,0,'',0,0,0,0),(85,'10304','Rent from Rooms/Canteens/ Vending Machine',75,'GN','GN',0,0,'',0,0,0,0),(86,'10305','Land Lease Income',75,'GN','GN',0,0,'',0,0,0,0),(87,'10401','Interest from Savings bank A/c',76,'GN','GN',0,0,'',0,0,0,0),(88,'10402','Interest on Fixed/ Term  Deposits',76,'GN','GN',0,0,'',0,0,0,0),(89,'10403','Interest from Mutual Funds',76,'GN','GN',0,0,'',0,0,0,0),(90,'10404','Interest received from Income tax / Refund from IT dept',76,'GN','GN',0,0,'',0,0,0,0),(91,'10501','Grant -in-Aid / Aid from Govt',77,'GN','GN',0,0,'',0,0,0,0),(92,'10502','Autonomy Grant',77,'GN','GN',0,0,'',0,0,0,0),(93,'10503','UGC  Grant',77,'GN','GN',0,0,'',0,0,0,0),(94,'10504','Deduction Grant',77,'GN','GN',0,0,'',0,0,0,0),(95,'10505','Scholarships',77,'GN','GN',0,0,'',0,0,0,0),(96,'20000','Salaries & Allowances of Teaching Staff',78,'GN','GN',0,0,'',0,0,0,0),(97,'20001','Salaries & Allowances of Non-Teaching Staff',78,'GN','GN',0,0,'',0,0,0,0),(98,'20002','Salaries of Contingent Staff',78,'GN','GN',0,0,'',0,0,0,0),(99,'20003','Salaries of Domestic Servants',78,'GN','GN',0,0,'',0,0,0,0),(100,'20004','Remuneration/ Honororium',78,'GN','GN',0,0,'',0,0,0,0),(101,'20005','Salaries of  Doctors/ Nurses /Para medical',78,'GN','GN',0,0,'',0,0,0,0),(102,'20006','Salaries of Part-time staff/ Substitute staff',78,'GN','GN',0,0,'',0,0,0,0),(103,'20007','Pensions to staff',78,'GN','GN',0,0,'',0,0,0,0),(104,'20008','Contribution to LIC Gratuity Scheme',78,'GN','GN',0,0,'',0,0,0,0),(105,'20009','Gratuity to staff',78,'GN','GN',0,0,'',0,0,0,0),(106,'20010','EPF/ESI Management share',78,'GN','GN',0,0,'',0,0,0,0),(107,'20011','EPF /ESI administrative charges',78,'GN','GN',0,0,'',0,0,0,0),(108,'20012','wages',78,'GN','GN',0,0,'',0,0,0,0),(109,'20013','Staff Welfare expenses',78,'GN','GN',0,0,'',0,0,0,0),(110,'20101','Printing and Stationary',79,'GN','GN',0,0,'',0,0,0,0),(111,'20102','Telephone Charges',79,'GN','GN',0,0,'',0,0,0,0),(112,'20103','Postage',79,'GN','GN',0,0,'',0,0,0,0),(113,'20104','Electricity  Charges',79,'GN','GN',0,0,'',0,0,0,0),(114,'20105','Muncipal /Property Taxes',79,'GN','GN',0,0,'',0,0,0,0),(115,'20106','Rent paid',79,'GN','GN',0,0,'',0,0,0,0),(116,'20107','News papers and Periodicals',79,'GN','GN',0,0,'',0,0,0,0),(117,'20108','Advertisement',79,'GN','GN',0,0,'',0,0,0,0),(118,'20109','Legal charges',79,'GN','GN',0,0,'',0,0,0,0),(119,'20110','Office Expenses',79,'GN','GN',0,0,'',0,0,0,0),(120,'20111','Professional  / Consultancy Charges',79,'GN','GN',0,0,'',0,0,0,0),(121,'20112','Transportation Charges',79,'GN','GN',0,0,'',0,0,0,0),(122,'20113','Water Charges',79,'GN','GN',0,0,'',0,0,0,0),(123,'20114','Internet Charges',79,'GN','GN',0,0,'',0,0,0,0),(124,'20115','Interview Expenses',79,'GN','GN',0,0,'',0,0,0,0),(125,'20116','Hiring Charges',79,'GN','GN',0,0,'',0,0,0,0),(126,'20117','Bank Charges',79,'GN','GN',0,0,'',0,0,0,0),(127,'20118','Miscellaneous Expenses',79,'GN','GN',0,0,'',0,0,0,0),(128,'20119','Auditors Fee',79,'GN','GN',0,0,'',0,0,0,0),(129,'20120','Contingency',79,'GN','GN',0,0,'',0,0,0,0),(130,'20121','Secretarial Assistence',79,'GN','GN',0,0,'',0,0,0,0),(131,'20201','Laboratory and Science Expenses',80,'GN','GN',0,0,'',0,0,0,0),(132,'20202','Audio Visual Expenses',80,'GN','GN',0,0,'',0,0,0,0),(133,'20203','Games and Sports Expenses',80,'GN','GN',0,0,'',0,0,0,0),(134,'20204','Library expenses',80,'GN','GN',0,0,'',0,0,0,0),(135,'20205','Result Processing fee',80,'GN','GN',0,0,'',0,0,0,0),(136,'20206','Convocation /Graduation  Expenses',80,'GN','GN',0,0,'',0,0,0,0),(137,'20207','Educational expenses',80,'GN','GN',0,0,'',0,0,0,0),(138,'20208','Software updating expenses',80,'GN','GN',0,0,'',0,0,0,0),(139,'20209','Paper Valuation/ Paper setting',80,'GN','GN',0,0,'',0,0,0,0),(140,'20210','Invigilation',80,'GN','GN',0,0,'',0,0,0,0),(141,'20211','Practical Exam Remuneration',80,'GN','GN',0,0,'',0,0,0,0),(142,'20212','Scholarship',80,'GN','GN',0,0,'',0,0,0,0),(143,'20301','Donation given',81,'GN','GN',0,0,'',0,0,0,0),(144,'20302','Donation  to other Societies',81,'GN','GN',0,0,'',0,0,0,0),(145,'20401','Contribution to Dioceses /Ecclesiastical Organisations',82,'GN','GN',0,0,'',0,0,0,0),(146,'20402','Contribution to Others',82,'GN','GN',0,0,'',0,0,0,0),(147,'20403','Contribution to C.R.I.',82,'GN','GN',0,0,'',0,0,0,0),(148,'20404','Contribution to Noviciate',82,'GN','GN',0,0,'',0,0,0,0),(149,'20405','Contribution to communities',82,'GN','GN',0,0,'',0,0,0,0),(150,'20406','Contribution to the Province',82,'GN','GN',0,0,'',0,0,0,0),(151,'20407','Contribution to the Institute',82,'GN','GN',0,0,'',0,0,0,0),(152,'20408','Contribution to other Provinces',82,'GN','GN',0,0,'',0,0,0,0),(153,'20501','charity to the poor',83,'GN','GN',0,0,'',0,0,0,0),(154,'20502','Charity to the poor students',83,'GN','GN',0,0,'',0,0,0,0),(155,'20503','Sponsorship Aid to seminarians & Priests',83,'GN','GN',0,0,'',0,0,0,0),(156,'20504','Sponsorship Aid to poor children',83,'GN','GN',0,0,'',0,0,0,0),(157,'20505','Gifts and charity',83,'GN','GN',0,0,'',0,0,0,0),(158,'20506','Solidarity Fund for the poor',83,'GN','GN',0,0,'',0,0,0,0),(159,'20551','Foreign Travel',84,'GN','GN',0,0,'',0,0,0,0),(160,'20552','Travelling Allowance',84,'GN','GN',0,0,'',0,0,0,0),(161,'20553','Travelling & Conveyance',84,'GN','GN',0,0,'',0,0,0,0),(162,'20554','Local Conveyance',84,'GN','GN',0,0,'',0,0,0,0),(163,'20555','Daily Allowance ( D A )',84,'GN','GN',0,0,'',0,0,0,0),(164,'20556','Home Visit & Holiday Camp expenses',84,'GN','GN',0,0,'',0,0,0,0),(165,'20557','Parking fee / Toll Fee',84,'GN','GN',0,0,'',0,0,0,0),(166,'20558','Cancellation Charges',84,'GN','GN',0,0,'',0,0,0,0),(167,'20559','Diesel / Petrol Charges',84,'GN','GN',0,0,'',0,0,0,0),(168,'20601','Maintanance of Convent',85,'GN','GN',0,0,'',0,0,0,0),(169,'20602','Maintanance of sisters',85,'GN','GN',0,0,'',0,0,0,0),(170,'20603','Expenses of Missionary sisters',85,'GN','GN',0,0,'',0,0,0,0),(171,'20604','Expenses of Sisters of other communities/ other province',85,'GN','GN',0,0,'',0,0,0,0),(172,'20605','Laundry expenses',85,'GN','GN',0,0,'',0,0,0,0),(173,'20606','Secularization expenses',85,'GN','GN',0,0,'',0,0,0,0),(174,'20607','Kitchen maintanance',85,'GN','GN',0,0,'',0,0,0,0),(175,'20608','Garden upkeep',85,'GN','GN',0,0,'',0,0,0,0),(176,'20609','Furnishing of new communities',85,'GN','GN',0,0,'',0,0,0,0),(177,'20610','Food / Provision',85,'GN','GN',0,0,'',0,0,0,0),(178,'20611','Rice / Paddy',85,'GN','GN',0,0,'',0,0,0,0),(179,'20612','Fuel, gas & Combastibles',85,'GN','GN',0,0,'',0,0,0,0),(180,'20613','Clothing / Footwear',85,'GN','GN',0,0,'',0,0,0,0),(181,'20614','Refreshments/ Snacks',85,'GN','GN',0,0,'',0,0,0,0),(182,'20615','Cleanness & Hygien',85,'GN','GN',0,0,'',0,0,0,0),(183,'20616','Medical expenses',85,'GN','GN',0,0,'',0,0,0,0),(184,'20617','Expenses on Functions',85,'GN','GN',0,0,'',0,0,0,0),(185,'20618','Expenses on Excursions and Picnics',85,'GN','GN',0,0,'',0,0,0,0),(186,'20619','Gifts and Prizes Distributed',85,'GN','GN',0,0,'',0,0,0,0),(187,'20620','Retreats/ Seminars/ Courses',85,'GN','GN',0,0,'',0,0,0,0),(188,'20621','Formation expenses for sisters',85,'GN','GN',0,0,'',0,0,0,0),(189,'20622','Sign of Unity',85,'GN','GN',0,0,'',0,0,0,0),(190,'20623','Worship-Suffagges-Chaplains-Preachers',85,'GN','GN',0,0,'',0,0,0,0),(191,'20624','Funeral expenses',85,'GN','GN',0,0,'',0,0,0,0),(192,'20625','Religious Expenses',85,'GN','GN',0,0,'',0,0,0,0),(193,'20626','Provincial Chapter Consultation Expenses',85,'GN','GN',0,0,'',0,0,0,0),(194,'20651','Repairs and Maintanance of Buildings',86,'GN','GN',0,0,'',0,0,0,0),(195,'20652','Repairs & Maintenance of Machinery',86,'GN','GN',0,0,'',0,0,0,0),(196,'20653','Repairs & Maintenance of Computer',86,'GN','GN',0,0,'',0,0,0,0),(197,'20654','Repairs & M of Electrical & Electronic Equipments',86,'GN','GN',0,0,'',0,0,0,0),(198,'20655','Repairs & Maintenance of Furniture',86,'GN','GN',0,0,'',0,0,0,0),(199,'20656','Repairs & Maintenance of Generator',86,'GN','GN',0,0,'',0,0,0,0),(200,'20657','Repairs & Maintenance of Lift',86,'GN','GN',0,0,'',0,0,0,0),(201,'20658','Repairs & Maintenance of Other Assets',86,'GN','GN',0,0,'',0,0,0,0),(202,'20659','Maintanance of Vehicle (Salary)',86,'GN','GN',0,0,'',0,0,0,0),(203,'20660','Repairs & Maintenance of Borewell',86,'GN','GN',0,0,'',0,0,0,0),(204,'20661','Renovation of the building',86,'GN','GN',0,0,'',0,0,0,0),(205,'20662','Repairs of Vehicle',86,'GN','GN',0,0,'',0,0,0,0),(206,'20663','Vehicle Insurance',86,'GN','GN',0,0,'',0,0,0,0),(207,'20664','Museum Renovation',86,'GN','GN',0,0,'',0,0,0,0),(208,'20701','Land',18,'GN','GN',0,0,'',0,0,0,0),(209,'20702','Buildings',18,'GN','GN',0,0,'',0,0,0,0),(210,'20703','Land and Buildings',18,'GN','GN',0,0,'',0,0,0,0),(211,'20704','vehicle',18,'GN','GN',0,0,'',0,0,0,0),(212,'20705','Furniture,Fixture and Equipment',18,'GN','GN',0,0,'',0,0,0,0),(213,'20706','Electrical and Electronic Equipments',18,'GN','GN',0,0,'',0,0,0,0),(214,'20707','Offiice Equipment',18,'GN','GN',0,0,'',0,0,0,0),(215,'20708','Domestic Equipment',18,'GN','GN',0,0,'',0,0,0,0),(216,'20709','Lab Equipment',18,'GN','GN',0,0,'',0,0,0,0),(217,'20710','Hospital Equipment',18,'GN','GN',0,0,'',0,0,0,0),(218,'20711','Musical instruments',18,'GN','GN',0,0,'',0,0,0,0),(219,'20712','Generator',18,'GN','GN',0,0,'',0,0,0,0),(220,'20713','Inverter',18,'GN','GN',0,0,'',0,0,0,0),(221,'20714','Building construction Expenditure',18,'GN','GN',0,0,'',0,0,0,0),(222,'20715','Solar light',18,'GN','GN',0,0,'',0,0,0,0),(223,'20716','Eletronic Gadgets',18,'GN','GN',0,0,'',0,0,0,0),(224,'20717','Religious articles',18,'GN','GN',0,0,'',0,0,0,0),(225,'20718','Borewell',18,'GN','GN',0,0,'',0,0,0,0),(226,'20801','Candidates maintanance',8,'GN','GN',0,0,'',0,0,0,0),(227,'20802','Tertians Maintenance',8,'GN','GN',0,0,'',0,0,0,0),(228,'20803','Agricultural Expenses',8,'GN','GN',0,0,'',0,0,0,0),(229,'20804','Garden expenses',8,'GN','GN',0,0,'',0,0,0,0),(230,'20805','Hospital Maintanance',8,'GN','GN',0,0,'',0,0,0,0),(231,'20806','School Maintanances',8,'GN','GN',0,0,'',0,0,0,0),(232,'20807','College Maintanances',8,'GN','GN',0,0,'',0,0,0,0),(233,'20808','Free Clinic Expenses',8,'GN','GN',0,0,'',0,0,0,0),(234,'20809','Dispensory expenses',8,'GN','GN',0,0,'',0,0,0,0),(235,'20810','Village Development/ Health Programme',8,'GN','GN',0,0,'',0,0,0,0),(236,'20811','Dairy /Pet & domestic animal Expenses',8,'GN','GN',0,0,'',0,0,0,0),(237,'20812','Poultry Expenses',8,'GN','GN',0,0,'',0,0,0,0),(238,'20813','Purchase of Books, Magazines and Articles',8,'GN','GN',0,0,'',0,0,0,0),(239,'20814','Purchase of Uniforms/ materials',8,'GN','GN',0,0,'',0,0,0,0),(240,'20815','Packing Material',8,'GN','GN',0,0,'',0,0,0,0),(241,'20816','Land Development Expenses',8,'GN','GN',0,0,'',0,0,0,0),(242,'20817','Building Material',8,'GN','GN',0,0,'',0,0,0,0),(243,'20818','Supervisors Charges',8,'GN','GN',0,0,'',0,0,0,0),(244,'20819','Inter -Statement Transfer',8,'GN','GN',0,0,'',0,0,0,0),(245,'20751','EPF.Recovery/Payment',23,'GN','GN',0,0,'',0,0,0,0),(246,'20752','Professional Tax Recovery/Payment',23,'GN','GN',0,0,'',0,0,0,0),(247,'20753','E.S.I.Recovery/Payments',23,'GN','GN',0,1,'',0,0,0,0),(248,'20754','Group Insurance recoveries/payments',23,'GN','GN',0,0,'',0,0,0,0),(249,'20755','TDS recoveries / Payments',23,'GN','GN',0,0,'',0,0,0,0),(250,'20756','Advance Tax (TDS on Interest)',23,'GN','GN',0,0,'',0,0,0,0),(251,'20757','Income Tax',23,'GN','GN',0,0,'',0,0,0,0),(252,'20758','Mediclaim Insurance policy Payments / Recoveries',23,'GN','GN',0,0,'',0,0,0,0),(253,'20759','Staff Loan Recovery/Payment',23,'GN','GN',0,0,'',0,0,0,0),(254,'20760','Remittance to Govt / University /Board',23,'GN','GN',0,0,'',0,0,0,0),(255,'20761','Registration on land',23,'GN','GN',0,0,'',0,0,0,0),(256,'','Gruppo di Fraternita',39,'GN','GN',0,0,'',0,0,0,0),(257,'','APIBIMI',39,'GN','GN',0,0,'',0,0,0,0),(258,'','One di Fonte',39,'GN','GN',0,0,'',0,0,0,0),(259,'','Sales Force Sponsorship',39,'GN','GN',0,0,'',0,0,0,0),(260,'','Guntur Project',39,'GN','GN',0,0,'',0,0,0,0),(261,'','Prison Ministry Project',39,'GN','GN',0,0,'',0,0,0,0),(262,'','Project for Seminarians & Priests',39,'GN','GN',0,0,'',0,0,0,0),(263,'','Sponsorship for Poor Children',39,'GN','GN',0,0,'',0,0,0,0),(264,'','Other Projects',39,'GN','GN',0,0,'',0,0,0,0),(265,'','Placement',80,'GN','GN',0,0,'',0,0,0,0),(266,'','DSS',78,'GN','GN',0,0,'',0,0,0,0),(267,'10185','Convent Maintanance',8,'GN','GN',0,0,'',0,0,0,0),(268,'10063','Donations',5,'GN','GN',0,0,'',0,0,0,0),(269,'10166','Educational Expeness',8,'GN','GN',0,0,'',0,0,0,0),(270,'10149','Home Visit & Hoilday Camp Expenses',8,'GN','GN',0,0,'',0,0,0,0),(271,'10065','Interest on Savings Account',5,'GN','GN',0,0,'',0,0,0,0),(272,'10157','R & M of Electrical & Electronic Equipments',8,'GN','GN',0,0,'',0,0,0,0),(273,'10090','Salaries & Allowances',8,'GN','GN',0,0,'',0,0,0,0),(274,'10146','Travelling and Conveyance',8,'GN','GN',0,0,'',0,0,0,0),(275,'','Gym',80,'GN','GN',0,0,'',0,0,0,0),(276,'','Opening of Account',8,'GN','GN',0,0,'',0,0,0,0),(277,'','Sanitary expenses',8,'GN','GN',0,0,'',0,0,0,0),(278,'','Boarding expenses/ Mess expenses',8,'GN','GN',0,0,'',0,0,0,0),(279,'','ESI Recovery /Payment',23,'GN','GN',0,1,'',0,0,0,0),(280,'','Lab Deposit',33,'GN','GN',0,1,'',0,0,0,0),(281,'','Lib Deposit',72,'GN','GN',0,0,'',0,0,0,0),(282,'10064','Contributions Received',5,'GN','GN',0,0,'',0,0,0,0),(283,'10186','Crokery / Utensils',8,'GN','GN',0,0,'',0,0,0,0),(284,'10197','Purchase of Books and Articles',8,'GN','GN',0,0,'',0,0,0,0),(285,'10155','R & M of Machinery',8,'GN','GN',0,0,'',0,0,0,0),(286,'','Subsidy',38,'GN','GN',0,1,'',0,0,0,0),(287,'','Hospitality',8,'GN','GN',0,1,'',0,0,0,0),(288,'','Vocation Promotion',8,'GN','GN',0,1,'',0,0,0,0),(289,'','Fixed Deposit / Term Deposit opened',21,'GN','GN',0,1,'',0,0,0,0),(290,'','Fixed/ term Deposit closed',21,'GN','GN',0,1,'',0,0,0,0),(291,'','New A/c opened',8,'GN','GN',0,0,'',0,0,0,0);
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
  `ASSOCIATIONNATURE` int(11) DEFAULT NULL COMMENT '0-Cultural,1-Ecomomic,2-Educational,3-Religious,4-Social',
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_insti_perference`
--

LOCK TABLES `master_insti_perference` WRITE;
/*!40000 ALTER TABLE `master_insti_perference` DISABLE KEYS */;
INSERT INTO `master_insti_perference` VALUES (1,NULL,'Sisters of Charity ,Secunderabad Province Society','','','Hyderabad',NULL,1,'','','','','','KAM/240/K/74','2016-04-07 00:00:00','','2016-04-07 00:00:00','','','','',3,3,'','','','2016-04-07 00:00:00','',0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=1397 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_ledger`
--

LOCK TABLES `master_ledger` WRITE;
/*!40000 ALTER TABLE `master_ledger` DISABLE KEYS */;
INSERT INTO `master_ledger` VALUES (1,'CS911','Cash',13,'GN','GN',0,0,0,'',0,1,0,2,0,0,0,0,0,0),(2,'FD912','Fixed Deposit',14,'GN','FD',0,0,0,'',0,2,0,2,0,0,0,0,0,0),(3,'CF913','Capital Fund',21,'GN','GN',0,0,0,'',0,3,0,2,0,0,0,0,0,0),(1001,'1001','Staff Loan',11,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1002,'1002','Interest on Staff Loan',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1003,'FA001','Fixed Asset Ledger',11,'GN','GN',0,0,0,'',0,2,0,0,0,0,0,0,0,0),(1004,'G001','Gain Ledger',5,'GN','GN',0,0,0,'',0,2,0,0,0,0,0,1,0,0),(1005,'L001','Loss Ledger',8,'GN','GN',0,0,0,'',0,2,0,0,0,0,0,0,1,0),(1006,'IK001','In-Kind Ledger',5,'GN','GN',0,0,0,'',0,2,0,0,0,1,0,0,0,0),(1008,'DI001','Disposal Ledger',8,'GN','GN',0,0,0,'',0,2,0,0,0,0,0,0,0,1),(1045,'10000','Tution fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1046,'10001','Admission fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1047,'10002','Establishement fees',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1048,'10003','Additional fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1049,'10004','Examination fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1050,'10005','Maintenance fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1051,'10006','Term fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1052,'10007','Registration fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1053,'10008','Special fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1054,'10009','Library fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1055,'10010','Laboratory fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1056,'10011','Building Fund fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1057,'10012','Psychology Fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1058,'10013','Group A fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1059,'10014','Group B fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1060,'10015','Computer fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1061,'10016','K.G. fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1062,'10017','Stationary fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1063,'10018','Bus/ Van fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1064,'10019','Administration fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1065,'10020','Retreat fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1066,'10021','Annual fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1067,'10022','Education Development Fund',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1068,'10023','Games Fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1069,'10024','Student Welfare Fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1070,'10025','Student Aid Fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1071,'10026','Inter Collegiate fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1072,'10027','Audio Visual fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1073,'10028','Inspection fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1074,'10029','University Affiliation fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1075,'10030','Magazine Fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1076,'10031','Founded Prize collections',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1077,'10032','Laboratory Development fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1078,'10033','Medical fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1079,'10034','Course fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1080,'10035','Staff Welfare fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1081,'10036','Development fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1082,'10037','Student Recognition Fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1083,'10038','Student Union Fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1084,'10039','Provisional Certificate Fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1085,'10040','Project Fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1086,'10041','Revaluation Fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1087,'10042','Processing Fees',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1088,'10043','University Fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1089,'10044','Convocation Fees',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1090,'10045','Semester Fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1091,'10046','House Exam Fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1092,'10047','Application/Prospectus Fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1093,'10048','Private Candidates Fee Collection',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1094,'10049','PTA Fees',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1095,'10050','Condonation Fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1096,'10051','Boarding Fee/ Hostel Fee /Mess Fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1097,'10052','Consultation Fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1098,'10053','Noviciate Maintainance Fee',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1099,'10054','Other Fee Collections',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1100,'10101','Hospital/Dispensary Income',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1101,'10102','Out Patients Collections',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1102,'10103','In Patients Collections',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1103,'10104','Pharmacy Income/Sale of Medicine',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1104,'10105','Laboratory/X ray / Scanning Income',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1105,'10106','Commission from Book Seller',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1106,'10107','Miscelleneous Income',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1107,'10108','Sale of Vehicle / Sale of other fixed Assets',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1108,'10109','Income from Fixed Assets',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1109,'10110','Sale of Ties /Badges/belts/bags/books/uniform',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1110,'10111','sale of scraps/ papers',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1111,'10112','Fine',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1112,'10113','Student Fund',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1113,'10114','Educational Income',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1114,'10115','Income from Picnic/Excursion',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1115,'10116','Breakage/ Deposits/Bonafide/phone calls/sale of other items',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1116,'10117','Other Collections',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1117,'10118','Inmate Pension',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1118,'10119','Gate Pass/ Security Deposit',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1119,'10201','Sisters Salaries / Remuneration/Honororium',74,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1120,'10202','Sisters Pension/ Arrears / Gratuity /EPF/Other benefits',74,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1121,'10203','Donations for sisters',74,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1122,'10204','Dowry',74,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1123,'10205','Gifts and Awards to Members',74,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1124,'10206','Scholarship for Sisters',74,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1125,'10207','Sisters bank A/c closed',74,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1126,'10301','Agricultural Income',75,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1127,'10302','Income from Livestock',75,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1128,'10303','Land Compensation Received',75,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1129,'10304','Rent from Rooms/Canteens/ Vending Machine',75,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1130,'10305','Land Lease Income',75,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1131,'10401','Interest from Savings bank A/c',76,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1132,'10402','Interest on Fixed/ Term  Deposits',76,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1133,'10403','Interest from Mutual Funds',76,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1134,'10404','Interest received from Income tax / Refund from IT dept',76,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1135,'10501','Grant -in-Aid / Aid from Govt',77,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1136,'10502','Autonomy Grant',77,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1137,'10503','UGC  Grant',77,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1138,'10504','Deduction Grant',77,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1139,'10505','Scholarships',77,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1140,'20000','Salaries & Allowances of Teaching Staff',78,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1141,'20001','Salaries & Allowances of Non-Teaching Staff',78,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1142,'20002','Salaries of Contingent Staff',78,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1143,'20003','Salaries of Domestic Servants',78,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1144,'20004','Remuneration/ Honororium',78,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1145,'20005','Salaries of  Doctors/ Nurses /Para medical',78,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1146,'20006','Salaries of Part-time staff/ Substitute staff',78,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1147,'20007','Pensions to staff',78,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1148,'20008','Contribution to LIC Gratuity Scheme',78,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1149,'20009','Gratuity to staff',78,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1150,'20010','EPF/ESI Management share',78,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1151,'20011','EPF /ESI administrative charges',78,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1152,'20012','wages',78,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1153,'20013','Staff Welfare expenses',78,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1154,'20101','Printing and Stationary',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1155,'20102','Telephone Charges',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1156,'20103','Postage',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1157,'20104','Electricity  Charges',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1158,'20105','Muncipal /Property Taxes',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1159,'20106','Rent paid',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1160,'20107','News papers and Periodicals',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1161,'20108','Advertisement',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1162,'20109','Legal charges',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1163,'20110','Office Expenses',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1164,'20111','Professional  / Consultancy Charges',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1165,'20112','Transportation Charges',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1166,'20113','Water Charges',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1167,'20114','Internet Charges',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1168,'20115','Interview Expenses',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1169,'20116','Hiring Charges',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1170,'20117','Bank Charges',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1171,'20118','Miscellaneous Expenses',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1172,'20119','Auditors Fee',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1173,'20120','Contingency',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1174,'20121','Secretarial Assistence',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1175,'20201','Laboratory and Science Expenses',80,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1176,'20202','Audio Visual Expenses',80,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1177,'20203','Games and Sports Expenses',80,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1178,'20204','Library expenses',80,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1179,'20205','Result Processing fee',80,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1180,'20206','Convocation /Graduation  Expenses',80,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1181,'20207','Educational expenses',80,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1182,'20208','Software updating expenses',80,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1183,'20209','Paper Valuation/ Paper setting',80,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1184,'20210','Invigilation',80,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1185,'20211','Practical Exam Remuneration',80,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1186,'20212','Scholarship',80,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1187,'20301','Donation given',81,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1188,'20302','Donation  to other Societies',81,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1189,'20401','Contribution to Dioceses /Ecclesiastical Organisations',82,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1190,'20402','Contribution to Others',82,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1191,'20403','Contribution to C.R.I.',82,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1192,'20404','Contribution to Noviciate',82,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1193,'20405','Contribution to communities',82,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1194,'20406','Contribution to the Province',82,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1195,'20407','Contribution to the Institute',82,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1196,'20408','Contribution to other Provinces',82,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1197,'20501','charity to the poor',83,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1198,'20502','Charity to the poor students',83,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1199,'20503','Sponsorship Aid to seminarians & Priests',83,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1200,'20504','Sponsorship Aid to poor children',83,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1201,'20505','Gifts and charity',83,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1202,'20506','Solidarity Fund for the poor',83,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1203,'20551','Foreign Travel',84,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1204,'20552','Travelling Allowance',84,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1205,'20553','Travelling & Conveyance',84,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1206,'20554','Local Conveyance',84,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1207,'20555','Daily Allowance ( D A )',84,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1208,'20556','Home Visit & Holiday Camp expenses',84,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1209,'20557','Parking fee / Toll Fee',84,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1210,'20558','Cancellation Charges',84,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1211,'20559','Diesel / Petrol Charges',84,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1212,'20601','Maintanance of Convent',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1213,'20602','Maintanance of sisters',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1214,'20603','Expenses of Missionary sisters',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1215,'20604','Expenses of Sisters of other communities/ other province',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1216,'20605','Laundry expenses',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1217,'20606','Secularization expenses',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1218,'20607','Kitchen maintanance',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1219,'20608','Garden upkeep',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1220,'20609','Furnishing of new communities',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1221,'20610','Food / Provision',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1222,'20611','Rice / Paddy',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1223,'20612','Fuel, gas & Combastibles',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1224,'20613','Clothing / Footwear',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1225,'20614','Refreshments/ Snacks',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1226,'20615','Cleanness & Hygien',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1227,'20616','Medical expenses',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1228,'20617','Expenses on Functions',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1229,'20618','Expenses on Excursions and Picnics',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1230,'20619','Gifts and Prizes Distributed',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1231,'20620','Retreats/ Seminars/ Courses',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1232,'20621','Formation expenses for sisters',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1233,'20622','Sign of Unity',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1234,'20623','Worship-Suffagges-Chaplains-Preachers',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1235,'20624','Funeral expenses',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1236,'20625','Religious Expenses',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1237,'20626','Provincial Chapter Consultation Expenses',85,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1238,'20651','Repairs and Maintanance of Buildings',86,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1239,'20652','Repairs & Maintenance of Machinery',86,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1240,'20653','Repairs & Maintenance of Computer',86,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1241,'20654','Repairs & M of Electrical & Electronic Equipments',86,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1242,'20655','Repairs & Maintenance of Furniture',86,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1243,'20656','Repairs & Maintenance of Generator',86,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1244,'20657','Repairs & Maintenance of Lift',86,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1245,'20658','Repairs & Maintenance of Other Assets',86,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1246,'20659','Maintanance of Vehicle (Salary)',86,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1247,'20660','Repairs & Maintenance of Borewell',86,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1248,'20661','Renovation of the building',86,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1249,'20662','Repairs of Vehicle',86,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1250,'20663','Vehicle Insurance',86,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1251,'20664','Museum Renovation',86,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1252,'20701','Land',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1253,'20702','Buildings',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1254,'20703','Land and Buildings',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1255,'20704','vehicle',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1256,'20705','Furniture,Fixture and Equipment',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1257,'20706','Electrical and Electronic Equipments',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1258,'20707','Offiice Equipment',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1259,'20708','Domestic Equipment',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1260,'20709','Lab Equipment',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1261,'20710','Hospital Equipment',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1262,'20711','Musical instruments',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1263,'20712','Generator',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1264,'20713','Inverter',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1265,'20714','Building construction Expenditure',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1266,'20715','Solar light',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1267,'20716','Eletronic Gadgets',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1268,'20717','Religious articles',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1269,'20718','Borewell',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1270,'20801','Candidates maintanance',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1271,'20802','Tertians Maintenance',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1272,'20803','Agricultural Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1273,'20804','Garden expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1274,'20805','Hospital Maintanance',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1275,'20806','School Maintanances',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1276,'20807','College Maintanances',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1277,'20808','Free Clinic Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1278,'20809','Dispensory expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1279,'20810','Village Development/ Health Programme',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1280,'20811','Dairy /Pet & domestic animal Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1281,'20812','Poultry Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1282,'20813','Purchase of Books, Magazines and Articles',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1283,'20814','Purchase of Uniforms/ materials',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1284,'20815','Packing Material',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1285,'20816','Land Development Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1286,'20817','Building Material',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1287,'20818','Supervisors Charges',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1288,'20819','Inter -Statement Transfer',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1289,'20751','EPF.Recovery/Payment',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1290,'20752','Professional Tax Recovery/Payment',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1291,'20753','E.S.I.Recovery/Payments',23,'GN','GN',0,1,0,'',0,0,0,0,0,0,0,0,0,0),(1292,'20754','Group Insurance recoveries/payments',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1293,'20755','TDS recoveries / Payments',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1294,'20756','Advance Tax (TDS on Interest)',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1295,'20757','Income Tax',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1296,'20758','Mediclaim Insurance policy Payments / Recoveries',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1297,'20759','Staff Loan Recovery/Payment',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1298,'20760','Remittance to Govt / University /Board',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1299,'20761','Registration on land',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1300,'','Gruppo di Fraternita',39,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1301,'','APIBIMI',39,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1302,'','One di Fonte',39,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1303,'','Sales Force Sponsorship',39,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1304,'','Guntur Project',39,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1305,'','Prison Ministry Project',39,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1306,'','Project for Seminarians & Priests',39,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1307,'','Sponsorship for Poor Children',39,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1308,'','Other Projects',39,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1309,'','Placement',80,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1310,'','DSS',78,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1311,'10185','Convent Maintanance',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1312,'10063','Donations',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1313,'10166','Educational Expeness',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1314,'10149','Home Visit & Hoilday Camp Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1315,'10065','Interest on Savings Account',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1316,'10157','R & M of Electrical & Electronic Equipments',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1317,'10090','Salaries & Allowances',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1318,'10146','Travelling and Conveyance',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1319,'','Gym',80,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1320,'','Opening of Account',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1321,'','Sanitary expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1322,'','Boarding expenses/ Mess expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1323,'','ESI Recovery /Payment',23,'GN','GN',0,1,0,'',0,0,0,0,0,0,0,0,0,0),(1324,'','Lab Deposit',33,'GN','GN',0,1,0,'',0,0,0,0,0,0,0,0,0,0),(1325,'','Lib Deposit',72,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1326,'10064','Contributions Received',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1327,'10186','Crokery / Utensils',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1328,'10197','Purchase of Books and Articles',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1329,'10155','R & M of Machinery',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1330,'','Subsidy',38,'GN','GN',0,1,0,'',0,0,0,0,0,0,0,0,0,0),(1331,'','Hospitality',8,'GN','GN',0,1,0,'',0,0,0,0,0,0,0,0,0,0),(1332,'','Vocation Promotion',8,'GN','GN',0,1,0,'',0,0,0,0,0,0,0,0,0,0),(1333,'','Fixed Deposit / Term Deposit opened',21,'GN','GN',0,1,0,'',0,0,0,0,0,0,0,0,0,0),(1334,'','Fixed/ term Deposit closed',21,'GN','GN',0,1,0,'',0,0,0,0,0,0,0,0,0,0),(1335,'','New A/c opened',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1351,'1','064210100052763',12,'GN','BK',0,0,0,NULL,0,255,0,0,1,0,0,0,0,0),(1352,'02','064210011008317',12,'GN','BK',0,0,0,NULL,0,255,0,0,1,0,0,0,0,0),(1353,'01','064210011008316',12,'GN','BK',0,0,0,NULL,0,255,0,0,1,0,0,0,0,0),(1366,'','Test Ledger',5,'GN','GN',0,0,0,'',0,255,0,0,0,0,0,0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_ledger_group`
--

LOCK TABLES `master_ledger_group` WRITE;
/*!40000 ALTER TABLE `master_ledger_group` DISABLE KEYS */;
INSERT INTO `master_ledger_group` VALUES (1,'01','Incomes',1,1,1,0,2,0),(2,'02','Expenses',2,2,2,0,2,0),(3,'03','Assets',3,3,3,0,2,0),(4,'04','Liabilities',4,4,4,0,2,0),(5,'05','Direct Incomes',1,1,1,0,0,0),(6,'06','Indirect Incomes',1,1,1,0,0,0),(7,'07','Sales Accounts',1,1,1,0,0,0),(8,'08','Direct Expenses',2,2,2,0,0,0),(9,'09','Indirect Expenses',2,2,2,0,0,0),(10,'10','Purchase Accounts',2,2,2,0,0,0),(11,'18','Current Assets',3,3,3,0,2,0),(12,'20','Bank Accounts',11,3,11,0,2,0),(13,'19','Cash-in-hand',11,3,11,0,2,0),(14,'17','Fixed Deposits',11,3,11,0,2,0),(15,'16','Loans and Advances (Asset)',11,3,11,0,0,0),(16,'14','Stock-in-hand',11,3,11,0,0,0),(17,'15','Sundry Debtors',11,3,11,0,0,0),(18,'11','Fixed Assets',3,3,3,0,0,0),(19,'12','Investments',3,3,3,0,0,0),(20,'13','Misc. Expenses (Asset)',3,3,3,0,0,0),(21,'21','Capital Fund',4,4,4,0,2,0),(22,'22','Reserves and Surplus (Fixed Assets)',4,4,4,0,0,0),(23,'27','Current Liabilities',4,4,4,0,0,0),(24,'24','Duties & Taxes',23,4,23,0,0,0),(25,'25','Provisions',23,4,23,0,0,0),(26,'26','Sundry Creditors',23,4,23,0,0,0),(27,'23','Loans and Advances (Liability)',4,4,4,0,0,0),(28,'28','Bank OD A/c',27,4,27,0,0,0),(29,'29','Secured Loans',27,4,27,0,0,0),(30,'30','Unsecured Loans',27,4,27,0,0,0),(31,'31','Suspense A/c',4,4,4,0,0,0),(32,'','Institutional Income',1,1,1,0,0,3400),(33,'','Academic fees',32,1,32,0,0,3401),(34,'','Boarding fees',32,1,32,0,0,3402),(35,'','Workshop / Production income',32,1,32,0,0,3403),(36,'','Press income',32,1,32,0,0,3404),(37,'','Scholarship received',32,1,32,0,0,3405),(38,'','General Income',1,1,1,0,0,3500),(39,'','Foreign Contribution',38,1,38,0,0,3501),(40,'','Farm & Dairy Income',1,1,1,0,0,3600),(41,'','Bank interest',1,1,1,0,0,3700),(42,'','Investment income',1,1,1,0,0,3800),(43,'','Parish Income',1,1,1,0,0,3900),(44,'','Goods & Supplies',2,2,2,0,0,4400),(45,'','Food & Fuel',44,2,44,0,0,4401),(46,'','Health & Sanitation',44,2,44,0,0,4402),(47,'','Services',2,2,2,0,0,4500),(48,'','Personnel',2,2,2,0,0,4600),(49,'','General Expenditure',2,2,2,0,0,4700),(50,'','Formation Expenses',2,2,2,0,0,4800),(51,'','Contributions & Donations',2,2,2,0,0,4900),(52,'','Farm, Dairy & Poultry exp',2,2,2,0,0,5000),(53,'','Administration Expenses',2,2,2,0,0,5100),(54,'','Stationery & Printing',53,2,53,0,0,5101),(55,'','Institutional expenses',2,2,2,0,0,5200),(56,'','Lab Expenses',55,2,55,0,0,5201),(57,'','Workshop & Production expenses',55,2,55,0,0,5202),(58,'','Transportation',55,2,55,0,0,5203),(59,'','Project Expenses',2,2,2,0,0,5300),(60,'','Programme expenses',59,2,59,0,0,5301),(61,'','Training Expenses',59,2,59,0,0,5302),(62,'','Personnel expenses',59,2,59,0,0,5303),(63,'','Admin. & Operating exp',59,2,59,0,0,5304),(64,'','Infrastructure & Equipments',59,2,59,0,0,5305),(65,'','Parish Expenses',2,2,2,0,0,5400),(66,'','Construction in Progress',18,3,18,0,0,1201),(67,'','Advances',11,3,11,0,0,1107),(68,'','Capital / General Fund',4,4,4,0,0,2700),(69,'','Project fund',4,4,4,0,0,2800),(70,'','Corpus fund',4,4,4,0,0,2900),(71,'','Loan taken',23,4,23,0,0,2304),(72,'','Fee Collections',1,1,1,0,0,4000),(73,'','Other Collections',1,1,1,0,0,4100),(74,'','Salaries & Earnings of members',1,1,1,0,0,4200),(75,'','Property Income',1,1,1,0,0,4300),(76,'','Interest & Dividents',1,1,1,0,0,4400),(77,'','Grant from State & Central Govt',1,1,1,0,0,4500),(78,'','Employees Salaries, Remuneration & Benefits',2,2,2,0,0,5500),(79,'','Administrative Expenses',2,2,2,0,0,5600),(80,'','Educational Expenses',2,2,2,0,0,5700),(81,'','Donation given',2,2,2,0,0,5800),(82,'','Contributions given',2,2,2,0,0,5900),(83,'','Charitable expenses',2,2,2,0,0,6000),(84,'','Travelling & Conveyance',2,2,2,0,0,6100),(85,'','Maintenance of Members',2,2,2,0,0,6200),(86,'','Repairs  and Maintenance of Fixed Assets',2,2,2,0,0,6300),(87,'','UGC Grant',2,2,2,0,0,6500),(88,'','Minor Research Project',87,2,87,0,0,6501),(89,'','Carrer Oriented Programme',87,2,87,0,0,6502),(90,'','XII Plan - Development Grant',87,2,87,0,0,6503),(91,'','IQAC',87,2,87,0,0,6504),(92,'','B.VOC',87,2,87,0,0,6505),(93,'','Plan Block Grant',87,2,87,0,0,6506),(94,'','Merged Scheme',87,2,87,0,0,6507),(95,'','CPE',87,2,87,0,0,6508),(96,'','Autonomy',87,2,87,0,0,6509),(97,'','Deposits (Asset)',2,2,2,0,0,4900),(98,'','Concessions',1,1,1,0,0,4700),(99,'','Concession',2,2,2,0,0,6600),(100,'','Major Research Project',2,2,2,0,0,6600),(101,'','Dr. Shailaja Raj',100,2,100,0,0,6601),(102,'','UGC',2,2,2,0,0,6700),(103,'20409','Contribution from the Province',1,1,1,0,0,4600);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_project`
--

LOCK TABLES `master_project` WRITE;
/*!40000 ALTER TABLE `master_project` DISABLE KEYS */;
INSERT INTO `master_project` VALUES (1,'','ST BARTHOLOMEA NIVAS F.C. A/C, KESAMUDRAM',2,NULL,'2015-04-01 00:00:00',NULL,'','',1,0,1,0),(2,'','ST. BARTHOLOMEA NIVAS CONVENT, A/C KESAMUDRAM',1,NULL,'2015-04-01 00:00:00',NULL,'','',1,0,1,0),(3,'','ST.BARTHOLOMEA NIVAS BOARDING A/C,KESAMUDRAM',1,NULL,'2015-04-01 00:00:00',NULL,'','',2,0,1,0),(4,'','ST.BARTHOLOMEA NIVAS HEALTH CENTRE A/C, KESAMUDRAM',1,NULL,'2015-04-01 00:00:00',NULL,'','',3,0,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_project_catogory`
--

LOCK TABLES `master_project_catogory` WRITE;
/*!40000 ALTER TABLE `master_project_catogory` DISABLE KEYS */;
INSERT INTO `master_project_catogory` VALUES (2,'Boarding'),(1,'Community'),(3,'Dispensory');
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
INSERT INTO `master_setting` VALUES ('AccountLedgerId','',1),('AppealSubject','',1),('BirthdaySubject','',1),('Country','23',1),('CreditBalance','',1),('Currency','à¤°',1),('CurrencyCode','',1),('CurrencyCodePosition','',1),('CurrencyNegativePattern','14',1),('CurrencyNegativeSign','( )',1),('CurrencyPosition','Before',1),('CurrencyPositivePattern','2',1),('CustomizationForm','0',1),('DecimalPlaces','2',1),('DecimalSeparator',',',1),('DepreciationLedgerId','',1),('DigitGrouping','3,2,2',1),('DisposalLedgerId','',1),('EnableBookingAtPayment','',1),('EnableTransMode','',1),('GroupingSeparator','.',1),('HighNaturedAmt','',1),('Location','Primary',1),('Months','',1),('Port','',1),('PrintVoucher','0',1),('SenderId','',1),('ServerName','',1),('ShowAMCRenewalAlert','',1),('ShowInsuranceAlert','',1),('SMSPassKey','',1),('SMSUserName','',1),('SMTPPassword','',1),('SMTPUsername','',1),('TDSBooking','',1),('TDSEnabled','0',1),('ThanksGivingSubject','',1),('TransEntryMethod','',1),('UIDateFormat','dd/MM/yyyy',1),('UIDateSeparator','/',1),('UIDonationVoucherPrint','',1),('UIEnableBookingAtPayment','',1),('UIFilterMode','',1),('UIForeignBankAccount','',1),('UILanguage','fr-FR',1),('UIProjSelection','1',1),('UITDSEnabled','',1),('UIThemes','Office 2010 Silver',1),('UITransClose','1',1),('UITransMode','',1),('UITransType','',1),('WeddingdaySubject','',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=596 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_state`
--

LOCK TABLES `master_state` WRITE;
/*!40000 ALTER TABLE `master_state` DISABLE KEYS */;
INSERT INTO `master_state` VALUES (1,' Andhra Pradesh ',1),(2,'Arunachal Pradesh AR ',1),(3,'Assam AS ',1),(4,' Bihar BR ',1),(5,' Chhattisgarh CT ',1),(6,' Goa GA ',1),(7,' Gujarat GJ ',1),(8,'Haryana HR ',1),(9,'Himachal Pradesh HP ',1),(10,' Jammu and Kashmir JK ',1),(11,' Jharkhand JH ',1),(12,'Karnataka KA ',1),(13,' Kerala KL ',1),(14,' Madhya Pradesh MP ',1),(15,'Maharashtra MH ',1),(16,' Manipur MN ',1),(17,' Meghalaya ML ',1),(18,'Mizoram MZ ',1),(19,' Nagaland NL ',1),(20,' Orissa OR ',1),(21,'Punjab PB ',1),(22,' Rajasthan RJ ',1),(23,' Sikkim SK ',1),(24,'Tamil Nadu TN ',1),(25,' Tripura TR ',1),(26,' Uttarakhand UT ',1),(27,'Uttar Pradesh UP ',1),(28,' West Bengal WB ',1),(29,'Andaman and Nicobar Islands AN ',1),(30,'Chandigarh CH ',1),(31,' Dadra and Nagar Haveli DN ',1),(32,'Daman and Diu DD ',1),(33,' Delhi DL ',1),(34,' Lakshadweep LD ',1),(35,' Puducherry PY ',1);
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
  CONSTRAINT `FK_project_branch_master_project` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`),
  CONSTRAINT `FK_project_branch_branch_office` FOREIGN KEY (`BRANCH_ID`) REFERENCES `branch_office` (`BRANCH_OFFICE_ID`)
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
  CONSTRAINT `FK_project_ledger_LEDGER_ID` FOREIGN KEY (`LEDGER_ID`) REFERENCES `master_ledger` (`LEDGER_ID`),
  CONSTRAINT `FK_project_id_MASTER_PROJECT` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_ledger`
--

LOCK TABLES `project_ledger` WRITE;
/*!40000 ALTER TABLE `project_ledger` DISABLE KEYS */;
INSERT INTO `project_ledger` VALUES (1,1),(2,1),(3,1),(4,1),(1,2),(2,2),(3,2),(4,2),(1,3),(2,3),(3,3),(4,3),(3,1045),(3,1046),(3,1047),(3,1048),(3,1049),(3,1050),(3,1051),(3,1052),(3,1053),(3,1054),(3,1055),(3,1056),(3,1057),(3,1058),(3,1059),(3,1060),(3,1061),(3,1062),(3,1063),(3,1064),(3,1065),(3,1066),(3,1067),(3,1068),(3,1069),(3,1070),(3,1071),(3,1072),(3,1073),(3,1074),(3,1075),(3,1076),(3,1077),(3,1078),(3,1079),(3,1080),(3,1081),(3,1082),(3,1083),(3,1084),(3,1085),(3,1086),(3,1087),(3,1088),(3,1089),(3,1090),(3,1091),(3,1092),(3,1093),(3,1094),(3,1095),(3,1096),(4,1096),(4,1097),(3,1098),(3,1099),(4,1100),(1,1101),(2,1101),(1,1102),(2,1102),(3,1103),(4,1103),(3,1104),(3,1105),(2,1106),(4,1106),(4,1107),(1,1108),(2,1108),(3,1109),(2,1110),(3,1110),(3,1111),(3,1112),(1,1113),(2,1113),(1,1114),(2,1114),(3,1115),(3,1116),(4,1116),(3,1117),(3,1118),(2,1119),(3,1119),(4,1119),(4,1120),(1,1121),(2,1121),(3,1122),(3,1123),(3,1124),(1,1125),(2,1125),(1,1126),(2,1126),(1,1127),(2,1127),(3,1128),(3,1129),(2,1130),(3,1130),(1,1131),(2,1131),(3,1131),(4,1131),(1,1132),(2,1132),(1,1133),(2,1133),(1,1134),(2,1134),(3,1135),(3,1136),(3,1137),(3,1138),(3,1139),(3,1140),(3,1141),(3,1142),(2,1143),(3,1143),(2,1144),(3,1144),(3,1145),(3,1146),(3,1147),(3,1148),(3,1149),(1,1150),(2,1150),(4,1151),(1,1152),(2,1152),(3,1152),(4,1152),(1,1153),(2,1153),(1,1154),(2,1154),(3,1154),(2,1155),(3,1155),(2,1156),(3,1156),(1,1157),(2,1157),(4,1158),(3,1159),(2,1160),(3,1160),(3,1161),(3,1162),(3,1163),(4,1164),(3,1165),(3,1166),(3,1167),(1,1168),(2,1168),(1,1169),(2,1169),(1,1170),(2,1170),(1,1171),(2,1171),(3,1171),(4,1171),(1,1172),(2,1172),(4,1172),(1,1173),(2,1173),(3,1174),(1,1175),(2,1175),(1,1176),(2,1176),(1,1177),(2,1177),(1,1178),(2,1178),(1,1179),(2,1179),(1,1180),(2,1180),(1,1181),(2,1181),(1,1182),(2,1182),(3,1183),(1,1184),(2,1184),(1,1185),(2,1185),(1,1186),(2,1186),(1,1187),(2,1187),(1,1188),(2,1188),(2,1189),(3,1189),(4,1190),(1,1191),(2,1191),(1,1192),(2,1192),(1,1193),(2,1193),(1,1194),(2,1194),(1,1195),(2,1195),(1,1196),(2,1196),(1,1197),(2,1197),(1,1198),(2,1198),(1,1199),(2,1199),(1,1200),(2,1200),(1,1201),(2,1201),(3,1202),(1,1203),(2,1203),(1,1204),(2,1204),(1,1205),(2,1205),(4,1205),(1,1206),(2,1206),(1,1207),(2,1207),(1,1208),(2,1208),(1,1209),(2,1209),(1,1210),(2,1210),(1,1211),(2,1211),(1,1212),(2,1212),(1,1213),(2,1213),(1,1214),(2,1214),(3,1215),(1,1216),(2,1216),(1,1217),(2,1217),(1,1218),(2,1218),(1,1219),(2,1219),(1,1220),(2,1220),(1,1221),(2,1221),(3,1221),(4,1222),(2,1223),(3,1223),(4,1223),(1,1224),(2,1224),(3,1224),(1,1225),(2,1225),(1,1226),(2,1226),(3,1226),(1,1227),(2,1227),(4,1227),(1,1228),(2,1228),(4,1229),(1,1230),(2,1230),(1,1231),(2,1231),(1,1232),(2,1232),(1,1233),(2,1233),(3,1234),(4,1235),(1,1236),(2,1236),(1,1237),(2,1237),(1,1238),(2,1238),(3,1238),(1,1239),(2,1239),(1,1240),(2,1240),(1,1241),(2,1241),(3,1241),(4,1242),(4,1243),(1,1244),(2,1244),(1,1245),(2,1245),(1,1246),(2,1246),(3,1247),(3,1248),(4,1248),(2,1249),(4,1249),(1,1250),(2,1250),(1,1251),(2,1251),(1,1252),(2,1252),(3,1253),(4,1254),(4,1255),(4,1256),(2,1257),(4,1257),(1,1258),(2,1258),(1,1259),(2,1259),(1,1260),(2,1260),(4,1261),(4,1262),(4,1263),(4,1264),(1,1265),(2,1265),(3,1266),(4,1267),(4,1268),(4,1269),(4,1270),(1,1271),(2,1271),(1,1272),(2,1272),(1,1273),(2,1273),(4,1274),(1,1275),(2,1275),(1,1276),(2,1276),(1,1277),(2,1277),(1,1278),(2,1278),(4,1278),(3,1279),(1,1280),(2,1280),(1,1281),(2,1281),(1,1282),(2,1282),(1,1283),(2,1283),(1,1284),(2,1284),(3,1285),(4,1286),(1,1287),(2,1287),(1,1288),(2,1288),(1,1289),(2,1289),(1,1290),(2,1290),(1,1291),(2,1291),(1,1292),(2,1292),(1,1293),(2,1293),(1,1294),(2,1294),(1,1295),(2,1295),(1,1296),(2,1296),(1,1297),(2,1297),(3,1298),(4,1299),(1,1300),(2,1300),(1,1301),(2,1301),(1,1302),(2,1302),(1,1303),(2,1303),(1,1304),(2,1304),(1,1305),(2,1305),(1,1306),(2,1306),(1,1307),(2,1307),(1,1308),(2,1308),(1,1309),(2,1309),(1,1310),(2,1310),(4,1311),(3,1312),(1,1313),(2,1313),(1,1314),(2,1314),(1,1315),(2,1315),(1,1316),(2,1316),(2,1317),(4,1317),(2,1318),(3,1318),(3,1319),(1,1320),(2,1320),(1,1321),(2,1321),(1,1322),(2,1322),(1,1323),(2,1323),(3,1324),(3,1325),(1,1326),(4,1326),(1,1327),(2,1327),(1,1328),(2,1328),(1,1329),(2,1329),(1,1330),(2,1330),(1,1331),(2,1331),(1,1332),(2,1332),(4,1333),(1,1334),(2,1334),(1,1335),(2,1335),(1,1351),(4,1352),(2,1353),(1,1366),(2,1366),(3,1366),(4,1366);
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
  CONSTRAINT `FK_project_voucher_PROJECT_ID` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`),
  CONSTRAINT `FK_MASTER_VOUCHER_VOUCHER_ID` FOREIGN KEY (`VOUCHER_ID`) REFERENCES `master_voucher` (`VOUCHER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_voucher`
--

LOCK TABLES `project_voucher` WRITE;
/*!40000 ALTER TABLE `project_voucher` DISABLE KEYS */;
INSERT INTO `project_voucher` VALUES (1,1),(1,2),(1,3),(1,4),(2,1),(2,2),(2,3),(2,4),(3,1),(3,2),(3,3),(3,4),(4,1),(4,2),(4,3),(4,4);
/*!40000 ALTER TABLE `project_voucher` ENABLE KEYS */;
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
INSERT INTO `restore_db` VALUES (1,'acperp');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'Admin','Admin','admin','1uHL2oMM9bq8iOYovzJfbQ==','Admin',0,NULL,NULL,NULL,NULL,1,1,'','0000-00-00 00:00:00','','0000-00-00 00:00:00',NULL),(2,'Supervisor','','supervisor','vLmnpxoKJox2kEz6n67l7A==','supervisor',0,'','','','',2,1,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','');
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
  `DONOR_MAIL_STATUS` int(10) unsigned NOT NULL DEFAULT '0',
  `DONOR_MAIL_SENT_DATE` datetime DEFAULT NULL,
  `DONOR_SMS_STATUS` int(10) unsigned NOT NULL DEFAULT '0',
  `DONOR_SMS_SENT_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`VOUCHER_ID`,`BRANCH_ID`),
  KEY `FK_VOUCHER_MASTER_PROJECT_ID` (`VOUCHER_DATE`,`PROJECT_ID`) USING BTREE,
  KEY `FK_voucher_master_trans_PROJECT_ID` (`PROJECT_ID`,`VOUCHER_DATE`,`VOUCHER_TYPE`) USING BTREE,
  CONSTRAINT `FK_voucher_master_trans_PROJECT_ID` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=905 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_master_trans`
--

LOCK TABLES `voucher_master_trans` WRITE;
/*!40000 ALTER TABLE `voucher_master_trans` DISABLE KEYS */;
INSERT INTO `voucher_master_trans` VALUES (28,'2015-04-03 00:00:00',1,NULL,'RC','GN',0,0,'F',0.00,0,1.00,0,'',0,'2015-04-03 00:00:00','2015-04-03 00:00:00',1,1,0.00,0.00,'',0,0,'','',0,NULL,0,NULL,0,NULL),(29,'2015-04-01 00:00:00',4,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'Cash in the hand and in the bank',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'St.Bartolomea Nivas, Kesamudarm',0,0,'','',0,'',0,NULL,0,NULL),(30,'2015-04-30 00:00:00',2,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'SRS.AGNES,ALMA,CATHEINE,LOURDHU MARY',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(31,'2015-04-03 00:00:00',2,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'OLD SCARP SOLD',1,'2015-04-03 00:00:00','2015-04-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(32,'2015-04-09 00:00:00',2,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'WITH DRAWN',1,'2015-04-09 00:00:00','2015-04-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(33,'2015-04-21 00:00:00',2,'02','CN','GN',0,0,'F',0.00,0,1.00,0,'WITH DRAWN',1,'2015-04-21 00:00:00','2015-04-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(34,'2015-04-02 00:00:00',2,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE FOR SR.AGNES',1,'2015-04-02 00:00:00','2015-04-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(35,'2015-04-02 00:00:00',2,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'CELL RECHARGE',1,'2015-04-02 00:00:00','2015-04-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(36,'2015-04-04 00:00:00',2,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'DIESEL',1,'2015-04-04 00:00:00','2015-04-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(37,'2015-04-04 00:00:00',2,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'CAKE',1,'2015-04-04 00:00:00','2015-04-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(38,'2015-04-04 00:00:00',2,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'CHOCALATE',1,'2015-04-04 00:00:00','2015-04-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(39,'2015-04-04 00:00:00',2,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'CANDLES',1,'2015-04-04 00:00:00','2015-04-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(40,'2015-04-04 00:00:00',2,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD,BUNS ETC..',1,'2015-04-04 00:00:00','2015-04-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(41,'2015-04-05 00:00:00',2,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'ICECREAM',1,'2015-04-05 00:00:00','2015-04-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(42,'2015-04-06 00:00:00',2,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'CEMENT  150 BAGS & IRON FOR COMPOUND WALL',1,'2015-04-06 00:00:00','2015-04-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(43,'2015-04-06 00:00:00',2,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'BANK CHARGES',1,'2015-04-06 00:00:00','2015-04-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(44,'2015-04-09 00:00:00',2,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'HABIT STITCHING CHARGES',1,'2015-04-09 00:00:00','2015-04-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(45,'2015-04-09 00:00:00',2,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'SAND 8 TRACTORS',1,'2015-04-09 00:00:00','2015-04-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(46,'2015-04-11 00:00:00',2,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'TRANSFORMER REPAIRS',1,'2015-04-11 00:00:00','2015-04-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(47,'2015-04-11 00:00:00',2,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'BIKE REPAIRS',1,'2015-04-11 00:00:00','2015-04-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(48,'2015-04-11 00:00:00',2,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'SOAPS',1,'2015-04-11 00:00:00','2015-04-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(49,'2015-04-11 00:00:00',2,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'FACE POWDER',1,'2015-04-11 00:00:00','2015-04-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(50,'2015-04-11 00:00:00',2,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'GAS STOVE REAPIRS',1,'2015-04-11 00:00:00','2015-04-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(51,'2015-04-11 00:00:00',2,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'ICE CREAM',1,'2015-04-11 00:00:00','2015-04-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(52,'2015-04-06 00:00:00',2,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'TORCH CELLS',1,'2015-04-06 00:00:00','2015-04-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(53,'2015-04-10 00:00:00',2,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'SPRITE BOTTLE',1,'2015-04-10 00:00:00','2015-04-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(54,'2015-04-15 00:00:00',2,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'T.V RECHARGE',1,'2015-04-15 00:00:00','2015-04-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(55,'2015-04-15 00:00:00',2,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'PATROL',1,'2015-04-15 00:00:00','2015-04-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(56,'2015-04-16 00:00:00',2,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'GAS LIGHTNER',1,'2015-04-16 00:00:00','2015-04-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(57,'2015-04-16 00:00:00',2,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'SOAPS',1,'2015-04-16 00:00:00','2015-04-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(58,'2015-04-16 00:00:00',2,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'GARLIC',1,'2015-04-16 00:00:00','2015-04-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(59,'2015-04-16 00:00:00',2,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-04-16 00:00:00','2015-04-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(60,'2015-04-16 00:00:00',2,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'PROLUTION CERTIFICATE FOR JEEP',1,'2015-04-16 00:00:00','2015-04-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(61,'2015-04-18 00:00:00',2,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'SPRAY',1,'2015-04-18 00:00:00','2015-04-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(62,'2015-04-19 00:00:00',2,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'TOLLGATE FEE',1,'2015-04-19 00:00:00','2015-04-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(63,'2015-04-19 00:00:00',2,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'DAILY WAGES FOR LATA',1,'2015-04-19 00:00:00','2015-04-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(64,'2015-04-21 00:00:00',2,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK & CURDS',1,'2015-04-21 00:00:00','2015-04-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(65,'2015-04-21 00:00:00',2,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'PHOTOS',1,'2015-04-21 00:00:00','2015-04-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(66,'2015-04-22 00:00:00',2,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'PUMP REPAIRS',1,'2015-04-22 00:00:00','2015-04-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(67,'2015-04-23 00:00:00',2,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2015-04-23 00:00:00','2015-04-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(68,'2015-04-24 00:00:00',2,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO MASONS',1,'2015-04-24 00:00:00','2015-04-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(69,'2015-04-24 00:00:00',2,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO WORKERS',1,'2015-04-24 00:00:00','2015-04-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(70,'2015-04-25 00:00:00',2,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'MIXY REPAIRS',1,'2015-04-25 00:00:00','2015-04-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(71,'2015-04-25 00:00:00',2,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-04-25 00:00:00','2015-04-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(72,'2015-04-25 00:00:00',2,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'PIPE FOR REPAIRS',1,'2015-04-25 00:00:00','2015-04-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(73,'2015-04-26 00:00:00',2,'42','PY','GN',0,0,'F',0.00,0,1.00,0,'WHEET FLOUR',1,'2015-04-26 00:00:00','2015-04-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(74,'2015-04-25 00:00:00',2,'41','PY','GN',0,0,'F',0.00,0,1.00,0,'BRICKS ONE TRACTOR',1,'2015-04-25 00:00:00','2015-04-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(75,'2015-04-28 00:00:00',2,'44','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE ',1,'2015-04-28 00:00:00','2015-04-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(76,'2015-04-28 00:00:00',2,'45','PY','GN',0,0,'F',0.00,0,1.00,0,'PUMP REPAIRS',1,'2015-04-28 00:00:00','2015-04-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(77,'2015-04-29 00:00:00',2,'46','PY','GN',0,0,'F',0.00,0,1.00,0,'GAS ',1,'2015-04-29 00:00:00','2015-04-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(78,'2015-04-29 00:00:00',2,'47','PY','GN',0,0,'F',0.00,0,1.00,0,'BRICKS ONE TRACTOR',1,'2015-04-29 00:00:00','2015-04-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(79,'2015-04-30 00:00:00',2,'48','PY','GN',0,0,'F',0.00,0,1.00,0,'NEWS PAPER',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(80,'2015-04-30 00:00:00',2,'49','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO DHOBI',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(81,'2015-04-30 00:00:00',2,'50','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO COOK FOR 20 DAYS',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(82,'2015-04-30 00:00:00',2,'51','PY','GN',0,0,'F',0.00,0,1.00,0,'SALRY TO DRIVER',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(83,'2015-04-30 00:00:00',2,'52','PY','GN',0,0,'F',0.00,0,1.00,0,'BRICKS ONE TRACTOR',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(84,'2015-04-30 00:00:00',2,'53','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK-26 LITRS',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(85,'2015-04-30 00:00:00',2,'54','PY','GN',0,0,'F',0.00,0,1.00,0,'PHOTOS',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(86,'2015-04-30 00:00:00',2,'55','PY','GN',0,0,'F',0.00,0,1.00,0,'PROVISIONS',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(87,'2015-04-30 00:00:00',2,'56','PY','GN',0,0,'F',0.00,0,1.00,0,'MISCELLANEOUS',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(88,'2015-04-30 00:00:00',2,'57','PY','GN',0,0,'F',0.00,0,1.00,0,'CHARITY ',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(89,'2015-04-30 00:00:00',2,'58','PY','GN',0,0,'F',0.00,0,1.00,0,'REPAIR',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(90,'2015-05-31 00:00:00',2,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'SALARIES OF THE SISTERS ',1,'2015-05-31 00:00:00','2015-05-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(91,'2015-05-02 00:00:00',2,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-05-02 00:00:00','2015-05-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(92,'2015-05-04 00:00:00',2,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'TRAVELLING TO HYD',1,'2015-05-04 00:00:00','2015-05-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(93,'2015-05-04 00:00:00',2,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'JEEP WHEEL ALINMENT',1,'2015-05-04 00:00:00','2015-05-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(94,'2015-05-04 00:00:00',2,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'JEEP REPAIRS',1,'2015-05-04 00:00:00','2015-05-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(95,'2015-05-04 00:00:00',2,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'DIESEL',1,'2015-05-04 00:00:00','2015-05-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(96,'2015-05-04 00:00:00',2,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-05-04 00:00:00','2015-05-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(97,'2015-05-04 00:00:00',2,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'JEEP REPAIRS',1,'2015-05-04 00:00:00','2015-05-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(98,'2015-05-06 00:00:00',2,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'PHOTOS',1,'2015-05-06 00:00:00','2015-05-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(99,'2015-05-07 00:00:00',2,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'5 PLASTIC BUCKETS',1,'2015-05-07 00:00:00','2015-05-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(100,'2015-05-07 00:00:00',2,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'TRAVELLING CHARGES FOR AUDITOR',1,'2015-05-07 00:00:00','2015-05-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(101,'2015-05-08 00:00:00',2,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'PICKLE JADI',1,'2015-05-08 00:00:00','2015-05-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(102,'2015-05-08 00:00:00',2,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'SHARPENING KNIFE ',1,'2015-05-08 00:00:00','2015-05-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(103,'2015-05-09 00:00:00',2,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'PLASTIC JAR',1,'2015-05-09 00:00:00','2015-05-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(104,'2015-05-09 00:00:00',2,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'MANGO CUTTING KNIFE',1,'2015-05-09 00:00:00','2015-05-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(105,'2015-05-11 00:00:00',2,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'CELL RECHARGE',1,'2015-05-11 00:00:00','2015-05-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(106,'2015-05-11 00:00:00',2,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'PHOTOS',1,'2015-05-11 00:00:00','2015-05-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(107,'2015-05-11 00:00:00',2,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE ',1,'2015-05-11 00:00:00','2015-05-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(108,'2015-05-11 00:00:00',2,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'CHAPPALS',1,'2015-05-11 00:00:00','2015-05-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(109,'2015-05-12 00:00:00',2,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO MASONS',1,'2015-05-12 00:00:00','2015-05-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(110,'2015-05-12 00:00:00',2,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO WORKERS',1,'2015-05-12 00:00:00','2015-05-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(111,'2015-05-12 00:00:00',2,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO WORKERS',1,'2015-05-12 00:00:00','2015-05-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(112,'2015-05-12 00:00:00',2,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'ACCOUNT NOTE BOOKS',1,'2015-05-12 00:00:00','2015-05-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(113,'2015-05-12 00:00:00',2,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'GAS LIGHTNER',1,'2015-05-12 00:00:00','2015-05-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(114,'2015-05-13 00:00:00',2,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO MASONS',1,'2015-05-13 00:00:00','2015-05-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(115,'2015-05-13 00:00:00',2,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO WORKERS',1,'2015-05-13 00:00:00','2015-05-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(116,'2015-05-13 00:00:00',2,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO WORKERS',1,'2015-05-13 00:00:00','2015-05-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(117,'2015-05-13 00:00:00',2,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO MASONS',1,'2015-05-13 00:00:00','2015-05-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(118,'2015-05-13 00:00:00',2,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO WORKERS',1,'2015-05-13 00:00:00','2015-05-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(119,'2015-05-13 00:00:00',2,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO WORKERS',1,'2015-05-13 00:00:00','2015-05-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(120,'2015-05-13 00:00:00',2,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'FANS REPAIR',1,'2015-05-13 00:00:00','2015-05-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(121,'2015-05-14 00:00:00',2,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'WALL CLOCK',1,'2015-05-14 00:00:00','2015-05-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(122,'2015-05-14 00:00:00',2,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'DIESEL',1,'2015-05-14 00:00:00','2015-05-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(123,'2015-05-14 00:00:00',2,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'TRAVELLING CHARGES',1,'2015-05-14 00:00:00','2015-05-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(124,'2015-05-15 00:00:00',2,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-05-15 00:00:00','2015-05-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(125,'2015-05-15 00:00:00',2,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'SOAPS',1,'2015-05-15 00:00:00','2015-05-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(126,'2015-05-15 00:00:00',2,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'CANDLES',1,'2015-05-15 00:00:00','2015-05-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(127,'2015-05-15 00:00:00',2,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'JEEP PARKING CHARGES',1,'2015-05-15 00:00:00','2015-05-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(128,'2015-05-15 00:00:00',2,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2015-05-15 00:00:00','2015-05-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(129,'2015-05-15 00:00:00',2,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-05-15 00:00:00','2015-05-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(130,'2015-05-15 00:00:00',2,'41','PY','GN',0,0,'F',0.00,0,1.00,0,'CLOTHES',1,'2015-05-15 00:00:00','2015-05-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(131,'2015-05-15 00:00:00',2,'42','PY','GN',0,0,'F',0.00,0,1.00,0,'REGISTERS ETC..',1,'2015-05-15 00:00:00','2015-05-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(132,'2015-05-15 00:00:00',2,'43','PY','GN',0,0,'F',0.00,0,1.00,0,'CHAPPALS',1,'2015-05-15 00:00:00','2015-05-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(133,'2015-05-15 00:00:00',2,'44','PY','GN',0,0,'F',0.00,0,1.00,0,'NAPKINS',1,'2015-05-15 00:00:00','2015-05-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(134,'2015-05-15 00:00:00',2,'45','PY','GN',0,0,'F',0.00,0,1.00,0,'CLOTHES',1,'2015-05-15 00:00:00','2015-05-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(135,'2015-05-16 00:00:00',2,'46','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD & MILK',1,'2015-05-16 00:00:00','2015-05-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(136,'2015-05-18 00:00:00',2,'47','PY','GN',0,0,'F',0.00,0,1.00,0,'ICE CREAM',1,'2015-05-18 00:00:00','2015-05-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(137,'2015-05-18 00:00:00',2,'48','PY','GN',0,0,'F',0.00,0,1.00,0,'TRAVELLING CHARGES',1,'2015-05-18 00:00:00','2015-05-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(138,'2015-05-19 00:00:00',2,'49','PY','GN',0,0,'F',0.00,0,1.00,0,'PIPES',1,'2015-05-19 00:00:00','2015-05-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(139,'2015-05-19 00:00:00',2,'50','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO WORKERS',1,'2015-05-19 00:00:00','2015-05-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(140,'2015-05-19 00:00:00',2,'51','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO WORKERS',1,'2015-05-19 00:00:00','2015-05-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(141,'2015-05-19 00:00:00',2,'52','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO WORKERS',1,'2015-05-19 00:00:00','2015-05-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(142,'2015-05-19 00:00:00',2,'53','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO WORKERS',1,'2015-05-19 00:00:00','2015-05-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(143,'2015-05-19 00:00:00',2,'54','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO MASONS',1,'2015-05-19 00:00:00','2015-05-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(144,'2015-05-19 00:00:00',2,'55','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO MASONS',1,'2015-05-19 00:00:00','2015-05-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(145,'2015-05-20 00:00:00',2,'56','PY','GN',0,0,'F',0.00,0,1.00,0,'PROVISION',1,'2015-05-20 00:00:00','2015-05-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(146,'2015-05-22 00:00:00',2,'57','PY','GN',0,0,'F',0.00,0,1.00,0,'RAGI',1,'2015-05-22 00:00:00','2015-05-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(147,'2015-05-22 00:00:00',2,'58','PY','GN',0,0,'F',0.00,0,1.00,0,'ELECRTICITY BILL-920',1,'2015-05-22 00:00:00','2015-05-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(148,'2015-05-22 00:00:00',2,'59','PY','GN',0,0,'F',0.00,0,1.00,0,'ELECRTICITY BILL-1240',1,'2015-05-22 00:00:00','2015-05-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(149,'2015-05-22 00:00:00',2,'60','PY','GN',0,0,'F',0.00,0,1.00,0,'TRAVELLING TO KAZIPET',1,'2015-05-22 00:00:00','2015-05-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(150,'2015-05-14 00:00:00',2,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'BAG',1,'2015-05-14 00:00:00','2015-05-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(151,'2015-05-23 00:00:00',2,'61','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD & MILK',1,'2015-05-23 00:00:00','2015-05-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(152,'2015-05-23 00:00:00',2,'62','PY','GN',0,0,'F',0.00,0,1.00,0,'CELL RECHARGE',1,'2015-05-23 00:00:00','2015-05-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(153,'2015-05-24 00:00:00',2,'63','PY','GN',0,0,'F',0.00,0,1.00,0,'PHOTOS',1,'2015-05-24 00:00:00','2015-05-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(154,'2015-05-25 00:00:00',2,'64','PY','GN',0,0,'F',0.00,0,1.00,0,'DIESEL',1,'2015-05-25 00:00:00','2015-05-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(155,'2015-05-27 00:00:00',2,'65','PY','GN',0,0,'F',0.00,0,1.00,0,'TRAVELLING CHARGES',1,'2015-05-27 00:00:00','2015-05-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(156,'2015-05-27 00:00:00',2,'66','PY','GN',0,0,'F',0.00,0,1.00,0,'STITCHING CHARGES',1,'2015-05-27 00:00:00','2015-05-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(157,'2015-05-27 00:00:00',2,'67','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO WORKERS',1,'2015-05-27 00:00:00','2015-05-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(158,'2015-05-27 00:00:00',2,'68','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO MASONS',1,'2015-05-27 00:00:00','2015-05-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(159,'2015-05-27 00:00:00',2,'69','PY','GN',0,0,'F',0.00,0,1.00,0,'PAID TO WATCH MAN FOR BULIDING',1,'2015-05-27 00:00:00','2015-05-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(160,'2015-05-27 00:00:00',2,'70','PY','GN',0,0,'F',0.00,0,1.00,0,'RENT PD FOR THE PUMP SET',1,'2015-05-27 00:00:00','2015-05-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(161,'2015-05-27 00:00:00',2,'71','PY','GN',0,0,'F',0.00,0,1.00,0,'RENT FOR PILLAR MOULD',1,'2015-05-27 00:00:00','2015-05-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(162,'2015-05-28 00:00:00',2,'73','PY','GN',0,0,'F',0.00,0,1.00,0,'SNACKS',1,'2015-05-28 00:00:00','2015-05-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(163,'2015-05-28 00:00:00',2,'74','PY','GN',0,0,'F',0.00,0,1.00,0,'SKIRTS',1,'2015-05-28 00:00:00','2015-05-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(164,'2015-05-29 00:00:00',2,'75','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICAL FEE ',1,'2015-05-29 00:00:00','2015-05-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(165,'2015-05-29 00:00:00',2,'76','PY','GN',0,0,'F',0.00,0,1.00,0,'SPETACLES',1,'2015-05-29 00:00:00','2015-05-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(166,'2015-05-29 00:00:00',2,'77','PY','GN',0,0,'F',0.00,0,1.00,0,'EYE DROPS',1,'2015-05-29 00:00:00','2015-05-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(167,'2015-05-30 00:00:00',2,'78','PY','GN',0,0,'F',0.00,0,1.00,0,'DIESEL',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(168,'2015-05-30 00:00:00',2,'79','PY','GN',0,0,'F',0.00,0,1.00,0,'JEEP SERVICING CHARGES',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(169,'2015-05-30 00:00:00',2,'80','PY','GN',0,0,'F',0.00,0,1.00,0,'SOAPS',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(170,'2015-05-30 00:00:00',2,'81','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(171,'2015-05-30 00:00:00',2,'82','PY','GN',0,0,'F',0.00,0,1.00,0,'MASS WINE',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(172,'2015-05-30 00:00:00',2,'83','PY','GN',0,0,'F',0.00,0,1.00,0,'LENTEN CAMPAIN',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(173,'2015-05-30 00:00:00',2,'84','PY','GN',0,0,'F',0.00,0,1.00,0,'CONTRIBUTION TO EARTHQUAKE RELIEF',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(174,'2015-05-30 00:00:00',2,'85','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(175,'2015-05-30 00:00:00',2,'86','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO COOK ',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(176,'2015-05-30 00:00:00',2,'87','PY','GN',0,0,'F',0.00,0,1.00,0,'SALRY TO DRIVER',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(177,'2015-05-30 00:00:00',2,'88','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO DHOBI',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(178,'2015-05-30 00:00:00',2,'89','PY','GN',0,0,'F',0.00,0,1.00,0,'PROVISIONS',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(179,'2015-05-30 00:00:00',2,'90','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(180,'2015-05-30 00:00:00',2,'91','PY','GN',0,0,'F',0.00,0,1.00,0,'MISCELLANEOUS',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(181,'2015-05-30 00:00:00',2,'92','PY','GN',0,0,'F',0.00,0,1.00,0,'CAHARITY TO POOR',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(182,'2015-05-30 00:00:00',2,'93','PY','GN',0,0,'F',0.00,0,1.00,0,'MASS OFFERING',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(183,'2015-05-30 00:00:00',2,'94','PY','GN',0,0,'F',0.00,0,1.00,0,'REPAIRS',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(184,'2015-05-27 00:00:00',2,'72','PY','GN',0,0,'F',0.00,0,1.00,0,'GLASS PIECES ON THE WALL',1,'2015-05-27 00:00:00','2015-05-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(185,'2015-05-30 00:00:00',2,'95','PY','GN',0,0,'F',0.00,0,1.00,0,'STITCHING CHARGES',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(186,'2015-05-31 00:00:00',2,'96','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD & MILK',1,'2015-05-31 00:00:00','2015-05-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(187,'2015-06-03 00:00:00',2,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'CONTRIBUTION FROM THE PROVINCE',1,'2015-06-03 00:00:00','2015-06-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(188,'2015-06-03 00:00:00',2,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'FIELD LEASE ADVANCE RECEIVED',1,'2015-06-03 00:00:00','2015-06-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(189,'2015-06-30 00:00:00',2,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'SALARIES OF THE SISTERS ',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(190,'2015-06-09 00:00:00',2,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'WITH DRAWN',1,'2015-06-09 00:00:00','2015-06-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(191,'2015-06-01 00:00:00',2,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE FOR SR.MIRELLA',1,'2015-06-01 00:00:00','2015-06-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(192,'2015-06-02 00:00:00',2,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'TRAVELLING TO KADAPA',1,'2015-06-02 00:00:00','2015-06-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(193,'2015-06-06 00:00:00',2,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'GAS ',1,'2015-06-06 00:00:00','2015-06-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(194,'2015-06-07 00:00:00',2,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'TRAVELLING TO HYD',1,'2015-06-07 00:00:00','2015-06-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(195,'2015-06-04 00:00:00',2,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'RAT POISON',1,'2015-06-04 00:00:00','2015-06-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(196,'2015-06-08 00:00:00',2,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'TRAVELLING CHARGES',1,'2015-06-08 00:00:00','2015-06-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(197,'2015-06-11 00:00:00',2,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'DRINKS',1,'2015-06-11 00:00:00','2015-06-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(198,'2015-06-03 00:00:00',2,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'REPAIRS',1,'2015-06-03 00:00:00','2015-06-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(199,'2015-06-12 00:00:00',2,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2015-06-12 00:00:00','2015-06-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(200,'2015-06-12 00:00:00',2,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'TRAVELLING CHARGES',1,'2015-06-12 00:00:00','2015-06-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(201,'2015-06-17 00:00:00',2,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'PLASTIC BUCKETS 3',1,'2015-06-17 00:00:00','2015-06-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(202,'2015-06-17 00:00:00',2,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'PLASTIC BUCKETS ',1,'2015-06-17 00:00:00','2015-06-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(203,'2015-06-17 00:00:00',2,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'SOAPS',1,'2015-06-17 00:00:00','2015-06-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(204,'2015-06-17 00:00:00',2,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'PROVISION',1,'2015-06-17 00:00:00','2015-06-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(205,'2015-06-19 00:00:00',2,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'SANITARY ITEMS',1,'2015-06-19 00:00:00','2015-06-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(206,'2015-06-18 00:00:00',2,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'DIESEL',1,'2015-06-18 00:00:00','2015-06-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(207,'2015-06-21 00:00:00',2,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'DAILY WAGES FOR CLEANING CALVA',1,'2015-06-21 00:00:00','2015-06-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(208,'2015-06-22 00:00:00',2,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'SANITARY ITEMS',1,'2015-06-22 00:00:00','2015-06-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(209,'2015-06-22 00:00:00',2,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-06-22 00:00:00','2015-06-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(210,'2015-06-24 00:00:00',2,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'TRAVELLING CHARGES',1,'2015-06-24 00:00:00','2015-06-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(211,'2015-06-24 00:00:00',2,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'TRAVELLING CHARGES',1,'2015-06-24 00:00:00','2015-06-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(212,'2015-06-24 00:00:00',2,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'COFFEE & TEA POWDER',1,'2015-06-24 00:00:00','2015-06-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(213,'2015-06-24 00:00:00',2,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2015-06-24 00:00:00','2015-06-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(214,'2015-06-25 00:00:00',2,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE ',1,'2015-06-25 00:00:00','2015-06-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(215,'2015-06-26 00:00:00',2,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'TRAVELLING CHARGES',1,'2015-06-26 00:00:00','2015-06-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(216,'2015-06-27 00:00:00',2,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'DAILY  WAGES',1,'2015-06-27 00:00:00','2015-06-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(217,'2015-06-29 00:00:00',2,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'ELECTRICAL REPAIRS',1,'2015-06-29 00:00:00','2015-06-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(218,'2015-06-29 00:00:00',2,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'MIXY COVER',1,'2015-06-29 00:00:00','2015-06-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(219,'2015-06-29 00:00:00',2,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'CELL RECHARGE',1,'2015-06-29 00:00:00','2015-06-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(220,'2015-06-29 00:00:00',2,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'DIESEL',1,'2015-06-29 00:00:00','2015-06-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(221,'2015-06-30 00:00:00',2,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'NEWS PAPER',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(222,'2015-06-30 00:00:00',2,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO COOK ',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(223,'2015-06-30 00:00:00',2,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO DHOBI',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(224,'2015-06-30 00:00:00',2,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'SALRY TO DRIVER',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(225,'2015-06-30 00:00:00',2,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'PROVISIONS',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(226,'2015-06-30 00:00:00',2,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(227,'2015-06-30 00:00:00',2,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'MISCELLANEOUS',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(228,'2015-06-30 00:00:00',2,'41','PY','GN',0,0,'F',0.00,0,1.00,0,'CAHARITY TO POOR',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(229,'2015-06-30 00:00:00',2,'42','PY','GN',0,0,'F',0.00,0,1.00,0,'MASS OFFERING',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(230,'2015-06-30 00:00:00',2,'43','PY','GN',0,0,'F',0.00,0,1.00,0,'REPAIR',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(231,'2015-06-30 00:00:00',2,'44','PY','GN',0,0,'F',0.00,0,1.00,0,'MANAGEMENT CONTRIBUTION 5% TO DRIVER',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(232,'2015-04-08 00:00:00',3,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-04-08 00:00:00','2015-04-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(233,'2015-04-11 00:00:00',3,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-04-11 00:00:00','2015-04-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(234,'2015-04-17 00:00:00',3,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-04-17 00:00:00','2015-04-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(235,'2015-04-21 00:00:00',3,'04','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-04-21 00:00:00','2015-04-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(236,'2015-04-05 00:00:00',3,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'PROVISIONS',1,'2015-04-05 00:00:00','2015-04-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(237,'2015-04-09 00:00:00',3,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-04-09 00:00:00','2015-04-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(238,'2015-04-10 00:00:00',3,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'CHILLIES',1,'2015-04-10 00:00:00','2015-04-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(239,'2015-04-15 00:00:00',3,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'COOKING OIL',1,'2015-04-15 00:00:00','2015-04-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(240,'2015-04-15 00:00:00',3,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-04-15 00:00:00','2015-04-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(241,'2015-04-22 00:00:00',3,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD ETC..',1,'2015-04-22 00:00:00','2015-04-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(242,'2015-04-22 00:00:00',3,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2015-04-22 00:00:00','2015-04-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(243,'2015-04-23 00:00:00',3,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'OINIONS',1,'2015-04-23 00:00:00','2015-04-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(244,'2015-04-23 00:00:00',3,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'VEGETABLES',1,'2015-04-23 00:00:00','2015-04-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(245,'2015-04-23 00:00:00',3,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'FISH,EGG,MEAT ETC...',1,'2015-04-23 00:00:00','2015-04-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(246,'2015-04-30 00:00:00',3,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'SALRY TO WARDEN',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(247,'2015-04-30 00:00:00',3,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO DHOBI/AYAH',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(248,'2015-05-08 00:00:00',3,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'INGREDIANTS FOR PICKLE',1,'2015-05-08 00:00:00','2015-05-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(249,'2015-05-31 00:00:00',3,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'SALRY TO WARDEN',1,'2015-05-31 00:00:00','2015-05-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(250,'2015-05-31 00:00:00',3,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO DHOBI/AYAH',1,'2015-05-31 00:00:00','2015-05-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(251,'2015-06-17 00:00:00',3,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-06-17 00:00:00','2015-06-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(252,'2015-06-25 00:00:00',3,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-06-25 00:00:00','2015-06-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(253,'2015-06-27 00:00:00',3,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-06-27 00:00:00','2015-06-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(254,'2015-06-29 00:00:00',3,'04','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-06-29 00:00:00','2015-06-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(255,'2015-06-19 00:00:00',3,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'SANITARY ITEMS',1,'2015-06-19 00:00:00','2015-06-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(256,'2015-06-19 00:00:00',3,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-06-19 00:00:00','2015-06-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(257,'2015-06-20 00:00:00',3,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'CELL RECHARGE',1,'2015-06-20 00:00:00','2015-06-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(258,'2015-06-21 00:00:00',3,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-06-21 00:00:00','2015-06-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(259,'2015-06-28 00:00:00',3,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-06-28 00:00:00','2015-06-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(260,'2015-06-28 00:00:00',3,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'FANS,LIGHTS ECT..  REPAIR',1,'2015-06-28 00:00:00','2015-06-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(261,'2015-06-30 00:00:00',3,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'VEGETABLES',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(262,'2015-06-30 00:00:00',3,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(263,'2015-06-30 00:00:00',3,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'SALRY TO WARDEN',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(264,'2015-06-30 00:00:00',3,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO DHOBI/AYAH',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(265,'2015-04-01 00:00:00',4,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY OF SR ALMA TO THE COMMUNITY',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(266,'2015-04-30 00:00:00',4,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'COLLECTION FROM DISPENSARY',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(267,'2015-05-31 00:00:00',4,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'COLLECTION FROM DISPENSARY',1,'2015-05-31 00:00:00','2015-05-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(268,'2015-05-15 00:00:00',4,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'PLASTIC COVERS',1,'2015-05-15 00:00:00','2015-05-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(269,'2015-05-31 00:00:00',4,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY OF SR ALMA TO THE COMMUNITY',1,'2015-05-31 00:00:00','2015-05-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(270,'2015-06-30 00:00:00',4,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'COLLECTION FROM DISPENSARY',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(271,'2015-06-24 00:00:00',4,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE ',1,'2015-06-24 00:00:00','2015-06-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(272,'2015-06-30 00:00:00',4,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY OF SR ALMA TO THE COMMUNITY',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(273,'2015-07-31 00:00:00',2,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'SALARIES OF THE SISTERS ',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(274,'2015-07-02 00:00:00',2,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'SnaCKS',1,'2015-07-02 00:00:00','2015-07-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(275,'2015-07-02 00:00:00',2,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Salt etc',1,'2015-07-02 00:00:00','2015-07-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(276,'2015-07-04 00:00:00',2,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'Painter charges',1,'2015-07-04 00:00:00','2015-07-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(277,'2015-07-07 00:00:00',2,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'Conveyance for MA exam for to Sr.Catherine',1,'2015-07-07 00:00:00','2015-07-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(278,'2015-07-09 00:00:00',2,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'Bharath Gas',1,'2015-07-09 00:00:00','2015-07-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(279,'2015-07-10 00:00:00',2,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-07-10 00:00:00','2015-07-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(280,'2015-07-10 00:00:00',2,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'petrol',1,'2015-07-10 00:00:00','2015-07-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(281,'2015-07-10 00:00:00',2,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE FOR SR.MIRELLA',1,'2015-07-10 00:00:00','2015-07-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(282,'2015-07-10 00:00:00',2,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'10 tractors of Mud for strenthening the compound wall',1,'2015-07-10 00:00:00','2015-07-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(283,'2015-07-12 00:00:00',2,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'Diesel',1,'2015-07-12 00:00:00','2015-07-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(284,'2015-07-12 00:00:00',2,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'13 tractors of Mud for strenthening the compound wall',1,'2015-07-12 00:00:00','2015-07-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(285,'2015-07-13 00:00:00',2,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'12 tractors of Mud for strenthening the compound wall',1,'2015-07-13 00:00:00','2015-07-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(286,'2015-07-14 00:00:00',2,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'10 tractors of Mud for strenthening the compound wall',1,'2015-07-14 00:00:00','2015-07-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(287,'2015-07-15 00:00:00',2,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'For levelling the Mud',1,'2015-07-15 00:00:00','2015-07-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(288,'2015-07-15 00:00:00',2,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'Bread',1,'2015-07-15 00:00:00','2015-07-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(289,'2015-07-15 00:00:00',2,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'Snacks',1,'2015-07-15 00:00:00','2015-07-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(290,'2015-07-16 00:00:00',2,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'Cell RECHARGE',1,'2015-07-16 00:00:00','2015-07-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(291,'2015-07-16 00:00:00',2,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'SnACKS',1,'2015-07-16 00:00:00','2015-07-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(292,'2015-07-16 00:00:00',2,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'Pen etc',1,'2015-07-16 00:00:00','2015-07-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(293,'2015-07-16 00:00:00',2,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'Medicines',1,'2015-07-16 00:00:00','2015-07-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(294,'2015-07-18 00:00:00',2,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'Doctor\'s fee',1,'2015-07-18 00:00:00','2015-07-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(295,'2015-07-21 00:00:00',2,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'Electricity Bill-No.920',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(296,'2015-07-21 00:00:00',2,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'ELECRTICITY BILL-1240',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(297,'2015-07-25 00:00:00',2,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'Nail Cutter',1,'2015-07-25 00:00:00','2015-07-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(298,'2015-07-27 00:00:00',2,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'Conveyance to Retreat to Sr.Agnes',1,'2015-07-27 00:00:00','2015-07-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(299,'2015-07-27 00:00:00',2,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'Toothpaste',1,'2015-07-27 00:00:00','2015-07-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(300,'2015-07-27 00:00:00',2,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'Snacks',1,'2015-07-27 00:00:00','2015-07-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(301,'2015-07-27 00:00:00',2,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'Xerox',1,'2015-07-27 00:00:00','2015-07-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(302,'2015-07-27 00:00:00',2,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'Sprite BOTTLE',1,'2015-07-27 00:00:00','2015-07-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(303,'2015-07-27 00:00:00',2,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'Ration',1,'2015-07-27 00:00:00','2015-07-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(304,'2015-07-28 00:00:00',2,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-07-28 00:00:00','2015-07-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(305,'2015-07-30 00:00:00',2,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'Petrol for Bike',1,'2015-07-30 00:00:00','2015-07-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(306,'2015-07-31 00:00:00',2,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'Pendrive',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(307,'2015-07-31 00:00:00',2,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'38 Ltrs of Milk. Per Lt/45',0,0,'','',0,'',0,NULL,0,NULL),(308,'2015-07-31 00:00:00',2,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO COOK ',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(309,'2015-07-31 00:00:00',2,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO DHOBI-PARTTIME',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(310,'2015-07-31 00:00:00',2,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO DRIVER',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(311,'2015-07-31 00:00:00',2,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'DSS MANAGEMENT CONTRIBUTION DEPOSITED IN THE BANK',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(312,'2015-07-31 00:00:00',2,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'FRUIT, VEGETABLES AND MEAT ETC',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(313,'2015-07-31 00:00:00',2,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'MISCELLANEOUS',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(314,'2015-07-31 00:00:00',2,'41','PY','GN',0,0,'F',0.00,0,1.00,0,'CHARITY ',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(315,'2015-07-31 00:00:00',2,'42','PY','GN',0,0,'F',0.00,0,1.00,0,'MASS OFFERING ETC',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(316,'2015-07-31 00:00:00',2,'43','PY','GN',0,0,'F',0.00,0,1.00,0,'REPAIR',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(317,'2015-08-04 00:00:00',2,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'WITH DRAWN FROM ANDHRA BANK',1,'2015-08-04 00:00:00','2015-08-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(318,'2015-08-15 00:00:00',2,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'COCONUTS SOLD',1,'2015-08-15 00:00:00','2015-08-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(319,'2015-08-16 00:00:00',2,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'PAPER ETC',1,'2015-08-16 00:00:00','2015-08-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(320,'2015-08-31 00:00:00',2,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'SRS.AGNES,ALMA,CATHEINE,LOURDHU MARY',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(321,'2015-08-02 00:00:00',2,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'CEMENT ETC',1,'2015-08-02 00:00:00','2015-08-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(322,'2015-08-02 00:00:00',2,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION FROM SHIVA ENTERPRISE',1,'2015-08-02 00:00:00','2015-08-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(323,'2015-08-02 00:00:00',2,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO SECUNDERABAD',1,'2015-08-02 00:00:00','2015-08-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(324,'2015-08-03 00:00:00',2,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-08-03 00:00:00','2015-08-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(325,'2015-08-04 00:00:00',2,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'200 HUNDRED BRICKS WITH TRANSPORT CHARGES',1,'2015-08-04 00:00:00','2015-08-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(326,'2015-08-04 00:00:00',2,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'Pen etc',1,'2015-08-04 00:00:00','2015-08-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(327,'2015-08-04 00:00:00',2,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'REDOXIDE',1,'2015-08-04 00:00:00','2015-08-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(328,'2015-08-05 00:00:00',2,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'DIESEL',1,'2015-08-05 00:00:00','2015-08-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(329,'2015-08-05 00:00:00',2,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'1 QUINTOL OF RICE FROM SUDHIR MILL',1,'2015-08-05 00:00:00','2015-08-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(330,'2015-08-05 00:00:00',2,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION FROM SHIVA ENTERPRISE',1,'2015-08-05 00:00:00','2015-08-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(331,'2015-08-05 00:00:00',2,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'SOAPS',1,'2015-08-05 00:00:00','2015-08-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(332,'2015-08-05 00:00:00',2,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'stone to build parapet to keep vessels',1,'2015-08-05 00:00:00','2015-08-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(333,'2015-08-06 00:00:00',2,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'BISCUITS',1,'2015-08-06 00:00:00','2015-08-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(334,'2015-08-07 00:00:00',2,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'MASON CHARGES FOR REPAIR WORK',1,'2015-08-07 00:00:00','2015-08-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(335,'2015-08-07 00:00:00',2,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'COOLIE 300 PER DAY FOR 5 DAYS',1,'2015-08-07 00:00:00','2015-08-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(336,'2015-08-08 00:00:00',2,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'PIPES FOR REPAIRING WORK',1,'2015-08-08 00:00:00','2015-08-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(337,'2015-08-10 00:00:00',2,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO SECUNDERABAD',1,'2015-08-10 00:00:00','2015-08-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(338,'2015-08-10 00:00:00',2,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'SPRITE BOTTLE',1,'2015-08-10 00:00:00','2015-08-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(339,'2015-08-11 00:00:00',2,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'PENS ETC',1,'2015-08-11 00:00:00','2015-08-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(340,'2015-08-11 00:00:00',2,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'PHONE BILL',1,'2015-08-11 00:00:00','2015-08-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(341,'2015-08-11 00:00:00',2,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'STICHING CHARGES',1,'2015-08-11 00:00:00','2015-08-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(342,'2015-08-16 00:00:00',2,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'AUDITOR\'S FEE',1,'2015-08-16 00:00:00','2015-08-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(343,'2015-08-16 00:00:00',2,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'REPAIR AND MAINTENANCE',1,'2015-08-16 00:00:00','2015-08-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(344,'2015-08-17 00:00:00',2,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'MASON CHARGES FOR REPAIR WORK',1,'2015-08-17 00:00:00','2015-08-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(345,'2015-08-17 00:00:00',2,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'COVEYANCE TO SECUNDERABAD',1,'2015-08-17 00:00:00','2015-08-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(346,'2015-08-17 00:00:00',2,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO KAZIPET',1,'2015-08-17 00:00:00','2015-08-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(347,'2015-08-17 00:00:00',2,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'REGISTRATION FEE FOR 1 DAY MEETING',1,'2015-08-17 00:00:00','2015-08-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(348,'2015-08-19 00:00:00',2,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'PESTICIDE FOR ANTS',1,'2015-08-19 00:00:00','2015-08-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(349,'2015-08-20 00:00:00',2,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'PIPE FITTINGS',1,'2015-08-20 00:00:00','2015-08-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(350,'2015-08-20 00:00:00',2,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'PLUMBER CHARGES',1,'2015-08-20 00:00:00','2015-08-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(351,'2015-08-20 00:00:00',2,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'TV WIRE',1,'2015-08-20 00:00:00','2015-08-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(352,'2015-08-20 00:00:00',2,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE FOR SR.MIRELLA',1,'2015-08-20 00:00:00','2015-08-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(353,'2015-08-21 00:00:00',2,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'POTATOES ETC',1,'2015-08-21 00:00:00','2015-08-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(354,'2015-08-21 00:00:00',2,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'DIGGING CHARGES TO COOLIE FOR PIPELINE',1,'2015-08-21 00:00:00','2015-08-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(355,'2015-08-22 00:00:00',2,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO WARANGAL',1,'2015-08-22 00:00:00','2015-08-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(356,'2015-08-24 00:00:00',2,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'PUMP REPAIRS',1,'2015-08-24 00:00:00','2015-08-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(357,'2015-08-24 00:00:00',2,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'Petrol for Bike',1,'2015-08-24 00:00:00','2015-08-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(358,'2015-08-24 00:00:00',2,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'BIKE REPAIRS',1,'2015-08-24 00:00:00','2015-08-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(359,'2015-08-24 00:00:00',2,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'CHANGING OF OIL FOR BIKE',1,'2015-08-24 00:00:00','2015-08-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(360,'2015-08-24 00:00:00',2,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'TV REPAIR',1,'2015-08-24 00:00:00','2015-08-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(361,'2015-08-26 00:00:00',2,'41','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO SECUNDERABAD',1,'2015-08-26 00:00:00','2015-08-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(362,'2015-08-26 00:00:00',2,'42','PY','GN',0,0,'F',0.00,0,1.00,0,'DENTIST FEES',1,'2015-08-26 00:00:00','2015-08-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(363,'2015-08-27 00:00:00',2,'43','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-08-27 00:00:00','2015-08-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(364,'2015-08-27 00:00:00',2,'44','PY','GN',0,0,'F',0.00,0,1.00,0,'MODEM FOR COMPUTER',1,'2015-08-27 00:00:00','2015-08-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(365,'2015-08-27 00:00:00',2,'45','PY','GN',0,0,'F',0.00,0,1.00,0,'SIM CARD',1,'2015-08-27 00:00:00','2015-08-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(366,'2015-08-28 00:00:00',2,'46','PY','GN',0,0,'F',0.00,0,1.00,0,'PROVISION',1,'2015-08-28 00:00:00','2015-08-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(367,'2015-08-29 00:00:00',2,'47','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO KAZIPET',1,'2015-08-29 00:00:00','2015-08-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(368,'2015-08-29 00:00:00',2,'48','PY','GN',0,0,'F',0.00,0,1.00,0,'CHOCOLATES',1,'2015-08-29 00:00:00','2015-08-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(369,'2015-08-30 00:00:00',2,'49','PY','GN',0,0,'F',0.00,0,1.00,0,'CELL RECHARGE',1,'2015-08-30 00:00:00','2015-08-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(370,'2015-08-30 00:00:00',2,'50','PY','GN',0,0,'F',0.00,0,1.00,0,'SNACKS',1,'2015-08-30 00:00:00','2015-08-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(371,'2015-08-30 00:00:00',2,'51','PY','GN',0,0,'F',0.00,0,1.00,0,'SPRITE BOTTLE',1,'2015-08-30 00:00:00','2015-08-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(372,'2015-08-30 00:00:00',2,'52','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-08-30 00:00:00','2015-08-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(373,'2015-08-31 00:00:00',2,'53','PY','GN',0,0,'F',0.00,0,1.00,0,'REPAIR AND MAINTENANCE OF COMPUTER',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(374,'2015-08-31 00:00:00',2,'54','PY','GN',0,0,'F',0.00,0,1.00,0,'CALCULATOR FOR SR.LOURDUMARY',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(375,'2015-08-31 00:00:00',2,'55','PY','GN',0,0,'F',0.00,0,1.00,0,'SOAPS',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(376,'2015-08-31 00:00:00',2,'56','PY','GN',0,0,'F',0.00,0,1.00,0,'DIESEL',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(377,'2015-08-31 00:00:00',2,'57','PY','GN',0,0,'F',0.00,0,1.00,0,'AIRTEL SIM CARD FOR MODEM ',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(378,'2015-08-31 00:00:00',2,'58','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(379,'2015-08-31 00:00:00',2,'59','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO DHOBI-PART TIME',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(380,'2015-08-31 00:00:00',2,'60','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO COOK ',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(381,'2015-08-31 00:00:00',2,'61','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO DRIVER',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(382,'2015-08-31 00:00:00',2,'62','PY','GN',0,0,'F',0.00,0,1.00,0,'DSS MANAGEMENT CONTRIBUTION DEPOSITED IN THE BANK',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(383,'2015-08-31 00:00:00',2,'63','PY','GN',0,0,'F',0.00,0,1.00,0,'PROVISION',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(384,'2015-08-31 00:00:00',2,'64','PY','GN',0,0,'F',0.00,0,1.00,0,'AUTO CHARGE',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(385,'2015-08-31 00:00:00',2,'65','PY','GN',0,0,'F',0.00,0,1.00,0,'MISCELLANEOUS',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(386,'2015-08-31 00:00:00',2,'66','PY','GN',0,0,'F',0.00,0,1.00,0,'CHARITY ',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(387,'2015-08-31 00:00:00',2,'67','PY','GN',0,0,'F',0.00,0,1.00,0,'MASS OFFERING',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(388,'2015-08-31 00:00:00',2,'68','PY','GN',0,0,'F',0.00,0,1.00,0,'VARIOUS REPAIRS',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(389,'2015-09-04 00:00:00',2,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'WITH DRAWN FROM ANDHRA BANK',1,'2015-09-04 00:00:00','2015-09-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(390,'2015-09-29 00:00:00',2,'02','CN','GN',0,0,'F',0.00,0,1.00,0,'WITH DRAWN FROM ANDHRA BANK',1,'2015-09-29 00:00:00','2015-09-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(391,'2015-09-01 00:00:00',2,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'COMPUTER REPAIR',1,'2015-09-01 00:00:00','2015-09-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(392,'2015-09-02 00:00:00',2,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'AIRTEL TV RECHARGE',1,'2015-09-02 00:00:00','2015-09-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(393,'2015-09-02 00:00:00',2,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'COMPUTER REPAIR',1,'2015-09-02 00:00:00','2015-09-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(394,'2015-09-03 00:00:00',2,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO NARSAMPET',1,'2015-09-03 00:00:00','2015-09-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(395,'2015-09-04 00:00:00',2,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'SIM CARD',1,'2015-09-04 00:00:00','2015-09-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(396,'2015-09-06 00:00:00',2,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'ELECTRICAL CHARGES FOR CHANGING CATEGORY',1,'2015-09-06 00:00:00','2015-09-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(397,'2015-09-06 00:00:00',2,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'SIM CARD',1,'2015-09-06 00:00:00','2015-09-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(398,'2015-09-06 00:00:00',2,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO KAZIPET',1,'2015-09-06 00:00:00','2015-09-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(399,'2015-09-07 00:00:00',2,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Xerox',1,'2015-09-07 00:00:00','2015-09-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(400,'2015-09-07 00:00:00',2,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO SECUNDERABAD',1,'2015-09-07 00:00:00','2015-09-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(401,'2015-09-08 00:00:00',2,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'MACHANIC CHARGES',1,'2015-09-08 00:00:00','2015-09-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(402,'2015-09-08 00:00:00',2,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'BISCUITS',1,'2015-09-08 00:00:00','2015-09-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(403,'2015-09-09 00:00:00',2,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'GINGER ETC',1,'2015-09-09 00:00:00','2015-09-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(404,'2015-09-09 00:00:00',2,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'INGREDIENTS',1,'2015-09-09 00:00:00','2015-09-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(405,'2015-09-09 00:00:00',2,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'SNACKS',1,'2015-09-09 00:00:00','2015-09-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(406,'2015-09-09 00:00:00',2,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'DISPOSABLE GLASS',1,'2015-09-09 00:00:00','2015-09-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(407,'2015-09-09 00:00:00',2,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'CAKE',1,'2015-09-09 00:00:00','2015-09-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(408,'2015-09-09 00:00:00',2,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'CAKE',1,'2015-09-09 00:00:00','2015-09-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(409,'2015-09-10 00:00:00',2,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'DISTILLED WATER FOR INVERTOR',1,'2015-09-10 00:00:00','2015-09-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(410,'2015-09-10 00:00:00',2,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE FOR SR MIRELLA',1,'2015-09-10 00:00:00','2015-09-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(411,'2015-09-13 00:00:00',2,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO KAZIPET TO ATTEND CRI MEETING',1,'2015-09-13 00:00:00','2015-09-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(412,'2015-09-13 00:00:00',2,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'CRI MEMBERSHIP FEE',1,'2015-09-13 00:00:00','2015-09-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(413,'2015-09-13 00:00:00',2,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'REGISTRATION FOR ONEDAY MEETING',1,'2015-09-13 00:00:00','2015-09-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(414,'2015-09-14 00:00:00',2,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCETO KAZIPET TO MAHESH',1,'2015-09-14 00:00:00','2015-09-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(415,'2015-09-14 00:00:00',2,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'COOLIE TO BADRU FOR CLEANING THE COMPOUND',1,'2015-09-14 00:00:00','2015-09-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(416,'2015-09-18 00:00:00',2,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'HAND BAG AND PURSES',1,'2015-09-18 00:00:00','2015-09-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(417,'2015-09-18 00:00:00',2,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'TOOTHPASYE',1,'2015-09-18 00:00:00','2015-09-18 00:00:00',0,0,0.00,0.00,'C',0,0,'','',0,'',0,NULL,0,NULL),(418,'2015-09-19 00:00:00',2,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO KOTHAGUDEM TO ATTEND THE CONSECRATED DAY CELEBRATION',1,'2015-09-19 00:00:00','2015-09-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(419,'2015-09-19 00:00:00',2,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'SNACKS',1,'2015-09-19 00:00:00','2015-09-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(420,'2015-09-23 00:00:00',2,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'PETROL FOR BIKE',1,'2015-09-23 00:00:00','2015-09-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(421,'2015-09-23 00:00:00',2,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'DIESEL',1,'2015-09-23 00:00:00','2015-09-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(422,'2015-09-25 00:00:00',2,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE ',1,'2015-09-25 00:00:00','2015-09-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(423,'2015-09-25 00:00:00',2,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO KHAMMAM',1,'2015-09-25 00:00:00','2015-09-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(424,'2015-09-27 00:00:00',2,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-09-27 00:00:00','2015-09-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(425,'2015-09-27 00:00:00',2,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO SECUNDERABAD',1,'2015-09-27 00:00:00','2015-09-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(426,'2015-09-27 00:00:00',2,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'ELECRICITY BILL NO920',1,'2015-09-27 00:00:00','2015-09-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(427,'2015-09-27 00:00:00',2,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'ELECRTICITY BILL-1240',1,'2015-09-27 00:00:00','2015-09-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(428,'2015-09-29 00:00:00',2,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'PLASTIC BASIN',1,'2015-09-29 00:00:00','2015-09-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(429,'2015-09-29 00:00:00',2,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-09-29 00:00:00','2015-09-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(430,'2015-09-29 00:00:00',2,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'SOAPS ETC.',1,'2015-09-29 00:00:00','2015-09-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(431,'2015-09-29 00:00:00',2,'41','PY','GN',0,0,'F',0.00,0,1.00,0,'BROOMS ETC.',1,'2015-09-29 00:00:00','2015-09-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(432,'2015-09-30 00:00:00',2,'42','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(433,'2015-09-30 00:00:00',2,'43','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO COOK',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(434,'2015-09-30 00:00:00',2,'44','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO DHOBI-PART TIME',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(435,'2015-09-30 00:00:00',2,'45','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO DRIVER',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(436,'2015-09-30 00:00:00',2,'46','PY','GN',0,0,'F',0.00,0,1.00,0,'DSS MANAGEMENT CONTRIBUTION DEPOSITED IN THE BANK',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(437,'2015-09-30 00:00:00',2,'47','PY','GN',0,0,'F',0.00,0,1.00,0,'PROVISION',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(438,'2015-09-30 00:00:00',2,'48','PY','GN',0,0,'F',0.00,0,1.00,0,'AUTOCHARGES',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(439,'2015-09-30 00:00:00',2,'49','PY','GN',0,0,'F',0.00,0,1.00,0,'MISCELLANEOUS',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(440,'2015-09-30 00:00:00',2,'50','PY','GN',0,0,'F',0.00,0,1.00,0,'CHARITY ',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(441,'2015-09-30 00:00:00',2,'51','PY','GN',0,0,'F',0.00,0,1.00,0,'REPAIR',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(442,'2015-09-30 00:00:00',2,'52','PY','GN',0,0,'F',0.00,0,1.00,0,'POSAGE',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(443,'2015-09-30 00:00:00',2,'53','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(444,'2015-09-30 00:00:00',2,'54','PY','GN',0,0,'F',0.00,0,1.00,0,'',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(445,'2015-09-30 00:00:00',2,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'SALARY OF SR AGNES ALMA LOURDU CATHERINE',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(446,'2015-07-02 00:00:00',3,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-07-02 00:00:00','2015-07-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(447,'2015-07-03 00:00:00',3,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-07-03 00:00:00','2015-07-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(448,'2015-07-03 00:00:00',3,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-07-03 00:00:00','2015-07-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(449,'2015-07-03 00:00:00',3,'04','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-07-03 00:00:00','2015-07-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(450,'2015-07-07 00:00:00',3,'05','RC','GN',0,0,'F',0.00,0,1.00,0,'B0ARDINGFEES',1,'2015-07-07 00:00:00','2015-07-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(451,'2015-07-09 00:00:00',3,'06','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDINGFEES',1,'2015-07-09 00:00:00','2015-07-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(452,'2015-07-10 00:00:00',3,'07','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-07-10 00:00:00','2015-07-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(453,'2015-07-21 00:00:00',3,'08','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(454,'2015-07-27 00:00:00',3,'09','RC','GN',0,0,'F',0.00,0,1.00,0,'B0ARDINGFEES',1,'2015-07-27 00:00:00','2015-07-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(455,'2015-07-02 00:00:00',3,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'ONIONS 20 K G',1,'2015-07-02 00:00:00','2015-07-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(456,'2015-07-04 00:00:00',3,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'SNACKS',1,'2015-07-04 00:00:00','2015-07-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(457,'2015-07-09 00:00:00',3,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'PHENYLE',1,'2015-07-09 00:00:00','2015-07-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(458,'2015-07-10 00:00:00',3,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-07-10 00:00:00','2015-07-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(459,'2015-07-13 00:00:00',3,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-07-13 00:00:00','2015-07-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(460,'2015-07-15 00:00:00',3,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'COOKING OIL1 TIN',1,'2015-07-15 00:00:00','2015-07-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(461,'2015-07-15 00:00:00',3,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'SNACKS',1,'2015-07-15 00:00:00','2015-07-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(462,'2015-07-17 00:00:00',3,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'RICE ONE QUINTOL',1,'2015-07-17 00:00:00','2015-07-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(463,'2015-07-17 00:00:00',3,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-07-17 00:00:00','2015-07-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(464,'2015-07-25 00:00:00',3,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-07-25 00:00:00','2015-07-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(465,'2015-07-27 00:00:00',3,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'PENS ETC',1,'2015-07-27 00:00:00','2015-07-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(466,'2015-07-27 00:00:00',3,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'RICE 1 QUINTOL',1,'2015-07-27 00:00:00','2015-07-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(467,'2015-07-31 00:00:00',3,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'MEAT, EGG , FISH',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(468,'2015-07-31 00:00:00',3,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(469,'2015-07-31 00:00:00',3,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO DHOBI/AYAH',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(470,'2015-07-31 00:00:00',3,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO WARDEN',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(471,'2015-07-31 00:00:00',3,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'VEGETABLES',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(472,'2015-07-04 00:00:00',3,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-07-04 00:00:00','2015-07-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(473,'2015-08-24 00:00:00',3,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-08-24 00:00:00','2015-08-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(474,'2015-08-24 00:00:00',3,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-08-24 00:00:00','2015-08-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(475,'2015-08-31 00:00:00',3,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(476,'2015-08-31 00:00:00',3,'04','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(477,'2015-08-02 00:00:00',3,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-08-02 00:00:00','2015-08-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(478,'2015-08-02 00:00:00',3,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-08-02 00:00:00','2015-08-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(479,'2015-08-13 00:00:00',3,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'PLUMBER CHARGES FOR REPAIRS',1,'2015-08-13 00:00:00','2015-08-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(480,'2015-08-16 00:00:00',3,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-08-16 00:00:00','2015-08-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(481,'2015-08-17 00:00:00',3,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'BULBS',1,'2015-08-17 00:00:00','2015-08-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(482,'2015-08-17 00:00:00',3,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'TUBELIGHT -ELECTRICIAN CHARGES ETC',1,'2015-08-17 00:00:00','2015-08-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(483,'2015-08-19 00:00:00',3,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'CELLRECHARGE',1,'2015-08-19 00:00:00','2015-08-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(484,'2015-08-19 00:00:00',3,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'CEMENT ETC',1,'2015-08-19 00:00:00','2015-08-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(485,'2015-08-24 00:00:00',3,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-08-24 00:00:00','2015-08-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(486,'2015-08-25 00:00:00',3,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'SNACKS',1,'2015-08-25 00:00:00','2015-08-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(487,'2015-08-30 00:00:00',3,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'H P GAS 1 CYLINDER',1,'2015-08-30 00:00:00','2015-08-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(488,'2015-08-30 00:00:00',3,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-08-30 00:00:00','2015-08-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(489,'2015-08-31 00:00:00',3,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'ASBESTOES SHEET',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(490,'2015-08-31 00:00:00',3,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(491,'2015-08-31 00:00:00',3,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY  TODHOBI- AYAH',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(492,'2015-08-31 00:00:00',3,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO WARDEN',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(493,'2015-08-31 00:00:00',3,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(494,'2015-08-31 00:00:00',3,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'VEGETABLES',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(495,'2015-08-31 00:00:00',3,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'MEAT, FISH, EGG',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(496,'2015-08-08 00:00:00',3,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-08-08 00:00:00','2015-08-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(497,'2015-09-06 00:00:00',3,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-09-06 00:00:00','2015-09-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(498,'2015-09-01 00:00:00',3,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-09-01 00:00:00','2015-09-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(499,'2015-09-05 00:00:00',3,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'',1,'2015-09-05 00:00:00','2015-09-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(500,'2015-09-08 00:00:00',3,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2015-09-08 00:00:00','2015-09-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(501,'2015-09-08 00:00:00',3,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'SNACKS',1,'2015-09-08 00:00:00','2015-09-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(502,'2015-09-08 00:00:00',3,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-09-08 00:00:00','2015-09-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(503,'2015-09-15 00:00:00',3,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-09-15 00:00:00','2015-09-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(504,'2015-09-15 00:00:00',3,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'CELL RECHARGE',1,'2015-09-15 00:00:00','2015-09-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(505,'2015-09-30 00:00:00',3,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'VEGETABLES',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(506,'2015-09-30 00:00:00',3,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'MEAT, EGG, FISH ',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(507,'2015-09-30 00:00:00',3,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(508,'2015-09-30 00:00:00',3,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO DHOBI - AYAH',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(509,'2015-09-30 00:00:00',3,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO WARDEN',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(510,'2015-09-30 00:00:00',3,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(511,'2015-09-30 00:00:00',3,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'BROOMS ETC.',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(512,'2015-09-30 00:00:00',3,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(513,'2015-09-30 00:00:00',3,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'SOAPS',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(514,'2015-07-31 00:00:00',4,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'COLLECTION FROM DISPENSARY',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(515,'2015-07-05 00:00:00',4,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE ',1,'2015-07-05 00:00:00','2015-07-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(516,'2015-07-20 00:00:00',4,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE ',1,'2015-07-20 00:00:00','2015-07-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(517,'2015-07-31 00:00:00',4,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO COMMUNITY',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(518,'2015-08-31 00:00:00',4,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'COLLECTION FROM O P D',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(519,'2015-08-04 00:00:00',4,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'SANITARY PADS',1,'2015-08-04 00:00:00','2015-08-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(520,'2015-08-14 00:00:00',4,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE FOR DISPENSARY',1,'2015-08-14 00:00:00','2015-08-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(521,'2015-08-14 00:00:00',4,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINEFOR DISPENSARY',1,'2015-08-14 00:00:00','2015-08-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(522,'2015-08-14 00:00:00',4,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE FOR DISPENSARY',1,'2015-08-14 00:00:00','2015-08-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(523,'2015-08-16 00:00:00',4,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'AUTO CHARGE TO BUY MEDICINE',1,'2015-08-16 00:00:00','2015-08-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(524,'2015-08-16 00:00:00',4,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'AUDIT FEES',1,'2015-08-16 00:00:00','2015-08-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(525,'2015-08-25 00:00:00',4,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE FOR DISPENSARY',1,'2015-08-25 00:00:00','2015-08-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(526,'2015-09-30 00:00:00',4,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'COLLECTION FROM DISPENSARY',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(527,'2015-09-25 00:00:00',4,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINEFOR DISPENSARY',1,'2015-09-25 00:00:00','2015-09-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(528,'2015-09-30 00:00:00',4,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO COMMUNITY',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(529,'2015-08-31 00:00:00',4,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'salary to the community',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(530,'2015-04-27 00:00:00',2,'43','PY','GN',0,0,'F',0.00,0,1.00,0,'BRICKS ONE TRACTOR',1,'2015-04-27 00:00:00','2015-04-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(531,'2015-04-10 00:00:00',2,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'SAND 4 TRACTORS',1,'2015-04-10 00:00:00','2015-04-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(532,'2015-09-06 00:00:00',2,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'BANK INTEREST',1,'2015-09-06 00:00:00','2015-09-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(533,'2015-06-12 00:00:00',2,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'JESUS FRAME LAMINATION',1,'2015-06-12 00:00:00','2015-06-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(534,'2015-06-12 00:00:00',2,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'JESUS FRAME LAMINATION',1,'2015-06-12 00:00:00','2015-06-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(535,'2015-06-12 00:00:00',2,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'FRAME FOR JESUS PICTURE',1,'2015-06-12 00:00:00','2015-06-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(536,'2015-09-06 00:00:00',4,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'BANK INTEREST',1,'2015-09-06 00:00:00','2015-09-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(537,'2015-10-03 00:00:00',3,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Hemanth hostel fees',1,'2015-10-03 00:00:00','2015-10-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(538,'2015-10-26 00:00:00',3,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'v. Sandeep',1,'2015-10-26 00:00:00','2015-10-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(539,'2015-10-27 00:00:00',3,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'Thriveni,Sai.Praveen, Navya, Akila , Gowri',1,'2015-10-27 00:00:00','2015-10-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(540,'2015-10-29 00:00:00',3,'04','RC','GN',0,0,'F',0.00,0,1.00,0,'Goutami',1,'2015-10-29 00:00:00','2015-10-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(541,'2015-10-04 00:00:00',3,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'            BREAED',1,'2015-10-04 00:00:00','2015-10-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(542,'2015-10-11 00:00:00',3,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Bread',1,'2015-10-11 00:00:00','2015-10-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(543,'2015-10-24 00:00:00',3,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'bULBS ETC',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(544,'2015-10-27 00:00:00',3,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'cAKE BUISKETS ETC',1,'2015-10-27 00:00:00','2015-10-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(545,'2015-10-27 00:00:00',3,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'cHARGER FOR THE CELL PHONE',1,'2015-10-27 00:00:00','2015-10-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(546,'2015-10-30 00:00:00',3,'06','PY','GN',0,0,'F',0.00,0,1.00,0,' BREAD  MILK ETC',1,'2015-10-30 00:00:00','2015-10-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(547,'2015-10-30 00:00:00',3,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'cELL RECHARGE',1,'2015-10-30 00:00:00','2015-10-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(548,'2015-10-30 00:00:00',3,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-10-30 00:00:00','2015-10-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(549,'2015-10-30 00:00:00',3,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'FAN REPAIR  CHARGES',1,'2015-10-30 00:00:00','2015-10-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(550,'2015-10-31 00:00:00',3,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(551,'2015-10-31 00:00:00',3,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'VEGETABLES',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(552,'2015-10-31 00:00:00',3,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(553,'2015-10-31 00:00:00',4,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'COLLECTION FROM OUT PATIENTS',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(554,'2015-10-31 00:00:00',3,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO WARDEN',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(555,'2015-10-31 00:00:00',3,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'salary to ayah',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(556,'2015-10-30 00:00:00',3,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'Refined oil 1 tin',1,'2015-10-30 00:00:00','2015-10-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(557,'2015-10-31 00:00:00',3,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'MEAT, FISH, EGG',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(558,'2015-10-31 00:00:00',4,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Medicine brought from acure pharma',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(559,'2015-10-31 00:00:00',4,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO COMMUNITY',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(560,'2015-10-01 00:00:00',2,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD & MILK',1,'2015-10-01 00:00:00','2015-10-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(561,'2015-10-01 00:00:00',2,'02','PY','GN',0,0,'F',0.00,0,1.00,0,' CONVEYANCE TO  SECUNDERABAD',1,'2015-10-01 00:00:00','2015-10-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(562,'2015-10-04 00:00:00',2,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO SECUNDERABAD',1,'2015-10-04 00:00:00','2015-10-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(563,'2015-10-04 00:00:00',2,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO SECUNDERABAD',1,'2015-10-04 00:00:00','2015-10-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(564,'2015-10-06 00:00:00',2,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'SIM CARD FOR COMPUTER',1,'2015-10-06 00:00:00','2015-10-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(565,'2015-10-06 00:00:00',2,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'CELL RECHARGE',1,'2015-10-06 00:00:00','2015-10-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(566,'2015-10-07 00:00:00',2,'07','PY','GN',0,0,'F',0.00,0,1.00,0,' MEDICINE FOR SR MIRELLA',1,'2015-10-07 00:00:00','2015-10-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(567,'2015-10-07 00:00:00',2,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'SPRITE BOTTLE',1,'2015-10-07 00:00:00','2015-10-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(568,'2015-10-07 00:00:00',2,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-10-07 00:00:00','2015-10-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(569,'2015-10-08 00:00:00',2,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE FOR SR.MIRELLA',1,'2015-10-08 00:00:00','2015-10-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(570,'2015-10-08 00:00:00',2,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'GROUND NUT OIL',1,'2015-10-08 00:00:00','2015-10-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(571,'2015-10-08 00:00:00',2,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-10-08 00:00:00','2015-10-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(572,'2015-10-11 00:00:00',2,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'OIL ONE PACKET',1,'2015-10-11 00:00:00','2015-10-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(573,'2015-10-12 00:00:00',2,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION ',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(574,'2015-10-14 00:00:00',2,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'TV. REMOTE CONTROL',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(575,'2015-10-14 00:00:00',2,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'JEEP BULB',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(576,'2015-10-14 00:00:00',2,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'PESTICIDE',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(577,'2015-10-14 00:00:00',2,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'DIESEL',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(578,'2015-10-14 00:00:00',2,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'GRINDER REPAIR',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(579,'2015-10-14 00:00:00',2,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(580,'2015-10-17 00:00:00',2,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-10-17 00:00:00','2015-10-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(581,'2015-10-19 00:00:00',2,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'CHEPPALS ONE PAIR',1,'2015-10-19 00:00:00','2015-10-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(582,'2015-10-19 00:00:00',2,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'CHARGER FOR CELL PHONE',1,'2015-10-19 00:00:00','2015-10-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(583,'2015-10-19 00:00:00',2,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'GROUNDNUT OIL 1 PACKET',1,'2015-10-19 00:00:00','2015-10-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(584,'2015-10-19 00:00:00',2,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'POUCH',1,'2015-10-19 00:00:00','2015-10-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(585,'2015-10-20 00:00:00',2,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO KAZIPET',1,'2015-10-20 00:00:00','2015-10-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(586,'2015-10-20 00:00:00',2,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'CURD AND MILK',1,'2015-10-20 00:00:00','2015-10-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(587,'2015-10-20 00:00:00',2,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'PETROL FOR BIKE',1,'2015-10-20 00:00:00','2015-10-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(588,'2015-10-22 00:00:00',2,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO SECUNDERABAD FOR RETREAT',1,'2015-10-22 00:00:00','2015-10-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(589,'2015-10-22 00:00:00',2,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO SECBAD FOR SR LOURDU',1,'2015-10-22 00:00:00','2015-10-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(590,'2015-10-24 00:00:00',2,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'DIESEL',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(591,'2015-10-24 00:00:00',2,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'FISH FRY',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(592,'2015-10-24 00:00:00',2,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'MEALS FOR 6 MEMBERS',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(593,'2015-10-24 00:00:00',2,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'SALT etc',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(594,'2015-10-27 00:00:00',2,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE FOR SR MIRELLA',1,'2015-10-27 00:00:00','2015-10-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(595,'2015-10-27 00:00:00',2,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'CELL RECHARGE',1,'2015-10-27 00:00:00','2015-10-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(596,'2015-10-27 00:00:00',2,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE FOR SR.AGNES',1,'2015-10-27 00:00:00','2015-10-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(597,'2015-10-28 00:00:00',2,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'MISSION SUNDAY CONTRIBUTION',1,'2015-10-28 00:00:00','2015-10-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(598,'2015-10-28 00:00:00',2,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'JEEP WHEEL ALINMENT,OILCHANGING, SERVICING ETC.',1,'2015-10-28 00:00:00','2015-10-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(599,'2015-10-28 00:00:00',2,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'JEEP MECHANIC CHARGES',1,'2015-10-28 00:00:00','2015-10-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(600,'2015-10-28 00:00:00',2,'41','PY','GN',0,0,'F',0.00,0,1.00,0,'JEEP WHEEL ALINMENTCHARGES',1,'2015-10-28 00:00:00','2015-10-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(601,'2015-10-30 00:00:00',2,'42','PY','GN',0,0,'F',0.00,0,1.00,0,'REP OF FAN ETC',1,'2015-10-30 00:00:00','2015-10-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(602,'2015-10-31 00:00:00',2,'43','PY','GN',0,0,'F',0.00,0,1.00,0,'DIESEL',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(603,'2015-10-31 00:00:00',2,'44','PY','GN',0,0,'F',0.00,0,1.00,0,'COOLIE TO BADRU FOR CLEANING THE COMPOUND',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(604,'2015-10-31 00:00:00',2,'45','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK30 litres',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(605,'2015-10-31 00:00:00',2,'46','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO COOK ',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(606,'2015-10-31 00:00:00',2,'47','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO DHOBI-PARTTIME',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(607,'2015-10-31 00:00:00',2,'48','PY','GN',0,0,'F',0.00,0,1.00,0,'PROVISION',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(608,'2015-10-31 00:00:00',2,'49','PY','GN',0,0,'F',0.00,0,1.00,0,'LOCAL CONVVEYANCE',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(609,'2015-10-31 00:00:00',2,'50','PY','GN',0,0,'F',0.00,0,1.00,0,'MISCELLANEOUS',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(610,'2015-10-31 00:00:00',2,'51','PY','GN',0,0,'F',0.00,0,1.00,0,'CHARITY ',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(611,'2015-10-31 00:00:00',2,'52','PY','GN',0,0,'F',0.00,0,1.00,0,'MASS OFFERING',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(612,'2015-10-31 00:00:00',2,'53','PY','GN',0,0,'F',0.00,0,1.00,0,'BAG REPAIR etc',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(613,'2015-10-31 00:00:00',2,'54','PY','GN',0,0,'F',0.00,0,1.00,0,'DSS MANAGEMENT CONTRIBUTION DEPOSITED IN THE BANK',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(614,'2015-10-31 00:00:00',2,'55','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO DRIVER',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(615,'2015-10-31 00:00:00',2,'56','PY','GN',0,0,'F',0.00,0,1.00,0,' BHARAT GAS',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(616,'2015-10-27 00:00:00',2,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'withdrawn from andhra bank',1,'2015-10-27 00:00:00','2015-10-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(617,'2015-10-31 00:00:00',2,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'SR.AGNES,ALMA,CATHEINE,LOURDHU MARY',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(618,'2015-11-02 00:00:00',2,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'DISTILLED WATER FOR JEEP',1,'2015-11-02 00:00:00','2015-11-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(619,'2015-11-02 00:00:00',2,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'PLASTIC BASIN',1,'2015-11-02 00:00:00','2015-11-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(620,'2015-11-03 00:00:00',2,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'PENS  ETC',1,'2015-11-03 00:00:00','2015-11-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(621,'2015-11-05 00:00:00',2,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'SNACKS',1,'2015-11-05 00:00:00','2015-11-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(622,'2015-11-07 00:00:00',2,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO KAZIPET',1,'2015-11-07 00:00:00','2015-11-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(623,'2015-11-09 00:00:00',2,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'TOOTHPASTE',1,'2015-11-09 00:00:00','2015-11-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(624,'2015-11-09 00:00:00',2,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'AIRTEL INTERNET RECHARGE',1,'2015-11-09 00:00:00','2015-11-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(625,'2015-11-10 00:00:00',2,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE ',1,'2015-11-10 00:00:00','2015-11-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(626,'2015-11-10 00:00:00',2,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'COOKING OIL',1,'2015-11-10 00:00:00','2015-11-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(627,'2015-11-10 00:00:00',2,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'TOWELS ETC',1,'2015-11-10 00:00:00','2015-11-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(628,'2015-11-10 00:00:00',2,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'PLASTIC COVERS',1,'2015-11-10 00:00:00','2015-11-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(629,'2015-11-10 00:00:00',2,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'PLASTIC ITEMS-COVERS',1,'2015-11-10 00:00:00','2015-11-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(630,'2015-11-10 00:00:00',2,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'FOOTWEAR',1,'2015-11-10 00:00:00','2015-11-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(631,'2015-11-10 00:00:00',2,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'DOCTOR\'S FEE',1,'2015-11-10 00:00:00','2015-11-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(632,'2015-11-10 00:00:00',2,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'BLOOD TEST FOR SR.LOURDU MARY',1,'2015-11-10 00:00:00','2015-11-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(633,'2015-11-10 00:00:00',2,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'BLOOD TEST FOR SR.LOURDU MARY',1,'2015-11-10 00:00:00','2015-11-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(634,'2015-11-10 00:00:00',2,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINES FOR SR.LOURDU MARY',1,'2015-11-10 00:00:00','2015-11-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(635,'2015-11-10 00:00:00',2,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'DIESEL FOR JEEP',1,'2015-11-10 00:00:00','2015-11-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(636,'2015-11-10 00:00:00',2,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'TEA POWDER',1,'2015-11-10 00:00:00','2015-11-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(637,'2015-11-13 00:00:00',2,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-11-13 00:00:00','2015-11-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(638,'2015-11-13 00:00:00',2,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'BOURNVITA',1,'2015-11-13 00:00:00','2015-11-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(639,'2015-11-14 00:00:00',2,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'DIGGING CHARGES FOR TELEPHONE WIRE',1,'2015-11-14 00:00:00','2015-11-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(640,'2015-11-16 00:00:00',2,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'DIGGING AND INSTALLATION CHARGES FOR TELEPHONE WIRE',1,'2015-11-16 00:00:00','2015-11-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(641,'2015-11-16 00:00:00',2,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'MECHANIC CHARGES FOR TELEPHONE',1,'2015-11-16 00:00:00','2015-11-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(642,'2015-11-19 00:00:00',2,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE FOR SR.MIRELLA',1,'2015-11-19 00:00:00','2015-11-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(643,'2015-11-19 00:00:00',2,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'CHOCOLATES',1,'2015-11-19 00:00:00','2015-11-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(644,'2015-11-20 00:00:00',2,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'ELECTRICITY BILL NO.920',1,'2015-11-20 00:00:00','2015-11-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(645,'2015-11-20 00:00:00',2,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'ELECTRICITY BILL NO.1240',1,'2015-11-20 00:00:00','2015-11-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(646,'2015-11-21 00:00:00',2,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'PETROL FOR BIKE',1,'2015-11-21 00:00:00','2015-11-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(647,'2015-11-21 00:00:00',2,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'PHONE DEPOSIT',1,'2015-11-21 00:00:00','2015-11-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(648,'2015-11-22 00:00:00',2,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO SECUNDERABAD',1,'2015-11-22 00:00:00','2015-11-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(649,'2015-11-25 00:00:00',2,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'PENCIL ETC',1,'2015-11-25 00:00:00','2015-11-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(650,'2015-11-25 00:00:00',2,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-11-25 00:00:00','2015-11-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(651,'2015-11-26 00:00:00',2,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'SALT-10KG',1,'2015-11-26 00:00:00','2015-11-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(652,'2015-11-28 00:00:00',2,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO WARANGAL',1,'2015-11-28 00:00:00','2015-11-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(653,'2015-11-28 00:00:00',2,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'CAKE ETC',1,'2015-11-28 00:00:00','2015-11-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(654,'2015-11-29 00:00:00',2,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'BIKE REPAIRS',1,'2015-11-29 00:00:00','2015-11-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(655,'2015-11-30 00:00:00',2,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK-30 LTRS',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(656,'2015-11-30 00:00:00',2,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO COOK',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(657,'2015-11-30 00:00:00',2,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO DHOBI-PART TIME',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(658,'2015-11-30 00:00:00',2,'41','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO DRIVER',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(659,'2015-11-30 00:00:00',2,'42','PY','GN',0,0,'F',0.00,0,1.00,0,'DSS MANAGEMENT CONTRIBUTION DEPOSITED IN THE BANK',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(660,'2015-11-30 00:00:00',2,'43','PY','GN',0,0,'F',0.00,0,1.00,0,'PROVISION',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(661,'2015-11-30 00:00:00',2,'44','PY','GN',0,0,'F',0.00,0,1.00,0,'LOCAL CONVEYANCE',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(662,'2015-11-30 00:00:00',2,'45','PY','GN',0,0,'F',0.00,0,1.00,0,'MISCELLANEOUS',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(663,'2015-11-30 00:00:00',2,'46','PY','GN',0,0,'F',0.00,0,1.00,0,'CHARITY FOR POOR',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(664,'2015-11-30 00:00:00',2,'47','PY','GN',0,0,'F',0.00,0,1.00,0,'CONFESSOR AND MASS OFFERING',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(665,'2015-11-30 00:00:00',2,'48','PY','GN',0,0,'F',0.00,0,1.00,0,'REPAIR',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(666,'2015-11-30 00:00:00',2,'49','PY','GN',0,0,'F',0.00,0,1.00,0,'POSTAGE',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(667,'2015-11-30 00:00:00',2,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'WITHDRAWN FROM ANDHRA BANK',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(668,'2015-11-05 00:00:00',3,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'BOARDING FEE COLLECTION',1,'2015-11-05 00:00:00','2015-11-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(669,'2015-11-09 00:00:00',3,'02','RC','GN',0,0,'F',0.00,0,1.00,0,' boarding fees Neetin',1,'2015-11-09 00:00:00','2015-11-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(670,'2015-11-16 00:00:00',3,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'Boarding fees Sruthi',1,'2015-11-16 00:00:00','2015-11-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(671,'2015-11-16 00:00:00',3,'04','RC','GN',0,0,'F',0.00,0,1.00,0,'Boarding Fees Vasanhtha',1,'2015-11-16 00:00:00','2015-11-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(672,'2015-11-23 00:00:00',3,'05','RC','GN',0,0,'F',0.00,0,1.00,0,'Boarding Fees V. Sandeep',1,'2015-11-23 00:00:00','2015-11-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(673,'2015-11-27 00:00:00',3,'06','RC','GN',0,0,'F',0.00,0,1.00,0,'Boarding Fees Balaji',1,'2015-11-27 00:00:00','2015-11-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(674,'2015-11-01 00:00:00',3,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Bread',1,'2015-11-01 00:00:00','2015-11-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(675,'2015-11-05 00:00:00',3,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2015-11-05 00:00:00','2015-11-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(676,'2015-11-08 00:00:00',3,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-11-08 00:00:00','2015-11-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(677,'2015-11-08 00:00:00',3,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'H.P. Gas',1,'2015-11-08 00:00:00','2015-11-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(678,'2015-11-10 00:00:00',3,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'SOAPS',1,'2015-11-10 00:00:00','2015-11-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(679,'2015-11-10 00:00:00',3,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION FROM SHIVA ENTERPRISE',1,'2015-11-10 00:00:00','2015-11-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(680,'2015-11-15 00:00:00',3,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-11-15 00:00:00','2015-11-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(681,'2015-11-22 00:00:00',3,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-11-22 00:00:00','2015-11-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(682,'2015-11-23 00:00:00',3,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'PENCIL ETC',1,'2015-11-23 00:00:00','2015-11-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(683,'2015-11-25 00:00:00',3,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'Buiskets',1,'2015-11-25 00:00:00','2015-11-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(684,'2015-11-28 00:00:00',3,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-11-28 00:00:00','2015-11-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(685,'2015-11-30 00:00:00',3,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'VEGETABLES',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(686,'2015-11-30 00:00:00',3,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'MeaLS FOR 6 MEMBERS',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(687,'2015-11-30 00:00:00',3,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(688,'2015-11-30 00:00:00',3,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO DHOBI-PART TIME',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(689,'2015-11-30 00:00:00',3,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO WARDEN',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(690,'2015-11-30 00:00:00',4,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'COLLECTION FROM DISPENSARY',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(691,'2015-11-09 00:00:00',4,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'SANITARY PADS',1,'2015-11-09 00:00:00','2015-11-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(692,'2015-11-10 00:00:00',4,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE FOR DISPENSARY',1,'2015-11-10 00:00:00','2015-11-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(693,'2015-11-30 00:00:00',4,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY OF SR ALMA TO THE COMMUNITY',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(694,'2015-11-29 00:00:00',3,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'Ration',1,'2015-11-29 00:00:00','2015-11-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(695,'2015-11-10 00:00:00',3,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'ONIONS 20 K G',1,'2015-11-10 00:00:00','2015-11-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(696,'2015-11-30 00:00:00',2,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'SALARY OF SR AGNES ALMA LOURDU CATHERINE',1,'2015-11-30 00:00:00','2015-11-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(697,'2015-05-12 00:00:00',2,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'WITHDRAWN FROM ANDHRA BANK',1,'2015-05-12 00:00:00','2015-05-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(698,'2015-05-25 00:00:00',2,'02','CN','GN',0,0,'F',0.00,0,1.00,0,'WITHDRAWN FROM ANDHRA BANK',1,'2015-05-25 00:00:00','2015-05-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(699,'2015-12-18 00:00:00',4,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'WITHDRAWN FROM ANDHRA BANK',1,'2015-12-18 00:00:00','2015-12-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(700,'2015-12-31 00:00:00',4,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'COLLECTION FROM O P D',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(701,'2015-12-18 00:00:00',4,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'JEEP INSURANCE',1,'2015-12-18 00:00:00','2015-12-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(702,'2015-12-29 00:00:00',4,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'PURCHASED MEDICINE',1,'2015-12-29 00:00:00','2015-12-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(703,'2015-12-31 00:00:00',4,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY OF SR ALMA TO THE COMMUNITY',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(704,'2015-12-08 00:00:00',3,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Hostel fees of Saikrishna',1,'2015-12-08 00:00:00','2015-12-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(705,'2015-12-08 00:00:00',3,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'V. Hemanth',1,'2015-12-08 00:00:00','2015-12-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(706,'2015-12-08 00:00:00',3,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'Praveen',1,'2015-12-08 00:00:00','2015-12-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(707,'2015-12-08 00:00:00',3,'04','RC','GN',0,0,'F',0.00,0,1.00,0,'Anusha',1,'2015-12-08 00:00:00','2015-12-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(708,'2015-12-31 00:00:00',3,'12','RC','GN',0,0,'F',0.00,0,1.00,0,'Akash',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(709,'2015-12-17 00:00:00',3,'05','RC','GN',0,0,'F',0.00,0,1.00,0,'Vishnu vardhan',1,'2015-12-17 00:00:00','2015-12-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(710,'2015-12-28 00:00:00',3,'06','RC','GN',0,0,'F',0.00,0,1.00,0,'Meenasri',1,'2015-12-28 00:00:00','2015-12-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(711,'2015-12-28 00:00:00',3,'07','RC','GN',0,0,'F',0.00,0,1.00,0,'Sruthi',1,'2015-12-28 00:00:00','2015-12-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(712,'2015-12-28 00:00:00',3,'08','RC','GN',0,0,'F',0.00,0,1.00,0,'Maunia',1,'2015-12-28 00:00:00','2015-12-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(713,'2015-12-29 00:00:00',3,'09','RC','GN',0,0,'F',0.00,0,1.00,0,'Devender',1,'2015-12-29 00:00:00','2015-12-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(714,'2015-12-29 00:00:00',3,'10','RC','GN',0,0,'F',0.00,0,1.00,0,'Gowri priya',1,'2015-12-29 00:00:00','2015-12-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(715,'2015-12-30 00:00:00',3,'11','RC','GN',0,0,'F',0.00,0,1.00,0,'Swathy',1,'2015-12-30 00:00:00','2015-12-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(716,'2015-12-31 00:00:00',2,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'Salaryof sister Agnes & Alma',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(717,'2015-12-18 00:00:00',2,'02','CN','GN',0,0,'F',0.00,0,1.00,0,'WITH DRAWN FROM ANDHRA BANK',1,'2015-12-18 00:00:00','2015-12-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(718,'2015-12-29 00:00:00',2,'03','CN','GN',0,0,'F',0.00,0,1.00,0,'WITH DRAWN FROM ANDHRA BANK',1,'2015-12-29 00:00:00','2015-12-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(719,'2015-12-02 00:00:00',2,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO SECUNDERABAD',1,'2015-12-02 00:00:00','2015-12-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(720,'2015-12-03 00:00:00',2,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Christmas Cards etc',1,'2015-12-03 00:00:00','2015-12-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(721,'2015-12-03 00:00:00',2,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2015-12-03 00:00:00','2015-12-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(722,'2015-12-07 00:00:00',2,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'                   ginger',1,'2015-12-07 00:00:00','2015-12-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(723,'2015-12-07 00:00:00',2,'05','PY','GN',0,0,'F',0.00,0,1.00,0,' cell recharge',1,'2015-12-07 00:00:00','2015-12-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(724,'2015-12-08 00:00:00',2,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'Diesel',1,'2015-12-08 00:00:00','2015-12-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(725,'2015-12-08 00:00:00',2,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'Conveya from Secunderabad',1,'2015-12-08 00:00:00','2015-12-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(726,'2015-12-11 00:00:00',2,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'Dress Cloth',1,'2015-12-11 00:00:00','2015-12-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(727,'2015-12-11 00:00:00',2,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Bible',1,'2015-12-11 00:00:00','2015-12-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(728,'2015-12-11 00:00:00',2,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'Contribution to Diocese for Banjara Christmas celebration',1,'2015-12-11 00:00:00','2015-12-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(729,'2015-12-11 00:00:00',2,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'Rice 1 k.g',1,'2015-12-11 00:00:00','2015-12-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(730,'2015-12-11 00:00:00',2,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO KHAMMAM',1,'2015-12-11 00:00:00','2015-12-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(731,'2015-12-18 00:00:00',2,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'Rat POISON',1,'2015-12-18 00:00:00','2015-12-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(732,'2015-12-18 00:00:00',2,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'PIPES FOR REPAIRING WORK',1,'2015-12-18 00:00:00','2015-12-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(733,'2015-12-18 00:00:00',2,'18','PY','GN',0,0,'F',0.00,0,1.00,0,' CRI Registration fees',1,'2015-12-18 00:00:00','2015-12-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(734,'2015-12-18 00:00:00',2,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'JEEP SERVICING CHARGES',1,'2015-12-18 00:00:00','2015-12-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(735,'2015-12-18 00:00:00',2,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'Contribution for consecrated life celebration',1,'2015-12-18 00:00:00','2015-12-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(736,'2015-12-22 00:00:00',2,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'DIESEL',1,'2015-12-22 00:00:00','2015-12-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(737,'2015-12-22 00:00:00',2,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'Decoration materials',1,'2015-12-22 00:00:00','2015-12-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(738,'2015-12-22 00:00:00',2,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'Decoration light',1,'2015-12-22 00:00:00','2015-12-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(739,'2015-12-11 00:00:00',2,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'Medicine for Sr. Lourdu',1,'2015-12-11 00:00:00','2015-12-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(740,'2015-12-11 00:00:00',2,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'Dr s Consultation fees',1,'2015-12-11 00:00:00','2015-12-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(741,'2015-12-11 00:00:00',2,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'SOAPS ETC.',1,'2015-12-11 00:00:00','2015-12-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(742,'2015-12-23 00:00:00',2,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'Electrical repair charges',1,'2015-12-23 00:00:00','2015-12-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(743,'2015-12-23 00:00:00',2,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'Breadbox etc.',1,'2015-12-23 00:00:00','2015-12-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(744,'2015-12-23 00:00:00',2,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'Song books',1,'2015-12-23 00:00:00','2015-12-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(745,'2015-12-23 00:00:00',2,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-12-23 00:00:00','2015-12-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(746,'2015-12-24 00:00:00',2,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2015-12-24 00:00:00','2015-12-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(747,'2015-12-25 00:00:00',2,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'SPRITE BOTTLE',1,'2015-12-25 00:00:00','2015-12-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(748,'2015-12-26 00:00:00',2,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'DIESEL FOR JEEP',1,'2015-12-26 00:00:00','2015-12-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(749,'2015-12-26 00:00:00',2,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINE FOR SR.MIRELLA',1,'2015-12-26 00:00:00','2015-12-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(750,'2015-12-26 00:00:00',2,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'Buns',1,'2015-12-26 00:00:00','2015-12-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(751,'2015-12-26 00:00:00',2,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2015-12-26 00:00:00','2015-12-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(752,'2015-12-28 00:00:00',2,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'Pendrive',1,'2015-12-28 00:00:00','2015-12-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(753,'2015-12-29 00:00:00',2,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'Telephone bill',1,'2015-12-29 00:00:00','2015-12-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(754,'2015-12-29 00:00:00',2,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'Agricultural well pump bill',1,'2015-12-29 00:00:00','2015-12-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(755,'2015-12-29 00:00:00',2,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'DIESEL FOR JEEP',1,'2015-12-29 00:00:00','2015-12-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(756,'2015-12-30 00:00:00',2,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'Bharat Gas',1,'2015-12-30 00:00:00','2015-12-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(757,'2015-12-31 00:00:00',2,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'News pap Bill forJuly, to December',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(758,'2015-12-31 00:00:00',2,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO SECUNDERABAD',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(759,'2015-12-31 00:00:00',2,'41','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(760,'2015-12-31 00:00:00',2,'42','PY','GN',0,0,'F',0.00,0,1.00,0,'Provision, Meat , Fish., Fruit, Vegetable etc',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(761,'2015-12-31 00:00:00',2,'43','PY','GN',0,0,'F',0.00,0,1.00,0,'LOCAL CONVEYANCE',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(762,'2015-12-31 00:00:00',2,'44','PY','GN',0,0,'F',0.00,0,1.00,0,'Misceleneous Expences',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(763,'2015-12-31 00:00:00',2,'45','PY','GN',0,0,'F',0.00,0,1.00,0,'Charity to poor',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(764,'2015-12-31 00:00:00',2,'46','PY','GN',0,0,'F',0.00,0,1.00,0,'REPAIR',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(765,'2015-12-31 00:00:00',2,'47','PY','GN',0,0,'F',0.00,0,1.00,0,'Postage',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(766,'2015-12-31 00:00:00',2,'48','PY','GN',0,0,'F',0.00,0,1.00,0,'Drivers Salary',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(767,'2015-12-31 00:00:00',2,'49','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO COOK ',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(768,'2015-12-31 00:00:00',2,'50','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO DHOBI',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(769,'2015-12-31 00:00:00',2,'51','PY','GN',0,0,'F',0.00,0,1.00,0,'Wage   to  Badru',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(770,'2015-12-31 00:00:00',2,'52','PY','GN',0,0,'F',0.00,0,1.00,0,'DSS MANAGEMENT CONTRIBUTION DEPOSITED IN THE BANK',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(771,'2015-12-09 00:00:00',2,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'Withdrawn from andhra bank',1,'2015-12-09 00:00:00','2015-12-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(772,'2015-12-01 00:00:00',2,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Subsidy from the province',1,'2015-12-01 00:00:00','2015-12-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(773,'2015-12-29 00:00:00',2,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'OLD SCARP SOLD',1,'2015-12-29 00:00:00','2015-12-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(774,'2015-12-05 00:00:00',3,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Rice ',1,'2015-12-05 00:00:00','2015-12-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(775,'2015-12-05 00:00:00',3,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Bread',1,'2015-12-05 00:00:00','2015-12-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(776,'2015-12-14 00:00:00',3,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'Rice ',1,'2015-12-14 00:00:00','2015-12-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(777,'2015-12-15 00:00:00',3,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'Rice ',1,'2015-12-15 00:00:00','2015-12-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(778,'2015-12-15 00:00:00',3,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'Ration',1,'2015-12-15 00:00:00','2015-12-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(779,'2015-12-15 00:00:00',3,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'Stationary items',1,'2015-12-15 00:00:00','2015-12-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(780,'2015-12-15 00:00:00',3,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'Sanitary items',1,'2015-12-15 00:00:00','2015-12-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(781,'2015-12-15 00:00:00',3,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'Rice ',1,'2015-12-15 00:00:00','2015-12-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(782,'2015-12-15 00:00:00',3,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Bread',1,'2015-12-15 00:00:00','2015-12-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(783,'2015-12-30 00:00:00',3,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'Repairs',1,'2015-12-30 00:00:00','2015-12-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(784,'2015-12-30 00:00:00',3,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'Rice ',1,'2015-12-30 00:00:00','2015-12-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(785,'2015-12-31 00:00:00',3,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'meat fish ect...',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(786,'2015-12-31 00:00:00',3,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'Vegetables',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(787,'2015-12-31 00:00:00',3,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'Milk',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(788,'2015-12-31 00:00:00',3,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'Salary to the helpers',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(789,'2015-12-31 00:00:00',3,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'Salary  Paid to sisters',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(790,'2015-12-09 00:00:00',1,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'',1,'2015-12-09 00:00:00','2015-12-09 00:00:00',0,0,0.00,0.00,'School fees for Nayana',0,0,'','',0,'',0,NULL,0,NULL),(791,'2015-12-11 00:00:00',1,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'Medicine for poor patients',1,'2015-12-11 00:00:00','2015-12-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(792,'2015-12-11 00:00:00',1,'07','PY','GN',0,0,'N',0.00,0,0.00,0,'Medicine for poor patients',1,'2015-12-11 00:00:00','2015-12-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(793,'2015-12-11 00:00:00',1,'08','PY','GN',0,0,'F',0.00,0,0.00,0,'Ration',1,'2015-12-11 00:00:00','2015-12-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(794,'2015-12-11 00:00:00',1,'02','PY','GN',0,0,'F',0.00,0,0.00,0,'Pant shirts etc for the poor',1,'2015-12-11 00:00:00','2015-12-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(795,'2015-12-11 00:00:00',1,'03','PY','GN',0,0,'F',0.00,0,0.00,0,'Dhoti, Shirt piece etc',1,'2015-12-11 00:00:00','2015-12-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(796,'2015-12-11 00:00:00',1,'04','PY','GN',0,0,'F',0.00,0,0.00,0,'Towels etc',1,'2015-12-11 00:00:00','2015-12-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(797,'2015-12-11 00:00:00',1,'05','PY','GN',0,0,'F',0.00,0,0.00,0,'Bedsheets',1,'2015-12-11 00:00:00','2015-12-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(798,'2015-12-13 00:00:00',1,'10','PY','GN',0,0,'N',0.00,0,0.00,0,'Medicine for the poor',1,'2015-12-13 00:00:00','2015-12-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(799,'2015-12-19 00:00:00',1,'11','PY','GN',0,0,'N',0.00,0,0.00,0,'DIESEL',1,'2015-12-19 00:00:00','2015-12-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(800,'2015-12-19 00:00:00',1,'12','PY','GN',0,0,'N',0.00,0,0.00,0,'Medicine for the poor',1,'2015-12-19 00:00:00','2015-12-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(801,'2015-12-19 00:00:00',1,'13','PY','GN',0,0,'F',0.00,0,0.00,0,'Medical bill',1,'2015-12-19 00:00:00','2015-12-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(802,'2015-12-19 00:00:00',1,'14','PY','GN',0,0,'F',0.00,0,0.00,0,'Saree for the poor',1,'2015-12-19 00:00:00','2015-12-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(803,'2015-12-19 00:00:00',1,'15','PY','GN',0,0,'F',0.00,0,0.00,0,'Nighty',1,'2015-12-19 00:00:00','2015-12-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(804,'2015-12-20 00:00:00',1,'16','PY','GN',0,0,'F',0.00,0,0.00,0,'Provitions',1,'2015-12-20 00:00:00','2015-12-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(805,'2015-12-20 00:00:00',1,'17','PY','GN',0,0,'F',0.00,0,0.00,0,'Provisions ',1,'2015-12-20 00:00:00','2015-12-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(806,'2015-12-20 00:00:00',1,'18','PY','GN',0,0,'N',0.00,0,0.00,0,'Chocalates',1,'2015-12-20 00:00:00','2015-12-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(807,'2015-12-20 00:00:00',1,'19','PY','GN',0,0,'F',0.00,0,0.00,0,'T. Shirts ',1,'2015-12-20 00:00:00','2015-12-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(808,'2015-12-20 00:00:00',1,'20','PY','GN',0,0,'F',0.00,0,0.00,0,'Sarees',1,'2015-12-20 00:00:00','2015-12-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(809,'2015-12-20 00:00:00',1,'21','PY','GN',0,0,'F',0.00,0,0.00,0,'Sarees',1,'2015-12-20 00:00:00','2015-12-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(810,'2015-12-20 00:00:00',1,'22','PY','GN',0,0,'F',0.00,0,0.00,0,'sarees',1,'2015-12-20 00:00:00','2015-12-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(811,'2015-12-20 00:00:00',1,'23','PY','GN',0,0,'F',0.00,0,0.00,0,'Soaps etc.',1,'2015-12-20 00:00:00','2015-12-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(812,'2015-12-20 00:00:00',1,'24','PY','GN',0,0,'N',0.00,0,0.00,0,'Pencil etc',1,'2015-12-20 00:00:00','2015-12-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(813,'2015-12-20 00:00:00',1,'25','PY','GN',0,0,'N',0.00,0,0.00,0,'CAKE',1,'2015-12-20 00:00:00','2015-12-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(814,'2015-12-23 00:00:00',1,'26','PY','GN',0,0,'N',0.00,0,0.00,0,'Soaps etc.',1,'2015-12-23 00:00:00','2015-12-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(815,'2015-12-23 00:00:00',1,'27','PY','GN',0,0,'N',0.00,0,0.00,0,'Sweets',1,'2015-12-23 00:00:00','2015-12-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(816,'2015-12-23 00:00:00',1,'28','PY','GN',0,0,'N',0.00,0,0.00,0,'Chocolates',1,'2015-12-23 00:00:00','2015-12-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(817,'2015-12-23 00:00:00',1,'29','PY','GN',0,0,'N',0.00,0,0.00,0,'CHOCALATE',1,'2015-12-23 00:00:00','2015-12-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(818,'2015-12-23 00:00:00',1,'30','PY','GN',0,0,'N',0.00,0,0.00,0,'CAKE',1,'2015-12-23 00:00:00','2015-12-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(819,'2015-12-23 00:00:00',1,'31','PY','GN',0,0,'N',0.00,0,0.00,0,' vaseline',1,'2015-12-23 00:00:00','2015-12-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(820,'2015-12-23 00:00:00',1,'32','PY','GN',0,0,'N',0.00,0,0.00,0,'Shirt ',1,'2015-12-23 00:00:00','2015-12-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(821,'2015-12-28 00:00:00',1,'33','PY','GN',0,0,'N',0.00,0,0.00,0,'Hostel fees 0f Maunika',1,'2015-12-28 00:00:00','2015-12-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(822,'2015-12-28 00:00:00',1,'34','PY','GN',0,0,'N',0.00,0,0.00,0,'School fees for Janak',1,'2015-12-28 00:00:00','2015-12-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(823,'2015-12-28 00:00:00',1,'35','PY','GN',0,0,'N',0.00,0,0.00,0,'MILK',1,'2015-12-28 00:00:00','2015-12-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(824,'2015-12-30 00:00:00',1,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'Medicine for the poor',1,'2015-12-30 00:00:00','2015-12-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(825,'2015-12-30 00:00:00',1,'37','PY','GN',0,0,'N',0.00,0,0.00,0,'Medicine for the poor',1,'2015-12-30 00:00:00','2015-12-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(826,'2015-09-06 00:00:00',1,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Bank interest',1,'2015-09-06 00:00:00','2015-09-06 00:00:00',0,0,0.00,0.00,'Andhra bank',0,0,'','',0,'',0,NULL,0,NULL),(827,'2015-12-02 00:00:00',1,'01','RC','GN',0,0,'N',0.00,0,0.00,0,'From the province- for Christmas sharing',1,'2015-12-02 00:00:00','2015-12-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(828,'2015-12-04 00:00:00',1,'01','CN','GN',0,0,'N',0.00,0,0.00,0,'Self',1,'2015-12-04 00:00:00','2015-12-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(829,'2015-12-09 00:00:00',1,'02','CN','GN',0,0,'N',0.00,0,0.00,0,'Self',1,'2015-12-09 00:00:00','2015-12-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(830,'2015-12-11 00:00:00',1,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Towles',1,'2015-12-11 00:00:00','2015-12-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(831,'2016-01-18 00:00:00',3,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'Boarding Fees Balaji',1,'2016-01-18 00:00:00','2016-01-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(832,'2016-01-19 00:00:00',3,'04','RC','GN',0,0,'F',0.00,0,1.00,0,'Boarding fees Anusha',1,'2016-01-19 00:00:00','2016-01-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(833,'2016-01-19 00:00:00',3,'05','RC','GN',0,0,'F',0.00,0,1.00,0,'Boarding fees Akash',1,'2016-01-19 00:00:00','2016-01-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(834,'2016-01-19 00:00:00',3,'06','RC','GN',0,0,'F',0.00,0,1.00,0,'Boarding fees Vishnuvardhan',1,'2016-01-19 00:00:00','2016-01-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(835,'2016-01-19 00:00:00',3,'07','RC','GN',0,0,'F',0.00,0,1.00,0,' boarding fees Thriveni',1,'2016-01-19 00:00:00','2016-01-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(836,'2016-01-19 00:00:00',3,'08','RC','GN',0,0,'F',0.00,0,1.00,0,'Boarding Fees V. Sandeep',1,'2016-01-19 00:00:00','2016-01-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(837,'2016-01-20 00:00:00',3,'09','RC','GN',0,0,'F',0.00,0,1.00,0,'Boarding Fees V Hemanth',1,'2016-01-20 00:00:00','2016-01-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(838,'2016-01-16 00:00:00',2,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'WITH DRAWN FROM ANDHRA BANK',1,'2016-01-16 00:00:00','2016-01-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(839,'2016-01-16 00:00:00',2,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'School sisters salary for the month of December',1,'2016-01-16 00:00:00','2016-01-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(840,'2016-01-31 00:00:00',2,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'Warden Salary',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(841,'2016-01-31 00:00:00',2,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'SALARY OF SR ALMA TO THE COMMUNITY',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(842,'2016-01-02 00:00:00',2,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Ticket to Mangalore for renewal programme for Srs Lourdu and Catherine',1,'2016-01-02 00:00:00','2016-01-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(843,'2016-01-04 00:00:00',2,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Mllk 1 litre',1,'2016-01-04 00:00:00','2016-01-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(844,'2016-01-04 00:00:00',2,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'Xerox',1,'2016-01-04 00:00:00','2016-01-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(845,'2016-01-04 00:00:00',2,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO WARANGAL',1,'2016-01-04 00:00:00','2016-01-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(846,'2016-01-05 00:00:00',2,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'Petrol for Bike',1,'2016-01-05 00:00:00','2016-01-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(847,'2016-01-06 00:00:00',2,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'CELL RECHARGE',1,'2016-01-06 00:00:00','2016-01-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(848,'2016-01-06 00:00:00',2,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2016-01-06 00:00:00','2016-01-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(849,'2016-01-07 00:00:00',2,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'Conveyance to Reddipalem',1,'2016-01-07 00:00:00','2016-01-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(850,'2016-01-10 00:00:00',2,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Conveya from Secunderabad',1,'2016-01-10 00:00:00','2016-01-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(851,'2016-01-12 00:00:00',2,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'Cofee and tea powder',1,'2016-01-12 00:00:00','2016-01-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(852,'2016-01-12 00:00:00',2,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO SECUNDERABAD',1,'2016-01-12 00:00:00','2016-01-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(853,'2016-01-14 00:00:00',2,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO SECUNDERABAD',1,'2016-01-14 00:00:00','2016-01-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(854,'2016-01-16 00:00:00',2,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'PLASTIC JAR',1,'2016-01-16 00:00:00','2016-01-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(855,'2016-01-16 00:00:00',2,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'Muram 1 tractor',1,'2016-01-16 00:00:00','2016-01-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(856,'2016-01-16 00:00:00',2,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'CEMENT ETC',1,'2016-01-16 00:00:00','2016-01-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(857,'2016-01-16 00:00:00',2,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'MASON CHARGES FOR REPAIR WORK',1,'2016-01-16 00:00:00','2016-01-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(858,'2016-01-16 00:00:00',2,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'CONVEYANCE TO SECUNDERABAD',1,'2016-01-16 00:00:00','2016-01-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(859,'2016-01-19 00:00:00',2,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'BOURNVITA',1,'2016-01-19 00:00:00','2016-01-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(860,'2016-01-19 00:00:00',2,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'Petrol for Bike',1,'2016-01-19 00:00:00','2016-01-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(861,'2016-01-21 00:00:00',2,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'DIESEL FOR JEEP',1,'2016-01-21 00:00:00','2016-01-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(862,'2016-01-21 00:00:00',2,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'CELL RECHARGE',1,'2016-01-21 00:00:00','2016-01-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(863,'2016-01-22 00:00:00',2,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION FROM SHIVA ENTERPRISE',1,'2016-01-22 00:00:00','2016-01-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(864,'2016-01-22 00:00:00',2,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'Electricity Bill-No.920',1,'2016-01-22 00:00:00','2016-01-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(865,'2016-01-22 00:00:00',2,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'ELECTRICITY BILL NO.1240',1,'2016-01-22 00:00:00','2016-01-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(866,'2016-01-24 00:00:00',2,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'Tooth paste',1,'2016-01-24 00:00:00','2016-01-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(867,'2016-01-25 00:00:00',2,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'Conveyance to Guntoor',1,'2016-01-25 00:00:00','2016-01-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(868,'2016-01-26 00:00:00',2,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'DIESEL FOR JEEP',1,'2016-01-26 00:00:00','2016-01-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(869,'2016-01-27 00:00:00',2,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'COMPUTER REPAIR',1,'2016-01-27 00:00:00','2016-01-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(870,'2016-01-27 00:00:00',2,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'PHONE BILL',1,'2016-01-27 00:00:00','2016-01-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(871,'2016-01-31 00:00:00',2,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'PROVISION',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(872,'2016-01-31 00:00:00',2,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'LOCAL CONVEYANCE',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(873,'2016-01-31 00:00:00',2,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'Misceleneous Expenses',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(874,'2016-01-31 00:00:00',2,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'CHARITY FOR POOR',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(875,'2016-01-31 00:00:00',2,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'CONFESSOR AND MASS OFFERING',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(876,'2016-01-31 00:00:00',2,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'REPAIR',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(877,'2016-01-31 00:00:00',2,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO COOK',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(878,'2016-01-31 00:00:00',2,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(879,'2016-01-31 00:00:00',2,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO DHOBI-PARTTIME',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(880,'2016-01-31 00:00:00',2,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'SALRY TO DRIVER',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(881,'2016-01-20 00:00:00',3,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2016-01-20 00:00:00','2016-01-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(882,'2016-01-05 00:00:00',3,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Ration',1,'2016-01-05 00:00:00','2016-01-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(883,'2016-01-06 00:00:00',3,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'CELLRECHARGE',1,'2016-01-06 00:00:00','2016-01-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(884,'2016-01-09 00:00:00',3,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD ETC..',1,'2016-01-09 00:00:00','2016-01-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(885,'2016-01-15 00:00:00',3,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2016-01-15 00:00:00','2016-01-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(886,'2016-01-22 00:00:00',3,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'Dry chilly',1,'2016-01-22 00:00:00','2016-01-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(887,'2016-01-22 00:00:00',3,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'BREAD',1,'2016-01-22 00:00:00','2016-01-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(888,'2016-01-22 00:00:00',3,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2016-01-22 00:00:00','2016-01-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(889,'2016-01-22 00:00:00',3,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2016-01-22 00:00:00','2016-01-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(890,'2016-01-22 00:00:00',3,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'SOAPS',1,'2016-01-22 00:00:00','2016-01-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(891,'2016-01-27 00:00:00',3,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'RATION',1,'2016-01-27 00:00:00','2016-01-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(892,'2016-01-30 00:00:00',3,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'Buns',1,'2016-01-30 00:00:00','2016-01-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(893,'2016-01-30 00:00:00',3,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'MEAT, EGG , FISH',1,'2016-01-30 00:00:00','2016-01-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(894,'2016-01-30 00:00:00',3,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'VEGETABLES',1,'2016-01-30 00:00:00','2016-01-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(895,'2016-01-31 00:00:00',3,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY TO WARDEN',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(896,'2016-01-31 00:00:00',3,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'WAGES TO DHOBI - AYAH',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(897,'2016-01-31 00:00:00',3,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'MILK',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(898,'2016-01-31 00:00:00',3,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'RICE 1 QUINTOL',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(899,'2016-01-12 00:00:00',3,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'Hostel fees Neetin',1,'2016-01-12 00:00:00','2016-01-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(900,'2016-01-18 00:00:00',3,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Hostel fees Gautami',1,'2016-01-18 00:00:00','2016-01-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(901,'2016-01-31 00:00:00',2,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'DSS MANAGEMENT CONTRIBUTION DEPOSITED IN THE BANK',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(902,'2016-01-31 00:00:00',4,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'COLLECTION FROM DISPENSARY',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(903,'2016-01-31 00:00:00',4,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'MEDICINEFOR DISPENSARY',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL),(904,'2016-01-31 00:00:00',4,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'SALARY OF SR ALMA TO THE COMMUNITY',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,'',0,NULL,0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_number_format`
--

LOCK TABLES `voucher_number_format` WRITE;
/*!40000 ALTER TABLE `voucher_number_format` DISABLE KEYS */;
INSERT INTO `voucher_number_format` VALUES (2,2,'01',1,'','1',4,1,2015,1);
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
INSERT INTO `voucher_trans` VALUES (28,1,1303,50000.00,'CR','','',NULL,1,NULL,0,0),(28,2,1,50000.00,'DR','','',NULL,1,NULL,0,0),(29,1,1352,840.00,'CR',NULL,'',NULL,1,NULL,0,0),(29,2,1352,840.00,'DR',NULL,'',NULL,1,NULL,0,0),(30,1,1119,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(30,2,1119,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(30,3,1119,5500.00,'CR',NULL,'',NULL,1,NULL,0,0),(30,4,1119,5500.00,'CR',NULL,'',NULL,1,NULL,0,0),(30,5,1,18500.00,'DR',NULL,'',NULL,1,NULL,0,0),(31,1,1106,1700.00,'CR',NULL,'',NULL,1,NULL,0,0),(31,2,1,1700.00,'DR',NULL,'',NULL,1,NULL,0,0),(32,1,1353,30000.00,'CR',NULL,'',NULL,1,NULL,0,0),(32,2,1,30000.00,'DR',NULL,'',NULL,1,NULL,0,0),(33,1,1353,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(33,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(34,1,1227,271.00,'DR',NULL,'',NULL,1,NULL,0,0),(34,2,1,271.00,'CR',NULL,'',NULL,1,NULL,0,0),(35,1,1155,480.00,'DR',NULL,'',NULL,1,NULL,0,0),(35,2,1,480.00,'CR',NULL,'',NULL,1,NULL,0,0),(36,1,1211,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(36,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(37,1,1221,205.00,'DR',NULL,'',NULL,1,NULL,0,0),(37,2,1,205.00,'CR',NULL,'',NULL,1,NULL,0,0),(38,1,1221,260.00,'DR',NULL,'',NULL,1,NULL,0,0),(38,2,1,260.00,'CR',NULL,'',NULL,1,NULL,0,0),(39,1,1236,288.00,'DR',NULL,'',NULL,1,NULL,0,0),(39,2,1,288.00,'CR',NULL,'',NULL,1,NULL,0,0),(40,1,1221,380.00,'DR',NULL,'',NULL,1,NULL,0,0),(40,2,1,380.00,'CR',NULL,'',NULL,1,NULL,0,0),(41,1,1221,179.00,'DR',NULL,'',NULL,1,NULL,0,0),(41,2,1,179.00,'CR',NULL,'',NULL,1,NULL,0,0),(42,1,1238,72700.00,'DR',NULL,'',NULL,1,NULL,0,0),(42,2,1353,72700.00,'CR',NULL,'','2015-04-05 11:30:00',1,NULL,0,0),(43,1,1170,6.00,'DR',NULL,'',NULL,1,NULL,0,0),(43,2,1353,6.00,'CR',NULL,'','2015-04-05 11:30:00',1,NULL,0,0),(44,1,1224,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(44,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(45,1,1238,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(45,2,1,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(46,1,1241,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(46,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(47,1,1249,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(47,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(48,1,1226,322.00,'DR',NULL,'',NULL,1,NULL,0,0),(48,2,1,322.00,'CR',NULL,'',NULL,1,NULL,0,0),(49,1,1226,330.00,'DR',NULL,'',NULL,1,NULL,0,0),(49,2,1,330.00,'CR',NULL,'',NULL,1,NULL,0,0),(50,1,1245,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(50,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(51,1,1221,290.00,'DR',NULL,'',NULL,1,NULL,0,0),(51,2,1,290.00,'CR',NULL,'',NULL,1,NULL,0,0),(52,1,1171,60.00,'DR',NULL,'',NULL,1,NULL,0,0),(52,2,1,60.00,'CR',NULL,'',NULL,1,NULL,0,0),(53,1,1221,60.00,'DR',NULL,'',NULL,1,NULL,0,0),(53,2,1,60.00,'CR',NULL,'',NULL,1,NULL,0,0),(54,1,1241,1300.00,'DR',NULL,'',NULL,1,NULL,0,0),(54,2,1,1300.00,'CR',NULL,'',NULL,1,NULL,0,0),(55,1,1211,350.00,'DR',NULL,'',NULL,1,NULL,0,0),(55,2,1,350.00,'CR',NULL,'',NULL,1,NULL,0,0),(56,1,1171,88.00,'DR',NULL,'',NULL,1,NULL,0,0),(56,2,1,88.00,'CR',NULL,'',NULL,1,NULL,0,0),(57,1,1226,168.00,'DR',NULL,'',NULL,1,NULL,0,0),(57,2,1,168.00,'CR',NULL,'',NULL,1,NULL,0,0),(58,1,1221,70.00,'DR',NULL,'',NULL,1,NULL,0,0),(58,2,1,70.00,'CR',NULL,'',NULL,1,NULL,0,0),(59,1,1221,1039.00,'DR',NULL,'',NULL,1,NULL,0,0),(59,2,1,1039.00,'CR',NULL,'',NULL,1,NULL,0,0),(60,1,1249,70.00,'DR',NULL,'',NULL,1,NULL,0,0),(60,2,1,70.00,'CR',NULL,'',NULL,1,NULL,0,0),(61,1,1171,130.00,'DR',NULL,'',NULL,1,NULL,0,0),(61,2,1,130.00,'CR',NULL,'',NULL,1,NULL,0,0),(62,1,1249,180.00,'DR',NULL,'',NULL,1,NULL,0,0),(62,2,1,180.00,'CR',NULL,'',NULL,1,NULL,0,0),(63,1,1152,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(63,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(64,1,1221,213.00,'DR',NULL,'',NULL,1,NULL,0,0),(64,2,1,213.00,'CR',NULL,'',NULL,1,NULL,0,0),(65,1,1171,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(65,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(66,1,1245,350.00,'DR',NULL,'',NULL,1,NULL,0,0),(66,2,1,350.00,'CR',NULL,'',NULL,1,NULL,0,0),(67,1,1221,93.00,'DR',NULL,'',NULL,1,NULL,0,0),(67,2,1,93.00,'CR',NULL,'',NULL,1,NULL,0,0),(68,1,1238,7500.00,'DR',NULL,'',NULL,1,NULL,0,0),(68,2,1,7500.00,'CR',NULL,'',NULL,1,NULL,0,0),(69,1,1238,2450.00,'DR',NULL,'',NULL,1,NULL,0,0),(69,2,1,2450.00,'CR',NULL,'',NULL,1,NULL,0,0),(70,1,1241,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(70,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(71,1,1221,270.00,'DR',NULL,'',NULL,1,NULL,0,0),(71,2,1,270.00,'CR',NULL,'',NULL,1,NULL,0,0),(72,1,1238,2315.00,'DR',NULL,'',NULL,1,NULL,0,0),(72,2,1,2315.00,'CR',NULL,'',NULL,1,NULL,0,0),(73,1,1221,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(73,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(74,1,1238,8750.00,'DR',NULL,'',NULL,1,NULL,0,0),(74,2,1,8750.00,'CR',NULL,'',NULL,1,NULL,0,0),(75,1,1227,383.00,'DR',NULL,'',NULL,1,NULL,0,0),(75,2,1,383.00,'CR',NULL,'',NULL,1,NULL,0,0),(76,1,1245,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(76,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(77,1,1223,750.00,'DR',NULL,'',NULL,1,NULL,0,0),(77,2,1,750.00,'CR',NULL,'',NULL,1,NULL,0,0),(78,1,1238,8750.00,'DR',NULL,'',NULL,1,NULL,0,0),(78,2,1,8750.00,'CR',NULL,'',NULL,1,NULL,0,0),(79,1,1160,270.00,'DR',NULL,'',NULL,1,NULL,0,0),(79,2,1,270.00,'CR',NULL,'',NULL,1,NULL,0,0),(80,1,1152,510.00,'DR',NULL,'',NULL,1,NULL,0,0),(80,2,1,510.00,'CR',NULL,'',NULL,1,NULL,0,0),(81,1,1152,2320.00,'DR',NULL,'',NULL,1,NULL,0,0),(81,2,1,2320.00,'CR',NULL,'',NULL,1,NULL,0,0),(82,1,1152,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(82,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(83,1,1238,8750.00,'DR',NULL,'',NULL,1,NULL,0,0),(83,2,1,8750.00,'CR',NULL,'',NULL,1,NULL,0,0),(84,1,1221,1300.00,'DR',NULL,'',NULL,1,NULL,0,0),(84,2,1,1300.00,'CR',NULL,'',NULL,1,NULL,0,0),(85,1,1171,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(85,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(86,1,1221,4139.00,'DR',NULL,'',NULL,1,NULL,0,0),(86,2,1,4139.00,'CR',NULL,'',NULL,1,NULL,0,0),(87,1,1171,620.00,'DR',NULL,'',NULL,1,NULL,0,0),(87,2,1,620.00,'CR',NULL,'',NULL,1,NULL,0,0),(88,1,1197,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(88,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(89,1,1245,330.00,'DR',NULL,'',NULL,1,NULL,0,0),(89,2,1,330.00,'CR',NULL,'',NULL,1,NULL,0,0),(90,1,1119,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(90,2,1119,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(90,3,1,7500.00,'DR',NULL,'',NULL,1,NULL,0,0),(91,1,1221,52.00,'DR',NULL,'',NULL,1,NULL,0,0),(91,2,1,52.00,'CR',NULL,'',NULL,1,NULL,0,0),(92,1,1205,294.00,'DR',NULL,'',NULL,1,NULL,0,0),(92,2,1,294.00,'CR',NULL,'',NULL,1,NULL,0,0),(93,1,1249,520.00,'DR',NULL,'',NULL,1,NULL,0,0),(93,2,1,520.00,'CR',NULL,'',NULL,1,NULL,0,0),(94,1,1249,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(94,2,1,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(95,1,1211,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(95,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(96,1,1221,711.00,'DR',NULL,'',NULL,1,NULL,0,0),(96,2,1,711.00,'CR',NULL,'',NULL,1,NULL,0,0),(97,1,1249,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(97,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(98,1,1171,875.00,'DR',NULL,'',NULL,1,NULL,0,0),(98,2,1,875.00,'CR',NULL,'',NULL,1,NULL,0,0),(99,1,1171,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(99,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(100,1,1205,433.00,'DR',NULL,'',NULL,1,NULL,0,0),(100,2,1,433.00,'CR',NULL,'',NULL,1,NULL,0,0),(101,1,1171,1100.00,'DR',NULL,'',NULL,1,NULL,0,0),(101,2,1,1100.00,'CR',NULL,'',NULL,1,NULL,0,0),(102,1,1171,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(102,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(103,1,1171,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(103,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(104,1,1171,720.00,'DR',NULL,'',NULL,1,NULL,0,0),(104,2,1,720.00,'CR',NULL,'',NULL,1,NULL,0,0),(105,1,1155,530.00,'DR',NULL,'',NULL,1,NULL,0,0),(105,2,1,530.00,'CR',NULL,'',NULL,1,NULL,0,0),(106,1,1171,600.00,'DR',NULL,'',NULL,1,NULL,0,0),(106,2,1,600.00,'CR',NULL,'',NULL,1,NULL,0,0),(107,1,1227,550.00,'DR',NULL,'',NULL,1,NULL,0,0),(107,2,1,550.00,'CR',NULL,'',NULL,1,NULL,0,0),(108,1,1224,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(108,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(109,1,1238,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(109,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(110,1,1238,1400.00,'DR',NULL,'',NULL,1,NULL,0,0),(110,2,1,1400.00,'CR',NULL,'',NULL,1,NULL,0,0),(111,1,1238,2450.00,'DR',NULL,'',NULL,1,NULL,0,0),(111,2,1,2450.00,'CR',NULL,'',NULL,1,NULL,0,0),(112,1,1154,90.00,'DR',NULL,'',NULL,1,NULL,0,0),(112,2,1,90.00,'CR',NULL,'',NULL,1,NULL,0,0),(113,1,1171,80.00,'DR',NULL,'',NULL,1,NULL,0,0),(113,2,1,80.00,'CR',NULL,'',NULL,1,NULL,0,0),(114,1,1238,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(114,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(115,1,1238,2450.00,'DR',NULL,'',NULL,1,NULL,0,0),(115,2,1,2450.00,'CR',NULL,'',NULL,1,NULL,0,0),(116,1,1238,1400.00,'DR',NULL,'',NULL,1,NULL,0,0),(116,2,1,1400.00,'CR',NULL,'',NULL,1,NULL,0,0),(117,1,1238,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(117,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(118,1,1238,1400.00,'DR',NULL,'',NULL,1,NULL,0,0),(118,2,1,1400.00,'CR',NULL,'',NULL,1,NULL,0,0),(119,1,1238,2450.00,'DR',NULL,'',NULL,1,NULL,0,0),(119,2,1,2450.00,'CR',NULL,'',NULL,1,NULL,0,0),(120,1,1241,882.00,'DR',NULL,'',NULL,1,NULL,0,0),(120,2,1,882.00,'CR',NULL,'',NULL,1,NULL,0,0),(121,1,1171,270.00,'DR',NULL,'',NULL,1,NULL,0,0),(121,2,1,270.00,'CR',NULL,'',NULL,1,NULL,0,0),(122,1,1211,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(122,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(123,1,1205,850.00,'DR',NULL,'',NULL,1,NULL,0,0),(123,2,1,850.00,'CR',NULL,'',NULL,1,NULL,0,0),(124,1,1221,1600.00,'DR',NULL,'',NULL,1,NULL,0,0),(124,2,1,1600.00,'CR',NULL,'',NULL,1,NULL,0,0),(125,1,1226,892.00,'DR',NULL,'',NULL,1,NULL,0,0),(125,2,1,892.00,'CR',NULL,'',NULL,1,NULL,0,0),(126,1,1236,430.00,'DR',NULL,'',NULL,1,NULL,0,0),(126,2,1,430.00,'CR',NULL,'',NULL,1,NULL,0,0),(127,1,1249,20.00,'DR',NULL,'',NULL,1,NULL,0,0),(127,2,1,20.00,'CR',NULL,'',NULL,1,NULL,0,0),(128,1,1221,130.00,'DR',NULL,'',NULL,1,NULL,0,0),(128,2,1,130.00,'CR',NULL,'',NULL,1,NULL,0,0),(129,1,1221,52.00,'DR',NULL,'',NULL,1,NULL,0,0),(129,2,1,52.00,'CR',NULL,'',NULL,1,NULL,0,0),(130,1,1224,600.00,'DR',NULL,'',NULL,1,NULL,0,0),(130,2,1,600.00,'CR',NULL,'',NULL,1,NULL,0,0),(131,1,1154,255.00,'DR',NULL,'',NULL,1,NULL,0,0),(131,2,1,255.00,'CR',NULL,'',NULL,1,NULL,0,0),(132,1,1224,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(132,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(133,1,1224,855.00,'DR',NULL,'',NULL,1,NULL,0,0),(133,2,1,855.00,'CR',NULL,'',NULL,1,NULL,0,0),(134,1,1224,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(134,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(135,1,1221,99.00,'DR',NULL,'',NULL,1,NULL,0,0),(135,2,1,99.00,'CR',NULL,'',NULL,1,NULL,0,0),(136,1,1221,473.00,'DR',NULL,'',NULL,1,NULL,0,0),(136,2,1,473.00,'CR',NULL,'',NULL,1,NULL,0,0),(137,1,1205,223.00,'DR',NULL,'',NULL,1,NULL,0,0),(137,2,1,223.00,'CR',NULL,'',NULL,1,NULL,0,0),(138,1,1238,1200.00,'DR',NULL,'',NULL,1,NULL,0,0),(138,2,1,1200.00,'CR',NULL,'',NULL,1,NULL,0,0),(139,1,1238,1400.00,'DR',NULL,'',NULL,1,NULL,0,0),(139,2,1,1400.00,'CR',NULL,'',NULL,1,NULL,0,0),(140,1,1238,1400.00,'DR',NULL,'',NULL,1,NULL,0,0),(140,2,1,1400.00,'CR',NULL,'',NULL,1,NULL,0,0),(141,1,1238,2450.00,'DR',NULL,'',NULL,1,NULL,0,0),(141,2,1,2450.00,'CR',NULL,'',NULL,1,NULL,0,0),(142,1,1238,2450.00,'DR',NULL,'',NULL,1,NULL,0,0),(142,2,1,2450.00,'CR',NULL,'',NULL,1,NULL,0,0),(143,1,1238,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(143,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(144,1,1238,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(144,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(145,1,1221,60.00,'DR',NULL,'',NULL,1,NULL,0,0),(145,2,1,60.00,'CR',NULL,'',NULL,1,NULL,0,0),(146,1,1221,30.00,'DR',NULL,'',NULL,1,NULL,0,0),(146,2,1,30.00,'CR',NULL,'',NULL,1,NULL,0,0),(147,1,1157,3774.00,'DR',NULL,'',NULL,1,NULL,0,0),(147,2,1,3774.00,'CR',NULL,'',NULL,1,NULL,0,0),(148,1,1157,3418.00,'DR',NULL,'',NULL,1,NULL,0,0),(148,2,1,3418.00,'CR',NULL,'',NULL,1,NULL,0,0),(149,1,1205,193.00,'DR',NULL,'',NULL,1,NULL,0,0),(149,2,1,193.00,'CR',NULL,'',NULL,1,NULL,0,0),(150,1,1171,950.00,'DR',NULL,'',NULL,1,NULL,0,0),(150,2,1,950.00,'CR',NULL,'',NULL,1,NULL,0,0),(151,1,1221,78.00,'DR',NULL,'',NULL,1,NULL,0,0),(151,2,1,78.00,'CR',NULL,'',NULL,1,NULL,0,0),(152,1,1155,290.00,'DR',NULL,'',NULL,1,NULL,0,0),(152,2,1,290.00,'CR',NULL,'',NULL,1,NULL,0,0),(153,1,1171,600.00,'DR',NULL,'',NULL,1,NULL,0,0),(153,2,1,600.00,'CR',NULL,'',NULL,1,NULL,0,0),(154,1,1211,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(154,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(155,1,1205,110.00,'DR',NULL,'',NULL,1,NULL,0,0),(155,2,1,110.00,'CR',NULL,'',NULL,1,NULL,0,0),(156,1,1224,290.00,'DR',NULL,'',NULL,1,NULL,0,0),(156,2,1,290.00,'CR',NULL,'',NULL,1,NULL,0,0),(157,1,1238,1400.00,'DR',NULL,'',NULL,1,NULL,0,0),(157,2,1,1400.00,'CR',NULL,'',NULL,1,NULL,0,0),(158,1,1238,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(158,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(159,1,1238,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(159,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(160,1,1238,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(160,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(161,1,1238,1200.00,'DR',NULL,'',NULL,1,NULL,0,0),(161,2,1,1200.00,'CR',NULL,'',NULL,1,NULL,0,0),(162,1,1221,210.00,'DR',NULL,'',NULL,1,NULL,0,0),(162,2,1,210.00,'CR',NULL,'',NULL,1,NULL,0,0),(163,1,1224,850.00,'DR',NULL,'',NULL,1,NULL,0,0),(163,2,1,850.00,'CR',NULL,'',NULL,1,NULL,0,0),(164,1,1227,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(164,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(165,1,1227,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(165,2,1,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(166,1,1227,134.00,'DR',NULL,'',NULL,1,NULL,0,0),(166,2,1,134.00,'CR',NULL,'',NULL,1,NULL,0,0),(167,1,1211,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(167,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(168,1,1249,350.00,'DR',NULL,'',NULL,1,NULL,0,0),(168,2,1,350.00,'CR',NULL,'',NULL,1,NULL,0,0),(169,1,1226,403.00,'DR',NULL,'',NULL,1,NULL,0,0),(169,2,1,403.00,'CR',NULL,'',NULL,1,NULL,0,0),(170,1,1221,841.00,'DR',NULL,'',NULL,1,NULL,0,0),(170,2,1,841.00,'CR',NULL,'',NULL,1,NULL,0,0),(171,1,1236,115.00,'DR',NULL,'',NULL,1,NULL,0,0),(171,2,1,115.00,'CR',NULL,'',NULL,1,NULL,0,0),(172,1,1189,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(172,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(173,1,1189,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(173,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(174,1,1221,1196.00,'DR',NULL,'',NULL,1,NULL,0,0),(174,2,1,1196.00,'CR',NULL,'',NULL,1,NULL,0,0),(175,1,1152,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(175,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(176,1,1152,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(176,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(177,1,1152,354.00,'DR',NULL,'',NULL,1,NULL,0,0),(177,2,1,354.00,'CR',NULL,'',NULL,1,NULL,0,0),(178,1,1221,3555.00,'DR',NULL,'',NULL,1,NULL,0,0),(178,2,1,3555.00,'CR',NULL,'',NULL,1,NULL,0,0),(179,1,1206,88.00,'DR',NULL,'',NULL,1,NULL,0,0),(179,2,1,88.00,'CR',NULL,'',NULL,1,NULL,0,0),(180,1,1171,112.00,'DR',NULL,'',NULL,1,NULL,0,0),(180,2,1,112.00,'CR',NULL,'',NULL,1,NULL,0,0),(181,1,1197,205.00,'DR',NULL,'',NULL,1,NULL,0,0),(181,2,1,205.00,'CR',NULL,'',NULL,1,NULL,0,0),(182,1,1236,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(182,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(183,1,1238,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(183,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(184,1,1238,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(184,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(185,1,1224,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(185,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(186,1,1221,225.00,'DR',NULL,'',NULL,1,NULL,0,0),(186,2,1,225.00,'CR',NULL,'',NULL,1,NULL,0,0),(187,1,1288,100000.00,'CR',NULL,'',NULL,1,NULL,0,0),(187,2,1353,100000.00,'DR',NULL,'','2015-06-02 11:30:00',1,NULL,0,0),(188,1,1130,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(188,2,1,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(189,1,1119,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(189,2,1119,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(189,3,1119,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(189,4,1119,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(189,5,1,17500.00,'DR',NULL,'',NULL,1,NULL,0,0),(190,1,1353,30000.00,'CR',NULL,'',NULL,1,NULL,0,0),(190,2,1,30000.00,'DR',NULL,'',NULL,1,NULL,0,0),(191,1,1227,383.00,'DR',NULL,'',NULL,1,NULL,0,0),(191,2,1,383.00,'CR',NULL,'',NULL,1,NULL,0,0),(192,1,1205,1296.00,'DR',NULL,'',NULL,1,NULL,0,0),(192,2,1,1296.00,'CR',NULL,'',NULL,1,NULL,0,0),(193,1,1223,815.00,'DR',NULL,'',NULL,1,NULL,0,0),(193,2,1,815.00,'CR',NULL,'',NULL,1,NULL,0,0),(194,1,1205,187.00,'DR',NULL,'',NULL,1,NULL,0,0),(194,2,1,187.00,'CR',NULL,'',NULL,1,NULL,0,0),(195,1,1171,40.00,'DR',NULL,'',NULL,1,NULL,0,0),(195,2,1,40.00,'CR',NULL,'',NULL,1,NULL,0,0),(196,1,1205,45.00,'DR',NULL,'',NULL,1,NULL,0,0),(196,2,1,45.00,'CR',NULL,'',NULL,1,NULL,0,0),(197,1,1221,60.00,'DR',NULL,'',NULL,1,NULL,0,0),(197,2,1,60.00,'CR',NULL,'',NULL,1,NULL,0,0),(198,1,1238,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(198,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(199,1,1221,47.00,'DR',NULL,'',NULL,1,NULL,0,0),(199,2,1,47.00,'CR',NULL,'',NULL,1,NULL,0,0),(200,1,1205,75.00,'DR',NULL,'',NULL,1,NULL,0,0),(200,2,1,75.00,'CR',NULL,'',NULL,1,NULL,0,0),(201,1,1171,290.00,'DR',NULL,'',NULL,1,NULL,0,0),(201,2,1,290.00,'CR',NULL,'',NULL,1,NULL,0,0),(202,1,1171,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(202,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(203,1,1226,248.00,'DR',NULL,'',NULL,1,NULL,0,0),(203,2,1,248.00,'CR',NULL,'',NULL,1,NULL,0,0),(204,1,1221,1424.00,'DR',NULL,'',NULL,1,NULL,0,0),(204,2,1,1424.00,'CR',NULL,'',NULL,1,NULL,0,0),(205,1,1226,443.00,'DR',NULL,'',NULL,1,NULL,0,0),(205,2,1,443.00,'CR',NULL,'',NULL,1,NULL,0,0),(206,1,1249,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(206,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(207,1,1152,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(207,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(208,1,1226,83.00,'DR',NULL,'',NULL,1,NULL,0,0),(208,2,1,83.00,'CR',NULL,'',NULL,1,NULL,0,0),(209,1,1221,144.00,'DR',NULL,'',NULL,1,NULL,0,0),(209,2,1,144.00,'CR',NULL,'',NULL,1,NULL,0,0),(210,1,1205,182.00,'DR',NULL,'',NULL,1,NULL,0,0),(210,2,1,182.00,'CR',NULL,'',NULL,1,NULL,0,0),(211,1,1205,127.00,'DR',NULL,'',NULL,1,NULL,0,0),(211,2,1,127.00,'CR',NULL,'',NULL,1,NULL,0,0),(212,1,1221,860.00,'DR',NULL,'',NULL,1,NULL,0,0),(212,2,1,860.00,'CR',NULL,'',NULL,1,NULL,0,0),(213,1,1221,900.00,'DR',NULL,'',NULL,1,NULL,0,0),(213,2,1,900.00,'CR',NULL,'',NULL,1,NULL,0,0),(214,1,1227,112.00,'DR',NULL,'',NULL,1,NULL,0,0),(214,2,1,112.00,'CR',NULL,'',NULL,1,NULL,0,0),(215,1,1205,376.00,'DR',NULL,'',NULL,1,NULL,0,0),(215,2,1,376.00,'CR',NULL,'',NULL,1,NULL,0,0),(216,1,1152,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(216,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(217,1,1241,1010.00,'DR',NULL,'',NULL,1,NULL,0,0),(217,2,1,1010.00,'CR',NULL,'',NULL,1,NULL,0,0),(218,1,1171,80.00,'DR',NULL,'',NULL,1,NULL,0,0),(218,2,1,80.00,'CR',NULL,'',NULL,1,NULL,0,0),(219,1,1155,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(219,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(220,1,1211,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(220,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(221,1,1160,210.00,'DR',NULL,'',NULL,1,NULL,0,0),(221,2,1,210.00,'CR',NULL,'',NULL,1,NULL,0,0),(222,1,1152,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(222,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(223,1,1152,185.00,'DR',NULL,'',NULL,1,NULL,0,0),(223,2,1,185.00,'CR',NULL,'',NULL,1,NULL,0,0),(224,1,1152,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(224,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(225,1,1221,4789.00,'DR',NULL,'',NULL,1,NULL,0,0),(225,2,1,4789.00,'CR',NULL,'',NULL,1,NULL,0,0),(226,1,1206,165.00,'DR',NULL,'',NULL,1,NULL,0,0),(226,2,1,165.00,'CR',NULL,'',NULL,1,NULL,0,0),(227,1,1171,435.00,'DR',NULL,'',NULL,1,NULL,0,0),(227,2,1,435.00,'CR',NULL,'',NULL,1,NULL,0,0),(228,1,1197,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(228,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(229,1,1236,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(229,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(230,1,1238,67.00,'DR',NULL,'',NULL,1,NULL,0,0),(230,2,1,67.00,'CR',NULL,'',NULL,1,NULL,0,0),(231,1,1310,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(231,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(232,1,1096,800.00,'CR',NULL,'',NULL,1,NULL,0,0),(232,2,1,800.00,'DR',NULL,'',NULL,1,NULL,0,0),(233,1,1096,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(233,2,1,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(234,1,1096,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(234,2,1,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(235,1,1096,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(235,2,1,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(236,1,1221,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(236,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(237,1,1221,203.00,'DR',NULL,'',NULL,1,NULL,0,0),(237,2,1,203.00,'CR',NULL,'',NULL,1,NULL,0,0),(238,1,1221,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(238,2,1,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(239,1,1221,1250.00,'DR',NULL,'',NULL,1,NULL,0,0),(239,2,1,1250.00,'CR',NULL,'',NULL,1,NULL,0,0),(240,1,1221,275.00,'DR',NULL,'',NULL,1,NULL,0,0),(240,2,1,275.00,'CR',NULL,'',NULL,1,NULL,0,0),(241,1,1221,172.00,'DR',NULL,'',NULL,1,NULL,0,0),(241,2,1,172.00,'CR',NULL,'',NULL,1,NULL,0,0),(242,1,1221,690.00,'DR',NULL,'',NULL,1,NULL,0,0),(242,2,1,690.00,'CR',NULL,'',NULL,1,NULL,0,0),(243,1,1221,455.00,'DR',NULL,'',NULL,1,NULL,0,0),(243,2,1,455.00,'CR',NULL,'',NULL,1,NULL,0,0),(244,1,1221,705.00,'DR',NULL,'',NULL,1,NULL,0,0),(244,2,1,705.00,'CR',NULL,'',NULL,1,NULL,0,0),(245,1,1221,815.00,'DR',NULL,'',NULL,1,NULL,0,0),(245,2,1,815.00,'CR',NULL,'',NULL,1,NULL,0,0),(246,1,1119,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(246,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(247,1,1152,1800.00,'DR',NULL,'',NULL,1,NULL,0,0),(247,2,1,1800.00,'CR',NULL,'',NULL,1,NULL,0,0),(248,1,1221,803.00,'DR',NULL,'',NULL,1,NULL,0,0),(248,2,1,803.00,'CR',NULL,'',NULL,1,NULL,0,0),(249,1,1119,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(249,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(250,1,1152,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(250,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(251,1,1096,2800.00,'CR',NULL,'',NULL,1,NULL,0,0),(251,2,1,2800.00,'DR',NULL,'',NULL,1,NULL,0,0),(252,1,1096,26000.00,'CR',NULL,'',NULL,1,NULL,0,0),(252,2,1,26000.00,'DR',NULL,'',NULL,1,NULL,0,0),(253,1,1096,7000.00,'CR',NULL,'',NULL,1,NULL,0,0),(253,2,1,7000.00,'DR',NULL,'',NULL,1,NULL,0,0),(254,1,1096,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(254,2,1,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(255,1,1226,2096.00,'DR',NULL,'',NULL,1,NULL,0,0),(255,2,1,2096.00,'CR',NULL,'',NULL,1,NULL,0,0),(256,1,1221,2326.00,'DR',NULL,'',NULL,1,NULL,0,0),(256,2,1,2326.00,'CR',NULL,'',NULL,1,NULL,0,0),(257,1,1155,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(257,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(258,1,1221,156.00,'DR',NULL,'',NULL,1,NULL,0,0),(258,2,1,156.00,'CR',NULL,'',NULL,1,NULL,0,0),(259,1,1221,151.00,'DR',NULL,'',NULL,1,NULL,0,0),(259,2,1,151.00,'CR',NULL,'',NULL,1,NULL,0,0),(260,1,1241,1360.00,'DR',NULL,'',NULL,1,NULL,0,0),(260,2,1,1360.00,'CR',NULL,'',NULL,1,NULL,0,0),(261,1,1221,740.00,'DR',NULL,'',NULL,1,NULL,0,0),(261,2,1,740.00,'CR',NULL,'',NULL,1,NULL,0,0),(262,1,1221,450.00,'DR',NULL,'',NULL,1,NULL,0,0),(262,2,1,450.00,'CR',NULL,'',NULL,1,NULL,0,0),(263,1,1119,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(263,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(264,1,1152,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(264,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(265,1,1119,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(265,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(266,1,1100,4350.00,'CR',NULL,'',NULL,1,NULL,0,0),(266,2,1,4350.00,'DR',NULL,'',NULL,1,NULL,0,0),(267,1,1100,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(267,2,1,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(268,1,1171,170.00,'DR',NULL,'',NULL,1,NULL,0,0),(268,2,1,170.00,'CR',NULL,'',NULL,1,NULL,0,0),(269,1,1119,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(269,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(270,1,1100,2680.00,'CR',NULL,'',NULL,1,NULL,0,0),(270,2,1,2680.00,'DR',NULL,'',NULL,1,NULL,0,0),(271,1,1227,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(271,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(272,1,1119,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(272,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(273,1,1119,21500.00,'CR',NULL,'',NULL,1,NULL,0,0),(273,2,1,21500.00,'DR',NULL,'',NULL,1,NULL,0,0),(274,1,1221,90.00,'DR',NULL,'',NULL,1,NULL,0,0),(274,2,1,90.00,'CR',NULL,'',NULL,1,NULL,0,0),(275,1,1221,130.00,'DR',NULL,'',NULL,1,NULL,0,0),(275,2,1,130.00,'CR',NULL,'',NULL,1,NULL,0,0),(276,1,1152,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(276,2,1,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(277,1,1181,860.00,'DR',NULL,'',NULL,1,NULL,0,0),(277,2,1,860.00,'CR',NULL,'',NULL,1,NULL,0,0),(278,1,1223,750.00,'DR',NULL,'',NULL,1,NULL,0,0),(278,2,1,750.00,'CR',NULL,'',NULL,1,NULL,0,0),(279,1,1221,101.00,'DR',NULL,'',NULL,1,NULL,0,0),(279,2,1,101.00,'CR',NULL,'',NULL,1,NULL,0,0),(280,1,1249,170.00,'DR',NULL,'',NULL,1,NULL,0,0),(280,2,1,170.00,'CR',NULL,'',NULL,1,NULL,0,0),(281,1,1227,380.00,'DR',NULL,'',NULL,1,NULL,0,0),(281,2,1,380.00,'CR',NULL,'',NULL,1,NULL,0,0),(282,1,1238,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(282,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(283,1,1249,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(283,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(284,1,1238,4550.00,'DR',NULL,'',NULL,1,NULL,0,0),(284,2,1,4550.00,'CR',NULL,'',NULL,1,NULL,0,0),(285,1,1238,4200.00,'DR',NULL,'',NULL,1,NULL,0,0),(285,2,1,4200.00,'CR',NULL,'',NULL,1,NULL,0,0),(286,1,1238,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(286,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(287,1,1152,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(287,2,1,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(288,1,1221,116.00,'DR',NULL,'',NULL,1,NULL,0,0),(288,2,1,116.00,'CR',NULL,'',NULL,1,NULL,0,0),(289,1,1221,197.00,'DR',NULL,'',NULL,1,NULL,0,0),(289,2,1,197.00,'CR',NULL,'',NULL,1,NULL,0,0),(290,1,1155,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(290,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(291,1,1221,107.00,'DR',NULL,'',NULL,1,NULL,0,0),(291,2,1,107.00,'CR',NULL,'',NULL,1,NULL,0,0),(292,1,1154,90.00,'DR',NULL,'',NULL,1,NULL,0,0),(292,2,1,90.00,'CR',NULL,'',NULL,1,NULL,0,0),(293,1,1227,308.00,'DR',NULL,'',NULL,1,NULL,0,0),(293,2,1,308.00,'CR',NULL,'',NULL,1,NULL,0,0),(294,1,1227,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(294,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(295,1,1157,3315.00,'DR',NULL,'',NULL,1,NULL,0,0),(295,2,1,3315.00,'CR',NULL,'',NULL,1,NULL,0,0),(296,1,1157,1605.00,'DR',NULL,'',NULL,1,NULL,0,0),(296,2,1,1605.00,'CR',NULL,'',NULL,1,NULL,0,0),(297,1,1171,45.00,'DR',NULL,'',NULL,1,NULL,0,0),(297,2,1,45.00,'CR',NULL,'',NULL,1,NULL,0,0),(298,1,1205,145.00,'DR',NULL,'',NULL,1,NULL,0,0),(298,2,1,145.00,'CR',NULL,'',NULL,1,NULL,0,0),(299,1,1226,85.00,'DR',NULL,'',NULL,1,NULL,0,0),(299,2,1,85.00,'CR',NULL,'',NULL,1,NULL,0,0),(300,1,1221,85.00,'DR',NULL,'',NULL,1,NULL,0,0),(300,2,1,85.00,'CR',NULL,'',NULL,1,NULL,0,0),(301,1,1154,80.00,'DR',NULL,'',NULL,1,NULL,0,0),(301,2,1,80.00,'CR',NULL,'',NULL,1,NULL,0,0),(302,1,1221,60.00,'DR',NULL,'',NULL,1,NULL,0,0),(302,2,1,60.00,'CR',NULL,'',NULL,1,NULL,0,0),(303,1,1221,105.00,'DR',NULL,'',NULL,1,NULL,0,0),(303,2,1,105.00,'CR',NULL,'',NULL,1,NULL,0,0),(304,1,1221,182.00,'DR',NULL,'',NULL,1,NULL,0,0),(304,2,1,182.00,'CR',NULL,'',NULL,1,NULL,0,0),(305,1,1249,170.00,'DR',NULL,'',NULL,1,NULL,0,0),(305,2,1,170.00,'CR',NULL,'',NULL,1,NULL,0,0),(306,1,1171,275.00,'DR',NULL,'',NULL,1,NULL,0,0),(306,2,1,275.00,'CR',NULL,'',NULL,1,NULL,0,0),(307,1,1221,1710.00,'DR',NULL,'',NULL,1,NULL,0,0),(307,2,1,1710.00,'CR',NULL,'',NULL,1,NULL,0,0),(308,1,1152,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(308,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(309,1,1152,685.00,'DR',NULL,'',NULL,1,NULL,0,0),(309,2,1,685.00,'CR',NULL,'',NULL,1,NULL,0,0),(310,1,1152,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(310,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(311,1,1310,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(311,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(312,1,1221,4427.00,'DR',NULL,'',NULL,1,NULL,0,0),(312,2,1,4427.00,'CR',NULL,'',NULL,1,NULL,0,0),(313,1,1171,583.00,'DR',NULL,'',NULL,1,NULL,0,0),(313,2,1,583.00,'CR',NULL,'',NULL,1,NULL,0,0),(314,1,1197,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(314,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(315,1,1236,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(315,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(316,1,1238,140.00,'DR',NULL,'',NULL,1,NULL,0,0),(316,2,1,140.00,'CR',NULL,'',NULL,1,NULL,0,0),(317,1,1353,20000.00,'CR',NULL,'',NULL,1,NULL,0,0),(317,2,1353,20000.00,'CR',NULL,'',NULL,1,NULL,0,0),(317,3,1,40000.00,'DR',NULL,'',NULL,1,NULL,0,0),(318,1,1126,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(318,2,1,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(319,1,1110,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(319,2,1,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(320,1,1119,19500.00,'CR',NULL,'',NULL,1,NULL,0,0),(320,2,1,19500.00,'DR',NULL,'',NULL,1,NULL,0,0),(321,1,1238,2782.00,'DR',NULL,'',NULL,1,NULL,0,0),(321,2,1,2782.00,'CR',NULL,'',NULL,1,NULL,0,0),(322,1,1221,798.00,'DR',NULL,'',NULL,1,NULL,0,0),(322,2,1,798.00,'CR',NULL,'',NULL,1,NULL,0,0),(323,1,1205,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(323,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(324,1,1221,30.00,'DR',NULL,'',NULL,1,NULL,0,0),(324,2,1,30.00,'CR',NULL,'',NULL,1,NULL,0,0),(325,1,1238,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(325,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(326,1,1154,23.00,'DR',NULL,'',NULL,1,NULL,0,0),(326,2,1,23.00,'CR',NULL,'',NULL,1,NULL,0,0),(327,1,1238,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(327,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(328,1,1249,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(328,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(329,1,1221,3180.00,'DR',NULL,'',NULL,1,NULL,0,0),(329,2,1,3180.00,'CR',NULL,'',NULL,1,NULL,0,0),(330,1,1221,555.00,'DR',NULL,'',NULL,1,NULL,0,0),(330,2,1,555.00,'CR',NULL,'',NULL,1,NULL,0,0),(331,1,1226,869.00,'DR',NULL,'',NULL,1,NULL,0,0),(331,2,1,869.00,'CR',NULL,'',NULL,1,NULL,0,0),(332,1,1238,110.00,'DR',NULL,'',NULL,1,NULL,0,0),(332,2,1,110.00,'CR',NULL,'',NULL,1,NULL,0,0),(333,1,1221,254.00,'DR',NULL,'',NULL,1,NULL,0,0),(333,2,1,254.00,'CR',NULL,'',NULL,1,NULL,0,0),(334,1,1238,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(334,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(335,1,1152,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(335,2,1,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(336,1,1238,240.00,'DR',NULL,'',NULL,1,NULL,0,0),(336,2,1,240.00,'CR',NULL,'',NULL,1,NULL,0,0),(337,1,1205,218.00,'DR',NULL,'',NULL,1,NULL,0,0),(337,2,1,218.00,'CR',NULL,'',NULL,1,NULL,0,0),(338,1,1221,60.00,'DR',NULL,'',NULL,1,NULL,0,0),(338,2,1,60.00,'CR',NULL,'',NULL,1,NULL,0,0),(339,1,1154,181.00,'DR',NULL,'',NULL,1,NULL,0,0),(339,2,1,181.00,'CR',NULL,'',NULL,1,NULL,0,0),(340,1,1155,1250.00,'DR',NULL,'',NULL,1,NULL,0,0),(340,2,1,1250.00,'CR',NULL,'',NULL,1,NULL,0,0),(341,1,1224,260.00,'DR',NULL,'',NULL,1,NULL,0,0),(341,2,1,260.00,'CR',NULL,'',NULL,1,NULL,0,0),(342,1,1172,2280.00,'DR',NULL,'',NULL,1,NULL,0,0),(342,2,1,2280.00,'CR',NULL,'',NULL,1,NULL,0,0),(343,1,1238,830.00,'DR',NULL,'',NULL,1,NULL,0,0),(343,2,1,830.00,'CR',NULL,'',NULL,1,NULL,0,0),(344,1,1238,2500.00,'DR',NULL,'',NULL,1,NULL,0,0),(344,2,1,2500.00,'CR',NULL,'',NULL,1,NULL,0,0),(345,1,1205,370.00,'DR',NULL,'',NULL,1,NULL,0,0),(345,2,1,370.00,'CR',NULL,'',NULL,1,NULL,0,0),(346,1,1205,131.00,'DR',NULL,'',NULL,1,NULL,0,0),(346,2,1,131.00,'CR',NULL,'',NULL,1,NULL,0,0),(347,1,1191,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(347,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(348,1,1171,260.00,'DR',NULL,'',NULL,1,NULL,0,0),(348,2,1,260.00,'CR',NULL,'',NULL,1,NULL,0,0),(349,1,1238,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(349,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(350,1,1238,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(350,2,1,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(351,1,1241,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(351,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(352,1,1227,416.00,'DR',NULL,'',NULL,1,NULL,0,0),(352,2,1,416.00,'CR',NULL,'',NULL,1,NULL,0,0),(353,1,1221,80.00,'DR',NULL,'',NULL,1,NULL,0,0),(353,2,1,80.00,'CR',NULL,'',NULL,1,NULL,0,0),(354,1,1238,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(354,2,1,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(355,1,1205,60.00,'DR',NULL,'',NULL,1,NULL,0,0),(355,2,1,60.00,'CR',NULL,'',NULL,1,NULL,0,0),(356,1,1238,540.00,'DR',NULL,'',NULL,1,NULL,0,0),(356,2,1,540.00,'CR',NULL,'',NULL,1,NULL,0,0),(357,1,1249,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(357,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(358,1,1249,1730.00,'DR',NULL,'',NULL,1,NULL,0,0),(358,2,1,1730.00,'CR',NULL,'',NULL,1,NULL,0,0),(359,1,1249,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(359,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(360,1,1241,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(360,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(361,1,1205,130.00,'DR',NULL,'',NULL,1,NULL,0,0),(361,2,1,130.00,'CR',NULL,'',NULL,1,NULL,0,0),(362,1,1227,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(362,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(363,1,1221,186.00,'DR',NULL,'',NULL,1,NULL,0,0),(363,2,1,186.00,'CR',NULL,'',NULL,1,NULL,0,0),(364,1,1257,1100.00,'DR',NULL,'',NULL,1,NULL,0,0),(364,2,1,1100.00,'CR',NULL,'',NULL,1,NULL,0,0),(365,1,1155,40.00,'DR',NULL,'',NULL,1,NULL,0,0),(365,2,1,40.00,'CR',NULL,'',NULL,1,NULL,0,0),(366,1,1221,153.00,'DR',NULL,'',NULL,1,NULL,0,0),(366,2,1,153.00,'CR',NULL,'',NULL,1,NULL,0,0),(367,1,1205,110.00,'DR',NULL,'',NULL,1,NULL,0,0),(367,2,1,110.00,'CR',NULL,'',NULL,1,NULL,0,0),(368,1,1221,80.00,'DR',NULL,'',NULL,1,NULL,0,0),(368,2,1,80.00,'CR',NULL,'',NULL,1,NULL,0,0),(369,1,1155,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(369,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(370,1,1221,90.00,'DR',NULL,'',NULL,1,NULL,0,0),(370,2,1,90.00,'CR',NULL,'',NULL,1,NULL,0,0),(371,1,1221,85.00,'DR',NULL,'',NULL,1,NULL,0,0),(371,2,1,85.00,'CR',NULL,'',NULL,1,NULL,0,0),(372,1,1221,26.00,'DR',NULL,'',NULL,1,NULL,0,0),(372,2,1,26.00,'CR',NULL,'',NULL,1,NULL,0,0),(373,1,1241,3600.00,'DR',NULL,'',NULL,1,NULL,0,0),(373,2,1,3600.00,'CR',NULL,'',NULL,1,NULL,0,0),(374,1,1171,95.00,'DR',NULL,'',NULL,1,NULL,0,0),(374,2,1,95.00,'CR',NULL,'',NULL,1,NULL,0,0),(375,1,1226,327.00,'DR',NULL,'',NULL,1,NULL,0,0),(375,2,1,327.00,'CR',NULL,'',NULL,1,NULL,0,0),(376,1,1249,900.00,'DR',NULL,'',NULL,1,NULL,0,0),(376,2,1,900.00,'CR',NULL,'',NULL,1,NULL,0,0),(377,1,1241,255.00,'DR',NULL,'',NULL,1,NULL,0,0),(377,2,1,255.00,'CR',NULL,'',NULL,1,NULL,0,0),(378,1,1221,1800.00,'DR',NULL,'',NULL,1,NULL,0,0),(378,2,1,1800.00,'CR',NULL,'',NULL,1,NULL,0,0),(379,1,1152,735.00,'DR',NULL,'',NULL,1,NULL,0,0),(379,2,1,735.00,'CR',NULL,'',NULL,1,NULL,0,0),(380,1,1152,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(380,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(381,1,1152,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(381,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(382,1,1310,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(382,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(383,1,1221,3342.00,'DR',NULL,'',NULL,1,NULL,0,0),(383,2,1,3342.00,'CR',NULL,'',NULL,1,NULL,0,0),(384,1,1206,10.00,'DR',NULL,'',NULL,1,NULL,0,0),(384,2,1,10.00,'CR',NULL,'',NULL,1,NULL,0,0),(385,1,1171,305.00,'DR',NULL,'',NULL,1,NULL,0,0),(385,2,1,305.00,'CR',NULL,'',NULL,1,NULL,0,0),(386,1,1197,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(386,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(387,1,1236,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(387,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(388,1,1238,360.00,'DR',NULL,'',NULL,1,NULL,0,0),(388,2,1,360.00,'CR',NULL,'',NULL,1,NULL,0,0),(389,1,1353,20000.00,'CR',NULL,'',NULL,1,NULL,0,0),(389,2,1,20000.00,'DR',NULL,'',NULL,1,NULL,0,0),(390,1,1353,15000.00,'CR',NULL,'',NULL,1,NULL,0,0),(390,2,1,15000.00,'DR',NULL,'',NULL,1,NULL,0,0),(391,1,1240,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(391,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(392,1,1241,1200.00,'DR',NULL,'',NULL,1,NULL,0,0),(392,2,1,1200.00,'CR',NULL,'',NULL,1,NULL,0,0),(393,1,1240,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(393,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(394,1,1205,40.00,'DR',NULL,'',NULL,1,NULL,0,0),(394,2,1,40.00,'CR',NULL,'',NULL,1,NULL,0,0),(395,1,1155,130.00,'DR',NULL,'',NULL,1,NULL,0,0),(395,2,1,130.00,'CR',NULL,'',NULL,1,NULL,0,0),(396,1,1241,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(396,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(397,1,1155,294.00,'DR',NULL,'',NULL,1,NULL,0,0),(397,2,1,294.00,'CR',NULL,'',NULL,1,NULL,0,0),(398,1,1205,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(398,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(399,1,1154,80.00,'DR',NULL,'',NULL,1,NULL,0,0),(399,2,1,80.00,'CR',NULL,'',NULL,1,NULL,0,0),(400,1,1205,260.00,'DR',NULL,'',NULL,1,NULL,0,0),(400,2,1,260.00,'CR',NULL,'',NULL,1,NULL,0,0),(401,1,1240,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(401,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(402,1,1221,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(402,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(403,1,1221,145.00,'DR',NULL,'',NULL,1,NULL,0,0),(403,2,1,145.00,'CR',NULL,'',NULL,1,NULL,0,0),(404,1,1221,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(404,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(405,1,1221,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(405,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(406,1,1171,45.00,'DR',NULL,'',NULL,1,NULL,0,0),(406,2,1,45.00,'CR',NULL,'',NULL,1,NULL,0,0),(407,1,1221,215.00,'DR',NULL,'',NULL,1,NULL,0,0),(407,2,1,215.00,'CR',NULL,'',NULL,1,NULL,0,0),(408,1,1221,470.00,'DR',NULL,'',NULL,1,NULL,0,0),(408,2,1,470.00,'CR',NULL,'',NULL,1,NULL,0,0),(409,1,1241,30.00,'DR',NULL,'',NULL,1,NULL,0,0),(409,2,1,30.00,'CR',NULL,'',NULL,1,NULL,0,0),(410,1,1227,399.00,'DR',NULL,'',NULL,1,NULL,0,0),(410,2,1,399.00,'CR',NULL,'',NULL,1,NULL,0,0),(411,1,1205,197.00,'DR',NULL,'',NULL,1,NULL,0,0),(411,2,1,197.00,'CR',NULL,'',NULL,1,NULL,0,0),(412,1,1191,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(412,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(413,1,1191,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(413,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(414,1,1205,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(414,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(415,1,1152,600.00,'DR',NULL,'',NULL,1,NULL,0,0),(415,2,1,600.00,'CR',NULL,'',NULL,1,NULL,0,0),(416,1,1171,350.00,'DR',NULL,'',NULL,1,NULL,0,0),(416,2,1,350.00,'CR',NULL,'',NULL,1,NULL,0,0),(417,1,1226,85.00,'DR',NULL,'',NULL,1,NULL,0,0),(417,2,1,85.00,'CR',NULL,'',NULL,1,NULL,0,0),(418,1,1205,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(418,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(419,1,1221,491.00,'DR',NULL,'',NULL,1,NULL,0,0),(419,2,1,491.00,'CR',NULL,'',NULL,1,NULL,0,0),(420,1,1249,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(420,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(421,1,1249,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(421,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(422,1,1227,667.00,'DR',NULL,'',NULL,1,NULL,0,0),(422,2,1,667.00,'CR',NULL,'',NULL,1,NULL,0,0),(423,1,1205,285.00,'DR',NULL,'',NULL,1,NULL,0,0),(423,2,1,285.00,'CR',NULL,'',NULL,1,NULL,0,0),(424,1,1221,156.00,'DR',NULL,'',NULL,1,NULL,0,0),(424,2,1,156.00,'CR',NULL,'',NULL,1,NULL,0,0),(425,1,1205,205.00,'DR',NULL,'',NULL,1,NULL,0,0),(425,2,1,205.00,'CR',NULL,'',NULL,1,NULL,0,0),(426,1,1157,4380.00,'DR',NULL,'',NULL,1,NULL,0,0),(426,2,1,4380.00,'CR',NULL,'',NULL,1,NULL,0,0),(427,1,1157,1490.00,'DR',NULL,'',NULL,1,NULL,0,0),(427,2,1,1490.00,'CR',NULL,'',NULL,1,NULL,0,0),(428,1,1171,70.00,'DR',NULL,'',NULL,1,NULL,0,0),(428,2,1,70.00,'CR',NULL,'',NULL,1,NULL,0,0),(429,1,1221,805.00,'DR',NULL,'',NULL,1,NULL,0,0),(429,2,1,805.00,'CR',NULL,'',NULL,1,NULL,0,0),(430,1,1226,717.00,'DR',NULL,'',NULL,1,NULL,0,0),(430,2,1,717.00,'CR',NULL,'',NULL,1,NULL,0,0),(431,1,1171,474.00,'DR',NULL,'',NULL,1,NULL,0,0),(431,2,1,474.00,'CR',NULL,'',NULL,1,NULL,0,0),(432,1,1221,1440.00,'DR',NULL,'',NULL,1,NULL,0,0),(432,2,1,1440.00,'CR',NULL,'',NULL,1,NULL,0,0),(433,1,1144,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(433,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(434,1,1152,800.00,'DR',NULL,'',NULL,1,NULL,0,0),(434,2,1,800.00,'CR',NULL,'',NULL,1,NULL,0,0),(435,1,1152,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(435,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(436,1,1310,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(436,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(437,1,1221,5733.00,'DR',NULL,'',NULL,1,NULL,0,0),(437,2,1,5733.00,'CR',NULL,'',NULL,1,NULL,0,0),(438,1,1206,46.00,'DR',NULL,'',NULL,1,NULL,0,0),(438,2,1,46.00,'CR',NULL,'',NULL,1,NULL,0,0),(439,1,1171,733.00,'DR',NULL,'',NULL,1,NULL,0,0),(439,2,1,733.00,'CR',NULL,'',NULL,1,NULL,0,0),(440,1,1197,14.00,'DR',NULL,'',NULL,1,NULL,0,0),(440,2,1,14.00,'CR',NULL,'',NULL,1,NULL,0,0),(441,1,1245,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(441,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(442,1,1156,30.00,'DR',NULL,'',NULL,1,NULL,0,0),(442,2,1,30.00,'CR',NULL,'',NULL,1,NULL,0,0),(443,1,1221,2114.00,'DR',NULL,'',NULL,1,NULL,0,0),(443,2,1,2114.00,'CR',NULL,'',NULL,1,NULL,0,0),(444,1,1236,550.00,'DR',NULL,'',NULL,1,NULL,0,0),(444,2,1,550.00,'CR',NULL,'',NULL,1,NULL,0,0),(445,1,1119,19500.00,'CR',NULL,'',NULL,1,NULL,0,0),(445,2,1,19500.00,'DR',NULL,'',NULL,1,NULL,0,0),(446,1,1096,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(446,2,1,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(447,1,1096,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(447,2,1,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(448,1,1096,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(448,2,1,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(449,1,1096,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(449,2,1,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(450,1,1096,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(450,2,1,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(451,1,1096,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(451,2,1,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(452,1,1096,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(452,2,1,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(453,1,1096,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(453,2,1,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(454,1,1096,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(454,2,1,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(455,1,1221,260.00,'DR',NULL,'',NULL,1,NULL,0,0),(455,2,1,260.00,'CR',NULL,'',NULL,1,NULL,0,0),(456,1,1221,110.00,'DR',NULL,'',NULL,1,NULL,0,0),(456,2,1,110.00,'CR',NULL,'',NULL,1,NULL,0,0),(457,1,1226,575.00,'DR',NULL,'',NULL,1,NULL,0,0),(457,2,1,575.00,'CR',NULL,'',NULL,1,NULL,0,0),(458,1,1221,104.00,'DR',NULL,'',NULL,1,NULL,0,0),(458,2,1,104.00,'CR',NULL,'',NULL,1,NULL,0,0),(459,1,1221,165.00,'DR',NULL,'',NULL,1,NULL,0,0),(459,2,1,165.00,'CR',NULL,'',NULL,1,NULL,0,0),(460,1,1221,1645.00,'DR',NULL,'',NULL,1,NULL,0,0),(460,2,1,1645.00,'CR',NULL,'',NULL,1,NULL,0,0),(461,1,1221,190.00,'DR',NULL,'',NULL,1,NULL,0,0),(461,2,1,190.00,'CR',NULL,'',NULL,1,NULL,0,0),(462,1,1221,9540.00,'DR',NULL,'',NULL,1,NULL,0,0),(462,2,1,9540.00,'CR',NULL,'',NULL,1,NULL,0,0),(463,1,1221,182.00,'DR',NULL,'',NULL,1,NULL,0,0),(463,2,1,182.00,'CR',NULL,'',NULL,1,NULL,0,0),(464,1,1221,220.00,'DR',NULL,'',NULL,1,NULL,0,0),(464,2,1,220.00,'CR',NULL,'',NULL,1,NULL,0,0),(465,1,1154,35.00,'DR',NULL,'',NULL,1,NULL,0,0),(465,2,1,35.00,'CR',NULL,'',NULL,1,NULL,0,0),(466,1,1221,3330.00,'DR',NULL,'',NULL,1,NULL,0,0),(466,2,1,3330.00,'CR',NULL,'',NULL,1,NULL,0,0),(467,1,1221,1125.00,'DR',NULL,'',NULL,1,NULL,0,0),(467,2,1,1125.00,'CR',NULL,'',NULL,1,NULL,0,0),(468,1,1221,900.00,'DR',NULL,'',NULL,1,NULL,0,0),(468,2,1,900.00,'CR',NULL,'',NULL,1,NULL,0,0),(469,1,1143,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(469,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(470,1,1119,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(470,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(471,1,1221,1905.00,'DR',NULL,'',NULL,1,NULL,0,0),(471,2,1,1905.00,'CR',NULL,'',NULL,1,NULL,0,0),(472,1,1221,229.00,'DR',NULL,'',NULL,1,NULL,0,0),(472,2,1,229.00,'CR',NULL,'',NULL,1,NULL,0,0),(473,1,1096,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(473,2,1,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(474,1,1096,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(474,2,1,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(475,1,1096,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(475,2,1,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(476,1,1096,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(476,2,1,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(477,1,1221,1702.00,'DR',NULL,'',NULL,1,NULL,0,0),(477,2,1,1702.00,'CR',NULL,'',NULL,1,NULL,0,0),(478,1,1221,1926.00,'DR',NULL,'',NULL,1,NULL,0,0),(478,2,1,1926.00,'CR',NULL,'',NULL,1,NULL,0,0),(479,1,1248,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(479,2,1,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(480,1,1221,182.00,'DR',NULL,'',NULL,1,NULL,0,0),(480,2,1,182.00,'CR',NULL,'',NULL,1,NULL,0,0),(481,1,1248,355.00,'DR',NULL,'',NULL,1,NULL,0,0),(481,2,1,355.00,'CR',NULL,'',NULL,1,NULL,0,0),(482,1,1248,860.00,'DR',NULL,'',NULL,1,NULL,0,0),(482,2,1,860.00,'CR',NULL,'',NULL,1,NULL,0,0),(483,1,1155,210.00,'DR',NULL,'',NULL,1,NULL,0,0),(483,2,1,210.00,'CR',NULL,'',NULL,1,NULL,0,0),(484,1,1248,930.00,'DR',NULL,'',NULL,1,NULL,0,0),(484,2,1,930.00,'CR',NULL,'',NULL,1,NULL,0,0),(485,1,1221,182.00,'DR',NULL,'',NULL,1,NULL,0,0),(485,2,1,182.00,'CR',NULL,'',NULL,1,NULL,0,0),(486,1,1221,175.00,'DR',NULL,'',NULL,1,NULL,0,0),(486,2,1,175.00,'CR',NULL,'',NULL,1,NULL,0,0),(487,1,1223,700.00,'DR',NULL,'',NULL,1,NULL,0,0),(487,2,1,700.00,'CR',NULL,'',NULL,1,NULL,0,0),(488,1,1221,982.00,'DR',NULL,'',NULL,1,NULL,0,0),(488,2,1,982.00,'CR',NULL,'',NULL,1,NULL,0,0),(489,1,1248,800.00,'DR',NULL,'',NULL,1,NULL,0,0),(489,2,1,800.00,'CR',NULL,'',NULL,1,NULL,0,0),(490,1,1221,855.00,'DR',NULL,'',NULL,1,NULL,0,0),(490,2,1,855.00,'CR',NULL,'',NULL,1,NULL,0,0),(491,1,1152,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(491,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(492,1,1152,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(492,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(493,1,1221,1365.00,'DR',NULL,'',NULL,1,NULL,0,0),(493,2,1,1365.00,'CR',NULL,'',NULL,1,NULL,0,0),(494,1,1221,1300.00,'DR',NULL,'',NULL,1,NULL,0,0),(494,2,1,1300.00,'CR',NULL,'',NULL,1,NULL,0,0),(495,1,1221,890.00,'DR',NULL,'',NULL,1,NULL,0,0),(495,2,1,890.00,'CR',NULL,'',NULL,1,NULL,0,0),(496,1,1221,182.00,'DR',NULL,'',NULL,1,NULL,0,0),(496,2,1,182.00,'CR',NULL,'',NULL,1,NULL,0,0),(497,1,1096,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(497,2,1,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(498,1,1221,156.00,'DR',NULL,'',NULL,1,NULL,0,0),(498,2,1,156.00,'CR',NULL,'',NULL,1,NULL,0,0),(499,1,1221,156.00,'DR',NULL,'',NULL,1,NULL,0,0),(499,2,1,156.00,'CR',NULL,'',NULL,1,NULL,0,0),(500,1,1221,105.00,'DR',NULL,'',NULL,1,NULL,0,0),(500,2,1,105.00,'CR',NULL,'',NULL,1,NULL,0,0),(501,1,1221,320.00,'DR',NULL,'',NULL,1,NULL,0,0),(501,2,1,320.00,'CR',NULL,'',NULL,1,NULL,0,0),(502,1,1221,370.00,'DR',NULL,'',NULL,1,NULL,0,0),(502,2,1,370.00,'CR',NULL,'',NULL,1,NULL,0,0),(503,1,1221,130.00,'DR',NULL,'',NULL,1,NULL,0,0),(503,2,1,130.00,'CR',NULL,'',NULL,1,NULL,0,0),(504,1,1155,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(504,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(505,1,1221,2060.00,'DR',NULL,'',NULL,1,NULL,0,0),(505,2,1,2060.00,'CR',NULL,'',NULL,1,NULL,0,0),(506,1,1221,1360.00,'DR',NULL,'',NULL,1,NULL,0,0),(506,2,1,1360.00,'CR',NULL,'',NULL,1,NULL,0,0),(507,1,1221,1227.00,'DR',NULL,'',NULL,1,NULL,0,0),(507,2,1,1227.00,'CR',NULL,'',NULL,1,NULL,0,0),(508,1,1152,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(508,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(509,1,1119,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(509,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(510,1,1221,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(510,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(511,1,1171,130.00,'DR',NULL,'',NULL,1,NULL,0,0),(511,2,1,130.00,'CR',NULL,'',NULL,1,NULL,0,0),(512,1,1221,1329.00,'DR',NULL,'',NULL,1,NULL,0,0),(512,2,1,1329.00,'CR',NULL,'',NULL,1,NULL,0,0),(513,1,1226,773.00,'DR',NULL,'',NULL,1,NULL,0,0),(513,2,1,773.00,'CR',NULL,'',NULL,1,NULL,0,0),(514,1,1116,7730.00,'CR',NULL,'',NULL,1,NULL,0,0),(514,2,1,7730.00,'DR',NULL,'',NULL,1,NULL,0,0),(515,1,1227,2576.00,'DR',NULL,'',NULL,1,NULL,0,0),(515,2,1,2576.00,'CR',NULL,'',NULL,1,NULL,0,0),(516,1,1227,944.00,'DR',NULL,'',NULL,1,NULL,0,0),(516,2,1,944.00,'CR',NULL,'',NULL,1,NULL,0,0),(517,1,1152,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(517,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(518,1,1106,7770.00,'CR',NULL,'',NULL,1,NULL,0,0),(518,2,1,7770.00,'DR',NULL,'',NULL,1,NULL,0,0),(519,1,1227,280.00,'DR',NULL,'',NULL,1,NULL,0,0),(519,2,1,280.00,'CR',NULL,'',NULL,1,NULL,0,0),(520,1,1227,2291.00,'DR',NULL,'',NULL,1,NULL,0,0),(520,2,1,2291.00,'CR',NULL,'',NULL,1,NULL,0,0),(521,1,1227,630.00,'DR',NULL,'',NULL,1,NULL,0,0),(521,2,1,630.00,'CR',NULL,'',NULL,1,NULL,0,0),(522,1,1227,124.00,'DR',NULL,'',NULL,1,NULL,0,0),(522,2,1,124.00,'CR',NULL,'',NULL,1,NULL,0,0),(523,1,1205,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(523,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(524,1,1172,570.00,'DR',NULL,'',NULL,1,NULL,0,0),(524,2,1,570.00,'CR',NULL,'',NULL,1,NULL,0,0),(525,1,1227,233.00,'DR',NULL,'',NULL,1,NULL,0,0),(525,2,1,233.00,'CR',NULL,'',NULL,1,NULL,0,0),(526,1,1106,5960.00,'CR',NULL,'',NULL,1,NULL,0,0),(526,2,1,5960.00,'DR',NULL,'',NULL,1,NULL,0,0),(527,1,1227,340.00,'DR',NULL,'',NULL,1,NULL,0,0),(527,2,1,340.00,'CR',NULL,'',NULL,1,NULL,0,0),(528,1,1119,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(528,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(529,1,1119,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(529,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(530,1,1238,8750.00,'DR',NULL,'',NULL,1,NULL,0,0),(530,2,1,8750.00,'CR',NULL,'',NULL,1,NULL,0,0),(531,1,1238,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(531,2,1,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(532,1,1131,2836.00,'CR',NULL,'',NULL,1,NULL,0,0),(532,2,1353,2836.00,'DR',NULL,'','2015-09-05 11:30:00',1,NULL,0,0),(533,1,1236,650.00,'DR',NULL,'',NULL,1,NULL,0,0),(533,2,1,650.00,'CR',NULL,'',NULL,1,NULL,0,0),(534,1,1236,600.00,'DR',NULL,'',NULL,1,NULL,0,0),(534,2,1,600.00,'CR',NULL,'',NULL,1,NULL,0,0),(535,1,1236,190.00,'DR',NULL,'',NULL,1,NULL,0,0),(535,2,1,190.00,'CR',NULL,'',NULL,1,NULL,0,0),(536,1,1131,1465.00,'CR',NULL,'',NULL,1,NULL,0,0),(536,2,1352,1465.00,'DR',NULL,'',NULL,1,NULL,0,0),(537,1,1096,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(537,2,1,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(538,1,1096,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(538,2,1,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(539,1,1096,14000.00,'CR',NULL,'',NULL,1,NULL,0,0),(539,2,1,14000.00,'DR',NULL,'',NULL,1,NULL,0,0),(540,1,1096,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(540,2,1,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(541,1,1221,156.00,'DR',NULL,'',NULL,1,NULL,0,0),(541,2,1,156.00,'CR',NULL,'',NULL,1,NULL,0,0),(542,1,1221,182.00,'DR',NULL,'',NULL,1,NULL,0,0),(542,2,1,182.00,'CR',NULL,'',NULL,1,NULL,0,0),(543,1,1238,1260.00,'DR',NULL,'',NULL,1,NULL,0,0),(543,2,1,1260.00,'CR',NULL,'',NULL,1,NULL,0,0),(544,1,1221,130.00,'DR',NULL,'',NULL,1,NULL,0,0),(544,2,1,130.00,'CR',NULL,'',NULL,1,NULL,0,0),(545,1,1171,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(545,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(546,1,1221,208.00,'DR',NULL,'',NULL,1,NULL,0,0),(546,2,1,208.00,'CR',NULL,'',NULL,1,NULL,0,0),(547,1,1155,170.00,'DR',NULL,'',NULL,1,NULL,0,0),(547,2,1,170.00,'CR',NULL,'',NULL,1,NULL,0,0),(548,1,1221,196.00,'DR',NULL,'',NULL,1,NULL,0,0),(548,2,1,196.00,'CR',NULL,'',NULL,1,NULL,0,0),(549,1,1238,1040.00,'DR',NULL,'',NULL,1,NULL,0,0),(549,2,1,1040.00,'CR',NULL,'',NULL,1,NULL,0,0),(550,1,1221,900.00,'DR',NULL,'',NULL,1,NULL,0,0),(550,2,1,900.00,'CR',NULL,'',NULL,1,NULL,0,0),(551,1,1221,1200.00,'DR',NULL,'',NULL,1,NULL,0,0),(551,2,1,1200.00,'CR',NULL,'',NULL,1,NULL,0,0),(552,1,1221,502.00,'DR',NULL,'',NULL,1,NULL,0,0),(552,2,1,502.00,'CR',NULL,'',NULL,1,NULL,0,0),(553,1,1103,4930.00,'CR',NULL,'',NULL,1,NULL,0,0),(553,2,1,4930.00,'DR',NULL,'',NULL,1,NULL,0,0),(554,1,1119,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(554,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(555,1,1143,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(555,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(556,1,1221,1360.00,'DR',NULL,'',NULL,1,NULL,0,0),(556,2,1,1360.00,'CR',NULL,'',NULL,1,NULL,0,0),(557,1,1221,530.00,'DR',NULL,'',NULL,1,NULL,0,0),(557,2,1,530.00,'CR',NULL,'',NULL,1,NULL,0,0),(558,1,1103,2436.00,'DR',NULL,'',NULL,1,NULL,0,0),(558,2,1,2436.00,'CR',NULL,'',NULL,1,NULL,0,0),(559,1,1119,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(559,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(560,1,1221,73.00,'DR',NULL,'',NULL,1,NULL,0,0),(560,2,1,73.00,'CR',NULL,'',NULL,1,NULL,0,0),(561,1,1204,85.00,'DR',NULL,'',NULL,1,NULL,0,0),(561,2,1,85.00,'CR',NULL,'',NULL,1,NULL,0,0),(562,1,1204,440.00,'DR',NULL,'',NULL,1,NULL,0,0),(562,2,1,440.00,'CR',NULL,'',NULL,1,NULL,0,0),(563,1,1204,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(563,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(564,1,1241,254.00,'DR',NULL,'',NULL,1,NULL,0,0),(564,2,1,254.00,'CR',NULL,'',NULL,1,NULL,0,0),(565,1,1155,218.00,'DR',NULL,'',NULL,1,NULL,0,0),(565,2,1,218.00,'CR',NULL,'',NULL,1,NULL,0,0),(566,1,1227,72.00,'DR',NULL,'',NULL,1,NULL,0,0),(566,2,1,72.00,'CR',NULL,'',NULL,1,NULL,0,0),(567,1,1221,86.00,'DR',NULL,'',NULL,1,NULL,0,0),(567,2,1,86.00,'CR',NULL,'',NULL,1,NULL,0,0),(568,1,1221,55.00,'DR',NULL,'',NULL,1,NULL,0,0),(568,2,1,55.00,'CR',NULL,'',NULL,1,NULL,0,0),(569,1,1227,440.00,'DR',NULL,'',NULL,1,NULL,0,0),(569,2,1,440.00,'CR',NULL,'',NULL,1,NULL,0,0),(570,1,1224,110.00,'DR',NULL,'',NULL,1,NULL,0,0),(570,2,1,110.00,'CR',NULL,'',NULL,1,NULL,0,0),(571,1,1221,78.00,'DR',NULL,'',NULL,1,NULL,0,0),(571,2,1,78.00,'CR',NULL,'',NULL,1,NULL,0,0),(572,1,1221,85.00,'DR',NULL,'',NULL,1,NULL,0,0),(572,2,1,85.00,'CR',NULL,'',NULL,1,NULL,0,0),(573,1,1221,110.00,'DR',NULL,'',NULL,1,NULL,0,0),(573,2,1,110.00,'CR',NULL,'',NULL,1,NULL,0,0),(574,1,1241,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(574,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(575,1,1249,80.00,'DR',NULL,'',NULL,1,NULL,0,0),(575,2,1,80.00,'CR',NULL,'',NULL,1,NULL,0,0),(576,1,1227,170.00,'DR',NULL,'',NULL,1,NULL,0,0),(576,2,1,170.00,'CR',NULL,'',NULL,1,NULL,0,0),(577,1,1249,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(577,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(578,1,1241,650.00,'DR',NULL,'',NULL,1,NULL,0,0),(578,2,1,650.00,'CR',NULL,'',NULL,1,NULL,0,0),(579,1,1221,47.00,'DR',NULL,'',NULL,1,NULL,0,0),(579,2,1,47.00,'CR',NULL,'',NULL,1,NULL,0,0),(580,1,1221,52.00,'DR',NULL,'',NULL,1,NULL,0,0),(580,2,1,52.00,'CR',NULL,'',NULL,1,NULL,0,0),(581,1,1224,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(581,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(582,1,1155,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(582,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(583,1,1221,110.00,'DR',NULL,'',NULL,1,NULL,0,0),(583,2,1,110.00,'CR',NULL,'',NULL,1,NULL,0,0),(584,1,1154,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(584,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(585,1,1204,115.00,'DR',NULL,'',NULL,1,NULL,0,0),(585,2,1,115.00,'CR',NULL,'',NULL,1,NULL,0,0),(586,1,1221,66.00,'DR',NULL,'',NULL,1,NULL,0,0),(586,2,1,66.00,'CR',NULL,'',NULL,1,NULL,0,0),(587,1,1249,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(587,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(588,1,1204,235.00,'DR',NULL,'',NULL,1,NULL,0,0),(588,2,1,235.00,'CR',NULL,'',NULL,1,NULL,0,0),(589,1,1204,270.00,'DR',NULL,'',NULL,1,NULL,0,0),(589,2,1,270.00,'CR',NULL,'',NULL,1,NULL,0,0),(590,1,1249,950.00,'DR',NULL,'',NULL,1,NULL,0,0),(590,2,1,950.00,'CR',NULL,'',NULL,1,NULL,0,0),(591,1,1221,290.00,'DR',NULL,'',NULL,1,NULL,0,0),(591,2,1,290.00,'CR',NULL,'',NULL,1,NULL,0,0),(592,1,1221,2054.00,'DR',NULL,'',NULL,1,NULL,0,0),(592,2,1,2054.00,'CR',NULL,'',NULL,1,NULL,0,0),(593,1,1221,30.00,'DR',NULL,'',NULL,1,NULL,0,0),(593,2,1,30.00,'CR',NULL,'',NULL,1,NULL,0,0),(594,1,1227,208.00,'DR',NULL,'',NULL,1,NULL,0,0),(594,2,1,208.00,'CR',NULL,'',NULL,1,NULL,0,0),(595,1,1155,119.00,'DR',NULL,'',NULL,1,NULL,0,0),(595,2,1,119.00,'CR',NULL,'',NULL,1,NULL,0,0),(596,1,1227,416.00,'DR',NULL,'',NULL,1,NULL,0,0),(596,2,1,416.00,'CR',NULL,'',NULL,1,NULL,0,0),(597,1,1189,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(597,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(598,1,1249,7280.00,'DR',NULL,'',NULL,1,NULL,0,0),(598,2,1,7280.00,'CR',NULL,'',NULL,1,NULL,0,0),(599,1,1249,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(599,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(600,1,1249,700.00,'DR',NULL,'',NULL,1,NULL,0,0),(600,2,1,700.00,'CR',NULL,'',NULL,1,NULL,0,0),(601,1,1241,1675.00,'DR',NULL,'',NULL,1,NULL,0,0),(601,2,1,1675.00,'CR',NULL,'',NULL,1,NULL,0,0),(602,1,1246,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(602,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(603,1,1152,1960.00,'DR',NULL,'',NULL,1,NULL,0,0),(603,2,1,1960.00,'CR',NULL,'',NULL,1,NULL,0,0),(604,1,1221,1372.00,'DR',NULL,'',NULL,1,NULL,0,0),(604,2,1,1372.00,'CR',NULL,'',NULL,1,NULL,0,0),(605,1,1152,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(605,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(606,1,1152,800.00,'DR',NULL,'',NULL,1,NULL,0,0),(606,2,1,800.00,'CR',NULL,'',NULL,1,NULL,0,0),(607,1,1221,5157.00,'DR',NULL,'',NULL,1,NULL,0,0),(607,2,1,5157.00,'CR',NULL,'',NULL,1,NULL,0,0),(608,1,1206,60.00,'DR',NULL,'',NULL,1,NULL,0,0),(608,2,1,60.00,'CR',NULL,'',NULL,1,NULL,0,0),(609,1,1171,352.00,'DR',NULL,'',NULL,1,NULL,0,0),(609,2,1,352.00,'CR',NULL,'',NULL,1,NULL,0,0),(610,1,1197,55.00,'DR',NULL,'',NULL,1,NULL,0,0),(610,2,1,55.00,'CR',NULL,'',NULL,1,NULL,0,0),(611,1,1236,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(611,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(612,1,1245,270.00,'DR',NULL,'',NULL,1,NULL,0,0),(612,2,1,270.00,'CR',NULL,'',NULL,1,NULL,0,0),(613,1,1310,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(613,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(614,1,1152,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(614,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(615,1,1223,644.00,'DR',NULL,'',NULL,1,NULL,0,0),(615,2,1,644.00,'CR',NULL,'',NULL,1,NULL,0,0),(616,1,1353,20000.00,'CR',NULL,'',NULL,1,NULL,0,0),(616,2,1,20000.00,'DR',NULL,'',NULL,1,NULL,0,0),(617,1,1119,19500.00,'CR',NULL,'',NULL,1,NULL,0,0),(617,2,1,19500.00,'DR',NULL,'',NULL,1,NULL,0,0),(618,1,1249,30.00,'DR',NULL,'',NULL,1,NULL,0,0),(618,2,1,30.00,'CR',NULL,'',NULL,1,NULL,0,0),(619,1,1171,85.00,'DR',NULL,'',NULL,1,NULL,0,0),(619,2,1,85.00,'CR',NULL,'',NULL,1,NULL,0,0),(620,1,1154,30.00,'DR',NULL,'',NULL,1,NULL,0,0),(620,2,1,30.00,'CR',NULL,'',NULL,1,NULL,0,0),(621,1,1221,223.00,'DR',NULL,'',NULL,1,NULL,0,0),(621,2,1,223.00,'CR',NULL,'',NULL,1,NULL,0,0),(622,1,1205,45.00,'DR',NULL,'',NULL,1,NULL,0,0),(622,2,1,45.00,'CR',NULL,'',NULL,1,NULL,0,0),(623,1,1226,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(623,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(624,1,1155,255.00,'DR',NULL,'',NULL,1,NULL,0,0),(624,2,1,255.00,'CR',NULL,'',NULL,1,NULL,0,0),(625,1,1227,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(625,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(626,1,1221,1350.00,'DR',NULL,'',NULL,1,NULL,0,0),(626,2,1,1350.00,'CR',NULL,'',NULL,1,NULL,0,0),(627,1,1224,525.00,'DR',NULL,'',NULL,1,NULL,0,0),(627,2,1,525.00,'CR',NULL,'',NULL,1,NULL,0,0),(628,1,1171,50.00,'DR',NULL,'',NULL,1,NULL,0,0),(628,2,1,50.00,'CR',NULL,'',NULL,1,NULL,0,0),(629,1,1171,458.00,'DR',NULL,'',NULL,1,NULL,0,0),(629,2,1,458.00,'CR',NULL,'',NULL,1,NULL,0,0),(630,1,1224,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(630,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(631,1,1227,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(631,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(632,1,1227,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(632,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(633,1,1227,50.00,'DR',NULL,'',NULL,1,NULL,0,0),(633,2,1,50.00,'CR',NULL,'',NULL,1,NULL,0,0),(634,1,1227,1508.00,'DR',NULL,'',NULL,1,NULL,0,0),(634,2,1,1508.00,'CR',NULL,'',NULL,1,NULL,0,0),(635,1,1249,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(635,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(636,1,1221,240.00,'DR',NULL,'',NULL,1,NULL,0,0),(636,2,1,240.00,'CR',NULL,'',NULL,1,NULL,0,0),(637,1,1221,26.00,'DR',NULL,'',NULL,1,NULL,0,0),(637,2,1,26.00,'CR',NULL,'',NULL,1,NULL,0,0),(638,1,1221,212.00,'DR',NULL,'',NULL,1,NULL,0,0),(638,2,1,212.00,'CR',NULL,'',NULL,1,NULL,0,0),(639,1,1155,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(639,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(640,1,1155,4400.00,'DR',NULL,'',NULL,1,NULL,0,0),(640,2,1,4400.00,'CR',NULL,'',NULL,1,NULL,0,0),(641,1,1155,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(641,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(642,1,1227,320.00,'DR',NULL,'',NULL,1,NULL,0,0),(642,2,1,320.00,'CR',NULL,'',NULL,1,NULL,0,0),(643,1,1221,60.00,'DR',NULL,'',NULL,1,NULL,0,0),(643,2,1,60.00,'CR',NULL,'',NULL,1,NULL,0,0),(644,1,1157,3267.00,'DR',NULL,'',NULL,1,NULL,0,0),(644,2,1,3267.00,'CR',NULL,'',NULL,1,NULL,0,0),(645,1,1157,996.00,'DR',NULL,'',NULL,1,NULL,0,0),(645,2,1,996.00,'CR',NULL,'',NULL,1,NULL,0,0),(646,1,1249,262.00,'DR',NULL,'',NULL,1,NULL,0,0),(646,2,1,262.00,'CR',NULL,'',NULL,1,NULL,0,0),(647,1,1155,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(647,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(648,1,1205,240.00,'DR',NULL,'',NULL,1,NULL,0,0),(648,2,1,240.00,'CR',NULL,'',NULL,1,NULL,0,0),(649,1,1154,50.00,'DR',NULL,'',NULL,1,NULL,0,0),(649,2,1,50.00,'CR',NULL,'',NULL,1,NULL,0,0),(650,1,1221,370.00,'DR',NULL,'',NULL,1,NULL,0,0),(650,2,1,370.00,'CR',NULL,'',NULL,1,NULL,0,0),(651,1,1221,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(651,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(652,1,1205,78.00,'DR',NULL,'',NULL,1,NULL,0,0),(652,2,1,78.00,'CR',NULL,'',NULL,1,NULL,0,0),(653,1,1221,235.00,'DR',NULL,'',NULL,1,NULL,0,0),(653,2,1,235.00,'CR',NULL,'',NULL,1,NULL,0,0),(654,1,1249,1950.00,'DR',NULL,'',NULL,1,NULL,0,0),(654,2,1,1950.00,'CR',NULL,'',NULL,1,NULL,0,0),(655,1,1221,1350.00,'DR',NULL,'',NULL,1,NULL,0,0),(655,2,1,1350.00,'CR',NULL,'',NULL,1,NULL,0,0),(656,1,1143,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(656,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(657,1,1143,690.00,'DR',NULL,'',NULL,1,NULL,0,0),(657,2,1,690.00,'CR',NULL,'',NULL,1,NULL,0,0),(658,1,1143,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(658,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(659,1,1310,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(659,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(660,1,1221,4166.00,'DR',NULL,'',NULL,1,NULL,0,0),(660,2,1,4166.00,'CR',NULL,'',NULL,1,NULL,0,0),(661,1,1206,141.00,'DR',NULL,'',NULL,1,NULL,0,0),(661,2,1,141.00,'CR',NULL,'',NULL,1,NULL,0,0),(662,1,1171,137.00,'DR',NULL,'',NULL,1,NULL,0,0),(662,2,1,137.00,'CR',NULL,'',NULL,1,NULL,0,0),(663,1,1197,20.00,'DR',NULL,'',NULL,1,NULL,0,0),(663,2,1,20.00,'CR',NULL,'',NULL,1,NULL,0,0),(664,1,1236,900.00,'DR',NULL,'',NULL,1,NULL,0,0),(664,2,1,900.00,'CR',NULL,'',NULL,1,NULL,0,0),(665,1,1238,190.00,'DR',NULL,'',NULL,1,NULL,0,0),(665,2,1,190.00,'CR',NULL,'',NULL,1,NULL,0,0),(666,1,1156,50.00,'DR',NULL,'',NULL,1,NULL,0,0),(666,2,1,50.00,'CR',NULL,'',NULL,1,NULL,0,0),(667,1,1353,20000.00,'CR',NULL,'',NULL,1,NULL,0,0),(667,2,1,20000.00,'DR',NULL,'',NULL,1,NULL,0,0),(668,1,1096,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(668,2,1,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(669,1,1096,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(669,2,1,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(670,1,1096,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(670,2,1,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(671,1,1096,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(671,2,1,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(672,1,1096,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(672,2,1,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(673,1,1096,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(673,2,1,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(674,1,1221,156.00,'DR',NULL,'',NULL,1,NULL,0,0),(674,2,1,156.00,'CR',NULL,'',NULL,1,NULL,0,0),(675,1,1221,26.00,'DR',NULL,'',NULL,1,NULL,0,0),(675,2,1,26.00,'CR',NULL,'',NULL,1,NULL,0,0),(676,1,1221,319.00,'DR',NULL,'',NULL,1,NULL,0,0),(676,2,1,319.00,'CR',NULL,'',NULL,1,NULL,0,0),(677,1,1223,655.00,'DR',NULL,'',NULL,1,NULL,0,0),(677,2,1,655.00,'CR',NULL,'',NULL,1,NULL,0,0),(678,1,1226,169.00,'DR',NULL,'',NULL,1,NULL,0,0),(678,2,1,169.00,'CR',NULL,'',NULL,1,NULL,0,0),(679,1,1221,2530.00,'DR',NULL,'',NULL,1,NULL,0,0),(679,2,1,2530.00,'CR',NULL,'',NULL,1,NULL,0,0),(680,1,1221,175.00,'DR',NULL,'',NULL,1,NULL,0,0),(680,2,1,175.00,'CR',NULL,'',NULL,1,NULL,0,0),(681,1,1221,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(681,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(682,1,1154,30.00,'DR',NULL,'',NULL,1,NULL,0,0),(682,2,1,30.00,'CR',NULL,'',NULL,1,NULL,0,0),(683,1,1221,108.00,'DR',NULL,'',NULL,1,NULL,0,0),(683,2,1,108.00,'CR',NULL,'',NULL,1,NULL,0,0),(684,1,1221,182.00,'DR',NULL,'',NULL,1,NULL,0,0),(684,2,1,182.00,'CR',NULL,'',NULL,1,NULL,0,0),(685,1,1221,1900.00,'DR',NULL,'',NULL,1,NULL,0,0),(685,2,1,1900.00,'CR',NULL,'',NULL,1,NULL,0,0),(686,1,1221,1130.00,'DR',NULL,'',NULL,1,NULL,0,0),(686,2,1,1130.00,'CR',NULL,'',NULL,1,NULL,0,0),(687,1,1221,1215.00,'DR',NULL,'',NULL,1,NULL,0,0),(687,2,1,1215.00,'CR',NULL,'',NULL,1,NULL,0,0),(688,1,1152,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(688,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(689,1,1152,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(689,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(690,1,1103,3710.00,'CR',NULL,'',NULL,1,NULL,0,0),(690,2,1,3710.00,'DR',NULL,'',NULL,1,NULL,0,0),(691,1,1227,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(691,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(692,1,1227,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(692,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(693,1,1119,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(693,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(694,1,1221,464.00,'DR',NULL,'',NULL,1,NULL,0,0),(694,2,1,464.00,'CR',NULL,'',NULL,1,NULL,0,0),(695,1,1221,750.00,'DR',NULL,'',NULL,1,NULL,0,0),(695,2,1,750.00,'CR',NULL,'',NULL,1,NULL,0,0),(696,1,1119,19500.00,'CR',NULL,'',NULL,1,NULL,0,0),(696,2,1,19500.00,'DR',NULL,'',NULL,1,NULL,0,0),(697,1,1353,40000.00,'CR',NULL,'',NULL,1,NULL,0,0),(697,2,1,40000.00,'DR',NULL,'',NULL,1,NULL,0,0),(698,1,1353,40000.00,'CR',NULL,'',NULL,1,NULL,0,0),(698,2,1,40000.00,'DR',NULL,'',NULL,1,NULL,0,0),(699,1,1352,12000.00,'CR',NULL,'',NULL,1,NULL,0,0),(699,2,1,12000.00,'DR',NULL,'',NULL,1,NULL,0,0),(700,1,1103,5590.00,'CR',NULL,'',NULL,1,NULL,0,0),(700,2,1,5590.00,'DR',NULL,'',NULL,1,NULL,0,0),(701,1,1249,12475.00,'DR',NULL,'',NULL,1,NULL,0,0),(701,2,1,12475.00,'CR',NULL,'',NULL,1,NULL,0,0),(702,1,1278,1623.00,'DR',NULL,'',NULL,1,NULL,0,0),(702,2,1,1623.00,'CR',NULL,'',NULL,1,NULL,0,0),(703,1,1119,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(703,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(704,1,1096,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(704,2,1,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(705,1,1096,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(705,2,1,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(706,1,1096,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(706,2,1,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(707,1,1096,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(707,2,1,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(708,1,1096,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(708,2,1,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(709,1,1096,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(709,2,1,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(710,1,1096,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(710,2,1,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(711,1,1096,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(711,2,1,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(712,1,1096,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(712,2,1,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(713,1,1096,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(713,2,1,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(714,1,1096,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(714,2,1,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(715,1,1096,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(715,2,1,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(716,1,1119,7500.00,'CR',NULL,'',NULL,1,NULL,0,0),(716,2,1,7500.00,'DR',NULL,'',NULL,1,NULL,0,0),(717,1,1353,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(717,2,1,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(718,1,1353,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(718,2,1,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(719,1,1318,207.00,'DR',NULL,'',NULL,1,NULL,0,0),(719,2,1,207.00,'CR',NULL,'',NULL,1,NULL,0,0),(720,1,1171,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(720,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(721,1,1221,182.00,'DR',NULL,'',NULL,1,NULL,0,0),(721,2,1,182.00,'CR',NULL,'',NULL,1,NULL,0,0),(722,1,1221,20.00,'DR',NULL,'',NULL,1,NULL,0,0),(722,2,1,20.00,'CR',NULL,'',NULL,1,NULL,0,0),(723,1,1155,110.00,'DR',NULL,'',NULL,1,NULL,0,0),(723,2,1,110.00,'CR',NULL,'',NULL,1,NULL,0,0),(724,1,1246,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(724,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(725,1,1318,85.00,'DR',NULL,'',NULL,1,NULL,0,0),(725,2,1,85.00,'CR',NULL,'',NULL,1,NULL,0,0),(726,1,1224,616.00,'DR',NULL,'',NULL,1,NULL,0,0),(726,2,1,616.00,'CR',NULL,'',NULL,1,NULL,0,0),(727,1,1178,335.00,'DR',NULL,'',NULL,1,NULL,0,0),(727,2,1,335.00,'CR',NULL,'',NULL,1,NULL,0,0),(728,1,1189,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(728,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(729,1,1221,110.00,'DR',NULL,'',NULL,1,NULL,0,0),(729,2,1,110.00,'CR',NULL,'',NULL,1,NULL,0,0),(730,1,1318,135.00,'DR',NULL,'',NULL,1,NULL,0,0),(730,2,1,135.00,'CR',NULL,'',NULL,1,NULL,0,0),(731,1,1171,36.00,'DR',NULL,'',NULL,1,NULL,0,0),(731,2,1,36.00,'CR',NULL,'',NULL,1,NULL,0,0),(732,1,1238,210.00,'DR',NULL,'',NULL,1,NULL,0,0),(732,2,1,210.00,'CR',NULL,'',NULL,1,NULL,0,0),(733,1,1191,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(733,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(734,1,1246,350.00,'DR',NULL,'',NULL,1,NULL,0,0),(734,2,1,350.00,'CR',NULL,'',NULL,1,NULL,0,0),(735,1,1191,2500.00,'DR',NULL,'',NULL,1,NULL,0,0),(735,2,1,2500.00,'CR',NULL,'',NULL,1,NULL,0,0),(736,1,1246,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(736,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(737,1,1171,290.00,'DR',NULL,'',NULL,1,NULL,0,0),(737,2,1,290.00,'CR',NULL,'',NULL,1,NULL,0,0),(738,1,1171,80.00,'DR',NULL,'',NULL,1,NULL,0,0),(738,2,1,80.00,'CR',NULL,'',NULL,1,NULL,0,0),(739,1,1227,702.00,'DR',NULL,'',NULL,1,NULL,0,0),(739,2,1,702.00,'CR',NULL,'',NULL,1,NULL,0,0),(740,1,1227,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(740,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(741,1,1226,287.00,'DR',NULL,'',NULL,1,NULL,0,0),(741,2,1,287.00,'CR',NULL,'',NULL,1,NULL,0,0),(742,1,1241,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(742,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(743,1,1171,225.00,'DR',NULL,'',NULL,1,NULL,0,0),(743,2,1,225.00,'CR',NULL,'',NULL,1,NULL,0,0),(744,1,1178,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(744,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(745,1,1221,546.00,'DR',NULL,'',NULL,1,NULL,0,0),(745,2,1,546.00,'CR',NULL,'',NULL,1,NULL,0,0),(746,1,1221,60.00,'DR',NULL,'',NULL,1,NULL,0,0),(746,2,1,60.00,'CR',NULL,'',NULL,1,NULL,0,0),(747,1,1221,108.00,'DR',NULL,'',NULL,1,NULL,0,0),(747,2,1,108.00,'CR',NULL,'',NULL,1,NULL,0,0),(748,1,1246,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(748,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(749,1,1227,161.00,'DR',NULL,'',NULL,1,NULL,0,0),(749,2,1,161.00,'CR',NULL,'',NULL,1,NULL,0,0),(750,1,1221,96.00,'DR',NULL,'',NULL,1,NULL,0,0),(750,2,1,96.00,'CR',NULL,'',NULL,1,NULL,0,0),(751,1,1221,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(751,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(752,1,1171,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(752,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(753,1,1155,1011.00,'DR',NULL,'',NULL,1,NULL,0,0),(753,2,1,1011.00,'CR',NULL,'',NULL,1,NULL,0,0),(754,1,1157,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(754,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(755,1,1249,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(755,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(756,1,1223,740.00,'DR',NULL,'',NULL,1,NULL,0,0),(756,2,1,740.00,'CR',NULL,'',NULL,1,NULL,0,0),(757,1,1160,750.00,'DR',NULL,'',NULL,1,NULL,0,0),(757,2,1,750.00,'CR',NULL,'',NULL,1,NULL,0,0),(758,1,1318,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(758,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(759,1,1221,1575.00,'DR',NULL,'',NULL,1,NULL,0,0),(759,2,1,1575.00,'CR',NULL,'',NULL,1,NULL,0,0),(760,1,1221,6982.00,'DR',NULL,'',NULL,1,NULL,0,0),(760,2,1,6982.00,'CR',NULL,'',NULL,1,NULL,0,0),(761,1,1206,50.00,'DR',NULL,'',NULL,1,NULL,0,0),(761,2,1,50.00,'CR',NULL,'',NULL,1,NULL,0,0),(762,1,1171,496.00,'DR',NULL,'',NULL,1,NULL,0,0),(762,2,1,496.00,'CR',NULL,'',NULL,1,NULL,0,0),(763,1,1197,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(763,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(764,1,1238,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(764,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(765,1,1156,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(765,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(766,1,1152,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(766,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(767,1,1152,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(767,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(768,1,1152,773.00,'DR',NULL,'',NULL,1,NULL,0,0),(768,2,1,773.00,'CR',NULL,'',NULL,1,NULL,0,0),(769,1,1152,450.00,'DR',NULL,'',NULL,1,NULL,0,0),(769,2,1,450.00,'CR',NULL,'',NULL,1,NULL,0,0),(770,1,1310,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(770,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(771,1,1353,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(771,2,1,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(772,1,1288,100000.00,'CR',NULL,'',NULL,1,NULL,0,0),(772,2,1353,100000.00,'DR',NULL,'',NULL,1,NULL,0,0),(773,1,1106,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(773,2,1,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(774,1,1221,6000.00,'DR',NULL,'',NULL,1,NULL,0,0),(774,2,1,6000.00,'CR',NULL,'',NULL,1,NULL,0,0),(775,1,1221,206.00,'DR',NULL,'',NULL,1,NULL,0,0),(775,2,1,206.00,'CR',NULL,'',NULL,1,NULL,0,0),(776,1,1221,50.00,'DR',NULL,'',NULL,1,NULL,0,0),(776,2,1,50.00,'CR',NULL,'',NULL,1,NULL,0,0),(777,1,1221,130.00,'DR',NULL,'',NULL,1,NULL,0,0),(777,2,1,130.00,'CR',NULL,'',NULL,1,NULL,0,0),(778,1,1221,2755.00,'DR',NULL,'',NULL,1,NULL,0,0),(778,2,1,2755.00,'CR',NULL,'',NULL,1,NULL,0,0),(779,1,1154,85.00,'DR',NULL,'',NULL,1,NULL,0,0),(779,2,1,85.00,'CR',NULL,'',NULL,1,NULL,0,0),(780,1,1226,966.00,'DR',NULL,'',NULL,1,NULL,0,0),(780,2,1,966.00,'CR',NULL,'',NULL,1,NULL,0,0),(781,1,1221,6000.00,'DR',NULL,'',NULL,1,NULL,0,0),(781,2,1,6000.00,'CR',NULL,'',NULL,1,NULL,0,0),(782,1,1221,130.00,'DR',NULL,'',NULL,1,NULL,0,0),(782,2,1,130.00,'CR',NULL,'',NULL,1,NULL,0,0),(783,1,1238,650.00,'DR',NULL,'',NULL,1,NULL,0,0),(783,2,1,650.00,'CR',NULL,'',NULL,1,NULL,0,0),(784,1,1221,6000.00,'DR',NULL,'',NULL,1,NULL,0,0),(784,2,1,6000.00,'CR',NULL,'',NULL,1,NULL,0,0),(785,1,1221,1120.00,'DR',NULL,'',NULL,1,NULL,0,0),(785,2,1,1120.00,'CR',NULL,'',NULL,1,NULL,0,0),(786,1,1221,2450.00,'DR',NULL,'',NULL,1,NULL,0,0),(786,2,1,2450.00,'CR',NULL,'',NULL,1,NULL,0,0),(787,1,1221,1080.00,'DR',NULL,'',NULL,1,NULL,0,0),(787,2,1,1080.00,'CR',NULL,'',NULL,1,NULL,0,0),(788,1,1143,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(788,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(789,1,1119,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(789,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(790,1,1198,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(790,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(791,1,1227,1505.00,'DR',NULL,'',NULL,1,NULL,0,0),(791,2,1,1505.00,'CR',NULL,'',NULL,1,NULL,0,0),(792,1,1227,420.00,'DR',NULL,'',NULL,1,NULL,0,0),(792,2,1,420.00,'CR',NULL,'',NULL,1,NULL,0,0),(793,1,1221,1220.00,'DR',NULL,'',NULL,1,NULL,0,0),(793,2,1,1220.00,'CR',NULL,'',NULL,1,NULL,0,0),(794,1,1224,2950.00,'DR',NULL,'',NULL,1,NULL,0,0),(794,2,1,2950.00,'CR',NULL,'',NULL,1,NULL,0,0),(795,1,1224,950.00,'DR',NULL,'',NULL,1,NULL,0,0),(795,2,1,950.00,'CR',NULL,'',NULL,1,NULL,0,0),(796,1,1224,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(796,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(797,1,1224,1110.00,'DR',NULL,'',NULL,1,NULL,0,0),(797,2,1,1110.00,'CR',NULL,'',NULL,1,NULL,0,0),(798,1,1227,973.00,'DR',NULL,'',NULL,1,NULL,0,0),(798,2,1,973.00,'CR',NULL,'',NULL,1,NULL,0,0),(799,1,1246,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(799,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(800,1,1227,1162.00,'DR',NULL,'',NULL,1,NULL,0,0),(800,2,1,1162.00,'CR',NULL,'',NULL,1,NULL,0,0),(801,1,1227,799.00,'DR',NULL,'',NULL,1,NULL,0,0),(801,2,1,799.00,'CR',NULL,'',NULL,1,NULL,0,0),(802,1,1224,350.00,'DR',NULL,'',NULL,1,NULL,0,0),(802,2,1,350.00,'CR',NULL,'',NULL,1,NULL,0,0),(803,1,1224,175.00,'DR',NULL,'',NULL,1,NULL,0,0),(803,2,1,175.00,'CR',NULL,'',NULL,1,NULL,0,0),(804,1,1221,3226.00,'DR',NULL,'',NULL,1,NULL,0,0),(804,2,1,3226.00,'CR',NULL,'',NULL,1,NULL,0,0),(805,1,1221,168.00,'DR',NULL,'',NULL,1,NULL,0,0),(805,2,1,168.00,'CR',NULL,'',NULL,1,NULL,0,0),(806,1,1221,413.00,'DR',NULL,'',NULL,1,NULL,0,0),(806,2,1,413.00,'CR',NULL,'',NULL,1,NULL,0,0),(807,1,1224,225.00,'DR',NULL,'',NULL,1,NULL,0,0),(807,2,1,225.00,'CR',NULL,'',NULL,1,NULL,0,0),(808,1,1224,1620.00,'DR',NULL,'',NULL,1,NULL,0,0),(808,2,1,1620.00,'CR',NULL,'',NULL,1,NULL,0,0),(809,1,1224,840.00,'DR',NULL,'',NULL,1,NULL,0,0),(809,2,1,840.00,'CR',NULL,'',NULL,1,NULL,0,0),(810,1,1224,800.00,'DR',NULL,'',NULL,1,NULL,0,0),(810,2,1,800.00,'CR',NULL,'',NULL,1,NULL,0,0),(811,1,1226,461.00,'DR',NULL,'',NULL,1,NULL,0,0),(811,2,1,461.00,'CR',NULL,'',NULL,1,NULL,0,0),(812,1,1154,270.00,'DR',NULL,'',NULL,1,NULL,0,0),(812,2,1,270.00,'CR',NULL,'',NULL,1,NULL,0,0),(813,1,1221,420.00,'DR',NULL,'',NULL,1,NULL,0,0),(813,2,1,420.00,'CR',NULL,'',NULL,1,NULL,0,0),(814,1,1226,1036.00,'DR',NULL,'',NULL,1,NULL,0,0),(814,2,1,1036.00,'CR',NULL,'',NULL,1,NULL,0,0),(815,1,1221,394.00,'DR',NULL,'',NULL,1,NULL,0,0),(815,2,1,394.00,'CR',NULL,'',NULL,1,NULL,0,0),(816,1,1221,87.00,'DR',NULL,'',NULL,1,NULL,0,0),(816,2,1,87.00,'CR',NULL,'',NULL,1,NULL,0,0),(817,1,1221,90.00,'DR',NULL,'',NULL,1,NULL,0,0),(817,2,1,90.00,'CR',NULL,'',NULL,1,NULL,0,0),(818,1,1221,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(818,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(819,1,1226,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(819,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(820,1,1224,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(820,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(821,1,1313,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(821,2,1,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(822,1,1313,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(822,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(823,1,1221,63.00,'DR',NULL,'',NULL,1,NULL,0,0),(823,2,1,63.00,'CR',NULL,'',NULL,1,NULL,0,0),(824,1,1227,308.00,'DR',NULL,'',NULL,1,NULL,0,0),(824,2,1,308.00,'CR',NULL,'',NULL,1,NULL,0,0),(825,1,1227,180.00,'DR',NULL,'',NULL,1,NULL,0,0),(825,2,1,180.00,'CR',NULL,'',NULL,1,NULL,0,0),(826,1,1131,28.00,'CR',NULL,'',NULL,1,NULL,0,0),(826,2,1351,28.00,'DR',NULL,'',NULL,1,NULL,0,0),(827,1,1326,30000.00,'CR',NULL,'',NULL,1,NULL,0,0),(827,2,1351,30000.00,'DR',NULL,'',NULL,1,NULL,0,0),(828,1,1351,15000.00,'CR',NULL,'',NULL,1,NULL,0,0),(828,2,1,15000.00,'DR',NULL,'',NULL,1,NULL,0,0),(829,1,1351,15000.00,'CR',NULL,'',NULL,1,NULL,0,0),(829,2,1,15000.00,'DR',NULL,'',NULL,1,NULL,0,0),(830,1,1224,1375.00,'DR',NULL,'',NULL,1,NULL,0,0),(830,2,1,1375.00,'CR',NULL,'',NULL,1,NULL,0,0),(831,1,1096,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(831,2,1,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(832,1,1096,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(832,2,1,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(833,1,1096,2500.00,'CR',NULL,'',NULL,1,NULL,0,0),(833,2,1,2500.00,'DR',NULL,'',NULL,1,NULL,0,0),(834,1,1096,2500.00,'CR',NULL,'',NULL,1,NULL,0,0),(834,2,1,2500.00,'DR',NULL,'',NULL,1,NULL,0,0),(835,1,1096,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(835,2,1,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(836,1,1096,1300.00,'CR',NULL,'',NULL,1,NULL,0,0),(836,2,1,1300.00,'DR',NULL,'',NULL,1,NULL,0,0),(837,1,1096,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(837,2,1,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(838,1,1353,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(838,2,1,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(839,1,1119,12000.00,'CR',NULL,'',NULL,1,NULL,0,0),(839,2,1,12000.00,'DR',NULL,'',NULL,1,NULL,0,0),(840,1,1119,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(840,2,1,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(841,1,1119,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(841,2,1,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(842,1,1318,1200.00,'DR',NULL,'',NULL,1,NULL,0,0),(842,2,1,1200.00,'CR',NULL,'',NULL,1,NULL,0,0),(843,1,1221,47.00,'DR',NULL,'',NULL,1,NULL,0,0),(843,2,1,47.00,'CR',NULL,'',NULL,1,NULL,0,0),(844,1,1154,109.00,'DR',NULL,'',NULL,1,NULL,0,0),(844,2,1,109.00,'CR',NULL,'',NULL,1,NULL,0,0),(845,1,1318,75.00,'DR',NULL,'',NULL,1,NULL,0,0),(845,2,1,75.00,'CR',NULL,'',NULL,1,NULL,0,0),(846,1,1246,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(846,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(847,1,1155,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(847,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(848,1,1221,52.00,'DR',NULL,'',NULL,1,NULL,0,0),(848,2,1,52.00,'CR',NULL,'',NULL,1,NULL,0,0),(849,1,1318,156.00,'DR',NULL,'',NULL,1,NULL,0,0),(849,2,1,156.00,'CR',NULL,'',NULL,1,NULL,0,0),(850,1,1318,266.00,'DR',NULL,'',NULL,1,NULL,0,0),(850,2,1,266.00,'CR',NULL,'',NULL,1,NULL,0,0),(851,1,1221,390.00,'DR',NULL,'',NULL,1,NULL,0,0),(851,2,1,390.00,'CR',NULL,'',NULL,1,NULL,0,0),(852,1,1318,334.00,'DR',NULL,'',NULL,1,NULL,0,0),(852,2,1,334.00,'CR',NULL,'',NULL,1,NULL,0,0),(853,1,1318,296.00,'DR',NULL,'',NULL,1,NULL,0,0),(853,2,1,296.00,'CR',NULL,'',NULL,1,NULL,0,0),(854,1,1171,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(854,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(855,1,1238,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(855,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(856,1,1238,370.00,'DR',NULL,'',NULL,1,NULL,0,0),(856,2,1,370.00,'CR',NULL,'',NULL,1,NULL,0,0),(857,1,1238,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(857,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(858,1,1318,229.00,'DR',NULL,'',NULL,1,NULL,0,0),(858,2,1,229.00,'CR',NULL,'',NULL,1,NULL,0,0),(859,1,1221,210.00,'DR',NULL,'',NULL,1,NULL,0,0),(859,2,1,210.00,'CR',NULL,'',NULL,1,NULL,0,0),(860,1,1246,140.00,'DR',NULL,'',NULL,1,NULL,0,0),(860,2,1,140.00,'CR',NULL,'',NULL,1,NULL,0,0),(861,1,1249,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(861,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(862,1,1155,239.00,'DR',NULL,'',NULL,1,NULL,0,0),(862,2,1,239.00,'CR',NULL,'',NULL,1,NULL,0,0),(863,1,1221,1906.00,'DR',NULL,'',NULL,1,NULL,0,0),(863,2,1,1906.00,'CR',NULL,'',NULL,1,NULL,0,0),(864,1,1157,3109.00,'DR',NULL,'',NULL,1,NULL,0,0),(864,2,1,3109.00,'CR',NULL,'',NULL,1,NULL,0,0),(865,1,1157,1439.00,'DR',NULL,'',NULL,1,NULL,0,0),(865,2,1,1439.00,'CR',NULL,'',NULL,1,NULL,0,0),(866,1,1226,90.00,'DR',NULL,'',NULL,1,NULL,0,0),(866,2,1,90.00,'CR',NULL,'',NULL,1,NULL,0,0),(867,1,1318,350.00,'DR',NULL,'',NULL,1,NULL,0,0),(867,2,1,350.00,'CR',NULL,'',NULL,1,NULL,0,0),(868,1,1246,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(868,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(869,1,1241,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(869,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(870,1,1155,1185.00,'DR',NULL,'',NULL,1,NULL,0,0),(870,2,1,1185.00,'CR',NULL,'',NULL,1,NULL,0,0),(871,1,1221,3516.00,'DR',NULL,'',NULL,1,NULL,0,0),(871,2,1,3516.00,'CR',NULL,'',NULL,1,NULL,0,0),(872,1,1206,64.00,'DR',NULL,'',NULL,1,NULL,0,0),(872,2,1,64.00,'CR',NULL,'',NULL,1,NULL,0,0),(873,1,1171,230.00,'DR',NULL,'',NULL,1,NULL,0,0),(873,2,1,230.00,'CR',NULL,'',NULL,1,NULL,0,0),(874,1,1197,54.00,'DR',NULL,'',NULL,1,NULL,0,0),(874,2,1,54.00,'CR',NULL,'',NULL,1,NULL,0,0),(875,1,1236,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(875,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(876,1,1238,70.00,'DR',NULL,'',NULL,1,NULL,0,0),(876,2,1,70.00,'CR',NULL,'',NULL,1,NULL,0,0),(877,1,1317,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(877,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(878,1,1221,1350.00,'DR',NULL,'',NULL,1,NULL,0,0),(878,2,1,1350.00,'CR',NULL,'',NULL,1,NULL,0,0),(879,1,1317,245.00,'DR',NULL,'',NULL,1,NULL,0,0),(879,2,1,245.00,'CR',NULL,'',NULL,1,NULL,0,0),(880,1,1152,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(880,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(881,1,1221,182.00,'DR',NULL,'',NULL,1,NULL,0,0),(881,2,1,182.00,'CR',NULL,'',NULL,1,NULL,0,0),(882,1,1221,40.00,'DR',NULL,'',NULL,1,NULL,0,0),(882,2,1,40.00,'CR',NULL,'',NULL,1,NULL,0,0),(883,1,1155,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(883,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(884,1,1221,201.00,'DR',NULL,'',NULL,1,NULL,0,0),(884,2,1,201.00,'CR',NULL,'',NULL,1,NULL,0,0),(885,1,1221,105.00,'DR',NULL,'',NULL,1,NULL,0,0),(885,2,1,105.00,'CR',NULL,'',NULL,1,NULL,0,0),(886,1,1221,600.00,'DR',NULL,'',NULL,1,NULL,0,0),(886,2,1,600.00,'CR',NULL,'',NULL,1,NULL,0,0),(887,1,1221,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(887,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(888,1,1221,370.00,'DR',NULL,'',NULL,1,NULL,0,0),(888,2,1,370.00,'CR',NULL,'',NULL,1,NULL,0,0),(889,1,1224,2712.00,'DR',NULL,'',NULL,1,NULL,0,0),(889,2,1,2712.00,'CR',NULL,'',NULL,1,NULL,0,0),(890,1,1226,229.00,'DR',NULL,'',NULL,1,NULL,0,0),(890,2,1,229.00,'CR',NULL,'',NULL,1,NULL,0,0),(891,1,1221,585.00,'DR',NULL,'',NULL,1,NULL,0,0),(891,2,1,585.00,'CR',NULL,'',NULL,1,NULL,0,0),(892,1,1221,240.00,'DR',NULL,'',NULL,1,NULL,0,0),(892,2,1,240.00,'CR',NULL,'',NULL,1,NULL,0,0),(893,1,1221,1770.00,'DR',NULL,'',NULL,1,NULL,0,0),(893,2,1,1770.00,'CR',NULL,'',NULL,1,NULL,0,0),(894,1,1221,1645.00,'DR',NULL,'',NULL,1,NULL,0,0),(894,2,1,1645.00,'CR',NULL,'',NULL,1,NULL,0,0),(895,1,1152,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(895,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(896,1,1152,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(896,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(897,1,1221,990.00,'DR',NULL,'',NULL,1,NULL,0,0),(897,2,1,990.00,'CR',NULL,'',NULL,1,NULL,0,0),(898,1,1221,4300.00,'DR',NULL,'',NULL,1,NULL,0,0),(898,2,1,4300.00,'CR',NULL,'',NULL,1,NULL,0,0),(899,1,1096,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(899,2,1,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(900,1,1096,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(900,2,1,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(901,1,1310,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(901,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(902,1,1103,4370.00,'CR',NULL,'',NULL,1,NULL,0,0),(902,2,1,4370.00,'DR',NULL,'',NULL,1,NULL,0,0),(903,1,1227,176.00,'DR',NULL,'',NULL,1,NULL,0,0),(903,2,1,176.00,'CR',NULL,'',NULL,1,NULL,0,0),(904,1,1152,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(904,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0);
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

-- Dump completed on 2016-04-15 14:31:36

