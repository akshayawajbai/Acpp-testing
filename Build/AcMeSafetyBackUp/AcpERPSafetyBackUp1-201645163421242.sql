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
INSERT INTO `costcategory_costcentre` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9);
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
INSERT INTO `country_symbols` VALUES ('ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â±.Ãƒ'),('ÃƒÆ’Ã‚ÂÃƒâ€šÃ‚Â»ÃƒÆ’'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('NT$'),('KÃƒÆ’Ã¢â‚¬Å¾Ãƒâ€šÃ‚Â'),('kr.'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('$'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('Ft'),('kr.'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¥'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('kr'),('zÃƒÆ’Ã¢â‚¬Â¦ÃƒÂ¢Ã¢â€š'),('R$'),('fr.'),('lei'),('ÃƒÆ’Ã¢â‚¬ËœÃƒÂ¢Ã¢â‚¬Å¡'),('kn'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('Lek'),('kr'),('ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â¸Ãƒâ€š'),('TL'),('Rs'),('Rp'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã¢â‚¬ËœÃƒÂ¢Ã¢â‚¬Å¡'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('kr'),('Ls'),('Lt'),('ÃƒÆ’Ã¢â‚¬ËœÃƒÂ¢Ã¢â€šÂ¬'),('ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â±ÃƒÆ’'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã¢â‚¬Â¢Ãƒâ€šÃ‚Â¤Ãƒ'),('man.'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã‚ÂÃƒâ€šÃ‚Â´ÃƒÆ’'),('R'),('R'),('R'),('R'),('Lari'),('kr.'),('ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â¤Ãƒâ€š'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('kr'),('RM'),('ÃƒÆ’Ã‚ÂÃƒâ€šÃ‚Â¢'),('ÃƒÆ’Ã¢â‚¬ËœÃƒâ€šÃ‚ÂÃƒ'),('S'),('m.'),('so'),('ÃƒÆ’Ã¢â‚¬ËœÃƒÂ¢Ã¢â‚¬Å¡'),('ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â¦Ãƒâ€¦'),('ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â¨Ãƒâ€š'),('ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚ÂªÃƒâ€š'),('ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â¬Ãƒâ€¦'),('ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â®Ãƒâ€š'),('ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â°Ãƒâ€š'),('ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â²Ãƒâ€š'),('ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â´ÃƒÂ¢'),('ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â¦Ãƒâ€¦'),('ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â¤Ãƒâ€š'),('ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â¤Ãƒâ€š'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¥'),('ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â£'),('ÃƒÆ’Ã‚Â¡Ãƒâ€¦Ã‚Â¸ÃƒÂ¢'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â¤Ãƒâ€š'),('ÃƒÆ’Ã¢â€žÂ¢ÃƒÂ¢Ã¢â€šÂ¬'),('ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â¶Ãƒâ€š'),('$'),('ETB'),('ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â¤Ãƒâ€š'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã‹Å“ÃƒÂ¢Ã¢â€šÂ¬Ã‚'),('PhP'),('ÃƒÆ’Ã…Â¾Ãƒâ€ Ã¢â‚¬â„¢.'),('N'),('N'),('$b'),('R'),('ÃƒÆ’Ã¢â‚¬â„¢Ãƒâ€šÃ‚Â».'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('kr.'),('N'),('ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¥'),('$'),('$'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¥'),('$'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã¢â‚¬ËœÃƒâ€šÃ‚Â.'),('Q'),('RWF'),('XOF'),('ÃƒÆ’Ã‹Å“ÃƒÂ¢Ã¢â€šÂ¬Ã‚'),('ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â£'),('ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â¯.Ãƒ'),('ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¥'),('Fr.'),('ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â£'),('$'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('fr.'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('kr'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('Din.'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã‚ÂÃƒâ€šÃ‚Â¼ÃƒÆ’'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('kr'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('$'),('ÃƒÆ’Ã¢â‚¬ËœÃƒâ€šÃ‚ÂÃƒ'),('ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â§Ãƒâ€š'),('ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¥'),('$'),('DZD'),('$'),('ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â¬.Ãƒ'),('HK$'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('$'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('$'),('ÃƒÆ’Ã‚ÂÃƒÂ¢Ã¢â€šÂ¬Ã‚'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('S/.'),('ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â¯.Ãƒ'),('$'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('$'),('Q'),('fr.'),('KM'),('kr'),('ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â¯.Ãƒ'),('MOP'),('CHF'),('$'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('KM'),('kr'),('ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â¯.Ãƒ'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('B/.'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('KM'),('kr'),('ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â¯.Ãƒ'),('R'),('RD$'),('ÃƒÆ’Ã‚ÂÃƒâ€¦Ã‚Â¡ÃƒÆ’'),('kr'),('ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â±.Ãƒ'),('J$'),('Bs. F.'),('ÃƒÆ’Ã‚ÂÃƒâ€¦Ã‚Â¡ÃƒÆ’'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â±.Ãƒ'),('$'),('$'),('Din.'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã¢â€žÂ¢ÃƒÂ¢Ã¢â€šÂ¬'),('BZ$'),('S/.'),('ÃƒÆ’Ã‚ÂÃƒÂ¢Ã¢â€šÂ¬Ã‚'),('ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â¯.Ãƒ'),('TT$'),('$'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã¢â€žÂ¢ÃƒÂ¢Ã¢â€šÂ¬'),('Z$'),('$'),('ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…'),('ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â¯.Ãƒ'),('Php'),('$'),('ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â¯.Ãƒ'),('$U'),('ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â¯.Ãƒ'),('Gs'),('ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â±.Ãƒ'),('Rs.'),('$b'),('RM'),('$'),('$'),('L.'),('C$'),('$'),('$'),('ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â¤Ãƒâ€š');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fd_account`
--

LOCK TABLES `fd_account` WRITE;
/*!40000 ALTER TABLE `fd_account` DISABLE KEYS */;
INSERT INTO `fd_account` VALUES (1,'TBM/TDR/2003/A -7473',2,2,2,4,0,423653.00,'DR','OP','','','2014-11-12 00:00:00','2015-11-12 00:00:00',8.9,37705.117,'0',1,1,'FD-O','','0',0),(2,'TBM/TDR/2003/A',2,2,2,4,0,253029.00,'DR','OP','','','2014-12-01 00:00:00','2015-12-01 00:00:00',8.9,22519.581,'0',1,1,'FD-O','','0',0),(3,'318199',1,2,2,4,0,265222.00,'DR','OP','','','2014-06-15 00:00:00','2015-06-15 00:00:00',9.05,24002.591,'0',1,1,'FD-O','','0',0),(4,'319262',2,2,2,4,0,80812.00,'DR','OP','','','2014-06-20 00:00:00','2015-06-20 00:00:00',9.05,7313.486,'0',1,1,'FD-O','','0',0),(5,'746438',1,2,2,4,0,161718.00,'DR','OP','','','2014-12-30 00:00:00','2015-12-30 00:00:00',8.9,14392.902,'0',1,1,'FD-O','','0',0),(6,'671615',1,2,2,4,0,262754.00,'DR','OP','','','2014-07-26 00:00:00','2015-07-26 00:00:00',9.05,23779.237,'0',1,1,'FD-O','','0',0),(7,'318320',1,2,2,4,0,245335.00,'DR','OP','','','2014-07-26 00:00:00','2015-07-26 00:00:00',9.05,22202.8175,'0',1,1,'FD-O','','0',0),(8,'1446224',1,2,2,2,0,109844.00,'DR','OP','','','2014-09-18 00:00:00','2015-09-18 00:00:00',9,9885.96,'0',1,1,'FD-O','','0',0),(9,'1446223',1,2,2,2,0,109844.00,'DR','OP','','','2014-09-18 00:00:00','2015-09-18 00:00:00',9,9885.96,'0',1,1,'FD-O','','0',0),(10,'1446222',1,2,2,2,0,109844.00,'DR','OP','','','2014-09-18 00:00:00','2015-09-18 00:00:00',9,9885.96,'0',1,1,'FD-O','','0',0),(11,'1446258',1,2,2,2,0,54922.00,'DR','OP','','','2014-10-19 00:00:00','2015-10-19 00:00:00',9,4942.98,'0',1,1,'FD-O','','0',0),(12,'1446257',1,2,2,2,0,109844.00,'DR','OP','','','2014-10-19 00:00:00','2015-10-19 00:00:00',9,9885.96,'0',1,1,'FD-O','','0',0),(13,'1446573',1,2,2,2,0,100000.00,'DR','OP','','','2014-06-17 00:00:00','2015-06-17 00:00:00',9.25,9250,'0',1,1,'FD-O','','0',0),(14,'086329',1,2,2,1,0,84249.00,'DR','OP','','','2014-05-16 00:00:00','2015-05-16 00:00:00',9,7582.41,'0',1,1,'FD-O','','0',0),(15,'086328',1,2,2,1,0,84249.00,'DR','OP','','','2014-05-16 00:00:00','2015-05-16 00:00:00',9,7582.41,'0',1,1,'FD-O','','0',0),(16,'446360',1,2,2,1,0,128935.00,'DR','OP','','','2014-11-10 00:00:00','2015-11-10 00:00:00',9,11604.15,'0',1,1,'FD-O','','0',0),(17,'446352',1,2,2,1,0,120937.00,'DR','OP','','','2014-11-18 00:00:00','2015-11-10 00:00:00',9,10645.7693424658,'0',1,1,'FD-O','','0',0),(18,'086327',1,2,2,1,0,86548.00,'DR','OP','','','2014-06-14 00:00:00','2017-06-14 00:00:00',9,23389.3006027397,'0',1,1,'FD-O','','0',0),(19,'086330',1,2,2,1,0,85288.00,'DR','OP','','','2014-03-28 00:00:00','2017-03-28 00:00:00',8.75,22408.5457534247,'0',1,1,'FD-O','','0',0),(20,'0466924',1,2,2,3,0,66772.00,'DR','OP','','','2014-10-03 00:00:00','2015-04-02 00:00:00',8.6,2847.59712876712,'0',1,1,'FD-O','','0',0),(21,'490799',1,2,2,3,0,78874.00,'DR','OP','','','2015-02-07 00:00:00','2018-02-07 00:00:00',8.6,20368.0760109589,'0',1,1,'FD-O','','0',0),(22,'112001',1,2,2,3,0,47327.00,'DR','OP','','','2015-02-07 00:00:00','2018-02-07 00:00:00',8.6,12221.5170191781,'0',1,1,'FD-O','','0',0),(23,'112002',1,2,2,3,0,78875.00,'DR','OP','','','2015-02-07 00:00:00','2018-02-07 00:00:00',8.6,20368.3342465753,'0',1,1,'FD-O','','0',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fd_renewal`
--

LOCK TABLES `fd_renewal` WRITE;
/*!40000 ALTER TABLE `fd_renewal` DISABLE KEYS */;
INSERT INTO `fd_renewal` VALUES (15,1,'2015-05-16 00:00:00','2016-05-16 00:00:00',1048,0,1155,1155,7842,0,9,0,'','ACI',1,1,0,0,'RN'),(14,2,'2015-05-16 00:00:00','2016-05-16 00:00:00',1048,0,1156,1156,7842,0,9,0,'','ACI',1,1,0,0,'RN');
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
INSERT INTO `headoffice_mapped_ledger` VALUES (1100,1),(1045,2),(1101,3),(1048,4),(1049,5),(1102,6),(1053,7),(1103,8),(1104,9),(1105,10),(1106,11),(1065,12),(1107,13),(1074,14),(1075,15),(1080,16),(1108,17),(1109,18),(1110,19),(1111,20),(1088,21),(1112,22),(1113,23),(1094,24),(1114,25),(1115,26),(1116,27),(1046,28),(1047,29),(1050,30),(1051,31),(1052,32),(1117,33),(1056,34),(1057,35),(1118,36),(1119,37),(1058,38),(1120,39),(1059,40),(1060,41),(1061,42),(1063,43),(1064,44),(1066,45),(1067,46),(1069,47),(1121,48),(1070,49),(1122,50),(1071,51),(1123,52),(1073,53),(1076,54),(1077,55),(1078,56),(1079,57),(1124,58),(1125,59),(1126,60),(1127,61),(1082,62),(1083,63),(1084,64),(1128,65),(1085,66),(1086,67),(1087,68),(1129,69),(1089,70),(1090,71),(1091,72),(1130,73),(1092,74),(1093,75),(1131,76),(1054,77),(1132,78),(1133,79),(1134,80),(2,81),(1072,82),(1055,83),(1135,84),(1136,85),(1137,86),(1138,87),(1139,88),(1140,89),(1141,90),(1142,91),(1143,92),(1144,93),(1145,94),(1146,95),(1147,96),(1148,97),(1149,98),(1150,99),(1151,100),(1152,101),(1153,102),(1154,103),(1081,104),(1155,105),(1156,106),(1157,107),(1158,108),(1159,109),(1160,110),(1161,111),(1162,112),(1163,113),(1062,114),(1164,115),(1165,116),(1166,117),(1167,118),(1168,119),(1169,120),(1170,121),(1068,122),(1171,123),(1172,124),(1173,125),(1174,126),(1175,127),(1176,128),(1177,129),(1178,130),(1179,131),(1004,132),(1005,133),(1006,134),(1008,135),(1180,136);
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
INSERT INTO `ledger_balance` VALUES ('2014-03-24 00:00:00',1,1,54295.00,'DR','OP',0),('2014-03-24 00:00:00',1,2,2391381.00,'DR','OP',0),('2014-03-24 00:00:00',1,1095,905781.00,'DR','OP',0),('2014-03-24 00:00:00',1,1096,8202.00,'DR','OP',0),('2014-03-24 00:00:00',1,1097,31898.00,'DR','OP',0),('2014-03-24 00:00:00',2,2,757494.00,'DR','OP',0),('2014-03-24 00:00:00',2,1098,197948.35,'DR','OP',0),('2014-03-24 00:00:00',3,1099,72101.33,'DR','OP',0),('2015-04-01 00:00:00',1,1,49710.00,'DR','TR',0),('2015-04-01 00:00:00',1,1050,885.00,'DR','TR',0),('2015-04-01 00:00:00',1,1052,2314.00,'DR','TR',0),('2015-04-01 00:00:00',1,1063,250.00,'DR','TR',0),('2015-04-01 00:00:00',1,1078,636.00,'DR','TR',0),('2015-04-01 00:00:00',1,1091,500.00,'DR','TR',0),('2015-04-01 00:00:00',2,1,37870.00,'DR','TR',0),('2015-04-01 00:00:00',2,1051,160.00,'DR','TR',0),('2015-04-01 00:00:00',2,1054,50000.00,'CR','TR',0),('2015-04-01 00:00:00',2,1063,2350.00,'DR','TR',0),('2015-04-01 00:00:00',2,1082,20.00,'DR','TR',0),('2015-04-01 00:00:00',2,1083,100.00,'DR','TR',0),('2015-04-01 00:00:00',2,1087,9500.00,'DR','TR',0),('2015-04-02 00:00:00',1,1,45421.00,'DR','TR',0),('2015-04-02 00:00:00',1,1089,554.00,'DR','TR',0),('2015-04-02 00:00:00',1,1093,3735.00,'DR','TR',0),('2015-04-02 00:00:00',2,1,31870.00,'DR','TR',0),('2015-04-02 00:00:00',2,1085,6000.00,'DR','TR',0),('2015-04-03 00:00:00',1,1,43571.00,'DR','TR',0),('2015-04-03 00:00:00',1,1061,1850.00,'DR','TR',0),('2015-04-03 00:00:00',2,1,31765.00,'DR','TR',0),('2015-04-03 00:00:00',2,1063,2455.00,'DR','TR',0),('2015-04-04 00:00:00',1,1,45622.00,'DR','TR',0),('2015-04-04 00:00:00',1,1061,2350.00,'DR','TR',0),('2015-04-04 00:00:00',1,1063,1699.00,'DR','TR',0),('2015-04-04 00:00:00',1,1088,4000.00,'CR','TR',0),('2015-04-04 00:00:00',2,1,29119.00,'DR','TR',0),('2015-04-04 00:00:00',2,1063,5101.00,'DR','TR',0),('2015-04-04 00:00:00',3,1065,96000.00,'CR','TR',0),('2015-04-04 00:00:00',3,1099,168101.33,'DR','TR',0),('2015-04-05 00:00:00',1,1,39032.00,'DR','TR',0),('2015-04-05 00:00:00',1,1075,2500.00,'CR','TR',0),('2015-04-05 00:00:00',1,1083,950.00,'DR','TR',0),('2015-04-05 00:00:00',1,1086,5780.00,'DR','TR',0),('2015-04-05 00:00:00',1,1091,2860.00,'DR','TR',0),('2015-04-06 00:00:00',1,1,36032.00,'DR','TR',0),('2015-04-06 00:00:00',1,1055,50000.00,'DR','TR',0),('2015-04-06 00:00:00',1,1060,3000.00,'DR','TR',0),('2015-04-06 00:00:00',1,1095,855781.00,'DR','TR',0),('2015-04-06 00:00:00',2,1,28419.00,'DR','TR',0),('2015-04-06 00:00:00',2,1063,5801.00,'DR','TR',0),('2015-04-07 00:00:00',1,1,82394.00,'DR','TR',0),('2015-04-07 00:00:00',1,1050,2468.00,'DR','TR',0),('2015-04-07 00:00:00',1,1053,50000.00,'CR','TR',0),('2015-04-07 00:00:00',1,1055,80000.00,'DR','TR',0),('2015-04-07 00:00:00',1,1078,826.00,'DR','TR',0),('2015-04-07 00:00:00',1,1080,775.00,'CR','TR',0),('2015-04-07 00:00:00',1,1085,1500.00,'DR','TR',0),('2015-04-07 00:00:00',1,1089,754.00,'DR','TR',0),('2015-04-07 00:00:00',1,1091,3800.00,'DR','TR',0),('2015-04-07 00:00:00',1,1095,825781.00,'DR','TR',0),('2015-04-07 00:00:00',2,1,24916.00,'DR','TR',0),('2015-04-07 00:00:00',2,1050,135.00,'DR','TR',0),('2015-04-07 00:00:00',2,1063,9009.00,'DR','TR',0),('2015-04-07 00:00:00',2,1078,160.00,'DR','TR',0),('2015-04-08 00:00:00',1,1,80894.00,'DR','TR',0),('2015-04-08 00:00:00',1,1060,3500.00,'DR','TR',0),('2015-04-08 00:00:00',1,1061,3350.00,'DR','TR',0),('2015-04-08 00:00:00',2,1,23447.00,'DR','TR',0),('2015-04-08 00:00:00',2,1060,500.00,'DR','TR',0),('2015-04-08 00:00:00',2,1063,9934.00,'DR','TR',0),('2015-04-08 00:00:00',2,1093,44.00,'DR','TR',0),('2015-04-09 00:00:00',1,1,80372.00,'DR','TR',0),('2015-04-09 00:00:00',1,1091,4322.00,'DR','TR',0),('2015-04-09 00:00:00',2,1,23157.00,'DR','TR',0),('2015-04-09 00:00:00',2,1063,10224.00,'DR','TR',0),('2015-04-10 00:00:00',1,1,79937.00,'DR','TR',0),('2015-04-10 00:00:00',1,1053,210000.00,'CR','TR',0),('2015-04-10 00:00:00',1,1063,1979.00,'DR','TR',0),('2015-04-10 00:00:00',1,1091,4477.00,'DR','TR',0),('2015-04-10 00:00:00',1,1095,985781.00,'DR','TR',0),('2015-04-11 00:00:00',1,1,76792.00,'DR','TR',0),('2015-04-11 00:00:00',1,1052,2713.00,'DR','TR',0),('2015-04-11 00:00:00',1,1078,3375.00,'DR','TR',0),('2015-04-11 00:00:00',1,1083,1147.00,'DR','TR',0),('2015-04-11 00:00:00',2,1,22157.00,'DR','TR',0),('2015-04-11 00:00:00',2,1060,1500.00,'DR','TR',0),('2015-04-12 00:00:00',1,1,73107.00,'DR','TR',0),('2015-04-12 00:00:00',1,1063,2679.00,'DR','TR',0),('2015-04-12 00:00:00',1,1086,8180.00,'DR','TR',0),('2015-04-12 00:00:00',1,1089,999.00,'DR','TR',0),('2015-04-12 00:00:00',1,1091,4817.00,'DR','TR',0),('2015-04-13 00:00:00',2,1,20105.00,'DR','TR',0),('2015-04-13 00:00:00',2,1063,10776.00,'DR','TR',0),('2015-04-13 00:00:00',2,1067,1500.00,'DR','TR',0),('2015-04-15 00:00:00',1,1,71867.00,'DR','TR',0),('2015-04-15 00:00:00',1,1060,4500.00,'DR','TR',0),('2015-04-15 00:00:00',1,1084,240.00,'DR','TR',0),('2015-04-16 00:00:00',1,1,70274.00,'DR','TR',0),('2015-04-16 00:00:00',1,1078,4878.00,'DR','TR',0),('2015-04-16 00:00:00',1,1083,1237.00,'DR','TR',0),('2015-04-16 00:00:00',2,1,19986.00,'DR','TR',0),('2015-04-16 00:00:00',2,1079,119.00,'DR','TR',0),('2015-04-17 00:00:00',1,1,68390.00,'DR','TR',0),('2015-04-17 00:00:00',1,1063,3308.00,'DR','TR',0),('2015-04-17 00:00:00',1,1091,6072.00,'DR','TR',0),('2015-04-17 00:00:00',2,1,19524.00,'DR','TR',0),('2015-04-17 00:00:00',2,1060,1706.00,'DR','TR',0),('2015-04-17 00:00:00',2,1063,11032.00,'DR','TR',0),('2015-04-18 00:00:00',1,1,66491.00,'DR','TR',0),('2015-04-18 00:00:00',1,1052,3626.00,'DR','TR',0),('2015-04-18 00:00:00',1,1063,4024.00,'DR','TR',0),('2015-04-18 00:00:00',1,1091,6342.00,'DR','TR',0),('2015-04-19 00:00:00',1,1,85271.00,'DR','TR',0),('2015-04-19 00:00:00',1,1053,230000.00,'CR','TR',0),('2015-04-19 00:00:00',1,1063,4594.00,'DR','TR',0),('2015-04-19 00:00:00',1,1091,6992.00,'DR','TR',0),('2015-04-19 00:00:00',2,1,19339.00,'DR','TR',0),('2015-04-19 00:00:00',2,1063,11172.00,'DR','TR',0),('2015-04-19 00:00:00',2,1084,45.00,'DR','TR',0),('2015-04-20 00:00:00',1,1,90914.00,'DR','TR',0),('2015-04-20 00:00:00',1,1053,239205.00,'CR','TR',0),('2015-04-20 00:00:00',1,1061,8853.00,'DR','TR',0),('2015-04-20 00:00:00',1,1086,11380.00,'DR','TR',0),('2015-04-20 00:00:00',1,1091,7354.00,'DR','TR',0),('2015-04-20 00:00:00',1,1095,980278.00,'DR','TR',0),('2015-04-20 00:00:00',2,1,17519.00,'DR','TR',0),('2015-04-20 00:00:00',2,1089,1820.00,'DR','TR',0),('2015-04-21 00:00:00',1,1,86001.00,'DR','TR',0),('2015-04-21 00:00:00',1,1060,6500.00,'DR','TR',0),('2015-04-21 00:00:00',1,1083,1567.00,'DR','TR',0),('2015-04-21 00:00:00',1,1084,2670.00,'DR','TR',0),('2015-04-21 00:00:00',1,1091,7507.00,'DR','TR',0),('2015-04-21 00:00:00',2,1,16909.00,'DR','TR',0),('2015-04-21 00:00:00',2,1063,11332.00,'DR','TR',0),('2015-04-21 00:00:00',2,1083,220.00,'DR','TR',0),('2015-04-21 00:00:00',2,1084,375.00,'DR','TR',0),('2015-04-22 00:00:00',1,1,91193.00,'DR','TR',0),('2015-04-22 00:00:00',1,1063,5194.00,'DR','TR',0),('2015-04-22 00:00:00',1,1084,3020.00,'DR','TR',0),('2015-04-22 00:00:00',1,1086,2380.00,'DR','TR',0),('2015-04-22 00:00:00',1,1089,3857.00,'DR','TR',0),('2015-04-22 00:00:00',2,1,16253.00,'DR','TR',0),('2015-04-22 00:00:00',2,1063,11988.00,'DR','TR',0),('2015-04-23 00:00:00',1,1,81161.00,'DR','TR',0),('2015-04-23 00:00:00',1,1082,32.00,'DR','TR',0),('2015-04-23 00:00:00',1,1093,13735.00,'DR','TR',0),('2015-05-01 00:00:00',1,1,79961.00,'DR','TR',0),('2015-05-01 00:00:00',1,1086,3580.00,'DR','TR',0),('2015-05-02 00:00:00',2,1,13753.00,'DR','TR',0),('2015-05-02 00:00:00',2,1085,8500.00,'DR','TR',0),('2015-05-06 00:00:00',1,1,83961.00,'DR','TR',0),('2015-05-06 00:00:00',1,1088,8000.00,'CR','TR',0),('2015-05-06 00:00:00',2,1,13603.00,'DR','TR',0),('2015-05-06 00:00:00',2,1078,310.00,'DR','TR',0),('2015-05-18 00:00:00',1,1,83861.00,'DR','TR',0),('2015-05-18 00:00:00',1,1091,7607.00,'DR','TR',0),('2015-05-18 00:00:00',2,1,13230.00,'DR','TR',0),('2015-05-18 00:00:00',2,1091,373.00,'DR','TR',0),('2015-05-21 00:00:00',2,1,12230.00,'DR','TR',0),('2015-05-21 00:00:00',2,1093,1044.00,'DR','TR',0),('2015-05-21 00:00:00',3,1066,96000.00,'DR','TR',0),('2015-05-21 00:00:00',3,1099,72101.33,'DR','TR',0),('2015-05-22 00:00:00',2,1,11930.00,'DR','TR',0),('2015-05-22 00:00:00',2,1084,675.00,'DR','TR',0),('2015-05-24 00:00:00',2,1,11430.00,'DR','TR',0),('2015-05-24 00:00:00',2,1058,500.00,'DR','TR',0),('2015-05-27 00:00:00',1,1,82861.00,'DR','TR',0),('2015-05-27 00:00:00',1,1093,14735.00,'DR','TR',0),('2015-05-27 00:00:00',2,1,11250.00,'DR','TR',0),('2015-05-27 00:00:00',2,1051,235.00,'DR','TR',0),('2015-05-27 00:00:00',2,1082,125.00,'DR','TR',0),('2015-05-28 00:00:00',1,1,79922.00,'DR','TR',0),('2015-05-28 00:00:00',1,1051,1200.00,'DR','TR',0),('2015-05-28 00:00:00',1,1063,5333.00,'DR','TR',0),('2015-05-28 00:00:00',1,1083,2167.00,'DR','TR',0),('2015-05-28 00:00:00',1,1091,8607.00,'DR','TR',0),('2015-05-30 00:00:00',1,1,79877.00,'DR','TR',0),('2015-05-30 00:00:00',1,1084,3065.00,'DR','TR',0),('2015-05-30 00:00:00',2,1,11090.00,'DR','TR',0),('2015-05-30 00:00:00',2,1078,470.00,'DR','TR',0),('2015-06-01 00:00:00',1,1,129877.00,'DR','TR',0),('2015-06-01 00:00:00',1,1053,289205.00,'CR','TR',0),('2015-06-02 00:00:00',2,1,7590.00,'DR','TR',0),('2015-06-02 00:00:00',2,1085,12000.00,'DR','TR',0),('2015-06-07 00:00:00',1,1,126587.00,'DR','TR',0),('2015-06-07 00:00:00',1,1063,6033.00,'DR','TR',0),('2015-06-07 00:00:00',1,1093,17325.00,'DR','TR',0),('2015-06-09 00:00:00',1,1,126324.00,'DR','TR',0),('2015-06-09 00:00:00',1,1093,17588.00,'DR','TR',0),('2015-06-10 00:00:00',2,1,6825.00,'DR','TR',0),('2015-06-10 00:00:00',2,1063,12753.00,'DR','TR',0),('2015-06-10 00:00:00',3,1065,220140.00,'CR','TR',0),('2015-06-10 00:00:00',3,1099,196241.33,'DR','TR',0),('2015-06-11 00:00:00',1,1,123408.00,'DR','TR',0),('2015-06-11 00:00:00',1,1063,7147.00,'DR','TR',0),('2015-06-11 00:00:00',1,1089,4247.00,'DR','TR',0),('2015-06-11 00:00:00',1,1091,10019.00,'DR','TR',0),('2015-06-11 00:00:00',2,1,6115.00,'DR','TR',0),('2015-06-11 00:00:00',2,1063,13463.00,'DR','TR',0),('2015-06-13 00:00:00',1,1,122309.00,'DR','TR',0),('2015-06-13 00:00:00',1,1047,29.00,'DR','TR',0),('2015-06-13 00:00:00',1,1055,280000.00,'DR','TR',0),('2015-06-13 00:00:00',1,1063,7842.00,'DR','TR',0),('2015-06-13 00:00:00',1,1084,3469.00,'DR','TR',0),('2015-06-13 00:00:00',1,1095,780249.00,'DR','TR',0),('2015-06-13 00:00:00',2,1,4295.00,'DR','TR',0),('2015-06-13 00:00:00',2,1063,15283.00,'DR','TR',0),('2015-06-14 00:00:00',1,1,121859.00,'DR','TR',0),('2015-06-14 00:00:00',1,1063,8292.00,'DR','TR',0),('2015-06-14 00:00:00',2,1,2295.00,'DR','TR',0),('2015-06-14 00:00:00',2,1093,3044.00,'DR','TR',0),('2015-06-15 00:00:00',1,1,120554.00,'DR','TR',0),('2015-06-15 00:00:00',1,1050,2708.00,'DR','TR',0),('2015-06-15 00:00:00',1,1091,11084.00,'DR','TR',0),('2015-06-15 00:00:00',2,1,1708.00,'DR','TR',0),('2015-06-15 00:00:00',2,1051,385.00,'DR','TR',0),('2015-06-15 00:00:00',2,1063,15643.00,'DR','TR',0),('2015-06-15 00:00:00',2,1093,3121.00,'DR','TR',0),('2015-06-17 00:00:00',1,1,116966.00,'DR','TR',0),('2015-06-17 00:00:00',1,1091,14672.00,'DR','TR',0),('2015-06-17 00:00:00',2,1,1653.00,'DR','TR',0),('2015-06-17 00:00:00',2,1091,428.00,'DR','TR',0),('2015-06-18 00:00:00',1,1,116451.00,'DR','TR',0),('2015-06-18 00:00:00',1,1050,2858.00,'DR','TR',0),('2015-06-18 00:00:00',1,1091,15037.00,'DR','TR',0),('2015-06-18 00:00:00',2,1,196.00,'CR','TR',0),('2015-06-18 00:00:00',2,1089,3669.00,'DR','TR',0),('2015-06-19 00:00:00',1,1,114696.00,'DR','TR',0),('2015-06-19 00:00:00',1,1063,8592.00,'DR','TR',0),('2015-06-19 00:00:00',1,1072,481.00,'DR','TR',0),('2015-06-19 00:00:00',1,1091,16011.00,'DR','TR',0),('2015-06-20 00:00:00',1,1,112674.00,'DR','TR',0),('2015-06-20 00:00:00',1,1063,9214.00,'DR','TR',0),('2015-06-20 00:00:00',1,1089,5647.00,'DR','TR',0),('2015-06-20 00:00:00',2,1,7056.00,'CR','TR',0),('2015-06-20 00:00:00',2,1063,22408.00,'DR','TR',0),('2015-06-20 00:00:00',2,1078,565.00,'DR','TR',0),('2015-06-21 00:00:00',2,1,7210.00,'CR','TR',0),('2015-06-21 00:00:00',2,1063,22562.00,'DR','TR',0),('2015-06-22 00:00:00',1,1,110569.00,'DR','TR',0),('2015-06-22 00:00:00',1,1063,9564.00,'DR','TR',0),('2015-06-22 00:00:00',1,1072,566.00,'DR','TR',0),('2015-06-22 00:00:00',1,1091,16181.00,'DR','TR',0),('2015-06-22 00:00:00',1,1093,19088.00,'DR','TR',0),('2015-06-23 00:00:00',1,1,109813.00,'DR','TR',0),('2015-06-23 00:00:00',1,1078,5634.00,'DR','TR',0),('2015-06-24 00:00:00',1,1,108211.00,'DR','TR',0),('2015-06-24 00:00:00',1,1053,334205.00,'CR','TR',0),('2015-06-24 00:00:00',1,1059,1602.00,'DR','TR',0),('2015-06-24 00:00:00',1,1095,825249.00,'DR','TR',0),('2015-06-24 00:00:00',2,1,7390.00,'CR','TR',0),('2015-06-24 00:00:00',2,1083,310.00,'DR','TR',0),('2015-06-24 00:00:00',2,1084,765.00,'DR','TR',0),('2015-06-27 00:00:00',1,1053,344205.00,'CR','TR',0),('2015-06-27 00:00:00',1,1095,835249.00,'DR','TR',0),('2015-06-30 00:00:00',1,1,104000.00,'DR','TR',0),('2015-06-30 00:00:00',1,1083,3002.00,'DR','TR',0),('2015-06-30 00:00:00',1,1084,4469.00,'DR','TR',0),('2015-06-30 00:00:00',1,1091,16557.00,'DR','TR',0),('2015-06-30 00:00:00',1,1093,21088.00,'DR','TR',0),('2015-06-30 00:00:00',2,1,17555.00,'CR','TR',0),('2015-06-30 00:00:00',2,1060,11706.00,'DR','TR',0),('2015-06-30 00:00:00',2,1091,593.00,'DR','TR',0),('2015-07-01 00:00:00',2,1,53655.00,'DR','TR',0),('2015-07-01 00:00:00',2,1074,71210.00,'CR','TR',0),('2015-07-02 00:00:00',1,1,104000.00,'DR','TR',0),('2015-07-02 00:00:00',1,1055,580000.00,'DR','TR',0),('2015-07-02 00:00:00',1,1057,70000.00,'DR','TR',0),('2015-07-02 00:00:00',1,1095,465249.00,'DR','TR',0),('2015-07-02 00:00:00',2,1,28030.00,'DR','TR',0),('2015-07-02 00:00:00',2,1060,11806.00,'DR','TR',0),('2015-07-02 00:00:00',2,1077,7500.00,'DR','TR',0),('2015-07-02 00:00:00',2,1085,27000.00,'DR','TR',0),('2015-07-02 00:00:00',2,1091,3618.00,'DR','TR',0),('2015-07-04 00:00:00',1,1,123500.00,'DR','TR',0),('2015-07-04 00:00:00',1,1075,22000.00,'CR','TR',0),('2015-07-05 00:00:00',1,1,123354.00,'DR','TR',0),('2015-07-05 00:00:00',1,1063,9710.00,'DR','TR',0),('2015-07-05 00:00:00',2,1,24810.00,'DR','TR',0),('2015-07-05 00:00:00',2,1063,25782.00,'DR','TR',0),('2015-07-06 00:00:00',1,1,104754.00,'DR','TR',0),('2015-07-06 00:00:00',1,1071,16800.00,'DR','TR',0),('2015-07-06 00:00:00',1,1091,18357.00,'DR','TR',0),('2015-07-06 00:00:00',2,1,24590.00,'DR','TR',0),('2015-07-06 00:00:00',2,1091,3838.00,'DR','TR',0),('2015-07-07 00:00:00',1,1053,494205.00,'CR','TR',0),('2015-07-07 00:00:00',1,1095,615249.00,'DR','TR',0),('2015-07-07 00:00:00',2,1,22695.00,'DR','TR',0),('2015-07-07 00:00:00',2,1060,11906.00,'DR','TR',0),('2015-07-07 00:00:00',2,1063,27577.00,'DR','TR',0),('2015-07-09 00:00:00',1,1,103579.00,'DR','TR',0),('2015-07-09 00:00:00',1,1089,6822.00,'DR','TR',0),('2015-07-09 00:00:00',2,1,21695.00,'DR','TR',0),('2015-07-09 00:00:00',2,1060,12906.00,'DR','TR',0),('2015-07-10 00:00:00',2,1,21575.00,'DR','TR',0),('2015-07-10 00:00:00',2,1063,27697.00,'DR','TR',0),('2015-07-11 00:00:00',2,1,20915.00,'DR','TR',0),('2015-07-11 00:00:00',2,1058,1000.00,'DR','TR',0),('2015-07-11 00:00:00',2,1076,160.00,'DR','TR',0),('2015-07-12 00:00:00',2,1,20767.00,'DR','TR',0),('2015-07-12 00:00:00',2,1063,27845.00,'DR','TR',0),('2015-07-13 00:00:00',2,1,19672.00,'DR','TR',0),('2015-07-13 00:00:00',2,1079,369.00,'DR','TR',0),('2015-07-13 00:00:00',2,1084,1340.00,'DR','TR',0),('2015-07-13 00:00:00',2,1091,4108.00,'DR','TR',0),('2015-07-13 00:00:00',3,1065,312253.00,'CR','TR',0),('2015-07-13 00:00:00',3,1099,288354.33,'DR','TR',0),('2015-07-14 00:00:00',1,1,99399.00,'DR','TR',0),('2015-07-14 00:00:00',1,1050,4288.00,'DR','TR',0),('2015-07-14 00:00:00',1,1058,2750.00,'DR','TR',0),('2015-07-14 00:00:00',2,1,11840.00,'DR','TR',0),('2015-07-14 00:00:00',2,1058,4135.00,'DR','TR',0),('2015-07-14 00:00:00',2,1063,28609.00,'DR','TR',0),('2015-07-14 00:00:00',2,1078,1138.00,'DR','TR',0),('2015-07-14 00:00:00',2,1079,739.00,'DR','TR',0),('2015-07-14 00:00:00',2,1083,440.00,'DR','TR',0),('2015-07-14 00:00:00',2,1089,4454.00,'DR','TR',0),('2015-07-14 00:00:00',2,1091,6183.00,'DR','TR',0),('2015-07-15 00:00:00',1,1053,514205.00,'CR','TR',0),('2015-07-15 00:00:00',1,1095,635249.00,'DR','TR',0),('2015-07-15 00:00:00',2,1,9840.00,'DR','TR',0),('2015-07-15 00:00:00',2,1093,5121.00,'DR','TR',0),('2015-07-17 00:00:00',1,1,98918.00,'DR','TR',0),('2015-07-17 00:00:00',1,1063,10191.00,'DR','TR',0),('2015-07-17 00:00:00',2,1,7782.00,'DR','TR',0),('2015-07-17 00:00:00',2,1063,28729.00,'DR','TR',0),('2015-07-17 00:00:00',2,1089,6307.00,'DR','TR',0),('2015-07-17 00:00:00',2,1091,6268.00,'DR','TR',0),('2015-07-18 00:00:00',2,1,7286.00,'DR','TR',0),('2015-07-18 00:00:00',2,1084,1510.00,'DR','TR',0),('2015-07-18 00:00:00',2,1091,6594.00,'DR','TR',0),('2015-07-19 00:00:00',2,1,7132.00,'DR','TR',0),('2015-07-19 00:00:00',2,1063,28883.00,'DR','TR',0),('2015-07-20 00:00:00',1,1053,564205.00,'CR','TR',0),('2015-07-20 00:00:00',1,1095,685249.00,'DR','TR',0),('2015-07-21 00:00:00',1,1,166358.00,'DR','TR',0),('2015-07-21 00:00:00',1,1053,604205.00,'CR','TR',0),('2015-07-21 00:00:00',1,1061,20853.00,'DR','TR',0),('2015-07-21 00:00:00',1,1071,21860.00,'DR','TR',0),('2015-07-21 00:00:00',1,1091,18857.00,'DR','TR',0),('2015-07-21 00:00:00',1,1094,15000.00,'CR','TR',0),('2015-07-21 00:00:00',1,1095,655249.00,'DR','TR',0),('2015-07-21 00:00:00',2,1,4789.00,'DR','TR',0),('2015-07-21 00:00:00',2,1052,1011.00,'DR','TR',0),('2015-07-21 00:00:00',2,1061,120.00,'DR','TR',0),('2015-07-21 00:00:00',2,1071,1144.00,'DR','TR',0),('2015-07-21 00:00:00',2,1078,1206.00,'DR','TR',0),('2015-07-22 00:00:00',2,1,2780.00,'CR','TR',0),('2015-07-22 00:00:00',2,1063,36202.00,'DR','TR',0),('2015-07-22 00:00:00',2,1083,690.00,'DR','TR',0),('2015-07-24 00:00:00',2,1,3230.00,'CR','TR',0),('2015-07-24 00:00:00',2,1084,1960.00,'DR','TR',0),('2015-07-25 00:00:00',1,1,165758.00,'DR','TR',0),('2015-07-25 00:00:00',1,1091,19457.00,'DR','TR',0),('2015-07-25 00:00:00',2,1,3658.00,'CR','TR',0),('2015-07-25 00:00:00',2,1063,36630.00,'DR','TR',0),('2015-07-29 00:00:00',2,1,4914.00,'CR','TR',0),('2015-07-29 00:00:00',2,1060,12956.00,'DR','TR',0),('2015-07-29 00:00:00',2,1063,37590.00,'DR','TR',0),('2015-07-29 00:00:00',2,1078,1392.00,'DR','TR',0),('2015-07-29 00:00:00',2,1084,2020.00,'DR','TR',0),('2015-07-31 00:00:00',2,1,6914.00,'CR','TR',0),('2015-07-31 00:00:00',2,1093,7121.00,'DR','TR',0),('2015-08-01 00:00:00',2,1,12414.00,'CR','TR',0),('2015-08-01 00:00:00',2,1077,13000.00,'DR','TR',0),('2015-08-02 00:00:00',1,1,163121.00,'DR','TR',0),('2015-08-02 00:00:00',1,1063,12828.00,'DR','TR',0),('2015-08-02 00:00:00',2,1,23648.00,'CR','TR',0),('2015-08-02 00:00:00',2,1063,37824.00,'DR','TR',0),('2015-08-02 00:00:00',2,1085,38000.00,'DR','TR',0),('2015-08-03 00:00:00',1,1,212453.00,'DR','TR',0),('2015-08-03 00:00:00',1,1091,20125.00,'DR','TR',0),('2015-08-03 00:00:00',1,1095,605249.00,'DR','TR',0),('2015-08-03 00:00:00',2,1,23755.00,'CR','TR',0),('2015-08-03 00:00:00',2,1063,37931.00,'DR','TR',0),('2015-08-04 00:00:00',1,1,162453.00,'DR','TR',0),('2015-08-04 00:00:00',1,1055,630000.00,'DR','TR',0),('2015-08-05 00:00:00',1,1053,624205.00,'CR','TR',0),('2015-08-05 00:00:00',1,1095,625249.00,'DR','TR',0),('2015-08-05 00:00:00',2,1,23980.00,'CR','TR',0),('2015-08-05 00:00:00',2,1078,1617.00,'DR','TR',0),('2015-08-06 00:00:00',1,1,164793.00,'DR','TR',0),('2015-08-06 00:00:00',1,1053,674205.00,'CR','TR',0),('2015-08-06 00:00:00',1,1063,13288.00,'DR','TR',0),('2015-08-06 00:00:00',1,1074,3200.00,'CR','TR',0),('2015-08-06 00:00:00',1,1091,20525.00,'DR','TR',0),('2015-08-06 00:00:00',1,1095,675249.00,'DR','TR',0),('2015-08-06 00:00:00',2,1,24903.00,'DR','TR',0),('2015-08-06 00:00:00',2,1054,100000.00,'CR','TR',0),('2015-08-06 00:00:00',2,1063,38431.00,'DR','TR',0),('2015-08-06 00:00:00',2,1089,6924.00,'DR','TR',0),('2015-08-07 00:00:00',2,1,24103.00,'DR','TR',0),('2015-08-07 00:00:00',2,1089,7724.00,'DR','TR',0),('2015-08-08 00:00:00',1,1,155288.00,'DR','TR',0),('2015-08-08 00:00:00',1,1092,9505.00,'DR','TR',0),('2015-08-08 00:00:00',2,1,24003.00,'DR','TR',0),('2015-08-08 00:00:00',2,1093,7221.00,'DR','TR',0),('2015-08-09 00:00:00',2,1,23941.00,'DR','TR',0),('2015-08-09 00:00:00',2,1063,38493.00,'DR','TR',0),('2015-08-10 00:00:00',2,1,23754.00,'DR','TR',0),('2015-08-10 00:00:00',2,1076,320.00,'DR','TR',0),('2015-08-10 00:00:00',2,1082,152.00,'DR','TR',0),('2015-08-11 00:00:00',2,1,22544.00,'DR','TR',0),('2015-08-11 00:00:00',2,1089,8224.00,'DR','TR',0),('2015-08-11 00:00:00',2,1091,7304.00,'DR','TR',0),('2015-08-12 00:00:00',1,1,205288.00,'DR','TR',0),('2015-08-12 00:00:00',1,1094,65000.00,'CR','TR',0),('2015-08-12 00:00:00',2,1,21824.00,'DR','TR',0),('2015-08-12 00:00:00',2,1063,39213.00,'DR','TR',0),('2015-08-13 00:00:00',1,1053,694205.00,'CR','TR',0),('2015-08-13 00:00:00',1,1095,695249.00,'DR','TR',0),('2015-08-13 00:00:00',2,1,20704.00,'DR','TR',0),('2015-08-13 00:00:00',2,1063,39333.00,'DR','TR',0),('2015-08-13 00:00:00',2,1093,8221.00,'DR','TR',0),('2015-08-14 00:00:00',2,1,14034.00,'DR','TR',0),('2015-08-14 00:00:00',2,1051,535.00,'DR','TR',0),('2015-08-14 00:00:00',2,1061,4020.00,'DR','TR',0),('2015-08-14 00:00:00',2,1063,39793.00,'DR','TR',0),('2015-08-14 00:00:00',2,1069,2160.00,'DR','TR',0),('2015-08-15 00:00:00',1,1,203736.00,'DR','TR',0),('2015-08-15 00:00:00',1,1059,3154.00,'DR','TR',0),('2015-08-15 00:00:00',2,1,10889.00,'DR','TR',0),('2015-08-15 00:00:00',2,1063,41438.00,'DR','TR',0),('2015-08-15 00:00:00',2,1093,9721.00,'DR','TR',0);
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
INSERT INTO `master_bank` VALUES (1,'','South Indian Bank','Nellore','','','','',NULL,'',NULL),(2,'BK7','Catholic Syrian Bank','Nellore','','','','',NULL,'',NULL),(3,'','Union Bank of India','Nellore','','','','',NULL,'',NULL),(4,'BK6','Bank of Baroda','Nellore','','','','',NULL,'',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_bank_account`
--

LOCK TABLES `master_bank_account` WRITE;
/*!40000 ALTER TABLE `master_bank_account` DISABLE KEYS */;
INSERT INTO `master_bank_account` VALUES (1,1095,'','0381053000002155','',1,1,'2008-03-28 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(2,1096,'','021001549517190001','',1,2,'2005-09-09 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(3,1097,'','330602010920389','',1,3,'2007-06-15 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(4,1098,'','09800100007457','',1,4,'2012-04-01 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0),(5,1099,'','09800100007320','',1,4,'1985-01-24 00:00:00',NULL,NULL,0,0,0,0.00,NULL,NULL,0.00,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_cost_centre`
--

LOCK TABLES `master_cost_centre` WRITE;
/*!40000 ALTER TABLE `master_cost_centre` DISABLE KEYS */;
INSERT INTO `master_cost_centre` VALUES (1,NULL,'Milk',NULL),(2,NULL,'Fruits , Vegetables, other Provissions',NULL),(3,NULL,'Internet',NULL),(4,NULL,'Cake & Sweets Etc..',NULL),(5,NULL,'Rice',NULL),(6,NULL,'Snacks',NULL),(7,NULL,'Gas & Fule',NULL),(8,NULL,'Meet Egg & Fish',NULL),(9,NULL,'Telephone',NULL);
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
INSERT INTO `master_country` VALUES (1,'India','IND',NULL,'à¤°',NULL),(9,'Saudi Arabia','SAU','SAR','ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â±','Saudi Riyal'),(10,'Bulgaria','BGR','BGN','ÃƒÆ’Ã‚ÂÃƒâ€šÃ‚Â»','Bulgarian Lev'),(11,'Spain','ESP','EUR','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Euro'),(12,'Taiwan','TWN','TWD','NT$','New Taiwan Dollar'),(13,'Czech Republic','CZE','CZK','KÃƒÆ’Ã¢â‚¬Å¾Ãƒâ€š','Czech Koruna'),(14,'Denmark','DNK','DKK','kr.','Danish Krone'),(15,'Germany','DEU','EUR','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Euro'),(16,'Greece','GRC','EUR','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Euro'),(17,'United States','USA','USD','$','US Dollar'),(18,'Finland','FIN','EUR','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Euro'),(19,'France','FRA','EUR','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Euro'),(20,'Israel','ISR','ILS','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Israeli New Shekel'),(21,'Hungary','HUN','HUF','Ft','Hungarian Forint'),(22,'Iceland','ISL','ISK','kr.','Icelandic Krona'),(23,'Italy','ITA','EUR','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Euro'),(24,'Japan','JPN','JPY','ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚','Japanese Yen'),(25,'Korea','KOR','KRW','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Korean Won'),(26,'Netherlands','NLD','EUR','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Euro'),(27,'Norway','NOR','NOK','kr','Norwegian Krone'),(28,'Poland','POL','PLN','zÃƒÆ’Ã¢â‚¬Â¦ÃƒÂ¢','Polish Zloty'),(29,'Brazil','BRA','BRL','R$','Real'),(30,'Switzerland','CHE','CHF','fr.','Swiss Franc'),(31,'Romania','ROU','RON','lei','Romanian Leu'),(32,'Russia','RUS','RUB','ÃƒÆ’Ã¢â‚¬ËœÃƒÂ¢Ã¢','Russian Ruble'),(33,'Croatia','HRV','HRK','kn','Croatian Kuna'),(34,'Slovakia','SVK','EUR','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Euro'),(35,'Albania','ALB','ALL','Lek','Albanian Lek'),(36,'Sweden','SWE','SEK','kr','Swedish Krona'),(37,'Thailand','THA','THB','ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â¸','Thai Baht'),(38,'Turkey','TUR','TRY','TL','Turkish Lira'),(39,'Islamic Republic of Pakistan','PAK','PKR','Rs','Pakistan Rupee'),(40,'Indonesia','IDN','IDR','Rp','Indonesian Rupiah'),(41,'Ukraine','UKR','UAH','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Ukrainian Grivna'),(42,'Belarus','BLR','BYR','ÃƒÆ’Ã¢â‚¬ËœÃƒÂ¢Ã¢','Belarusian Ruble'),(43,'Slovenia','SVN','EUR','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Euro'),(44,'Estonia','EST','EEK','kr','Estonian Kroon'),(45,'Latvia','LVA','LVL','Ls','Latvian Lats'),(46,'Lithuania','LTU','LTL','Lt','Lithuanian Litas'),(47,'Tajikistan','TAJ','TJS','ÃƒÆ’Ã¢â‚¬ËœÃƒÂ¢Ã¢','Ruble'),(48,'Iran','IRN','IRR','ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â±','Iranian Rial'),(49,'Vietnam','VNM','VND','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Vietnamese Dong'),(50,'Armenia','ARM','AMD','ÃƒÆ’Ã¢â‚¬Â¢Ãƒâ€šÃ‚','Armenian Dram'),(51,'Azerbaijan','AZE','AZN','man.','Azerbaijanian Manat'),(52,'Macedonia (FYROM)','MKD','MKD','ÃƒÆ’Ã‚ÂÃƒâ€šÃ‚Â´','Macedonian Denar'),(53,'South Africa','ZAF','ZAR','R','South African Rand'),(54,'Georgia','GEO','GEL','Lari','Lari'),(55,'Faroe Islands','FRO','DKK','kr.','Danish Krone'),(56,'Puerto Rico','PRI','USD','$','US Dollar'),(57,'Malta','MLT','EUR','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Euro'),(58,'Malaysia','MYS','MYR','RM','Malaysian Ringgit'),(59,'Kazakhstan','KAZ','KZT','ÃƒÆ’Ã‚ÂÃƒâ€šÃ‚Â¢','Tenge'),(60,'Kyrgyzstan','KGZ','KGS','ÃƒÆ’Ã¢â‚¬ËœÃƒâ€šÃ‚','som'),(61,'Kenya','KEN','KES','S','Kenyan Shilling'),(62,'Turkmenistan','TKM','TMT','m.','Turkmen manat'),(63,'United Kingdom','GBR','GBP','ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚','UK Pound Sterling'),(64,'Cambodia','KHM','KHR','ÃƒÆ’Ã‚Â¡Ãƒâ€¦Ã‚Â¸','Riel'),(65,'Lao P.D.R.','LAO','LAK','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Kip'),(66,'Syria','SYR','SYP','ÃƒÆ’Ã¢â€žÂ¢ÃƒÂ¢Ã¢','Syrian Pound'),(67,'Sri Lanka','LKA','LKR','ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â¶','Sri Lanka Rupee'),(68,'Canada','CAN','CAD','$','Canadian Dollar'),(69,'Ethiopia','ETH','ETB','ETB','Ethiopian Birr'),(70,'Nepal','NPL','NPR','ÃƒÆ’Ã‚Â Ãƒâ€šÃ‚Â¤','Nepalese Rupees'),(71,'Afghanistan','AFG','AFN','ÃƒÆ’Ã‹Å“ÃƒÂ¢Ã¢â€š','Afghani'),(72,'Philippines','PHL','PHP','PhP','Philippine Peso'),(73,'Maldives','MDV','MVR','ÃƒÆ’Ã…Â¾Ãƒâ€ Ã¢â‚¬','Rufiyaa'),(74,'Nigeria','NGA','NIO','N','Nigerian Naira'),(75,'Bolivia','BOL','BOB','$b','Boliviano'),(76,'Luxembourg','LUX','EUR','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Euro'),(77,'Greenland','GRL','DKK','kr.','Danish Krone'),(78,'New Zealand','NZL','NZD','$','New Zealand Dollar'),(79,'Guatemala','GTM','GTQ','Q','Guatemalan Quetzal'),(80,'Rwanda','RWA','RWF','RWF','Rwandan Franc'),(81,'Senegal','SEN','XOF','XOF','XOF Senegal'),(82,'Iraq','IRQ','IQD','ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â¯','Iraqi Dinar'),(83,'Algeria','DZA','DZD','DZD','Algerian Dinar'),(84,'Ecuador','ECU','USD','$','US Dollar'),(85,'Egypt','EGY','EGP','ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â¬','Egyptian Pound'),(86,'Hong Kong S.A.R.','HKG','HKD','HK$','Hong Kong Dollar'),(87,'Austria','AUT','EUR','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Euro'),(88,'Australia','AUS','AUD','$','Australian Dollar'),(89,'Serbia and Montenegro (Former)','SCG','CSD','ÃƒÆ’Ã‚ÂÃƒÂ¢Ã¢â€š','Serbian Dinar'),(90,'Peru','PER','PEN','S/.','Peruvian Nuevo Sol'),(91,'Libya','LBY','LYD','ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â¯','Libyan Dinar'),(92,'Singapore','SGP','SGD','$','Singapore Dollar'),(93,'Bosnia and Herzegovina','BIH','BAM','KM','Convertible Marks'),(94,'Macao S.A.R.','MAC','MOP','MOP','Macao Pataca'),(95,'Liechtenstein','LIE','CHF','CHF','Swiss Franc'),(96,'Costa Rica','CRI','CRC','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Costa Rican Colon'),(97,'Morocco','MAR','MAD','ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â¯','Moroccan Dirham'),(98,'Ireland','IRL','EUR','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Euro'),(99,'Panama','PAN','PAB','B/.','Panamanian Balboa'),(100,'Principality of Monaco','MCO','EUR','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Euro'),(101,'Tunisia','TUN','TND','ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â¯','Tunisian Dinar'),(102,'Dominican Republic','DOM','DOP','RD$','Dominican Peso'),(103,'Oman','OMN','OMR','ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â±','Omani Rial'),(104,'Jamaica','JAM','JMD','J$','Jamaican Dollar'),(105,'Bolivarian Republic of Venezuela','VEN','VEF','Bs. F.','Venezuelan Bolivar'),(106,'Yemen','YEM','YER','ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â±','Yemeni Rial'),(107,'Caribbean','CR','USD','$','US Dollar'),(108,'Colombia','COL','COP','$','Colombian Peso'),(109,'Serbia','SRB','RSD','Din.','Serbian Dinar'),(110,'Belize','BLZ','BZD','BZ$','Belize Dollar'),(111,'Jordan','JOR','JOD','ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â¯','Jordanian Dinar'),(112,'Trinidad and Tobago','TTO','TTD','TT$','Trinidad Dollar'),(113,'Argentina','ARG','ARS','$','Argentine Peso'),(114,'Montenegro','MNE','EUR','ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€š','Euro'),(115,'Lebanon','LBN','LBP','ÃƒÆ’Ã¢â€žÂ¢ÃƒÂ¢Ã¢','Lebanese Pound'),(116,'Zimbabwe','ZWE','ZWL','Z$','Zimbabwe Dollar'),(117,'Kuwait','KWT','KWD','ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â¯','Kuwaiti Dinar'),(118,'Chile','CHL','CLP','$','Chilean Peso'),(119,'U.A.E.','ARE','AED','ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â¯','UAE Dirham'),(120,'Uruguay','URY','UYU','$U','Peso Uruguayo'),(121,'Bahrain','BHR','BHD','ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â¯','Bahraini Dinar'),(122,'Paraguay','PRY','PYG','Gs','Paraguay Guarani'),(123,'Qatar','QAT','QAR','ÃƒÆ’Ã‹Å“Ãƒâ€šÃ‚Â±','Qatari Rial'),(124,'El Salvador','SLV','USD','$','US Dollar'),(125,'Honduras','HND','HNL','L.','Honduran Lempira'),(126,'Nicaragua','NIC','NIO','C$','Nicaraguan Cordoba Oro');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_donaud`
--

LOCK TABLES `master_donaud` WRITE;
/*!40000 ALTER TABLE `master_donaud` DISABLE KEYS */;
INSERT INTO `master_donaud` VALUES (1,'PROPAGANDHA FIDE ROME',1,'ROME','',23,'','','','',0,'',NULL,'',NULL,NULL,'',0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Suore Bethlemite',1,'Piazza Sabazio','',23,'','','','',0,'',NULL,'',NULL,NULL,'',0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Signora Theresa',1,'','',23,'','','','',0,'',NULL,'',NULL,NULL,'',0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Miracle foundation',1,'','',17,'','','','',0,'',NULL,'',NULL,NULL,'',0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'HOLY CROSS MINISTRY',1,'','',63,'','','','',0,'',NULL,'',NULL,NULL,'',0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_headoffice_ledger`
--

LOCK TABLES `master_headoffice_ledger` WRITE;
/*!40000 ALTER TABLE `master_headoffice_ledger` DISABLE KEYS */;
INSERT INTO `master_headoffice_ledger` VALUES (1,'','Admission Fee',5,'GN','GN',0,0,'',0,0,0,0),(2,'','Advances Returned',5,'GN','GN',0,0,'',0,0,0,0),(3,'','Agricultural / Garden Income',5,'GN','GN',0,0,'',0,0,0,0),(4,'','Bank Interest - FD',5,'GN','GN',0,0,'',1,0,0,0),(5,'','Bank Interest - SB',5,'GN','GN',0,0,'',0,0,0,0),(6,'','Canteen',5,'GN','GN',0,0,'',0,0,0,0),(7,'','Contribution from Communities',5,'GN','GN',0,0,'',0,0,0,0),(8,'','Creche Fee',5,'GN','GN',0,0,'',0,0,0,0),(9,'','Dispensary Income',5,'GN','GN',0,0,'',0,0,0,0),(10,'','E.M School Fee',5,'GN','GN',0,0,'',0,0,0,0),(11,'','Establishment Fee',5,'GN','GN',0,0,'',0,0,0,0),(12,'','Foreign Contriburion',5,'GN','GN',0,0,'',0,0,0,0),(13,'','Hostel and Boarding Fees',5,'GN','GN',0,0,'',0,0,0,0),(14,'','Local Contribution',5,'GN','GN',0,0,'',0,0,0,0),(15,'','Local Donations',5,'GN','GN',0,0,'',0,0,0,0),(16,'','Miscellaneous Income',5,'GN','GN',0,0,'',0,0,0,0),(17,'','Paper Evaluation / Censor / Election Duty',5,'GN','GN',0,0,'',0,0,0,0),(18,'','Servents Accommodation / Mess',5,'GN','GN',0,0,'',0,0,0,0),(19,'','Sisters Bonus, arrears and Others',5,'GN','GN',0,0,'',0,0,0,0),(20,'','Sisters Penson',5,'GN','GN',0,0,'',0,0,0,0),(21,'','Sisters Remuneration',5,'GN','GN',0,0,'',0,0,0,0),(22,'','Transportation Fee',5,'GN','GN',0,0,'',0,0,0,0),(23,'','Tution Fee',5,'GN','GN',0,0,'',0,0,0,0),(24,'','Voluntary Contribution',5,'GN','GN',0,0,'',0,0,0,0),(25,'','Warden Salary',5,'GN','GN',0,0,'',0,0,0,0),(26,'','Welfare Fund',5,'GN','GN',0,0,'',0,0,0,0),(27,'','Agricultural / Garden Expenses',8,'GN','GN',0,0,'',0,0,0,0),(28,'','Audit Fee / Expenses',8,'GN','GN',0,0,'',0,0,0,0),(29,'','Bank Charges',8,'GN','GN',0,0,'',0,0,0,0),(30,'','Books and Periodicals',8,'GN','GN',0,0,'',0,0,0,0),(31,'','Church / Cult Expenses',8,'GN','GN',0,0,'',0,0,0,0),(32,'','Clothing and Foot Wear',8,'GN','GN',0,0,'',0,0,0,0),(33,'','Constructions',39,'GN','GN',0,0,'',0,0,0,0),(34,'','Contribution to Generalate',8,'GN','GN',0,0,'',0,0,0,0),(35,'','Contribution to Provincialate',8,'GN','GN',0,0,'',0,0,0,0),(36,'','Counselling Expenses',8,'GN','GN',0,0,'',0,0,0,0),(37,'','Daily Wages',8,'GN','GN',0,0,'',0,0,0,0),(38,'','Donation and Charity',8,'GN','GN',0,0,'',0,0,0,0),(39,'','Education Help',8,'GN','GN',0,0,'',0,0,0,0),(40,'','Education of Sisters',8,'GN','GN',0,0,'',0,0,0,0),(41,'','Electricty and Fuel',8,'GN','GN',0,0,'',0,0,0,0),(42,'','Electronic / Electrical Equipments',8,'GN','GN',0,0,'',0,0,0,0),(43,'','Food and Gas',8,'GN','GN',0,0,'',0,0,0,0),(44,'','Food Maintenance',8,'GN','GN',0,0,'',0,0,0,0),(45,'','Formation Fund',8,'GN','GN',0,0,'',0,0,0,0),(46,'','Functions and Celebrations',8,'GN','GN',0,0,'',0,0,0,0),(47,'','General Maintenance',8,'GN','GN',0,0,'',0,0,0,0),(48,'','Health Insurance',8,'GN','GN',0,0,'',0,0,0,0),(49,'','Help to the Mission',8,'GN','GN',0,0,'',0,0,0,0),(50,'','House / Water Tax',8,'GN','GN',0,0,'',0,0,0,0),(51,'','House Hold Metrials',8,'GN','GN',0,0,'',0,0,0,0),(52,'','Immobile Assets',8,'GN','GN',0,0,'',0,0,0,0),(53,'','Kitchen Utensils',8,'GN','GN',0,0,'',0,0,0,0),(54,'','Magazine and News Paper',8,'GN','GN',0,0,'',0,0,0,0),(55,'','Maintenance of Sisters',8,'GN','GN',0,0,'',0,0,0,0),(56,'','Medical Expenses',8,'GN','GN',0,0,'',0,0,0,0),(57,'','Miscellaneous Expenses',8,'GN','GN',0,0,'',0,0,0,0),(58,'','Mission Fund',8,'GN','GN',0,0,'',0,0,0,0),(59,'','Mobile Assets Expenses',8,'GN','GN',0,0,'',0,0,0,0),(60,'','Office Maintenance / Expenses',8,'GN','GN',0,0,'',0,0,0,0),(61,'','Payment to Tax',8,'GN','GN',0,0,'',0,0,0,0),(62,'','Postage & Courier',8,'GN','GN',0,0,'',0,0,0,0),(63,'','Printing and Stationery',8,'GN','GN',0,0,'',0,0,0,0),(64,'','Repair and Maintenances',8,'GN','GN',0,0,'',0,0,0,0),(65,'','Restitutions of Advance',8,'GN','GN',0,0,'',0,0,0,0),(66,'','Salary and Wages',8,'GN','GN',0,0,'',0,0,0,0),(67,'','Seminaras / Retreat / Meetings / C.R.I',8,'GN','GN',0,0,'',0,0,0,0),(68,'','Sisters Pocket Money',8,'GN','GN',0,0,'',0,0,0,0),(69,'','Teachers Insurance',8,'GN','GN',0,0,'',0,0,0,0),(70,'','Telephone',8,'GN','GN',0,0,'',0,0,0,0),(71,'','Tools and Implements',8,'GN','GN',0,0,'',0,0,0,0),(72,'','Travel and Conveyenace',8,'GN','GN',0,0,'',0,0,0,0),(73,'','Various Insurance',8,'GN','GN',0,0,'',0,0,0,0),(74,'','Vehicle Insurance / Tax',8,'GN','GN',0,0,'',0,0,0,0),(75,'','Vehicle Maintenance',8,'GN','GN',0,0,'',0,0,0,0),(76,'','Vocational Expenses',8,'GN','GN',0,0,'',0,0,0,0),(77,'','Contribution from Province',69,'GN','GN',0,0,'',0,0,0,0),(78,'','School Expenses',8,'GN','GN',0,0,'',0,0,0,0),(79,'','TDS Remitted / Deducted',24,'GN','GN',0,0,'',0,0,0,0),(80,'','Subsidy (LPG)',73,'GN','GN',0,0,'',0,0,0,0),(81,'FD912','Fixed Deposit',14,'GN','FD',0,0,'',0,2,0,0),(82,'','Inter Account Transfer',23,'GN','GN',0,0,'',0,0,0,0),(83,'','Contribution to Community',39,'GN','GN',0,0,'',0,0,0,0),(84,'','New Constructions',32,'GN','GN',0,0,'',0,0,0,0),(85,'','New Vehicle',8,'GN','GN',0,0,'',0,0,0,0),(86,'','Equipments',33,'GN','GN',0,0,'',0,0,0,0),(87,'','Computer',70,'GN','GN',0,0,'',0,0,0,0),(88,'','Formation Expenses',71,'GN','GN',0,0,'',0,0,0,0),(89,'','Propaganda FCRA A/c',5,'GN','GN',0,0,'',0,0,0,0),(90,'','Sale of Scraps',5,'GN','GN',0,0,'',0,0,0,0),(91,'','Sisters Mocket Money',8,'GN','GN',0,0,'',0,0,0,0),(92,'','Loan Given / Recovered',23,'GN','GN',0,0,'',0,0,0,0),(93,'','Advance Given / Recovered',23,'GN','GN',0,0,'',0,0,0,0),(94,'','EPF Deducted / Remitted',23,'GN','GN',0,0,'',0,0,0,0),(95,'','Application Fee',74,'GN','GN',0,0,'',0,0,0,0),(96,'','Vehicle Fee',74,'GN','GN',0,0,'',0,0,0,0),(97,'','Furniture & Fixtures',18,'GN','GN',0,0,'',0,0,0,0),(98,'','Exposure Program',8,'GN','GN',0,0,'',0,0,0,0),(99,'','Labour (Wages)',32,'GN','GN',0,0,'',0,0,0,0),(100,'','Electrical Fittings & Sanitary Items',32,'GN','GN',0,0,'',0,0,0,0),(101,'','Cement',32,'GN','GN',0,0,'',0,0,0,0),(102,'','Plumbing Materials',32,'GN','GN',0,0,'',0,0,0,0),(103,'','Transportation of Materials',32,'GN','GN',0,0,'',0,0,0,0),(104,'','Paint & Hardware Items',32,'GN','GN',0,0,'',0,0,0,0),(105,'','Timber & Wood',32,'GN','GN',0,0,'',0,0,0,0),(106,'','Blue Metals & Bricks etc',32,'GN','GN',0,0,'',0,0,0,0),(107,'','Sentring',32,'GN','GN',0,0,'',0,0,0,0),(108,'','Payment to Contractor',32,'GN','GN',0,0,'',0,0,0,0),(109,'','Payment to Architect',32,'GN','GN',0,0,'',0,0,0,0),(110,'','Loans Given / Received',11,'GN','GN',0,0,'',0,0,0,0),(111,'','Investments',11,'GN','GN',0,0,'',0,0,0,0),(112,'','Advance Fee Received',11,'GN','GN',0,0,'',0,0,0,0),(113,'','PF Savings / Recoveries',23,'GN','GN',0,0,'',0,0,0,0),(114,'','ESI Deducted / Remitted',23,'GN','GN',0,0,'',0,0,0,0),(115,'','Caution Deposit',23,'GN','GN',0,0,'',0,0,0,0),(116,'','Building Tax',24,'GN','GN',0,0,'',0,0,0,0),(117,'','Commercial Tax',24,'GN','GN',0,0,'',0,0,0,0),(118,'','Professional Tax',24,'GN','GN',0,0,'',0,0,0,0),(119,'','Society Registration / Renewal Charges',24,'GN','GN',0,0,'',0,0,0,0),(120,'','Property Tax',24,'GN','GN',0,0,'',0,0,0,0),(121,'','Corporation / Municipal Taxes',24,'GN','GN',0,0,'',0,0,0,0),(122,'','General Equipments',33,'GN','GN',0,0,'',0,0,0,0),(123,'','Major Equipments',33,'GN','GN',0,0,'',0,0,0,0),(124,'','New Building',18,'GN','GN',0,0,'',0,0,0,0),(125,'','Well & Water Supply',18,'GN','GN',0,0,'',0,0,0,0),(126,'','New Software',18,'GN','GN',0,0,'',0,0,0,0),(127,'','Plant & Machinery',18,'GN','GN',0,0,'',0,0,0,0),(128,'','New Land',18,'GN','GN',0,0,'',0,0,0,0),(129,'','Loan Interest',79,'GN','GN',0,0,'',0,0,0,0),(130,'','Advance Taken / Returned',79,'GN','GN',0,0,'',0,0,0,0),(131,'','Loan Taken / Returned',79,'GN','GN',0,0,'',0,0,0,0),(132,'G001','Gain Ledger',5,'GN','GN',0,0,'',0,2,0,0),(133,'L001','Loss Ledger',8,'GN','GN',0,0,'',0,2,0,0),(134,'IK001','In-Kind Ledger',5,'GN','GN',0,0,'',0,2,0,0),(135,'DI001','Disposal Ledger',8,'GN','GN',0,0,'',0,2,0,0),(136,'','CapitalFund',21,'GN','GN',0,0,'',0,0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_insti_perference`
--

LOCK TABLES `master_insti_perference` WRITE;
/*!40000 ALTER TABLE `master_insti_perference` DISABLE KEYS */;
INSERT INTO `master_insti_perference` VALUES (1,NULL,'Society of Bethlemite Sisters-Nellore','','Pedro de San Jose Betancur Province,Bethlemite Sisters \nKothur,Nellore-Dt,Andhra Pradesh.','',NULL,1,'','','','','http://','1','2015-01-28 00:00:00','','2016-04-05 00:00:00','','','','','3',3,'','','','2016-04-05 00:00:00','',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1181 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_ledger`
--

LOCK TABLES `master_ledger` WRITE;
/*!40000 ALTER TABLE `master_ledger` DISABLE KEYS */;
INSERT INTO `master_ledger` VALUES (1,'CS911','Cash',13,'GN','GN',0,0,0,'',0,1,0,2,0,0,0,0,0,0),(2,'FD912','Fixed Deposit',14,'GN','FD',0,0,0,'',0,2,0,2,0,0,0,0,0,0),(3,'CF913','Capital Fund',21,'GN','GN',0,0,0,'',0,3,0,2,0,0,0,0,0,0),(1001,'1001','Staff Loan',11,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1002,'1002','Interest on Staff Loan',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1003,'FA001','Fixed Asset Ledger',11,'GN','GN',0,0,0,'',0,2,0,0,0,0,0,0,0,0),(1004,'G001','Gain Ledger',5,'GN','GN',0,0,0,'',0,2,0,0,0,0,0,0,0,0),(1005,'L001','Loss Ledger',8,'GN','GN',0,0,0,'',0,2,0,0,0,0,0,0,0,0),(1006,'IK001','In-Kind Ledger',5,'GN','GN',0,0,0,'',0,2,0,0,0,0,0,0,0,0),(1008,'DI001','Disposal Ledger',8,'GN','GN',0,0,0,'',0,2,0,0,0,0,0,0,0,0),(1045,'','Advances Returned',5,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1046,'','Audit Fee / Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1047,'','Bank Charges',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1048,'','Bank Interest - FD',5,'GN','GN',0,0,0,'',1,0,0,0,1,0,0,0,0,0),(1049,'','Bank Interest - SB',5,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1050,'','Books and Periodicals',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1051,'','Church / Cult Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1052,'','Clothing and Foot Wear',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1053,'','Contribution from Communities',5,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1054,'','Contribution from Province',69,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1055,'','Contribution to Community',39,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1056,'','Contribution to Generalate',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1057,'','Contribution to Provincialate',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1058,'','Donation and Charity',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1059,'','Education of Sisters',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1060,'','Electricty and Fuel',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1061,'','Electronic / Electrical Equipments',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1062,'','ESI Deducted / Remitted',23,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1063,'','Food and Gas',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1064,'','Food Maintenance',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1065,'','Foreign Contriburion',5,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1066,'','Formation Fund',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1067,'','Functions and Celebrations',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1068,'','General Equipments',33,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1069,'','General Maintenance',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1070,'','Help to the Mission',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1071,'','House Hold Metrials',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1072,'','Inter Account Transfer',23,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1073,'','Kitchen Utensils',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1074,'','Local Contribution',5,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1075,'','Local Donations',5,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1076,'','Magazine and News Paper',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1077,'','Maintenance of Sisters',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1078,'','Medical Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1079,'','Miscellaneous Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1080,'','Miscellaneous Income',5,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1081,'','Paint & Hardware Items',32,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1082,'','Postage & Courier',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1083,'','Printing and Stationery',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1084,'','Repair and Maintenances',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1085,'','Salary and Wages',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1086,'','Seminaras / Retreat / Meetings / C.R.I',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1087,'','Sisters Pocket Money',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1088,'','Sisters Remuneration',5,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1089,'','Telephone',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1090,'','Tools and Implements',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1091,'','Travel and Conveyenace',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1092,'','Vehicle Insurance / Tax',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1093,'','Vehicle Maintenance',8,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1094,'','Voluntary Contribution',5,'GN','GN',0,0,0,'',0,0,0,0,1,0,0,0,0,0),(1095,'','0381053000002155',12,'GN','BK',0,0,0,NULL,0,255,0,0,1,0,0,0,0,0),(1096,'','021001549517190001',12,'GN','BK',0,0,0,NULL,0,255,0,0,1,0,0,0,0,0),(1097,'','330602010920389',12,'GN','BK',0,0,0,NULL,0,255,0,0,1,0,0,0,0,0),(1098,'','09800100007457',12,'GN','BK',0,0,0,NULL,0,255,0,0,1,0,0,0,0,0),(1099,'','09800100007320',12,'GN','BK',0,0,0,NULL,0,255,0,0,1,0,0,0,0,0),(1100,'','Admission Fee',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1101,'','Agricultural / Garden Income',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1102,'','Canteen',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1103,'','Creche Fee',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1104,'','Dispensary Income',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1105,'','E.M School Fee',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1106,'','Establishment Fee',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1107,'','Hostel and Boarding Fees',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1108,'','Paper Evaluation / Censor / Election Duty',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1109,'','Servents Accommodation / Mess',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1110,'','Sisters Bonus, arrears and Others',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1111,'','Sisters Penson',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1112,'','Transportation Fee',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1113,'','Tution Fee',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1114,'','Warden Salary',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1115,'','Welfare Fund',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1116,'','Agricultural / Garden Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1117,'','Constructions',39,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1118,'','Counselling Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1119,'','Daily Wages',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1120,'','Education Help',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1121,'','Health Insurance',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1122,'','House / Water Tax',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1123,'','Immobile Assets',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1124,'','Mission Fund',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1125,'','Mobile Assets Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1126,'','Office Maintenance / Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1127,'','Payment to Tax',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1128,'','Restitutions of Advance',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1129,'','Teachers Insurance',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1130,'','Various Insurance',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1131,'','Vocational Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1132,'','School Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1133,'','TDS Remitted / Deducted',24,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1134,'','Subsidy (LPG)',73,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1135,'','New Constructions',32,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1136,'','New Vehicle',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1137,'','Equipments',33,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1138,'','Computer',70,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1139,'','Formation Expenses',71,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1140,'','Propaganda FCRA A/c',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1141,'','Sale of Scraps',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1142,'','Sisters Mocket Money',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1143,'','Loan Given / Recovered',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1144,'','Advance Given / Recovered',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1145,'','EPF Deducted / Remitted',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1146,'','Application Fee',74,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1147,'','Vehicle Fee',74,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1148,'','Furniture & Fixtures',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1149,'','Exposure Program',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1150,'','Labour (Wages)',32,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1151,'','Electrical Fittings & Sanitary Items',32,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1152,'','Cement',32,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1153,'','Plumbing Materials',32,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1154,'','Transportation of Materials',32,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1155,'','Timber & Wood',32,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1156,'','Blue Metals & Bricks etc',32,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1157,'','Sentring',32,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1158,'','Payment to Contractor',32,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1159,'','Payment to Architect',32,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1160,'','Loans Given / Received',11,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1161,'','Investments',11,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1162,'','Advance Fee Received',11,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1163,'','PF Savings / Recoveries',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1164,'','Caution Deposit',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1165,'','Building Tax',24,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1166,'','Commercial Tax',24,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1167,'','Professional Tax',24,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1168,'','Society Registration / Renewal Charges',24,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1169,'','Property Tax',24,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1170,'','Corporation / Municipal Taxes',24,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1171,'','Major Equipments',33,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1172,'','New Building',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1173,'','Well & Water Supply',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1174,'','New Software',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1175,'','Plant & Machinery',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1176,'','New Land',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1177,'','Loan Interest',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1178,'','Advance Taken / Returned',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1179,'','Loan Taken / Returned',79,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0),(1180,'','CapitalFund',21,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_ledger_group`
--

LOCK TABLES `master_ledger_group` WRITE;
/*!40000 ALTER TABLE `master_ledger_group` DISABLE KEYS */;
INSERT INTO `master_ledger_group` VALUES (1,'01','Incomes',1,1,1,0,2,0),(2,'02','Expenses',2,2,2,0,2,0),(3,'03','Assets',3,3,3,0,2,0),(4,'04','Liabilities',4,4,4,0,2,0),(5,'05','Direct Incomes',1,1,1,0,0,0),(6,'06','Indirect Incomes',1,1,1,0,0,0),(7,'07','Sales Accounts',1,1,1,0,0,0),(8,'08','Direct Expenses',2,2,2,0,0,0),(9,'09','Indirect Expenses',2,2,2,0,0,0),(10,'10','Purchase Accounts',2,2,2,0,0,0),(11,'18','Current Assets',3,3,3,0,2,0),(12,'20','Bank Accounts',11,3,11,0,2,0),(13,'19','Cash-in-hand',11,3,11,0,2,0),(14,'17','Fixed Deposits',11,3,11,0,2,0),(15,'16','Loans and Advances (Asset)',11,3,11,0,0,0),(16,'14','Stock-in-hand',11,3,11,0,0,0),(17,'15','Sundry Debtors',11,3,11,0,0,0),(18,'11','Fixed Assets',3,3,3,0,0,0),(19,'12','Investments',3,3,3,0,0,0),(20,'13','Misc. Expenses (Asset)',3,3,3,0,0,0),(21,'21','Capital Fund',4,4,4,0,2,0),(22,'22','Reserves and Surplus (Fixed Assets)',4,4,4,0,0,0),(23,'27','Current Liabilities',4,4,4,0,0,0),(24,'24','Duties & Taxes',23,4,23,0,0,0),(25,'25','Provisions',23,4,23,0,0,0),(26,'26','Sundry Creditors',23,4,23,0,0,0),(27,'23','Loans and Advances (Liability)',4,4,4,0,0,0),(28,'28','Bank OD A/c',27,4,27,0,0,0),(29,'29','Secured Loans',27,4,27,0,0,0),(30,'30','Unsecured Loans',27,4,27,0,0,0),(31,'31','Suspense A/c',4,4,4,0,0,0),(32,'','Construction',3,3,3,0,0,1500),(33,'','Equipments',3,3,3,0,0,1600),(34,'','Administration Exp.',2,2,2,0,0,4400),(35,'','Audit fee & Professional charges',2,2,2,0,0,4500),(36,'','Books, Periodicals & Audio visual',2,2,2,0,0,4600),(37,'','Charity & Donations',2,2,2,0,0,4700),(38,'','Computer & Copier Maintenance',2,2,2,0,0,4800),(39,'','Contributions & Donations',2,2,2,0,0,4900),(40,'','Educational expenses of Salesians',2,2,2,0,0,5100),(41,'','Electricity, Generator fuel & Water',2,2,2,0,0,5200),(42,'','Farm, Dairy & Poultry Expenses',2,2,2,0,0,5300),(43,'','Food & Fuel',2,2,2,0,0,5400),(44,'','General Expenses',2,2,2,0,0,5500),(45,'','Goods & Supplies',2,2,2,0,0,5600),(46,'','Health  & Sanitation',2,2,2,0,0,5700),(47,'','Institutional Expenses',2,2,2,0,0,5800),(48,'','Lab Expenses',2,2,2,0,0,5900),(49,'','Library Expenses',2,2,2,0,0,6000),(50,'','Parish Expenses',2,2,2,0,0,6100),(51,'','Personnel',2,2,2,0,0,6200),(52,'','Photo / Sports & Games',2,2,2,0,0,6300),(53,'','Programme Expenses',2,2,2,0,0,6400),(54,'','Project Expenses',2,2,2,0,0,6500),(55,'','Recreation, Outing & Entertainment',2,2,2,0,0,6600),(56,'','Repairs and Maintenance',2,2,2,0,0,6700),(57,'','Salary & Wages',2,2,2,0,0,6800),(58,'','Services',2,2,2,0,0,6900),(59,'','Stationery & Printing & Consumables',2,2,2,0,0,7000),(60,'','Telephone, Mobile & Internet',2,2,2,0,0,7100),(61,'','Training, Workshop, Retreat & Seminar',2,2,2,0,0,7200),(62,'','Transportation (bus)',2,2,2,0,0,7300),(63,'','Travel & Conveyance',2,2,2,0,0,7400),(64,'','Vehicle fuel & Maintenance',2,2,2,0,0,7500),(65,'','Workshop / Production exp.',2,2,2,0,0,7600),(66,'','Academic Fees',1,1,1,0,0,3400),(67,'','Bank Interest',1,1,1,0,0,3500),(68,'','Boarding Fee/Hostel Fee',1,1,1,0,0,3600),(69,'','Contribution from Province',1,1,1,0,0,3700),(70,'','Contributions / Hospitality Income',1,1,1,0,0,3800),(71,'','Contributions for services',1,1,1,0,0,3900),(72,'','Farm, Dairy & Poultry Income',1,1,1,0,0,4000),(73,'','General Income',1,1,1,0,0,4100),(74,'','Institutional Income',1,1,1,0,0,4200),(75,'','Parish Income',1,1,1,0,0,4300),(76,'','Sale of Scraps',1,1,1,0,0,4400),(77,'','Scholarship Received',1,1,1,0,0,4500),(78,'','Capital Account',4,4,4,0,0,2600),(79,'','Loans (Liability)',4,4,4,0,0,2700),(80,'','Deposits (Asset)',2,2,2,0,0,4900),(81,'24','Duties and Taxes',23,4,23,0,0,2301),(82,'','Payment',64,2,64,0,0,7501),(83,'LG41','Loans & Advances (Asset)',11,3,11,0,0,0),(84,'LG32','Branch / Divisions',4,4,4,0,0,0),(85,'LG42','Reserves & Surplus',78,4,78,0,0,0);
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
INSERT INTO `master_project` VALUES (1,'','ST. PEDRO DE SAN JOSE BETANCUR PROVINCE',1,NULL,'2014-04-01 00:00:00',NULL,'','',1,0,1,0),(2,'','Provincial House',1,NULL,'2015-04-01 00:00:00',NULL,'','',2,0,1,0),(3,'','Society of Bethlemite Sisters-Nellore',2,NULL,'2015-04-01 00:00:00',NULL,'','',3,0,1,0),(4,'','St. Joseph Nivas - Bangalore',1,NULL,'2015-04-01 00:00:00',NULL,'','',1,0,1,0);
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
INSERT INTO `master_project_catogory` VALUES (2,'House'),(3,'Projects'),(1,'Province');
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
INSERT INTO `master_setting` VALUES ('Country','1',1),('Currency','à¤°',1),('CurrencyCode','',1),('CurrencyCodePosition','',1),('CurrencyNegativePattern','14',1),('CurrencyNegativeSign','( )',1),('CurrencyPosition','Before',1),('CurrencyPositivePattern','2',1),('DecimalPlaces','2',1),('DecimalSeparator','.',1),('DigitGrouping','3,2,2',1),('GroupingSeparator',',',1),('HighNaturedAmt','500',1),('Location','Primary',1),('TransEntryMethod','',1),('UIDateFormat','dd/MM/yyyy',1),('UIDateSeparator','/',1),('UIFilterMode','Starts',1),('UILanguage','en-US',1),('UIProjSelection','1',1),('UIThemes','Office 2010 Silver',1),('UITransClose','1',1),('UITransType','Codeless',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_datasyn_message`
--

LOCK TABLES `portal_datasyn_message` WRITE;
/*!40000 ALTER TABLE `portal_datasyn_message` DISABLE KEYS */;
INSERT INTO `portal_datasyn_message` VALUES (121,'2015-11-29 00:37:52','FAILED','2015-04-01 12:30:00','2015-10-31 12:30:00','Problem in Importing Vouchers. Branch office ledgers are not mapped with Head Office Ledgers\r\nIt is made mandatory for your Branch that All Branch Ledgers should be mapped with Head Office Ledgers. \r\nUpdate the latest license key and try exporting vouchers to Portal.',0,'2016-04-05 15:22:30',NULL,NULL),(122,'2015-12-03 04:57:15','FAILED','2015-04-01 12:30:00','2015-04-30 12:30:00','Problem in Importing Vouchers. Branch office ledgers are not mapped with Head Office Ledgers\r\nIt is made mandatory for your Branch that All Branch Ledgers should be mapped with Head Office Ledgers. \r\nUpdate the latest license key and try exporting vouchers to Portal.',0,'2016-04-05 15:22:30',NULL,NULL),(123,'2015-12-05 03:48:46','FAILED','2015-04-01 12:30:00','2015-04-30 12:30:00','Problem in Importing Vouchers. Branch office ledgers are not mapped with Head Office Ledgers\r\nIt is made mandatory for your Branch that All Branch Ledgers should be mapped with Head Office Ledgers. \r\nUpdate the latest license key and try exporting vouchers to Portal.',0,'2016-04-05 15:22:30',NULL,NULL),(124,'2015-12-08 06:31:31','FAILED','2015-04-01 12:30:00','2015-11-30 13:30:00','Problem in Importing Vouchers. Branch office ledgers are not mapped with Head Office Ledgers\r\nIt is made mandatory for your Branch that All Branch Ledgers should be mapped with Head Office Ledgers. \r\nUpdate the latest license key and try exporting vouchers to Portal.',0,'2016-04-05 15:22:30',NULL,NULL),(125,'2015-12-08 07:24:32','CLOSED','2015-04-01 12:30:00','2015-11-30 13:30:00','Data Synchronized Successfully.',0,'2016-04-05 15:22:30','2015-12-08 07:25:38','2015-12-08 07:25:43'),(126,'2015-12-08 07:51:44','CLOSED','2015-04-01 12:30:00','2015-04-30 12:30:00','Data Synchronized Successfully.',0,'2016-04-05 15:22:30','2015-12-08 07:52:38','2015-12-08 07:52:39'),(127,'2015-12-08 08:02:45','CLOSED','2015-04-01 12:30:00','2015-11-30 13:30:00','Data Synchronized Successfully.',0,'2016-04-05 15:22:30','2015-12-08 08:04:38','2015-12-08 08:04:44'),(128,'2016-02-09 10:56:36','CLOSED','2015-04-01 12:30:00','2016-01-31 13:30:00','Data Synchronized Successfully.',0,'2016-04-05 15:22:30','2016-02-09 11:00:07','2016-02-09 11:00:09'),(129,'2016-02-09 10:57:01','CLOSED','2015-04-01 12:30:00','2016-01-31 13:30:00','Data Synchronized Successfully.',0,'2016-04-05 15:22:30','2016-02-09 11:00:04','2016-02-09 11:00:06'),(130,'2016-02-09 10:57:18','CLOSED','2015-04-01 12:30:00','2016-01-31 13:30:00','Data Synchronized Successfully.',0,'2016-04-05 15:22:30','2016-02-09 11:00:00','2016-02-09 11:00:03'),(131,'2016-02-09 10:57:38','CLOSED','2015-04-01 12:30:00','2016-01-31 13:30:00','Data Synchronized Successfully.',0,'2016-04-05 15:22:30','2016-02-09 10:59:56','2016-02-09 10:59:59'),(132,'2016-02-09 10:57:56','CLOSED','2015-04-01 12:30:00','2016-01-31 13:30:00','Data Synchronized Successfully.',0,'2016-04-05 15:22:30','2016-02-09 10:59:51','2016-02-09 10:59:54'),(133,'2016-04-06 04:39:12','FAILED','2015-03-31 12:30:00','2016-03-30 12:30:00','Problem in Importing Vouchers. Error in Saving Voucher Masters. The Record is Available \'1-171-0\' ',0,'2016-04-05 15:22:30','2016-04-06 04:41:19',NULL),(134,'2016-04-06 04:46:58','CLOSED','2015-03-31 12:30:00','2016-03-30 12:30:00','Data Synchronized Successfully.',0,'2016-04-05 15:22:30','2016-04-06 04:47:19','2016-04-06 04:47:30');
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
) ENGINE=InnoDB AUTO_INCREMENT=978 DEFAULT CHARSET=latin1;
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
INSERT INTO `prcomponent` VALUES (13,'BASIC','Basic Pay','0','0','Basicpay','','',0.00,1.00,'0',0,'',0,1,0,NULL,NULL,0),(14,'DA','Dearness Allowance','0','1653','','','',0.00,1.00,'0',0,'',0,1,0,NULL,NULL,0),(15,'HRA','House Rent Allowance','0','0','','<BASIC>*40/100','<13>*40/100~0~0',0.00,1.00,'1',0,'Ãª13Ãª',0,1,0,NULL,NULL,0),(16,'PF WAGES','Basic and Dearness Allowance','1','0','','<BASIC>+<DA>','<13>+<14>~0~0',0.00,1.00,'1',0,'Ãª13Ãª14Ãª',0,1,0,NULL,NULL,0),(17,'PF','Provident Fund','1','0','','<PF WAGES>*12/100','<16>*12/100~0~0',0.00,1.00,'1',0,'Ãª16Ãª',0,1,0,NULL,NULL,0),(18,'PT','Professional Tax','1','0','','','',0.00,1.00,'0',0,'',0,1,0,NULL,NULL,0),(19,'GROSS WAGES','GROSS SALARY','0','0','','<BASIC>+<DA>+<HRA>','<13>+<14>+<15>~0~0',0.00,1.00,'1',0,'Ãª13Ãª14Ãª15Ãª',0,1,0,NULL,NULL,0),(20,'DEDUCTIONS','DEDUCTIONS','1','0','','<PF>+<PT>','<17>+<18>~0~0',0.00,1.00,'1',0,'Ãª17Ãª18Ãª',0,1,0,NULL,NULL,0),(21,'NETPAY','Net Payable Amount to the Employee','0','0','','<GROSS WAGES>-<DEDUCTIONS>','<19>-<20>~0~0',0.00,1.00,'1',0,'Ãª19Ãª20Ãª',0,1,0,NULL,NULL,0),(22,'NAME','Name of the Employee','2','0','Name','','',0.00,1.00,'0',0,'',0,1,0,NULL,NULL,0),(23,'DESIGNATION','DESIGNATION','2','0','Designation','','',0.00,1.00,'0',0,'',0,1,0,NULL,NULL,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
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
  CONSTRAINT `LOANID_1` FOREIGN KEY (`LOANID`) REFERENCES `prloan` (`LOANID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_prloanget_LoanId` FOREIGN KEY (`LOANID`) REFERENCES `prloan` (`LOANID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_prloanget_StaffId` FOREIGN KEY (`STAFFID`) REFERENCES `stfpersonal` (`STAFFID`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
INSERT INTO `project_costcentre` VALUES (1,1,0.00,''),(1,2,0.00,''),(1,3,0.00,''),(1,4,0.00,''),(1,5,0.00,''),(1,6,0.00,''),(1,7,0.00,''),(1,8,0.00,''),(1,9,0.00,''),(2,2,0.00,''),(2,3,0.00,''),(2,4,0.00,''),(2,6,0.00,''),(2,8,0.00,''),(2,9,0.00,'');
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
INSERT INTO `project_donor` VALUES (3,1),(3,2),(3,3),(3,4),(3,5);
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
INSERT INTO `project_ledger` VALUES (1,1),(2,1),(3,1),(4,1),(1,2),(4,2),(3,1004),(3,1005),(3,1006),(3,1008),(1,1045),(2,1045),(1,1046),(2,1046),(1,1047),(4,1047),(1,1048),(4,1048),(1,1049),(3,1049),(4,1049),(1,1050),(2,1050),(4,1050),(1,1051),(2,1051),(3,1051),(1,1052),(2,1052),(3,1052),(4,1052),(1,1053),(3,1053),(2,1054),(3,1054),(1,1055),(3,1055),(1,1056),(2,1056),(1,1057),(4,1057),(1,1058),(2,1058),(3,1058),(1,1059),(2,1059),(3,1059),(1,1060),(2,1060),(3,1060),(1,1061),(2,1061),(4,1061),(1,1062),(3,1062),(4,1062),(1,1063),(2,1063),(3,1063),(1,1064),(3,1064),(1,1065),(3,1065),(4,1065),(3,1066),(1,1067),(2,1067),(3,1068),(1,1069),(2,1069),(1,1070),(3,1070),(4,1070),(1,1071),(2,1071),(4,1071),(1,1072),(4,1072),(1,1073),(2,1073),(1,1074),(2,1074),(1,1075),(2,1075),(1,1076),(2,1076),(4,1076),(1,1077),(2,1077),(4,1077),(1,1078),(2,1078),(3,1078),(1,1079),(2,1079),(3,1079),(1,1080),(4,1080),(3,1081),(1,1082),(2,1082),(3,1082),(4,1082),(1,1083),(2,1083),(3,1083),(1,1084),(2,1084),(3,1084),(1,1085),(2,1085),(3,1085),(1,1086),(3,1086),(4,1086),(1,1087),(2,1087),(3,1087),(4,1087),(1,1088),(2,1088),(1,1089),(2,1089),(4,1089),(1,1090),(2,1090),(3,1090),(1,1091),(2,1091),(3,1091),(1,1092),(4,1092),(1,1093),(2,1093),(3,1093),(1,1094),(4,1094),(1,1095),(3,1099),(3,1100),(1,1101),(4,1101),(1,1102),(4,1102),(2,1103),(2,1104),(1,1105),(4,1105),(1,1106),(4,1106),(1,1107),(4,1107),(1,1108),(4,1108),(1,1109),(4,1109),(1,1110),(4,1110),(3,1111),(1,1112),(4,1112),(1,1113),(4,1113),(3,1114),(3,1115),(2,1116),(1,1117),(4,1117),(1,1118),(4,1118),(3,1119),(3,1120),(1,1121),(4,1121),(3,1122),(1,1123),(4,1123),(3,1124),(2,1125),(2,1126),(1,1127),(4,1127),(3,1128),(1,1129),(4,1129),(2,1130),(3,1131),(2,1132),(2,1133),(1,1134),(4,1134),(3,1135),(3,1136),(1,1137),(4,1137),(1,1138),(4,1138),(1,1139),(4,1139),(1,1140),(4,1140),(1,1141),(4,1141),(3,1142),(2,1143),(1,1144),(4,1144),(1,1145),(4,1145),(1,1146),(4,1146),(3,1147),(3,1148),(3,1149),(1,1150),(4,1150),(1,1151),(4,1151),(1,1152),(4,1152),(3,1153),(3,1154),(2,1155),(1,1156),(4,1156),(1,1157),(4,1157),(1,1158),(4,1158),(3,1159),(3,1160),(2,1161),(1,1162),(4,1162),(1,1163),(4,1163),(3,1164),(3,1165),(3,1166),(1,1167),(4,1167),(1,1168),(4,1168),(1,1169),(4,1169),(3,1170),(3,1171),(2,1172),(1,1173),(4,1173),(1,1174),(4,1174),(1,1175),(4,1175),(3,1176),(3,1177),(3,1178),(1,1179),(4,1179),(3,1180);
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_deductee_type`
--

LOCK TABLES `tds_deductee_type` WRITE;
/*!40000 ALTER TABLE `tds_deductee_type` DISABLE KEYS */;
INSERT INTO `tds_deductee_type` VALUES (2,'Artificial Juridical Person',0,1,1),(3,'Association of Persons',0,1,1),(4,'Body of Individuals',0,1,1),(5,'Company Non-Resident',1,0,1),(6,'Company Resident',0,0,1),(7,'Co-Operative Society',0,1,1),(8,'Individual HUF -Non Resident',1,1,1),(9,'Individual HUF -Resident',0,1,1),(10,'Local Authority',0,1,1),(11,'Patnership Firm',0,1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_duty_taxtype`
--

LOCK TABLES `tds_duty_taxtype` WRITE;
/*!40000 ALTER TABLE `tds_duty_taxtype` DISABLE KEYS */;
INSERT INTO `tds_duty_taxtype` VALUES (1,'TDS With PAN',1),(2,'TDS Without PAN',1),(3,'Surcharge',1),(4,'Ed Cess',1),(5,'Sec Ed Cess',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_nature_payment`
--

LOCK TABLES `tds_nature_payment` WRITE;
/*!40000 ALTER TABLE `tds_nature_payment` DISABLE KEYS */;
INSERT INTO `tds_nature_payment` VALUES (1,'Any other income',NULL,NULL,'195','',15,1),(13,'Income by Way of Long-Term Capital Gains Referred to in Section 115E',NULL,NULL,'195','',15,1),(14,'Income From Foreign Currency Bonds Or Shares of...',NULL,NULL,'196C','',22,1),(15,'Income From Foreign Currency,Bonds or Shares of Indian Company',NULL,NULL,'194LC','',23,1),(16,'Income From Foreign Exchange Assets Payable to an Indian Citizen',NULL,NULL,'195','',15,1),(19,'Insurance Commission',NULL,NULL,'194D',' ',25,1),(20,'Interest on 8% Savings(Taxable) Bonds, 2003',NULL,NULL,'193','',16,1),(21,'Interest on Infrastructure Debt Fund',NULL,NULL,'194LD','',26,1),(22,'Interest on Securites',NULL,NULL,'193','',16,1),(23,'Interest other than Interest on Securites',NULL,NULL,'194A','',27,1),(24,'Interest Payable by Government or Indian concern in Foreign Currency',NULL,NULL,'195','',15,1),(25,'Long-Term Capital Gains[Not Being Covered by Sec 10(33)(36)(38)]',NULL,NULL,'195','',15,1),(27,'Payment of Compensation on Acquisition of Immovable Property',NULL,NULL,'194LA','',28,1),(28,'Payment of Transfer of Certain Immovable property other than Agricultural Land',NULL,NULL,'194IA','',29,1),(29,'Payments in Respect of Deposits Under NSS',NULL,NULL,'194EE','',30,1),(30,'Payments in Respect of Units to an Offshore Fund',NULL,NULL,'196B','',31,1),(31,'Payments on account of repurchase of units of MF or UTI to a resident / non-resident',NULL,NULL,'194F','',32,1),(32,'Payments to Contractors(Other than Advertisements)',NULL,NULL,'194C','',33,1),(38,'Payment \\Royalty on Acquisition of Software U/s 194J',NULL,NULL,'194J',' ',26,1),(39,'Rent of Land, Building Or Furniture',NULL,NULL,'194I','',35,1),(40,'Rent of Plant, Machinery Or Equipment',NULL,NULL,'194I','',35,1),(41,'Royalty(F) Agreement is Made After May 31, 1997 Before June 1, 2005',NULL,NULL,'195','',15,1),(42,'Royalty(F) Agreement is Made Before June 1, 1997',NULL,NULL,'195','',15,1),(43,'Royalty(F) Agreement is Made on Or After June 1, 2005',NULL,NULL,'195','',15,1),(44,'Royalty(G) Agreement is Made After March 31, 1961 Before April 1, 1976',NULL,NULL,'195','',15,1),(45,'Royalty(G) Agreement is Made After March 31, 1976 Before June 1,1997',NULL,NULL,'195','',15,1),(46,'Royalty(G) Agreement is Made After March 31, 1997 Before April 1, 2005',NULL,NULL,'195','',15,1),(47,'Royalty(G) Agreement is Made on Or After June 1,2005',NULL,NULL,'195','',15,1),(48,'Short-Term Capital Gains U/s 111A',NULL,NULL,'195','',15,1),(49,'Winnings From Horse Race',NULL,NULL,'194BB','',36,1),(50,'Winnings From Lotteries and CrossWord Puzzles',NULL,NULL,'194B','',37,1),(51,'horse race in Bankgalore',NULL,NULL,'0908','',26,0),(52,'Horse Race in Bangalore',NULL,NULL,'456','',25,0),(53,'Any Other Interest on Securities As Per Sec.193',NULL,NULL,'193','',16,1),(54,'Any Remuneration Or Commission Paid to Director of the Company',NULL,NULL,'194J','',17,1),(55,'Commission on Sale of Lottery Tickets',NULL,NULL,'194G','',18,1),(56,'Commission or Brokerage',NULL,NULL,'194H','',19,1),(57,'Deemed Dividend  U/s  2(22)(E)',NULL,NULL,'194','',20,1),(58,'Fees for Prfessional Or Technical Services',NULL,NULL,'194J',' ',17,1),(59,'Fees for Tech. Services Agreement Is Made After Feb 29, 1964 Before April 1, 1976',NULL,NULL,'195','',15,1),(60,'Fees for Tech. Services Agreement Is Made After Mar 31, 1976 Before Jun 1, 1997',NULL,NULL,'195','',15,1),(61,'Fees for Tech Services Agreement Is Made After May 31, 1997 Before June 1, 2005',NULL,NULL,'195','',15,1),(62,'Fees for Tech Services Agreement Is Made on Or After June 1, 2005',NULL,NULL,'195','',15,1),(63,'Income by Way of Interest on Certain Bonds and Government Securities',NULL,NULL,'194LD','',21,1),(64,'Income of Foreign Institutional Investors From....',NULL,NULL,'196D','',24,1),(65,'Payments to Non-Resident Sportsmen/Sports Assoc...',NULL,NULL,'194E','',34,1),(66,'Payments to Contractors(Advertisement Contractors)',NULL,NULL,'194C','',33,1),(67,'Payments to Sub-Contractors',NULL,NULL,'194C','',33,1),(68,'Payments to Transporters',NULL,NULL,'194C','',33,1),(69,'Payments to Transporters (Sub-Contractors)',NULL,NULL,'194C','',33,1),(70,'Other Sums Payable to A Non-Resident',NULL,NULL,'195','',15,1),(71,'Income in Respect of Units of Non-Residents',NULL,NULL,'196','',38,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=42013 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_policy`
--

LOCK TABLES `tds_policy` WRITE;
/*!40000 ALTER TABLE `tds_policy` DISABLE KEYS */;
INSERT INTO `tds_policy` VALUES (41170,2,13,'2013-04-01 00:00:00'),(41171,2,14,'2013-04-01 00:00:00'),(41172,2,15,'2013-04-01 00:00:00'),(41173,2,16,'2013-04-01 00:00:00'),(41174,2,19,'2007-04-01 00:00:00'),(41175,2,19,'2009-04-01 00:00:00'),(41176,2,19,'2010-07-01 00:00:00'),(41177,2,22,'2007-04-01 00:00:00'),(41178,2,22,'2009-04-01 00:00:00'),(41179,2,22,'2012-07-01 00:00:00'),(41180,2,23,'2007-04-01 00:00:00'),(41181,2,23,'2009-04-01 00:00:00'),(41182,2,23,'2013-04-01 00:00:00'),(41183,2,24,'2013-04-01 00:00:00'),(41184,2,27,'2007-04-01 00:00:00'),(41185,2,27,'2009-04-01 00:00:00'),(41186,2,27,'2012-07-01 00:00:00'),(41187,2,28,'2013-06-01 00:00:00'),(41188,2,29,'2007-04-01 00:00:00'),(41189,2,29,'2009-04-01 00:00:00'),(41190,2,31,'2007-04-01 00:00:00'),(41191,2,31,'2009-04-01 00:00:00'),(41192,2,31,'2009-10-01 00:00:00'),(41193,2,31,'2010-07-01 00:00:00'),(41194,2,32,'2007-04-01 00:00:00'),(41195,2,38,'2012-07-01 00:00:00'),(41196,2,39,'2007-04-01 00:00:00'),(41197,2,39,'2009-04-01 00:00:00'),(41198,2,39,'2009-10-01 00:00:00'),(41199,2,39,'2010-07-01 00:00:00'),(41200,2,40,'2007-06-01 00:00:00'),(41201,2,40,'2009-04-01 00:00:00'),(41202,2,40,'2009-10-01 00:00:00'),(41203,2,40,'2010-07-01 00:00:00'),(41204,2,49,'2007-04-01 00:00:00'),(41205,2,49,'2009-04-01 00:00:00'),(41206,2,49,'2010-07-01 00:00:00'),(41207,2,50,'2007-04-01 00:00:00'),(41208,2,50,'2009-04-01 00:00:00'),(41209,2,50,'2010-07-01 00:00:00'),(41210,2,53,'2007-04-01 00:00:00'),(41211,2,53,'2009-04-01 00:00:00'),(41212,2,54,'2012-07-01 00:00:00'),(41213,2,54,'2013-04-01 00:00:00'),(41214,2,55,'2007-04-01 00:00:00'),(41215,2,55,'2009-04-01 00:00:00'),(41216,2,56,'2007-04-01 00:00:00'),(41217,2,56,'2007-06-01 00:00:00'),(41218,2,56,'2009-04-01 00:00:00'),(41219,2,56,'2010-07-01 00:00:00'),(41220,2,57,'2007-04-01 00:00:00'),(41221,2,57,'2009-04-01 00:00:00'),(41222,2,58,'2006-04-01 00:00:00'),(41223,2,58,'2007-04-01 00:00:00'),(41224,2,58,'2009-04-01 00:00:00'),(41225,2,58,'2010-07-01 00:00:00'),(41226,2,67,'2009-10-01 00:00:00'),(41227,2,67,'2010-07-01 00:00:00'),(41228,2,68,'2009-10-01 00:00:00'),(41229,2,68,'2010-04-01 00:00:00'),(41230,2,68,'2010-07-01 00:00:00'),(41231,3,19,'2004-04-01 00:00:00'),(41232,3,19,'2007-04-01 00:00:00'),(41233,3,19,'2009-04-01 00:00:00'),(41234,3,19,'2010-07-01 00:00:00'),(41235,3,20,'2008-04-01 00:00:00'),(41236,3,20,'2009-04-01 00:00:00'),(41237,3,22,'2004-04-01 00:00:00'),(41238,3,22,'2007-04-01 00:00:00'),(41239,3,22,'2009-04-01 00:00:00'),(41240,3,22,'2012-07-01 00:00:00'),(41241,3,23,'2004-04-01 00:00:00'),(41242,3,23,'2007-04-01 00:00:00'),(41243,3,23,'2009-04-01 00:00:00'),(41244,3,27,'2004-10-01 00:00:00'),(41245,3,27,'2007-04-01 00:00:00'),(41246,3,27,'2009-04-01 00:00:00'),(41247,3,27,'2012-07-01 00:00:00'),(41248,3,28,'2013-06-01 00:00:00'),(41249,3,29,'2004-04-01 00:00:00'),(41250,3,29,'2007-04-01 00:00:00'),(41251,3,29,'2009-04-01 00:00:00'),(41252,3,31,'2004-04-01 00:00:00'),(41253,3,31,'2007-04-01 00:00:00'),(41254,3,31,'2009-04-01 00:00:00'),(41255,3,32,'2004-04-01 00:00:00'),(41256,3,32,'2007-04-01 00:00:00'),(41257,3,32,'2009-04-01 00:00:00'),(41258,3,32,'2009-10-01 00:00:00'),(41259,3,32,'2010-07-01 00:00:00'),(41260,3,38,'2012-07-01 00:00:00'),(41261,3,39,'2004-04-01 00:00:00'),(41262,3,39,'2007-04-01 00:00:00'),(41263,3,39,'2007-06-01 00:00:00'),(41264,3,39,'2009-04-01 00:00:00'),(41265,3,39,'2009-10-01 00:00:00'),(41266,3,39,'2010-07-01 00:00:00'),(41267,3,40,'2007-06-01 00:00:00'),(41268,3,40,'2009-04-01 00:00:00'),(41269,3,40,'2009-10-01 00:00:00'),(41270,3,40,'2010-07-01 00:00:00'),(41271,3,49,'2004-04-01 00:00:00'),(41272,3,49,'2007-04-01 00:00:00'),(41273,3,49,'2009-04-01 00:00:00'),(41274,3,49,'2010-07-01 00:00:00'),(41275,3,50,'2004-04-01 00:00:00'),(41276,3,50,'2007-04-01 00:00:00'),(41277,3,50,'2009-04-01 00:00:00'),(41278,3,50,'2010-07-01 00:00:00'),(41279,3,53,'2004-04-01 00:00:00'),(41280,3,53,'2007-04-01 00:00:00'),(41281,3,53,'2008-04-01 00:00:00'),(41282,3,53,'2009-04-01 00:00:00'),(41283,3,53,'2012-04-01 00:00:00'),(41284,3,54,'2012-07-01 00:00:00'),(41285,3,55,'2007-04-01 00:00:00'),(41286,3,55,'2009-04-01 00:00:00'),(41287,3,56,'2004-04-01 00:00:00'),(41288,3,56,'2007-04-01 00:00:00'),(41289,3,56,'2007-06-01 00:00:00'),(41290,3,56,'2009-04-01 00:00:00'),(41291,3,56,'2010-07-01 00:00:00'),(41292,3,57,'2007-04-01 00:00:00'),(41293,3,57,'2009-04-01 00:00:00'),(41294,3,58,'2004-04-01 00:00:00'),(41295,3,58,'2007-04-01 00:00:00'),(41296,3,58,'2007-06-01 00:00:00'),(41297,3,58,'2009-04-01 00:00:00'),(41298,3,58,'2010-07-01 00:00:00'),(41299,3,66,'2004-04-01 00:00:00'),(41300,3,66,'2007-04-01 00:00:00'),(41301,3,66,'2009-04-01 00:00:00'),(41302,3,66,'2009-10-01 00:00:00'),(41303,3,66,'2010-07-01 00:00:00'),(41304,3,67,'2004-04-01 00:00:00'),(41305,3,67,'2007-04-01 00:00:00'),(41306,3,67,'2009-04-01 00:00:00'),(41307,3,67,'2009-10-01 00:00:00'),(41308,3,67,'2010-07-01 00:00:00'),(41309,3,68,'2009-10-01 00:00:00'),(41310,3,68,'2010-04-01 00:00:00'),(41311,3,68,'2010-07-01 00:00:00'),(41312,3,69,'2009-10-01 00:00:00'),(41313,3,69,'2010-04-01 00:00:00'),(41314,3,69,'2010-07-01 00:00:00'),(41315,4,13,'2009-04-01 00:00:00'),(41316,4,19,'2004-04-01 00:00:00'),(41317,4,19,'2007-04-01 00:00:00'),(41318,4,19,'2010-07-01 00:00:00'),(41319,4,20,'2008-04-01 00:00:00'),(41320,4,20,'2010-07-01 00:00:00'),(41321,4,22,'2004-04-01 00:00:00'),(41322,4,22,'2007-04-01 00:00:00'),(41323,4,22,'2009-04-01 00:00:00'),(41324,4,22,'2012-07-01 00:00:00'),(41325,4,23,'2004-04-01 00:00:00'),(41326,4,23,'2007-04-01 00:00:00'),(41327,4,23,'2009-04-01 00:00:00'),(41328,4,27,'2004-10-01 00:00:00'),(41329,4,27,'2007-04-01 00:00:00'),(41330,4,27,'2009-04-01 00:00:00'),(41331,4,27,'2012-07-01 00:00:00'),(41332,4,28,'2013-06-01 00:00:00'),(41333,4,29,'2004-04-01 00:00:00'),(41334,4,29,'2007-04-01 00:00:00'),(41335,4,29,'2009-04-01 00:00:00'),(41336,4,31,'2004-04-01 00:00:00'),(41337,4,31,'2007-04-01 00:00:00'),(41338,4,31,'2009-04-01 00:00:00'),(41339,4,32,'2004-04-01 00:00:00'),(41340,4,32,'2007-04-01 00:00:00'),(41341,4,32,'2009-04-01 00:00:00'),(41342,4,32,'2009-10-01 00:00:00'),(41343,4,32,'2010-07-01 00:00:00'),(41344,4,38,'2012-07-01 00:00:00'),(41345,4,39,'2004-04-01 00:00:00'),(41346,4,39,'2007-04-01 00:00:00'),(41347,4,39,'2007-06-01 00:00:00'),(41348,4,39,'2009-04-01 00:00:00'),(41349,4,39,'2009-10-01 00:00:00'),(41350,4,39,'2010-07-01 00:00:00'),(41351,4,40,'2007-06-01 00:00:00'),(41352,4,40,'2009-04-01 00:00:00'),(41353,4,40,'2009-10-01 00:00:00'),(41354,4,40,'2010-07-01 00:00:00'),(41355,4,49,'2004-04-01 00:00:00'),(41356,4,49,'2004-07-01 00:00:00'),(41357,4,49,'2007-04-01 00:00:00'),(41358,4,49,'2009-04-01 00:00:00'),(41359,4,50,'2004-04-01 00:00:00'),(41360,4,50,'2007-04-01 00:00:00'),(41361,4,50,'2010-07-01 00:00:00'),(41362,4,53,'2004-04-01 00:00:00'),(41363,4,53,'2007-04-01 00:00:00'),(41364,4,53,'2008-04-01 00:00:00'),(41365,4,53,'2009-04-01 00:00:00'),(41366,4,54,'2012-07-01 00:00:00'),(41367,4,55,'2004-04-01 00:00:00'),(41368,4,55,'2007-04-01 00:00:00'),(41369,4,55,'2009-04-01 00:00:00'),(41370,4,56,'2004-04-01 00:00:00'),(41371,4,56,'2007-04-01 00:00:00'),(41372,4,56,'2007-06-01 00:00:00'),(41373,4,56,'2009-04-01 00:00:00'),(41374,4,56,'2010-07-01 00:00:00'),(41375,4,57,'2007-04-01 00:00:00'),(41376,4,57,'2009-04-01 00:00:00'),(41377,4,58,'2004-04-01 00:00:00'),(41378,4,58,'2007-04-01 00:00:00'),(41379,4,58,'2007-06-01 00:00:00'),(41380,4,58,'2009-04-01 00:00:00'),(41381,4,58,'2010-07-01 00:00:00'),(41382,4,66,'2004-04-01 00:00:00'),(41383,4,66,'2007-04-01 00:00:00'),(41384,4,66,'2009-04-01 00:00:00'),(41385,4,66,'2009-10-01 00:00:00'),(41386,4,66,'2010-07-01 00:00:00'),(41387,4,67,'2004-04-01 00:00:00'),(41388,4,67,'2007-04-01 00:00:00'),(41389,4,67,'2009-04-01 00:00:00'),(41390,4,67,'2009-10-01 00:00:00'),(41391,4,68,'2009-10-01 00:00:00'),(41392,4,68,'2010-04-01 00:00:00'),(41393,4,68,'2010-07-01 00:00:00'),(41394,4,69,'2009-10-01 00:00:00'),(41395,4,69,'2010-07-01 00:00:00'),(41396,7,19,'2004-04-01 00:00:00'),(41397,7,19,'2005-04-01 00:00:00'),(41398,7,19,'2007-04-01 00:00:00'),(41399,7,19,'2009-04-01 00:00:00'),(41400,7,19,'2010-07-01 00:00:00'),(41401,7,20,'2008-04-01 00:00:00'),(41402,7,20,'2009-04-01 00:00:00'),(41403,7,22,'2004-04-01 00:00:00'),(41404,7,22,'2005-04-01 00:00:00'),(41405,7,22,'2007-04-01 00:00:00'),(41406,7,22,'2009-04-01 00:00:00'),(41407,7,22,'2012-07-01 00:00:00'),(41408,7,23,'2004-04-01 00:00:00'),(41409,7,23,'2005-04-01 00:00:00'),(41410,7,23,'2007-04-01 00:00:00'),(41411,7,23,'2009-04-01 00:00:00'),(41412,7,27,'2004-10-01 00:00:00'),(41413,7,27,'2005-04-01 00:00:00'),(41414,7,27,'2007-04-01 00:00:00'),(41415,7,27,'2009-04-01 00:00:00'),(41416,7,27,'2012-07-01 00:00:00'),(41417,7,28,'2013-06-01 00:00:00'),(41418,7,29,'2004-04-01 00:00:00'),(41419,7,29,'2005-04-01 00:00:00'),(41420,7,29,'2007-04-01 00:00:00'),(41421,7,29,'2009-04-01 00:00:00'),(41422,7,31,'2004-04-01 00:00:00'),(41423,7,31,'2005-04-01 00:00:00'),(41424,7,31,'2007-04-01 00:00:00'),(41425,7,31,'2009-04-01 00:00:00'),(41426,7,32,'2004-04-01 00:00:00'),(41427,7,32,'2005-04-01 00:00:00'),(41428,7,32,'2007-04-01 00:00:00'),(41429,7,32,'2009-04-01 00:00:00'),(41430,7,32,'2009-10-01 00:00:00'),(41431,7,32,'2010-07-01 00:00:00'),(41432,7,38,'2012-07-01 00:00:00'),(41433,7,39,'2004-04-01 00:00:00'),(41434,7,39,'2005-04-01 00:00:00'),(41435,7,39,'2007-04-01 00:00:00'),(41436,7,39,'2009-04-01 00:00:00'),(41437,7,39,'2009-10-01 00:00:00'),(41438,7,39,'2010-07-01 00:00:00'),(41439,7,40,'2007-06-01 00:00:00'),(41440,7,40,'2009-04-01 00:00:00'),(41441,7,40,'2009-10-01 00:00:00'),(41442,7,40,'2010-07-01 00:00:00'),(41443,7,49,'2004-04-01 00:00:00'),(41444,7,49,'2005-04-01 00:00:00'),(41445,7,49,'2007-04-01 00:00:00'),(41446,7,49,'2009-04-01 00:00:00'),(41447,7,49,'2010-07-01 00:00:00'),(41448,7,50,'2004-04-01 00:00:00'),(41449,7,50,'2005-04-01 00:00:00'),(41450,7,50,'2007-04-01 00:00:00'),(41451,7,50,'2009-04-01 00:00:00'),(41452,7,50,'2010-07-01 00:00:00'),(41453,7,53,'2004-04-01 00:00:00'),(41454,7,53,'2005-04-01 00:00:00'),(41455,7,53,'2007-04-01 00:00:00'),(41456,7,53,'2008-04-01 00:00:00'),(41457,7,53,'2009-04-01 00:00:00'),(41458,7,54,'2012-07-01 00:00:00'),(41459,7,55,'2004-04-01 00:00:00'),(41460,7,55,'2005-04-01 00:00:00'),(41461,7,55,'2007-04-01 00:00:00'),(41462,7,55,'2009-04-01 00:00:00'),(41463,7,56,'2004-04-01 00:00:00'),(41464,7,56,'2005-04-01 00:00:00'),(41465,7,56,'2007-04-01 00:00:00'),(41466,7,56,'2007-06-01 00:00:00'),(41467,7,56,'2009-04-01 00:00:00'),(41468,7,56,'2010-07-01 00:00:00'),(41469,7,57,'2007-04-01 00:00:00'),(41470,7,57,'2009-04-01 00:00:00'),(41471,7,58,'2004-04-01 00:00:00'),(41472,7,58,'2005-04-01 00:00:00'),(41473,7,58,'2007-04-01 00:00:00'),(41474,7,58,'2007-06-01 00:00:00'),(41475,7,58,'2009-04-01 00:00:00'),(41476,7,58,'2010-07-01 00:00:00'),(41477,7,66,'2004-04-01 00:00:00'),(41478,7,66,'2005-04-01 00:00:00'),(41479,7,66,'2007-04-01 00:00:00'),(41480,7,66,'2009-04-01 00:00:00'),(41481,7,66,'2009-10-01 00:00:00'),(41482,7,66,'2010-07-01 00:00:00'),(41483,7,67,'2004-04-01 00:00:00'),(41484,7,67,'2005-04-01 00:00:00'),(41485,7,67,'2007-04-01 00:00:00'),(41486,7,67,'2009-04-01 00:00:00'),(41487,7,67,'2009-10-01 00:00:00'),(41488,7,67,'2010-07-01 00:00:00'),(41489,7,68,'2009-10-01 00:00:00'),(41490,7,68,'2010-04-01 00:00:00'),(41491,7,68,'2010-07-01 00:00:00'),(41492,7,69,'2009-10-01 00:00:00'),(41493,7,69,'2010-04-01 00:00:00'),(41494,7,69,'2010-07-01 00:00:00'),(41495,5,1,'2008-04-01 00:00:00'),(41496,5,1,'2011-04-01 00:00:00'),(41497,5,1,'2012-04-01 00:00:00'),(41498,5,1,'2013-04-01 00:00:00'),(41499,5,13,'2008-04-01 00:00:00'),(41500,5,13,'2011-04-01 00:00:00'),(41501,5,13,'2012-04-01 00:00:00'),(41502,5,13,'2013-04-01 00:00:00'),(41503,5,14,'2004-04-01 00:00:00'),(41504,5,14,'2007-04-01 00:00:00'),(41505,5,15,'2012-07-01 00:00:00'),(41506,5,16,'2008-04-01 00:00:00'),(41507,5,16,'2011-04-01 00:00:00'),(41508,5,16,'2012-04-01 00:00:00'),(41509,5,16,'2013-04-01 00:00:00'),(41510,5,21,'2011-06-01 00:00:00'),(41511,5,24,'2008-04-01 00:00:00'),(41512,5,24,'2011-04-01 00:00:00'),(41513,5,24,'2012-04-01 00:00:00'),(41514,5,24,'2013-04-01 00:00:00'),(41515,5,25,'2008-04-01 00:00:00'),(41516,5,25,'2011-04-01 00:00:00'),(41517,5,25,'2012-04-01 00:00:00'),(41518,5,25,'2013-04-01 00:00:00'),(41519,5,29,'2011-04-01 00:00:00'),(41520,5,29,'2013-04-01 00:00:00'),(41521,5,30,'2004-04-01 00:00:00'),(41522,5,30,'2007-04-01 00:00:00'),(41523,5,30,'2012-04-01 00:00:00'),(41524,5,41,'2008-04-01 00:00:00'),(41525,5,41,'2011-04-01 00:00:00'),(41526,5,41,'2012-04-01 00:00:00'),(41527,5,42,'2008-04-01 00:00:00'),(41528,5,42,'2011-04-01 00:00:00'),(41529,5,42,'2012-04-01 00:00:00'),(41530,5,43,'0511-04-01 00:00:00'),(41531,5,43,'2008-04-01 00:00:00'),(41532,5,43,'2011-04-01 00:00:00'),(41533,5,43,'2012-04-01 00:00:00'),(41534,5,44,'2008-04-01 00:00:00'),(41535,5,44,'2011-04-01 00:00:00'),(41536,5,44,'2012-04-01 00:00:00'),(41537,5,44,'2013-04-01 00:00:00'),(41538,5,45,'2008-04-01 00:00:00'),(41539,5,45,'2011-04-01 00:00:00'),(41540,5,45,'2012-04-01 00:00:00'),(41541,5,45,'2013-04-01 00:00:00'),(41542,5,46,'2008-04-01 00:00:00'),(41543,5,46,'2011-04-01 00:00:00'),(41544,5,46,'2012-04-01 00:00:00'),(41545,5,47,'2008-04-01 00:00:00'),(41546,5,47,'2012-04-01 00:00:00'),(41547,5,48,'2008-04-01 00:00:00'),(41548,5,48,'2011-04-01 00:00:00'),(41549,5,48,'2012-04-01 00:00:00'),(41550,5,48,'2013-04-01 00:00:00'),(41551,5,49,'2007-04-01 00:00:00'),(41552,5,49,'2011-04-01 00:00:00'),(41553,5,49,'2012-04-01 00:00:00'),(41554,5,49,'2013-04-01 00:00:00'),(41555,5,50,'2007-04-01 00:00:00'),(41556,5,50,'2011-04-01 00:00:00'),(41557,5,50,'2012-04-01 00:00:00'),(41558,5,50,'2013-04-01 00:00:00'),(41559,5,55,'2007-04-01 00:00:00'),(41560,5,55,'2011-04-01 00:00:00'),(41561,5,55,'2012-04-01 00:00:00'),(41562,5,55,'2013-04-01 00:00:00'),(41563,5,59,'2008-04-01 00:00:00'),(41564,5,59,'2011-04-01 00:00:00'),(41565,5,59,'2012-04-01 00:00:00'),(41566,5,59,'2013-04-01 00:00:00'),(41567,5,60,'2008-04-01 00:00:00'),(41568,5,60,'2011-04-01 00:00:00'),(41569,5,60,'2012-04-01 00:00:00'),(41570,5,60,'2013-04-01 00:00:00'),(41571,5,61,'2008-04-01 00:00:00'),(41572,5,61,'2011-04-01 00:00:00'),(41573,5,61,'2012-04-01 00:00:00'),(41574,5,62,'2008-04-01 00:00:00'),(41575,5,62,'2011-04-01 00:00:00'),(41576,5,62,'2012-04-01 00:00:00'),(41577,5,63,'2013-06-01 00:00:00'),(41578,5,65,'2004-04-01 00:00:00'),(41579,5,65,'2007-04-01 00:00:00'),(41580,5,65,'2011-04-01 00:00:00'),(41581,5,65,'2012-04-01 00:00:00'),(41582,5,65,'2012-07-01 00:00:00'),(41583,5,65,'2013-04-01 00:00:00'),(41584,5,70,'2004-04-01 00:00:00'),(41585,5,70,'2007-04-01 00:00:00'),(41586,5,70,'2011-04-01 00:00:00'),(41587,5,70,'2012-04-01 00:00:00'),(41588,5,71,'2004-04-01 00:00:00'),(41589,5,71,'2007-04-01 00:00:00'),(41590,5,71,'2011-04-01 00:00:00'),(41591,5,71,'2012-04-01 00:00:00'),(41592,6,19,'2004-04-01 00:00:00'),(41593,6,19,'2007-04-01 00:00:00'),(41594,6,19,'2009-04-01 00:00:00'),(41595,6,19,'2010-07-01 00:00:00'),(41596,6,20,'2008-04-01 00:00:00'),(41597,6,20,'2009-04-01 00:00:00'),(41598,6,22,'2004-04-01 00:00:00'),(41599,6,22,'2007-04-01 00:00:00'),(41600,6,22,'2009-04-01 00:00:00'),(41601,6,22,'2012-07-01 00:00:00'),(41602,6,23,'2004-04-01 00:00:00'),(41603,6,23,'2007-04-01 00:00:00'),(41604,6,23,'2009-04-01 00:00:00'),(41605,6,27,'2004-10-01 00:00:00'),(41606,6,27,'2007-04-01 00:00:00'),(41607,6,27,'2009-04-01 00:00:00'),(41608,6,27,'2012-07-01 00:00:00'),(41609,6,28,'2013-06-01 00:00:00'),(41610,6,29,'2007-04-01 00:00:00'),(41611,6,29,'2009-04-01 00:00:00'),(41612,6,31,'2004-04-01 00:00:00'),(41613,6,31,'2007-04-01 00:00:00'),(41614,6,31,'2009-04-01 00:00:00'),(41615,6,32,'2004-04-01 00:00:00'),(41616,6,32,'2007-04-01 00:00:00'),(41617,6,32,'2009-04-01 00:00:00'),(41618,6,32,'2009-10-01 00:00:00'),(41619,6,32,'2010-07-01 00:00:00'),(41620,6,38,'2012-07-01 00:00:00'),(41621,6,39,'2004-04-01 00:00:00'),(41622,6,39,'2007-04-01 00:00:00'),(41623,6,39,'2009-04-01 00:00:00'),(41624,6,39,'2010-07-01 00:00:00'),(41625,6,39,'2012-10-01 00:00:00'),(41626,6,40,'2007-06-01 00:00:00'),(41627,6,40,'2009-04-01 00:00:00'),(41628,6,40,'2009-10-01 00:00:00'),(41629,6,40,'2010-07-01 00:00:00'),(41630,6,49,'2004-04-01 00:00:00'),(41631,6,49,'2007-04-01 00:00:00'),(41632,6,49,'2009-04-01 00:00:00'),(41633,6,49,'2010-07-01 00:00:00'),(41634,6,50,'2004-04-01 00:00:00'),(41635,6,50,'2007-04-01 00:00:00'),(41636,6,50,'2009-04-01 00:00:00'),(41637,6,50,'2010-07-01 00:00:00'),(41638,6,53,'2004-04-01 00:00:00'),(41639,6,53,'2007-04-01 00:00:00'),(41640,6,53,'2008-04-01 00:00:00'),(41641,6,53,'2009-04-01 00:00:00'),(41642,6,54,'2012-07-01 00:00:00'),(41643,6,55,'2004-04-01 00:00:00'),(41644,6,55,'2007-04-01 00:00:00'),(41645,6,55,'2009-04-01 00:00:00'),(41646,6,56,'2004-04-01 00:00:00'),(41647,6,56,'2007-04-01 00:00:00'),(41648,6,56,'2007-06-01 00:00:00'),(41649,6,56,'2009-04-01 00:00:00'),(41650,6,56,'2010-07-01 00:00:00'),(41651,6,57,'2007-04-01 00:00:00'),(41652,6,57,'2009-04-01 00:00:00'),(41653,6,58,'2004-04-01 00:00:00'),(41654,6,58,'2007-04-01 00:00:00'),(41655,6,58,'2007-06-01 00:00:00'),(41656,6,58,'2009-04-01 00:00:00'),(41657,6,58,'2010-07-01 00:00:00'),(41658,6,66,'2004-04-01 00:00:00'),(41659,6,66,'2007-04-01 00:00:00'),(41660,6,66,'2009-04-01 00:00:00'),(41661,6,66,'2009-10-01 00:00:00'),(41662,6,66,'2010-07-01 00:00:00'),(41663,6,67,'2004-04-01 00:00:00'),(41664,6,67,'2007-04-01 00:00:00'),(41665,6,67,'2009-04-01 00:00:00'),(41666,6,67,'2009-10-01 00:00:00'),(41667,6,67,'2010-07-01 00:00:00'),(41668,6,68,'2009-10-01 00:00:00'),(41669,6,68,'2010-04-01 00:00:00'),(41670,6,68,'2010-07-01 00:00:00'),(41671,6,69,'2009-10-01 00:00:00'),(41672,6,69,'2010-04-01 00:00:00'),(41673,6,69,'2010-07-01 00:00:00'),(41674,8,1,'2008-04-01 00:00:00'),(41675,8,1,'2012-04-01 00:00:00'),(41676,8,1,'2013-04-01 00:00:00'),(41677,8,13,'0013-04-01 00:00:00'),(41678,8,13,'2008-04-01 00:00:00'),(41679,8,13,'2012-04-01 00:00:00'),(41680,8,14,'2008-04-01 00:00:00'),(41681,8,14,'2012-04-01 00:00:00'),(41682,8,15,'2012-07-01 00:00:00'),(41683,8,15,'2013-04-01 00:00:00'),(41684,8,16,'2008-04-01 00:00:00'),(41685,8,16,'2012-04-01 00:00:00'),(41686,8,16,'2013-04-01 00:00:00'),(41687,8,21,'2011-06-01 00:00:00'),(41688,8,21,'2013-04-01 00:00:00'),(41689,8,24,'2008-04-01 00:00:00'),(41690,8,24,'2012-04-01 00:00:00'),(41691,8,24,'2013-04-01 00:00:00'),(41692,8,25,'2008-04-01 00:00:00'),(41693,8,25,'2012-04-01 00:00:00'),(41694,8,25,'2013-04-01 00:00:00'),(41695,8,29,'2007-04-01 00:00:00'),(41696,8,29,'2012-04-01 00:00:00'),(41697,8,30,'2004-04-01 00:00:00'),(41698,8,30,'2007-04-01 00:00:00'),(41699,8,30,'2012-04-01 00:00:00'),(41700,8,30,'2013-04-01 00:00:00'),(41701,8,31,'2007-04-01 00:00:00'),(41702,8,31,'2012-04-01 00:00:00'),(41703,8,31,'2013-04-01 00:00:00'),(41704,8,41,'2008-04-01 00:00:00'),(41705,8,41,'2012-04-01 00:00:00'),(41706,8,42,'2008-04-01 00:00:00'),(41707,8,42,'2012-04-01 00:00:00'),(41708,8,43,'2008-04-01 00:00:00'),(41709,8,43,'2012-04-01 00:00:00'),(41710,8,44,'2008-04-01 00:00:00'),(41711,8,44,'2012-04-01 00:00:00'),(41712,8,44,'2013-04-01 00:00:00'),(41713,8,45,'2008-04-01 00:00:00'),(41714,8,45,'2012-04-01 00:00:00'),(41715,8,45,'2013-04-01 00:00:00'),(41716,8,46,'2008-04-01 00:00:00'),(41717,8,46,'2012-04-01 00:00:00'),(41718,8,47,'2008-04-01 00:00:00'),(41719,8,47,'2012-04-01 00:00:00'),(41720,8,48,'2008-04-01 00:00:00'),(41721,8,48,'2012-04-01 00:00:00'),(41722,8,48,'2013-04-01 00:00:00'),(41723,8,49,'2007-04-01 00:00:00'),(41724,8,49,'2012-04-01 00:00:00'),(41725,8,49,'2013-04-01 00:00:00'),(41726,8,50,'2007-04-01 00:00:00'),(41727,8,50,'2012-04-01 00:00:00'),(41728,8,50,'2013-04-01 00:00:00'),(41729,8,55,'2007-04-01 00:00:00'),(41730,8,55,'2012-04-01 00:00:00'),(41731,8,55,'2013-04-01 00:00:00'),(41732,8,59,'2008-04-01 00:00:00'),(41733,8,59,'2012-04-01 00:00:00'),(41734,8,59,'2013-04-01 00:00:00'),(41735,8,60,'2008-04-01 00:00:00'),(41736,8,60,'2012-04-01 00:00:00'),(41737,8,60,'2013-04-01 00:00:00'),(41738,8,61,'2008-04-01 00:00:00'),(41739,8,61,'2012-12-04 00:00:00'),(41740,8,62,'2008-04-01 00:00:00'),(41741,8,62,'2012-04-01 00:00:00'),(41742,8,63,'2013-06-01 00:00:00'),(41743,8,64,'2004-04-01 00:00:00'),(41744,8,64,'2012-04-01 00:00:00'),(41745,8,64,'2013-04-01 00:00:00'),(41746,8,64,'2020-07-14 00:00:00'),(41747,8,65,'2007-04-01 00:00:00'),(41748,8,65,'2010-04-01 00:00:00'),(41749,8,65,'2012-04-01 00:00:00'),(41750,8,65,'2012-07-01 00:00:00'),(41751,8,65,'2013-04-01 00:00:00'),(41752,8,70,'2004-04-01 00:00:00'),(41753,8,70,'2007-04-01 00:00:00'),(41754,8,70,'2012-07-01 00:00:00'),(41755,8,71,'2004-04-01 00:00:00'),(41756,8,71,'2007-04-01 00:00:00'),(41757,8,71,'2008-04-01 00:00:00'),(41758,8,71,'2012-04-01 00:00:00'),(41759,9,19,'2004-04-01 00:00:00'),(41760,9,19,'2007-04-01 00:00:00'),(41761,9,19,'2009-04-01 00:00:00'),(41762,9,19,'2010-07-01 00:00:00'),(41763,9,20,'2008-04-01 00:00:00'),(41764,9,20,'2009-04-01 00:00:00'),(41765,9,22,'2004-04-01 00:00:00'),(41766,9,22,'2007-04-01 00:00:00'),(41767,9,22,'2009-04-01 00:00:00'),(41768,9,22,'2012-07-01 00:00:00'),(41769,9,23,'2004-04-01 00:00:00'),(41770,9,23,'2007-04-01 00:00:00'),(41771,9,23,'2009-04-01 00:00:00'),(41772,9,27,'2004-10-01 00:00:00'),(41773,9,27,'2007-04-01 00:00:00'),(41774,9,27,'2009-04-01 00:00:00'),(41775,9,27,'2012-07-01 00:00:00'),(41776,9,28,'2013-06-01 00:00:00'),(41777,9,29,'2004-04-01 00:00:00'),(41778,9,29,'2007-04-01 00:00:00'),(41779,9,29,'2009-04-01 00:00:00'),(41780,9,31,'2007-04-01 00:00:00'),(41781,9,31,'2009-04-01 00:00:00'),(41782,9,32,'2004-04-01 00:00:00'),(41783,9,32,'2007-04-01 00:00:00'),(41784,9,32,'2009-04-01 00:00:00'),(41785,9,32,'2009-10-01 00:00:00'),(41786,9,32,'2010-07-01 00:00:00'),(41787,9,38,'2012-07-01 00:00:00'),(41788,9,39,'2004-04-01 00:00:00'),(41789,9,39,'2007-04-01 00:00:00'),(41790,9,39,'2009-04-01 00:00:00'),(41791,9,39,'2009-10-01 00:00:00'),(41792,9,39,'2010-07-01 00:00:00'),(41793,9,40,'2007-06-01 00:00:00'),(41794,9,40,'2009-04-01 00:00:00'),(41795,9,40,'2009-10-01 00:00:00'),(41796,9,40,'2010-07-01 00:00:00'),(41797,9,49,'2004-04-01 00:00:00'),(41798,9,49,'2007-04-01 00:00:00'),(41799,9,49,'2009-04-01 00:00:00'),(41800,9,49,'2010-07-01 00:00:00'),(41801,9,50,'2004-04-01 00:00:00'),(41802,9,50,'2007-04-01 00:00:00'),(41803,9,50,'2009-04-01 00:00:00'),(41804,9,50,'2010-07-01 00:00:00'),(41805,9,53,'2004-04-01 00:00:00'),(41806,9,53,'2005-04-01 00:00:00'),(41807,9,53,'2008-04-01 00:00:00'),(41808,9,53,'2009-04-01 00:00:00'),(41809,9,54,'2012-07-01 00:00:00'),(41810,9,55,'2004-04-01 00:00:00'),(41811,9,55,'2007-04-01 00:00:00'),(41812,9,55,'2009-04-01 00:00:00'),(41813,9,56,'2004-04-01 00:00:00'),(41814,9,56,'2007-04-01 00:00:00'),(41815,9,56,'2007-06-01 00:00:00'),(41816,9,56,'2009-04-01 00:00:00'),(41817,9,56,'2010-07-01 00:00:00'),(41818,9,57,'2007-04-01 00:00:00'),(41819,9,57,'2009-04-01 00:00:00'),(41820,9,58,'2004-04-01 00:00:00'),(41821,9,58,'2007-04-01 00:00:00'),(41822,9,58,'2007-06-01 00:00:00'),(41823,9,58,'2009-04-01 00:00:00'),(41824,9,58,'2010-07-01 00:00:00'),(41825,9,66,'2004-04-01 00:00:00'),(41826,9,66,'2007-04-01 00:00:00'),(41827,9,66,'2009-04-01 00:00:00'),(41828,9,66,'2009-10-01 00:00:00'),(41829,9,66,'2010-07-01 00:00:00'),(41830,9,67,'2004-04-01 00:00:00'),(41831,9,67,'2007-04-01 00:00:00'),(41832,9,67,'2009-04-01 00:00:00'),(41833,9,67,'2009-10-01 00:00:00'),(41834,9,67,'2010-07-01 00:00:00'),(41835,9,68,'2009-10-01 00:00:00'),(41836,9,68,'2010-04-01 00:00:00'),(41837,9,68,'2010-07-01 00:00:00'),(41838,9,69,'2009-10-01 00:00:00'),(41839,9,69,'2010-04-01 00:00:00'),(41840,9,69,'2010-07-01 00:00:00'),(41841,10,19,'2004-04-01 00:00:00'),(41842,10,19,'2005-04-01 00:00:00'),(41843,10,19,'2007-04-01 00:00:00'),(41844,10,19,'2009-04-01 00:00:00'),(41845,10,19,'2010-07-01 00:00:00'),(41846,10,20,'2008-04-01 00:00:00'),(41847,10,20,'2009-04-01 00:00:00'),(41848,10,22,'2004-04-01 00:00:00'),(41849,10,22,'2005-04-01 00:00:00'),(41850,10,22,'2007-04-01 00:00:00'),(41851,10,22,'2009-04-01 00:00:00'),(41852,10,22,'2012-07-01 00:00:00'),(41853,10,23,'2004-04-01 00:00:00'),(41854,10,23,'2005-04-01 00:00:00'),(41855,10,23,'2007-04-01 00:00:00'),(41856,10,23,'2009-04-01 00:00:00'),(41857,10,27,'2004-04-01 00:00:00'),(41858,10,27,'2005-04-01 00:00:00'),(41859,10,27,'2007-04-01 00:00:00'),(41860,10,27,'2009-04-01 00:00:00'),(41861,10,27,'2012-07-01 00:00:00'),(41862,10,28,'2013-06-01 00:00:00'),(41863,10,29,'2004-04-01 00:00:00'),(41864,10,29,'2005-04-01 00:00:00'),(41865,10,29,'2007-04-01 00:00:00'),(41866,10,29,'2009-04-01 00:00:00'),(41867,10,31,'2004-04-01 00:00:00'),(41868,10,31,'2005-04-01 00:00:00'),(41869,10,31,'2007-04-01 00:00:00'),(41870,10,31,'2009-04-01 00:00:00'),(41871,10,32,'2004-04-01 00:00:00'),(41872,10,32,'2005-04-01 00:00:00'),(41873,10,32,'2007-04-01 00:00:00'),(41874,10,32,'2009-04-01 00:00:00'),(41875,10,32,'2009-10-01 00:00:00'),(41876,10,32,'2010-07-01 00:00:00'),(41877,10,38,'2012-07-01 00:00:00'),(41878,10,39,'2004-04-01 00:00:00'),(41879,10,39,'2005-04-01 00:00:00'),(41880,10,39,'2007-04-01 00:00:00'),(41881,10,39,'2009-04-01 00:00:00'),(41882,10,39,'2009-10-01 00:00:00'),(41883,10,39,'2010-07-01 00:00:00'),(41884,10,40,'2007-06-01 00:00:00'),(41885,10,40,'2009-04-01 00:00:00'),(41886,10,40,'2009-10-01 00:00:00'),(41887,10,40,'2010-07-01 00:00:00'),(41888,10,49,'2004-04-01 00:00:00'),(41889,10,49,'2005-04-01 00:00:00'),(41890,10,49,'2007-04-01 00:00:00'),(41891,10,49,'2009-04-01 00:00:00'),(41892,10,49,'2010-07-01 00:00:00'),(41893,10,50,'2004-04-01 00:00:00'),(41894,10,50,'2005-04-01 00:00:00'),(41895,10,50,'2007-04-01 00:00:00'),(41896,10,50,'2009-04-01 00:00:00'),(41897,10,50,'2010-07-01 00:00:00'),(41898,10,53,'2004-04-01 00:00:00'),(41899,10,53,'2005-04-01 00:00:00'),(41900,10,53,'2007-04-01 00:00:00'),(41901,10,53,'2008-04-01 00:00:00'),(41902,10,53,'2009-04-01 00:00:00'),(41903,10,54,'2012-07-01 00:00:00'),(41904,10,55,'2004-04-01 00:00:00'),(41905,10,55,'2005-04-01 00:00:00'),(41906,10,55,'2007-04-01 00:00:00'),(41907,10,55,'2009-04-01 00:00:00'),(41908,10,56,'2004-04-01 00:00:00'),(41909,10,56,'2005-04-01 00:00:00'),(41910,10,56,'2007-04-01 00:00:00'),(41911,10,56,'2007-06-01 00:00:00'),(41912,10,56,'2009-04-01 00:00:00'),(41913,10,56,'2010-07-01 00:00:00'),(41914,10,57,'2007-04-01 00:00:00'),(41915,10,57,'2009-04-01 00:00:00'),(41916,10,58,'2004-04-01 00:00:00'),(41917,10,58,'2005-04-01 00:00:00'),(41918,10,58,'2007-04-01 00:00:00'),(41919,10,58,'2007-06-01 00:00:00'),(41920,10,58,'2009-04-01 00:00:00'),(41921,10,58,'2010-07-01 00:00:00'),(41922,10,66,'2004-04-01 00:00:00'),(41923,10,66,'2005-04-01 00:00:00'),(41924,10,66,'2007-04-01 00:00:00'),(41925,10,66,'2009-04-01 00:00:00'),(41926,10,66,'2009-10-01 00:00:00'),(41927,10,66,'2010-07-01 00:00:00'),(41928,10,67,'2004-04-01 00:00:00'),(41929,10,67,'2005-04-01 00:00:00'),(41930,10,67,'2007-04-01 00:00:00'),(41931,10,67,'2009-04-01 00:00:00'),(41932,10,67,'2009-10-01 00:00:00'),(41933,10,67,'2010-07-01 00:00:00'),(41934,10,68,'2009-10-01 00:00:00'),(41935,10,68,'2010-04-01 00:00:00'),(41936,10,68,'2010-07-01 00:00:00'),(41937,10,69,'2009-10-01 00:00:00'),(41938,10,69,'2010-04-01 00:00:00'),(41939,10,69,'2010-07-01 00:00:00'),(41940,11,19,'2004-04-01 00:00:00'),(41941,11,19,'2009-04-01 00:00:00'),(41942,11,19,'2010-07-01 00:00:00'),(41943,11,19,'2012-07-04 00:00:00'),(41944,11,22,'2004-04-01 00:00:00'),(41945,11,22,'2007-04-01 00:00:00'),(41946,11,22,'2009-04-01 00:00:00'),(41947,11,22,'2012-07-01 00:00:00'),(41948,11,23,'2004-04-01 00:00:00'),(41949,11,23,'2007-04-01 00:00:00'),(41950,11,23,'2009-04-01 00:00:00'),(41951,11,27,'2004-04-01 00:00:00'),(41952,11,27,'2007-04-01 00:00:00'),(41953,11,27,'2009-04-01 00:00:00'),(41954,11,27,'2012-07-01 00:00:00'),(41955,11,29,'2004-04-01 00:00:00'),(41956,11,29,'2007-04-01 00:00:00'),(41957,11,29,'2009-04-01 00:00:00'),(41958,11,31,'2004-04-01 00:00:00'),(41959,11,31,'2007-04-01 00:00:00'),(41960,11,31,'2009-04-01 00:00:00'),(41961,11,32,'2004-04-01 00:00:00'),(41962,11,32,'2007-04-01 00:00:00'),(41963,11,32,'2009-04-01 00:00:00'),(41964,11,32,'2009-10-01 00:00:00'),(41965,11,32,'2010-07-01 00:00:00'),(41966,11,39,'2004-04-01 00:00:00'),(41967,11,39,'2007-04-01 00:00:00'),(41968,11,39,'2009-04-01 00:00:00'),(41969,11,39,'2009-10-01 00:00:00'),(41970,11,39,'2010-07-01 00:00:00'),(41971,11,40,'2007-06-01 00:00:00'),(41972,11,40,'2009-04-01 00:00:00'),(41973,11,40,'2009-10-01 00:00:00'),(41974,11,40,'2010-07-01 00:00:00'),(41975,11,49,'2004-04-01 00:00:00'),(41976,11,49,'2007-04-01 00:00:00'),(41977,11,49,'2009-04-01 00:00:00'),(41978,11,49,'2010-07-01 00:00:00'),(41979,11,50,'2004-04-01 00:00:00'),(41980,11,50,'2007-04-01 00:00:00'),(41981,11,50,'2009-04-01 00:00:00'),(41982,11,50,'2010-07-01 00:00:00'),(41983,11,53,'2004-04-01 00:00:00'),(41984,11,53,'2007-04-01 00:00:00'),(41985,11,53,'2008-04-01 00:00:00'),(41986,11,53,'2009-04-01 00:00:00'),(41987,11,55,'2004-04-01 00:00:00'),(41988,11,55,'2007-04-01 00:00:00'),(41989,11,55,'2009-04-01 00:00:00'),(41990,11,56,'2004-04-01 00:00:00'),(41991,11,56,'2007-04-01 00:00:00'),(41992,11,56,'2007-06-01 00:00:00'),(41993,11,56,'2009-04-01 00:00:00'),(41994,11,56,'2010-07-01 00:00:00'),(41995,11,57,'2007-04-01 00:00:00'),(41996,11,57,'2009-04-01 00:00:00'),(41997,11,57,'2012-01-01 00:00:00'),(41998,11,58,'2004-04-01 00:00:00'),(41999,11,58,'2007-04-01 00:00:00'),(42000,11,58,'2007-06-01 00:00:00'),(42001,11,58,'2009-04-01 00:00:00'),(42002,11,58,'2010-07-01 00:00:00'),(42003,11,66,'2004-04-01 00:00:00'),(42004,11,66,'2007-04-01 00:00:00'),(42005,11,66,'2009-04-01 00:00:00'),(42006,11,66,'2009-10-01 00:00:00'),(42007,11,66,'2010-07-01 00:00:00'),(42008,11,67,'2004-04-01 00:00:00'),(42009,11,67,'2007-04-01 00:00:00'),(42010,11,67,'2009-04-01 00:00:00'),(42011,11,67,'2009-10-01 00:00:00'),(42012,11,67,'2010-07-01 00:00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_section`
--

LOCK TABLES `tds_section` WRITE;
/*!40000 ALTER TABLE `tds_section` DISABLE KEYS */;
INSERT INTO `tds_section` VALUES (15,'195','Payment to Other Sum of A Non-Resident',1),(16,'193','Interest on Securities',1),(17,'194J','Fee for Professional Or Technical Services ',1),(18,'194G','Commission on Sale of Lotteries',1),(19,'194H','Commission or Brokerage',1),(20,'194','Dividend',1),(21,'194LD','Income by Way of Interest on Certain Bonds and Government Securities',1),(22,'196C','Income From Foreign Currency Bonds',1),(23,'194LC','Income From Foreign Currency, Bonds Or Shares of Indian Company',1),(24,'196D','Income of Foreign Institutional Investors',1),(25,'194D','Insurance Commission ',1),(26,'194LB','Interest on Infrastructure Debt Fund',1),(27,'194A','Interest Other Than Interest on Securities',1),(28,'194LA','Aquisition of Immovable Property',1),(29,'194IA','Payment on Transfer of Certain Immovable Perperty Other Than Agricultural Land',1),(30,'194EE','Deposit Under NSS',1),(31,'196B','Income From Units to an Offshore Fund',1),(32,'194F','Repurchase of Units of MF/UTI',1),(33,'194C ','Contractors & Sub-Contractors',1),(34,'194E','Non-Resident Sportsmen/Spots Association',1),(35,'194I','Rent',1),(36,'194BB','Winning From Horse Races',1),(37,'194B','Winnings From Lotteries',1),(38,'196A','196A',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=208671 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_tax_rate`
--

LOCK TABLES `tds_tax_rate` WRITE;
/*!40000 ALTER TABLE `tds_tax_rate` DISABLE KEYS */;
INSERT INTO `tds_tax_rate` VALUES (204486,41170,5.00,5000.00,1),(204487,41170,20.00,50000.00,2),(204488,41170,0.00,0.00,3),(204489,41170,0.00,0.00,4),(204490,41170,0.00,0.00,5),(204491,41171,2.55,50000.00,1),(204492,41171,20.00,45000.00,2),(204493,41171,0.00,0.00,3),(204494,41171,0.00,0.00,4),(204495,41171,0.00,0.00,5),(204496,41172,4.50,450000.00,1),(204497,41172,20.00,45000.00,2),(204498,41172,0.00,0.00,3),(204499,41172,0.00,0.00,4),(204500,41172,0.00,0.00,5),(204501,41173,4.78,40000.00,1),(204502,41173,20.00,6000.00,2),(204503,41173,0.00,0.00,3),(204504,41173,0.00,0.00,4),(204505,41173,0.00,0.00,5),(204506,41174,10.00,5000.00,1),(204507,41174,20.00,0.00,2),(204508,41174,10.00,10000000.00,3),(204509,41174,2.00,0.00,4),(204510,41174,1.00,0.00,5),(204511,41175,10.00,5000.00,1),(204512,41175,20.00,0.00,2),(204513,41175,0.00,0.00,3),(204514,41175,0.00,0.00,4),(204515,41175,0.00,0.00,5),(204516,41176,10.00,20000.00,1),(204517,41176,20.00,0.00,2),(204518,41176,0.00,0.00,3),(204519,41176,0.00,0.00,4),(204520,41176,0.00,0.00,5),(204521,41177,10.00,2500.00,1),(204522,41177,20.00,0.00,2),(204523,41177,10.00,10000000.00,3),(204524,41177,2.00,0.00,4),(204525,41177,1.00,0.00,5),(204526,41178,10.00,2500.00,1),(204527,41178,20.00,0.00,2),(204528,41178,0.00,0.00,3),(204529,41178,0.00,0.00,4),(204530,41178,0.00,0.00,5),(204531,41179,10.00,5000.00,1),(204532,41179,20.00,0.00,2),(204533,41179,0.00,0.00,3),(204534,41179,0.00,0.00,4),(204535,41179,0.00,0.00,5),(204536,41180,10.00,5000.00,1),(204537,41180,20.00,0.00,2),(204538,41180,10.00,10000000.00,3),(204539,41180,2.00,0.00,4),(204540,41180,1.00,0.00,5),(204541,41181,10.00,5000.00,1),(204542,41181,20.00,0.00,2),(204543,41181,0.00,0.00,3),(204544,41181,0.00,0.00,4),(204545,41181,0.00,0.00,5),(204546,41182,5.50,6000.00,1),(204547,41182,20.00,31000.00,2),(204548,41182,0.00,0.00,3),(204549,41182,0.00,0.00,4),(204550,41182,0.00,0.00,5),(204551,41183,2.00,8000.00,1),(204552,41183,20.00,31000.00,2),(204553,41183,0.00,0.00,3),(204554,41183,0.00,0.00,4),(204555,41183,0.00,0.00,5),(204556,41184,10.00,100000.00,1),(204557,41184,20.00,0.00,2),(204558,41184,10.00,10000000.00,3),(204559,41184,2.00,0.00,4),(204560,41184,1.00,0.00,5),(204561,41185,10.00,100000.00,1),(204562,41185,20.00,0.00,2),(204563,41185,0.00,0.00,3),(204564,41185,0.00,0.00,4),(204565,41185,0.00,0.00,5),(204566,41186,10.00,200000.00,1),(204567,41186,20.00,0.00,2),(204568,41186,0.00,0.00,3),(204569,41186,0.00,0.00,4),(204570,41186,0.00,0.00,5),(204571,41187,1.00,5000000.00,1),(204572,41187,20.00,0.00,2),(204573,41187,0.00,0.00,3),(204574,41187,0.00,0.00,4),(204575,41187,0.00,0.00,5),(204576,41188,20.00,0.00,1),(204577,41188,20.00,0.00,2),(204578,41188,10.00,10000000.00,3),(204579,41188,2.00,0.00,4),(204580,41188,1.00,0.00,5),(204581,41189,20.00,0.00,1),(204582,41189,20.00,0.00,2),(204583,41189,0.00,0.00,3),(204584,41189,0.00,0.00,4),(204585,41189,0.00,0.00,5),(204586,41190,20.00,0.00,1),(204587,41190,20.00,0.00,2),(204588,41190,10.00,10000000.00,3),(204589,41190,2.00,0.00,4),(204590,41190,1.00,0.00,5),(204591,41191,2.00,50000.00,1),(204592,41191,20.00,0.00,2),(204593,41191,0.00,0.00,3),(204594,41191,0.00,0.00,4),(204595,41191,0.00,0.00,5),(204596,41192,2.00,50000.00,1),(204597,41192,20.00,0.00,2),(204598,41192,0.00,0.00,3),(204599,41192,0.00,0.00,4),(204600,41192,0.00,0.00,5),(204601,41193,2.00,75000.00,1),(204602,41193,20.00,0.00,2),(204603,41193,0.00,0.00,3),(204604,41193,0.00,0.00,4),(204605,41193,0.00,0.00,5),(204606,41194,2.00,50000.00,1),(204607,41194,20.00,0.00,2),(204608,41194,10.00,10000000.00,3),(204609,41194,2.00,0.00,4),(204610,41194,1.00,0.00,5),(204611,41195,10.00,30000.00,1),(204612,41195,20.00,0.00,2),(204613,41195,0.00,0.00,3),(204614,41195,0.00,0.00,4),(204615,41195,0.00,0.00,5),(204616,41196,20.00,120000.00,1),(204617,41196,20.00,0.00,2),(204618,41196,10.00,10000000.00,3),(204619,41196,2.00,0.00,4),(204620,41196,1.00,0.00,5),(204621,41197,20.00,120000.00,1),(204622,41197,20.00,0.00,2),(204623,41197,0.00,0.00,3),(204624,41197,0.00,0.00,4),(204625,41197,0.00,0.00,5),(204626,41198,10.00,120000.00,1),(204627,41198,20.00,0.00,2),(204628,41198,0.00,0.00,3),(204629,41198,0.00,0.00,4),(204630,41198,0.00,0.00,5),(204631,41199,10.00,180000.00,1),(204632,41199,20.00,0.00,2),(204633,41199,0.00,0.00,3),(204634,41199,0.00,0.00,4),(204635,41199,0.00,0.00,5),(204636,41200,10.00,120000.00,1),(204637,41200,20.00,0.00,2),(204638,41200,10.00,10000000.00,3),(204639,41200,2.00,0.00,4),(204640,41200,1.00,0.00,5),(204641,41201,10.00,120000.00,1),(204642,41201,20.00,0.00,2),(204643,41201,0.00,0.00,3),(204644,41201,0.00,0.00,4),(204645,41201,0.00,0.00,5),(204646,41202,2.00,120000.00,1),(204647,41202,20.00,0.00,2),(204648,41202,0.00,0.00,3),(204649,41202,0.00,0.00,4),(204650,41202,0.00,0.00,5),(204651,41203,2.00,180000.00,1),(204652,41203,20.00,0.00,2),(204653,41203,0.00,0.00,3),(204654,41203,0.00,0.00,4),(204655,41203,0.00,0.00,5),(204656,41204,30.00,2500.00,1),(204657,41204,20.00,0.00,2),(204658,41204,10.00,10000000.00,3),(204659,41204,2.00,0.00,4),(204660,41204,1.00,0.00,5),(204661,41205,30.00,2500.00,1),(204662,41205,20.00,0.00,2),(204663,41205,0.00,0.00,3),(204664,41205,0.00,0.00,4),(204665,41205,0.00,0.00,5),(204666,41206,30.00,5000.00,1),(204667,41206,20.00,0.00,2),(204668,41206,0.00,0.00,3),(204669,41206,0.00,0.00,4),(204670,41206,0.00,0.00,5),(204671,41207,30.00,5000.00,1),(204672,41207,20.00,0.00,2),(204673,41207,10.00,10000000.00,3),(204674,41207,2.00,0.00,4),(204675,41207,1.00,0.00,5),(204676,41208,30.00,5000.00,1),(204677,41208,20.00,0.00,2),(204678,41208,0.00,0.00,3),(204679,41208,0.00,0.00,4),(204680,41208,0.00,0.00,5),(204681,41209,30.00,10000.00,1),(204682,41209,20.00,0.00,2),(204683,41209,0.00,0.00,3),(204684,41209,0.00,0.00,4),(204685,41209,0.00,0.00,5),(204686,41210,20.00,2500.00,1),(204687,41210,20.00,0.00,2),(204688,41210,10.00,10000000.00,3),(204689,41210,2.00,0.00,4),(204690,41210,1.00,0.00,5),(204691,41211,10.00,2500.00,1),(204692,41211,20.00,0.00,2),(204693,41211,0.00,0.00,3),(204694,41211,0.00,0.00,4),(204695,41211,0.00,0.00,5),(204696,41212,10.00,0.00,1),(204697,41212,20.00,0.00,2),(204698,41212,0.00,0.00,3),(204699,41212,0.00,0.00,4),(204700,41212,0.00,0.00,5),(204701,41213,10.00,2500.00,1),(204702,41213,20.00,5000.00,2),(204703,41213,0.00,0.00,3),(204704,41213,0.00,0.00,4),(204705,41213,0.00,0.00,5),(204706,41214,10.00,1000.00,1),(204707,41214,20.00,0.00,2),(204708,41214,10.00,10000000.00,3),(204709,41214,2.00,0.00,4),(204710,41214,1.00,0.00,5),(204711,41215,10.00,1000.00,1),(204712,41215,20.00,0.00,2),(204713,41215,0.00,0.00,3),(204714,41215,0.00,0.00,4),(204715,41215,0.00,0.00,5),(204716,41216,5.00,2500.00,1),(204717,41216,20.00,0.00,2),(204718,41216,10.00,10000000.00,3),(204719,41216,2.00,0.00,4),(204720,41216,1.00,0.00,5),(204721,41217,10.00,2500.00,1),(204722,41217,20.00,0.00,2),(204723,41217,10.00,10000000.00,3),(204724,41217,2.00,0.00,4),(204725,41217,1.00,0.00,5),(204726,41218,10.00,2500.00,1),(204727,41218,20.00,0.00,2),(204728,41218,0.00,0.00,3),(204729,41218,0.00,0.00,4),(204730,41218,0.00,0.00,5),(204731,41219,10.00,5000.00,1),(204732,41219,20.00,0.00,2),(204733,41219,0.00,0.00,3),(204734,41219,0.00,0.00,4),(204735,41219,0.00,0.00,5),(204736,41220,20.00,2500.00,1),(204737,41220,20.00,0.00,2),(204738,41220,10.00,10000000.00,3),(204739,41220,2.00,0.00,4),(204740,41220,1.00,0.00,5),(204741,41221,10.00,2500.00,1),(204742,41221,20.00,0.00,2),(204743,41221,0.00,0.00,3),(204744,41221,0.00,0.00,4),(204745,41221,0.00,0.00,5),(204746,41222,10.00,20000.00,1),(204747,41222,20.00,0.00,2),(204748,41222,10.00,10000000.00,3),(204749,41222,2.00,0.00,4),(204750,41222,1.00,0.00,5),(204751,41223,5.00,20000.00,1),(204752,41223,0.00,0.00,2),(204753,41223,10.00,10000000.00,3),(204754,41223,2.00,0.00,4),(204755,41223,1.00,0.00,5),(204756,41224,10.00,20000.00,1),(204757,41224,20.00,0.00,2),(204758,41224,0.00,0.00,3),(204759,41224,0.00,0.00,4),(204760,41224,0.00,0.00,5),(204761,41225,10.00,30000.00,1),(204762,41225,20.00,0.00,2),(204763,41225,0.00,0.00,3),(204764,41225,0.00,0.00,4),(204765,41225,0.00,0.00,5),(204766,41226,2.00,50000.00,1),(204767,41226,20.00,0.00,2),(204768,41226,0.00,0.00,3),(204769,41226,0.00,0.00,4),(204770,41226,0.00,0.00,5),(204771,41227,2.00,75000.00,1),(204772,41227,20.00,0.00,2),(204773,41227,0.00,0.00,3),(204774,41227,0.00,0.00,4),(204775,41227,0.00,0.00,5),(204776,41228,2.00,50000.00,1),(204777,41228,20.00,0.00,2),(204778,41228,0.00,0.00,3),(204779,41228,0.00,0.00,4),(204780,41228,0.00,0.00,5),(204781,41229,0.00,0.00,1),(204782,41229,20.00,0.00,2),(204783,41229,0.00,0.00,3),(204784,41229,0.00,0.00,4),(204785,41229,0.00,0.00,5),(204786,41230,20.00,75000.00,1),(204787,41230,20.00,0.00,2),(204788,41230,0.00,0.00,3),(204789,41230,0.00,0.00,4),(204790,41230,0.00,0.00,5),(204791,41231,10.00,5000.00,1),(204792,41231,20.00,0.00,2),(204793,41231,10.00,1000000.00,3),(204794,41231,2.00,0.00,4),(204795,41231,0.00,0.00,5),(204796,41232,10.00,5000.00,1),(204797,41232,20.00,0.00,2),(204798,41232,10.00,1000000.00,3),(204799,41232,2.00,0.00,4),(204800,41232,1.00,0.00,5),(204801,41233,10.00,5000.00,1),(204802,41233,20.00,0.00,2),(204803,41233,0.00,0.00,3),(204804,41233,0.00,0.00,4),(204805,41233,0.00,0.00,5),(204806,41234,10.00,20000.00,1),(204807,41234,0.00,0.00,2),(204808,41234,0.00,0.00,3),(204809,41234,0.00,0.00,4),(204810,41234,0.00,0.00,5),(204811,41235,10.00,10000.00,1),(204812,41235,20.00,0.00,2),(204813,41235,10.00,1000000.00,3),(204814,41235,2.00,0.00,4),(204815,41235,1.00,0.00,5),(204816,41236,10.00,10000.00,1),(204817,41236,20.00,0.00,2),(204818,41236,0.00,0.00,3),(204819,41236,0.00,0.00,4),(204820,41236,0.00,0.00,5),(204821,41237,10.00,2500.00,1),(204822,41237,20.00,0.00,2),(204823,41237,10.00,1000000.00,3),(204824,41237,2.00,0.00,4),(204825,41237,0.00,0.00,5),(204826,41238,10.00,2500.00,1),(204827,41238,20.00,0.00,2),(204828,41238,10.00,1000000.00,3),(204829,41238,2.00,0.00,4),(204830,41238,1.00,0.00,5),(204831,41239,10.00,2500.00,1),(204832,41239,20.00,0.00,2),(204833,41239,0.00,0.00,3),(204834,41239,0.00,0.00,4),(204835,41239,0.00,0.00,5),(204836,41240,10.00,5000.00,1),(204837,41240,20.00,0.00,2),(204838,41240,0.00,0.00,3),(204839,41240,0.00,0.00,4),(204840,41240,0.00,0.00,5),(204841,41241,10.00,5000.00,1),(204842,41241,20.00,0.00,2),(204843,41241,10.00,1000000.00,3),(204844,41241,2.00,0.00,4),(204845,41241,0.00,0.00,5),(204846,41242,10.00,5000.00,1),(204847,41242,20.00,0.00,2),(204848,41242,10.00,1000000.00,3),(204849,41242,2.00,0.00,4),(204850,41242,1.00,0.00,5),(204851,41243,10.00,5000.00,1),(204852,41243,20.00,0.00,2),(204853,41243,0.00,0.00,3),(204854,41243,0.00,0.00,4),(204855,41243,0.00,0.00,5),(204856,41244,10.00,10000000.00,1),(204857,41244,20.00,0.00,2),(204858,41244,10.00,1000000.00,3),(204859,41244,2.00,0.00,4),(204860,41244,0.00,0.00,5),(204861,41245,10.00,10000000.00,1),(204862,41245,20.00,0.00,2),(204863,41245,10.00,1000000.00,3),(204864,41245,2.00,0.00,4),(204865,41245,1.00,0.00,5),(204866,41246,10.00,10000000.00,1),(204867,41246,20.00,0.00,2),(204868,41246,0.00,0.00,3),(204869,41246,0.00,0.00,4),(204870,41246,0.00,0.00,5),(204871,41247,10.00,20000000.00,1),(204872,41247,20.00,0.00,2),(204873,41247,0.00,0.00,3),(204874,41247,0.00,0.00,4),(204875,41247,0.00,0.00,5),(204876,41248,1.00,5000000.00,1),(204877,41248,20.00,0.00,2),(204878,41248,0.00,0.00,3),(204879,41248,0.00,0.00,4),(204880,41248,0.00,0.00,5),(204881,41249,20.00,2500.00,1),(204882,41249,20.00,0.00,2),(204883,41249,10.00,1000000.00,3),(204884,41249,2.00,0.00,4),(204885,41249,0.00,0.00,5),(204886,41250,20.00,0.00,1),(204887,41250,20.00,0.00,2),(204888,41250,10.00,1000000.00,3),(204889,41250,2.00,0.00,4),(204890,41250,1.00,0.00,5),(204891,41251,20.00,0.00,1),(204892,41251,20.00,0.00,2),(204893,41251,0.00,0.00,3),(204894,41251,0.00,0.00,4),(204895,41251,0.00,0.00,5),(204896,41252,20.00,0.00,1),(204897,41252,20.00,0.00,2),(204898,41252,10.00,1000000.00,3),(204899,41252,2.00,0.00,4),(204900,41252,0.00,0.00,5),(204901,41253,20.00,0.00,1),(204902,41253,20.00,0.00,2),(204903,41253,10.00,1000000.00,3),(204904,41253,2.00,0.00,4),(204905,41253,1.00,0.00,5),(204906,41254,20.00,0.00,1),(204907,41254,0.00,0.00,2),(204908,41254,0.00,0.00,3),(204909,41254,0.00,0.00,4),(204910,41254,0.00,0.00,5),(204911,41255,2.00,50000.00,1),(204912,41255,20.00,0.00,2),(204913,41255,10.00,1000000.00,3),(204914,41255,2.00,0.00,4),(204915,41255,0.00,0.00,5),(204916,41256,2.00,50000.00,1),(204917,41256,20.00,0.00,2),(204918,41256,10.00,1000000.00,3),(204919,41256,2.00,0.00,4),(204920,41256,1.00,0.00,5),(204921,41257,2.00,50000.00,1),(204922,41257,20.00,0.00,2),(204923,41257,0.00,0.00,3),(204924,41257,0.00,0.00,4),(204925,41257,0.00,0.00,5),(204926,41258,2.00,50000.00,1),(204927,41258,20.00,0.00,2),(204928,41258,0.00,0.00,3),(204929,41258,0.00,0.00,4),(204930,41258,0.00,0.00,5),(204931,41259,2.00,75000.00,1),(204932,41259,20.00,0.00,2),(204933,41259,0.00,0.00,3),(204934,41259,0.00,0.00,4),(204935,41259,0.00,0.00,5),(204936,41260,10.00,30000.00,1),(204937,41260,20.00,0.00,2),(204938,41260,0.00,0.00,3),(204939,41260,0.00,0.00,4),(204940,41260,0.00,0.00,5),(204941,41261,15.00,120000.00,1),(204942,41261,20.00,0.00,2),(204943,41261,10.00,1000000.00,3),(204944,41261,2.00,0.00,4),(204945,41261,0.00,0.00,5),(204946,41262,15.00,120000.00,1),(204947,41262,20.00,0.00,2),(204948,41262,10.00,1000000.00,3),(204949,41262,2.00,0.00,4),(204950,41262,1.00,0.00,5),(204951,41263,20.00,120000.00,1),(204952,41263,20.00,0.00,2),(204953,41263,10.00,1000000.00,3),(204954,41263,2.00,0.00,4),(204955,41263,1.00,0.00,5),(204956,41264,20.00,120000.00,1),(204957,41264,20.00,0.00,2),(204958,41264,0.00,0.00,3),(204959,41264,0.00,0.00,4),(204960,41264,0.00,0.00,5),(204961,41265,10.00,120000.00,1),(204962,41265,20.00,0.00,2),(204963,41265,0.00,0.00,3),(204964,41265,0.00,0.00,4),(204965,41265,0.00,0.00,5),(204966,41266,10.00,180000.00,1),(204967,41266,20.00,0.00,2),(204968,41266,0.00,0.00,3),(204969,41266,0.00,0.00,4),(204970,41266,0.00,0.00,5),(204971,41267,10.00,120000.00,1),(204972,41267,20.00,0.00,2),(204973,41267,10.00,1000000.00,3),(204974,41267,2.00,0.00,4),(204975,41267,1.00,0.00,5),(204976,41268,10.00,120000.00,1),(204977,41268,20.00,0.00,2),(204978,41268,0.00,0.00,3),(204979,41268,0.00,0.00,4),(204980,41268,0.00,0.00,5),(204981,41269,2.00,120000.00,1),(204982,41269,20.00,0.00,2),(204983,41269,0.00,0.00,3),(204984,41269,0.00,0.00,4),(204985,41269,0.00,0.00,5),(204986,41270,2.00,180000.00,1),(204987,41270,20.00,0.00,2),(204988,41270,0.00,0.00,3),(204989,41270,0.00,0.00,4),(204990,41270,0.00,0.00,5),(204991,41271,30.00,2500.00,1),(204992,41271,20.00,0.00,2),(204993,41271,10.00,1000000.00,3),(204994,41271,2.00,0.00,4),(204995,41271,0.00,0.00,5),(204996,41272,30.00,2500.00,1),(204997,41272,20.00,0.00,2),(204998,41272,10.00,1000000.00,3),(204999,41272,2.00,0.00,4),(205000,41272,1.00,0.00,5),(205001,41273,30.00,2500.00,1),(205002,41273,20.00,0.00,2),(205003,41273,0.00,0.00,3),(205004,41273,0.00,0.00,4),(205005,41273,0.00,0.00,5),(205006,41274,30.00,5000.00,1),(205007,41274,20.00,0.00,2),(205008,41274,0.00,0.00,3),(205009,41274,0.00,0.00,4),(205010,41274,0.00,0.00,5),(205011,41275,30.00,5000.00,1),(205012,41275,20.00,0.00,2),(205013,41275,10.00,1000000.00,3),(205014,41275,2.00,0.00,4),(205015,41275,0.00,0.00,5),(205016,41276,30.00,5000.00,1),(205017,41276,20.00,0.00,2),(205018,41276,10.00,1000000.00,3),(205019,41276,2.00,0.00,4),(205020,41276,0.00,0.00,5),(205021,41277,30.00,5000.00,1),(205022,41277,20.00,0.00,2),(205023,41277,0.00,0.00,3),(205024,41277,0.00,0.00,4),(205025,41277,0.00,0.00,5),(205026,41278,30.00,10000.00,1),(205027,41278,20.00,0.00,2),(205028,41278,0.00,0.00,3),(205029,41278,0.00,0.00,4),(205030,41278,0.00,0.00,5),(205031,41279,20.00,2500.00,1),(205032,41279,20.00,0.00,2),(205033,41279,10.00,1000000.00,3),(205034,41279,2.00,0.00,4),(205035,41279,0.00,0.00,5),(205036,41280,20.00,2500.00,1),(205037,41280,20.00,0.00,2),(205038,41280,10.00,1000000.00,3),(205039,41280,2.00,0.00,4),(205040,41280,1.00,0.00,5),(205041,41281,20.00,0.00,1),(205042,41281,20.00,0.00,2),(205043,41281,10.00,1000000.00,3),(205044,41281,2.00,0.00,4),(205045,41281,1.00,0.00,5),(205046,41282,10.00,0.00,1),(205047,41282,20.00,0.00,2),(205048,41282,0.00,0.00,3),(205049,41282,0.00,0.00,4),(205050,41282,0.00,0.00,5),(205051,41284,10.00,0.00,1),(205052,41284,0.00,0.00,2),(205053,41284,0.00,0.00,3),(205054,41284,0.00,0.00,4),(205055,41284,0.00,0.00,5),(205056,41285,10.00,1000.00,1),(205057,41285,20.00,0.00,2),(205058,41285,10.00,1000000.00,3),(205059,41285,2.00,0.00,4),(205060,41285,0.00,0.00,5),(205061,41286,10.00,1000.00,1),(205062,41286,20.00,0.00,2),(205063,41286,0.00,1000000.00,3),(205064,41286,0.00,0.00,4),(205065,41286,0.00,0.00,5),(205066,41287,5.00,2500.00,1),(205067,41287,20.00,0.00,2),(205068,41287,10.00,1000000.00,3),(205069,41287,2.00,0.00,4),(205070,41287,0.00,0.00,5),(205071,41288,5.00,2500.00,1),(205072,41288,20.00,0.00,2),(205073,41288,10.00,1000000.00,3),(205074,41288,2.00,0.00,4),(205075,41288,1.00,0.00,5),(205076,41289,10.00,2500.00,1),(205077,41289,20.00,0.00,2),(205078,41289,10.00,1000000.00,3),(205079,41289,2.00,0.00,4),(205080,41289,1.00,0.00,5),(205081,41290,10.00,2500.00,1),(205082,41290,20.00,0.00,2),(205083,41290,0.00,0.00,3),(205084,41290,0.00,0.00,4),(205085,41290,0.00,0.00,5),(205086,41291,10.00,5000.00,1),(205087,41291,0.00,0.00,2),(205088,41291,0.00,0.00,3),(205089,41291,0.00,0.00,4),(205090,41291,0.00,0.00,5),(205091,41292,20.00,2500.00,1),(205092,41292,20.00,0.00,2),(205093,41292,10.00,1000000.00,3),(205094,41292,2.00,0.00,4),(205095,41292,1.00,0.00,5),(205096,41293,10.00,2500.00,1),(205097,41293,20.00,0.00,2),(205098,41293,0.00,0.00,3),(205099,41293,0.00,0.00,4),(205100,41293,0.00,0.00,5),(205101,41294,5.00,20000.00,1),(205102,41294,20.00,0.00,2),(205103,41294,10.00,1000000.00,3),(205104,41294,2.00,0.00,4),(205105,41294,0.00,0.00,5),(205106,41295,5.00,20000.00,1),(205107,41295,20.00,0.00,2),(205108,41295,10.00,1000000.00,3),(205109,41295,2.00,0.00,4),(205110,41295,1.00,0.00,5),(205111,41296,10.00,20000.00,1),(205112,41296,20.00,0.00,2),(205113,41296,10.00,1000000.00,3),(205114,41296,2.00,0.00,4),(205115,41296,1.00,0.00,5),(205116,41297,10.00,20000.00,1),(205117,41297,20.00,0.00,2),(205118,41297,0.00,0.00,3),(205119,41297,0.00,0.00,4),(205120,41297,0.00,0.00,5),(205121,41298,10.00,30000.00,1),(205122,41298,20.00,0.00,2),(205123,41298,0.00,0.00,3),(205124,41298,0.00,0.00,4),(205125,41298,0.00,0.00,5),(205126,41299,1.00,20000.00,1),(205127,41299,20.00,0.00,2),(205128,41299,10.00,1000000.00,3),(205129,41299,2.00,0.00,4),(205130,41299,0.00,0.00,5),(205131,41300,1.00,20000.00,1),(205132,41300,20.00,0.00,2),(205133,41300,10.00,1000000.00,3),(205134,41300,0.00,0.00,4),(205135,41300,0.00,0.00,5),(205136,41301,1.00,20000.00,1),(205137,41301,20.00,0.00,2),(205138,41301,0.00,0.00,3),(205139,41301,0.00,0.00,4),(205140,41301,0.00,0.00,5),(205141,41302,2.00,20000.00,1),(205142,41302,20.00,0.00,2),(205143,41302,0.00,0.00,3),(205144,41302,0.00,0.00,4),(205145,41302,0.00,0.00,5),(205146,41303,2.00,75000.00,1),(205147,41303,20.00,0.00,2),(205148,41303,0.00,0.00,3),(205149,41303,0.00,0.00,4),(205150,41303,0.00,0.00,5),(205151,41304,1.00,20000.00,1),(205152,41304,20.00,0.00,2),(205153,41304,10.00,1000000.00,3),(205154,41304,2.00,0.00,4),(205155,41304,0.00,0.00,5),(205156,41305,1.00,50000.00,1),(205157,41305,20.00,0.00,2),(205158,41305,10.00,1000000.00,3),(205159,41305,2.00,0.00,4),(205160,41305,1.00,0.00,5),(205161,41306,1.00,50000.00,1),(205162,41306,20.00,0.00,2),(205163,41306,0.00,0.00,3),(205164,41306,0.00,0.00,4),(205165,41306,0.00,0.00,5),(205166,41307,2.00,50000.00,1),(205167,41307,20.00,0.00,2),(205168,41307,0.00,0.00,3),(205169,41307,0.00,0.00,4),(205170,41307,0.00,0.00,5),(205171,41308,2.00,75000.00,1),(205172,41308,20.00,0.00,2),(205173,41308,0.00,0.00,3),(205174,41308,0.00,0.00,4),(205175,41308,0.00,0.00,5),(205176,41309,2.00,50000.00,1),(205177,41309,20.00,0.00,2),(205178,41309,0.00,0.00,3),(205179,41309,0.00,0.00,4),(205180,41309,0.00,0.00,5),(205181,41311,20.00,75000.00,1),(205182,41311,20.00,0.00,2),(205183,41311,0.00,0.00,3),(205184,41311,0.00,0.00,4),(205185,41311,0.00,0.00,5),(205186,41312,2.00,50000.00,1),(205187,41312,20.00,0.00,2),(205188,41312,0.00,0.00,3),(205189,41312,0.00,0.00,4),(205190,41312,0.00,0.00,5),(205191,41314,20.00,75000.00,1),(205192,41314,20.00,0.00,2),(205193,41314,0.00,0.00,3),(205194,41314,0.00,0.00,4),(205195,41314,0.00,0.00,5),(205196,41315,10.00,10000.00,1),(205197,41315,20.00,0.00,2),(205198,41315,0.00,0.00,3),(205199,41315,0.00,0.00,4),(205200,41315,0.00,0.00,5),(205201,41316,10.00,5000.00,1),(205202,41316,20.00,0.00,2),(205203,41316,10.00,1000000.00,3),(205204,41316,2.00,0.00,4),(205205,41316,0.00,0.00,5),(205206,41317,10.00,5000.00,1),(205207,41317,20.00,0.00,2),(205208,41317,10.00,1000000.00,3),(205209,41317,2.00,0.00,4),(205210,41317,1.00,0.00,5),(205211,41318,10.00,20000.00,1),(205212,41318,20.00,0.00,2),(205213,41318,0.00,0.00,3),(205214,41318,0.00,0.00,4),(205215,41318,0.00,0.00,5),(205216,41319,10.00,10000.00,1),(205217,41319,20.00,0.00,2),(205218,41319,10.00,1000000.00,3),(205219,41319,2.00,0.00,4),(205220,41319,1.00,0.00,5),(205221,41320,20.00,75000.00,1),(205222,41320,20.00,0.00,2),(205223,41320,0.00,0.00,3),(205224,41320,0.00,0.00,4),(205225,41320,0.00,0.00,5),(205226,41321,10.00,2500.00,1),(205227,41321,20.00,0.00,2),(205228,41321,10.00,1000000.00,3),(205229,41321,2.00,0.00,4),(205230,41321,0.00,0.00,5),(205231,41322,10.00,2500.00,1),(205232,41322,20.00,0.00,2),(205233,41322,10.00,1000000.00,3),(205234,41322,2.00,0.00,4),(205235,41322,1.00,0.00,5),(205236,41323,10.00,25000.00,1),(205237,41323,20.00,0.00,2),(205238,41323,0.00,0.00,3),(205239,41323,0.00,0.00,4),(205240,41323,0.00,0.00,5),(205241,41324,10.00,5000.00,1),(205242,41324,20.00,0.00,2),(205243,41324,0.00,0.00,3),(205244,41324,0.00,0.00,4),(205245,41324,0.00,0.00,5),(205246,41325,10.00,5000.00,1),(205247,41325,20.00,0.00,2),(205248,41325,10.00,1000000.00,3),(205249,41325,2.00,0.00,4),(205250,41325,0.00,0.00,5),(205251,41326,10.00,5000.00,1),(205252,41326,20.00,0.00,2),(205253,41326,10.00,1000000.00,3),(205254,41326,2.00,0.00,4),(205255,41326,1.00,0.00,5),(205256,41327,10.00,5000.00,1),(205257,41327,20.00,0.00,2),(205258,41327,0.00,0.00,3),(205259,41327,0.00,0.00,4),(205260,41327,0.00,0.00,5),(205261,41328,10.00,100000.00,1),(205262,41328,20.00,0.00,2),(205263,41328,10.00,1000000.00,3),(205264,41328,2.00,0.00,4),(205265,41328,0.00,0.00,5),(205266,41329,10.00,100000.00,1),(205267,41329,20.00,0.00,2),(205268,41329,10.00,1000000.00,3),(205269,41329,2.00,0.00,4),(205270,41329,1.00,0.00,5),(205271,41330,10.00,100000.00,1),(205272,41330,20.00,0.00,2),(205273,41330,0.00,0.00,3),(205274,41330,0.00,0.00,4),(205275,41330,0.00,0.00,5),(205276,41331,10.00,200000.00,1),(205277,41331,20.00,0.00,2),(205278,41331,0.00,0.00,3),(205279,41331,0.00,0.00,4),(205280,41331,0.00,0.00,5),(205281,41332,1.00,5000000.00,1),(205282,41332,20.00,0.00,2),(205283,41332,0.00,0.00,3),(205284,41332,0.00,0.00,4),(205285,41332,0.00,0.00,5),(205286,41333,20.00,2500.00,1),(205287,41333,20.00,0.00,2),(205288,41333,10.00,1000000.00,3),(205289,41333,2.00,0.00,4),(205290,41333,0.00,0.00,5),(205291,41334,20.00,0.00,1),(205292,41334,20.00,0.00,2),(205293,41334,10.00,1000000.00,3),(205294,41334,2.00,0.00,4),(205295,41334,1.00,0.00,5),(205296,41335,20.00,0.00,1),(205297,41335,20.00,0.00,2),(205298,41335,0.00,0.00,3),(205299,41335,0.00,0.00,4),(205300,41335,0.00,0.00,5),(205301,41336,20.00,0.00,1),(205302,41336,20.00,0.00,2),(205303,41336,10.00,1000000.00,3),(205304,41336,2.00,0.00,4),(205305,41336,0.00,0.00,5),(205306,41337,20.00,0.00,1),(205307,41337,20.00,0.00,2),(205308,41337,10.00,1000000.00,3),(205309,41337,2.00,0.00,4),(205310,41337,1.00,0.00,5),(205311,41338,20.00,0.00,1),(205312,41338,20.00,0.00,2),(205313,41338,0.00,0.00,3),(205314,41338,0.00,0.00,4),(205315,41338,0.00,0.00,5),(205316,41339,2.00,20000.00,1),(205317,41339,20.00,0.00,2),(205318,41339,10.00,100000.00,3),(205319,41339,2.00,0.00,4),(205320,41339,0.00,0.00,5),(205321,41340,2.00,50000.00,1),(205322,41340,20.00,0.00,2),(205323,41340,10.00,1000000.00,3),(205324,41340,2.00,0.00,4),(205325,41340,1.00,0.00,5),(205326,41341,2.00,50000.00,1),(205327,41341,20.00,0.00,2),(205328,41341,0.00,0.00,3),(205329,41341,0.00,0.00,4),(205330,41341,0.00,0.00,5),(205331,41342,2.00,50000.00,1),(205332,41342,20.00,0.00,2),(205333,41342,0.00,0.00,3),(205334,41342,0.00,0.00,4),(205335,41342,0.00,0.00,5),(205336,41343,2.00,75000.00,1),(205337,41343,20.00,0.00,2),(205338,41343,0.00,0.00,3),(205339,41343,0.00,0.00,4),(205340,41343,0.00,0.00,5),(205341,41344,10.00,30000.00,1),(205342,41344,20.00,0.00,2),(205343,41344,0.00,0.00,3),(205344,41344,0.00,0.00,4),(205345,41344,0.00,0.00,5),(205346,41345,15.00,120000.00,1),(205347,41345,20.00,0.00,2),(205348,41345,10.00,1000000.00,3),(205349,41345,2.00,0.00,4),(205350,41345,0.00,0.00,5),(205351,41346,15.00,120000.00,1),(205352,41346,20.00,0.00,2),(205353,41346,10.00,1000000.00,3),(205354,41346,2.00,0.00,4),(205355,41346,1.00,0.00,5),(205356,41347,20.00,120000.00,1),(205357,41347,20.00,0.00,2),(205358,41347,10.00,1000000.00,3),(205359,41347,2.00,0.00,4),(205360,41347,1.00,0.00,5),(205361,41348,20.00,120000.00,1),(205362,41348,20.00,0.00,2),(205363,41348,0.00,0.00,3),(205364,41348,0.00,0.00,4),(205365,41348,0.00,0.00,5),(205366,41349,10.00,120000.00,1),(205367,41349,20.00,0.00,2),(205368,41349,0.00,0.00,3),(205369,41349,0.00,0.00,4),(205370,41349,0.00,0.00,5),(205371,41350,10.00,180000.00,1),(205372,41350,20.00,0.00,2),(205373,41350,0.00,0.00,3),(205374,41350,0.00,0.00,4),(205375,41350,0.00,0.00,5),(205376,41351,10.00,120000.00,1),(205377,41351,20.00,0.00,2),(205378,41351,10.00,1000000.00,3),(205379,41351,2.00,0.00,4),(205380,41351,1.00,0.00,5),(205381,41352,10.00,120000.00,1),(205382,41352,20.00,0.00,2),(205383,41352,0.00,0.00,3),(205384,41352,0.00,0.00,4),(205385,41352,0.00,0.00,5),(205386,41353,2.00,120000.00,1),(205387,41353,20.00,0.00,2),(205388,41353,0.00,0.00,3),(205389,41353,0.00,0.00,4),(205390,41353,0.00,0.00,5),(205391,41354,2.00,180000.00,1),(205392,41354,20.00,0.00,2),(205393,41354,0.00,0.00,3),(205394,41354,0.00,0.00,4),(205395,41354,0.00,0.00,5),(205396,41355,30.00,2500.00,1),(205397,41355,20.00,0.00,2),(205398,41355,10.00,1000000.00,3),(205399,41355,2.00,0.00,4),(205400,41355,0.00,0.00,5),(205401,41356,30.00,5000.00,1),(205402,41356,20.00,0.00,2),(205403,41356,0.00,0.00,3),(205404,41356,0.00,0.00,4),(205405,41356,0.00,0.00,5),(205406,41357,30.00,2500.00,1),(205407,41357,20.00,0.00,2),(205408,41357,10.00,1000000.00,3),(205409,41357,2.00,0.00,4),(205410,41357,1.00,0.00,5),(205411,41358,30.00,2500.00,1),(205412,41358,20.00,0.00,2),(205413,41358,0.00,0.00,3),(205414,41358,0.00,0.00,4),(205415,41358,0.00,0.00,5),(205416,41359,30.00,5000.00,1),(205417,41359,20.00,0.00,2),(205418,41359,10.00,1000000.00,3),(205419,41359,2.00,0.00,4),(205420,41359,0.00,0.00,5),(205421,41360,30.00,5000.00,1),(205422,41360,20.00,0.00,2),(205423,41360,10.00,1000000.00,3),(205424,41360,2.00,0.00,4),(205425,41360,1.00,0.00,5),(205426,41361,30.00,10000.00,1),(205427,41361,20.00,0.00,2),(205428,41361,0.00,0.00,3),(205429,41361,0.00,0.00,4),(205430,41361,0.00,0.00,5),(205431,41362,20.00,2500.00,1),(205432,41362,20.00,0.00,2),(205433,41362,10.00,1000000.00,3),(205434,41362,2.00,0.00,4),(205435,41362,0.00,0.00,5),(205436,41363,20.00,2500.00,1),(205437,41363,20.00,0.00,2),(205438,41363,10.00,1000000.00,3),(205439,41363,2.00,0.00,4),(205440,41363,1.00,0.00,5),(205441,41364,20.00,0.00,1),(205442,41364,20.00,0.00,2),(205443,41364,10.00,1000000.00,3),(205444,41364,2.00,0.00,4),(205445,41364,1.00,0.00,5),(205446,41365,10.00,0.00,1),(205447,41365,20.00,0.00,2),(205448,41365,0.00,0.00,3),(205449,41365,0.00,0.00,4),(205450,41365,0.00,0.00,5),(205451,41366,10.00,0.00,1),(205452,41366,20.00,0.00,2),(205453,41366,0.00,0.00,3),(205454,41366,0.00,0.00,4),(205455,41366,0.00,0.00,5),(205456,41367,10.00,1000.00,1),(205457,41367,20.00,0.00,2),(205458,41367,10.00,1000000.00,3),(205459,41367,1.00,0.00,4),(205460,41367,0.00,0.00,5),(205461,41368,10.00,1000.00,1),(205462,41368,20.00,0.00,2),(205463,41368,10.00,1000000.00,3),(205464,41368,2.00,0.00,4),(205465,41368,1.00,0.00,5),(205466,41369,10.00,1000.00,1),(205467,41369,20.00,0.00,2),(205468,41369,0.00,0.00,3),(205469,41369,0.00,0.00,4),(205470,41369,0.00,0.00,5),(205471,41370,5.00,2500.00,1),(205472,41370,20.00,0.00,2),(205473,41370,10.00,1000000.00,3),(205474,41370,2.00,0.00,4),(205475,41370,0.00,0.00,5),(205476,41371,5.00,2500.00,1),(205477,41371,20.00,0.00,2),(205478,41371,10.00,1000000.00,3),(205479,41371,2.00,0.00,4),(205480,41371,1.00,0.00,5),(205481,41372,10.00,2500.00,1),(205482,41372,20.00,0.00,2),(205483,41372,10.00,1000000.00,3),(205484,41372,2.00,0.00,4),(205485,41372,1.00,0.00,5),(205486,41373,10.00,2500.00,1),(205487,41373,20.00,0.00,2),(205488,41373,0.00,0.00,3),(205489,41373,0.00,0.00,4),(205490,41373,0.00,0.00,5),(205491,41374,10.00,5000.00,1),(205492,41374,20.00,0.00,2),(205493,41374,0.00,0.00,3),(205494,41374,0.00,0.00,4),(205495,41374,0.00,0.00,5),(205496,41375,20.00,2500.00,1),(205497,41375,20.00,0.00,2),(205498,41375,10.00,1000000.00,3),(205499,41375,2.00,0.00,4),(205500,41375,1.00,0.00,5),(205501,41376,10.00,2500.00,1),(205502,41376,20.00,0.00,2),(205503,41376,0.00,0.00,3),(205504,41376,0.00,0.00,4),(205505,41376,0.00,0.00,5),(205506,41377,5.00,20000.00,1),(205507,41377,20.00,0.00,2),(205508,41377,10.00,1000000.00,3),(205509,41377,2.00,0.00,4),(205510,41377,1.00,0.00,5),(205511,41378,5.00,20000.00,1),(205512,41378,20.00,0.00,2),(205513,41378,10.00,1000000.00,3),(205514,41378,2.00,0.00,4),(205515,41378,1.00,0.00,5),(205516,41379,10.00,20000.00,1),(205517,41379,20.00,0.00,2),(205518,41379,10.00,1000000.00,3),(205519,41379,2.00,0.00,4),(205520,41379,1.00,0.00,5),(205521,41380,10.00,20000.00,1),(205522,41380,20.00,0.00,2),(205523,41380,0.00,0.00,3),(205524,41380,0.00,0.00,4),(205525,41380,0.00,0.00,5),(205526,41381,10.00,30000.00,1),(205527,41381,20.00,0.00,2),(205528,41381,0.00,0.00,3),(205529,41381,0.00,0.00,4),(205530,41381,0.00,0.00,5),(205531,41382,1.00,20000.00,1),(205532,41382,20.00,0.00,2),(205533,41382,10.00,1000000.00,3),(205534,41382,2.00,0.00,4),(205535,41382,1.00,0.00,5),(205536,41383,1.00,20000.00,1),(205537,41383,20.00,0.00,2),(205538,41383,10.00,1000000.00,3),(205539,41383,2.00,0.00,4),(205540,41383,1.00,0.00,5),(205541,41384,1.00,20000.00,1),(205542,41384,20.00,0.00,2),(205543,41384,0.00,0.00,3),(205544,41384,0.00,0.00,4),(205545,41384,0.00,0.00,5),(205546,41385,2.00,20000.00,1),(205547,41385,20.00,0.00,2),(205548,41385,0.00,0.00,3),(205549,41385,0.00,0.00,4),(205550,41385,0.00,0.00,5),(205551,41386,2.00,75000.00,1),(205552,41386,20.00,0.00,2),(205553,41386,0.00,0.00,3),(205554,41386,0.00,0.00,4),(205555,41386,0.00,0.00,5),(205556,41387,1.00,20000.00,1),(205557,41387,20.00,0.00,2),(205558,41387,10.00,1000000.00,3),(205559,41387,2.00,0.00,4),(205560,41387,0.00,0.00,5),(205561,41388,1.00,50000.00,1),(205562,41388,20.00,0.00,2),(205563,41388,10.00,1000000.00,3),(205564,41388,2.00,0.00,4),(205565,41388,1.00,0.00,5),(205566,41389,1.00,50000.00,1),(205567,41389,20.00,0.00,2),(205568,41389,0.00,0.00,3),(205569,41389,0.00,0.00,4),(205570,41389,0.00,0.00,5),(205571,41390,2.00,50000.00,1),(205572,41390,20.00,0.00,2),(205573,41390,0.00,0.00,3),(205574,41390,0.00,0.00,4),(205575,41390,0.00,0.00,5),(205576,41391,2.00,50000.00,1),(205577,41391,20.00,0.00,2),(205578,41391,0.00,0.00,3),(205579,41391,0.00,0.00,4),(205580,41391,0.00,0.00,5),(205581,41393,20.00,75000.00,1),(205582,41393,20.00,0.00,2),(205583,41393,0.00,0.00,3),(205584,41393,0.00,0.00,4),(205585,41393,0.00,0.00,5),(205586,41394,1.00,50000.00,1),(205587,41394,20.00,0.00,2),(205588,41394,0.00,0.00,3),(205589,41394,0.00,0.00,4),(205590,41394,0.00,0.00,5),(205591,41395,20.00,75000.00,1),(205592,41395,20.00,0.00,2),(205593,41395,0.00,0.00,3),(205594,41395,0.00,0.00,4),(205595,41395,0.00,0.00,5),(205596,41396,10.00,5000.00,1),(205597,41396,20.00,0.00,2),(205598,41396,2.50,0.00,3),(205599,41396,2.00,0.00,4),(205600,41396,0.00,0.00,5),(205601,41397,10.00,5000.00,1),(205602,41397,20.00,0.00,2),(205603,41397,0.00,0.00,3),(205604,41397,2.00,0.00,4),(205605,41397,0.00,0.00,5),(205606,41398,10.00,5000.00,1),(205607,41398,20.00,0.00,2),(205608,41398,0.00,0.00,3),(205609,41398,2.00,0.00,4),(205610,41398,1.00,0.00,5),(205611,41399,10.00,5000.00,1),(205612,41399,20.00,0.00,2),(205613,41399,0.00,0.00,3),(205614,41399,0.00,0.00,4),(205615,41399,0.00,0.00,5),(205616,41400,10.00,20000.00,1),(205617,41400,20.00,0.00,2),(205618,41400,0.00,0.00,3),(205619,41400,0.00,0.00,4),(205620,41400,0.00,0.00,5),(205621,41401,10.00,10000.00,1),(205622,41401,20.00,0.00,2),(205623,41401,0.00,0.00,3),(205624,41401,2.00,0.00,4),(205625,41401,1.00,0.00,5),(205626,41402,10.00,10000.00,1),(205627,41402,20.00,0.00,2),(205628,41402,0.00,0.00,3),(205629,41402,0.00,0.00,4),(205630,41402,0.00,0.00,5),(205631,41403,10.00,2500.00,1),(205632,41403,20.00,0.00,2),(205633,41403,2.50,0.00,3),(205634,41403,2.00,0.00,4),(205635,41403,0.00,0.00,5),(205636,41404,10.00,2500.00,1),(205637,41404,20.00,0.00,2),(205638,41404,0.00,0.00,3),(205639,41404,2.00,0.00,4),(205640,41404,0.00,0.00,5),(205641,41405,10.00,2500.00,1),(205642,41405,20.00,0.00,2),(205643,41405,0.00,0.00,3),(205644,41405,2.00,0.00,4),(205645,41405,1.00,0.00,5),(205646,41406,10.00,2500.00,1),(205647,41406,20.00,0.00,2),(205648,41406,0.00,0.00,3),(205649,41406,0.00,0.00,4),(205650,41406,0.00,0.00,5),(205651,41407,10.00,5000.00,1),(205652,41407,20.00,0.00,2),(205653,41407,0.00,0.00,3),(205654,41407,0.00,0.00,4),(205655,41407,0.00,0.00,5),(205656,41408,10.00,5000.00,1),(205657,41408,20.00,0.00,2),(205658,41408,2.50,0.00,3),(205659,41408,2.00,0.00,4),(205660,41408,0.00,0.00,5),(205661,41409,10.00,5000.00,1),(205662,41409,20.00,0.00,2),(205663,41409,0.00,0.00,3),(205664,41409,2.00,0.00,4),(205665,41409,0.00,0.00,5),(205666,41410,10.00,5000.00,1),(205667,41410,20.00,0.00,2),(205668,41410,0.00,0.00,3),(205669,41410,2.00,0.00,4),(205670,41410,1.00,0.00,5),(205671,41411,10.00,5000.00,1),(205672,41411,20.00,0.00,2),(205673,41411,0.00,0.00,3),(205674,41411,0.00,0.00,4),(205675,41411,0.00,0.00,5),(205676,41412,10.00,100000.00,1),(205677,41412,20.00,0.00,2),(205678,41412,2.50,0.00,3),(205679,41412,2.00,0.00,4),(205680,41412,0.00,0.00,5),(205681,41413,10.00,100000.00,1),(205682,41413,20.00,0.00,2),(205683,41413,0.00,0.00,3),(205684,41413,2.00,0.00,4),(205685,41413,0.00,0.00,5),(205686,41414,10.00,100000.00,1),(205687,41414,20.00,0.00,2),(205688,41414,0.00,0.00,3),(205689,41414,2.00,0.00,4),(205690,41414,1.00,0.00,5),(205691,41415,10.00,100000.00,1),(205692,41415,20.00,0.00,2),(205693,41415,0.00,0.00,3),(205694,41415,0.00,0.00,4),(205695,41415,0.00,0.00,5),(205696,41416,10.00,200000.00,1),(205697,41416,20.00,0.00,2),(205698,41416,0.00,0.00,3),(205699,41416,0.00,0.00,4),(205700,41416,0.00,0.00,5),(205701,41417,1.00,5000000.00,1),(205702,41417,20.00,0.00,2),(205703,41417,0.00,0.00,3),(205704,41417,0.00,0.00,4),(205705,41417,0.00,0.00,5),(205706,41418,20.00,2500.00,1),(205707,41418,20.00,0.00,2),(205708,41418,2.50,0.00,3),(205709,41418,2.00,0.00,4),(205710,41418,0.00,0.00,5),(205711,41419,20.00,2500.00,1),(205712,41419,20.00,0.00,2),(205713,41419,0.00,0.00,3),(205714,41419,2.00,0.00,4),(205715,41419,0.00,0.00,5),(205716,41420,20.00,0.00,1),(205717,41420,20.00,0.00,2),(205718,41420,0.00,0.00,3),(205719,41420,2.00,0.00,4),(205720,41420,1.00,0.00,5),(205721,41421,20.00,0.00,1),(205722,41421,20.00,0.00,2),(205723,41421,0.00,0.00,3),(205724,41421,0.00,0.00,4),(205725,41421,0.00,0.00,5),(205726,41422,20.00,0.00,1),(205727,41422,20.00,0.00,2),(205728,41422,2.50,0.00,3),(205729,41422,2.00,0.00,4),(205730,41422,0.00,0.00,5),(205731,41423,20.00,0.00,1),(205732,41423,20.00,0.00,2),(205733,41423,0.00,0.00,3),(205734,41423,2.00,0.00,4),(205735,41423,0.00,0.00,5),(205736,41424,20.00,0.00,1),(205737,41424,20.00,0.00,2),(205738,41424,0.00,0.00,3),(205739,41424,2.00,0.00,4),(205740,41424,1.00,0.00,5),(205741,41425,20.00,0.00,1),(205742,41425,20.00,0.00,2),(205743,41425,0.00,0.00,3),(205744,41425,0.00,0.00,4),(205745,41425,0.00,0.00,5),(205746,41426,2.20,20.00,1),(205747,41426,0.00,0.00,2),(205748,41426,2.50,0.00,3),(205749,41426,2.00,0.00,4),(205750,41426,0.00,0.00,5),(205751,41427,2.00,20000.00,1),(205752,41427,20.00,0.00,2),(205753,41427,0.00,0.00,3),(205754,41427,2.00,0.00,4),(205755,41427,0.00,0.00,5),(205756,41428,2.00,50000.00,1),(205757,41428,20.00,0.00,2),(205758,41428,0.00,0.00,3),(205759,41428,2.00,0.00,4),(205760,41428,1.00,0.00,5),(205761,41429,2.00,50000.00,1),(205762,41429,20.00,0.00,2),(205763,41429,0.00,0.00,3),(205764,41429,0.00,0.00,4),(205765,41429,0.00,0.00,5),(205766,41430,2.00,50000.00,1),(205767,41430,20.00,0.00,2),(205768,41430,0.00,0.00,3),(205769,41430,0.00,0.00,4),(205770,41430,0.00,0.00,5),(205771,41431,2.00,75000.00,1),(205772,41431,20.00,0.00,2),(205773,41431,0.00,0.00,3),(205774,41431,0.00,0.00,4),(205775,41431,0.00,0.00,5),(205776,41432,10.00,30000.00,1),(205777,41432,20.00,0.00,2),(205778,41432,0.00,0.00,3),(205779,41432,0.00,0.00,4),(205780,41432,0.00,0.00,5),(205781,41433,20.00,120000.00,1),(205782,41433,20.00,0.00,2),(205783,41433,2.50,0.00,3),(205784,41433,2.00,0.00,4),(205785,41433,0.00,0.00,5),(205786,41434,20.00,120000.00,1),(205787,41434,20.00,0.00,2),(205788,41434,0.00,0.00,3),(205789,41434,2.00,0.00,4),(205790,41434,0.00,0.00,5),(205791,41435,20.00,120000.00,1),(205792,41435,20.00,0.00,2),(205793,41435,0.00,0.00,3),(205794,41435,2.00,0.00,4),(205795,41435,1.00,0.00,5),(205796,41436,20.00,120000.00,1),(205797,41436,20.00,0.00,2),(205798,41436,0.00,0.00,3),(205799,41436,0.00,0.00,4),(205800,41436,0.00,0.00,5),(205801,41437,10.00,120000.00,1),(205802,41437,20.00,0.00,2),(205803,41437,0.00,0.00,3),(205804,41437,0.00,0.00,4),(205805,41437,0.00,0.00,5),(205806,41438,10.00,180000.00,1),(205807,41438,20.00,0.00,2),(205808,41438,0.00,0.00,3),(205809,41438,0.00,0.00,4),(205810,41438,0.00,0.00,5),(205811,41439,10.00,120000.00,1),(205812,41439,20.00,0.00,2),(205813,41439,0.00,0.00,3),(205814,41439,2.00,0.00,4),(205815,41439,1.00,0.00,5),(205816,41440,10.00,120000.00,1),(205817,41440,20.00,0.00,2),(205818,41440,0.00,0.00,3),(205819,41440,0.00,0.00,4),(205820,41440,0.00,0.00,5),(205821,41441,2.00,120000.00,1),(205822,41441,20.00,0.00,2),(205823,41441,0.00,0.00,3),(205824,41441,0.00,0.00,4),(205825,41441,0.00,0.00,5),(205826,41442,2.00,180000.00,1),(205827,41442,20.00,0.00,2),(205828,41442,0.00,0.00,3),(205829,41442,0.00,0.00,4),(205830,41442,0.00,0.00,5),(205831,41443,30.00,2500.00,1),(205832,41443,20.00,0.00,2),(205833,41443,2.50,0.00,3),(205834,41443,2.00,0.00,4),(205835,41443,0.00,0.00,5),(205836,41444,30.00,2500.00,1),(205837,41444,20.00,0.00,2),(205838,41444,0.00,0.00,3),(205839,41444,2.00,0.00,4),(205840,41444,0.00,0.00,5),(205841,41445,30.00,2500.00,1),(205842,41445,20.00,0.00,2),(205843,41445,0.00,0.00,3),(205844,41445,2.00,0.00,4),(205845,41445,1.00,0.00,5),(205846,41446,30.00,2500.00,1),(205847,41446,20.00,0.00,2),(205848,41446,0.00,0.00,3),(205849,41446,0.00,0.00,4),(205850,41446,0.00,0.00,5),(205851,41447,30.00,5000.00,1),(205852,41447,20.00,0.00,2),(205853,41447,0.00,0.00,3),(205854,41447,0.00,0.00,4),(205855,41447,0.00,0.00,5),(205856,41448,30.00,5000.00,1),(205857,41448,20.00,0.00,2),(205858,41448,2.50,0.00,3),(205859,41448,2.00,0.00,4),(205860,41448,0.00,0.00,5),(205861,41449,30.00,5000.00,1),(205862,41449,20.00,0.00,2),(205863,41449,0.00,0.00,3),(205864,41449,2.00,0.00,4),(205865,41449,0.00,0.00,5),(205866,41450,30.00,5000.00,1),(205867,41450,20.00,0.00,2),(205868,41450,0.00,0.00,3),(205869,41450,2.00,0.00,4),(205870,41450,1.00,0.00,5),(205871,41451,30.00,5000.00,1),(205872,41451,20.00,0.00,2),(205873,41451,0.00,0.00,3),(205874,41451,0.00,0.00,4),(205875,41451,0.00,0.00,5),(205876,41452,30.00,10000.00,1),(205877,41452,20.00,0.00,2),(205878,41452,0.00,0.00,3),(205879,41452,0.00,0.00,4),(205880,41452,0.00,0.00,5),(205881,41453,20.00,2500.00,1),(205882,41453,20.00,0.00,2),(205883,41453,2.50,0.00,3),(205884,41453,2.00,0.00,4),(205885,41453,0.00,0.00,5),(205886,41454,20.00,2500.00,1),(205887,41454,20.00,0.00,2),(205888,41454,0.00,0.00,3),(205889,41454,2.00,0.00,4),(205890,41454,0.00,0.00,5),(205891,41455,20.00,2500.00,1),(205892,41455,20.00,0.00,2),(205893,41455,0.00,0.00,3),(205894,41455,2.00,0.00,4),(205895,41455,1.00,0.00,5),(205896,41456,20.00,0.00,1),(205897,41456,20.00,0.00,2),(205898,41456,0.00,0.00,3),(205899,41456,2.00,0.00,4),(205900,41456,1.00,0.00,5),(205901,41457,10.00,0.00,1),(205902,41457,20.00,0.00,2),(205903,41457,0.00,0.00,3),(205904,41457,0.00,0.00,4),(205905,41457,0.00,0.00,5),(205906,41458,10.00,0.00,1),(205907,41458,20.00,0.00,2),(205908,41458,0.00,0.00,3),(205909,41458,0.00,0.00,4),(205910,41458,0.00,0.00,5),(205911,41459,10.00,1000.00,1),(205912,41459,20.00,0.00,2),(205913,41459,2.50,0.00,3),(205914,41459,2.00,0.00,4),(205915,41459,0.00,0.00,5),(205916,41460,10.00,1000.00,1),(205917,41460,20.00,0.00,2),(205918,41460,0.00,0.00,3),(205919,41460,2.00,0.00,4),(205920,41460,0.00,0.00,5),(205921,41461,10.00,1000.00,1),(205922,41461,20.00,0.00,2),(205923,41461,0.00,0.00,3),(205924,41461,2.00,0.00,4),(205925,41461,1.00,0.00,5),(205926,41462,10.00,1000.00,1),(205927,41462,20.00,0.00,2),(205928,41462,0.00,0.00,3),(205929,41462,0.00,0.00,4),(205930,41462,0.00,0.00,5),(205931,41463,5.00,2500.00,1),(205932,41463,20.00,0.00,2),(205933,41463,2.50,0.00,3),(205934,41463,2.00,0.00,4),(205935,41463,0.00,0.00,5),(205936,41464,5.00,2500.00,1),(205937,41464,20.00,0.00,2),(205938,41464,0.00,0.00,3),(205939,41464,2.00,0.00,4),(205940,41464,0.00,0.00,5),(205941,41465,5.00,2500.00,1),(205942,41465,20.00,0.00,2),(205943,41465,0.00,0.00,3),(205944,41465,2.00,0.00,4),(205945,41465,1.00,0.00,5),(205946,41466,10.00,2500.00,1),(205947,41466,20.00,0.00,2),(205948,41466,0.00,0.00,3),(205949,41466,2.00,0.00,4),(205950,41466,1.00,0.00,5),(205951,41467,10.00,2500.00,1),(205952,41467,20.00,0.00,2),(205953,41467,0.00,0.00,3),(205954,41467,0.00,0.00,4),(205955,41467,0.00,0.00,5),(205956,41468,10.00,5000.00,1),(205957,41468,20.00,0.00,2),(205958,41468,0.00,0.00,3),(205959,41468,0.00,0.00,4),(205960,41468,0.00,0.00,5),(205961,41469,5.00,20000.00,1),(205962,41469,20.00,0.00,2),(205963,41469,2.50,0.00,3),(205964,41469,2.00,0.00,4),(205965,41469,1.00,0.00,5),(205966,41470,10.00,20000.00,1),(205967,41470,20.00,0.00,2),(205968,41470,0.00,0.00,3),(205969,41470,0.00,0.00,4),(205970,41470,0.00,0.00,5),(205971,41471,5.00,20000.00,1),(205972,41471,20.00,0.00,2),(205973,41471,2.50,0.00,3),(205974,41471,2.00,0.00,4),(205975,41471,0.00,0.00,5),(205976,41472,5.00,20000.00,1),(205977,41472,20.00,0.00,2),(205978,41472,0.00,0.00,3),(205979,41472,2.00,0.00,4),(205980,41472,0.00,0.00,5),(205981,41473,5.00,20000.00,1),(205982,41473,20.00,0.00,2),(205983,41473,0.00,0.00,3),(205984,41473,2.00,0.00,4),(205985,41473,1.00,0.00,5),(205986,41474,10.00,20000.00,1),(205987,41474,20.00,0.00,2),(205988,41474,0.00,0.00,3),(205989,41474,2.00,0.00,4),(205990,41474,1.00,0.00,5),(205991,41475,10.00,20000.00,1),(205992,41475,20.00,0.00,2),(205993,41475,0.00,0.00,3),(205994,41475,0.00,0.00,4),(205995,41475,0.00,0.00,5),(205996,41476,10.00,30000.00,1),(205997,41476,20.00,0.00,2),(205998,41476,0.00,0.00,3),(205999,41476,0.00,0.00,4),(206000,41476,0.00,0.00,5),(206001,41477,1.00,20000.00,1),(206002,41477,20.00,0.00,2),(206003,41477,2.50,0.00,3),(206004,41477,2.00,0.00,4),(206005,41477,0.00,0.00,5),(206006,41478,1.00,20000.00,1),(206007,41478,20.00,0.00,2),(206008,41478,0.00,0.00,3),(206009,41478,2.00,0.00,4),(206010,41478,0.00,0.00,5),(206011,41479,1.00,20000.00,1),(206012,41479,20.00,0.00,2),(206013,41479,0.00,0.00,3),(206014,41479,2.00,0.00,4),(206015,41479,1.00,0.00,5),(206016,41480,1.00,20000.00,1),(206017,41480,20.00,0.00,2),(206018,41480,0.00,0.00,3),(206019,41480,0.00,0.00,4),(206020,41480,0.00,0.00,5),(206021,41481,2.00,20000.00,1),(206022,41481,20.00,0.00,2),(206023,41481,0.00,0.00,3),(206024,41481,0.00,0.00,4),(206025,41481,0.00,0.00,5),(206026,41482,2.00,75000.00,1),(206027,41482,20.00,0.00,2),(206028,41482,0.00,0.00,3),(206029,41482,0.00,0.00,4),(206030,41482,0.00,0.00,5),(206031,41483,1.00,20000.00,1),(206032,41483,20.00,0.00,2),(206033,41483,2.50,0.00,3),(206034,41483,2.00,0.00,4),(206035,41483,0.00,0.00,5),(206036,41484,1.00,20000.00,1),(206037,41484,20.00,0.00,2),(206038,41484,0.00,0.00,3),(206039,41484,2.00,0.00,4),(206040,41484,0.00,0.00,5),(206041,41485,1.00,50000.00,1),(206042,41485,20.00,0.00,2),(206043,41485,0.00,0.00,3),(206044,41485,2.00,0.00,4),(206045,41485,1.00,0.00,5),(206046,41486,1.00,50000.00,1),(206047,41486,20.00,0.00,2),(206048,41486,0.00,0.00,3),(206049,41486,0.00,0.00,4),(206050,41486,0.00,0.00,5),(206051,41487,2.00,50000.00,1),(206052,41487,20.00,0.00,2),(206053,41487,0.00,0.00,3),(206054,41487,0.00,0.00,4),(206055,41487,0.00,0.00,5),(206056,41488,2.00,75000.00,1),(206057,41488,20.00,0.00,2),(206058,41488,0.00,0.00,3),(206059,41488,0.00,0.00,4),(206060,41488,0.00,0.00,5),(206061,41489,2.00,50000.00,1),(206062,41489,20.00,0.00,2),(206063,41489,0.00,0.00,3),(206064,41489,0.00,0.00,4),(206065,41489,0.00,0.00,5),(206066,41490,0.00,0.00,1),(206067,41490,20.00,0.00,2),(206068,41490,0.00,0.00,3),(206069,41490,0.00,0.00,4),(206070,41490,0.00,0.00,5),(206071,41491,20.00,75000.00,1),(206072,41491,20.00,0.00,2),(206073,41491,0.00,0.00,3),(206074,41491,0.00,0.00,4),(206075,41491,0.00,0.00,5),(206076,41492,1.00,50000.00,1),(206077,41492,20.00,0.00,2),(206078,41492,0.00,0.00,3),(206079,41492,0.00,0.00,4),(206080,41492,0.00,0.00,5),(206081,41493,0.00,0.00,1),(206082,41493,20.00,0.00,2),(206083,41493,0.00,0.00,3),(206084,41493,0.00,0.00,4),(206085,41493,0.00,0.00,5),(206086,41494,20.00,75000.00,1),(206087,41494,20.00,0.00,2),(206088,41494,0.00,0.00,3),(206089,41494,0.00,0.00,4),(206090,41494,0.00,0.00,5),(206091,41495,40.00,0.00,1),(206092,41495,20.00,0.00,2),(206093,41495,2.50,10000000.00,3),(206094,41495,2.00,0.00,4),(206095,41495,1.00,0.00,5),(206096,41496,40.00,0.00,1),(206097,41496,20.00,0.00,2),(206098,41496,2.00,10000000.00,3),(206099,41496,2.00,0.00,4),(206100,41496,1.00,0.00,5),(206101,41497,40.00,0.00,1),(206102,41497,20.00,0.00,2),(206103,41497,2.50,10000000.00,3),(206104,41497,2.00,0.00,4),(206105,41497,1.00,0.00,5),(206106,41498,40.00,0.00,1),(206107,41498,20.00,0.00,2),(206108,41498,2.00,10000000.00,3),(206109,41498,2.00,0.00,4),(206110,41498,1.00,0.00,5),(206111,41499,10.00,0.00,1),(206112,41499,0.00,0.00,2),(206113,41499,0.00,0.00,3),(206114,41499,2.00,0.00,4),(206115,41499,1.00,0.00,5),(206116,41500,10.00,0.00,1),(206117,41500,20.00,0.00,2),(206118,41500,2.00,10000000.00,3),(206119,41500,2.00,0.00,4),(206120,41500,1.00,0.00,5),(206121,41501,10.00,0.00,1),(206122,41501,20.00,0.00,2),(206123,41501,2.50,10000000.00,3),(206124,41501,2.00,0.00,4),(206125,41501,2.00,0.00,5),(206126,41502,10.00,0.00,1),(206127,41502,20.00,0.00,2),(206128,41502,2.00,10000000.00,3),(206129,41502,2.00,0.00,4),(206130,41502,1.00,0.00,5),(206131,41503,10.00,0.00,1),(206132,41503,20.00,0.00,2),(206133,41503,2.50,0.00,3),(206134,41503,2.00,0.00,4),(206135,41503,0.00,0.00,5),(206136,41504,10.00,0.00,1),(206137,41504,20.00,0.00,2),(206138,41504,2.50,10000000.00,3),(206139,41504,2.00,0.00,4),(206140,41504,1.00,0.00,5),(206141,41505,5.00,0.00,1),(206142,41505,20.00,0.00,2),(206143,41505,2.00,10000000.00,3),(206144,41505,2.00,0.00,4),(206145,41505,1.00,0.00,5),(206146,41506,20.00,0.00,1),(206147,41506,20.00,0.00,2),(206148,41506,0.00,0.00,3),(206149,41506,2.00,0.00,4),(206150,41506,1.00,0.00,5),(206151,41507,20.00,0.00,1),(206152,41507,20.00,0.00,2),(206153,41507,2.00,10000000.00,3),(206154,41507,2.00,0.00,4),(206155,41507,1.00,0.00,5),(206156,41508,20.00,0.00,1),(206157,41508,20.00,0.00,2),(206158,41508,2.50,10000000.00,3),(206159,41508,2.00,0.00,4),(206160,41508,1.00,0.00,5),(206161,41510,5.00,0.00,1),(206162,41510,20.00,0.00,2),(206163,41510,2.00,10000000.00,3),(206164,41510,2.00,0.00,4),(206165,41510,1.00,0.00,5),(206166,41511,20.00,0.00,1),(206167,41511,20.00,0.00,2),(206168,41511,2.50,10000000.00,3),(206169,41511,2.00,0.00,4),(206170,41511,1.00,0.00,5),(206171,41512,20.00,0.00,1),(206172,41512,20.00,0.00,2),(206173,41512,2.00,10000000.00,3),(206174,41512,2.00,0.00,4),(206175,41512,1.00,0.00,5),(206176,41513,20.00,0.00,1),(206177,41513,20.00,0.00,2),(206178,41513,2.50,10000000.00,3),(206179,41513,2.00,0.00,4),(206180,41513,1.00,0.00,5),(206181,41514,20.00,0.00,1),(206182,41514,20.00,0.00,2),(206183,41514,2.00,10000000.00,3),(206184,41514,2.00,0.00,4),(206185,41514,1.00,0.00,5),(206186,41515,20.00,0.00,1),(206187,41515,20.00,0.00,2),(206188,41515,2.50,10000000.00,3),(206189,41515,2.00,0.00,4),(206190,41515,1.00,0.00,5),(206191,41516,20.00,0.00,1),(206192,41516,20.00,0.00,2),(206193,41516,2.00,10000000.00,3),(206194,41516,2.00,0.00,4),(206195,41516,1.00,0.00,5),(206196,41517,20.00,0.00,1),(206197,41517,20.00,0.00,2),(206198,41517,2.50,10000000.00,3),(206199,41517,2.00,0.00,4),(206200,41517,1.00,0.00,5),(206201,41518,20.00,0.00,1),(206202,41518,20.00,0.00,2),(206203,41518,2.00,10000000.00,3),(206204,41518,2.00,0.00,4),(206205,41518,1.00,0.00,5),(206206,41519,10.00,0.00,1),(206207,41519,20.00,0.00,2),(206208,41519,2.00,10000000.00,3),(206209,41519,2.00,0.00,4),(206210,41519,1.00,0.00,5),(206211,41520,10.00,0.00,1),(206212,41520,20.00,0.00,2),(206213,41520,2.00,10000000.00,3),(206214,41520,2.00,0.00,4),(206215,41520,1.00,0.00,5),(206216,41521,10.00,0.00,1),(206217,41521,20.00,0.00,2),(206218,41521,2.50,0.00,3),(206219,41521,2.00,0.00,4),(206220,41521,0.00,0.00,5),(206221,41522,10.00,0.00,1),(206222,41522,20.00,0.00,2),(206223,41522,2.50,10000000.00,3),(206224,41522,2.00,0.00,4),(206225,41522,1.00,0.00,5),(206226,41523,10.00,0.00,1),(206227,41523,20.00,0.00,2),(206228,41523,2.50,10000000.00,3),(206229,41523,2.00,0.00,4),(206230,41523,1.00,0.00,5),(206231,41524,20.00,0.00,1),(206232,41524,20.00,0.00,2),(206233,41524,2.50,10000000.00,3),(206234,41524,2.00,0.00,4),(206235,41524,1.00,0.00,5),(206236,41525,20.00,0.00,1),(206237,41525,20.00,0.00,2),(206238,41525,2.50,10000000.00,3),(206239,41525,2.00,0.00,4),(206240,41525,1.00,0.00,5),(206241,41526,20.00,0.00,1),(206242,41526,20.00,0.00,2),(206243,41526,2.50,10000000.00,3),(206244,41526,2.00,0.00,4),(206245,41526,1.00,0.00,5),(206246,41527,30.00,0.00,1),(206247,41527,20.00,0.00,2),(206248,41527,2.50,10000000.00,3),(206249,41527,2.00,0.00,4),(206250,41527,1.00,0.00,5),(206251,41528,30.00,0.00,1),(206252,41528,20.00,0.00,2),(206253,41528,2.00,10000000.00,3),(206254,41528,2.00,0.00,4),(206255,41528,1.00,0.00,5),(206256,41529,30.00,0.00,1),(206257,41529,20.00,0.00,2),(206258,41529,2.50,10000000.00,3),(206259,41529,2.00,0.00,4),(206260,41529,1.00,0.00,5),(206261,41530,10.00,0.00,1),(206262,41530,20.00,0.00,2),(206263,41530,2.00,10000000.00,3),(206264,41530,2.00,0.00,4),(206265,41530,1.00,0.00,5),(206266,41531,10.00,0.00,1),(206267,41531,20.00,0.00,2),(206268,41531,2.50,10000000.00,3),(206269,41531,3.00,0.00,4),(206270,41531,1.00,0.00,5),(206271,41532,10.00,0.00,1),(206272,41532,20.00,0.00,2),(206273,41532,2.00,10000000.00,3),(206274,41532,2.00,0.00,4),(206275,41532,1.00,0.00,5),(206276,41533,10.00,0.00,1),(206277,41533,20.00,0.00,2),(206278,41533,2.50,10000000.00,3),(206279,41533,2.00,0.00,4),(206280,41533,1.00,0.00,5),(206281,41534,50.00,0.00,1),(206282,41534,20.00,0.00,2),(206283,41534,2.50,10000000.00,3),(206284,41534,2.00,0.00,4),(206285,41534,1.00,0.00,5),(206286,41535,50.00,0.00,1),(206287,41535,20.00,0.00,2),(206288,41535,2.00,10000000.00,3),(206289,41535,2.00,0.00,4),(206290,41535,1.00,0.00,5),(206291,41536,50.00,0.00,1),(206292,41536,20.00,0.00,2),(206293,41536,2.50,10000000.00,3),(206294,41536,2.00,0.00,4),(206295,41536,1.00,0.00,5),(206296,41537,50.00,0.00,1),(206297,41537,20.00,0.00,2),(206298,41537,2.00,10000000.00,3),(206299,41537,2.00,0.00,4),(206300,41537,1.00,0.00,5),(206301,41538,30.00,0.00,1),(206302,41538,20.00,0.00,2),(206303,41538,2.50,10000000.00,3),(206304,41538,2.00,0.00,4),(206305,41538,1.00,0.00,5),(206306,41539,30.00,0.00,1),(206307,41539,20.00,0.00,2),(206308,41539,2.00,10000000.00,3),(206309,41539,2.00,0.00,4),(206310,41539,1.00,0.00,5),(206311,41540,30.00,0.00,1),(206312,41540,20.00,0.00,2),(206313,41540,2.50,10000000.00,3),(206314,41540,2.00,0.00,4),(206315,41540,1.00,0.00,5),(206316,41541,25.00,0.00,1),(206317,41541,20.00,0.00,2),(206318,41541,2.00,10000000.00,3),(206319,41541,2.00,0.00,4),(206320,41541,1.00,0.00,5),(206321,41542,20.00,0.00,1),(206322,41542,20.00,0.00,2),(206323,41542,2.50,10000000.00,3),(206324,41542,2.00,0.00,4),(206325,41542,1.00,0.00,5),(206326,41543,20.00,0.00,1),(206327,41543,20.00,0.00,2),(206328,41543,2.00,10000000.00,3),(206329,41543,2.00,0.00,4),(206330,41543,1.00,0.00,5),(206331,41544,20.00,0.00,1),(206332,41544,20.00,0.00,2),(206333,41544,2.50,10000000.00,3),(206334,41544,2.00,0.00,4),(206335,41544,1.00,0.00,5),(206336,41545,10.00,0.00,1),(206337,41545,20.00,0.00,2),(206338,41545,2.50,10000000.00,3),(206339,41545,2.00,0.00,4),(206340,41545,1.00,0.00,5),(206341,41546,10.00,0.00,1),(206342,41546,20.00,0.00,2),(206343,41546,2.50,10000000.00,3),(206344,41546,2.00,0.00,4),(206345,41546,1.00,0.00,5),(206346,41547,10.00,0.00,1),(206347,41547,20.00,0.00,2),(206348,41547,2.50,10000000.00,3),(206349,41547,2.00,0.00,4),(206350,41547,1.00,0.00,5),(206351,41548,10.00,0.00,1),(206352,41548,20.00,0.00,2),(206353,41548,2.00,10000000.00,3),(206354,41548,2.00,0.00,4),(206355,41548,1.00,0.00,5),(206356,41549,10.00,0.00,1),(206357,41549,20.00,0.00,2),(206358,41549,2.50,10000000.00,3),(206359,41549,2.00,0.00,4),(206360,41549,1.00,0.00,5),(206361,41550,15.00,0.00,1),(206362,41550,20.00,0.00,2),(206363,41550,2.00,10000000.00,3),(206364,41550,2.00,0.00,4),(206365,41550,1.00,0.00,5),(206366,41551,30.00,2500.00,1),(206367,41551,20.00,0.00,2),(206368,41551,2.50,10000000.00,3),(206369,41551,2.00,0.00,4),(206370,41551,1.00,0.00,5),(206371,41552,30.00,2500.00,1),(206372,41552,20.00,0.00,2),(206373,41552,2.00,10000000.00,3),(206374,41552,2.00,0.00,4),(206375,41552,1.00,0.00,5),(206376,41553,30.00,2500.00,1),(206377,41553,20.00,0.00,2),(206378,41553,2.50,10000000.00,3),(206379,41553,2.00,0.00,4),(206380,41553,1.00,0.00,5),(206381,41554,30.00,2500.00,1),(206382,41554,20.00,0.00,2),(206383,41554,2.00,10000000.00,3),(206384,41554,2.00,0.00,4),(206385,41554,1.00,0.00,5),(206386,41555,30.00,5000.00,1),(206387,41555,20.00,0.00,2),(206388,41555,2.50,10000000.00,3),(206389,41555,2.00,0.00,4),(206390,41555,1.00,0.00,5),(206391,41556,30.00,5000.00,1),(206392,41556,20.00,0.00,2),(206393,41556,2.00,10000000.00,3),(206394,41556,2.00,0.00,4),(206395,41556,1.00,0.00,5),(206396,41557,30.00,5000.00,1),(206397,41557,20.00,0.00,2),(206398,41557,2.50,10000000.00,3),(206399,41557,2.00,0.00,4),(206400,41557,1.00,0.00,5),(206401,41558,30.00,5000.00,1),(206402,41558,20.00,0.00,2),(206403,41558,2.00,10000000.00,3),(206404,41558,2.00,0.00,4),(206405,41558,1.00,0.00,5),(206406,41559,10.00,1000.00,1),(206407,41559,20.00,0.00,2),(206408,41559,2.50,10000000.00,3),(206409,41559,2.00,0.00,4),(206410,41559,1.00,0.00,5),(206411,41560,10.00,1000.00,1),(206412,41560,20.00,0.00,2),(206413,41560,2.00,10000000.00,3),(206414,41560,2.00,0.00,4),(206415,41560,1.00,0.00,5),(206416,41561,10.00,1000.00,1),(206417,41561,20.00,0.00,2),(206418,41561,2.50,10000000.00,3),(206419,41561,2.00,0.00,4),(206420,41561,1.00,0.00,5),(206421,41562,10.00,1000.00,1),(206422,41562,20.00,0.00,2),(206423,41562,2.00,10000000.00,3),(206424,41562,2.00,0.00,4),(206425,41562,1.00,0.00,5),(206426,41563,50.00,0.00,1),(206427,41563,20.00,0.00,2),(206428,41563,2.50,10000000.00,3),(206429,41563,2.00,0.00,4),(206430,41563,1.00,0.00,5),(206431,41564,50.00,0.00,1),(206432,41564,20.00,0.00,2),(206433,41564,2.00,10000000.00,3),(206434,41564,2.00,0.00,4),(206435,41564,1.00,0.00,5),(206436,41565,50.00,0.00,1),(206437,41565,20.00,0.00,2),(206438,41565,2.50,10000000.00,3),(206439,41565,2.00,0.00,4),(206440,41565,1.00,0.00,5),(206441,41566,50.00,0.00,1),(206442,41566,20.00,0.00,2),(206443,41566,2.00,10000000.00,3),(206444,41566,2.00,0.00,4),(206445,41566,1.00,0.00,5),(206446,41567,30.00,0.00,1),(206447,41567,20.00,0.00,2),(206448,41567,2.50,10000000.00,3),(206449,41567,2.00,0.00,4),(206450,41567,1.00,0.00,5),(206451,41568,30.00,0.00,1),(206452,41568,20.00,0.00,2),(206453,41568,2.00,10000000.00,3),(206454,41568,2.00,0.00,4),(206455,41568,1.00,0.00,5),(206456,41569,30.00,0.00,1),(206457,41569,20.00,0.00,2),(206458,41569,2.50,10000000.00,3),(206459,41569,2.00,0.00,4),(206460,41569,1.00,0.00,5),(206461,41570,25.00,0.00,1),(206462,41570,20.00,0.00,2),(206463,41570,2.00,10000000.00,3),(206464,41570,2.00,0.00,4),(206465,41570,1.00,0.00,5),(206466,41571,30.00,0.00,1),(206467,41571,20.00,0.00,2),(206468,41571,2.50,10000000.00,3),(206469,41571,2.00,0.00,4),(206470,41571,1.00,0.00,5),(206471,41572,30.00,0.00,1),(206472,41572,20.00,0.00,2),(206473,41572,2.00,10000000.00,3),(206474,41572,2.00,0.00,4),(206475,41572,1.00,0.00,5),(206476,41573,30.00,0.00,1),(206477,41573,20.00,0.00,2),(206478,41573,2.50,10000000.00,3),(206479,41573,2.00,0.00,4),(206480,41573,1.00,0.00,5),(206481,41574,10.00,0.00,1),(206482,41574,20.00,0.00,2),(206483,41574,2.50,10000000.00,3),(206484,41574,2.00,0.00,4),(206485,41574,1.00,0.00,5),(206486,41575,10.00,0.00,1),(206487,41575,20.00,0.00,2),(206488,41575,2.00,10000000.00,3),(206489,41575,2.00,0.00,4),(206490,41575,1.00,0.00,5),(206491,41576,10.00,0.00,1),(206492,41576,20.00,0.00,2),(206493,41576,2.50,10000000.00,3),(206494,41576,2.00,0.00,4),(206495,41576,1.00,0.00,5),(206496,41577,5.00,0.00,1),(206497,41577,20.00,0.00,2),(206498,41577,2.00,10000000.00,3),(206499,41577,2.00,0.00,4),(206500,41577,1.00,0.00,5),(206501,41578,10.00,0.00,1),(206502,41578,20.00,0.00,2),(206503,41578,2.50,0.00,3),(206504,41578,2.00,0.00,4),(206505,41578,0.00,0.00,5),(206506,41579,10.00,0.00,1),(206507,41579,20.00,0.00,2),(206508,41579,2.50,10000000.00,3),(206509,41579,2.00,0.00,4),(206510,41579,0.00,0.00,5),(206511,41580,10.00,0.00,1),(206512,41580,20.00,0.00,2),(206513,41580,2.00,10000000.00,3),(206514,41580,2.00,0.00,4),(206515,41580,1.00,0.00,5),(206516,41581,10.00,0.00,1),(206517,41581,20.00,0.00,2),(206518,41581,2.50,10000000.00,3),(206519,41581,2.00,0.00,4),(206520,41581,1.00,0.00,5),(206521,41582,20.00,0.00,1),(206522,41582,20.00,0.00,2),(206523,41582,2.50,10000000.00,3),(206524,41582,2.00,0.00,4),(206525,41582,1.00,0.00,5),(206526,41583,20.00,0.00,1),(206527,41583,20.00,0.00,2),(206528,41583,2.00,10000000.00,3),(206529,41583,2.00,0.00,4),(206530,41583,1.00,0.00,5),(206531,41584,30.00,0.00,1),(206532,41584,20.00,0.00,2),(206533,41584,2.50,0.00,3),(206534,41584,2.00,0.00,4),(206535,41584,0.00,0.00,5),(206536,41585,30.00,0.00,1),(206537,41585,20.00,0.00,2),(206538,41585,2.50,10000000.00,3),(206539,41585,2.00,0.00,4),(206540,41585,1.00,0.00,5),(206541,41586,30.00,0.00,1),(206542,41586,20.00,0.00,2),(206543,41586,2.00,10000000.00,3),(206544,41586,2.00,0.00,4),(206545,41586,1.00,0.00,5),(206546,41587,30.00,0.00,1),(206547,41587,20.00,0.00,2),(206548,41587,2.50,10000000.00,3),(206549,41587,2.00,0.00,4),(206550,41587,1.00,0.00,5),(206551,41588,20.00,0.00,1),(206552,41588,20.00,0.00,2),(206553,41588,2.50,0.00,3),(206554,41588,2.00,0.00,4),(206555,41588,0.00,0.00,5),(206556,41589,20.00,0.00,1),(206557,41589,20.00,0.00,2),(206558,41589,2.50,10000000.00,3),(206559,41589,2.00,0.00,4),(206560,41589,1.00,0.00,5),(206561,41590,20.00,0.00,1),(206562,41590,20.00,0.00,2),(206563,41590,2.00,10000000.00,3),(206564,41590,2.00,0.00,4),(206565,41590,1.00,0.00,5),(206566,41591,20.00,0.00,1),(206567,41591,20.00,0.00,2),(206568,41591,2.50,10000000.00,3),(206569,41591,2.00,0.00,4),(206570,41591,1.00,0.00,5),(206571,41592,20.00,5000.00,1),(206572,41592,20.00,0.00,2),(206573,41592,10.00,0.00,3),(206574,41592,2.00,0.00,4),(206575,41592,0.00,0.00,5),(206576,41593,20.00,5000.00,1),(206577,41593,20.00,0.00,2),(206578,41593,10.00,10000000.00,3),(206579,41593,2.00,0.00,4),(206580,41593,1.00,0.00,5),(206581,41594,10.00,5000.00,1),(206582,41594,20.00,0.00,2),(206583,41594,0.00,0.00,3),(206584,41594,0.00,0.00,4),(206585,41594,0.00,0.00,5),(206586,41595,10.00,20000.00,1),(206587,41595,20.00,0.00,2),(206588,41595,0.00,0.00,3),(206589,41595,0.00,0.00,4),(206590,41595,0.00,0.00,5),(206591,41596,10.00,10000.00,1),(206592,41596,20.00,0.00,2),(206593,41596,10.00,10000000.00,3),(206594,41596,2.00,0.00,4),(206595,41596,1.00,0.00,5),(206596,41597,10.00,10000.00,1),(206597,41597,20.00,0.00,2),(206598,41597,0.00,0.00,3),(206599,41597,0.00,0.00,4),(206600,41597,0.00,0.00,5),(206601,41598,20.00,2500.00,1),(206602,41598,20.00,0.00,2),(206603,41598,10.00,0.00,3),(206604,41598,2.00,0.00,4),(206605,41598,0.00,0.00,5),(206606,41599,20.00,2500.00,1),(206607,41599,20.00,0.00,2),(206608,41599,10.00,10000000.00,3),(206609,41599,2.00,0.00,4),(206610,41599,1.00,0.00,5),(206611,41600,10.00,2500.00,1),(206612,41600,20.00,0.00,2),(206613,41600,0.00,0.00,3),(206614,41600,0.00,0.00,4),(206615,41600,0.00,0.00,5),(206616,41601,10.00,5000.00,1),(206617,41601,20.00,0.00,2),(206618,41601,0.00,0.00,3),(206619,41601,0.00,0.00,4),(206620,41601,0.00,0.00,5),(206621,41602,20.00,5000.00,1),(206622,41602,20.00,0.00,2),(206623,41602,10.00,0.00,3),(206624,41602,2.00,0.00,4),(206625,41602,0.00,0.00,5),(206626,41603,20.00,5000.00,1),(206627,41603,20.00,0.00,2),(206628,41603,10.00,10000000.00,3),(206629,41603,2.00,0.00,4),(206630,41603,1.00,0.00,5),(206631,41604,10.00,5000.00,1),(206632,41604,20.00,0.00,2),(206633,41604,0.00,0.00,3),(206634,41604,0.00,0.00,4),(206635,41604,0.00,0.00,5),(206636,41605,10.00,100000.00,1),(206637,41605,20.00,0.00,2),(206638,41605,10.00,0.00,3),(206639,41605,2.00,0.00,4),(206640,41605,0.00,0.00,5),(206641,41606,10.00,100000.00,1),(206642,41606,20.00,0.00,2),(206643,41606,10.00,1000000.00,3),(206644,41606,2.00,0.00,4),(206645,41606,1.00,0.00,5),(206646,41607,10.00,100000.00,1),(206647,41607,20.00,0.00,2),(206648,41607,0.00,0.00,3),(206649,41607,0.00,0.00,4),(206650,41607,0.00,0.00,5),(206651,41608,10.00,200000.00,1),(206652,41608,20.00,0.00,2),(206653,41608,0.00,0.00,3),(206654,41608,0.00,0.00,4),(206655,41608,0.00,0.00,5),(206656,41609,1.00,5000000.00,1),(206657,41609,20.00,0.00,2),(206658,41609,0.00,0.00,3),(206659,41609,0.00,0.00,4),(206660,41609,0.00,0.00,5),(206661,41610,20.00,0.00,1),(206662,41610,20.00,0.00,2),(206663,41610,10.00,1000000.00,3),(206664,41610,2.00,0.00,4),(206665,41610,1.00,0.00,5),(206666,41611,20.00,0.00,1),(206667,41611,20.00,0.00,2),(206668,41611,0.00,0.00,3),(206669,41611,0.00,0.00,4),(206670,41611,0.00,0.00,5),(206671,41612,20.00,0.00,1),(206672,41612,20.00,0.00,2),(206673,41612,10.00,0.00,3),(206674,41612,2.00,0.00,4),(206675,41612,0.00,0.00,5),(206676,41613,20.00,2500.00,1),(206677,41613,20.00,0.00,2),(206678,41613,10.00,10000000.00,3),(206679,41613,2.00,0.00,4),(206680,41613,1.00,0.00,5),(206681,41614,10.00,0.00,1),(206682,41614,20.00,0.00,2),(206683,41614,0.00,0.00,3),(206684,41614,0.00,0.00,4),(206685,41614,0.00,0.00,5),(206686,41615,2.00,20000.00,1),(206687,41615,20.00,0.00,2),(206688,41615,10.00,0.00,3),(206689,41615,2.00,0.00,4),(206690,41615,0.00,0.00,5),(206691,41616,2.00,50000.00,1),(206692,41616,20.00,0.00,2),(206693,41616,10.00,10000000.00,3),(206694,41616,2.00,0.00,4),(206695,41616,1.00,0.00,5),(206696,41617,2.00,50000.00,1),(206697,41617,20.00,0.00,2),(206698,41617,0.00,0.00,3),(206699,41617,0.00,0.00,4),(206700,41617,0.00,0.00,5),(206701,41618,2.00,50000.00,1),(206702,41618,20.00,0.00,2),(206703,41618,0.00,0.00,3),(206704,41618,0.00,0.00,4),(206705,41618,0.00,0.00,5),(206706,41619,2.00,75000.00,1),(206707,41619,20.00,0.00,2),(206708,41619,0.00,0.00,3),(206709,41619,0.00,0.00,4),(206710,41619,0.00,0.00,5),(206711,41620,10.00,30000.00,1),(206712,41620,20.00,0.00,2),(206713,41620,0.00,0.00,3),(206714,41620,0.00,0.00,4),(206715,41620,0.00,0.00,5),(206716,41621,20.00,120000.00,1),(206717,41621,20.00,0.00,2),(206718,41621,10.00,0.00,3),(206719,41621,2.00,0.00,4),(206720,41621,0.00,0.00,5),(206721,41622,20.00,120000.00,1),(206722,41622,20.00,0.00,2),(206723,41622,10.00,10000000.00,3),(206724,41622,2.00,0.00,4),(206725,41622,1.00,0.00,5),(206726,41623,20.00,120000.00,1),(206727,41623,20.00,0.00,2),(206728,41623,0.00,0.00,3),(206729,41623,0.00,0.00,4),(206730,41623,0.00,0.00,5),(206731,41624,10.00,180000.00,1),(206732,41624,20.00,0.00,2),(206733,41624,0.00,0.00,3),(206734,41624,0.00,0.00,4),(206735,41624,0.00,0.00,5),(206736,41625,10.00,120000.00,1),(206737,41625,20.00,0.00,2),(206738,41625,0.00,0.00,3),(206739,41625,0.00,0.00,4),(206740,41625,0.00,0.00,5),(206741,41626,10.00,120000.00,1),(206742,41626,20.00,0.00,2),(206743,41626,10.00,10000000.00,3),(206744,41626,2.00,0.00,4),(206745,41626,1.00,0.00,5),(206746,41627,10.00,120000.00,1),(206747,41627,20.00,0.00,2),(206748,41627,0.00,0.00,3),(206749,41627,0.00,0.00,4),(206750,41627,0.00,0.00,5),(206751,41628,2.00,120000.00,1),(206752,41628,20.00,0.00,2),(206753,41628,0.00,0.00,3),(206754,41628,0.00,0.00,4),(206755,41628,0.00,0.00,5),(206756,41629,2.00,180000.00,1),(206757,41629,20.00,0.00,2),(206758,41629,0.00,0.00,3),(206759,41629,0.00,0.00,4),(206760,41629,0.00,0.00,5),(206761,41630,30.00,2500.00,1),(206762,41630,20.00,0.00,2),(206763,41630,10.00,0.00,3),(206764,41630,2.00,0.00,4),(206765,41630,0.00,0.00,5),(206766,41631,30.00,2500.00,1),(206767,41631,20.00,0.00,2),(206768,41631,10.00,10000000.00,3),(206769,41631,2.00,0.00,4),(206770,41631,1.00,0.00,5),(206771,41632,30.00,2500.00,1),(206772,41632,20.00,0.00,2),(206773,41632,0.00,0.00,3),(206774,41632,0.00,0.00,4),(206775,41632,0.00,0.00,5),(206776,41633,30.00,5000.00,1),(206777,41633,20.00,0.00,2),(206778,41633,0.00,0.00,3),(206779,41633,0.00,0.00,4),(206780,41633,0.00,0.00,5),(206781,41634,30.00,5000.00,1),(206782,41634,20.00,0.00,2),(206783,41634,10.00,0.00,3),(206784,41634,2.00,0.00,4),(206785,41634,1.00,0.00,5),(206786,41635,30.00,5000.00,1),(206787,41635,20.00,0.00,2),(206788,41635,10.00,10000000.00,3),(206789,41635,2.00,0.00,4),(206790,41635,1.00,0.00,5),(206791,41636,30.00,5000.00,1),(206792,41636,20.00,0.00,2),(206793,41636,0.00,0.00,3),(206794,41636,0.00,0.00,4),(206795,41636,0.00,0.00,5),(206796,41637,30.00,10000.00,1),(206797,41637,20.00,0.00,2),(206798,41637,0.00,0.00,3),(206799,41637,0.00,0.00,4),(206800,41637,0.00,0.00,5),(206801,41638,20.00,2500.00,1),(206802,41638,20.00,0.00,2),(206803,41638,10.00,0.00,3),(206804,41638,2.00,0.00,4),(206805,41638,0.00,0.00,5),(206806,41639,20.00,2500.00,1),(206807,41639,20.00,0.00,2),(206808,41639,10.00,10000000.00,3),(206809,41639,2.00,0.00,4),(206810,41639,1.00,0.00,5),(206811,41640,20.00,0.00,1),(206812,41640,20.00,0.00,2),(206813,41640,10.00,10000000.00,3),(206814,41640,2.00,0.00,4),(206815,41640,1.00,0.00,5),(206816,41641,10.00,0.00,1),(206817,41641,20.00,0.00,2),(206818,41641,0.00,0.00,3),(206819,41641,0.00,0.00,4),(206820,41641,0.00,0.00,5),(206821,41642,10.00,0.00,1),(206822,41642,20.00,0.00,2),(206823,41642,0.00,0.00,3),(206824,41642,0.00,0.00,4),(206825,41642,0.00,0.00,5),(206826,41643,10.00,1000.00,1),(206827,41643,20.00,0.00,2),(206828,41643,10.00,0.00,3),(206829,41643,2.00,0.00,4),(206830,41643,0.00,0.00,5),(206831,41644,10.00,1000.00,1),(206832,41644,20.00,0.00,2),(206833,41644,10.00,10000000.00,3),(206834,41644,2.00,0.00,4),(206835,41644,1.00,0.00,5),(206836,41645,10.00,1000.00,1),(206837,41645,20.00,0.00,2),(206838,41645,0.00,0.00,3),(206839,41645,0.00,0.00,4),(206840,41645,0.00,0.00,5),(206841,41646,5.00,2500.00,1),(206842,41646,20.00,0.00,2),(206843,41646,10.00,0.00,3),(206844,41646,2.00,0.00,4),(206845,41646,0.00,0.00,5),(206846,41647,5.00,2500.00,1),(206847,41647,20.00,0.00,2),(206848,41647,10.00,10000000.00,3),(206849,41647,2.00,0.00,4),(206850,41647,1.00,0.00,5),(206851,41648,10.00,2500.00,1),(206852,41648,20.00,0.00,2),(206853,41648,10.00,10000000.00,3),(206854,41648,2.00,0.00,4),(206855,41648,1.00,0.00,5),(206856,41649,10.00,2500.00,1),(206857,41649,20.00,0.00,2),(206858,41649,0.00,0.00,3),(206859,41649,0.00,0.00,4),(206860,41649,0.00,0.00,5),(206861,41650,10.00,5000.00,1),(206862,41650,20.00,0.00,2),(206863,41650,0.00,0.00,3),(206864,41650,0.00,0.00,4),(206865,41650,0.00,0.00,5),(206866,41651,20.00,2500.00,1),(206867,41651,20.00,0.00,2),(206868,41651,10.00,10000000.00,3),(206869,41651,2.00,0.00,4),(206870,41651,1.00,0.00,5),(206871,41652,10.00,2500.00,1),(206872,41652,20.00,0.00,2),(206873,41652,0.00,0.00,3),(206874,41652,0.00,0.00,4),(206875,41652,0.00,0.00,5),(206876,41653,5.00,20000.00,1),(206877,41653,20.00,0.00,2),(206878,41653,10.00,0.00,3),(206879,41653,2.00,0.00,4),(206880,41653,0.00,0.00,5),(206881,41654,5.00,20000.00,1),(206882,41654,20.00,0.00,2),(206883,41654,10.00,10000000.00,3),(206884,41654,2.00,0.00,4),(206885,41654,1.00,0.00,5),(206886,41655,10.00,20000.00,1),(206887,41655,20.00,0.00,2),(206888,41655,10.00,10000000.00,3),(206889,41655,2.00,0.00,4),(206890,41655,1.00,0.00,5),(206891,41656,10.00,20000.00,1),(206892,41656,20.00,0.00,2),(206893,41656,0.00,0.00,3),(206894,41656,0.00,0.00,4),(206895,41656,0.00,0.00,5),(206896,41657,10.00,30000.00,1),(206897,41657,20.00,0.00,2),(206898,41657,0.00,0.00,3),(206899,41657,0.00,0.00,4),(206900,41657,0.00,0.00,5),(206901,41658,1.00,20000.00,1),(206902,41658,20.00,0.00,2),(206903,41658,10.00,0.00,3),(206904,41658,2.00,0.00,4),(206905,41658,0.00,0.00,5),(206906,41659,1.00,20000.00,1),(206907,41659,20.00,0.00,2),(206908,41659,10.00,10000000.00,3),(206909,41659,2.00,0.00,4),(206910,41659,1.00,0.00,5),(206911,41660,1.00,20000.00,1),(206912,41660,20.00,0.00,2),(206913,41660,0.00,0.00,3),(206914,41660,0.00,0.00,4),(206915,41660,0.00,0.00,5),(206916,41661,2.00,20000.00,1),(206917,41661,20.00,0.00,2),(206918,41661,0.00,0.00,3),(206919,41661,0.00,0.00,4),(206920,41661,0.00,0.00,5),(206921,41662,2.00,75000.00,1),(206922,41662,20.00,0.00,2),(206923,41662,0.00,0.00,3),(206924,41662,0.00,0.00,4),(206925,41662,0.00,0.00,5),(206926,41663,1.00,20000.00,1),(206927,41663,20.00,0.00,2),(206928,41663,10.00,0.00,3),(206929,41663,2.00,0.00,4),(206930,41663,0.00,0.00,5),(206931,41664,1.00,50000.00,1),(206932,41664,20.00,0.00,2),(206933,41664,10.00,10000000.00,3),(206934,41664,2.00,0.00,4),(206935,41664,1.00,0.00,5),(206936,41665,1.00,50000.00,1),(206937,41665,20.00,0.00,2),(206938,41665,0.00,0.00,3),(206939,41665,0.00,0.00,4),(206940,41665,0.00,0.00,5),(206941,41666,2.00,50000.00,1),(206942,41666,20.00,0.00,2),(206943,41666,0.00,0.00,3),(206944,41666,0.00,0.00,4),(206945,41666,0.00,0.00,5),(206946,41667,2.00,75000.00,1),(206947,41667,20.00,0.00,2),(206948,41667,0.00,0.00,3),(206949,41667,0.00,0.00,4),(206950,41667,0.00,0.00,5),(206951,41668,2.00,50000.00,1),(206952,41668,20.00,0.00,2),(206953,41668,0.00,0.00,3),(206954,41668,0.00,0.00,4),(206955,41668,0.00,0.00,5),(206956,41669,0.00,0.00,1),(206957,41669,20.00,0.00,2),(206958,41669,0.00,0.00,3),(206959,41669,0.00,0.00,4),(206960,41669,0.00,0.00,5),(206961,41670,20.00,75000.00,1),(206962,41670,20.00,0.00,2),(206963,41670,0.00,0.00,3),(206964,41670,0.00,0.00,4),(206965,41670,0.00,0.00,5),(206966,41671,1.00,50000.00,1),(206967,41671,20.00,0.00,2),(206968,41671,0.00,0.00,3),(206969,41671,0.00,0.00,4),(206970,41671,0.00,0.00,5),(206971,41672,0.00,0.00,1),(206972,41672,20.00,0.00,2),(206973,41672,0.00,0.00,3),(206974,41672,0.00,0.00,4),(206975,41672,0.00,0.00,5),(206976,41673,20.00,75000.00,1),(206977,41673,20.00,0.00,2),(206978,41673,0.00,0.00,3),(206979,41673,0.00,0.00,4),(206980,41673,0.00,0.00,5),(206981,41674,30.00,0.00,1),(206982,41674,20.00,0.00,2),(206983,41674,10.00,1000000.00,3),(206984,41674,2.00,0.00,4),(206985,41674,1.00,0.00,5),(206986,41675,3.00,0.00,1),(206987,41675,20.00,0.00,2),(206988,41675,0.00,0.00,3),(206989,41675,2.00,0.00,4),(206990,41675,1.00,0.00,5),(206991,41676,30.00,0.00,1),(206992,41676,20.00,0.00,2),(206993,41676,10.00,10000000.00,3),(206994,41676,2.00,0.00,4),(206995,41676,1.00,0.00,5),(206996,41677,10.00,0.00,1),(206997,41677,20.00,0.00,2),(206998,41677,10.00,10000000.00,3),(206999,41677,2.00,0.00,4),(207000,41677,1.00,0.00,5),(207001,41678,10.00,0.00,1),(207002,41678,20.00,0.00,2),(207003,41678,10.00,1000000.00,3),(207004,41678,2.00,0.00,4),(207005,41678,1.00,0.00,5),(207006,41679,10.00,0.00,1),(207007,41679,20.00,0.00,2),(207008,41679,0.00,0.00,3),(207009,41679,2.00,0.00,4),(207010,41679,1.00,0.00,5),(207011,41680,10.00,0.00,1),(207012,41680,20.00,0.00,2),(207013,41680,10.00,1000000.00,3),(207014,41680,2.00,0.00,4),(207015,41680,1.00,0.00,5),(207016,41681,10.00,0.00,1),(207017,41681,20.00,0.00,2),(207018,41681,0.00,0.00,3),(207019,41681,2.00,0.00,4),(207020,41681,1.00,0.00,5),(207021,41682,5.00,0.00,1),(207022,41682,20.00,0.00,2),(207023,41682,2.00,10000000.00,3),(207024,41682,2.00,0.00,4),(207025,41682,1.00,0.00,5),(207026,41683,5.00,0.00,1),(207027,41683,20.00,0.00,2),(207028,41683,10.00,10000000.00,3),(207029,41683,2.00,0.00,4),(207030,41683,1.00,0.00,5),(207031,41684,20.00,0.00,1),(207032,41684,20.00,0.00,2),(207033,41684,10.00,1000000.00,3),(207034,41684,2.00,0.00,4),(207035,41684,1.00,0.00,5),(207036,41685,20.00,0.00,1),(207037,41685,0.00,0.00,2),(207038,41685,0.00,0.00,3),(207039,41685,2.00,0.00,4),(207040,41685,1.00,0.00,5),(207041,41686,20.00,0.00,1),(207042,41686,20.00,0.00,2),(207043,41686,10.00,1000000.00,3),(207044,41686,2.00,0.00,4),(207045,41686,1.00,0.00,5),(207046,41687,5.00,0.00,1),(207047,41687,20.00,0.00,2),(207048,41687,2.00,10000000.00,3),(207049,41687,2.00,0.00,4),(207050,41687,1.00,0.00,5),(207051,41688,5.00,0.00,1),(207052,41688,20.00,0.00,2),(207053,41688,10.00,10000000.00,3),(207054,41688,2.00,0.00,4),(207055,41688,1.00,0.00,5),(207056,41689,20.00,0.00,1),(207057,41689,20.00,0.00,2),(207058,41689,10.00,1000000.00,3),(207059,41689,2.00,0.00,4),(207060,41689,1.00,0.00,5),(207061,41690,20.00,0.00,1),(207062,41690,20.00,0.00,2),(207063,41690,0.00,0.00,3),(207064,41690,2.00,0.00,4),(207065,41690,1.00,0.00,5),(207066,41691,20.00,0.00,1),(207067,41691,20.00,0.00,2),(207068,41691,10.00,10000000.00,3),(207069,41691,2.00,0.00,4),(207070,41691,1.00,0.00,5),(207071,41692,20.00,0.00,1),(207072,41692,20.00,0.00,2),(207073,41692,10.00,1000000.00,3),(207074,41692,2.00,0.00,4),(207075,41692,1.00,0.00,5),(207076,41693,20.00,0.00,1),(207077,41693,20.00,0.00,2),(207078,41693,0.00,0.00,3),(207079,41693,2.00,0.00,4),(207080,41693,1.00,0.00,5),(207081,41694,20.00,0.00,1),(207082,41694,20.00,0.00,2),(207083,41694,10.00,10000000.00,3),(207084,41694,2.00,0.00,4),(207085,41694,1.00,0.00,5),(207086,41695,20.00,0.00,1),(207087,41695,20.00,0.00,2),(207088,41695,10.00,1000000.00,3),(207089,41695,2.00,0.00,4),(207090,41695,0.00,0.00,5),(207091,41696,20.00,0.00,1),(207092,41696,20.00,0.00,2),(207093,41696,0.00,0.00,3),(207094,41696,2.00,0.00,4),(207095,41696,0.00,0.00,5),(207096,41697,10.00,0.00,1),(207097,41697,20.00,0.00,2),(207098,41697,10.00,1000000.00,3),(207099,41697,2.00,0.00,4),(207100,41697,0.00,0.00,5),(207101,41698,10.00,0.00,1),(207102,41698,20.00,0.00,2),(207103,41698,10.00,1000000.00,3),(207104,41698,2.00,0.00,4),(207105,41698,1.00,0.00,5),(207106,41699,10.00,0.00,1),(207107,41699,20.00,0.00,2),(207108,41699,0.00,0.00,3),(207109,41699,2.00,0.00,4),(207110,41699,1.00,0.00,5),(207111,41700,10.00,0.00,1),(207112,41700,20.00,0.00,2),(207113,41700,10.00,1000000.00,3),(207114,41700,2.00,0.00,4),(207115,41700,1.00,0.00,5),(207116,41701,20.00,0.00,1),(207117,41701,20.00,0.00,2),(207118,41701,10.00,1000000.00,3),(207119,41701,2.00,0.00,4),(207120,41701,1.00,0.00,5),(207121,41702,20.00,0.00,1),(207122,41702,0.00,0.00,2),(207123,41702,0.00,0.00,3),(207124,41702,2.00,0.00,4),(207125,41702,1.00,0.00,5),(207126,41703,20.00,0.00,1),(207127,41703,20.00,0.00,2),(207128,41703,10.00,1000000.00,3),(207129,41703,2.00,0.00,4),(207130,41703,1.00,0.00,5),(207131,41704,20.00,0.00,1),(207132,41704,20.00,0.00,2),(207133,41704,10.00,1000000.00,3),(207134,41704,2.00,0.00,4),(207135,41704,1.00,0.00,5),(207136,41705,20.00,0.00,1),(207137,41705,20.00,0.00,2),(207138,41705,0.00,0.00,3),(207139,41705,2.00,0.00,4),(207140,41705,1.00,0.00,5),(207141,41706,30.00,0.00,1),(207142,41706,20.00,0.00,2),(207143,41706,10.00,1000000.00,3),(207144,41706,2.00,0.00,4),(207145,41706,1.00,0.00,5),(207146,41707,30.00,0.00,1),(207147,41707,20.00,0.00,2),(207148,41707,0.00,0.00,3),(207149,41707,2.00,0.00,4),(207150,41707,1.00,0.00,5),(207151,41708,10.00,0.00,1),(207152,41708,20.00,0.00,2),(207153,41708,10.00,1000000.00,3),(207154,41708,2.00,0.00,4),(207155,41708,1.00,0.00,5),(207156,41709,10.00,0.00,1),(207157,41709,20.00,0.00,2),(207158,41709,0.00,0.00,3),(207159,41709,2.00,0.00,4),(207160,41709,1.00,0.00,5),(207161,41710,30.00,0.00,1),(207162,41710,20.00,0.00,2),(207163,41710,10.00,1000000.00,3),(207164,41710,2.00,0.00,4),(207165,41710,1.00,0.00,5),(207166,41711,30.00,0.00,1),(207167,41711,20.00,0.00,2),(207168,41711,0.00,0.00,3),(207169,41711,2.00,0.00,4),(207170,41711,1.00,0.00,5),(207171,41712,30.00,0.00,1),(207172,41712,20.00,0.00,2),(207173,41712,10.00,10000000.00,3),(207174,41712,2.00,0.00,4),(207175,41712,1.00,0.00,5),(207176,41713,30.00,0.00,1),(207177,41713,20.00,0.00,2),(207178,41713,10.00,1000000.00,3),(207179,41713,2.00,0.00,4),(207180,41713,1.00,0.00,5),(207181,41714,30.00,0.00,1),(207182,41714,20.00,0.00,2),(207183,41714,0.00,0.00,3),(207184,41714,2.00,0.00,4),(207185,41714,1.00,0.00,5),(207186,41715,25.00,0.00,1),(207187,41715,20.00,0.00,2),(207188,41715,10.00,10000000.00,3),(207189,41715,2.00,0.00,4),(207190,41715,1.00,0.00,5),(207191,41716,20.00,0.00,1),(207192,41716,20.00,0.00,2),(207193,41716,10.00,1000000.00,3),(207194,41716,2.00,0.00,4),(207195,41716,1.00,0.00,5),(207196,41717,20.00,0.00,1),(207197,41717,20.00,0.00,2),(207198,41717,0.00,0.00,3),(207199,41717,2.00,0.00,4),(207200,41717,1.00,0.00,5),(207201,41718,10.00,0.00,1),(207202,41718,20.00,0.00,2),(207203,41718,10.00,1000000.00,3),(207204,41718,2.00,0.00,4),(207205,41718,1.00,0.00,5),(207206,41719,10.00,0.00,1),(207207,41719,20.00,0.00,2),(207208,41719,0.00,0.00,3),(207209,41719,2.00,0.00,4),(207210,41719,1.00,0.00,5),(207211,41720,10.00,0.00,1),(207212,41720,20.00,0.00,2),(207213,41720,10.00,1000000.00,3),(207214,41720,2.00,0.00,4),(207215,41720,1.00,0.00,5),(207216,41721,10.00,0.00,1),(207217,41721,20.00,0.00,2),(207218,41721,0.00,0.00,3),(207219,41721,2.00,0.00,4),(207220,41721,1.00,0.00,5),(207221,41722,15.00,0.00,1),(207222,41722,20.00,0.00,2),(207223,41722,10.00,10000000.00,3),(207224,41722,2.00,0.00,4),(207225,41722,1.00,0.00,5),(207226,41723,30.00,2500.00,1),(207227,41723,20.00,0.00,2),(207228,41723,10.00,100000.00,3),(207229,41723,2.00,0.00,4),(207230,41723,1.00,0.00,5),(207231,41724,30.00,2500.00,1),(207232,41724,20.00,0.00,2),(207233,41724,0.00,0.00,3),(207234,41724,2.00,0.00,4),(207235,41724,1.00,0.00,5),(207236,41725,30.00,2500.00,1),(207237,41725,20.00,0.00,2),(207238,41725,10.00,10000000.00,3),(207239,41725,2.00,0.00,4),(207240,41725,1.00,0.00,5),(207241,41726,30.00,5000.00,1),(207242,41726,20.00,0.00,2),(207243,41726,10.00,1000000.00,3),(207244,41726,2.00,0.00,4),(207245,41726,1.00,0.00,5),(207246,41727,30.00,5000.00,1),(207247,41727,20.00,0.00,2),(207248,41727,0.00,0.00,3),(207249,41727,2.00,0.00,4),(207250,41727,1.00,0.00,5),(207251,41728,30.00,5000.00,1),(207252,41728,20.00,0.00,2),(207253,41728,10.00,1000000.00,3),(207254,41728,2.00,0.00,4),(207255,41728,1.00,0.00,5),(207256,41729,10.00,1000.00,1),(207257,41729,20.00,0.00,2),(207258,41729,10.00,1000000.00,3),(207259,41729,2.00,0.00,4),(207260,41729,1.00,0.00,5),(207261,41730,10.00,1000.00,1),(207262,41730,20.00,0.00,2),(207263,41730,0.00,0.00,3),(207264,41730,2.00,0.00,4),(207265,41730,1.00,0.00,5),(207266,41731,10.00,1000.00,1),(207267,41731,20.00,0.00,2),(207268,41731,10.00,1000000.00,3),(207269,41731,2.00,0.00,4),(207270,41731,1.00,0.00,5),(207271,41732,30.00,0.00,1),(207272,41732,20.00,0.00,2),(207273,41732,10.00,1000000.00,3),(207274,41732,2.00,0.00,4),(207275,41732,1.00,0.00,5),(207276,41733,30.00,0.00,1),(207277,41733,20.00,0.00,2),(207278,41733,0.00,0.00,3),(207279,41733,2.00,0.00,4),(207280,41733,1.00,0.00,5),(207281,41734,30.00,0.00,1),(207282,41734,20.00,0.00,2),(207283,41734,10.00,10000000.00,3),(207284,41734,2.00,0.00,4),(207285,41734,1.00,0.00,5),(207286,41735,30.00,0.00,1),(207287,41735,20.00,0.00,2),(207288,41735,10.00,1000000.00,3),(207289,41735,2.00,0.00,4),(207290,41735,1.00,0.00,5),(207291,41736,30.00,0.00,1),(207292,41736,20.00,0.00,2),(207293,41736,0.00,0.00,3),(207294,41736,2.00,0.00,4),(207295,41736,1.00,0.00,5),(207296,41737,25.00,0.00,1),(207297,41737,20.00,0.00,2),(207298,41737,10.00,10000000.00,3),(207299,41737,2.00,0.00,4),(207300,41737,1.00,0.00,5),(207301,41738,20.00,0.00,1),(207302,41738,20.00,0.00,2),(207303,41738,10.00,1000000.00,3),(207304,41738,2.00,0.00,4),(207305,41738,1.00,0.00,5),(207306,41739,20.00,0.00,1),(207307,41739,20.00,0.00,2),(207308,41739,0.00,0.00,3),(207309,41739,2.00,0.00,4),(207310,41739,1.00,0.00,5),(207311,41740,10.00,0.00,1),(207312,41740,20.00,0.00,2),(207313,41740,10.00,1000000.00,3),(207314,41740,2.00,0.00,4),(207315,41740,1.00,0.00,5),(207316,41741,10.00,0.00,1),(207317,41741,20.00,0.00,2),(207318,41741,0.00,0.00,3),(207319,41741,2.00,0.00,4),(207320,41741,1.00,0.00,5),(207321,41742,5.00,0.00,1),(207322,41742,20.00,0.00,2),(207323,41742,10.00,10000000.00,3),(207324,41742,2.00,0.00,4),(207325,41742,1.00,0.00,5),(207326,41743,20.00,0.00,1),(207327,41743,20.00,0.00,2),(207328,41743,10.00,1000000.00,3),(207329,41743,2.00,0.00,4),(207330,41743,0.00,0.00,5),(207331,41744,20.00,0.00,1),(207332,41744,20.00,0.00,2),(207333,41744,0.00,0.00,3),(207334,41744,2.00,0.00,4),(207335,41744,1.00,0.00,5),(207336,41745,20.00,0.00,1),(207337,41745,20.00,0.00,2),(207338,41745,10.00,10000000.00,3),(207339,41745,2.00,0.00,4),(207340,41745,1.00,0.00,5),(207341,41746,20.00,0.00,1),(207342,41746,20.00,0.00,2),(207343,41746,10.00,1000000.00,3),(207344,41746,2.00,0.00,4),(207345,41746,1.00,0.00,5),(207346,41747,10.00,0.00,1),(207347,41747,20.00,0.00,2),(207348,41747,10.00,1000000.00,3),(207349,41747,2.00,0.00,4),(207350,41747,1.00,0.00,5),(207351,41748,10.00,0.00,1),(207352,41748,20.00,0.00,2),(207353,41748,10.00,1000000.00,3),(207354,41748,2.00,0.00,4),(207355,41748,0.00,0.00,5),(207356,41749,10.00,0.00,1),(207357,41749,20.00,0.00,2),(207358,41749,0.00,0.00,3),(207359,41749,2.00,0.00,4),(207360,41749,1.00,0.00,5),(207361,41750,20.00,0.00,1),(207362,41750,20.00,0.00,2),(207363,41750,0.00,0.00,3),(207364,41750,2.00,0.00,4),(207365,41750,1.00,0.00,5),(207366,41751,20.00,0.00,1),(207367,41751,20.00,0.00,2),(207368,41751,10.00,10000000.00,3),(207369,41751,2.00,0.00,4),(207370,41751,1.00,0.00,5),(207371,41752,30.00,0.00,1),(207372,41752,20.00,0.00,2),(207373,41752,10.00,1000000.00,3),(207374,41752,2.00,0.00,4),(207375,41752,0.00,0.00,5),(207376,41753,30.00,0.00,1),(207377,41753,20.00,0.00,2),(207378,41753,10.00,1000000.00,3),(207379,41753,2.00,0.00,4),(207380,41753,1.00,0.00,5),(207381,41754,30.00,0.00,1),(207382,41754,20.00,0.00,2),(207383,41754,0.00,0.00,3),(207384,41754,2.00,0.00,4),(207385,41754,1.00,0.00,5),(207386,41755,20.00,0.00,1),(207387,41755,20.00,0.00,2),(207388,41755,10.00,1000000.00,3),(207389,41755,2.00,0.00,4),(207390,41755,0.00,0.00,5),(207391,41756,20.00,0.00,1),(207392,41756,20.00,0.00,2),(207393,41756,10.00,1000000.00,3),(207394,41756,2.00,0.00,4),(207395,41756,1.00,0.00,5),(207396,41757,0.00,0.00,1),(207397,41757,20.00,0.00,2),(207398,41757,0.00,0.00,3),(207399,41757,0.00,0.00,4),(207400,41757,0.00,0.00,5),(207401,41758,0.00,0.00,1),(207402,41758,20.00,0.00,2),(207403,41758,0.00,0.00,3),(207404,41758,0.00,0.00,4),(207405,41758,0.00,0.00,5),(207406,41759,10.00,5000.00,1),(207407,41759,20.00,0.00,2),(207408,41759,10.00,1000000.00,3),(207409,41759,2.00,0.00,4),(207410,41759,0.00,0.00,5),(207411,41760,10.00,5000.00,1),(207412,41760,20.00,0.00,2),(207413,41760,10.00,1000000.00,3),(207414,41760,2.00,0.00,4),(207415,41760,1.00,0.00,5),(207416,41761,10.00,5000.00,1),(207417,41761,20.00,0.00,2),(207418,41761,0.00,0.00,3),(207419,41761,0.00,0.00,4),(207420,41761,0.00,0.00,5),(207421,41762,10.00,20000.00,1),(207422,41762,20.00,0.00,2),(207423,41762,0.00,0.00,3),(207424,41762,0.00,0.00,4),(207425,41762,0.00,0.00,5),(207426,41763,10.00,10000.00,1),(207427,41763,20.00,0.00,2),(207428,41763,10.00,1000000.00,3),(207429,41763,2.00,0.00,4),(207430,41763,1.00,0.00,5),(207431,41764,10.00,10000.00,1),(207432,41764,20.00,0.00,2),(207433,41764,0.00,0.00,3),(207434,41764,0.00,0.00,4),(207435,41764,0.00,0.00,5),(207436,41765,10.00,2500.00,1),(207437,41765,20.00,0.00,2),(207438,41765,10.00,1000000.00,3),(207439,41765,2.00,0.00,4),(207440,41765,0.00,0.00,5),(207441,41766,10.00,2500.00,1),(207442,41766,20.00,0.00,2),(207443,41766,10.00,1000000.00,3),(207444,41766,2.00,0.00,4),(207445,41766,1.00,0.00,5),(207446,41767,10.00,2500.00,1),(207447,41767,20.00,0.00,2),(207448,41767,0.00,0.00,3),(207449,41767,0.00,0.00,4),(207450,41767,0.00,0.00,5),(207451,41768,10.00,5000.00,1),(207452,41768,20.00,0.00,2),(207453,41768,0.00,0.00,3),(207454,41768,0.00,0.00,4),(207455,41768,0.00,0.00,5),(207456,41769,10.00,5000.00,1),(207457,41769,20.00,0.00,2),(207458,41769,10.00,1000000.00,3),(207459,41769,2.00,0.00,4),(207460,41769,0.00,0.00,5),(207461,41770,10.00,5000.00,1),(207462,41770,20.00,0.00,2),(207463,41770,10.00,1000000.00,3),(207464,41770,2.00,0.00,4),(207465,41770,1.00,0.00,5),(207466,41771,10.00,5000.00,1),(207467,41771,20.00,0.00,2),(207468,41771,0.00,0.00,3),(207469,41771,0.00,0.00,4),(207470,41771,0.00,0.00,5),(207471,41772,10.00,100000.00,1),(207472,41772,20.00,0.00,2),(207473,41772,10.00,1000000.00,3),(207474,41772,2.00,0.00,4),(207475,41772,0.00,0.00,5),(207476,41773,10.00,100000.00,1),(207477,41773,20.00,0.00,2),(207478,41773,10.00,1000000.00,3),(207479,41773,2.00,0.00,4),(207480,41773,1.00,0.00,5),(207481,41774,10.00,100000.00,1),(207482,41774,20.00,0.00,2),(207483,41774,0.00,0.00,3),(207484,41774,0.00,0.00,4),(207485,41774,0.00,0.00,5),(207486,41775,10.00,200000.00,1),(207487,41775,20.00,0.00,2),(207488,41775,0.00,0.00,3),(207489,41775,0.00,0.00,4),(207490,41775,0.00,0.00,5),(207491,41776,1.00,5000000.00,1),(207492,41776,20.00,0.00,2),(207493,41776,0.00,0.00,3),(207494,41776,0.00,0.00,4),(207495,41776,0.00,0.00,5),(207496,41777,20.00,2500.00,1),(207497,41777,20.00,0.00,2),(207498,41777,10.00,1000000.00,3),(207499,41777,2.00,0.00,4),(207500,41777,0.00,0.00,5),(207501,41778,20.00,0.00,1),(207502,41778,20.00,0.00,2),(207503,41778,10.00,1000000.00,3),(207504,41778,2.00,0.00,4),(207505,41778,1.00,0.00,5),(207506,41779,20.00,0.00,1),(207507,41779,20.00,0.00,2),(207508,41779,0.00,0.00,3),(207509,41779,0.00,0.00,4),(207510,41779,0.00,0.00,5),(207511,41780,20.00,0.00,1),(207512,41780,20.00,0.00,2),(207513,41780,10.00,1000000.00,3),(207514,41780,2.00,0.00,4),(207515,41780,1.00,0.00,5),(207516,41781,20.00,0.00,1),(207517,41781,20.00,0.00,2),(207518,41781,0.00,0.00,3),(207519,41781,0.00,0.00,4),(207520,41781,0.00,0.00,5),(207521,41782,2.00,20000.00,1),(207522,41782,20.00,0.00,2),(207523,41782,10.00,1000000.00,3),(207524,41782,2.00,0.00,4),(207525,41782,0.00,0.00,5),(207526,41783,2.00,50000.00,1),(207527,41783,20.00,0.00,2),(207528,41783,10.00,1000000.00,3),(207529,41783,2.00,0.00,4),(207530,41783,1.00,0.00,5),(207531,41784,2.00,50000.00,1),(207532,41784,20.00,0.00,2),(207533,41784,0.00,0.00,3),(207534,41784,0.00,0.00,4),(207535,41784,0.00,0.00,5),(207536,41785,1.00,50000.00,1),(207537,41785,20.00,0.00,2),(207538,41785,0.00,0.00,3),(207539,41785,0.00,0.00,4),(207540,41785,0.00,0.00,5),(207541,41786,1.00,75000.00,1),(207542,41786,20.00,0.00,2),(207543,41786,0.00,0.00,3),(207544,41786,0.00,0.00,4),(207545,41786,0.00,0.00,5),(207546,41787,10.00,30000.00,1),(207547,41787,20.00,0.00,2),(207548,41787,0.00,0.00,3),(207549,41787,0.00,0.00,4),(207550,41787,0.00,0.00,5),(207551,41788,15.00,120000.00,1),(207552,41788,20.00,0.00,2),(207553,41788,10.00,1000000.00,3),(207554,41788,2.00,0.00,4),(207555,41788,0.00,0.00,5),(207556,41789,15.00,120000.00,1),(207557,41789,20.00,0.00,2),(207558,41789,10.00,1000000.00,3),(207559,41789,2.00,0.00,4),(207560,41789,1.00,0.00,5),(207561,41790,15.00,120000.00,1),(207562,41790,20.00,0.00,2),(207563,41790,0.00,0.00,3),(207564,41790,0.00,0.00,4),(207565,41790,0.00,0.00,5),(207566,41791,10.00,120000.00,1),(207567,41791,20.00,0.00,2),(207568,41791,0.00,0.00,3),(207569,41791,0.00,0.00,4),(207570,41791,0.00,0.00,5),(207571,41792,10.00,180000.00,1),(207572,41792,20.00,0.00,2),(207573,41792,0.00,0.00,3),(207574,41792,0.00,0.00,4),(207575,41792,0.00,0.00,5),(207576,41793,10.00,120000.00,1),(207577,41793,20.00,0.00,2),(207578,41793,10.00,1000000.00,3),(207579,41793,2.00,0.00,4),(207580,41793,1.00,0.00,5),(207581,41794,10.00,120000.00,1),(207582,41794,20.00,0.00,2),(207583,41794,0.00,0.00,3),(207584,41794,0.00,0.00,4),(207585,41794,0.00,0.00,5),(207586,41795,2.00,120000.00,1),(207587,41795,20.00,0.00,2),(207588,41795,0.00,0.00,3),(207589,41795,0.00,0.00,4),(207590,41795,0.00,0.00,5),(207591,41796,2.00,180000.00,1),(207592,41796,20.00,0.00,2),(207593,41796,0.00,0.00,3),(207594,41796,0.00,0.00,4),(207595,41796,0.00,0.00,5),(207596,41797,30.00,2500.00,1),(207597,41797,20.00,0.00,2),(207598,41797,10.00,1000000.00,3),(207599,41797,2.00,0.00,4),(207600,41797,0.00,0.00,5),(207601,41798,30.00,2500.00,1),(207602,41798,20.00,0.00,2),(207603,41798,10.00,1000000.00,3),(207604,41798,2.00,0.00,4),(207605,41798,1.00,0.00,5),(207606,41799,30.00,2500.00,1),(207607,41799,20.00,0.00,2),(207608,41799,0.00,0.00,3),(207609,41799,0.00,0.00,4),(207610,41799,0.00,0.00,5),(207611,41800,30.00,5000.00,1),(207612,41800,20.00,0.00,2),(207613,41800,0.00,0.00,3),(207614,41800,0.00,0.00,4),(207615,41800,0.00,0.00,5),(207616,41801,30.00,5000.00,1),(207617,41801,20.00,0.00,2),(207618,41801,10.00,1000000.00,3),(207619,41801,2.00,0.00,4),(207620,41801,0.00,0.00,5),(207621,41802,30.00,5000.00,1),(207622,41802,20.00,0.00,2),(207623,41802,10.00,1000000.00,3),(207624,41802,2.00,0.00,4),(207625,41802,1.00,0.00,5),(207626,41803,30.00,5000.00,1),(207627,41803,20.00,0.00,2),(207628,41803,0.00,0.00,3),(207629,41803,0.00,0.00,4),(207630,41803,0.00,0.00,5),(207631,41804,30.00,10000.00,1),(207632,41804,20.00,0.00,2),(207633,41804,0.00,0.00,3),(207634,41804,0.00,0.00,4),(207635,41804,0.00,0.00,5),(207636,41805,20.00,2500.00,1),(207637,41805,20.00,0.00,2),(207638,41805,10.00,1000000.00,3),(207639,41805,2.00,0.00,4),(207640,41805,0.00,0.00,5),(207641,41806,20.00,2500.00,1),(207642,41806,20.00,0.00,2),(207643,41806,10.00,1000000.00,3),(207644,41806,2.00,0.00,4),(207645,41806,1.00,0.00,5),(207646,41807,20.00,0.00,1),(207647,41807,20.00,0.00,2),(207648,41807,10.00,1000000.00,3),(207649,41807,2.00,0.00,4),(207650,41807,1.00,0.00,5),(207651,41808,10.00,0.00,1),(207652,41808,20.00,0.00,2),(207653,41808,0.00,0.00,3),(207654,41808,0.00,0.00,4),(207655,41808,0.00,0.00,5),(207656,41809,10.00,0.00,1),(207657,41809,20.00,0.00,2),(207658,41809,0.00,0.00,3),(207659,41809,0.00,0.00,4),(207660,41809,0.00,0.00,5),(207661,41810,10.00,1000.00,1),(207662,41810,20.00,0.00,2),(207663,41810,10.00,1000000.00,3),(207664,41810,2.00,0.00,4),(207665,41810,0.00,0.00,5),(207666,41811,10.00,1000.00,1),(207667,41811,20.00,0.00,2),(207668,41811,10.00,1000000.00,3),(207669,41811,2.00,0.00,4),(207670,41811,1.00,0.00,5),(207671,41812,10.00,1000.00,1),(207672,41812,20.00,0.00,2),(207673,41812,0.00,0.00,3),(207674,41812,0.00,0.00,4),(207675,41812,0.00,0.00,5),(207676,41813,5.00,2500.00,1),(207677,41813,20.00,0.00,2),(207678,41813,10.00,1000000.00,3),(207679,41813,2.00,0.00,4),(207680,41813,0.00,0.00,5),(207681,41814,5.00,2500.00,1),(207682,41814,20.00,0.00,2),(207683,41814,10.00,1000000.00,3),(207684,41814,2.00,0.00,4),(207685,41814,1.00,0.00,5),(207686,41815,10.00,2500.00,1),(207687,41815,20.00,0.00,2),(207688,41815,10.00,1000000.00,3),(207689,41815,2.00,0.00,4),(207690,41815,1.00,0.00,5),(207691,41816,10.00,2500.00,1),(207692,41816,20.00,0.00,2),(207693,41816,0.00,0.00,3),(207694,41816,0.00,0.00,4),(207695,41816,0.00,0.00,5),(207696,41817,10.00,5000.00,1),(207697,41817,20.00,0.00,2),(207698,41817,0.00,0.00,3),(207699,41817,0.00,0.00,4),(207700,41817,0.00,0.00,5),(207701,41818,20.00,2500.00,1),(207702,41818,20.00,0.00,2),(207703,41818,10.00,1000000.00,3),(207704,41818,2.00,0.00,4),(207705,41818,1.00,0.00,5),(207706,41819,10.00,2500.00,1),(207707,41819,20.00,0.00,2),(207708,41819,0.00,0.00,3),(207709,41819,0.00,0.00,4),(207710,41819,0.00,0.00,5),(207711,41820,5.00,20000.00,1),(207712,41820,20.00,0.00,2),(207713,41820,10.00,1000000.00,3),(207714,41820,2.00,0.00,4),(207715,41820,0.00,0.00,5),(207716,41821,5.00,20000.00,1),(207717,41821,20.00,0.00,2),(207718,41821,10.00,1000000.00,3),(207719,41821,2.00,0.00,4),(207720,41821,1.00,0.00,5),(207721,41822,10.00,20000.00,1),(207722,41822,20.00,0.00,2),(207723,41822,10.00,1000000.00,3),(207724,41822,2.00,0.00,4),(207725,41822,1.00,0.00,5),(207726,41823,10.00,20000.00,1),(207727,41823,20.00,0.00,2),(207728,41823,0.00,0.00,3),(207729,41823,0.00,0.00,4),(207730,41823,0.00,0.00,5),(207731,41824,10.00,30000.00,1),(207732,41824,20.00,0.00,2),(207733,41824,0.00,0.00,3),(207734,41824,0.00,0.00,4),(207735,41824,0.00,0.00,5),(207736,41825,1.00,20000.00,1),(207737,41825,20.00,0.00,2),(207738,41825,10.00,1000000.00,3),(207739,41825,2.00,0.00,4),(207740,41825,0.00,0.00,5),(207741,41826,1.00,20000.00,1),(207742,41826,20.00,0.00,2),(207743,41826,10.00,1000000.00,3),(207744,41826,2.00,0.00,4),(207745,41826,1.00,0.00,5),(207746,41827,1.00,20000.00,1),(207747,41827,20.00,0.00,2),(207748,41827,0.00,0.00,3),(207749,41827,0.00,0.00,4),(207750,41827,0.00,0.00,5),(207751,41828,1.00,20000.00,1),(207752,41828,20.00,0.00,2),(207753,41828,0.00,0.00,3),(207754,41828,0.00,0.00,4),(207755,41828,0.00,0.00,5),(207756,41829,1.00,75000.00,1),(207757,41829,20.00,0.00,2),(207758,41829,0.00,0.00,3),(207759,41829,0.00,0.00,4),(207760,41829,0.00,0.00,5),(207761,41830,1.00,20000.00,1),(207762,41830,20.00,0.00,2),(207763,41830,10.00,1000000.00,3),(207764,41830,2.00,0.00,4),(207765,41830,0.00,0.00,5),(207766,41831,1.00,20000.00,1),(207767,41831,20.00,0.00,2),(207768,41831,10.00,1000000.00,3),(207769,41831,2.00,0.00,4),(207770,41831,1.00,0.00,5),(207771,41832,1.00,50000.00,1),(207772,41832,20.00,0.00,2),(207773,41832,0.00,0.00,3),(207774,41832,0.00,0.00,4),(207775,41832,0.00,0.00,5),(207776,41833,1.00,50000.00,1),(207777,41833,20.00,0.00,2),(207778,41833,0.00,0.00,3),(207779,41833,0.00,0.00,4),(207780,41833,0.00,0.00,5),(207781,41834,1.00,75000.00,1),(207782,41834,20.00,0.00,2),(207783,41834,0.00,0.00,3),(207784,41834,0.00,0.00,4),(207785,41834,0.00,0.00,5),(207786,41835,2.00,50000.00,1),(207787,41835,20.00,0.00,2),(207788,41835,0.00,0.00,3),(207789,41835,0.00,0.00,4),(207790,41835,0.00,0.00,5),(207791,41836,0.00,0.00,1),(207792,41836,20.00,0.00,2),(207793,41836,0.00,0.00,3),(207794,41836,0.00,0.00,4),(207795,41836,0.00,0.00,5),(207796,41837,20.00,75000.00,1),(207797,41837,20.00,0.00,2),(207798,41837,0.00,0.00,3),(207799,41837,0.00,0.00,4),(207800,41837,0.00,0.00,5),(207801,41838,1.00,50000.00,1),(207802,41838,20.00,0.00,2),(207803,41838,0.00,0.00,3),(207804,41838,0.00,0.00,4),(207805,41838,0.00,0.00,5),(207806,41839,0.00,0.00,1),(207807,41839,20.00,0.00,2),(207808,41839,0.00,0.00,3),(207809,41839,0.00,0.00,4),(207810,41839,0.00,0.00,5),(207811,41840,20.00,75000.00,1),(207812,41840,20.00,0.00,2),(207813,41840,0.00,0.00,3),(207814,41840,0.00,0.00,4),(207815,41840,0.00,0.00,5),(207816,41841,10.00,5000.00,1),(207817,41841,20.00,0.00,2),(207818,41841,2.50,0.00,3),(207819,41841,2.00,0.00,4),(207820,41841,0.00,0.00,5),(207821,41842,10.00,5000.00,1),(207822,41842,20.00,0.00,2),(207823,41842,0.00,0.00,3),(207824,41842,2.00,0.00,4),(207825,41842,1.00,0.00,5),(207826,41843,10.00,5000.00,1),(207827,41843,20.00,0.00,2),(207828,41843,0.00,0.00,3),(207829,41843,2.00,0.00,4),(207830,41843,1.00,0.00,5),(207831,41844,10.00,5000.00,1),(207832,41844,20.00,0.00,2),(207833,41844,0.00,0.00,3),(207834,41844,0.00,0.00,4),(207835,41844,0.00,0.00,5),(207836,41845,10.00,20000.00,1),(207837,41845,20.00,0.00,2),(207838,41845,0.00,0.00,3),(207839,41845,0.00,0.00,4),(207840,41845,0.00,0.00,5),(207841,41846,10.00,10000.00,1),(207842,41846,20.00,0.00,2),(207843,41846,0.00,0.00,3),(207844,41846,2.00,0.00,4),(207845,41846,1.00,0.00,5),(207846,41847,10.00,10000.00,1),(207847,41847,20.00,0.00,2),(207848,41847,0.00,0.00,3),(207849,41847,0.00,0.00,4),(207850,41847,0.00,0.00,5),(207851,41848,10.00,2500.00,1),(207852,41848,20.00,0.00,2),(207853,41848,2.50,2.00,3),(207854,41848,0.00,0.00,4),(207855,41848,0.00,0.00,5),(207856,41849,10.00,2500.00,1),(207857,41849,20.00,0.00,2),(207858,41849,0.00,0.00,3),(207859,41849,2.00,0.00,4),(207860,41849,0.00,0.00,5),(207861,41850,10.00,2500.00,1),(207862,41850,20.00,0.00,2),(207863,41850,0.00,0.00,3),(207864,41850,2.00,0.00,4),(207865,41850,1.00,0.00,5),(207866,41851,10.00,2500.00,1),(207867,41851,20.00,0.00,2),(207868,41851,0.00,0.00,3),(207869,41851,0.00,0.00,4),(207870,41851,0.00,0.00,5),(207871,41852,10.00,5000.00,1),(207872,41852,20.00,0.00,2),(207873,41852,0.00,0.00,3),(207874,41852,0.00,0.00,4),(207875,41852,0.00,0.00,5),(207876,41853,10.00,5000.00,1),(207877,41853,20.00,0.00,2),(207878,41853,2.50,0.00,3),(207879,41853,2.00,0.00,4),(207880,41853,0.00,0.00,5),(207881,41854,10.00,5000.00,1),(207882,41854,20.00,0.00,2),(207883,41854,0.00,0.00,3),(207884,41854,2.00,0.00,4),(207885,41854,0.00,0.00,5),(207886,41855,10.00,5000.00,1),(207887,41855,20.00,0.00,2),(207888,41855,0.00,0.00,3),(207889,41855,2.00,0.00,4),(207890,41855,1.00,0.00,5),(207891,41856,10.00,5000.00,1),(207892,41856,20.00,0.00,2),(207893,41856,0.00,0.00,3),(207894,41856,0.00,0.00,4),(207895,41856,0.00,0.00,5),(207896,41857,10.00,100000.00,1),(207897,41857,20.00,0.00,2),(207898,41857,2.50,0.00,3),(207899,41857,2.00,0.00,4),(207900,41857,0.00,0.00,5),(207901,41858,10.00,100000.00,1),(207902,41858,20.00,0.00,2),(207903,41858,0.00,0.00,3),(207904,41858,2.00,0.00,4),(207905,41858,1.00,0.00,5),(207906,41859,10.00,100000.00,1),(207907,41859,20.00,0.00,2),(207908,41859,0.00,0.00,3),(207909,41859,2.00,0.00,4),(207910,41859,1.00,0.00,5),(207911,41860,10.00,100000.00,1),(207912,41860,20.00,0.00,2),(207913,41860,0.00,0.00,3),(207914,41860,0.00,0.00,4),(207915,41860,0.00,0.00,5),(207916,41861,10.00,200000.00,1),(207917,41861,20.00,0.00,2),(207918,41861,0.00,0.00,3),(207919,41861,0.00,0.00,4),(207920,41861,0.00,0.00,5),(207921,41862,1.00,50000.00,1),(207922,41862,20.00,0.00,2),(207923,41862,0.00,0.00,3),(207924,41862,0.00,0.00,4),(207925,41862,0.00,0.00,5),(207926,41863,20.00,2500.00,1),(207927,41863,20.00,0.00,2),(207928,41863,2.50,0.00,3),(207929,41863,2.00,0.00,4),(207930,41863,0.00,0.00,5),(207931,41864,20.00,2500.00,1),(207932,41864,20.00,0.00,2),(207933,41864,0.00,0.00,3),(207934,41864,2.00,0.00,4),(207935,41864,0.00,0.00,5),(207936,41865,20.00,0.00,1),(207937,41865,20.00,0.00,2),(207938,41865,0.00,0.00,3),(207939,41865,2.00,0.00,4),(207940,41865,1.00,0.00,5),(207941,41866,20.00,0.00,1),(207942,41866,20.00,0.00,2),(207943,41866,0.00,0.00,3),(207944,41866,0.00,0.00,4),(207945,41866,0.00,0.00,5),(207946,41867,20.00,0.00,1),(207947,41867,20.00,0.00,2),(207948,41867,2.50,0.00,3),(207949,41867,2.00,0.00,4),(207950,41867,0.00,0.00,5),(207951,41868,20.00,0.00,1),(207952,41868,20.00,0.00,2),(207953,41868,0.00,0.00,3),(207954,41868,2.00,0.00,4),(207955,41868,0.00,0.00,5),(207956,41869,20.00,0.00,1),(207957,41869,20.00,0.00,2),(207958,41869,0.00,0.00,3),(207959,41869,2.00,0.00,4),(207960,41869,1.00,0.00,5),(207961,41870,20.00,0.00,1),(207962,41870,20.00,0.00,2),(207963,41870,0.00,0.00,3),(207964,41870,0.00,0.00,4),(207965,41870,0.00,0.00,5),(207966,41871,2.00,20000.00,1),(207967,41871,20.00,0.00,2),(207968,41871,2.50,0.00,3),(207969,41871,2.00,0.00,4),(207970,41871,0.00,0.00,5),(207971,41872,2.00,50000.00,1),(207972,41872,20.00,0.00,2),(207973,41872,0.00,0.00,3),(207974,41872,2.00,0.00,4),(207975,41872,0.00,0.00,5),(207976,41873,2.00,50000.00,1),(207977,41873,20.00,0.00,2),(207978,41873,0.00,0.00,3),(207979,41873,2.00,0.00,4),(207980,41873,1.00,0.00,5),(207981,41874,2.00,50000.00,1),(207982,41874,20.00,0.00,2),(207983,41874,0.00,0.00,3),(207984,41874,0.00,0.00,4),(207985,41874,0.00,0.00,5),(207986,41875,2.00,50000.00,1),(207987,41875,20.00,0.00,2),(207988,41875,0.00,0.00,3),(207989,41875,0.00,0.00,4),(207990,41875,0.00,0.00,5),(207991,41876,2.00,75000.00,1),(207992,41876,20.00,0.00,2),(207993,41876,0.00,0.00,3),(207994,41876,0.00,0.00,4),(207995,41876,0.00,0.00,5),(207996,41877,10.00,30000.00,1),(207997,41877,20.00,0.00,2),(207998,41877,0.00,0.00,3),(207999,41877,0.00,0.00,4),(208000,41877,0.00,0.00,5),(208001,41878,20.00,120000.00,1),(208002,41878,20.00,0.00,2),(208003,41878,2.50,0.00,3),(208004,41878,2.00,0.00,4),(208005,41878,0.00,0.00,5),(208006,41879,20.00,120000.00,1),(208007,41879,20.00,0.00,2),(208008,41879,0.00,0.00,3),(208009,41879,2.00,0.00,4),(208010,41879,0.00,0.00,5),(208011,41880,20.00,120000.00,1),(208012,41880,20.00,0.00,2),(208013,41880,0.00,0.00,3),(208014,41880,2.00,0.00,4),(208015,41880,1.00,0.00,5),(208016,41881,20.00,120000.00,1),(208017,41881,20.00,0.00,2),(208018,41881,0.00,0.00,3),(208019,41881,0.00,0.00,4),(208020,41881,0.00,0.00,5),(208021,41882,10.00,120000.00,1),(208022,41882,20.00,0.00,2),(208023,41882,0.00,0.00,3),(208024,41882,0.00,0.00,4),(208025,41882,0.00,0.00,5),(208026,41883,10.00,180000.00,1),(208027,41883,20.00,0.00,2),(208028,41883,0.00,0.00,3),(208029,41883,0.00,0.00,4),(208030,41883,0.00,0.00,5),(208031,41884,10.00,120000.00,1),(208032,41884,20.00,0.00,2),(208033,41884,0.00,0.00,3),(208034,41884,2.00,0.00,4),(208035,41884,1.00,0.00,5),(208036,41885,10.00,120000.00,1),(208037,41885,20.00,0.00,2),(208038,41885,0.00,0.00,3),(208039,41885,0.00,0.00,4),(208040,41885,0.00,0.00,5),(208041,41886,2.00,120000.00,1),(208042,41886,20.00,0.00,2),(208043,41886,0.00,0.00,3),(208044,41886,0.00,0.00,4),(208045,41886,0.00,0.00,5),(208046,41887,2.00,180000.00,1),(208047,41887,20.00,0.00,2),(208048,41887,0.00,0.00,3),(208049,41887,0.00,0.00,4),(208050,41887,0.00,0.00,5),(208051,41888,30.00,2500.00,1),(208052,41888,20.00,0.00,2),(208053,41888,2.50,0.00,3),(208054,41888,2.00,0.00,4),(208055,41888,0.00,0.00,5),(208056,41889,30.00,2500.00,1),(208057,41889,20.00,0.00,2),(208058,41889,0.00,0.00,3),(208059,41889,2.00,0.00,4),(208060,41889,0.00,0.00,5),(208061,41890,30.00,2500.00,1),(208062,41890,20.00,0.00,2),(208063,41890,0.00,0.00,3),(208064,41890,2.00,0.00,4),(208065,41890,1.00,0.00,5),(208066,41891,30.00,2500.00,1),(208067,41891,20.00,0.00,2),(208068,41891,0.00,0.00,3),(208069,41891,0.00,0.00,4),(208070,41891,0.00,0.00,5),(208071,41892,30.00,5000.00,1),(208072,41892,20.00,0.00,2),(208073,41892,0.00,0.00,3),(208074,41892,0.00,0.00,4),(208075,41892,0.00,0.00,5),(208076,41893,30.00,5000.00,1),(208077,41893,20.00,0.00,2),(208078,41893,2.50,0.00,3),(208079,41893,2.00,0.00,4),(208080,41893,0.00,0.00,5),(208081,41894,30.00,5000.00,1),(208082,41894,20.00,0.00,2),(208083,41894,0.00,0.00,3),(208084,41894,2.00,0.00,4),(208085,41894,0.00,0.00,5),(208086,41895,30.00,5000.00,1),(208087,41895,20.00,0.00,2),(208088,41895,0.00,0.00,3),(208089,41895,2.00,0.00,4),(208090,41895,1.00,0.00,5),(208091,41896,30.00,5000.00,1),(208092,41896,20.00,0.00,2),(208093,41896,0.00,0.00,3),(208094,41896,0.00,0.00,4),(208095,41896,0.00,0.00,5),(208096,41897,30.00,10000.00,1),(208097,41897,20.00,0.00,2),(208098,41897,0.00,0.00,3),(208099,41897,0.00,0.00,4),(208100,41897,0.00,0.00,5),(208101,41898,20.00,2500.00,1),(208102,41898,20.00,0.00,2),(208103,41898,2.50,0.00,3),(208104,41898,2.00,0.00,4),(208105,41898,0.00,0.00,5),(208106,41899,20.00,2500.00,1),(208107,41899,20.00,0.00,2),(208108,41899,0.00,0.00,3),(208109,41899,2.00,0.00,4),(208110,41899,0.00,0.00,5),(208111,41900,20.00,2500.00,1),(208112,41900,20.00,0.00,2),(208113,41900,0.00,0.00,3),(208114,41900,2.00,0.00,4),(208115,41900,1.00,0.00,5),(208116,41901,20.00,0.00,1),(208117,41901,20.00,0.00,2),(208118,41901,0.00,0.00,3),(208119,41901,2.00,0.00,4),(208120,41901,1.00,0.00,5),(208121,41902,10.00,0.00,1),(208122,41902,20.00,0.00,2),(208123,41902,0.00,0.00,3),(208124,41902,0.00,0.00,4),(208125,41902,0.00,0.00,5),(208126,41903,10.00,0.00,1),(208127,41903,20.00,0.00,2),(208128,41903,0.00,0.00,3),(208129,41903,0.00,0.00,4),(208130,41903,0.00,0.00,5),(208131,41904,10.00,1000.00,1),(208132,41904,20.00,0.00,2),(208133,41904,2.50,0.00,3),(208134,41904,2.00,0.00,4),(208135,41904,0.00,0.00,5),(208136,41905,10.00,1000.00,1),(208137,41905,20.00,0.00,2),(208138,41905,0.00,0.00,3),(208139,41905,2.00,0.00,4),(208140,41905,0.00,0.00,5),(208141,41906,10.00,1000.00,1),(208142,41906,20.00,0.00,2),(208143,41906,0.00,0.00,3),(208144,41906,2.00,0.00,4),(208145,41906,1.00,0.00,5),(208146,41907,10.00,1000.00,1),(208147,41907,20.00,0.00,2),(208148,41907,0.00,0.00,3),(208149,41907,0.00,0.00,4),(208150,41907,0.00,0.00,5),(208151,41908,5.00,2500.00,1),(208152,41908,20.00,0.00,2),(208153,41908,2.50,0.00,3),(208154,41908,2.00,0.00,4),(208155,41908,0.00,0.00,5),(208156,41909,5.00,2500.00,1),(208157,41909,20.00,0.00,2),(208158,41909,0.00,0.00,3),(208159,41909,2.00,0.00,4),(208160,41909,0.00,0.00,5),(208161,41910,5.00,2500.00,1),(208162,41910,20.00,0.00,2),(208163,41910,0.00,0.00,3),(208164,41910,2.00,0.00,4),(208165,41910,1.00,0.00,5),(208166,41911,10.00,2500.00,1),(208167,41911,20.00,0.00,2),(208168,41911,0.00,0.00,3),(208169,41911,2.00,0.00,4),(208170,41911,1.00,0.00,5),(208171,41912,10.00,2500.00,1),(208172,41912,20.00,0.00,2),(208173,41912,0.00,0.00,3),(208174,41912,0.00,0.00,4),(208175,41912,0.00,0.00,5),(208176,41913,10.00,5000.00,1),(208177,41913,20.00,0.00,2),(208178,41913,0.00,0.00,3),(208179,41913,0.00,0.00,4),(208180,41913,0.00,0.00,5),(208181,41914,20.00,2500.00,1),(208182,41914,20.00,0.00,2),(208183,41914,0.00,0.00,3),(208184,41914,2.00,0.00,4),(208185,41914,1.00,0.00,5),(208186,41915,10.00,2500.00,1),(208187,41915,20.00,0.00,2),(208188,41915,0.00,0.00,3),(208189,41915,0.00,0.00,4),(208190,41915,0.00,0.00,5),(208191,41916,5.00,20000.00,1),(208192,41916,20.00,0.00,2),(208193,41916,2.50,0.00,3),(208194,41916,2.00,0.00,4),(208195,41916,1.00,0.00,5),(208196,41917,5.00,20000.00,1),(208197,41917,20.00,0.00,2),(208198,41917,0.00,0.00,3),(208199,41917,2.00,0.00,4),(208200,41917,0.00,0.00,5),(208201,41918,5.00,20000.00,1),(208202,41918,20.00,0.00,2),(208203,41918,0.00,0.00,3),(208204,41918,2.00,0.00,4),(208205,41918,1.00,0.00,5),(208206,41919,10.00,20000.00,1),(208207,41919,20.00,0.00,2),(208208,41919,0.00,0.00,3),(208209,41919,2.00,0.00,4),(208210,41919,1.00,0.00,5),(208211,41920,10.00,20000.00,1),(208212,41920,20.00,0.00,2),(208213,41920,0.00,0.00,3),(208214,41920,0.00,0.00,4),(208215,41920,0.00,0.00,5),(208216,41921,10.00,30000.00,1),(208217,41921,20.00,0.00,2),(208218,41921,0.00,0.00,3),(208219,41921,0.00,0.00,4),(208220,41921,0.00,0.00,5),(208221,41922,1.00,20000.00,1),(208222,41922,20.00,0.00,2),(208223,41922,2.50,0.00,3),(208224,41922,2.00,0.00,4),(208225,41922,0.00,0.00,5),(208226,41923,1.00,20000.00,1),(208227,41923,20.00,0.00,2),(208228,41923,0.00,0.00,3),(208229,41923,2.00,0.00,4),(208230,41923,0.00,0.00,5),(208231,41924,1.00,20000.00,1),(208232,41924,20.00,0.00,2),(208233,41924,0.00,0.00,3),(208234,41924,2.00,0.00,4),(208235,41924,1.00,0.00,5),(208236,41925,1.00,20000.00,1),(208237,41925,20.00,0.00,2),(208238,41925,0.00,0.00,3),(208239,41925,0.00,0.00,4),(208240,41925,0.00,0.00,5),(208241,41926,2.00,20000.00,1),(208242,41926,20.00,0.00,2),(208243,41926,0.00,0.00,3),(208244,41926,0.00,0.00,4),(208245,41926,0.00,0.00,5),(208246,41927,2.00,75000.00,1),(208247,41927,20.00,0.00,2),(208248,41927,0.00,0.00,3),(208249,41927,0.00,0.00,4),(208250,41927,0.00,0.00,5),(208251,41928,1.00,20000.00,1),(208252,41928,20.00,0.00,2),(208253,41928,2.50,0.00,3),(208254,41928,2.00,0.00,4),(208255,41928,0.00,0.00,5),(208256,41929,1.00,20000.00,1),(208257,41929,20.00,0.00,2),(208258,41929,0.00,0.00,3),(208259,41929,2.00,0.00,4),(208260,41929,0.00,0.00,5),(208261,41930,1.00,20000.00,1),(208262,41930,20.00,0.00,2),(208263,41930,0.00,0.00,3),(208264,41930,2.00,0.00,4),(208265,41930,1.00,0.00,5),(208266,41931,1.00,20000.00,1),(208267,41931,20.00,0.00,2),(208268,41931,0.00,0.00,3),(208269,41931,0.00,0.00,4),(208270,41931,0.00,0.00,5),(208271,41932,2.00,50000.00,1),(208272,41932,20.00,0.00,2),(208273,41932,0.00,0.00,3),(208274,41932,0.00,0.00,4),(208275,41932,0.00,0.00,5),(208276,41933,2.00,75000.00,1),(208277,41933,20.00,0.00,2),(208278,41933,0.00,0.00,3),(208279,41933,0.00,0.00,4),(208280,41933,0.00,0.00,5),(208281,41934,2.00,50000.00,1),(208282,41934,20.00,0.00,2),(208283,41934,0.00,0.00,3),(208284,41934,0.00,0.00,4),(208285,41934,0.00,0.00,5),(208286,41935,0.00,0.00,1),(208287,41935,20.00,0.00,2),(208288,41935,0.00,0.00,3),(208289,41935,0.00,0.00,4),(208290,41935,0.00,0.00,5),(208291,41936,20.00,75000.00,1),(208292,41936,20.00,0.00,2),(208293,41936,0.00,0.00,3),(208294,41936,0.00,0.00,4),(208295,41936,0.00,0.00,5),(208296,41937,1.00,50000.00,1),(208297,41937,20.00,0.00,2),(208298,41937,0.00,0.00,3),(208299,41937,0.00,0.00,4),(208300,41937,0.00,0.00,5),(208301,41938,0.00,0.00,1),(208302,41938,20.00,0.00,2),(208303,41938,0.00,0.00,3),(208304,41938,0.00,0.00,4),(208305,41938,0.00,0.00,5),(208306,41939,20.00,75000.00,1),(208307,41939,20.00,0.00,2),(208308,41939,0.00,0.00,3),(208309,41939,0.00,0.00,4),(208310,41939,0.00,0.00,5),(208311,41940,10.00,5000.00,1),(208312,41940,20.00,0.00,2),(208313,41940,10.00,0.00,3),(208314,41940,2.00,0.00,4),(208315,41940,0.00,0.00,5),(208316,41941,10.00,5000.00,1),(208317,41941,20.00,0.00,2),(208318,41941,0.00,0.00,3),(208319,41941,0.00,0.00,4),(208320,41941,0.00,0.00,5),(208321,41942,10.00,20000.00,1),(208322,41942,20.00,0.00,2),(208323,41942,0.00,0.00,3),(208324,41942,0.00,0.00,4),(208325,41942,0.00,0.00,5),(208326,41943,10.00,5000.00,1),(208327,41943,20.00,0.00,2),(208328,41943,10.00,10000000.00,3),(208329,41943,2.00,0.00,4),(208330,41943,1.00,0.00,5),(208331,41944,10.00,2500.00,1),(208332,41944,20.00,0.00,2),(208333,41944,10.00,0.00,3),(208334,41944,2.00,0.00,4),(208335,41944,0.00,0.00,5),(208336,41945,10.00,2500.00,1),(208337,41945,20.00,0.00,2),(208338,41945,10.00,10000000.00,3),(208339,41945,2.00,0.00,4),(208340,41945,1.00,0.00,5),(208341,41946,10.00,2500.00,1),(208342,41946,20.00,0.00,2),(208343,41946,0.00,0.00,3),(208344,41946,0.00,0.00,4),(208345,41946,0.00,0.00,5),(208346,41947,10.00,5000.00,1),(208347,41947,20.00,0.00,2),(208348,41947,0.00,0.00,3),(208349,41947,0.00,0.00,4),(208350,41947,0.00,0.00,5),(208351,41948,10.00,5000.00,1),(208352,41948,20.00,0.00,2),(208353,41948,10.00,0.00,3),(208354,41948,2.00,0.00,4),(208355,41948,0.00,0.00,5),(208356,41949,10.00,5000.00,1),(208357,41949,20.00,0.00,2),(208358,41949,10.00,10000000.00,3),(208359,41949,2.00,0.00,4),(208360,41949,1.00,0.00,5),(208361,41950,10.00,5000.00,1),(208362,41950,20.00,0.00,2),(208363,41950,0.00,0.00,3),(208364,41950,0.00,0.00,4),(208365,41950,0.00,0.00,5),(208366,41951,10.00,100000.00,1),(208367,41951,20.00,0.00,2),(208368,41951,10.00,0.00,3),(208369,41951,2.00,0.00,4),(208370,41951,0.00,0.00,5),(208371,41952,10.00,100000.00,1),(208372,41952,20.00,0.00,2),(208373,41952,10.00,10000000.00,3),(208374,41952,2.00,0.00,4),(208375,41952,1.00,0.00,5),(208376,41953,10.00,100000.00,1),(208377,41953,20.00,0.00,2),(208378,41953,0.00,0.00,3),(208379,41953,0.00,0.00,4),(208380,41953,0.00,0.00,5),(208381,41954,10.00,200000.00,1),(208382,41954,20.00,0.00,2),(208383,41954,0.00,0.00,3),(208384,41954,0.00,0.00,4),(208385,41954,0.00,0.00,5),(208386,41955,20.00,2500.00,1),(208387,41955,20.00,0.00,2),(208388,41955,10.00,0.00,3),(208389,41955,2.00,0.00,4),(208390,41955,0.00,0.00,5),(208391,41956,20.00,0.00,1),(208392,41956,20.00,0.00,2),(208393,41956,10.00,10000000.00,3),(208394,41956,2.00,0.00,4),(208395,41956,1.00,0.00,5),(208396,41957,20.00,0.00,1),(208397,41957,20.00,0.00,2),(208398,41957,0.00,0.00,3),(208399,41957,0.00,0.00,4),(208400,41957,0.00,0.00,5),(208401,41958,20.00,0.00,1),(208402,41958,20.00,0.00,2),(208403,41958,10.00,0.00,3),(208404,41958,2.00,0.00,4),(208405,41958,0.00,0.00,5),(208406,41959,20.00,0.00,1),(208407,41959,20.00,0.00,2),(208408,41959,10.00,10000000.00,3),(208409,41959,2.00,0.00,4),(208410,41959,1.00,0.00,5),(208411,41960,20.00,0.00,1),(208412,41960,20.00,0.00,2),(208413,41960,0.00,0.00,3),(208414,41960,0.00,0.00,4),(208415,41960,0.00,0.00,5),(208416,41961,2.00,20000.00,1),(208417,41961,20.00,0.00,2),(208418,41961,10.00,0.00,3),(208419,41961,2.00,0.00,4),(208420,41961,0.00,0.00,5),(208421,41962,2.00,20000.00,1),(208422,41962,20.00,0.00,2),(208423,41962,10.00,10000000.00,3),(208424,41962,2.00,0.00,4),(208425,41962,1.00,0.00,5),(208426,41963,2.00,20000.00,1),(208427,41963,20.00,0.00,2),(208428,41963,0.00,0.00,3),(208429,41963,0.00,0.00,4),(208430,41963,0.00,0.00,5),(208431,41964,2.00,20000.00,1),(208432,41964,20.00,0.00,2),(208433,41964,0.00,0.00,3),(208434,41964,0.00,0.00,4),(208435,41964,0.00,0.00,5),(208436,41965,2.00,75000.00,1),(208437,41965,20.00,0.00,2),(208438,41965,0.00,0.00,3),(208439,41965,0.00,0.00,4),(208440,41965,0.00,0.00,5),(208441,41966,20.00,120000.00,1),(208442,41966,20.00,0.00,2),(208443,41966,10.00,0.00,3),(208444,41966,2.00,0.00,4),(208445,41966,0.00,0.00,5),(208446,41967,20.00,120000.00,1),(208447,41967,20.00,0.00,2),(208448,41967,10.00,10000000.00,3),(208449,41967,2.00,0.00,4),(208450,41967,1.00,0.00,5),(208451,41968,20.00,120000.00,1),(208452,41968,20.00,0.00,2),(208453,41968,0.00,0.00,3),(208454,41968,0.00,0.00,4),(208455,41968,0.00,0.00,5),(208456,41969,10.00,120000.00,1),(208457,41969,20.00,0.00,2),(208458,41969,0.00,0.00,3),(208459,41969,0.00,0.00,4),(208460,41969,0.00,0.00,5),(208461,41970,10.00,180000.00,1),(208462,41970,20.00,0.00,2),(208463,41970,0.00,0.00,3),(208464,41970,0.00,0.00,4),(208465,41970,0.00,0.00,5),(208466,41971,10.00,120000.00,1),(208467,41971,20.00,0.00,2),(208468,41971,10.00,10000000.00,3),(208469,41971,2.00,0.00,4),(208470,41971,1.00,0.00,5),(208471,41972,10.00,120000.00,1),(208472,41972,20.00,0.00,2),(208473,41972,0.00,0.00,3),(208474,41972,0.00,0.00,4),(208475,41972,0.00,0.00,5),(208476,41973,2.00,120000.00,1),(208477,41973,20.00,0.00,2),(208478,41973,0.00,0.00,3),(208479,41973,0.00,0.00,4),(208480,41973,0.00,0.00,5),(208481,41974,2.00,180000.00,1),(208482,41974,20.00,0.00,2),(208483,41974,0.00,0.00,3),(208484,41974,0.00,0.00,4),(208485,41974,0.00,0.00,5),(208486,41975,30.00,2500.00,1),(208487,41975,20.00,0.00,2),(208488,41975,10.00,0.00,3),(208489,41975,2.00,0.00,4),(208490,41975,0.00,0.00,5),(208491,41976,30.00,2500.00,1),(208492,41976,20.00,0.00,2),(208493,41976,10.00,10000000.00,3),(208494,41976,2.00,0.00,4),(208495,41976,1.00,0.00,5),(208496,41977,30.00,2500.00,1),(208497,41977,20.00,0.00,2),(208498,41977,0.00,0.00,3),(208499,41977,0.00,0.00,4),(208500,41977,0.00,0.00,5),(208501,41978,30.00,5000.00,1),(208502,41978,20.00,0.00,2),(208503,41978,0.00,0.00,3),(208504,41978,0.00,0.00,4),(208505,41978,0.00,0.00,5),(208506,41979,30.00,5000.00,1),(208507,41979,20.00,0.00,2),(208508,41979,10.00,0.00,3),(208509,41979,2.00,0.00,4),(208510,41979,0.00,0.00,5),(208511,41980,30.00,5000.00,1),(208512,41980,20.00,0.00,2),(208513,41980,10.00,10000000.00,3),(208514,41980,2.00,0.00,4),(208515,41980,1.00,0.00,5),(208516,41981,30.00,5000.00,1),(208517,41981,20.00,0.00,2),(208518,41981,0.00,0.00,3),(208519,41981,0.00,0.00,4),(208520,41981,0.00,0.00,5),(208521,41982,30.00,10000.00,1),(208522,41982,20.00,0.00,2),(208523,41982,0.00,0.00,3),(208524,41982,0.00,0.00,4),(208525,41982,0.00,0.00,5),(208526,41983,20.00,2500.00,1),(208527,41983,20.00,0.00,2),(208528,41983,10.00,0.00,3),(208529,41983,2.00,0.00,4),(208530,41983,0.00,0.00,5),(208531,41984,20.00,2500.00,1),(208532,41984,20.00,0.00,2),(208533,41984,10.00,10000000.00,3),(208534,41984,2.00,0.00,4),(208535,41984,1.00,0.00,5),(208536,41985,20.00,0.00,1),(208537,41985,20.00,0.00,2),(208538,41985,10.00,10000000.00,3),(208539,41985,2.00,0.00,4),(208540,41985,1.00,0.00,5),(208541,41986,10.00,0.00,1),(208542,41986,20.00,0.00,2),(208543,41986,0.00,0.00,3),(208544,41986,0.00,0.00,4),(208545,41986,0.00,0.00,5),(208546,41987,10.00,1000.00,1),(208547,41987,20.00,0.00,2),(208548,41987,10.00,0.00,3),(208549,41987,2.00,0.00,4),(208550,41987,0.00,0.00,5),(208551,41988,10.00,1000.00,1),(208552,41988,20.00,0.00,2),(208553,41988,10.00,10000000.00,3),(208554,41988,2.00,0.00,4),(208555,41988,1.00,0.00,5),(208556,41989,10.00,1000.00,1),(208557,41989,20.00,0.00,2),(208558,41989,0.00,0.00,3),(208559,41989,0.00,0.00,4),(208560,41989,0.00,0.00,5),(208561,41990,5.00,2500.00,1),(208562,41990,20.00,0.00,2),(208563,41990,2.00,0.00,3),(208564,41990,0.00,0.00,4),(208565,41990,0.00,0.00,5),(208566,41991,5.00,2500.00,1),(208567,41991,20.00,0.00,2),(208568,41991,10.00,10000000.00,3),(208569,41991,2.00,0.00,4),(208570,41991,1.00,0.00,5),(208571,41992,10.00,2500.00,1),(208572,41992,20.00,0.00,2),(208573,41992,10.00,10000000.00,3),(208574,41992,2.00,0.00,4),(208575,41992,1.00,0.00,5),(208576,41993,10.00,2500.00,1),(208577,41993,20.00,0.00,2),(208578,41993,0.00,0.00,3),(208579,41993,0.00,0.00,4),(208580,41993,0.00,0.00,5),(208581,41994,10.00,5000.00,1),(208582,41994,20.00,0.00,2),(208583,41994,0.00,0.00,3),(208584,41994,0.00,0.00,4),(208585,41994,0.00,0.00,5),(208586,41995,20.00,2500.00,1),(208587,41995,20.00,0.00,2),(208588,41995,10.00,10000000.00,3),(208589,41995,2.00,0.00,4),(208590,41995,1.00,0.00,5),(208591,41996,10.00,2500.00,1),(208592,41996,20.00,0.00,2),(208593,41996,0.00,0.00,3),(208594,41996,0.00,0.00,4),(208595,41996,0.00,0.00,5),(208596,41998,5.00,20000.00,1),(208597,41998,20.00,0.00,2),(208598,41998,10.00,0.00,3),(208599,41998,2.00,0.00,4),(208600,41998,0.00,0.00,5),(208601,41999,5.00,20000.00,1),(208602,41999,20.00,0.00,2),(208603,41999,10.00,10000000.00,3),(208604,41999,2.00,0.00,4),(208605,41999,1.00,0.00,5),(208606,42000,10.00,20000.00,1),(208607,42000,20.00,0.00,2),(208608,42000,10.00,10000000.00,3),(208609,42000,2.00,0.00,4),(208610,42000,1.00,0.00,5),(208611,42001,10.00,20000.00,1),(208612,42001,20.00,0.00,2),(208613,42001,0.00,0.00,3),(208614,42001,0.00,0.00,4),(208615,42001,0.00,0.00,5),(208616,42002,10.00,30000.00,1),(208617,42002,20.00,0.00,2),(208618,42002,0.00,0.00,3),(208619,42002,0.00,0.00,4),(208620,42002,0.00,0.00,5),(208621,42003,1.00,20000.00,1),(208622,42003,20.00,0.00,2),(208623,42003,10.00,0.00,3),(208624,42003,2.00,0.00,4),(208625,42003,0.00,0.00,5),(208626,42004,1.00,20000.00,1),(208627,42004,20.00,0.00,2),(208628,42004,10.00,10000000.00,3),(208629,42004,2.00,0.00,4),(208630,42004,1.00,0.00,5),(208631,42005,1.00,20000.00,1),(208632,42005,20.00,0.00,2),(208633,42005,0.00,0.00,3),(208634,42005,0.00,0.00,4),(208635,42005,0.00,0.00,5),(208636,42006,2.00,20000.00,1),(208637,42006,20.00,0.00,2),(208638,42006,0.00,0.00,3),(208639,42006,0.00,0.00,4),(208640,42006,0.00,0.00,5),(208641,42007,2.00,75000.00,1),(208642,42007,20.00,0.00,2),(208643,42007,0.00,0.00,3),(208644,42007,0.00,0.00,4),(208645,42007,0.00,0.00,5),(208646,42008,1.00,20000.00,1),(208647,42008,20.00,0.00,2),(208648,42008,10.00,0.00,3),(208649,42008,2.00,0.00,4),(208650,42008,0.00,0.00,5),(208651,42009,1.00,50000.00,1),(208652,42009,20.00,0.00,2),(208653,42009,10.00,10000000.00,3),(208654,42009,2.00,0.00,4),(208655,42009,1.00,0.00,5),(208656,42010,1.00,50000.00,1),(208657,42010,20.00,0.00,2),(208658,42010,0.00,0.00,3),(208659,42010,0.00,0.00,4),(208660,42010,0.00,0.00,5),(208661,42011,2.00,50000.00,1),(208662,42011,20.00,0.00,2),(208663,42011,0.00,0.00,3),(208664,42011,0.00,0.00,4),(208665,42011,0.00,0.00,5),(208666,42012,2.00,75000.00,1),(208667,42012,20.00,0.00,2),(208668,42012,0.00,0.00,3),(208669,42012,0.00,0.00,4),(208670,42012,0.00,0.00,5);
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
INSERT INTO `voucher_cc_trans` VALUES (21,1089,'0LDR1089',9,0.00,1,0,0),(26,1063,'0LDR1063',1,6084.00,1,0,0),(33,1063,'0LDR1063',2,155.00,1,0,0),(33,1089,'0LDR1089',3,800.00,2,0,0),(37,1063,'0LDR1063',4,313.00,1,0,0),(38,1063,'0LDR1063',4,514.00,1,0,0),(39,1089,'0LDR1089',9,0.00,1,0,0),(41,1089,'0LDR1089',3,755.00,1,0,0),(47,1063,'0LDR1063',2,310.00,1,0,0),(48,1063,'0LDR1063',2,560.00,1,0,0),(50,1089,'0LDR1089',3,800.00,1,0,0),(50,1063,'0LDR1063',2,1400.00,2,0,0),(51,1063,'0LDR1063',4,170.00,1,0,0),(55,1063,'0LDR1063',5,175.00,1,0,0),(57,1063,'0LDR1063',5,140.00,1,0,0),(59,1063,'0LDR1063',4,120.00,1,0,0),(62,1063,'0LDR1063',2,21390.00,1,0,0),(63,1063,'0LDR1063',6,152.00,1,0,0),(64,1063,'0LDR1063',2,200.00,1,0,0),(78,1063,'0LDR1063',2,1035.00,1,0,0),(80,1063,'0LDR1063',4,101.00,1,0,0),(81,1063,'0LDR1063',4,340.00,1,0,0),(82,1063,'0LDR1063',2,360.00,1,0,0),(84,1063,'0LDR1063',2,2953.00,1,0,0),(90,1063,'0LDR1063',2,310.00,1,0,0),(94,1063,'0LDR1063',7,3300.00,1,0,0),(100,1063,'0LDR1063',2,1110.00,1,0,0),(100,1089,'0LDR1089',3,800.00,2,0,0),(102,1063,'0LDR1063',5,8200.00,1,0,0),(105,1063,'0LDR1063',2,520.00,1,0,0),(106,1063,'0LDR1063',2,396.00,1,0,0),(107,1063,'0LDR1063',2,630.00,1,0,0),(108,1063,'0LDR1063',8,2499.00,1,0,0),(112,1063,'0LDR1063',6,600.00,1,0,0),(114,1089,'0LDR1089',9,800.00,1,0,0),(116,1089,'0LDR1089',9,0.00,1,0,0),(121,1063,'0LDR1063',8,2974.00,1,0,0),(128,1063,'0LDR1063',2,500.00,1,0,0),(129,1089,'0LDR1089',9,0.00,1,0,0),(130,1063,'0LDR1063',2,350.00,1,0,0),(132,1063,'0LDR1063',8,9136.00,1,0,0),(133,1063,'0LDR1063',2,1669.00,1,0,0),(133,1089,'0LDR1089',9,755.00,2,0,0),(134,1063,'0LDR1063',2,64.00,1,0,0),(135,1063,'0LDR1063',2,4544.00,1,0,0),(140,1063,'0LDR1063',8,3480.00,1,0,0),(141,1063,'0LDR1063',2,1120.00,1,0,0),(142,1063,'0LDR1063',2,1243.00,1,0,0),(143,1063,'0LDR1063',2,1220.00,1,0,0),(144,1063,'0LDR1063',4,180.00,1,0,0),(146,1063,'0LDR1063',6,367.00,1,0,0),(175,1089,'0LDR1089',3,0.00,1,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1157 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_master_trans`
--

LOCK TABLES `voucher_master_trans` WRITE;
/*!40000 ALTER TABLE `voucher_master_trans` DISABLE KEYS */;
INSERT INTO `voucher_master_trans` VALUES (1,'2015-04-01 00:00:00',2,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Birthday Gifts',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(2,'2015-04-01 00:00:00',2,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'Fish',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(3,'2015-04-01 00:00:00',1,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Fruits',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(4,'2015-04-01 00:00:00',1,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'Napkins',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(5,'2015-04-01 00:00:00',2,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'Sister Pocket Money',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(6,'2015-04-01 00:00:00',2,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Photo',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(7,'2015-04-01 00:00:00',1,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'Cotton',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(8,'2015-04-01 00:00:00',2,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'Mass',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(9,'2015-04-01 00:00:00',2,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'Cake',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(10,'2015-04-01 00:00:00',2,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'Oil',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(11,'2015-04-01 00:00:00',1,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'To Doctor',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(12,'2015-04-01 00:00:00',2,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from province',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(13,'2015-04-01 00:00:00',1,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'Shutings',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(14,'2015-04-01 00:00:00',2,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Gas Cylender',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(15,'2015-04-01 00:00:00',1,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Medical Expenses',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(16,'2015-04-01 00:00:00',1,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'New Leader Subscriptions',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(17,'2015-04-01 00:00:00',2,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'Postage',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(18,'2015-04-01 00:00:00',1,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'Travel To Chennai',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(19,'2015-04-01 00:00:00',1,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'Shutings',1,'2015-04-01 00:00:00','2015-04-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(20,'2015-04-02 00:00:00',1,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'Service Charge',1,'2015-04-02 00:00:00','2015-04-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(21,'2015-04-02 00:00:00',2,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'cook Salary',1,'2015-04-02 00:00:00','2015-04-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(22,'2015-04-02 00:00:00',1,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'Car registration fee',1,'2015-04-02 00:00:00','2015-04-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(23,'2015-04-02 00:00:00',1,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'Telephone recharge fee',1,'2015-04-02 00:00:00','2015-04-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(24,'2015-04-02 00:00:00',2,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'Cook Salary',1,'2015-04-02 00:00:00','2015-04-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(25,'2015-04-03 00:00:00',2,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for eggs',1,'2015-04-03 00:00:00','2015-04-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(26,'2015-04-03 00:00:00',1,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'Electronic cable fee',1,'2015-04-03 00:00:00','2015-04-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(27,'2015-04-04 00:00:00',1,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid  for charger',1,'2015-04-04 00:00:00','2015-04-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(28,'2015-04-04 00:00:00',1,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Sr. Chustina (Salary)',1,'2015-04-04 00:00:00','2015-04-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(29,'2015-04-04 00:00:00',2,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Gas',1,'2015-04-04 00:00:00','2015-04-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(30,'2015-04-04 00:00:00',1,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for sanitary items ',1,'2015-04-04 00:00:00','2015-04-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(31,'2015-04-04 00:00:00',2,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for vegtables fruits & fish ',1,'2015-04-04 00:00:00','2015-04-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(32,'2015-04-04 00:00:00',3,'01','RC','GN',1,21,'F',96000.00,23,1.00,23,'Being towards foreign contribution received form Propagandha fide Rome',1,'2015-04-04 00:00:00','2015-04-04 00:00:00',0,0,96000.00,96000.00,'PROPAGANDHA FIDE ROME, PROPAGANDHA FIDE ROME',0,0,'','',0,''),(33,'2015-04-04 00:00:00',2,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for drinks ',1,'2015-04-04 00:00:00','2015-04-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(34,'2015-04-04 00:00:00',2,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for cake',1,'2015-04-04 00:00:00','2015-04-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(35,'2015-04-04 00:00:00',1,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for chocolates',1,'2015-04-04 00:00:00','2015-04-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(36,'2015-04-05 00:00:00',1,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for colour pen',1,'2015-04-05 00:00:00','2015-04-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(37,'2015-04-05 00:00:00',1,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for seminar',1,'2015-04-05 00:00:00','2015-04-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(38,'2015-04-05 00:00:00',1,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'travel to chennai',1,'2015-04-05 00:00:00','2015-04-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(39,'2015-04-05 00:00:00',1,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'From Koovathur and Nandhapakkam',1,'2015-04-05 00:00:00','2015-04-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(40,'2015-04-06 00:00:00',1,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Diesel',1,'2015-04-06 00:00:00','2015-04-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(41,'2015-04-06 00:00:00',1,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Diesel',1,'2015-04-06 00:00:00','2015-04-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(42,'2015-04-06 00:00:00',2,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Gas',1,'2015-04-06 00:00:00','2015-04-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(43,'2015-04-06 00:00:00',1,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'contribution  to provincialate',1,'2015-04-06 00:00:00','2015-04-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(44,'2015-04-07 00:00:00',1,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'Novitiate maintenance',1,'2015-04-07 00:00:00','2015-04-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(45,'2015-04-07 00:00:00',1,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'Travel to Hydrabed',1,'2015-04-07 00:00:00','2015-04-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(46,'2015-04-07 00:00:00',2,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for newspaper',1,'2015-04-07 00:00:00','2015-04-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(47,'2015-04-07 00:00:00',2,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for milk ',1,'2015-04-07 00:00:00','2015-04-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(48,'2015-04-07 00:00:00',1,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for mobile services',1,'2015-04-07 00:00:00','2015-04-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(49,'2015-04-07 00:00:00',1,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for purchase of books',1,'2015-04-07 00:00:00','2015-04-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(50,'2015-04-07 00:00:00',1,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for books',1,'2015-04-07 00:00:00','2015-04-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(51,'2015-04-07 00:00:00',2,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for medicine ',1,'2015-04-07 00:00:00','2015-04-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(52,'2015-04-07 00:00:00',1,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for books',1,'2015-04-07 00:00:00','2015-04-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(53,'2015-04-07 00:00:00',2,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for chicken and fish',1,'2015-04-07 00:00:00','2015-04-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(54,'2015-04-07 00:00:00',1,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'Ticket Refunds',1,'2015-04-07 00:00:00','2015-04-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(55,'2015-04-07 00:00:00',1,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'Given to driver',1,'2015-04-07 00:00:00','2015-04-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(56,'2015-04-07 00:00:00',1,'04','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from Kovur community',1,'2015-04-07 00:00:00','2015-04-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(57,'2015-04-07 00:00:00',1,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for medicine ',1,'2015-04-07 00:00:00','2015-04-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(58,'2015-04-08 00:00:00',2,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for chicken ',1,'2015-04-08 00:00:00','2015-04-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(59,'2015-04-08 00:00:00',2,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid  for toll  fee',1,'2015-04-08 00:00:00','2015-04-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(60,'2015-04-08 00:00:00',1,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for memory card',1,'2015-04-08 00:00:00','2015-04-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(61,'2015-04-08 00:00:00',1,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for memory card',1,'2015-04-08 00:00:00','2015-04-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(62,'2015-04-08 00:00:00',1,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Diesel',1,'2015-04-08 00:00:00','2015-04-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(63,'2015-04-08 00:00:00',2,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Diesel',1,'2015-04-08 00:00:00','2015-04-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(64,'2015-04-08 00:00:00',2,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for cake',1,'2015-04-08 00:00:00','2015-04-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(65,'2015-04-09 00:00:00',2,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for vegtables',1,'2015-04-09 00:00:00','2015-04-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(66,'2015-04-09 00:00:00',1,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'travelled to chennai',1,'2015-04-09 00:00:00','2015-04-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(67,'2015-04-09 00:00:00',1,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for reservation charge ',1,'2015-04-09 00:00:00','2015-04-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(68,'2015-04-10 00:00:00',1,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelledl to chennai',1,'2015-04-10 00:00:00','2015-04-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(69,'2015-04-10 00:00:00',1,'05','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution by Ramnadu community',1,'2015-04-10 00:00:00','2015-04-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(70,'2015-04-10 00:00:00',1,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'Food items',1,'2015-04-10 00:00:00','2015-04-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(71,'2015-04-10 00:00:00',1,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelled to chennai',1,'2015-04-10 00:00:00','2015-04-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(72,'2015-04-11 00:00:00',1,'41','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for medicine ',1,'2015-04-11 00:00:00','2015-04-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(73,'2015-04-11 00:00:00',1,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for printing ',1,'2015-04-11 00:00:00','2015-04-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(74,'2015-04-11 00:00:00',1,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for foot wears',1,'2015-04-11 00:00:00','2015-04-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(75,'2015-04-11 00:00:00',2,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Diesel',1,'2015-04-11 00:00:00','2015-04-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(76,'2015-04-11 00:00:00',1,'42','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for medicine ',1,'2015-04-11 00:00:00','2015-04-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(77,'2015-04-12 00:00:00',1,'46','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for coffee',1,'2015-04-12 00:00:00','2015-04-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(78,'2015-04-12 00:00:00',1,'45','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for seminar',1,'2015-04-12 00:00:00','2015-04-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(79,'2015-04-12 00:00:00',1,'43','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for recharge',1,'2015-04-12 00:00:00','2015-04-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(80,'2015-04-12 00:00:00',1,'44','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Fruits',1,'2015-04-12 00:00:00','2015-04-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(81,'2015-04-12 00:00:00',1,'47','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelled to chennai',1,'2015-04-12 00:00:00','2015-04-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(82,'2015-04-13 00:00:00',2,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for provision ',1,'2015-04-13 00:00:00','2015-04-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(83,'2015-04-13 00:00:00',2,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for birth day gift',1,'2015-04-13 00:00:00','2015-04-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(84,'2015-04-13 00:00:00',2,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for chicken ',1,'2015-04-13 00:00:00','2015-04-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(85,'2015-04-15 00:00:00',1,'48','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Diesel',1,'2015-04-15 00:00:00','2015-04-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(86,'2015-04-15 00:00:00',1,'49','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for PUC fitting',1,'2015-04-15 00:00:00','2015-04-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(87,'2015-04-16 00:00:00',2,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for cream ',1,'2015-04-16 00:00:00','2015-04-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(88,'2015-04-16 00:00:00',1,'51','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for medicine ',1,'2015-04-16 00:00:00','2015-04-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(89,'2015-04-16 00:00:00',1,'50','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for xerox',1,'2015-04-16 00:00:00','2015-04-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(90,'2015-04-16 00:00:00',2,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for photos',1,'2015-04-16 00:00:00','2015-04-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(91,'2015-04-17 00:00:00',1,'57','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for etables',1,'2015-04-17 00:00:00','2015-04-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(92,'2015-04-17 00:00:00',1,'56','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for biscuits',1,'2015-04-17 00:00:00','2015-04-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(93,'2015-04-17 00:00:00',1,'53','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for tiffin',1,'2015-04-17 00:00:00','2015-04-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(94,'2015-04-17 00:00:00',1,'58','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelled to chennai',1,'2015-04-17 00:00:00','2015-04-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(95,'2015-04-17 00:00:00',1,'54','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Auto',1,'2015-04-17 00:00:00','2015-04-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(96,'2015-04-17 00:00:00',1,'55','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for entrance ticket',1,'2015-04-17 00:00:00','2015-04-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(97,'2015-04-17 00:00:00',2,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for provision ',1,'2015-04-17 00:00:00','2015-04-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(98,'2015-04-17 00:00:00',2,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Petrol',1,'2015-04-17 00:00:00','2015-04-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(99,'2015-04-17 00:00:00',1,'52','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for tiffin',1,'2015-04-17 00:00:00','2015-04-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(100,'2015-04-18 00:00:00',1,'60','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for shirt',1,'2015-04-18 00:00:00','2015-04-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(101,'2015-04-18 00:00:00',1,'61','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for vegtables fruits ',1,'2015-04-18 00:00:00','2015-04-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(102,'2015-04-18 00:00:00',1,'62','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Excess fare',1,'2015-04-18 00:00:00','2015-04-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(103,'2015-04-18 00:00:00',1,'59','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelledl to chennai',1,'2015-04-18 00:00:00','2015-04-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(104,'2015-04-19 00:00:00',1,'63','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelled to Chennai',1,'2015-04-19 00:00:00','2015-04-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(105,'2015-04-19 00:00:00',1,'68','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Auto',1,'2015-04-19 00:00:00','2015-04-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(106,'2015-04-19 00:00:00',1,'64','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelled to chennai',1,'2015-04-19 00:00:00','2015-04-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(107,'2015-04-19 00:00:00',1,'67','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for etables',1,'2015-04-19 00:00:00','2015-04-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(108,'2015-04-19 00:00:00',1,'66','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for etables',1,'2015-04-19 00:00:00','2015-04-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(109,'2015-04-19 00:00:00',2,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Chicken ',1,'2015-04-19 00:00:00','2015-04-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(110,'2015-04-19 00:00:00',1,'06','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from Thirunelveli community',1,'2015-04-19 00:00:00','2015-04-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(111,'2015-04-19 00:00:00',1,'65','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelled to Chennai',1,'2015-04-19 00:00:00','2015-04-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(112,'2015-04-19 00:00:00',2,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for white cement ',1,'2015-04-19 00:00:00','2015-04-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(113,'2015-04-20 00:00:00',1,'71','PY','GN',0,0,'F',0.00,0,1.00,0,'Being towards purchase of website sowftwar',1,'2015-04-20 00:00:00','2015-04-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(114,'2015-04-20 00:00:00',2,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for telephone bill',1,'2015-04-20 00:00:00','2015-04-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(115,'2015-04-20 00:00:00',1,'07','RC','GN',0,0,'F',0.00,0,1.00,0,'Course TA',1,'2015-04-20 00:00:00','2015-04-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(116,'2015-04-20 00:00:00',1,'70','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for seminar',1,'2015-04-20 00:00:00','2015-04-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(117,'2015-04-20 00:00:00',1,'69','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for toll gate ',1,'2015-04-20 00:00:00','2015-04-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(118,'2015-04-20 00:00:00',2,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for telephone bill',1,'2015-04-20 00:00:00','2015-04-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(119,'2015-04-21 00:00:00',1,'73','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelled to chennai',1,'2015-04-21 00:00:00','2015-04-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(120,'2015-04-21 00:00:00',1,'74','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for xerox',1,'2015-04-21 00:00:00','2015-04-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(121,'2015-04-21 00:00:00',2,'41','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for vegtables',1,'2015-04-21 00:00:00','2015-04-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(122,'2015-04-21 00:00:00',2,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for pipes',1,'2015-04-21 00:00:00','2015-04-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(123,'2015-04-21 00:00:00',1,'77','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for clocks',1,'2015-04-21 00:00:00','2015-04-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(124,'2015-04-21 00:00:00',1,'72','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Diesel',1,'2015-04-21 00:00:00','2015-04-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(125,'2015-04-21 00:00:00',2,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for PUC role',1,'2015-04-21 00:00:00','2015-04-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(126,'2015-04-21 00:00:00',1,'75','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for coolie',1,'2015-04-21 00:00:00','2015-04-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(127,'2015-04-21 00:00:00',1,'76','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for pipes',1,'2015-04-21 00:00:00','2015-04-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(128,'2015-04-22 00:00:00',2,'43','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for cake',1,'2015-04-22 00:00:00','2015-04-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(129,'2015-04-22 00:00:00',1,'08','RC','GN',0,0,'F',0.00,0,1.00,0,'Retreat Fee',1,'2015-04-22 00:00:00','2015-04-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(130,'2015-04-22 00:00:00',1,'80','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid to coolie',1,'2015-04-22 00:00:00','2015-04-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(131,'2015-04-22 00:00:00',1,'78','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for fruits and flowers',1,'2015-04-22 00:00:00','2015-04-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(132,'2015-04-22 00:00:00',2,'42','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for chicken and fish',1,'2015-04-22 00:00:00','2015-04-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(133,'2015-04-22 00:00:00',1,'79','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for recharge',1,'2015-04-22 00:00:00','2015-04-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(134,'2015-04-23 00:00:00',1,'83','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for registration',1,'2015-04-23 00:00:00','2015-04-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(135,'2015-04-23 00:00:00',1,'84','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for fittings ',1,'2015-04-23 00:00:00','2015-04-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(136,'2015-04-23 00:00:00',1,'85','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Kaspersky',1,'2015-04-23 00:00:00','2015-04-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(137,'2015-04-23 00:00:00',1,'81','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for cake',1,'2015-04-23 00:00:00','2015-04-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(138,'2015-04-23 00:00:00',1,'86','PY','GN',0,0,'F',0.00,0,1.00,0,'Being towards Vehical Repair charges.',1,'2015-04-23 00:00:00','2015-04-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(139,'2015-04-23 00:00:00',1,'82','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for bleeching power',1,'2015-04-23 00:00:00','2015-04-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(140,'2015-04-24 00:00:00',1,'90','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelled to Bangalore',1,'2015-04-24 00:00:00','2015-04-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(141,'2015-04-24 00:00:00',1,'88','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Monitor',1,'2015-04-24 00:00:00','2015-04-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(142,'2015-04-24 00:00:00',1,'89','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelled to Bangalore',1,'2015-04-24 00:00:00','2015-04-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(143,'2015-04-24 00:00:00',1,'91','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Mass offering',1,'2015-04-24 00:00:00','2015-04-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(144,'2015-04-24 00:00:00',1,'87','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for CD',1,'2015-04-24 00:00:00','2015-04-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(145,'2015-04-25 00:00:00',2,'44','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for provision ',1,'2015-04-25 00:00:00','2015-04-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(146,'2015-04-25 00:00:00',1,'92','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Diesel',1,'2015-04-25 00:00:00','2015-04-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(147,'2015-04-25 00:00:00',2,'45','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for toll gate ',1,'2015-04-25 00:00:00','2015-04-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(148,'2015-04-26 00:00:00',1,'93','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelled to Bangalore',1,'2015-04-26 00:00:00','2015-04-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(149,'2015-04-26 00:00:00',1,'94','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid to auditor ',1,'2015-04-26 00:00:00','2015-04-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(150,'2015-04-26 00:00:00',2,'46','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Fish & fruits',1,'2015-04-26 00:00:00','2015-04-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(151,'2015-04-27 00:00:00',2,'47','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for oil',1,'2015-04-27 00:00:00','2015-04-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(152,'2015-04-28 00:00:00',1,'96','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for DDFCRAR fees',1,'2015-04-28 00:00:00','2015-04-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(153,'2015-04-28 00:00:00',1,'95','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for DD',1,'2015-04-28 00:00:00','2015-04-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(154,'2015-04-29 00:00:00',1,'98','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for number plate',1,'2015-04-29 00:00:00','2015-04-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(155,'2015-04-29 00:00:00',2,'50','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for register post ',1,'2015-04-29 00:00:00','2015-04-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(156,'2015-04-29 00:00:00',2,'49','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for register post ',1,'2015-04-29 00:00:00','2015-04-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(157,'2015-04-29 00:00:00',1,'99','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Sanitary items ',1,'2015-04-29 00:00:00','2015-04-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(158,'2015-04-29 00:00:00',2,'48','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for gamason',1,'2015-04-29 00:00:00','2015-04-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(159,'2015-04-29 00:00:00',1,'97','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for electric bill',1,'2015-04-29 00:00:00','2015-04-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(160,'2015-04-29 00:00:00',1,'100','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for suitcase repair',1,'2015-04-29 00:00:00','2015-04-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(161,'2015-04-30 00:00:00',1,'104','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Diesel',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(162,'2015-04-30 00:00:00',1,'102','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for sweets',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(163,'2015-04-30 00:00:00',2,'52','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for vegtables fruits ',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(164,'2015-04-30 00:00:00',2,'51','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for rope',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(165,'2015-04-30 00:00:00',2,'53','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid to driver',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(166,'2015-04-30 00:00:00',1,'101','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for charity ',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(167,'2015-04-30 00:00:00',1,'103','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for toll fee',1,'2015-04-30 00:00:00','2015-04-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(168,'2015-05-01 00:00:00',2,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Being cash received from province',1,'2015-05-01 00:00:00','2015-05-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(169,'2015-05-01 00:00:00',1,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Local contribution from Mr.Eric',1,'2015-05-01 00:00:00','2015-05-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(170,'2015-05-01 00:00:00',2,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of Books',1,'2015-05-01 00:00:00','2015-05-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(171,'2015-05-01 00:00:00',1,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for course fee',1,'2015-05-01 00:00:00','2015-05-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(172,'2015-05-02 00:00:00',2,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the cook salary',1,'2015-05-02 00:00:00','2015-05-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(173,'2015-05-02 00:00:00',2,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the cook salary',1,'2015-05-02 00:00:00','2015-05-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(174,'2015-05-04 00:00:00',1,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from Thaiyur comty',1,'2015-05-04 00:00:00','2015-05-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(175,'2015-05-04 00:00:00',2,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'Sisters pocket money',1,'2015-05-04 00:00:00','2015-05-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(176,'2015-05-04 00:00:00',3,'01','RC','GN',0,0,'F',0.00,0,0.00,0,'Being towards bank sb interest',1,'2015-05-04 00:00:00','2015-05-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(177,'2015-05-04 00:00:00',1,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the Retreat Preacher',1,'2015-05-04 00:00:00','2015-05-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(178,'2015-05-05 00:00:00',1,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the chennai travelling charge',1,'2015-05-05 00:00:00','2015-05-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(179,'2015-05-05 00:00:00',1,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'Fees paid for the MaterDei',1,'2015-05-05 00:00:00','2015-05-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(180,'2015-05-05 00:00:00',2,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the milk',1,'2015-05-05 00:00:00','2015-05-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(181,'2015-05-05 00:00:00',1,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge to chennai',1,'2015-05-05 00:00:00','2015-05-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(182,'2015-05-05 00:00:00',2,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'Salary paid for the driver',1,'2015-05-05 00:00:00','2015-05-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(183,'2015-05-05 00:00:00',2,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge to Chennai',1,'2015-05-05 00:00:00','2015-05-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(184,'2015-05-05 00:00:00',1,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the mass offering',1,'2015-05-05 00:00:00','2015-05-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(185,'2015-05-05 00:00:00',2,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the chicken',1,'2015-05-05 00:00:00','2015-05-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(186,'2015-05-05 00:00:00',2,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of Books',1,'2015-05-05 00:00:00','2015-05-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(187,'2015-05-05 00:00:00',1,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'CRI Subscription',1,'2015-05-05 00:00:00','2015-05-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(188,'2015-05-06 00:00:00',2,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'purchase of diesel',1,'2015-05-06 00:00:00','2015-05-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(189,'2015-05-06 00:00:00',1,'04','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from Kovur community',1,'2015-05-06 00:00:00','2015-05-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(190,'2015-05-06 00:00:00',2,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for library books',1,'2015-05-06 00:00:00','2015-05-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(191,'2015-05-06 00:00:00',2,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'Doctor fee and medecine',1,'2015-05-06 00:00:00','2015-05-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(192,'2015-05-06 00:00:00',2,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for doctor fee',1,'2015-05-06 00:00:00','2015-05-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(193,'2015-05-06 00:00:00',1,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for subscription',1,'2015-05-06 00:00:00','2015-05-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(194,'2015-05-06 00:00:00',2,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of tube lights',1,'2015-05-06 00:00:00','2015-05-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(195,'2015-05-06 00:00:00',2,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of plates',1,'2015-05-06 00:00:00','2015-05-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(196,'2015-05-06 00:00:00',2,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for auto',1,'2015-05-06 00:00:00','2015-05-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(197,'2015-05-06 00:00:00',1,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'Sister salary- By Sr.Christina',1,'2015-05-06 00:00:00','2015-05-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(198,'2015-05-06 00:00:00',2,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of medecine',1,'2015-05-06 00:00:00','2015-05-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(199,'2015-05-06 00:00:00',2,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for cell phone recharege',1,'2015-05-06 00:00:00','2015-05-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(200,'2015-05-06 00:00:00',2,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for doctor fee',1,'2015-05-06 00:00:00','2015-05-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(201,'2015-05-08 00:00:00',2,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'purchase of vegitables and fruits',1,'2015-05-08 00:00:00','2015-05-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(202,'2015-05-10 00:00:00',2,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'paid wages for water purifier',1,'2015-05-10 00:00:00','2015-05-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(203,'2015-05-10 00:00:00',2,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'purchase of mutton',1,'2015-05-10 00:00:00','2015-05-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(204,'2015-05-11 00:00:00',2,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for gas ',1,'2015-05-11 00:00:00','2015-05-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(205,'2015-05-11 00:00:00',2,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for mass offering',1,'2015-05-11 00:00:00','2015-05-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(206,'2015-05-11 00:00:00',2,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for physiotherapy fee',1,'2015-05-11 00:00:00','2015-05-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(207,'2015-05-11 00:00:00',2,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for gas ',1,'2015-05-11 00:00:00','2015-05-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(208,'2015-05-12 00:00:00',2,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for register post',1,'2015-05-12 00:00:00','2015-05-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(209,'2015-05-12 00:00:00',2,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'purchase of fish',1,'2015-05-12 00:00:00','2015-05-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(210,'2015-05-12 00:00:00',2,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for x-ray',1,'2015-05-12 00:00:00','2015-05-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(211,'2015-05-12 00:00:00',2,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for register post',1,'2015-05-12 00:00:00','2015-05-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(212,'2015-05-13 00:00:00',1,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for spectacles',1,'2015-05-13 00:00:00','2015-05-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(213,'2015-05-13 00:00:00',1,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for spectacles',1,'2015-05-13 00:00:00','2015-05-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(214,'2015-05-13 00:00:00',1,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'purchse of speakers',1,'2015-05-13 00:00:00','2015-05-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(215,'2015-05-13 00:00:00',1,'09','PY','GN',0,0,'F',0.00,0,1.00,0,' purchase of aqua purifier',1,'2015-05-13 00:00:00','2015-05-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(216,'2015-05-13 00:00:00',2,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for medicines',1,'2015-05-13 00:00:00','2015-05-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(217,'2015-05-13 00:00:00',2,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'',1,'2015-05-13 00:00:00','2015-05-13 00:00:00',0,0,0.00,0.00,'paid for medicines',0,0,'','',0,''),(218,'2015-05-13 00:00:00',1,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for eatables',1,'2015-05-13 00:00:00','2015-05-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(219,'2015-05-13 00:00:00',1,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'purchase of bedsheets',1,'2015-05-13 00:00:00','2015-05-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(220,'2015-05-14 00:00:00',1,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for xerox',1,'2015-05-14 00:00:00','2015-05-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(221,'2015-05-14 00:00:00',2,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'purchase of news papers',1,'2015-05-14 00:00:00','2015-05-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(222,'2015-05-15 00:00:00',2,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for medicines',1,'2015-05-15 00:00:00','2015-05-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(223,'2015-05-15 00:00:00',1,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for instailling aqua purifier',1,'2015-05-15 00:00:00','2015-05-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(224,'2015-05-15 00:00:00',1,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for travel to bangalore',1,'2015-05-15 00:00:00','2015-05-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(225,'2015-05-15 00:00:00',2,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'purchase of biscuts',1,'2015-05-15 00:00:00','2015-05-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(226,'2015-05-15 00:00:00',2,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for mass offerings',1,'2015-05-15 00:00:00','2015-05-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(227,'2015-05-16 00:00:00',2,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the cook salary',1,'2015-05-16 00:00:00','2015-05-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(228,'2015-05-16 00:00:00',2,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for photos',1,'2015-05-16 00:00:00','2015-05-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(229,'2015-05-16 00:00:00',2,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'purchase of candles',1,'2015-05-16 00:00:00','2015-05-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(230,'2015-05-16 00:00:00',2,'41','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of chicken',1,'2015-05-16 00:00:00','2015-05-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(231,'2015-05-16 00:00:00',2,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for birthday celebrations',1,'2015-05-16 00:00:00','2015-05-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(232,'2015-05-18 00:00:00',1,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'purchase of files',1,'2015-05-18 00:00:00','2015-05-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(233,'2015-05-18 00:00:00',1,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for disel',1,'2015-05-18 00:00:00','2015-05-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(234,'2015-05-18 00:00:00',1,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'purchase of shirtings',1,'2015-05-18 00:00:00','2015-05-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(235,'2015-05-18 00:00:00',2,'43','PY','GN',0,0,'F',0.00,0,1.00,0,'purchase of candles',1,'2015-05-18 00:00:00','2015-05-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(236,'2015-05-18 00:00:00',1,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'purchase of candles',1,'2015-05-18 00:00:00','2015-05-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(237,'2015-05-18 00:00:00',2,'42','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for tollgate fee',1,'2015-05-18 00:00:00','2015-05-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(238,'2015-05-18 00:00:00',1,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for home visit',1,'2015-05-18 00:00:00','2015-05-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(239,'2015-05-18 00:00:00',1,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'purchase of napkins and others',1,'2015-05-18 00:00:00','2015-05-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(240,'2015-05-18 00:00:00',2,'44','PY','GN',0,0,'F',0.00,0,1.00,0,'purchase of statue',1,'2015-05-18 00:00:00','2015-05-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(241,'2015-05-18 00:00:00',1,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for vechicle parking',1,'2015-05-18 00:00:00','2015-05-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(242,'2015-05-18 00:00:00',1,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'purchase of files',1,'2015-05-18 00:00:00','2015-05-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(243,'2015-05-19 00:00:00',2,'45','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for driver',1,'2015-05-19 00:00:00','2015-05-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(244,'2015-05-19 00:00:00',1,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'purchase of picture frames',1,'2015-05-19 00:00:00','2015-05-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(245,'2015-05-19 00:00:00',1,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'Cash withdrawn for the maintenance of the house',1,'2015-05-19 00:00:00','2015-05-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(246,'2015-05-19 00:00:00',1,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'contribution to provincialate',1,'2015-05-19 00:00:00','2015-05-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(247,'2015-05-19 00:00:00',1,'05','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from Muttukadu comty',1,'2015-05-19 00:00:00','2015-05-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(248,'2015-05-20 00:00:00',2,'46','PY','GN',0,0,'F',0.00,0,1.00,0,'purchase of adadptor',1,'2015-05-20 00:00:00','2015-05-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(249,'2015-05-21 00:00:00',2,'47','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for telephopne bill',1,'2015-05-21 00:00:00','2015-05-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(250,'2015-05-21 00:00:00',2,'50','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for gatevalve',1,'2015-05-21 00:00:00','2015-05-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(251,'2015-05-21 00:00:00',1,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for eggs',1,'2015-05-21 00:00:00','2015-05-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(252,'2015-05-21 00:00:00',3,'01','PY','GN',0,21,'F',0.00,0,1.00,0,'Bethlemite Sisters -Bangalore',1,'2015-05-21 00:00:00','2015-05-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(253,'2015-05-21 00:00:00',2,'49','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for disel',1,'2015-05-21 00:00:00','2015-05-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(254,'2015-05-21 00:00:00',2,'48','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for telephopne bill',1,'2015-05-21 00:00:00','2015-05-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(255,'2015-05-21 00:00:00',2,'51','PY','GN',0,0,'F',0.00,0,1.00,0,'Electrical items',1,'2015-05-21 00:00:00','2015-05-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(256,'2015-05-22 00:00:00',2,'53','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of veg & Fish',1,'2015-05-22 00:00:00','2015-05-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(257,'2015-05-22 00:00:00',2,'52','PY','GN',0,0,'F',0.00,0,1.00,0,'Tap Repair',1,'2015-05-22 00:00:00','2015-05-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(258,'2015-05-24 00:00:00',1,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'Travel to Elagiri',1,'2015-05-24 00:00:00','2015-05-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(259,'2015-05-24 00:00:00',2,'54','PY','GN',0,0,'F',0.00,0,1.00,0,'Cash paid for the marraiage gift',1,'2015-05-24 00:00:00','2015-05-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(260,'2015-05-25 00:00:00',2,'55','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for stove repair',1,'2015-05-25 00:00:00','2015-05-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(261,'2015-05-25 00:00:00',2,'56','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for marraige gift',1,'2015-05-25 00:00:00','2015-05-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(262,'2015-05-27 00:00:00',1,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for photos',1,'2015-05-27 00:00:00','2015-05-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(263,'2015-05-27 00:00:00',2,'58','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for Registered post',1,'2015-05-27 00:00:00','2015-05-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(264,'2015-05-27 00:00:00',1,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for diesel',1,'2015-05-27 00:00:00','2015-05-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(265,'2015-05-27 00:00:00',2,'57','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for mass offering',1,'2015-05-27 00:00:00','2015-05-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(266,'2015-05-27 00:00:00',1,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'Travel for home visit',1,'2015-05-27 00:00:00','2015-05-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(267,'2015-05-27 00:00:00',1,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for fan repair',1,'2015-05-27 00:00:00','2015-05-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(268,'2015-05-28 00:00:00',2,'60','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of candles and flowers',1,'2015-05-28 00:00:00','2015-05-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(269,'2015-05-28 00:00:00',1,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of Biscuits',1,'2015-05-28 00:00:00','2015-05-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(270,'2015-05-28 00:00:00',1,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'Travel for home visit',1,'2015-05-28 00:00:00','2015-05-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(271,'2015-05-28 00:00:00',1,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of coffee and biscuits',1,'2015-05-28 00:00:00','2015-05-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(272,'2015-05-28 00:00:00',1,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of garlands',1,'2015-05-28 00:00:00','2015-05-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(273,'2015-05-28 00:00:00',1,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of pictures',1,'2015-05-28 00:00:00','2015-05-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(274,'2015-05-28 00:00:00',2,'59','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for mass offering',1,'2015-05-28 00:00:00','2015-05-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(275,'2015-05-30 00:00:00',2,'61','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of fruits and fish',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(276,'2015-05-30 00:00:00',1,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'purchase of lock',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(277,'2015-05-30 00:00:00',2,'62','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of A/4 sheets',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(278,'2015-05-30 00:00:00',2,'64','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for medecine',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(279,'2015-05-30 00:00:00',2,'63','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for medecine',1,'2015-05-30 00:00:00','2015-05-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(280,'2015-06-01 00:00:00',2,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution received from the province',1,'2015-06-01 00:00:00','2015-06-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(281,'2015-06-01 00:00:00',1,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'contribution  to provincialate',1,'2015-06-01 00:00:00','2015-06-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(282,'2015-06-01 00:00:00',1,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from Kovur community',1,'2015-06-01 00:00:00','2015-06-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(283,'2015-06-02 00:00:00',2,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for mass offering',1,'2015-06-02 00:00:00','2015-06-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(284,'2015-06-02 00:00:00',2,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for sisters pocket money',1,'2015-06-02 00:00:00','2015-06-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(285,'2015-06-02 00:00:00',2,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for cook salary',1,'2015-06-02 00:00:00','2015-06-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(286,'2015-06-02 00:00:00',2,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for driver salary',1,'2015-06-02 00:00:00','2015-06-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(287,'2015-06-05 00:00:00',1,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for fuel for the vehicle',1,'2015-06-05 00:00:00','2015-06-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(288,'2015-06-05 00:00:00',1,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for sisters maintenance to Bellary community',1,'2015-06-05 00:00:00','2015-06-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(289,'2015-06-05 00:00:00',1,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for maintenanace of sisters to Raichur community',1,'2015-06-05 00:00:00','2015-06-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(290,'2015-06-05 00:00:00',1,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for lunch',1,'2015-06-05 00:00:00','2015-06-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(291,'2015-06-05 00:00:00',2,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for gas ',1,'2015-06-05 00:00:00','2015-06-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(292,'2015-06-06 00:00:00',1,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for cook wages',1,'2015-06-06 00:00:00','2015-06-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(293,'2015-06-06 00:00:00',1,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for diesel for vehicle',1,'2015-06-06 00:00:00','2015-06-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(294,'2015-06-07 00:00:00',2,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for purchase of veg and fruits',1,'2015-06-07 00:00:00','2015-06-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(295,'2015-06-07 00:00:00',1,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for lunch',1,'2015-06-07 00:00:00','2015-06-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(296,'2015-06-07 00:00:00',1,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for travelling charges',1,'2015-06-07 00:00:00','2015-06-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(297,'2015-06-07 00:00:00',1,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for toll gate fee',1,'2015-06-07 00:00:00','2015-06-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(298,'2015-06-07 00:00:00',1,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for lunch',1,'2015-06-07 00:00:00','2015-06-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(299,'2015-06-07 00:00:00',1,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for toll gate fee',1,'2015-06-07 00:00:00','2015-06-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(300,'2015-06-07 00:00:00',1,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the purchase of bag',1,'2015-06-07 00:00:00','2015-06-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(301,'2015-06-07 00:00:00',1,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for diesel for vehivle maintanance',1,'2015-06-07 00:00:00','2015-06-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(302,'2015-06-07 00:00:00',1,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for fruits',1,'2015-06-07 00:00:00','2015-06-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(303,'2015-06-07 00:00:00',1,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'purchase of iron stand',1,'2015-06-07 00:00:00','2015-06-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(304,'2015-06-07 00:00:00',1,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for drinks',1,'2015-06-07 00:00:00','2015-06-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(305,'2015-06-07 00:00:00',2,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for chicken',1,'2015-06-07 00:00:00','2015-06-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(306,'2015-06-09 00:00:00',1,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid admission fee for education of sisters',1,'2015-06-09 00:00:00','2015-06-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(307,'2015-06-09 00:00:00',1,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for education of sisters-admission fee',1,'2015-06-09 00:00:00','2015-06-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(308,'2015-06-09 00:00:00',1,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of etables',1,'2015-06-09 00:00:00','2015-06-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(309,'2015-06-09 00:00:00',1,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for parking of the vehicle',1,'2015-06-09 00:00:00','2015-06-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(310,'2015-06-09 00:00:00',1,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for meals',1,'2015-06-09 00:00:00','2015-06-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(311,'2015-06-10 00:00:00',1,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for travelling charges',1,'2015-06-10 00:00:00','2015-06-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(312,'2015-06-10 00:00:00',2,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for mixture',1,'2015-06-10 00:00:00','2015-06-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(313,'2015-06-10 00:00:00',1,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for sweets',1,'2015-06-10 00:00:00','2015-06-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(314,'2015-06-10 00:00:00',3,'01','RC','GN',2,21,'F',124140.00,23,1.00,23,'Being towards foreign contribution received form soure Bethlemite Rome',1,'2015-06-10 00:00:00','2015-06-10 00:00:00',0,0,124140.00,124140.00,'Suore Bethlemite, ',0,0,'','',0,''),(315,'2015-06-10 00:00:00',2,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for vegetables',1,'2015-06-10 00:00:00','2015-06-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(316,'2015-06-10 00:00:00',2,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for eggs',1,'2015-06-10 00:00:00','2015-06-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(317,'2015-06-10 00:00:00',1,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the medecine',1,'2015-06-10 00:00:00','2015-06-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(318,'2015-06-10 00:00:00',1,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for diesel',1,'2015-06-10 00:00:00','2015-06-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(319,'2015-06-11 00:00:00',2,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for medecine',1,'2015-06-11 00:00:00','2015-06-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(320,'2015-06-11 00:00:00',2,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'piad for flowers',1,'2015-06-11 00:00:00','2015-06-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(321,'2015-06-11 00:00:00',1,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge to dharmapuri',1,'2015-06-11 00:00:00','2015-06-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(322,'2015-06-11 00:00:00',1,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for purchase of fruits and snacks',1,'2015-06-11 00:00:00','2015-06-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(323,'2015-06-11 00:00:00',2,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for gas ',1,'2015-06-11 00:00:00','2015-06-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(324,'2015-06-11 00:00:00',1,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for meals',1,'2015-06-11 00:00:00','2015-06-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(325,'2015-06-11 00:00:00',1,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for vocational expenses',1,'2015-06-11 00:00:00','2015-06-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(326,'2015-06-11 00:00:00',1,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for home visit expenses',1,'2015-06-11 00:00:00','2015-06-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(327,'2015-06-11 00:00:00',1,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for travelling charges to Renigunta',1,'2015-06-11 00:00:00','2015-06-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(328,'2015-06-11 00:00:00',2,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for newspaper',1,'2015-06-11 00:00:00','2015-06-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(329,'2015-06-11 00:00:00',1,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for travelling charges to yarcad',1,'2015-06-11 00:00:00','2015-06-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(330,'2015-06-11 00:00:00',1,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for cell phone recharge',1,'2015-06-11 00:00:00','2015-06-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(331,'2015-06-11 00:00:00',2,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for medecine',1,'2015-06-11 00:00:00','2015-06-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(332,'2015-06-12 00:00:00',1,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from Koovathur,Nandambakkam,Ramnadu,Muttukadu,Dharmapuri',1,'2015-06-12 00:00:00','2015-06-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(333,'2015-06-13 00:00:00',1,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for chicken',1,'2015-06-13 00:00:00','2015-06-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(334,'2015-06-13 00:00:00',1,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for electrical repair',1,'2015-06-13 00:00:00','2015-06-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(335,'2015-06-13 00:00:00',1,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for telephone recharges',1,'2015-06-13 00:00:00','2015-06-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(336,'2015-06-13 00:00:00',1,'41','PY','GN',0,0,'F',0.00,0,1.00,0,'Being towards bank charges',1,'2015-06-13 00:00:00','2015-06-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(337,'2015-06-13 00:00:00',1,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for snacks',1,'2015-06-13 00:00:00','2015-06-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(338,'2015-06-13 00:00:00',2,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for pipe repair',1,'2015-06-13 00:00:00','2015-06-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(339,'2015-06-13 00:00:00',1,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'Piaid for provisions',1,'2015-06-13 00:00:00','2015-06-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(340,'2015-06-13 00:00:00',1,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'Being towards self withdrwal.',1,'2015-06-13 00:00:00','2015-06-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(341,'2015-06-13 00:00:00',2,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for milk',1,'2015-06-13 00:00:00','2015-06-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(342,'2015-06-13 00:00:00',1,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'Contribution to Dharmapuri community for the purchase of land',1,'2015-06-13 00:00:00','2015-06-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(343,'2015-06-14 00:00:00',2,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for diesel',1,'2015-06-14 00:00:00','2015-06-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(344,'2015-06-14 00:00:00',1,'42','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for cake',1,'2015-06-14 00:00:00','2015-06-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(345,'2015-06-15 00:00:00',2,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for petrol',1,'2015-06-15 00:00:00','2015-06-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(346,'2015-06-15 00:00:00',1,'44','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for travelling to Renigunta',1,'2015-06-15 00:00:00','2015-06-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(347,'2015-06-15 00:00:00',1,'43','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for books',1,'2015-06-15 00:00:00','2015-06-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(348,'2015-06-15 00:00:00',2,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for birthday gift',1,'2015-06-15 00:00:00','2015-06-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(349,'2015-06-15 00:00:00',2,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for chicken',1,'2015-06-15 00:00:00','2015-06-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(350,'2015-06-15 00:00:00',2,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for mass offering',1,'2015-06-15 00:00:00','2015-06-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(351,'2015-06-17 00:00:00',2,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for travelling to nellore',1,'2015-06-17 00:00:00','2015-06-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(352,'2015-06-17 00:00:00',1,'46','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for home visit',1,'2015-06-17 00:00:00','2015-06-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(353,'2015-06-17 00:00:00',1,'45','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for home visit',1,'2015-06-17 00:00:00','2015-06-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(354,'2015-06-18 00:00:00',1,'47','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for books',1,'2015-06-18 00:00:00','2015-06-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(355,'2015-06-18 00:00:00',1,'48','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for travelling to Hyd',1,'2015-06-18 00:00:00','2015-06-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(356,'2015-06-18 00:00:00',2,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for eggs',1,'2015-06-18 00:00:00','2015-06-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(357,'2015-06-18 00:00:00',2,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for telephone bill',1,'2015-06-18 00:00:00','2015-06-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(358,'2015-06-18 00:00:00',2,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for telephone bill',1,'2015-06-18 00:00:00','2015-06-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(359,'2015-06-19 00:00:00',1,'50','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for surf',1,'2015-06-19 00:00:00','2015-06-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(360,'2015-06-19 00:00:00',1,'51','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for travelling to bangalore',1,'2015-06-19 00:00:00','2015-06-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(361,'2015-06-19 00:00:00',1,'49','PY','GN',0,0,'F',0.00,0,1.00,0,'',1,'2015-06-19 00:00:00','2015-06-19 00:00:00',0,0,0.00,0.00,'Paid for travelling to Bangalore',0,0,'','',0,''),(362,'2015-06-20 00:00:00',2,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for medecine',1,'2015-06-20 00:00:00','2015-06-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(363,'2015-06-20 00:00:00',1,'52','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for coffee powder',1,'2015-06-20 00:00:00','2015-06-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(364,'2015-06-20 00:00:00',1,'55','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for meals',1,'2015-06-20 00:00:00','2015-06-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(365,'2015-06-20 00:00:00',1,'54','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for retreat mess fee',1,'2015-06-20 00:00:00','2015-06-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(366,'2015-06-20 00:00:00',1,'56','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for cell phone recharege',1,'2015-06-20 00:00:00','2015-06-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(367,'2015-06-20 00:00:00',1,'53','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for retreat fee',1,'2015-06-20 00:00:00','2015-06-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(368,'2015-06-20 00:00:00',2,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for veg and fruits',1,'2015-06-20 00:00:00','2015-06-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(369,'2015-06-20 00:00:00',2,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for provisions',1,'2015-06-20 00:00:00','2015-06-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(370,'2015-06-21 00:00:00',2,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for chicken',1,'2015-06-21 00:00:00','2015-06-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(371,'2015-06-22 00:00:00',1,'60','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for fuel for the vehicle',1,'2015-06-22 00:00:00','2015-06-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(372,'2015-06-22 00:00:00',1,'59','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for travelling to chennai',1,'2015-06-22 00:00:00','2015-06-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(373,'2015-06-22 00:00:00',1,'58','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for travelling to chennai',1,'2015-06-22 00:00:00','2015-06-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(374,'2015-06-22 00:00:00',1,'57','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for naphthalin balls',1,'2015-06-22 00:00:00','2015-06-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(375,'2015-06-23 00:00:00',1,'61','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for medecine',1,'2015-06-23 00:00:00','2015-06-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(376,'2015-06-24 00:00:00',2,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for pipe repair',1,'2015-06-24 00:00:00','2015-06-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(377,'2015-06-24 00:00:00',1,'62','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid fortravelling expenses',1,'2015-06-24 00:00:00','2015-06-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(378,'2015-06-24 00:00:00',1,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'Being towards contribution received form thaiyur community',1,'2015-06-24 00:00:00','2015-06-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(379,'2015-06-24 00:00:00',2,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for flowers',1,'2015-06-24 00:00:00','2015-06-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(380,'2015-06-27 00:00:00',1,'04','RC','GN',0,0,'F',0.00,0,1.00,0,'Being towards contribution received form Muttukadu community',1,'2015-06-27 00:00:00','2015-06-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(381,'2015-06-30 00:00:00',1,'65','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for travelling to chennai',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(382,'2015-06-30 00:00:00',2,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for auto charges',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(383,'2015-06-30 00:00:00',1,'63','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for diesel',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(384,'2015-06-30 00:00:00',2,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for electricity bill',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(385,'2015-06-30 00:00:00',1,'05','RC','GN',0,0,'F',0.00,0,1.00,0,'Advance taken from Bethel community',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(386,'2015-06-30 00:00:00',1,'66','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for education expenses',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(387,'2015-06-30 00:00:00',1,'67','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for printing invitation cards',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(388,'2015-06-30 00:00:00',1,'64','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for refridgerator repair',1,'2015-06-30 00:00:00','2015-06-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(389,'2015-07-01 00:00:00',2,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'By refund of tickets',1,'2015-07-01 00:00:00','2015-07-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(390,'2015-07-01 00:00:00',2,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from the province',1,'2015-07-01 00:00:00','2015-07-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(391,'2015-07-02 00:00:00',2,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'salary paid for the cook',1,'2015-07-02 00:00:00','2015-07-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(392,'2015-07-02 00:00:00',2,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of etables',1,'2015-07-02 00:00:00','2015-07-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(393,'2015-07-02 00:00:00',2,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge to Thirunelveli',1,'2015-07-02 00:00:00','2015-07-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(394,'2015-07-02 00:00:00',2,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of 3pin top',1,'2015-07-02 00:00:00','2015-07-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(395,'2015-07-02 00:00:00',2,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge to Bellary',1,'2015-07-02 00:00:00','2015-07-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(396,'2015-07-02 00:00:00',2,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'Salary paid for the driver',1,'2015-07-02 00:00:00','2015-07-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(397,'2015-07-02 00:00:00',1,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'Being towards bank charges',1,'2015-07-02 00:00:00','2015-07-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(398,'2015-07-02 00:00:00',2,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge to Ramesvaram',1,'2015-07-02 00:00:00','2015-07-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(399,'2015-07-02 00:00:00',2,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge to Thirunelveli',1,'2015-07-02 00:00:00','2015-07-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(400,'2015-07-02 00:00:00',2,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge to secundrabad',1,'2015-07-02 00:00:00','2015-07-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(401,'2015-07-02 00:00:00',1,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'contribution to provincialate',1,'2015-07-02 00:00:00','2015-07-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(402,'2015-07-02 00:00:00',2,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'Sister Pocket Money',1,'2015-07-02 00:00:00','2015-07-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(403,'2015-07-02 00:00:00',1,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the purchase of land',1,'2015-07-02 00:00:00','2015-07-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(404,'2015-07-02 00:00:00',1,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'withdrawn from the Bank of south indian  for the maintenance ',1,'2015-07-02 00:00:00','2015-07-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(405,'2015-07-02 00:00:00',2,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'Salary paid for the cook',1,'2015-07-02 00:00:00','2015-07-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(406,'2015-07-04 00:00:00',1,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Sale of shamina',1,'2015-07-04 00:00:00','2015-07-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(407,'2015-07-05 00:00:00',1,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'Purcahse of chicken',1,'2015-07-05 00:00:00','2015-07-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(408,'2015-07-05 00:00:00',2,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid  for milk',1,'2015-07-05 00:00:00','2015-07-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(409,'2015-07-05 00:00:00',2,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of fruits and fish',1,'2015-07-05 00:00:00','2015-07-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(410,'2015-07-06 00:00:00',2,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'Auto charges',1,'2015-07-06 00:00:00','2015-07-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(411,'2015-07-06 00:00:00',1,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of tables',1,'2015-07-06 00:00:00','2015-07-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(412,'2015-07-06 00:00:00',1,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'Transportation charges',1,'2015-07-06 00:00:00','2015-07-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(413,'2015-07-06 00:00:00',1,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of chairs',1,'2015-07-06 00:00:00','2015-07-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(414,'2015-07-07 00:00:00',2,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of gas',1,'2015-07-07 00:00:00','2015-07-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(415,'2015-07-07 00:00:00',2,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of sweets',1,'2015-07-07 00:00:00','2015-07-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(416,'2015-07-07 00:00:00',2,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of petro',1,'2015-07-07 00:00:00','2015-07-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(417,'2015-07-07 00:00:00',1,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from kovur community',1,'2015-07-07 00:00:00','2015-07-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(418,'2015-07-07 00:00:00',1,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution received from Tuticorin communtiy',1,'2015-07-07 00:00:00','2015-07-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(419,'2015-07-07 00:00:00',2,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of  vegetables',1,'2015-07-07 00:00:00','2015-07-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(420,'2015-07-09 00:00:00',1,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'Telephone new connection fee',1,'2015-07-09 00:00:00','2015-07-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(421,'2015-07-09 00:00:00',2,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of fuel',1,'2015-07-09 00:00:00','2015-07-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(422,'2015-07-10 00:00:00',2,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of eggs',1,'2015-07-10 00:00:00','2015-07-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(423,'2015-07-11 00:00:00',2,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of newspaper',1,'2015-07-11 00:00:00','2015-07-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(424,'2015-07-11 00:00:00',2,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'Gift given to Mr.Joji',1,'2015-07-11 00:00:00','2015-07-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(425,'2015-07-12 00:00:00',2,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of chicken',1,'2015-07-12 00:00:00','2015-07-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(426,'2015-07-13 00:00:00',2,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'Stamp fee',1,'2015-07-13 00:00:00','2015-07-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(427,'2015-07-13 00:00:00',3,'01','RC','GN',3,32,'F',92113.00,23,1.00,23,'Being towards foreign contribution received form a SignorTheresa Rome',1,'2015-07-13 00:00:00','2015-07-13 00:00:00',0,0,92113.00,92113.00,'Signora Theresa, ',0,0,'','',0,''),(428,'2015-07-13 00:00:00',2,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'Wages paid towards the repair',1,'2015-07-13 00:00:00','2015-07-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(429,'2015-07-13 00:00:00',2,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'Cancellation fee',1,'2015-07-13 00:00:00','2015-07-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(430,'2015-07-14 00:00:00',2,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'Train fare',1,'2015-07-14 00:00:00','2015-07-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(431,'2015-07-14 00:00:00',1,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'Medecine',1,'2015-07-14 00:00:00','2015-07-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(432,'2015-07-14 00:00:00',2,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'Gift paper',1,'2015-07-14 00:00:00','2015-07-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(433,'2015-07-14 00:00:00',2,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for etables',1,'2015-07-14 00:00:00','2015-07-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(434,'2015-07-14 00:00:00',2,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'Train fare to Nellore',1,'2015-07-14 00:00:00','2015-07-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(435,'2015-07-14 00:00:00',2,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'Blood Test',1,'2015-07-14 00:00:00','2015-07-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(436,'2015-07-14 00:00:00',2,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'Shirts given to sisters',1,'2015-07-14 00:00:00','2015-07-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(437,'2015-07-14 00:00:00',2,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'Train fare to chennai',1,'2015-07-14 00:00:00','2015-07-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(438,'2015-07-14 00:00:00',2,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'Auto charges',1,'2015-07-14 00:00:00','2015-07-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(439,'2015-07-14 00:00:00',1,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Bedsheets  given to sisters',1,'2015-07-14 00:00:00','2015-07-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(440,'2015-07-14 00:00:00',1,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'Library -spiritual books',1,'2015-07-14 00:00:00','2015-07-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(441,'2015-07-14 00:00:00',2,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'Doctor fee and medecine',1,'2015-07-14 00:00:00','2015-07-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(442,'2015-07-14 00:00:00',2,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'Train fare to chennai',1,'2015-07-14 00:00:00','2015-07-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(443,'2015-07-14 00:00:00',2,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of rope',1,'2015-07-14 00:00:00','2015-07-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(444,'2015-07-14 00:00:00',2,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'Train fare',1,'2015-07-14 00:00:00','2015-07-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(445,'2015-07-14 00:00:00',2,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'Cell phone recharges',1,'2015-07-14 00:00:00','2015-07-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(446,'2015-07-15 00:00:00',1,'04','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from muttukadu community',1,'2015-07-15 00:00:00','2015-07-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(447,'2015-07-15 00:00:00',2,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'Diesel for vehicle',1,'2015-07-15 00:00:00','2015-07-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(448,'2015-07-17 00:00:00',2,'43','PY','GN',0,0,'F',0.00,0,1.00,0,'Telephone bill',1,'2015-07-17 00:00:00','2015-07-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(449,'2015-07-17 00:00:00',2,'44','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge to Nellore',1,'2015-07-17 00:00:00','2015-07-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(450,'2015-07-17 00:00:00',2,'42','PY','GN',0,0,'F',0.00,0,1.00,0,'telephone bill',1,'2015-07-17 00:00:00','2015-07-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(451,'2015-07-17 00:00:00',2,'41','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of eggs',1,'2015-07-17 00:00:00','2015-07-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(452,'2015-07-17 00:00:00',1,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of etables',1,'2015-07-17 00:00:00','2015-07-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(453,'2015-07-18 00:00:00',2,'46','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase nails',1,'2015-07-18 00:00:00','2015-07-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(454,'2015-07-18 00:00:00',2,'45','PY','GN',0,0,'F',0.00,0,1.00,0,'Traveling charge to Chennai',1,'2015-07-18 00:00:00','2015-07-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(455,'2015-07-19 00:00:00',2,'47','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of chicken',1,'2015-07-19 00:00:00','2015-07-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(456,'2015-07-20 00:00:00',1,'05','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from koovathur community',1,'2015-07-20 00:00:00','2015-07-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(457,'2015-07-21 00:00:00',1,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of all out',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(458,'2015-07-21 00:00:00',1,'06','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution received from Kovur for the final vows',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(459,'2015-07-21 00:00:00',2,'54','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of coffee powder',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(460,'2015-07-21 00:00:00',2,'48','PY','GN',0,0,'F',0.00,0,1.00,0,'Mirrors',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(461,'2015-07-21 00:00:00',1,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge to elagiri',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(462,'2015-07-21 00:00:00',1,'02','CN','GN',0,0,'F',0.00,0,1.00,0,'Cash withdrawn for the maintenance of the house',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(463,'2015-07-21 00:00:00',2,'53','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of vim and Harpic',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(464,'2015-07-21 00:00:00',2,'51','PY','GN',0,0,'F',0.00,0,1.00,0,'Dress for Michael',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(465,'2015-07-21 00:00:00',2,'49','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of tube lights',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(466,'2015-07-21 00:00:00',1,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'Installing the acme software charges',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(467,'2015-07-21 00:00:00',2,'52','PY','GN',0,0,'F',0.00,0,1.00,0,'Inner garments for michael',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(468,'2015-07-21 00:00:00',2,'50','PY','GN',0,0,'F',0.00,0,1.00,0,'medecine',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(469,'2015-07-21 00:00:00',1,'10','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution given by Sr.Buela for the final vows',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(470,'2015-07-21 00:00:00',1,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of buckets and dishes',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(471,'2015-07-21 00:00:00',1,'09','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution given by Sr.suji for the final vows',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(472,'2015-07-21 00:00:00',1,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of  dishes',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(473,'2015-07-21 00:00:00',1,'07','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from from Bethel community for fial vows celebration',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(474,'2015-07-21 00:00:00',1,'08','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from Thaiyur community for the final  vows celebration',1,'2015-07-21 00:00:00','2015-07-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(475,'2015-07-22 00:00:00',2,'59','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of fish',1,'2015-07-22 00:00:00','2015-07-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(476,'2015-07-22 00:00:00',2,'55','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of cake',1,'2015-07-22 00:00:00','2015-07-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(477,'2015-07-22 00:00:00',2,'60','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of vegetables',1,'2015-07-22 00:00:00','2015-07-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(478,'2015-07-22 00:00:00',2,'58','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of provisions',1,'2015-07-22 00:00:00','2015-07-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(479,'2015-07-22 00:00:00',2,'57','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of Thermocol',1,'2015-07-22 00:00:00','2015-07-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(480,'2015-07-22 00:00:00',2,'56','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of sunrise',1,'2015-07-22 00:00:00','2015-07-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(481,'2015-07-24 00:00:00',2,'61','PY','GN',0,0,'F',0.00,0,1.00,0,'Repair of taps',1,'2015-07-24 00:00:00','2015-07-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(482,'2015-07-24 00:00:00',2,'62','PY','GN',0,0,'F',0.00,0,1.00,0,'Downloading charges',1,'2015-07-24 00:00:00','2015-07-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(483,'2015-07-24 00:00:00',2,'63','PY','GN',0,0,'F',0.00,0,1.00,0,'Tube lights repair',1,'2015-07-24 00:00:00','2015-07-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(484,'2015-07-25 00:00:00',2,'66','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of juice and drinks',1,'2015-07-25 00:00:00','2015-07-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(485,'2015-07-25 00:00:00',1,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge to Dharmapuri',1,'2015-07-25 00:00:00','2015-07-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(486,'2015-07-25 00:00:00',2,'68','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge to Nellore',1,'2015-07-25 00:00:00','2015-07-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(487,'2015-07-25 00:00:00',2,'67','PY','GN',0,0,'F',0.00,0,1.00,0,'Vehicle parking',1,'2015-07-25 00:00:00','2015-07-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(488,'2015-07-25 00:00:00',2,'64','PY','GN',0,0,'F',0.00,0,1.00,0,'Toll gate fee',1,'2015-07-25 00:00:00','2015-07-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(489,'2015-07-25 00:00:00',2,'65','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of biriyani',1,'2015-07-25 00:00:00','2015-07-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(490,'2015-07-27 00:00:00',1,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling expenses for Sr.Caroline',1,'2015-07-27 00:00:00','2015-07-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(491,'2015-07-27 00:00:00',1,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the sand to fill the ground',1,'2015-07-27 00:00:00','2015-07-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(492,'2015-07-27 00:00:00',2,'69','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of gas',1,'2015-07-27 00:00:00','2015-07-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(493,'2015-07-27 00:00:00',1,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'Education expenses for sr.jyothi',1,'2015-07-27 00:00:00','2015-07-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(494,'2015-07-27 00:00:00',1,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the final vows celebration',1,'2015-07-27 00:00:00','2015-07-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(495,'2015-07-27 00:00:00',2,'71','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the workers for filling the sand',1,'2015-07-27 00:00:00','2015-07-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(496,'2015-07-27 00:00:00',2,'70','PY','GN',0,0,'F',0.00,0,1.00,0,'wages for plumber',1,'2015-07-27 00:00:00','2015-07-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(497,'2015-07-28 00:00:00',2,'75','PY','GN',0,0,'F',0.00,0,1.00,0,'Medecine',1,'2015-07-28 00:00:00','2015-07-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(498,'2015-07-28 00:00:00',2,'74','PY','GN',0,0,'F',0.00,0,1.00,0,'Doctor fee and medecine',1,'2015-07-28 00:00:00','2015-07-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(499,'2015-07-28 00:00:00',2,'73','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of fish',1,'2015-07-28 00:00:00','2015-07-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(500,'2015-07-28 00:00:00',2,'77','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of etables',1,'2015-07-28 00:00:00','2015-07-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(501,'2015-07-28 00:00:00',2,'72','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of fruits and fish',1,'2015-07-28 00:00:00','2015-07-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(502,'2015-07-28 00:00:00',2,'76','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of tap and nipple',1,'2015-07-28 00:00:00','2015-07-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(503,'2015-07-29 00:00:00',2,'82','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase food items',1,'2015-07-29 00:00:00','2015-07-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(504,'2015-07-29 00:00:00',2,'86','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the milk',1,'2015-07-29 00:00:00','2015-07-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(505,'2015-07-29 00:00:00',2,'79','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of onions',1,'2015-07-29 00:00:00','2015-07-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(506,'2015-07-29 00:00:00',2,'81','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of chicken',1,'2015-07-29 00:00:00','2015-07-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(507,'2015-07-29 00:00:00',2,'80','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of cake',1,'2015-07-29 00:00:00','2015-07-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(508,'2015-07-29 00:00:00',2,'85','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of petrol',1,'2015-07-29 00:00:00','2015-07-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(509,'2015-07-29 00:00:00',2,'78','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of plates',1,'2015-07-29 00:00:00','2015-07-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(510,'2015-07-29 00:00:00',2,'84','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of gas',1,'2015-07-29 00:00:00','2015-07-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(511,'2015-07-29 00:00:00',2,'88','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of medecine',1,'2015-07-29 00:00:00','2015-07-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(512,'2015-07-29 00:00:00',2,'87','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of medecine',1,'2015-07-29 00:00:00','2015-07-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(513,'2015-07-29 00:00:00',2,'89','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of choke',1,'2015-07-29 00:00:00','2015-07-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(514,'2015-07-29 00:00:00',2,'83','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of eggs',1,'2015-07-29 00:00:00','2015-07-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(515,'2015-07-31 00:00:00',2,'90','PY','GN',0,0,'F',0.00,0,1.00,0,'Diesel for vehicle',1,'2015-07-31 00:00:00','2015-07-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(516,'2015-08-01 00:00:00',2,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Sisters pocket money',1,'2015-08-01 00:00:00','2015-08-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(517,'2015-08-02 00:00:00',2,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid salary for the cook',1,'2015-08-02 00:00:00','2015-08-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(518,'2015-08-02 00:00:00',1,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the pork and onions',1,'2015-08-02 00:00:00','2015-08-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(519,'2015-08-02 00:00:00',2,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'paid salary for the driver',1,'2015-08-02 00:00:00','2015-08-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(520,'2015-08-02 00:00:00',1,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the milk and curd',1,'2015-08-02 00:00:00','2015-08-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(521,'2015-08-02 00:00:00',2,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of noodles and milk',1,'2015-08-02 00:00:00','2015-08-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(522,'2015-08-02 00:00:00',1,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the cake',1,'2015-08-02 00:00:00','2015-08-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(523,'2015-08-02 00:00:00',1,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of veg,fruits & eggs',1,'2015-08-02 00:00:00','2015-08-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(524,'2015-08-02 00:00:00',1,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the chicken',1,'2015-08-02 00:00:00','2015-08-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(525,'2015-08-02 00:00:00',1,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the preacher',1,'2015-08-02 00:00:00','2015-08-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(526,'2015-08-02 00:00:00',2,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid salary for the cook',1,'2015-08-02 00:00:00','2015-08-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(527,'2015-08-02 00:00:00',1,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Mess fee from the comty sisters ',1,'2015-08-02 00:00:00','2015-08-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(528,'2015-08-02 00:00:00',1,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the sweets',1,'2015-08-02 00:00:00','2015-08-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(529,'2015-08-03 00:00:00',1,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of drinks and juice',1,'2015-08-03 00:00:00','2015-08-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(530,'2015-08-03 00:00:00',1,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling expenses to Ramnadu ,Tuticorin and Thirunelveli',1,'2015-08-03 00:00:00','2015-08-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(531,'2015-08-03 00:00:00',1,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the workers as wages',1,'2015-08-03 00:00:00','2015-08-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(532,'2015-08-03 00:00:00',1,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'withdrawn from the Bank of south indian  for the maintenance ',1,'2015-08-03 00:00:00','2015-08-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(533,'2015-08-03 00:00:00',2,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'PURCHASE OF EGGS',1,'2015-08-03 00:00:00','2015-08-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(534,'2015-08-03 00:00:00',1,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charges to chennai',1,'2015-08-03 00:00:00','2015-08-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(535,'2015-08-04 00:00:00',1,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'Contribution given to provincialate',1,'2015-08-04 00:00:00','2015-08-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(536,'2015-08-05 00:00:00',1,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'Being towards contribution received form Koovathur community',1,'2015-08-05 00:00:00','2015-08-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(537,'2015-08-05 00:00:00',2,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of medecine',1,'2015-08-05 00:00:00','2015-08-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(538,'2015-08-06 00:00:00',1,'04','RC','GN',0,0,'F',0.00,0,1.00,0,'Local contribution by Thirunelveli,Tuticorin and Ramnau comties',1,'2015-08-06 00:00:00','2015-08-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(539,'2015-08-06 00:00:00',2,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of veg & Fruits',1,'2015-08-06 00:00:00','2015-08-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(540,'2015-08-06 00:00:00',2,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Received from Province for the maintenance',1,'2015-08-06 00:00:00','2015-08-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(541,'2015-08-06 00:00:00',2,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'Cell phone recharges',1,'2015-08-06 00:00:00','2015-08-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(542,'2015-08-06 00:00:00',1,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge by auto',1,'2015-08-06 00:00:00','2015-08-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(543,'2015-08-06 00:00:00',1,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the sweets',1,'2015-08-06 00:00:00','2015-08-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(544,'2015-08-06 00:00:00',1,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from kovur community',1,'2015-08-06 00:00:00','2015-08-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(545,'2015-08-07 00:00:00',2,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'Telephone  workers cooly',1,'2015-08-07 00:00:00','2015-08-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(546,'2015-08-08 00:00:00',1,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for vehicle Insurance(Porur)',1,'2015-08-08 00:00:00','2015-08-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(547,'2015-08-08 00:00:00',2,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the petrol',1,'2015-08-08 00:00:00','2015-08-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(548,'2015-08-09 00:00:00',2,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the chicken',1,'2015-08-09 00:00:00','2015-08-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(549,'2015-08-10 00:00:00',2,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for  the news paper',1,'2015-08-10 00:00:00','2015-08-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(550,'2015-08-10 00:00:00',2,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'registered post',1,'2015-08-10 00:00:00','2015-08-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(551,'2015-08-11 00:00:00',2,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'Telephone  workers cooly',1,'2015-08-11 00:00:00','2015-08-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(552,'2015-08-11 00:00:00',2,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge to Thirunelveli',1,'2015-08-11 00:00:00','2015-08-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(553,'2015-08-12 00:00:00',1,'05','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution given by sisters',1,'2015-08-12 00:00:00','2015-08-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(554,'2015-08-12 00:00:00',2,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for gas cylinder',1,'2015-08-12 00:00:00','2015-08-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(555,'2015-08-13 00:00:00',1,'06','RC','GN',0,0,'F',0.00,0,1.00,0,'Being towards contribution received form Muttukadu community',1,'2015-08-13 00:00:00','2015-08-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(556,'2015-08-13 00:00:00',2,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'pPaid for the eggs',1,'2015-08-13 00:00:00','2015-08-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(557,'2015-08-13 00:00:00',2,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the diesel',1,'2015-08-13 00:00:00','2015-08-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(558,'2015-08-14 00:00:00',2,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of sunrise',1,'2015-08-14 00:00:00','2015-08-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(559,'2015-08-14 00:00:00',2,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the computer service',1,'2015-08-14 00:00:00','2015-08-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(560,'2015-08-14 00:00:00',2,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the Mass offering',1,'2015-08-14 00:00:00','2015-08-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(561,'2015-08-14 00:00:00',2,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the cake purchase',1,'2015-08-14 00:00:00','2015-08-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(562,'2015-08-14 00:00:00',2,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the renewal of BYLaws and Stamp paper fee',1,'2015-08-14 00:00:00','2015-08-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(563,'2015-08-15 00:00:00',1,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling expenses for sr.Jesty',1,'2015-08-15 00:00:00','2015-08-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(564,'2015-08-15 00:00:00',1,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling expenses for Sr.Caroline',1,'2015-08-15 00:00:00','2015-08-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(565,'2015-08-15 00:00:00',2,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the veg & Fish & Fruits',1,'2015-08-15 00:00:00','2015-08-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(566,'2015-08-15 00:00:00',2,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the diesel',1,'2015-08-15 00:00:00','2015-08-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(567,'2015-08-15 00:00:00',1,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge to Porur',1,'2015-08-15 00:00:00','2015-08-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(568,'2015-08-15 00:00:00',2,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'Piaid for the medecine',1,'2015-08-15 00:00:00','2015-08-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(569,'2015-08-16 00:00:00',1,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge for seminar',1,'2015-08-16 00:00:00','2015-08-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(570,'2015-08-16 00:00:00',2,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of Taps',1,'2015-08-16 00:00:00','2015-08-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(571,'2015-08-16 00:00:00',1,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of biscuits and  snacks',1,'2015-08-16 00:00:00','2015-08-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(572,'2015-08-16 00:00:00',1,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of CD',1,'2015-08-16 00:00:00','2015-08-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(573,'2015-08-16 00:00:00',2,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of T shirts',1,'2015-08-16 00:00:00','2015-08-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(574,'2015-08-16 00:00:00',1,'07','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from porur comty',1,'2015-08-16 00:00:00','2015-08-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(575,'2015-08-16 00:00:00',1,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of etables',1,'2015-08-16 00:00:00','2015-08-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(576,'2015-08-16 00:00:00',1,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of Books',1,'2015-08-16 00:00:00','2015-08-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(577,'2015-08-16 00:00:00',1,'09','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from koovathur comty',1,'2015-08-16 00:00:00','2015-08-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(578,'2015-08-16 00:00:00',1,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'Course fee for Sr.Jain',1,'2015-08-16 00:00:00','2015-08-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(579,'2015-08-16 00:00:00',2,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the sweets ',1,'2015-08-16 00:00:00','2015-08-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(580,'2015-08-16 00:00:00',1,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'Course fee for Sr.Jain',1,'2015-08-16 00:00:00','2015-08-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(581,'2015-08-16 00:00:00',1,'08','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from Pondy comty',1,'2015-08-16 00:00:00','2015-08-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(582,'2015-08-17 00:00:00',2,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of T shirts',1,'2015-08-17 00:00:00','2015-08-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(583,'2015-08-18 00:00:00',1,'10','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from Bellary comty',1,'2015-08-18 00:00:00','2015-08-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(584,'2015-08-18 00:00:00',2,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge to chennai',1,'2015-08-18 00:00:00','2015-08-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(585,'2015-08-18 00:00:00',2,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling extra charges to chennai',1,'2015-08-18 00:00:00','2015-08-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(586,'2015-08-18 00:00:00',2,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge to chennai',1,'2015-08-18 00:00:00','2015-08-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(587,'2015-08-18 00:00:00',2,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the diesel',1,'2015-08-18 00:00:00','2015-08-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(588,'2015-08-18 00:00:00',2,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the medical expenses -Michael',1,'2015-08-18 00:00:00','2015-08-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(589,'2015-08-20 00:00:00',2,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'telephone bill',1,'2015-08-20 00:00:00','2015-08-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(590,'2015-08-20 00:00:00',2,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'telephone bill',1,'2015-08-20 00:00:00','2015-08-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(591,'2015-08-20 00:00:00',1,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'Vehicle service',1,'2015-08-20 00:00:00','2015-08-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(592,'2015-08-20 00:00:00',2,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'telephone bill',1,'2015-08-20 00:00:00','2015-08-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(593,'2015-08-21 00:00:00',2,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the eggs',1,'2015-08-21 00:00:00','2015-08-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(594,'2015-08-21 00:00:00',2,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'Local contribution by Mr.Eric',1,'2015-08-21 00:00:00','2015-08-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(595,'2015-08-24 00:00:00',1,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for travelling to Raichur',1,'2015-08-24 00:00:00','2015-08-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(596,'2015-08-26 00:00:00',1,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for purchase of wood',1,'2015-08-26 00:00:00','2015-08-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(597,'2015-08-28 00:00:00',1,'11','RC','GN',0,0,'F',0.00,0,1.00,0,'Voluntary contribution given by sisters',1,'2015-08-28 00:00:00','2015-08-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(598,'2015-08-30 00:00:00',1,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge to Nellore',1,'2015-08-30 00:00:00','2015-08-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(599,'2015-08-30 00:00:00',1,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge to Renigunta',1,'2015-08-30 00:00:00','2015-08-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(600,'2015-08-30 00:00:00',1,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling ticcket to Bellary',1,'2015-08-30 00:00:00','2015-08-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(601,'2015-08-30 00:00:00',1,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'Travelling charge to Raichur',1,'2015-08-30 00:00:00','2015-08-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(602,'2015-08-31 00:00:00',1,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for education expenses to Sr.Jyothi',1,'2015-08-31 00:00:00','2015-08-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(603,'2015-09-01 00:00:00',2,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for provisions',1,'2015-09-01 00:00:00','2015-09-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(604,'2015-09-01 00:00:00',1,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the buying sunmica',1,'2015-09-01 00:00:00','2015-09-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(605,'2015-09-01 00:00:00',2,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution received from the province',1,'2015-09-01 00:00:00','2015-09-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(606,'2015-09-01 00:00:00',2,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the salary to cook',1,'2015-09-01 00:00:00','2015-09-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(607,'2015-09-01 00:00:00',2,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for sisters pocket money',1,'2015-09-01 00:00:00','2015-09-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(608,'2015-09-01 00:00:00',2,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the eggs',1,'2015-09-01 00:00:00','2015-09-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(609,'2015-09-01 00:00:00',2,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for salary to driver',1,'2015-09-01 00:00:00','2015-09-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(610,'2015-09-01 00:00:00',1,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'Maintenance of the house',1,'2015-09-01 00:00:00','2015-09-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(611,'2015-09-01 00:00:00',1,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from communities(Thiru,Ramnadu,Koova,Thaiyur,Muttukadu,Dharmapuri)',1,'2015-09-01 00:00:00','2015-09-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(612,'2015-09-01 00:00:00',1,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'Help to the Novitiate',1,'2015-09-01 00:00:00','2015-09-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(613,'2015-09-01 00:00:00',1,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'Amount givent to the provincialate',1,'2015-09-01 00:00:00','2015-09-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(614,'2015-09-01 00:00:00',1,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the purchase of wood',1,'2015-09-01 00:00:00','2015-09-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(615,'2015-09-01 00:00:00',2,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the salary to cook',1,'2015-09-01 00:00:00','2015-09-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(616,'2015-09-02 00:00:00',2,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for fuel for the vehicle',1,'2015-09-02 00:00:00','2015-09-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(617,'2015-09-02 00:00:00',2,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the milk',1,'2015-09-02 00:00:00','2015-09-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(618,'2015-09-03 00:00:00',1,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from kovur comty',1,'2015-09-03 00:00:00','2015-09-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(619,'2015-09-03 00:00:00',1,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for cell phone recharge',1,'2015-09-03 00:00:00','2015-09-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(620,'2015-09-03 00:00:00',2,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for veg and fruits',1,'2015-09-03 00:00:00','2015-09-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(621,'2015-09-03 00:00:00',2,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the garlands',1,'2015-09-03 00:00:00','2015-09-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(622,'2015-09-04 00:00:00',1,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for food items',1,'2015-09-04 00:00:00','2015-09-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(623,'2015-09-04 00:00:00',1,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for education of sisters-admission fee',1,'2015-09-04 00:00:00','2015-09-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(624,'2015-09-04 00:00:00',1,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for auto charges',1,'2015-09-04 00:00:00','2015-09-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(625,'2015-09-04 00:00:00',1,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for travelling to Chennai',1,'2015-09-04 00:00:00','2015-09-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(626,'2015-09-05 00:00:00',1,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for carpenter',1,'2015-09-05 00:00:00','2015-09-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(627,'2015-09-05 00:00:00',1,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for mesh',1,'2015-09-05 00:00:00','2015-09-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(628,'2015-09-05 00:00:00',1,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for plumber cooly',1,'2015-09-05 00:00:00','2015-09-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(629,'2015-09-06 00:00:00',2,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the sweets',1,'2015-09-06 00:00:00','2015-09-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(630,'2015-09-06 00:00:00',1,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'Donation given to Sr.Bala',1,'2015-09-06 00:00:00','2015-09-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(631,'2015-09-06 00:00:00',2,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the etables',1,'2015-09-06 00:00:00','2015-09-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(632,'2015-09-06 00:00:00',1,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'Being towards bank sb interest',1,'2015-09-06 00:00:00','2015-09-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(633,'2015-09-06 00:00:00',2,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the gas cylinder',1,'2015-09-06 00:00:00','2015-09-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(634,'2015-09-08 00:00:00',2,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the mass offering',1,'2015-09-08 00:00:00','2015-09-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(635,'2015-09-08 00:00:00',1,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for sanitary items',1,'2015-09-08 00:00:00','2015-09-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(636,'2015-09-08 00:00:00',2,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for purchase of fish',1,'2015-09-08 00:00:00','2015-09-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(637,'2015-09-08 00:00:00',1,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for hardware things',1,'2015-09-08 00:00:00','2015-09-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(638,'2015-09-09 00:00:00',1,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the electronic service',1,'2015-09-09 00:00:00','2015-09-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(639,'2015-09-09 00:00:00',1,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for exam fees for sisters',1,'2015-09-09 00:00:00','2015-09-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(640,'2015-09-09 00:00:00',1,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for etables',1,'2015-09-09 00:00:00','2015-09-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(641,'2015-09-09 00:00:00',1,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the beeding',1,'2015-09-09 00:00:00','2015-09-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(642,'2015-09-09 00:00:00',1,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for snacks',1,'2015-09-09 00:00:00','2015-09-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(643,'2015-09-09 00:00:00',1,'04','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from Muttukadu comty',1,'2015-09-09 00:00:00','2015-09-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(644,'2015-09-09 00:00:00',1,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the fruits',1,'2015-09-09 00:00:00','2015-09-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(645,'2015-09-09 00:00:00',1,'05','RC','GN',0,0,'F',0.00,0,1.00,0,'contribution from Koovathur comty',1,'2015-09-09 00:00:00','2015-09-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(646,'2015-09-09 00:00:00',1,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the glass ware',1,'2015-09-09 00:00:00','2015-09-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(647,'2015-09-10 00:00:00',2,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the salary to cook',1,'2015-09-10 00:00:00','2015-09-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(648,'2015-09-10 00:00:00',1,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the travelling to chennai',1,'2015-09-10 00:00:00','2015-09-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(649,'2015-09-11 00:00:00',2,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the telephone bill',1,'2015-09-11 00:00:00','2015-09-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(650,'2015-09-11 00:00:00',2,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the telephone bill',1,'2015-09-11 00:00:00','2015-09-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(651,'2015-09-11 00:00:00',1,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the telephone bill',1,'2015-09-11 00:00:00','2015-09-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(652,'2015-09-11 00:00:00',1,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the diesel',1,'2015-09-11 00:00:00','2015-09-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(653,'2015-09-11 00:00:00',2,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the eggs',1,'2015-09-11 00:00:00','2015-09-11 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(654,'2015-09-12 00:00:00',2,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the driver wages',1,'2015-09-12 00:00:00','2015-09-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(655,'2015-09-13 00:00:00',2,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the travelling charges',1,'2015-09-13 00:00:00','2015-09-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(656,'2015-09-13 00:00:00',2,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the petrol',1,'2015-09-13 00:00:00','2015-09-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(657,'2015-09-13 00:00:00',1,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the photos',1,'2015-09-13 00:00:00','2015-09-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(658,'2015-09-13 00:00:00',2,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for flowers',1,'2015-09-13 00:00:00','2015-09-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(659,'2015-09-13 00:00:00',1,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the tollgate fee',1,'2015-09-13 00:00:00','2015-09-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(660,'2015-09-14 00:00:00',1,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the snacks',1,'2015-09-14 00:00:00','2015-09-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(661,'2015-09-14 00:00:00',2,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the diesel',1,'2015-09-14 00:00:00','2015-09-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(662,'2015-09-16 00:00:00',3,'01','RC','GN',4,21,'F',162496.00,17,1.00,17,'Being towards foreign contribution received form Miracle Foundation',1,'2015-09-16 00:00:00','2015-09-16 00:00:00',0,0,162496.00,162496.00,'Miracle foundation, ',0,0,'','',0,''),(663,'2015-09-17 00:00:00',1,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the fevicol item',1,'2015-09-17 00:00:00','2015-09-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(664,'2015-09-17 00:00:00',1,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the electrical items',1,'2015-09-17 00:00:00','2015-09-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(665,'2015-09-17 00:00:00',1,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the electrical items',1,'2015-09-17 00:00:00','2015-09-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(666,'2015-09-18 00:00:00',2,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the chargeable light',1,'2015-09-18 00:00:00','2015-09-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(667,'2015-09-18 00:00:00',2,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the b\'day celebration',1,'2015-09-18 00:00:00','2015-09-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(668,'2015-09-18 00:00:00',2,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the cake',1,'2015-09-18 00:00:00','2015-09-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(669,'2015-09-19 00:00:00',2,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the gas cylinder',1,'2015-09-19 00:00:00','2015-09-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(670,'2015-09-19 00:00:00',1,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the purchase of suiting',1,'2015-09-19 00:00:00','2015-09-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(671,'2015-09-19 00:00:00',2,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the fish and chicken',1,'2015-09-19 00:00:00','2015-09-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(672,'2015-09-19 00:00:00',2,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the food items',1,'2015-09-19 00:00:00','2015-09-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(673,'2015-09-19 00:00:00',1,'02','CN','GN',0,0,'F',0.00,0,1.00,0,'withdrawal from the bank for the maintenance of the house',1,'2015-09-19 00:00:00','2015-09-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(674,'2015-09-19 00:00:00',2,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the drinks',1,'2015-09-19 00:00:00','2015-09-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(675,'2015-09-19 00:00:00',2,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the newspaper',1,'2015-09-19 00:00:00','2015-09-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(676,'2015-09-19 00:00:00',2,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the food items',1,'2015-09-19 00:00:00','2015-09-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(677,'2015-09-19 00:00:00',1,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the purchase of fan',1,'2015-09-19 00:00:00','2015-09-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(678,'2015-09-19 00:00:00',1,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the sweets',1,'2015-09-19 00:00:00','2015-09-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(679,'2015-09-20 00:00:00',2,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the consultation fee',1,'2015-09-20 00:00:00','2015-09-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(680,'2015-09-20 00:00:00',2,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the blood test',1,'2015-09-20 00:00:00','2015-09-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(681,'2015-09-20 00:00:00',1,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the medecine',1,'2015-09-20 00:00:00','2015-09-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(682,'2015-09-20 00:00:00',2,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the medecine',1,'2015-09-20 00:00:00','2015-09-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(683,'2015-09-20 00:00:00',2,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the diesel',1,'2015-09-20 00:00:00','2015-09-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(684,'2015-09-20 00:00:00',2,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the veg & Fish & Fruits',1,'2015-09-20 00:00:00','2015-09-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(685,'2015-09-20 00:00:00',1,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the travelling to thirunelveli',1,'2015-09-20 00:00:00','2015-09-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(686,'2015-09-20 00:00:00',1,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the driver wages',1,'2015-09-20 00:00:00','2015-09-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(687,'2015-09-20 00:00:00',2,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the medecine',1,'2015-09-20 00:00:00','2015-09-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(688,'2015-09-20 00:00:00',1,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the toll gate fee and parking charges',1,'2015-09-20 00:00:00','2015-09-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(689,'2015-09-21 00:00:00',3,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash deducted by bank charges',1,'2015-09-21 00:00:00','2015-09-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(690,'2015-09-21 00:00:00',2,'41','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the biscuits',1,'2015-09-21 00:00:00','2015-09-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(691,'2015-09-21 00:00:00',3,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Contribution given to Nandrekal comty',1,'2015-09-21 00:00:00','2015-09-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(692,'2015-09-21 00:00:00',2,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the eggs',1,'2015-09-21 00:00:00','2015-09-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(693,'2015-09-22 00:00:00',2,'44','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the food items',1,'2015-09-22 00:00:00','2015-09-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(694,'2015-09-22 00:00:00',1,'41','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the consultation fee',1,'2015-09-22 00:00:00','2015-09-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(695,'2015-09-22 00:00:00',2,'42','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the mutton',1,'2015-09-22 00:00:00','2015-09-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(696,'2015-09-22 00:00:00',1,'43','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the diesel',1,'2015-09-22 00:00:00','2015-09-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(697,'2015-09-22 00:00:00',1,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the maintenance of novices',1,'2015-09-22 00:00:00','2015-09-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(698,'2015-09-22 00:00:00',1,'42','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the bangalore ticket',1,'2015-09-22 00:00:00','2015-09-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(699,'2015-09-22 00:00:00',2,'43','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the door mats',1,'2015-09-22 00:00:00','2015-09-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(700,'2015-09-22 00:00:00',1,'44','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the cake',1,'2015-09-22 00:00:00','2015-09-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(701,'2015-09-22 00:00:00',1,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the travelling to Bangalore and Dharmapuri',1,'2015-09-22 00:00:00','2015-09-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(702,'2015-09-23 00:00:00',2,'45','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the purchase of veg and fruits',1,'2015-09-23 00:00:00','2015-09-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(703,'2015-09-24 00:00:00',3,'02','RC','GN',5,55,'F',1238.56,63,80.00,63,'Amount received from Holy cross ministry',1,'2015-09-24 00:00:00','2015-09-24 00:00:00',0,0,99084.80,99085.00,'HOLY CROSS MINISTRY, ',0,0,'','',0,''),(704,'2015-09-25 00:00:00',1,'45','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for purchase of electrical items',1,'2015-09-25 00:00:00','2015-09-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(705,'2015-09-26 00:00:00',1,'48','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the mess fee and other items',1,'2015-09-26 00:00:00','2015-09-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(706,'2015-09-26 00:00:00',1,'46','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the electrical items',1,'2015-09-26 00:00:00','2015-09-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(707,'2015-09-26 00:00:00',1,'47','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the electricion cooly',1,'2015-09-26 00:00:00','2015-09-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(708,'2015-09-28 00:00:00',1,'06','RC','GN',0,0,'F',0.00,0,1.00,0,'Being towards contribution received form thaiyur community',1,'2015-09-28 00:00:00','2015-09-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(709,'2015-09-29 00:00:00',2,'46','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the Reg.post',1,'2015-09-29 00:00:00','2015-09-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(710,'2015-09-29 00:00:00',1,'49','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for doctor fee and medecine',1,'2015-09-29 00:00:00','2015-09-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(711,'2015-09-29 00:00:00',2,'47','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the sticihing charges',1,'2015-09-29 00:00:00','2015-09-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(712,'2015-09-30 00:00:00',1,'50','PY','GN',0,0,'F',0.00,0,1.00,0,'Paid for the travelling charge to Sr.caroline',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(713,'2015-09-30 00:00:00',2,'48','PY','GN',0,0,'F',0.00,0,1.00,0,'paid for the veg & Fish & Fruits',1,'2015-09-30 00:00:00','2015-09-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(714,'2015-10-01 00:00:00',2,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the milk',1,'2015-10-01 00:00:00','2015-10-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(715,'2015-10-01 00:00:00',2,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the sisters pocket money',1,'2015-10-01 00:00:00','2015-10-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(716,'2015-10-01 00:00:00',3,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'being towards paid for Nandrekal comty',1,'2015-10-01 00:00:00','2015-10-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(717,'2015-10-01 00:00:00',1,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'Cash withdrawn for the maintenance of the house',1,'2015-10-01 00:00:00','2015-10-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(718,'2015-10-01 00:00:00',2,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from province A/C No.7320',1,'2015-10-01 00:00:00','2015-10-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(719,'2015-10-01 00:00:00',1,'02','CN','GN',0,0,'F',0.00,0,1.00,0,'Cash paid for novitiate',1,'2015-10-01 00:00:00','2015-10-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(720,'2015-10-01 00:00:00',2,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for Reg.post',1,'2015-10-01 00:00:00','2015-10-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(721,'2015-10-01 00:00:00',1,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Help to the missions-Novitiate',1,'2015-10-01 00:00:00','2015-10-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(722,'2015-10-01 00:00:00',2,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the Reg.post',1,'2015-10-01 00:00:00','2015-10-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(723,'2015-10-01 00:00:00',1,'03','CN','GN',0,0,'F',0.00,0,1.00,0,'Cash paid for CRI',1,'2015-10-01 00:00:00','2015-10-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(724,'2015-10-01 00:00:00',2,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the puffs',1,'2015-10-01 00:00:00','2015-10-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(725,'2015-10-01 00:00:00',2,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the doctor fee',1,'2015-10-01 00:00:00','2015-10-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(726,'2015-10-02 00:00:00',2,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the cook ',1,'2015-10-02 00:00:00','2015-10-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(727,'2015-10-02 00:00:00',2,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for sanitary items',1,'2015-10-02 00:00:00','2015-10-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(728,'2015-10-02 00:00:00',2,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for veg and fruits',1,'2015-10-02 00:00:00','2015-10-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(729,'2015-10-02 00:00:00',2,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for driver',1,'2015-10-02 00:00:00','2015-10-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(730,'2015-10-03 00:00:00',1,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for sanitary items',1,'2015-10-03 00:00:00','2015-10-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(731,'2015-10-03 00:00:00',2,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the nails',1,'2015-10-03 00:00:00','2015-10-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(732,'2015-10-03 00:00:00',1,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for taps and pipes',1,'2015-10-03 00:00:00','2015-10-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(733,'2015-10-03 00:00:00',2,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the petrol',1,'2015-10-03 00:00:00','2015-10-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(734,'2015-10-03 00:00:00',2,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the diesel',1,'2015-10-03 00:00:00','2015-10-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(735,'2015-10-03 00:00:00',1,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for A/C repair',1,'2015-10-03 00:00:00','2015-10-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(736,'2015-10-03 00:00:00',2,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the mixture',1,'2015-10-03 00:00:00','2015-10-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(737,'2015-10-03 00:00:00',2,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the chicken',1,'2015-10-03 00:00:00','2015-10-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(738,'2015-10-03 00:00:00',2,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for food items',1,'2015-10-03 00:00:00','2015-10-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(739,'2015-10-03 00:00:00',1,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for provisions',1,'2015-10-03 00:00:00','2015-10-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(740,'2015-10-03 00:00:00',2,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the beeding',1,'2015-10-03 00:00:00','2015-10-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(741,'2015-10-04 00:00:00',1,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for chicken',1,'2015-10-04 00:00:00','2015-10-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(742,'2015-10-05 00:00:00',2,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for Doctor Reg.fee',1,'2015-10-05 00:00:00','2015-10-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(743,'2015-10-05 00:00:00',1,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for sanitary items',1,'2015-10-05 00:00:00','2015-10-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(744,'2015-10-05 00:00:00',2,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the x-RAY',1,'2015-10-05 00:00:00','2015-10-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(745,'2015-10-05 00:00:00',1,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for Dental fee',1,'2015-10-05 00:00:00','2015-10-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(746,'2015-10-05 00:00:00',2,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for gas cylinder',1,'2015-10-05 00:00:00','2015-10-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(747,'2015-10-05 00:00:00',2,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'being cash paid for the sanitary items',1,'2015-10-05 00:00:00','2015-10-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(748,'2015-10-05 00:00:00',2,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the water paint',1,'2015-10-05 00:00:00','2015-10-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(749,'2015-10-05 00:00:00',2,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the color pens',1,'2015-10-05 00:00:00','2015-10-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(750,'2015-10-05 00:00:00',1,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for travelling charge to Ramnadu',1,'2015-10-05 00:00:00','2015-10-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(751,'2015-10-05 00:00:00',2,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the starterrs',1,'2015-10-05 00:00:00','2015-10-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(752,'2015-10-05 00:00:00',1,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for diesel',1,'2015-10-05 00:00:00','2015-10-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(753,'2015-10-05 00:00:00',1,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for travelling charge to Thirunelveli',1,'2015-10-05 00:00:00','2015-10-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(754,'2015-10-05 00:00:00',2,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the gas cylinder',1,'2015-10-05 00:00:00','2015-10-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(755,'2015-10-06 00:00:00',3,'03','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash apid for Gas cylinder',1,'2015-10-06 00:00:00','2015-10-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(756,'2015-10-06 00:00:00',3,'11','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash apid for tools',1,'2015-10-06 00:00:00','2015-10-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(757,'2015-10-06 00:00:00',3,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'Cash withdrawn for the maintenance of the house',1,'2015-10-06 00:00:00','2015-10-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(758,'2015-10-06 00:00:00',3,'10','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash apid for medecine',1,'2015-10-06 00:00:00','2015-10-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(759,'2015-10-06 00:00:00',3,'06','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for the Reg.post',1,'2015-10-06 00:00:00','2015-10-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(760,'2015-10-06 00:00:00',3,'04','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for the cook salary',1,'2015-10-06 00:00:00','2015-10-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(761,'2015-10-06 00:00:00',3,'08','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for milk',1,'2015-10-06 00:00:00','2015-10-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(762,'2015-10-06 00:00:00',3,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the Reg.post',1,'2015-10-06 00:00:00','2015-10-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(763,'2015-10-06 00:00:00',3,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the sisters pocket money',1,'2015-10-06 00:00:00','2015-10-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(764,'2015-10-06 00:00:00',3,'05','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for the driver salary',1,'2015-10-06 00:00:00','2015-10-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(765,'2015-10-06 00:00:00',3,'02','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash apid for Gas cylinder',1,'2015-10-06 00:00:00','2015-10-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(766,'2015-10-06 00:00:00',1,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Being towards contribution received form Pondy community',1,'2015-10-06 00:00:00','2015-10-06 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(767,'2015-10-07 00:00:00',3,'13','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for buying nails',1,'2015-10-07 00:00:00','2015-10-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(768,'2015-10-07 00:00:00',2,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the medecine (Michael)',1,'2015-10-07 00:00:00','2015-10-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(769,'2015-10-07 00:00:00',2,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the tools(Garden)',1,'2015-10-07 00:00:00','2015-10-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(770,'2015-10-07 00:00:00',3,'19','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for the sanitary items',1,'2015-10-07 00:00:00','2015-10-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(771,'2015-10-07 00:00:00',3,'16','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for mixture',1,'2015-10-07 00:00:00','2015-10-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(772,'2015-10-07 00:00:00',3,'14','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for petrol',1,'2015-10-07 00:00:00','2015-10-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(773,'2015-10-07 00:00:00',3,'17','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for chicken',1,'2015-10-07 00:00:00','2015-10-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(774,'2015-10-07 00:00:00',3,'15','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for diesel',1,'2015-10-07 00:00:00','2015-10-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(775,'2015-10-07 00:00:00',1,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'Being towards contribution received form Kovur community',1,'2015-10-07 00:00:00','2015-10-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(776,'2015-10-07 00:00:00',3,'18','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for food items',1,'2015-10-07 00:00:00','2015-10-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(777,'2015-10-07 00:00:00',2,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the honey and other items',1,'2015-10-07 00:00:00','2015-10-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(778,'2015-10-07 00:00:00',3,'12','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for beeding',1,'2015-10-07 00:00:00','2015-10-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(779,'2015-10-07 00:00:00',1,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for chicken',1,'2015-10-07 00:00:00','2015-10-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(780,'2015-10-07 00:00:00',3,'20','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for the veg and fruits',1,'2015-10-07 00:00:00','2015-10-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(781,'2015-10-08 00:00:00',1,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for purchase of sprinkler',1,'2015-10-08 00:00:00','2015-10-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(782,'2015-10-08 00:00:00',3,'22','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for starters',1,'2015-10-08 00:00:00','2015-10-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(783,'2015-10-08 00:00:00',1,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for mess fee and other items',1,'2015-10-08 00:00:00','2015-10-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(784,'2015-10-08 00:00:00',1,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for purchase of fruits and snacks',1,'2015-10-08 00:00:00','2015-10-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(785,'2015-10-08 00:00:00',3,'23','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for doctor fee',1,'2015-10-08 00:00:00','2015-10-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(786,'2015-10-08 00:00:00',3,'24','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash apid for honey',1,'2015-10-08 00:00:00','2015-10-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(787,'2015-10-08 00:00:00',1,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for stationery items',1,'2015-10-08 00:00:00','2015-10-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(788,'2015-10-08 00:00:00',3,'21','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for color pens',1,'2015-10-08 00:00:00','2015-10-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(789,'2015-10-08 00:00:00',3,'25','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash apid for carpenter cooly',1,'2015-10-08 00:00:00','2015-10-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(790,'2015-10-08 00:00:00',2,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the carpenter cooly',1,'2015-10-08 00:00:00','2015-10-08 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(791,'2015-10-09 00:00:00',3,'34','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for craft items',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(792,'2015-10-09 00:00:00',1,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for napkins',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(793,'2015-10-09 00:00:00',2,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the medecine ',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(794,'2015-10-09 00:00:00',2,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the foam',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(795,'2015-10-09 00:00:00',2,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for toll gate fee',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(796,'2015-10-09 00:00:00',2,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'being cash paid for diesel',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(797,'2015-10-09 00:00:00',3,'33','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for dec.items',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(798,'2015-10-09 00:00:00',1,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for bags',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(799,'2015-10-09 00:00:00',2,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the craft items',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(800,'2015-10-09 00:00:00',3,'36','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for fruits',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(801,'2015-10-09 00:00:00',3,'32','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for dec.items',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(802,'2015-10-09 00:00:00',2,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the deco.items',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(803,'2015-10-09 00:00:00',3,'28','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for water paint',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(804,'2015-10-09 00:00:00',3,'31','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for dec.items',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(805,'2015-10-09 00:00:00',3,'37','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for diesel',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(806,'2015-10-09 00:00:00',1,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for nighties',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(807,'2015-10-09 00:00:00',2,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the deco.items',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(808,'2015-10-09 00:00:00',3,'26','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for x-ray',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(809,'2015-10-09 00:00:00',2,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the fruits',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(810,'2015-10-09 00:00:00',3,'29','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash apid for toll gate fee',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(811,'2015-10-09 00:00:00',3,'35','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for medecine',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(812,'2015-10-09 00:00:00',3,'30','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for foam',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(813,'2015-10-09 00:00:00',3,'27','PY','GN',0,0,'F',0.00,0,0.00,0,'bBeing cash apid for sanitary items',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(814,'2015-10-09 00:00:00',1,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for juice maker',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(815,'2015-10-09 00:00:00',2,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the deco.items',1,'2015-10-09 00:00:00','2015-10-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(816,'2015-10-10 00:00:00',2,'42','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the medecine ',1,'2015-10-10 00:00:00','2015-10-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(817,'2015-10-10 00:00:00',3,'38','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for the wages',1,'2015-10-10 00:00:00','2015-10-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(818,'2015-10-10 00:00:00',1,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash piad for catridges',1,'2015-10-10 00:00:00','2015-10-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(819,'2015-10-10 00:00:00',3,'42','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for bangles',1,'2015-10-10 00:00:00','2015-10-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(820,'2015-10-10 00:00:00',2,'41','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the electrical pipes',1,'2015-10-10 00:00:00','2015-10-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(821,'2015-10-10 00:00:00',3,'41','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for medecine',1,'2015-10-10 00:00:00','2015-10-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(822,'2015-10-10 00:00:00',2,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cassh paid for the grinder',1,'2015-10-10 00:00:00','2015-10-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(823,'2015-10-10 00:00:00',3,'40','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for electrical repair',1,'2015-10-10 00:00:00','2015-10-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(824,'2015-10-10 00:00:00',2,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the driver wages',1,'2015-10-10 00:00:00','2015-10-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(825,'2015-10-10 00:00:00',1,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for cookies',1,'2015-10-10 00:00:00','2015-10-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(826,'2015-10-10 00:00:00',2,'43','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the bangles',1,'2015-10-10 00:00:00','2015-10-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(827,'2015-10-10 00:00:00',3,'39','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for grinder repair',1,'2015-10-10 00:00:00','2015-10-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(828,'2015-10-10 00:00:00',1,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for chukku powder',1,'2015-10-10 00:00:00','2015-10-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(829,'2015-10-12 00:00:00',3,'48','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for carpenter cooly',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(830,'2015-10-12 00:00:00',2,'45','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for doctor fee',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(831,'2015-10-12 00:00:00',3,'43','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for onions',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(832,'2015-10-12 00:00:00',1,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for puffs',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(833,'2015-10-12 00:00:00',3,'47','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for plumber cooly',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(834,'2015-10-12 00:00:00',2,'44','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for onions',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(835,'2015-10-12 00:00:00',1,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the travelling charge',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(836,'2015-10-12 00:00:00',2,'49','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for carpenter cooly',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(837,'2015-10-12 00:00:00',1,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for xerox',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(838,'2015-10-12 00:00:00',1,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for eggs',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(839,'2015-10-12 00:00:00',2,'48','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for plumber cooly',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(840,'2015-10-12 00:00:00',3,'46','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for wall clock repair',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(841,'2015-10-12 00:00:00',1,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for purchase of stainer and other items',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(842,'2015-10-12 00:00:00',2,'47','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for wall clock repair',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(843,'2015-10-12 00:00:00',3,'45','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for switches',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(844,'2015-10-12 00:00:00',2,'50','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for mission sunday',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(845,'2015-10-12 00:00:00',3,'49','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for mission sunday',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(846,'2015-10-12 00:00:00',2,'46','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for switches',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(847,'2015-10-12 00:00:00',3,'44','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for doctor fee',1,'2015-10-12 00:00:00','2015-10-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(848,'2015-10-14 00:00:00',2,'56','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for cake',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(849,'2015-10-14 00:00:00',1,'08','RC','GN',0,0,'F',0.00,0,1.00,0,'Mess fee from Bellay comty',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(850,'2015-10-14 00:00:00',1,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for bread',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(851,'2015-10-14 00:00:00',2,'52','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for fish',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(852,'2015-10-14 00:00:00',1,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'Mess fee from Nandrekal comty',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(853,'2015-10-14 00:00:00',1,'12','RC','GN',0,0,'F',0.00,0,1.00,0,'Mess fee from Koovathur comty',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(854,'2015-10-14 00:00:00',3,'56','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for mass offering',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(855,'2015-10-14 00:00:00',3,'53','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for newspaper',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(856,'2015-10-14 00:00:00',1,'07','RC','GN',0,0,'F',0.00,0,1.00,0,'Mess fee from Porur comty',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(857,'2015-10-14 00:00:00',1,'16','RC','GN',0,0,'F',0.00,0,1.00,0,'Mess fee from Ramnadu comty',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(858,'2015-10-14 00:00:00',1,'18','RC','GN',0,0,'F',0.00,0,1.00,0,'refund of Tickets',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(859,'2015-10-14 00:00:00',3,'54','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for wood items',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(860,'2015-10-14 00:00:00',1,'11','RC','GN',0,0,'F',0.00,0,1.00,0,'Mess fee from Thirunelveli comty',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(861,'2015-10-14 00:00:00',3,'52','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for diesel',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(862,'2015-10-14 00:00:00',1,'06','RC','GN',0,0,'F',0.00,0,1.00,0,'Mess fee from Muttukadu comty ',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(863,'2015-10-14 00:00:00',1,'15','RC','GN',0,0,'F',0.00,0,1.00,0,'Mess fee from nandambakkam',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(864,'2015-10-14 00:00:00',2,'54','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for newspaper',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(865,'2015-10-14 00:00:00',1,'17','RC','GN',0,0,'F',0.00,0,1.00,0,'Refund of Tickets',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(866,'2015-10-14 00:00:00',3,'50','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for medecine',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(867,'2015-10-14 00:00:00',1,'10','RC','GN',0,0,'F',0.00,0,1.00,0,'Mess fee from Thaiyur comty',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(868,'2015-10-14 00:00:00',1,'05','RC','GN',0,0,'F',0.00,0,1.00,0,'Mess fee from Dharmapuri comty',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(869,'2015-10-14 00:00:00',3,'55','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cassh paid for cake',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(870,'2015-10-14 00:00:00',1,'14','RC','GN',0,0,'F',0.00,0,1.00,0,'Mess fee from Kovur comty',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(871,'2015-10-14 00:00:00',2,'55','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for wood items',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(872,'2015-10-14 00:00:00',2,'57','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for mass offering',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(873,'2015-10-14 00:00:00',1,'09','RC','GN',0,0,'F',0.00,0,1.00,0,'Mess fee from Raichur comty',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(874,'2015-10-14 00:00:00',1,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for veg and fruits',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(875,'2015-10-14 00:00:00',2,'53','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for diesel',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(876,'2015-10-14 00:00:00',1,'04','RC','GN',0,0,'F',0.00,0,1.00,0,'Mess fee from Pondy comty',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(877,'2015-10-14 00:00:00',3,'51','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for fish',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(878,'2015-10-14 00:00:00',1,'13','RC','GN',0,0,'F',0.00,0,1.00,0,'Mess fee from Tuticorin comty',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(879,'2015-10-14 00:00:00',2,'51','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for medecine',1,'2015-10-14 00:00:00','2015-10-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(880,'2015-10-15 00:00:00',3,'57','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for puffs',1,'2015-10-15 00:00:00','2015-10-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(881,'2015-10-15 00:00:00',3,'58','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for medecine',1,'2015-10-15 00:00:00','2015-10-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(882,'2015-10-15 00:00:00',3,'59','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for veg and fruits',1,'2015-10-15 00:00:00','2015-10-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(883,'2015-10-16 00:00:00',1,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for chicken',1,'2015-10-16 00:00:00','2015-10-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(884,'2015-10-16 00:00:00',1,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for diesel',1,'2015-10-16 00:00:00','2015-10-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(885,'2015-10-17 00:00:00',1,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for veg and fruits',1,'2015-10-17 00:00:00','2015-10-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(886,'2015-10-17 00:00:00',1,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for telephone bill',1,'2015-10-17 00:00:00','2015-10-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(887,'2015-10-17 00:00:00',1,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for church expenses',1,'2015-10-17 00:00:00','2015-10-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(888,'2015-10-17 00:00:00',1,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for Ice-cream',1,'2015-10-17 00:00:00','2015-10-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(889,'2015-10-17 00:00:00',1,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for petrol',1,'2015-10-17 00:00:00','2015-10-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(890,'2015-10-18 00:00:00',1,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for cancellation of tickets',1,'2015-10-18 00:00:00','2015-10-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(891,'2015-10-18 00:00:00',1,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for cancellation of tickets',1,'2015-10-18 00:00:00','2015-10-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(892,'2015-10-19 00:00:00',1,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for CRI ',1,'2015-10-19 00:00:00','2015-10-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(893,'2015-10-20 00:00:00',1,'43','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for Ramnadu ',1,'2015-10-20 00:00:00','2015-10-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(894,'2015-10-20 00:00:00',1,'45','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for provisions',1,'2015-10-20 00:00:00','2015-10-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(895,'2015-10-20 00:00:00',1,'46','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash apid for eggs',1,'2015-10-20 00:00:00','2015-10-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(896,'2015-10-20 00:00:00',1,'41','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for eggs',1,'2015-10-20 00:00:00','2015-10-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(897,'2015-10-20 00:00:00',1,'42','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for thirunelveli',1,'2015-10-20 00:00:00','2015-10-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(898,'2015-10-20 00:00:00',1,'44','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for purchase of toner ',1,'2015-10-20 00:00:00','2015-10-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(899,'2015-10-20 00:00:00',1,'47','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for rice',1,'2015-10-20 00:00:00','2015-10-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(900,'2015-10-21 00:00:00',1,'48','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for flush tank',1,'2015-10-21 00:00:00','2015-10-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(901,'2015-10-21 00:00:00',1,'52','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for provisions',1,'2015-10-21 00:00:00','2015-10-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(902,'2015-10-21 00:00:00',1,'50','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for veg and fruits',1,'2015-10-21 00:00:00','2015-10-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(903,'2015-10-21 00:00:00',1,'51','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for fish',1,'2015-10-21 00:00:00','2015-10-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(904,'2015-10-21 00:00:00',1,'53','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for provisions',1,'2015-10-21 00:00:00','2015-10-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(905,'2015-10-21 00:00:00',1,'49','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for buckets and other items',1,'2015-10-21 00:00:00','2015-10-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(906,'2015-10-22 00:00:00',1,'56','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for fish',1,'2015-10-22 00:00:00','2015-10-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(907,'2015-10-22 00:00:00',1,'54','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for exam fee',1,'2015-10-22 00:00:00','2015-10-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(908,'2015-10-22 00:00:00',1,'19','RC','GN',0,0,'F',0.00,0,1.00,0,'Being cash received from comty sisters by donation',1,'2015-10-22 00:00:00','2015-10-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(909,'2015-10-22 00:00:00',1,'55','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for Reading stand',1,'2015-10-22 00:00:00','2015-10-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(910,'2015-10-24 00:00:00',1,'66','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for course fee DD',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(911,'2015-10-24 00:00:00',1,'72','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for veg and fruits',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(912,'2015-10-24 00:00:00',1,'64','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for ice cream',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(913,'2015-10-24 00:00:00',1,'61','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for chicken',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(914,'2015-10-24 00:00:00',1,'68','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for eggs',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(915,'2015-10-24 00:00:00',1,'60','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for curd and potatoes',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(916,'2015-10-24 00:00:00',1,'71','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for prawns an dfish',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(917,'2015-10-24 00:00:00',1,'70','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for diesel',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(918,'2015-10-24 00:00:00',1,'65','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for biriyani',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(919,'2015-10-24 00:00:00',1,'62','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for cake',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(920,'2015-10-24 00:00:00',1,'58','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for gas',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(921,'2015-10-24 00:00:00',1,'67','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for petrol',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(922,'2015-10-24 00:00:00',1,'69','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for mutton and chicken',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(923,'2015-10-24 00:00:00',1,'57','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for fish',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(924,'2015-10-24 00:00:00',1,'59','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for gas',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(925,'2015-10-24 00:00:00',1,'63','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for  fruits',1,'2015-10-24 00:00:00','2015-10-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(926,'2015-10-25 00:00:00',1,'74','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for B\'day gi',1,'2015-10-25 00:00:00','2015-10-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(927,'2015-10-25 00:00:00',1,'73','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for mass offering',1,'2015-10-25 00:00:00','2015-10-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(928,'2015-10-26 00:00:00',1,'77','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for valve',1,'2015-10-26 00:00:00','2015-10-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(929,'2015-10-26 00:00:00',1,'76','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid  for mutton',1,'2015-10-26 00:00:00','2015-10-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(930,'2015-10-26 00:00:00',1,'75','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for veg and fruits',1,'2015-10-26 00:00:00','2015-10-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(931,'2015-10-26 00:00:00',1,'78','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for flush tank repair',1,'2015-10-26 00:00:00','2015-10-26 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(932,'2015-10-27 00:00:00',1,'80','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for telephone bill',1,'2015-10-27 00:00:00','2015-10-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(933,'2015-10-27 00:00:00',1,'88','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for electricity bill',1,'2015-10-27 00:00:00','2015-10-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(934,'2015-10-27 00:00:00',1,'79','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for telephone bill',1,'2015-10-27 00:00:00','2015-10-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(935,'2015-10-27 00:00:00',1,'87','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for xerox',1,'2015-10-27 00:00:00','2015-10-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(936,'2015-10-27 00:00:00',1,'82','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for eggs',1,'2015-10-27 00:00:00','2015-10-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(937,'2015-10-27 00:00:00',1,'83','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for provisions',1,'2015-10-27 00:00:00','2015-10-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(938,'2015-10-27 00:00:00',1,'81','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for medecine',1,'2015-10-27 00:00:00','2015-10-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(939,'2015-10-27 00:00:00',1,'84','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for sweets',1,'2015-10-27 00:00:00','2015-10-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(940,'2015-10-27 00:00:00',1,'86','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for suiting',1,'2015-10-27 00:00:00','2015-10-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(941,'2015-10-27 00:00:00',1,'85','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for color charts',1,'2015-10-27 00:00:00','2015-10-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(942,'2015-10-28 00:00:00',1,'90','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for veg and fruits',1,'2015-10-28 00:00:00','2015-10-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(943,'2015-10-28 00:00:00',1,'89','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for food items',1,'2015-10-28 00:00:00','2015-10-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(944,'2015-10-30 00:00:00',1,'92','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid towards auto charges',1,'2015-10-30 00:00:00','2015-10-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(945,'2015-10-30 00:00:00',1,'91','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for fruits',1,'2015-10-30 00:00:00','2015-10-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(946,'2015-10-31 00:00:00',1,'95','PY','GN',0,0,'F',0.00,0,1.00,0,'being cash paid for medecine',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(947,'2015-10-31 00:00:00',1,'109','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for excess amount to General contribution',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(948,'2015-10-31 00:00:00',1,'99','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for Reg.post',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(949,'2015-10-31 00:00:00',1,'97','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for pendrive',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(950,'2015-10-31 00:00:00',1,'98','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for Reg.post',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(951,'2015-10-31 00:00:00',1,'103','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for marriage gift( Leema\'s brother)',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(952,'2015-10-31 00:00:00',1,'106','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for sugar and rice',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(953,'2015-10-31 00:00:00',1,'104','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for Registration fee',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(954,'2015-10-31 00:00:00',1,'102','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for flowers',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(955,'2015-10-31 00:00:00',1,'94','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for medecine',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(956,'2015-10-31 00:00:00',1,'96','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for cake',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(957,'2015-10-31 00:00:00',1,'100','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for workers',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(958,'2015-10-31 00:00:00',1,'101','PY','GN',0,0,'F',0.00,0,1.00,0,'being cash paid for drivers wages for Dasara',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(959,'2015-10-31 00:00:00',1,'105','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for medecine',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(960,'2015-10-31 00:00:00',1,'93','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for towels',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(961,'2015-10-31 00:00:00',1,'108','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for toll gate fee and parking',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(962,'2015-10-31 00:00:00',1,'107','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for  medecine',1,'2015-10-31 00:00:00','2015-10-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(963,'2015-11-01 00:00:00',2,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for cook salary',1,'2015-11-01 00:00:00','2015-11-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(964,'2015-11-01 00:00:00',1,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for candles and others',1,'2015-11-01 00:00:00','2015-11-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(965,'2015-11-01 00:00:00',1,'02','RC','GN',0,0,'F',0.00,0,1.00,0,'Mess fee from Bethel comty',1,'2015-11-01 00:00:00','2015-11-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(966,'2015-11-01 00:00:00',1,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for education of sister Jyothi',1,'2015-11-01 00:00:00','2015-11-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(967,'2015-11-01 00:00:00',2,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for driver salary',1,'2015-11-01 00:00:00','2015-11-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(968,'2015-11-01 00:00:00',2,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from province',1,'2015-11-01 00:00:00','2015-11-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(969,'2015-11-01 00:00:00',1,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Contribution from Kovur community',1,'2015-11-01 00:00:00','2015-11-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(970,'2015-11-01 00:00:00',1,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the community mintenance',1,'2015-11-01 00:00:00','2015-11-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(971,'2015-11-01 00:00:00',1,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for sunday leaf',1,'2015-11-01 00:00:00','2015-11-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(972,'2015-11-01 00:00:00',2,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the cook salary',1,'2015-11-01 00:00:00','2015-11-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(973,'2015-11-01 00:00:00',2,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the chicken',1,'2015-11-01 00:00:00','2015-11-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(974,'2015-11-01 00:00:00',1,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for suiting',1,'2015-11-01 00:00:00','2015-11-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(975,'2015-11-01 00:00:00',2,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the sisters pocket money',1,'2015-11-01 00:00:00','2015-11-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(976,'2015-11-01 00:00:00',1,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for diesel',1,'2015-11-01 00:00:00','2015-11-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(977,'2015-11-01 00:00:00',1,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for greeting card',1,'2015-11-01 00:00:00','2015-11-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(978,'2015-11-01 00:00:00',1,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for etables',1,'2015-11-01 00:00:00','2015-11-01 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(979,'2015-11-02 00:00:00',2,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for milk',1,'2015-11-02 00:00:00','2015-11-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(980,'2015-11-02 00:00:00',2,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the vegetables',1,'2015-11-02 00:00:00','2015-11-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(981,'2015-11-02 00:00:00',2,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the medecine ',1,'2015-11-02 00:00:00','2015-11-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(982,'2015-11-02 00:00:00',2,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the etables',1,'2015-11-02 00:00:00','2015-11-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(983,'2015-11-02 00:00:00',2,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the lights',1,'2015-11-02 00:00:00','2015-11-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(984,'2015-11-02 00:00:00',2,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the medecine ',1,'2015-11-02 00:00:00','2015-11-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(985,'2015-11-02 00:00:00',2,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the candles',1,'2015-11-02 00:00:00','2015-11-02 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(986,'2015-11-03 00:00:00',2,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the driver wages',1,'2015-11-03 00:00:00','2015-11-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(987,'2015-11-03 00:00:00',2,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the toll gate fee',1,'2015-11-03 00:00:00','2015-11-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(988,'2015-11-03 00:00:00',1,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the Sr.Anthonia\'s mother',1,'2015-11-03 00:00:00','2015-11-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(989,'2015-11-03 00:00:00',2,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the colin',1,'2015-11-03 00:00:00','2015-11-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(990,'2015-11-03 00:00:00',2,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the airfreshner',1,'2015-11-03 00:00:00','2015-11-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(991,'2015-11-03 00:00:00',2,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the pendrive',1,'2015-11-03 00:00:00','2015-11-03 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(992,'2015-11-04 00:00:00',2,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the diesel',1,'2015-11-04 00:00:00','2015-11-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(993,'2015-11-04 00:00:00',1,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for pizza',1,'2015-11-04 00:00:00','2015-11-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(994,'2015-11-04 00:00:00',2,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the car parking',1,'2015-11-04 00:00:00','2015-11-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(995,'2015-11-04 00:00:00',1,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for LCD Projector',1,'2015-11-04 00:00:00','2015-11-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(996,'2015-11-04 00:00:00',2,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the biscuits',1,'2015-11-04 00:00:00','2015-11-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(997,'2015-11-04 00:00:00',2,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the sweets',1,'2015-11-04 00:00:00','2015-11-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(998,'2015-11-04 00:00:00',1,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for dental fee for Sr.Hilda',1,'2015-11-04 00:00:00','2015-11-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(999,'2015-11-04 00:00:00',2,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the home visit',1,'2015-11-04 00:00:00','2015-11-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1000,'2015-11-04 00:00:00',1,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for etables',1,'2015-11-04 00:00:00','2015-11-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1001,'2015-11-04 00:00:00',2,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for vehicle fine amount',1,'2015-11-04 00:00:00','2015-11-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1002,'2015-11-04 00:00:00',2,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the etables',1,'2015-11-04 00:00:00','2015-11-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1003,'2015-11-04 00:00:00',2,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the entry ticket',1,'2015-11-04 00:00:00','2015-11-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1004,'2015-11-04 00:00:00',2,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the meals',1,'2015-11-04 00:00:00','2015-11-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1005,'2015-11-04 00:00:00',2,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the fruits',1,'2015-11-04 00:00:00','2015-11-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1006,'2015-11-04 00:00:00',1,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for logitech',1,'2015-11-04 00:00:00','2015-11-04 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1007,'2015-11-05 00:00:00',2,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the fish',1,'2015-11-05 00:00:00','2015-11-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1008,'2015-11-05 00:00:00',2,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the auto charges',1,'2015-11-05 00:00:00','2015-11-05 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1009,'2015-11-07 00:00:00',2,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the eggs',1,'2015-11-07 00:00:00','2015-11-07 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1010,'2015-11-09 00:00:00',1,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cassh paid for the shirting',1,'2015-11-09 00:00:00','2015-11-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1011,'2015-11-09 00:00:00',2,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the eggs',1,'2015-11-09 00:00:00','2015-11-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1012,'2015-11-09 00:00:00',1,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for stock register',1,'2015-11-09 00:00:00','2015-11-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1013,'2015-11-09 00:00:00',3,'01','RC','GN',0,0,'N',0.00,0,0.00,0,'By bank Interest',1,'2015-11-09 00:00:00','2015-11-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1014,'2015-11-09 00:00:00',2,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the workers wages',1,'2015-11-09 00:00:00','2015-11-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1015,'2015-11-09 00:00:00',2,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the cell phone recharge',1,'2015-11-09 00:00:00','2015-11-09 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1016,'2015-11-10 00:00:00',2,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the gas cylinder',1,'2015-11-10 00:00:00','2015-11-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1017,'2015-11-10 00:00:00',2,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the gas cylinder',1,'2015-11-10 00:00:00','2015-11-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1018,'2015-11-10 00:00:00',2,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the telephone repair',1,'2015-11-10 00:00:00','2015-11-10 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1019,'2015-11-12 00:00:00',1,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the battery',1,'2015-11-12 00:00:00','2015-11-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1020,'2015-11-12 00:00:00',1,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the Invertor',1,'2015-11-12 00:00:00','2015-11-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1021,'2015-11-13 00:00:00',1,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the shirting',1,'2015-11-13 00:00:00','2015-11-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1022,'2015-11-13 00:00:00',1,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the xerox',1,'2015-11-13 00:00:00','2015-11-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1023,'2015-11-13 00:00:00',1,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the altar cloth',1,'2015-11-13 00:00:00','2015-11-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1024,'2015-11-16 00:00:00',1,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the sweets',1,'2015-11-16 00:00:00','2015-11-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1025,'2015-11-17 00:00:00',1,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for diesel ',1,'2015-11-17 00:00:00','2015-11-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1026,'2015-11-17 00:00:00',2,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for pork',1,'2015-11-17 00:00:00','2015-11-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1027,'2015-11-17 00:00:00',1,'26','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the general contribution',1,'2015-11-17 00:00:00','2015-11-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1028,'2015-11-17 00:00:00',1,'24','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the cotton cloth',1,'2015-11-17 00:00:00','2015-11-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1029,'2015-11-17 00:00:00',1,'25','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the opticals',1,'2015-11-17 00:00:00','2015-11-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1030,'2015-11-19 00:00:00',2,'42','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the banians',1,'2015-11-19 00:00:00','2015-11-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1031,'2015-11-19 00:00:00',2,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the telephone bill',1,'2015-11-19 00:00:00','2015-11-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1032,'2015-11-19 00:00:00',2,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the telephone bill',1,'2015-11-19 00:00:00','2015-11-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1033,'2015-11-19 00:00:00',2,'41','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the chicken',1,'2015-11-19 00:00:00','2015-11-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1034,'2015-11-19 00:00:00',2,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the telephone bill',1,'2015-11-19 00:00:00','2015-11-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1035,'2015-11-21 00:00:00',1,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the blood test',1,'2015-11-21 00:00:00','2015-11-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1036,'2015-11-21 00:00:00',1,'27','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the doctor fee',1,'2015-11-21 00:00:00','2015-11-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1037,'2015-11-21 00:00:00',1,'28','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the medecine ',1,'2015-11-21 00:00:00','2015-11-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1038,'2015-11-23 00:00:00',1,'30','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the sarees',1,'2015-11-23 00:00:00','2015-11-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1039,'2015-11-23 00:00:00',1,'31','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the towels',1,'2015-11-23 00:00:00','2015-11-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1040,'2015-11-24 00:00:00',1,'33','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the textiles',1,'2015-11-24 00:00:00','2015-11-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1041,'2015-11-24 00:00:00',1,'32','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the travelling to chennai',1,'2015-11-24 00:00:00','2015-11-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1042,'2015-11-27 00:00:00',1,'37','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for sweets',1,'2015-11-27 00:00:00','2015-11-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1043,'2015-11-27 00:00:00',1,'36','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the travelling to thirunelveli',1,'2015-11-27 00:00:00','2015-11-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1044,'2015-11-27 00:00:00',1,'34','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the sarees',1,'2015-11-27 00:00:00','2015-11-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1045,'2015-11-27 00:00:00',1,'35','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the shirts',1,'2015-11-27 00:00:00','2015-11-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1046,'2015-11-27 00:00:00',2,'43','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the medecine ',1,'2015-11-27 00:00:00','2015-11-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1047,'2015-11-27 00:00:00',2,'44','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the veg and fruits',1,'2015-11-27 00:00:00','2015-11-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1048,'2015-11-28 00:00:00',1,'39','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the seminar expenses',1,'2015-11-28 00:00:00','2015-11-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1049,'2015-11-28 00:00:00',1,'38','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the mass offering',1,'2015-11-28 00:00:00','2015-11-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1050,'2015-11-29 00:00:00',1,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'Being cash received from Thirunelveli comty',1,'2015-11-29 00:00:00','2015-11-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1051,'2015-11-29 00:00:00',1,'05','RC','GN',0,0,'F',0.00,0,1.00,0,'Being cash received from Ramnadu comty',1,'2015-11-29 00:00:00','2015-11-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1052,'2015-11-29 00:00:00',1,'40','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the travelling charge to Sr.Caroline',1,'2015-11-29 00:00:00','2015-11-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1053,'2015-11-29 00:00:00',1,'04','RC','GN',0,0,'F',0.00,0,1.00,0,'Being cash received from Tuticorin comty',1,'2015-11-29 00:00:00','2015-11-29 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1054,'2015-12-14 00:00:00',3,'04','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for cook salary',1,'2015-12-14 00:00:00','2015-12-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1055,'2015-12-14 00:00:00',3,'06','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for plumber cooly',1,'2015-12-14 00:00:00','2015-12-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1056,'2015-12-14 00:00:00',3,'03','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for driver salary',1,'2015-12-14 00:00:00','2015-12-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1057,'2015-12-14 00:00:00',3,'05','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for sisters pocket money',1,'2015-12-14 00:00:00','2015-12-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1058,'2015-12-14 00:00:00',3,'01','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for petrol',1,'2015-12-14 00:00:00','2015-12-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1059,'2015-12-14 00:00:00',3,'07','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for toll gate fee',1,'2015-12-14 00:00:00','2015-12-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1060,'2015-12-14 00:00:00',3,'08','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for veg and fruits',1,'2015-12-14 00:00:00','2015-12-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1061,'2015-12-14 00:00:00',3,'02','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for catridge',1,'2015-12-14 00:00:00','2015-12-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1062,'2015-12-14 00:00:00',3,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'Being cash withdrawn for the maintenance',1,'2015-12-14 00:00:00','2015-12-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1063,'2015-12-15 00:00:00',3,'09','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for Reg.post',1,'2015-12-15 00:00:00','2015-12-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1064,'2015-12-16 00:00:00',3,'14','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for motor repair',1,'2015-12-16 00:00:00','2015-12-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1065,'2015-12-16 00:00:00',3,'10','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for battery',1,'2015-12-16 00:00:00','2015-12-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1066,'2015-12-16 00:00:00',3,'15','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for motor reapir',1,'2015-12-16 00:00:00','2015-12-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1067,'2015-12-16 00:00:00',3,'18','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid to the Orphanage',1,'2015-12-16 00:00:00','2015-12-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1068,'2015-12-16 00:00:00',3,'11','PY','GN',0,0,'F',0.00,0,0.00,0,'being cash paid for provisions',1,'2015-12-16 00:00:00','2015-12-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1069,'2015-12-16 00:00:00',3,'17','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for sweets',1,'2015-12-16 00:00:00','2015-12-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1070,'2015-12-16 00:00:00',3,'16','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for clothes',1,'2015-12-16 00:00:00','2015-12-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1071,'2015-12-16 00:00:00',3,'12','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for pipes',1,'2015-12-16 00:00:00','2015-12-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1072,'2015-12-16 00:00:00',3,'13','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for biscuits',1,'2015-12-16 00:00:00','2015-12-16 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1073,'2015-12-17 00:00:00',3,'19','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for boiled rice',1,'2015-12-17 00:00:00','2015-12-17 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1074,'2015-12-18 00:00:00',3,'21','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid as gift',1,'2015-12-18 00:00:00','2015-12-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1075,'2015-12-18 00:00:00',3,'22','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for lights',1,'2015-12-18 00:00:00','2015-12-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1076,'2015-12-18 00:00:00',3,'20','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid recahrge',1,'2015-12-18 00:00:00','2015-12-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1077,'2015-12-19 00:00:00',3,'23','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for flowers',1,'2015-12-19 00:00:00','2015-12-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1078,'2015-12-19 00:00:00',3,'24','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for choclotes',1,'2015-12-19 00:00:00','2015-12-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1079,'2015-12-21 00:00:00',3,'29','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for the sweets',1,'2015-12-21 00:00:00','2015-12-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1080,'2015-12-21 00:00:00',3,'25','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for the fruits',1,'2015-12-21 00:00:00','2015-12-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1081,'2015-12-21 00:00:00',3,'26','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for the milk',1,'2015-12-21 00:00:00','2015-12-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1082,'2015-12-21 00:00:00',3,'27','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for  chicken',1,'2015-12-21 00:00:00','2015-12-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1083,'2015-12-21 00:00:00',3,'28','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for the gas cylinder',1,'2015-12-21 00:00:00','2015-12-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1084,'2015-12-22 00:00:00',3,'30','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for medecine',1,'2015-12-22 00:00:00','2015-12-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1085,'2015-12-22 00:00:00',3,'31','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for electricity bill',1,'2015-12-22 00:00:00','2015-12-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1086,'2015-12-23 00:00:00',3,'01','RC','GN',3,55,'F',935.30,23,100.00,23,'Being amount received from Signora Theresa',1,'2015-12-23 00:00:00','2015-12-23 00:00:00',0,0,93530.00,93530.00,'Signora Theresa, ',0,0,'','',0,''),(1087,'2015-12-24 00:00:00',3,'32','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for sweets',1,'2015-12-24 00:00:00','2015-12-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1088,'2015-12-24 00:00:00',3,'34','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for sweets',1,'2015-12-24 00:00:00','2015-12-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1089,'2015-12-24 00:00:00',3,'36','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for taps and pipes',1,'2015-12-24 00:00:00','2015-12-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1090,'2015-12-24 00:00:00',3,'33','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for diesel',1,'2015-12-24 00:00:00','2015-12-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1091,'2015-12-24 00:00:00',3,'35','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for toll gate fee',1,'2015-12-24 00:00:00','2015-12-24 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1092,'2015-12-28 00:00:00',3,'37','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for auto charges',1,'2015-12-28 00:00:00','2015-12-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1093,'2015-12-28 00:00:00',3,'38','PY','GN',0,0,'F',0.00,0,0.00,0,'Being cash paid for driver wages',1,'2015-12-28 00:00:00','2015-12-28 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1094,'2015-12-31 00:00:00',3,'02','RC','GN',2,21,'F',6483.52,17,100.00,17,'Being amount received from Dallas-Texas',1,'2015-12-31 00:00:00','2015-12-31 00:00:00',0,0,648352.05,648352.05,'Suore Bethlemite, ',0,0,'','',0,''),(1095,'2016-01-05 00:00:00',3,'01','RC','GN',2,21,'F',2802.96,23,100.00,23,'Being cash received from Bethlemite Sisters of Italy-Rome',1,'2016-01-05 00:00:00','2016-01-05 00:00:00',0,0,280296.00,280296.00,'Suore Bethlemite, ',0,0,'','',0,''),(1096,'2016-01-08 00:00:00',3,'02','RC','GN',2,21,'F',3238.21,17,100.00,17,'Being cash received from Central America-Bethlemite Sisters',1,'2016-01-08 00:00:00','2016-01-08 00:00:00',0,0,323821.00,323821.00,'Suore Bethlemite, ',0,0,'','',0,''),(1097,'2016-01-12 00:00:00',3,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'Being cash withdrawn for the maintenance',1,'2016-01-12 00:00:00','2016-01-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1098,'2016-01-12 00:00:00',3,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for engine oil',1,'2016-01-12 00:00:00','2016-01-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1099,'2016-01-12 00:00:00',3,'05','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for garlic',1,'2016-01-12 00:00:00','2016-01-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1100,'2016-01-12 00:00:00',3,'03','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for eggs',1,'2016-01-12 00:00:00','2016-01-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1101,'2016-01-12 00:00:00',3,'02','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for diesel',1,'2016-01-12 00:00:00','2016-01-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1102,'2016-01-12 00:00:00',3,'01','PY','GN',0,0,'F',0.00,0,1.00,0,'Being cash paid for milk',1,'2016-01-12 00:00:00','2016-01-12 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1103,'2016-01-13 00:00:00',3,'06','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for diesel',1,'2016-01-13 00:00:00','2016-01-13 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1104,'2016-01-14 00:00:00',3,'08','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for fruits and sugarcane',1,'2016-01-14 00:00:00','2016-01-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1105,'2016-01-14 00:00:00',3,'07','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for toll gate fee',1,'2016-01-14 00:00:00','2016-01-14 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1106,'2016-01-15 00:00:00',3,'09','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for gas cylinder',1,'2016-01-15 00:00:00','2016-01-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1107,'2016-01-15 00:00:00',3,'10','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for Gas cylinder',1,'2016-01-15 00:00:00','2016-01-15 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1108,'2016-01-18 00:00:00',3,'19','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for telephone bill',1,'2016-01-18 00:00:00','2016-01-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1109,'2016-01-18 00:00:00',3,'14','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for one bag of rice',1,'2016-01-18 00:00:00','2016-01-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1110,'2016-01-18 00:00:00',3,'17','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for telephone bill',1,'2016-01-18 00:00:00','2016-01-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1111,'2016-01-18 00:00:00',3,'15','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for provisions',1,'2016-01-18 00:00:00','2016-01-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1112,'2016-01-18 00:00:00',3,'12','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for boiled rice',1,'2016-01-18 00:00:00','2016-01-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1113,'2016-01-18 00:00:00',3,'16','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash apid for carpenter cooly',1,'2016-01-18 00:00:00','2016-01-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1114,'2016-01-18 00:00:00',3,'18','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for telephone bill',1,'2016-01-18 00:00:00','2016-01-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1115,'2016-01-18 00:00:00',3,'11','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for appalams',1,'2016-01-18 00:00:00','2016-01-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1116,'2016-01-18 00:00:00',3,'20','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for pipes',1,'2016-01-18 00:00:00','2016-01-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1117,'2016-01-18 00:00:00',3,'13','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for sanitary items',1,'2016-01-18 00:00:00','2016-01-18 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1118,'2016-01-19 00:00:00',3,'21','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for bedsheets',1,'2016-01-19 00:00:00','2016-01-19 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1119,'2016-01-20 00:00:00',3,'22','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for diesel',1,'2016-01-20 00:00:00','2016-01-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1120,'2016-01-20 00:00:00',3,'24','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for mass offering',1,'2016-01-20 00:00:00','2016-01-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1121,'2016-01-20 00:00:00',3,'25','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for plumber cooly',1,'2016-01-20 00:00:00','2016-01-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1122,'2016-01-20 00:00:00',3,'23','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for pipe items',1,'2016-01-20 00:00:00','2016-01-20 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1123,'2016-01-21 00:00:00',3,'26','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for vegetables and fruits',1,'2016-01-21 00:00:00','2016-01-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1124,'2016-01-21 00:00:00',3,'27','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for eggs',1,'2016-01-21 00:00:00','2016-01-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1125,'2016-01-21 00:00:00',3,'28','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for mutton and chicken',1,'2016-01-21 00:00:00','2016-01-21 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1126,'2016-01-22 00:00:00',3,'35','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for travelling to chennai',1,'2016-01-22 00:00:00','2016-01-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1127,'2016-01-22 00:00:00',3,'34','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for medecine',1,'2016-01-22 00:00:00','2016-01-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1128,'2016-01-22 00:00:00',3,'31','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for sweets',1,'2016-01-22 00:00:00','2016-01-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1129,'2016-01-22 00:00:00',3,'30','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for eggs',1,'2016-01-22 00:00:00','2016-01-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1130,'2016-01-22 00:00:00',3,'32','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for diesel',1,'2016-01-22 00:00:00','2016-01-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1131,'2016-01-22 00:00:00',3,'33','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for provisions',1,'2016-01-22 00:00:00','2016-01-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1132,'2016-01-22 00:00:00',3,'29','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for sweets',1,'2016-01-22 00:00:00','2016-01-22 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1133,'2016-01-23 00:00:00',3,'38','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for mass offering',1,'2016-01-23 00:00:00','2016-01-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1134,'2016-01-23 00:00:00',3,'37','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for meeting',1,'2016-01-23 00:00:00','2016-01-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1135,'2016-01-23 00:00:00',3,'36','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for sweets',1,'2016-01-23 00:00:00','2016-01-23 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1136,'2016-01-25 00:00:00',3,'40','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for photos',1,'2016-01-25 00:00:00','2016-01-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1137,'2016-01-25 00:00:00',3,'39','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for onions',1,'2016-01-25 00:00:00','2016-01-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1138,'2016-01-25 00:00:00',3,'44','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for sweets',1,'2016-01-25 00:00:00','2016-01-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1139,'2016-01-25 00:00:00',3,'43','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash piad for cancellation of ticket',1,'2016-01-25 00:00:00','2016-01-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1140,'2016-01-25 00:00:00',3,'42','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for oil',1,'2016-01-25 00:00:00','2016-01-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1141,'2016-01-25 00:00:00',3,'41','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for diesel',1,'2016-01-25 00:00:00','2016-01-25 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1142,'2016-01-27 00:00:00',3,'47','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for printing',1,'2016-01-27 00:00:00','2016-01-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1143,'2016-01-27 00:00:00',3,'48','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for veg and fruits',1,'2016-01-27 00:00:00','2016-01-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1144,'2016-01-27 00:00:00',3,'50','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for gift for marriage',1,'2016-01-27 00:00:00','2016-01-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1145,'2016-01-27 00:00:00',3,'49','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for fish',1,'2016-01-27 00:00:00','2016-01-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1146,'2016-01-27 00:00:00',3,'46','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for diesel',1,'2016-01-27 00:00:00','2016-01-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1147,'2016-01-27 00:00:00',3,'45','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for sweets',1,'2016-01-27 00:00:00','2016-01-27 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1148,'2016-01-30 00:00:00',3,'54','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for bedsheets',1,'2016-01-30 00:00:00','2016-01-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1149,'2016-01-30 00:00:00',3,'52','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for fried rice',1,'2016-01-30 00:00:00','2016-01-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1150,'2016-01-30 00:00:00',3,'53','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for flex',1,'2016-01-30 00:00:00','2016-01-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1151,'2016-01-30 00:00:00',3,'51','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash apid for fruits',1,'2016-01-30 00:00:00','2016-01-30 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1152,'2016-01-31 00:00:00',3,'56','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for pipes',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1153,'2016-01-31 00:00:00',3,'57','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for pipes',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1154,'2016-01-31 00:00:00',3,'55','PY','GN',0,0,'N',0.00,0,0.00,0,'Being cash paid for travelling charge to Ramnadu',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,0.00,'',0,0,'','',0,''),(1155,'2015-05-16 00:00:00',1,'01','JN','FD',0,0,'N',0.00,0,0.00,0,'',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,7842.00,'',0,0,'','',0,''),(1156,'2015-05-16 00:00:00',1,'02','JN','FD',0,0,'N',0.00,0,0.00,0,'',1,'2016-01-31 00:00:00','2016-01-31 00:00:00',0,0,0.00,7842.00,'',0,0,'','',0,'');
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
INSERT INTO `voucher_trans` VALUES (1,1,1067,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(1,2,1,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(2,1,1063,260.00,'DR',NULL,'',NULL,1,NULL,0,0),(2,2,1,260.00,'CR',NULL,'',NULL,1,NULL,0,0),(3,1,1063,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(3,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(4,1,1052,2127.00,'DR',NULL,'',NULL,1,NULL,0,0),(4,2,1,2127.00,'CR',NULL,'',NULL,1,NULL,0,0),(5,1,1087,9500.00,'DR',NULL,'',NULL,1,NULL,0,0),(5,2,1,9500.00,'CR',NULL,'',NULL,1,NULL,0,0),(6,1,1083,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(6,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(7,1,1052,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(7,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(8,1,1051,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(8,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(9,1,1063,530.00,'DR',NULL,'',NULL,1,NULL,0,0),(9,2,1,530.00,'CR',NULL,'',NULL,1,NULL,0,0),(10,1,1063,1120.00,'DR',NULL,'',NULL,1,NULL,0,0),(10,2,1,1120.00,'CR',NULL,'',NULL,1,NULL,0,0),(11,1,1078,259.00,'DR',NULL,'',NULL,1,NULL,0,0),(11,2,1,259.00,'CR',NULL,'',NULL,1,NULL,0,0),(12,1,1054,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(12,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(13,1,1052,630.00,'DR',NULL,'',NULL,1,NULL,0,0),(13,2,1,630.00,'CR',NULL,'',NULL,1,NULL,0,0),(14,1,1063,700.00,'DR',NULL,'',NULL,1,NULL,0,0),(14,2,1,700.00,'CR',NULL,'',NULL,1,NULL,0,0),(15,1,1078,377.00,'DR',NULL,'',NULL,1,NULL,0,0),(15,2,1,377.00,'CR',NULL,'',NULL,1,NULL,0,0),(16,1,1050,885.00,'DR',NULL,'',NULL,1,NULL,0,0),(16,2,1,885.00,'CR',NULL,'',NULL,1,NULL,0,0),(17,1,1082,20.00,'DR',NULL,'',NULL,1,NULL,0,0),(17,2,1,20.00,'CR',NULL,'',NULL,1,NULL,0,0),(18,1,1091,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(18,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(19,1,1052,684.00,'DR',NULL,'',NULL,1,NULL,0,0),(19,2,1,684.00,'CR',NULL,'',NULL,1,NULL,0,0),(20,1,1093,635.00,'DR',NULL,'',NULL,1,NULL,0,0),(20,2,1,635.00,'CR',NULL,'',NULL,1,NULL,0,0),(21,1,1085,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(21,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(22,1,1093,3100.00,'DR',NULL,'',NULL,1,NULL,0,0),(22,2,1,3100.00,'CR',NULL,'',NULL,1,NULL,0,0),(23,1,1089,554.00,'DR',NULL,'',NULL,1,NULL,0,0),(23,2,1,554.00,'CR',NULL,'',NULL,1,NULL,0,0),(24,1,1085,2500.00,'DR',NULL,'',NULL,1,NULL,0,0),(24,2,1,2500.00,'CR',NULL,'',NULL,1,NULL,0,0),(25,1,1063,105.00,'DR',NULL,'',NULL,1,NULL,0,0),(25,2,1,105.00,'CR',NULL,'',NULL,1,NULL,0,0),(26,1,1061,1850.00,'DR',NULL,'',NULL,1,NULL,0,0),(26,2,1,1850.00,'CR',NULL,'',NULL,1,NULL,0,0),(27,1,1061,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(27,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(28,1,1088,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(28,2,1,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(29,1,1063,700.00,'DR',NULL,'',NULL,1,NULL,0,0),(29,2,1,700.00,'CR',NULL,'',NULL,1,NULL,0,0),(30,1,1063,1109.00,'DR',NULL,'',NULL,1,NULL,0,0),(30,2,1,1109.00,'CR',NULL,'',NULL,1,NULL,0,0),(31,1,1063,1420.00,'DR',NULL,'',NULL,1,NULL,0,0),(31,2,1,1420.00,'CR',NULL,'',NULL,1,NULL,0,0),(32,1,1065,96000.00,'CR',NULL,'',NULL,1,NULL,0,0),(32,2,1099,96000.00,'DR',NULL,'',NULL,1,NULL,0,0),(33,1,1063,126.00,'DR',NULL,'',NULL,1,NULL,0,0),(33,2,1,126.00,'CR',NULL,'',NULL,1,NULL,0,0),(34,1,1063,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(34,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(35,1,1063,340.00,'DR',NULL,'',NULL,1,NULL,0,0),(35,2,1,340.00,'CR',NULL,'',NULL,1,NULL,0,0),(36,1,1083,950.00,'DR',NULL,'',NULL,1,NULL,0,0),(36,2,1,950.00,'CR',NULL,'',NULL,1,NULL,0,0),(37,1,1086,5780.00,'DR',NULL,'',NULL,1,NULL,0,0),(37,2,1,5780.00,'CR',NULL,'',NULL,1,NULL,0,0),(38,1,1091,2360.00,'DR',NULL,'',NULL,1,NULL,0,0),(38,2,1,2360.00,'CR',NULL,'',NULL,1,NULL,0,0),(39,1,1075,2500.00,'CR',NULL,'',NULL,1,NULL,0,0),(39,2,1,2500.00,'DR',NULL,'',NULL,1,NULL,0,0),(40,1,1060,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(40,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(41,1,1060,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(41,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(42,1,1063,700.00,'DR',NULL,'',NULL,1,NULL,0,0),(42,2,1,700.00,'CR',NULL,'',NULL,1,NULL,0,0),(43,1,1055,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(43,2,1095,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(44,1,1055,30000.00,'DR',NULL,'',NULL,1,NULL,0,0),(44,2,1095,30000.00,'CR',NULL,'',NULL,1,NULL,0,0),(45,1,1091,940.00,'DR',NULL,'',NULL,1,NULL,0,0),(45,2,1,940.00,'CR',NULL,'',NULL,1,NULL,0,0),(46,1,1050,135.00,'DR',NULL,'',NULL,1,NULL,0,0),(46,2,1,135.00,'CR',NULL,'',NULL,1,NULL,0,0),(47,1,1063,2548.00,'DR',NULL,'',NULL,1,NULL,0,0),(47,2,1,2548.00,'CR',NULL,'',NULL,1,NULL,0,0),(48,1,1089,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(48,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(49,1,1050,143.00,'DR',NULL,'',NULL,1,NULL,0,0),(49,2,1,143.00,'CR',NULL,'',NULL,1,NULL,0,0),(50,1,1050,840.00,'DR',NULL,'',NULL,1,NULL,0,0),(50,2,1,840.00,'CR',NULL,'',NULL,1,NULL,0,0),(51,1,1078,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(51,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(52,1,1050,600.00,'DR',NULL,'',NULL,1,NULL,0,0),(52,2,1,600.00,'CR',NULL,'',NULL,1,NULL,0,0),(53,1,1063,660.00,'DR',NULL,'',NULL,1,NULL,0,0),(53,2,1,660.00,'CR',NULL,'',NULL,1,NULL,0,0),(54,1,1080,775.00,'CR',NULL,'',NULL,1,NULL,0,0),(54,2,1,775.00,'DR',NULL,'',NULL,1,NULL,0,0),(55,1,1085,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(55,2,1,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(56,1,1053,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(56,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(57,1,1078,190.00,'DR',NULL,'',NULL,1,NULL,0,0),(57,2,1,190.00,'CR',NULL,'',NULL,1,NULL,0,0),(58,1,1063,320.00,'DR',NULL,'',NULL,1,NULL,0,0),(58,2,1,320.00,'CR',NULL,'',NULL,1,NULL,0,0),(59,1,1093,44.00,'DR',NULL,'',NULL,1,NULL,0,0),(59,2,1,44.00,'CR',NULL,'',NULL,1,NULL,0,0),(60,1,1061,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(60,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(61,1,1061,700.00,'DR',NULL,'',NULL,1,NULL,0,0),(61,2,1,700.00,'CR',NULL,'',NULL,1,NULL,0,0),(62,1,1060,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(62,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(63,1,1060,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(63,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(64,1,1063,605.00,'DR',NULL,'',NULL,1,NULL,0,0),(64,2,1,605.00,'CR',NULL,'',NULL,1,NULL,0,0),(65,1,1063,290.00,'DR',NULL,'',NULL,1,NULL,0,0),(65,2,1,290.00,'CR',NULL,'',NULL,1,NULL,0,0),(66,1,1091,507.00,'DR',NULL,'',NULL,1,NULL,0,0),(66,2,1,507.00,'CR',NULL,'',NULL,1,NULL,0,0),(67,1,1091,15.00,'DR',NULL,'',NULL,1,NULL,0,0),(67,2,1,15.00,'CR',NULL,'',NULL,1,NULL,0,0),(68,1,1091,70.00,'DR',NULL,'',NULL,1,NULL,0,0),(68,2,1,70.00,'CR',NULL,'',NULL,1,NULL,0,0),(69,1,1053,160000.00,'CR',NULL,'',NULL,1,NULL,0,0),(69,2,1095,160000.00,'DR',NULL,'',NULL,1,NULL,0,0),(70,1,1063,280.00,'DR',NULL,'',NULL,1,NULL,0,0),(70,2,1,280.00,'CR',NULL,'',NULL,1,NULL,0,0),(71,1,1091,85.00,'DR',NULL,'',NULL,1,NULL,0,0),(71,2,1,85.00,'CR',NULL,'',NULL,1,NULL,0,0),(72,1,1078,317.00,'DR',NULL,'',NULL,1,NULL,0,0),(72,2,1,317.00,'CR',NULL,'',NULL,1,NULL,0,0),(73,1,1083,197.00,'DR',NULL,'',NULL,1,NULL,0,0),(73,2,1,197.00,'CR',NULL,'',NULL,1,NULL,0,0),(74,1,1052,399.00,'DR',NULL,'',NULL,1,NULL,0,0),(74,2,1,399.00,'CR',NULL,'',NULL,1,NULL,0,0),(75,1,1060,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(75,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(76,1,1078,2232.00,'DR',NULL,'',NULL,1,NULL,0,0),(76,2,1,2232.00,'CR',NULL,'',NULL,1,NULL,0,0),(77,1,1063,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(77,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(78,1,1086,2400.00,'DR',NULL,'',NULL,1,NULL,0,0),(78,2,1,2400.00,'CR',NULL,'',NULL,1,NULL,0,0),(79,1,1089,245.00,'DR',NULL,'',NULL,1,NULL,0,0),(79,2,1,245.00,'CR',NULL,'',NULL,1,NULL,0,0),(80,1,1063,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(80,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(81,1,1091,340.00,'DR',NULL,'',NULL,1,NULL,0,0),(81,2,1,340.00,'CR',NULL,'',NULL,1,NULL,0,0),(82,1,1063,256.00,'DR',NULL,'',NULL,1,NULL,0,0),(82,2,1,256.00,'CR',NULL,'',NULL,1,NULL,0,0),(83,1,1067,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(83,2,1,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(84,1,1063,296.00,'DR',NULL,'',NULL,1,NULL,0,0),(84,2,1,296.00,'CR',NULL,'',NULL,1,NULL,0,0),(85,1,1060,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(85,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(86,1,1084,240.00,'DR',NULL,'',NULL,1,NULL,0,0),(86,2,1,240.00,'CR',NULL,'',NULL,1,NULL,0,0),(87,1,1079,94.00,'DR',NULL,'',NULL,1,NULL,0,0),(87,2,1,94.00,'CR',NULL,'',NULL,1,NULL,0,0),(88,1,1078,1503.00,'DR',NULL,'',NULL,1,NULL,0,0),(88,2,1,1503.00,'CR',NULL,'',NULL,1,NULL,0,0),(89,1,1083,90.00,'DR',NULL,'',NULL,1,NULL,0,0),(89,2,1,90.00,'CR',NULL,'',NULL,1,NULL,0,0),(90,1,1079,25.00,'DR',NULL,'',NULL,1,NULL,0,0),(90,2,1,25.00,'CR',NULL,'',NULL,1,NULL,0,0),(91,1,1063,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(91,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(92,1,1063,60.00,'DR',NULL,'',NULL,1,NULL,0,0),(92,2,1,60.00,'CR',NULL,'',NULL,1,NULL,0,0),(93,1,1063,70.00,'DR',NULL,'',NULL,1,NULL,0,0),(93,2,1,70.00,'CR',NULL,'',NULL,1,NULL,0,0),(94,1,1091,505.00,'DR',NULL,'',NULL,1,NULL,0,0),(94,2,1,505.00,'CR',NULL,'',NULL,1,NULL,0,0),(95,1,1091,510.00,'DR',NULL,'',NULL,1,NULL,0,0),(95,2,1,510.00,'CR',NULL,'',NULL,1,NULL,0,0),(96,1,1091,240.00,'DR',NULL,'',NULL,1,NULL,0,0),(96,2,1,240.00,'CR',NULL,'',NULL,1,NULL,0,0),(97,1,1063,256.00,'DR',NULL,'',NULL,1,NULL,0,0),(97,2,1,256.00,'CR',NULL,'',NULL,1,NULL,0,0),(98,1,1060,206.00,'DR',NULL,'',NULL,1,NULL,0,0),(98,2,1,206.00,'CR',NULL,'',NULL,1,NULL,0,0),(99,1,1063,199.00,'DR',NULL,'',NULL,1,NULL,0,0),(99,2,1,199.00,'CR',NULL,'',NULL,1,NULL,0,0),(100,1,1052,913.00,'DR',NULL,'',NULL,1,NULL,0,0),(100,2,1,913.00,'CR',NULL,'',NULL,1,NULL,0,0),(101,1,1063,716.00,'DR',NULL,'',NULL,1,NULL,0,0),(101,2,1,716.00,'CR',NULL,'',NULL,1,NULL,0,0),(102,1,1091,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(102,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(103,1,1091,170.00,'DR',NULL,'',NULL,1,NULL,0,0),(103,2,1,170.00,'CR',NULL,'',NULL,1,NULL,0,0),(104,1,1091,170.00,'DR',NULL,'',NULL,1,NULL,0,0),(104,2,1,170.00,'CR',NULL,'',NULL,1,NULL,0,0),(105,1,1091,370.00,'DR',NULL,'',NULL,1,NULL,0,0),(105,2,1,370.00,'CR',NULL,'',NULL,1,NULL,0,0),(106,1,1091,50.00,'DR',NULL,'',NULL,1,NULL,0,0),(106,2,1,50.00,'CR',NULL,'',NULL,1,NULL,0,0),(107,1,1063,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(107,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(108,1,1063,470.00,'DR',NULL,'',NULL,1,NULL,0,0),(108,2,1,470.00,'CR',NULL,'',NULL,1,NULL,0,0),(109,1,1063,140.00,'DR',NULL,'',NULL,1,NULL,0,0),(109,2,1,140.00,'CR',NULL,'',NULL,1,NULL,0,0),(110,1,1053,20000.00,'CR',NULL,'',NULL,1,NULL,0,0),(110,2,1,20000.00,'DR',NULL,'',NULL,1,NULL,0,0),(111,1,1091,60.00,'DR',NULL,'',NULL,1,NULL,0,0),(111,2,1,60.00,'CR',NULL,'',NULL,1,NULL,0,0),(112,1,1084,45.00,'DR',NULL,'',NULL,1,NULL,0,0),(112,2,1,45.00,'CR',NULL,'',NULL,1,NULL,0,0),(113,1,1061,5503.00,'DR',NULL,'',NULL,1,NULL,0,0),(113,2,1095,5503.00,'CR',NULL,'',NULL,1,NULL,0,0),(114,1,1089,1062.00,'DR',NULL,'',NULL,1,NULL,0,0),(114,2,1,1062.00,'CR',NULL,'',NULL,1,NULL,0,0),(115,1,1053,9205.00,'CR',NULL,'',NULL,1,NULL,0,0),(115,2,1,9205.00,'DR',NULL,'',NULL,1,NULL,0,0),(116,1,1086,3200.00,'DR',NULL,'',NULL,1,NULL,0,0),(116,2,1,3200.00,'CR',NULL,'',NULL,1,NULL,0,0),(117,1,1091,362.00,'DR',NULL,'',NULL,1,NULL,0,0),(117,2,1,362.00,'CR',NULL,'',NULL,1,NULL,0,0),(118,1,1089,758.00,'DR',NULL,'',NULL,1,NULL,0,0),(118,2,1,758.00,'CR',NULL,'',NULL,1,NULL,0,0),(119,1,1091,153.00,'DR',NULL,'',NULL,1,NULL,0,0),(119,2,1,153.00,'CR',NULL,'',NULL,1,NULL,0,0),(120,1,1083,330.00,'DR',NULL,'',NULL,1,NULL,0,0),(120,2,1,330.00,'CR',NULL,'',NULL,1,NULL,0,0),(121,1,1063,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(121,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(122,1,1084,330.00,'DR',NULL,'',NULL,1,NULL,0,0),(122,2,1,330.00,'CR',NULL,'',NULL,1,NULL,0,0),(123,1,1084,140.00,'DR',NULL,'',NULL,1,NULL,0,0),(123,2,1,140.00,'CR',NULL,'',NULL,1,NULL,0,0),(124,1,1060,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(124,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(125,1,1083,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(125,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(126,1,1084,1100.00,'DR',NULL,'',NULL,1,NULL,0,0),(126,2,1,1100.00,'CR',NULL,'',NULL,1,NULL,0,0),(127,1,1084,1190.00,'DR',NULL,'',NULL,1,NULL,0,0),(127,2,1,1190.00,'CR',NULL,'',NULL,1,NULL,0,0),(128,1,1063,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(128,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(129,1,1086,9000.00,'CR',NULL,'',NULL,1,NULL,0,0),(129,2,1,9000.00,'DR',NULL,'',NULL,1,NULL,0,0),(130,1,1084,350.00,'DR',NULL,'',NULL,1,NULL,0,0),(130,2,1,350.00,'CR',NULL,'',NULL,1,NULL,0,0),(131,1,1063,600.00,'DR',NULL,'',NULL,1,NULL,0,0),(131,2,1,600.00,'CR',NULL,'',NULL,1,NULL,0,0),(132,1,1063,536.00,'DR',NULL,'',NULL,1,NULL,0,0),(132,2,1,536.00,'CR',NULL,'',NULL,1,NULL,0,0),(133,1,1089,2858.00,'DR',NULL,'',NULL,1,NULL,0,0),(133,2,1,2858.00,'CR',NULL,'',NULL,1,NULL,0,0),(134,1,1082,32.00,'DR',NULL,'',NULL,1,NULL,0,0),(134,2,1,32.00,'CR',NULL,'',NULL,1,NULL,0,0),(135,1,1093,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(135,2,1,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(136,1,1061,1300.00,'DR',NULL,'',NULL,1,NULL,0,0),(136,2,1,1300.00,'CR',NULL,'',NULL,1,NULL,0,0),(137,1,1063,280.00,'DR',NULL,'',NULL,1,NULL,0,0),(137,2,1,280.00,'CR',NULL,'',NULL,1,NULL,0,0),(138,1,1093,61000.00,'DR',NULL,'',NULL,1,NULL,0,0),(138,2,1095,61000.00,'CR',NULL,'',NULL,1,NULL,0,0),(139,1,1079,48.00,'DR',NULL,'',NULL,1,NULL,0,0),(139,2,1,48.00,'CR',NULL,'',NULL,1,NULL,0,0),(140,1,1091,1400.00,'DR',NULL,'',NULL,1,NULL,0,0),(140,2,1,1400.00,'CR',NULL,'',NULL,1,NULL,0,0),(141,1,1061,5500.00,'DR',NULL,'',NULL,1,NULL,0,0),(141,2,1,5500.00,'CR',NULL,'',NULL,1,NULL,0,0),(142,1,1091,1400.00,'DR',NULL,'',NULL,1,NULL,0,0),(142,2,1,1400.00,'CR',NULL,'',NULL,1,NULL,0,0),(143,1,1051,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(143,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(144,1,1061,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(144,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(145,1,1063,3250.00,'DR',NULL,'',NULL,1,NULL,0,0),(145,2,1,3250.00,'CR',NULL,'',NULL,1,NULL,0,0),(146,1,1060,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(146,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(147,1,1093,65.00,'DR',NULL,'',NULL,1,NULL,0,0),(147,2,1,65.00,'CR',NULL,'',NULL,1,NULL,0,0),(148,1,1091,510.00,'DR',NULL,'',NULL,1,NULL,0,0),(148,2,1,510.00,'CR',NULL,'',NULL,1,NULL,0,0),(149,1,1046,6000.00,'DR',NULL,'',NULL,1,NULL,0,0),(149,2,1,6000.00,'CR',NULL,'',NULL,1,NULL,0,0),(150,1,1063,540.00,'DR',NULL,'',NULL,1,NULL,0,0),(150,2,1,540.00,'CR',NULL,'',NULL,1,NULL,0,0),(151,1,1063,1120.00,'DR',NULL,'',NULL,1,NULL,0,0),(151,2,1,1120.00,'CR',NULL,'',NULL,1,NULL,0,0),(152,1,1079,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(152,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(153,1,1079,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(153,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(154,1,1093,260.00,'DR',NULL,'',NULL,1,NULL,0,0),(154,2,1,260.00,'CR',NULL,'',NULL,1,NULL,0,0),(155,1,1082,65.00,'DR',NULL,'',NULL,1,NULL,0,0),(155,2,1,65.00,'CR',NULL,'',NULL,1,NULL,0,0),(156,1,1082,43.00,'DR',NULL,'',NULL,1,NULL,0,0),(156,2,1,43.00,'CR',NULL,'',NULL,1,NULL,0,0),(157,1,1079,1130.00,'DR',NULL,'',NULL,1,NULL,0,0),(157,2,1,1130.00,'CR',NULL,'',NULL,1,NULL,0,0),(158,1,1079,40.00,'DR',NULL,'',NULL,1,NULL,0,0),(158,2,1,40.00,'CR',NULL,'',NULL,1,NULL,0,0),(159,1,1060,7430.00,'DR',NULL,'',NULL,1,NULL,0,0),(159,2,1,7430.00,'CR',NULL,'',NULL,1,NULL,0,0),(160,1,1084,480.00,'DR',NULL,'',NULL,1,NULL,0,0),(160,2,1,480.00,'CR',NULL,'',NULL,1,NULL,0,0),(161,1,1060,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(161,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(162,1,1063,185.00,'DR',NULL,'',NULL,1,NULL,0,0),(162,2,1,185.00,'CR',NULL,'',NULL,1,NULL,0,0),(163,1,1063,730.00,'DR',NULL,'',NULL,1,NULL,0,0),(163,2,1,730.00,'CR',NULL,'',NULL,1,NULL,0,0),(164,1,1079,140.00,'DR',NULL,'',NULL,1,NULL,0,0),(164,2,1,140.00,'CR',NULL,'',NULL,1,NULL,0,0),(165,1,1085,8500.00,'DR',NULL,'',NULL,1,NULL,0,0),(165,2,1,8500.00,'CR',NULL,'',NULL,1,NULL,0,0),(166,1,1058,110.00,'DR',NULL,'',NULL,1,NULL,0,0),(166,2,1,110.00,'CR',NULL,'',NULL,1,NULL,0,0),(167,1,1093,155.00,'DR',NULL,'',NULL,1,NULL,0,0),(167,2,1,155.00,'CR',NULL,'',NULL,1,NULL,0,0),(168,1,1054,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(168,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(169,1,1074,30000.00,'CR',NULL,'',NULL,1,NULL,0,0),(169,2,1,30000.00,'DR',NULL,'',NULL,1,NULL,0,0),(170,1,1050,310.00,'DR',NULL,'',NULL,1,NULL,0,0),(170,2,1,310.00,'CR',NULL,'',NULL,1,NULL,0,0),(171,1,1086,1200.00,'DR',NULL,'',NULL,1,NULL,0,0),(171,2,1,1200.00,'CR',NULL,'',NULL,1,NULL,0,0),(172,1,1085,2500.00,'DR',NULL,'',NULL,1,NULL,0,0),(172,2,1,2500.00,'CR',NULL,'',NULL,1,NULL,0,0),(173,1,1085,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(173,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(174,1,1053,15000.00,'CR',NULL,'',NULL,1,NULL,0,0),(174,2,1,15000.00,'DR',NULL,'',NULL,1,NULL,0,0),(175,1,1087,8500.00,'DR',NULL,'',NULL,1,NULL,0,0),(175,2,1,8500.00,'CR',NULL,'',NULL,1,NULL,0,0),(176,1,1049,31984.00,'CR',NULL,'',NULL,1,NULL,0,0),(176,2,1099,31984.00,'DR',NULL,'',NULL,1,NULL,0,0),(177,1,1086,7500.00,'DR',NULL,'',NULL,1,NULL,0,0),(177,2,1,7500.00,'CR',NULL,'',NULL,1,NULL,0,0),(178,1,1091,700.00,'DR',NULL,'',NULL,1,NULL,0,0),(178,2,1,700.00,'CR',NULL,'',NULL,1,NULL,0,0),(179,1,1086,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(179,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(180,1,1063,2236.00,'DR',NULL,'',NULL,1,NULL,0,0),(180,2,1,2236.00,'CR',NULL,'',NULL,1,NULL,0,0),(181,1,1091,620.00,'DR',NULL,'',NULL,1,NULL,0,0),(181,2,1,620.00,'CR',NULL,'',NULL,1,NULL,0,0),(182,1,1085,8500.00,'DR',NULL,'',NULL,1,NULL,0,0),(182,2,1,8500.00,'CR',NULL,'',NULL,1,NULL,0,0),(183,1,1091,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(183,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(184,1,1051,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(184,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(185,1,1063,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(185,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(186,1,1050,50.00,'DR',NULL,'',NULL,1,NULL,0,0),(186,2,1,50.00,'CR',NULL,'',NULL,1,NULL,0,0),(187,1,1086,1040.00,'DR',NULL,'',NULL,1,NULL,0,0),(187,2,1,1040.00,'CR',NULL,'',NULL,1,NULL,0,0),(188,1,1060,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(188,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(189,1,1053,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(189,2,1095,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(190,1,1050,340.00,'DR',NULL,'',NULL,1,NULL,0,0),(190,2,1,340.00,'CR',NULL,'',NULL,1,NULL,0,0),(191,1,1078,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(191,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(192,1,1078,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(192,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(193,1,1086,600.00,'DR',NULL,'',NULL,1,NULL,0,0),(193,2,1,600.00,'CR',NULL,'',NULL,1,NULL,0,0),(194,1,1061,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(194,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(195,1,1071,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(195,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(196,1,1091,340.00,'DR',NULL,'',NULL,1,NULL,0,0),(196,2,1,340.00,'CR',NULL,'',NULL,1,NULL,0,0),(197,1,1088,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(197,2,1,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(198,1,1078,90.00,'DR',NULL,'',NULL,1,NULL,0,0),(198,2,1,90.00,'CR',NULL,'',NULL,1,NULL,0,0),(199,1,1089,115.00,'DR',NULL,'',NULL,1,NULL,0,0),(199,2,1,115.00,'CR',NULL,'',NULL,1,NULL,0,0),(200,1,1078,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(200,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(201,1,1063,560.00,'DR',NULL,'',NULL,1,NULL,0,0),(201,2,1,560.00,'CR',NULL,'',NULL,1,NULL,0,0),(202,1,1084,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(202,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(203,1,1063,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(203,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(204,1,1063,710.00,'DR',NULL,'',NULL,1,NULL,0,0),(204,2,1,710.00,'CR',NULL,'',NULL,1,NULL,0,0),(205,1,1051,80.00,'DR',NULL,'',NULL,1,NULL,0,0),(205,2,1,80.00,'CR',NULL,'',NULL,1,NULL,0,0),(206,1,1078,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(206,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(207,1,1063,710.00,'DR',NULL,'',NULL,1,NULL,0,0),(207,2,1,710.00,'CR',NULL,'',NULL,1,NULL,0,0),(208,1,1082,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(208,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(209,1,1063,530.00,'DR',NULL,'',NULL,1,NULL,0,0),(209,2,1,530.00,'CR',NULL,'',NULL,1,NULL,0,0),(210,1,1078,600.00,'DR',NULL,'',NULL,1,NULL,0,0),(210,2,1,600.00,'CR',NULL,'',NULL,1,NULL,0,0),(211,1,1082,110.00,'DR',NULL,'',NULL,1,NULL,0,0),(211,2,1,110.00,'CR',NULL,'',NULL,1,NULL,0,0),(212,1,1078,3480.00,'DR',NULL,'',NULL,1,NULL,0,0),(212,2,1,3480.00,'CR',NULL,'',NULL,1,NULL,0,0),(213,1,1078,3450.00,'DR',NULL,'',NULL,1,NULL,0,0),(213,2,1,3450.00,'CR',NULL,'',NULL,1,NULL,0,0),(214,1,1061,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(214,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(215,1,1073,7750.00,'DR',NULL,'',NULL,1,NULL,0,0),(215,2,1,7750.00,'CR',NULL,'',NULL,1,NULL,0,0),(216,1,1078,684.00,'DR',NULL,'',NULL,1,NULL,0,0),(216,2,1,684.00,'CR',NULL,'',NULL,1,NULL,0,0),(217,1,1078,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(217,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(218,1,1063,536.00,'DR',NULL,'',NULL,1,NULL,0,0),(218,2,1,536.00,'CR',NULL,'',NULL,1,NULL,0,0),(219,1,1052,825.00,'DR',NULL,'',NULL,1,NULL,0,0),(219,2,1,825.00,'CR',NULL,'',NULL,1,NULL,0,0),(220,1,1083,40.00,'DR',NULL,'',NULL,1,NULL,0,0),(220,2,1,40.00,'CR',NULL,'',NULL,1,NULL,0,0),(221,1,1050,140.00,'DR',NULL,'',NULL,1,NULL,0,0),(221,2,1,140.00,'CR',NULL,'',NULL,1,NULL,0,0),(222,1,1078,271.00,'DR',NULL,'',NULL,1,NULL,0,0),(222,2,1,271.00,'CR',NULL,'',NULL,1,NULL,0,0),(223,1,1061,1200.00,'DR',NULL,'',NULL,1,NULL,0,0),(223,2,1,1200.00,'CR',NULL,'',NULL,1,NULL,0,0),(224,1,1091,704.00,'DR',NULL,'',NULL,1,NULL,0,0),(224,2,1,704.00,'CR',NULL,'',NULL,1,NULL,0,0),(225,1,1063,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(225,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(226,1,1051,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(226,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(227,1,1085,2500.00,'DR',NULL,'',NULL,1,NULL,0,0),(227,2,1,2500.00,'CR',NULL,'',NULL,1,NULL,0,0),(228,1,1083,50.00,'DR',NULL,'',NULL,1,NULL,0,0),(228,2,1,50.00,'CR',NULL,'',NULL,1,NULL,0,0),(229,1,1051,485.00,'DR',NULL,'',NULL,1,NULL,0,0),(229,2,1,485.00,'CR',NULL,'',NULL,1,NULL,0,0),(230,1,1063,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(230,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(231,1,1067,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(231,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(232,1,1083,2293.00,'DR',NULL,'',NULL,1,NULL,0,0),(232,2,1,2293.00,'CR',NULL,'',NULL,1,NULL,0,0),(233,1,1093,2666.00,'DR',NULL,'',NULL,1,NULL,0,0),(233,2,1,2666.00,'CR',NULL,'',NULL,1,NULL,0,0),(234,1,1052,914.00,'DR',NULL,'',NULL,1,NULL,0,0),(234,2,1,914.00,'CR',NULL,'',NULL,1,NULL,0,0),(235,1,1051,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(235,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(236,1,1051,900.00,'DR',NULL,'',NULL,1,NULL,0,0),(236,2,1,900.00,'CR',NULL,'',NULL,1,NULL,0,0),(237,1,1091,373.00,'DR',NULL,'',NULL,1,NULL,0,0),(237,2,1,373.00,'CR',NULL,'',NULL,1,NULL,0,0),(238,1,1091,974.00,'DR',NULL,'',NULL,1,NULL,0,0),(238,2,1,974.00,'CR',NULL,'',NULL,1,NULL,0,0),(239,1,1083,833.00,'DR',NULL,'',NULL,1,NULL,0,0),(239,2,1,833.00,'CR',NULL,'',NULL,1,NULL,0,0),(240,1,1051,220.00,'DR',NULL,'',NULL,1,NULL,0,0),(240,2,1,220.00,'CR',NULL,'',NULL,1,NULL,0,0),(241,1,1091,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(241,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(242,1,1083,123.00,'DR',NULL,'',NULL,1,NULL,0,0),(242,2,1,123.00,'CR',NULL,'',NULL,1,NULL,0,0),(243,1,1085,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(243,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(244,1,1083,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(244,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(245,1,1095,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(245,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(246,1,1057,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(246,2,1,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(247,1,1053,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(247,2,1,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(248,1,1061,180.00,'DR',NULL,'',NULL,1,NULL,0,0),(248,2,1,180.00,'CR',NULL,'',NULL,1,NULL,0,0),(249,1,1089,760.00,'DR',NULL,'',NULL,1,NULL,0,0),(249,2,1,760.00,'CR',NULL,'',NULL,1,NULL,0,0),(250,1,1084,1130.00,'DR',NULL,'',NULL,1,NULL,0,0),(250,2,1,1130.00,'CR',NULL,'',NULL,1,NULL,0,0),(251,1,1063,104.00,'DR',NULL,'',NULL,1,NULL,0,0),(251,2,1,104.00,'CR',NULL,'',NULL,1,NULL,0,0),(252,1,1066,96000.00,'DR',NULL,'',NULL,1,NULL,0,0),(252,2,1099,96000.00,'CR',NULL,'',NULL,1,NULL,0,0),(253,1,1093,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(253,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(254,1,1089,1070.00,'DR',NULL,'',NULL,1,NULL,0,0),(254,2,1,1070.00,'CR',NULL,'',NULL,1,NULL,0,0),(255,1,1061,128.00,'DR',NULL,'',NULL,1,NULL,0,0),(255,2,1,128.00,'CR',NULL,'',NULL,1,NULL,0,0),(256,1,1063,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(256,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(257,1,1084,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(257,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(258,1,1091,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(258,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(259,1,1058,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(259,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(260,1,1084,700.00,'DR',NULL,'',NULL,1,NULL,0,0),(260,2,1,700.00,'CR',NULL,'',NULL,1,NULL,0,0),(261,1,1058,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(261,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(262,1,1083,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(262,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(263,1,1082,105.00,'DR',NULL,'',NULL,1,NULL,0,0),(263,2,1,105.00,'CR',NULL,'',NULL,1,NULL,0,0),(264,1,1093,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(264,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(265,1,1051,75.00,'DR',NULL,'',NULL,1,NULL,0,0),(265,2,1,75.00,'CR',NULL,'',NULL,1,NULL,0,0),(266,1,1091,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(266,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(267,1,1084,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(267,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(268,1,1051,180.00,'DR',NULL,'',NULL,1,NULL,0,0),(268,2,1,180.00,'CR',NULL,'',NULL,1,NULL,0,0),(269,1,1063,139.00,'DR',NULL,'',NULL,1,NULL,0,0),(269,2,1,139.00,'CR',NULL,'',NULL,1,NULL,0,0),(270,1,1091,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(270,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(271,1,1063,183.00,'DR',NULL,'',NULL,1,NULL,0,0),(271,2,1,183.00,'CR',NULL,'',NULL,1,NULL,0,0),(272,1,1051,1200.00,'DR',NULL,'',NULL,1,NULL,0,0),(272,2,1,1200.00,'CR',NULL,'',NULL,1,NULL,0,0),(273,1,1083,600.00,'DR',NULL,'',NULL,1,NULL,0,0),(273,2,1,600.00,'CR',NULL,'',NULL,1,NULL,0,0),(274,1,1051,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(274,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(275,1,1063,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(275,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(276,1,1084,45.00,'DR',NULL,'',NULL,1,NULL,0,0),(276,2,1,45.00,'CR',NULL,'',NULL,1,NULL,0,0),(277,1,1083,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(277,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(278,1,1078,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(278,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(279,1,1078,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(279,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(280,1,1054,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(280,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(281,1,1057,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(281,2,1,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(282,1,1053,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(282,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(283,1,1051,225.00,'DR',NULL,'',NULL,1,NULL,0,0),(283,2,1,225.00,'CR',NULL,'',NULL,1,NULL,0,0),(284,1,1087,9500.00,'DR',NULL,'',NULL,1,NULL,0,0),(284,2,1,9500.00,'CR',NULL,'',NULL,1,NULL,0,0),(285,1,1085,3500.00,'DR',NULL,'',NULL,1,NULL,0,0),(285,2,1,3500.00,'CR',NULL,'',NULL,1,NULL,0,0),(286,1,1085,8500.00,'DR',NULL,'',NULL,1,NULL,0,0),(286,2,1,8500.00,'CR',NULL,'',NULL,1,NULL,0,0),(287,1,1093,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(287,2,1,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(288,1,1077,20000.00,'DR',NULL,'',NULL,1,NULL,0,0),(288,2,1,20000.00,'CR',NULL,'',NULL,1,NULL,0,0),(289,1,1077,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(289,2,1,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(290,1,1063,495.00,'DR',NULL,'',NULL,1,NULL,0,0),(290,2,1,495.00,'CR',NULL,'',NULL,1,NULL,0,0),(291,1,1063,710.00,'DR',NULL,'',NULL,1,NULL,0,0),(291,2,1,710.00,'CR',NULL,'',NULL,1,NULL,0,0),(292,1,1085,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(292,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(293,1,1093,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(293,2,1,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(294,1,1063,545.00,'DR',NULL,'',NULL,1,NULL,0,0),(294,2,1,545.00,'CR',NULL,'',NULL,1,NULL,0,0),(295,1,1063,485.00,'DR',NULL,'',NULL,1,NULL,0,0),(295,2,1,485.00,'CR',NULL,'',NULL,1,NULL,0,0),(296,1,1091,575.00,'DR',NULL,'',NULL,1,NULL,0,0),(296,2,1,575.00,'CR',NULL,'',NULL,1,NULL,0,0),(297,1,1093,90.00,'DR',NULL,'',NULL,1,NULL,0,0),(297,2,1,90.00,'CR',NULL,'',NULL,1,NULL,0,0),(298,1,1063,495.00,'DR',NULL,'',NULL,1,NULL,0,0),(298,2,1,495.00,'CR',NULL,'',NULL,1,NULL,0,0),(299,1,1093,90.00,'DR',NULL,'',NULL,1,NULL,0,0),(299,2,1,90.00,'CR',NULL,'',NULL,1,NULL,0,0),(300,1,1058,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(300,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(301,1,1093,2500.00,'DR',NULL,'',NULL,1,NULL,0,0),(301,2,1,2500.00,'CR',NULL,'',NULL,1,NULL,0,0),(302,1,1063,700.00,'DR',NULL,'',NULL,1,NULL,0,0),(302,2,1,700.00,'CR',NULL,'',NULL,1,NULL,0,0),(303,1,1090,2700.00,'DR',NULL,'',NULL,1,NULL,0,0),(303,2,1,2700.00,'CR',NULL,'',NULL,1,NULL,0,0),(304,1,1063,177.00,'DR',NULL,'',NULL,1,NULL,0,0),(304,2,1,177.00,'CR',NULL,'',NULL,1,NULL,0,0),(305,1,1063,180.00,'DR',NULL,'',NULL,1,NULL,0,0),(305,2,1,180.00,'CR',NULL,'',NULL,1,NULL,0,0),(306,1,1059,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(306,2,1,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(307,1,1059,1950.00,'DR',NULL,'',NULL,1,NULL,0,0),(307,2,1,1950.00,'CR',NULL,'',NULL,1,NULL,0,0),(308,1,1063,325.00,'DR',NULL,'',NULL,1,NULL,0,0),(308,2,1,325.00,'CR',NULL,'',NULL,1,NULL,0,0),(309,1,1093,263.00,'DR',NULL,'',NULL,1,NULL,0,0),(309,2,1,263.00,'CR',NULL,'',NULL,1,NULL,0,0),(310,1,1063,310.00,'DR',NULL,'',NULL,1,NULL,0,0),(310,2,1,310.00,'CR',NULL,'',NULL,1,NULL,0,0),(311,1,1091,110.00,'DR',NULL,'',NULL,1,NULL,0,0),(311,2,1,110.00,'CR',NULL,'',NULL,1,NULL,0,0),(312,1,1063,190.00,'DR',NULL,'',NULL,1,NULL,0,0),(312,2,1,190.00,'CR',NULL,'',NULL,1,NULL,0,0),(313,1,1063,335.00,'DR',NULL,'',NULL,1,NULL,0,0),(313,2,1,335.00,'CR',NULL,'',NULL,1,NULL,0,0),(314,1,1065,124140.00,'CR',NULL,'',NULL,1,NULL,0,0),(314,2,1099,124140.00,'DR',NULL,'',NULL,1,NULL,0,0),(315,1,1063,645.00,'DR',NULL,'',NULL,1,NULL,0,0),(315,2,1,645.00,'CR',NULL,'',NULL,1,NULL,0,0),(316,1,1063,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(316,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(317,1,1078,2304.00,'DR',NULL,'',NULL,1,NULL,0,0),(317,2,1,2304.00,'CR',NULL,'',NULL,1,NULL,0,0),(318,1,1093,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(318,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(319,1,1078,248.00,'DR',NULL,'',NULL,1,NULL,0,0),(319,2,1,248.00,'CR',NULL,'',NULL,1,NULL,0,0),(320,1,1067,240.00,'DR',NULL,'',NULL,1,NULL,0,0),(320,2,1,240.00,'CR',NULL,'',NULL,1,NULL,0,0),(321,1,1091,2168.00,'DR',NULL,'',NULL,1,NULL,0,0),(321,2,1,2168.00,'CR',NULL,'',NULL,1,NULL,0,0),(322,1,1063,1114.00,'DR',NULL,'',NULL,1,NULL,0,0),(322,2,1,1114.00,'CR',NULL,'',NULL,1,NULL,0,0),(323,1,1063,710.00,'DR',NULL,'',NULL,1,NULL,0,0),(323,2,1,710.00,'CR',NULL,'',NULL,1,NULL,0,0),(324,1,1063,380.00,'DR',NULL,'',NULL,1,NULL,0,0),(324,2,1,380.00,'CR',NULL,'',NULL,1,NULL,0,0),(325,1,1091,3153.00,'DR',NULL,'',NULL,1,NULL,0,0),(325,2,1,3153.00,'CR',NULL,'',NULL,1,NULL,0,0),(326,1,1091,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(326,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(327,1,1091,912.00,'DR',NULL,'',NULL,1,NULL,0,0),(327,2,1,912.00,'CR',NULL,'',NULL,1,NULL,0,0),(328,1,1076,125.00,'DR',NULL,'',NULL,1,NULL,0,0),(328,2,1,125.00,'CR',NULL,'',NULL,1,NULL,0,0),(329,1,1091,580.00,'DR',NULL,'',NULL,1,NULL,0,0),(329,2,1,580.00,'CR',NULL,'',NULL,1,NULL,0,0),(330,1,1089,390.00,'DR',NULL,'',NULL,1,NULL,0,0),(330,2,1,390.00,'CR',NULL,'',NULL,1,NULL,0,0),(331,1,1078,240.00,'DR',NULL,'',NULL,1,NULL,0,0),(331,2,1,240.00,'CR',NULL,'',NULL,1,NULL,0,0),(332,1,1053,4400.00,'CR',NULL,'',NULL,1,NULL,0,0),(332,2,1,4400.00,'DR',NULL,'',NULL,1,NULL,0,0),(333,1,1063,152.00,'DR',NULL,'',NULL,1,NULL,0,0),(333,2,1,152.00,'CR',NULL,'',NULL,1,NULL,0,0),(334,1,1084,404.00,'DR',NULL,'',NULL,1,NULL,0,0),(334,2,1,404.00,'CR',NULL,'',NULL,1,NULL,0,0),(335,1,1089,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(335,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(336,1,1047,29.00,'DR',NULL,'',NULL,1,NULL,0,0),(336,2,1095,29.00,'CR',NULL,'',NULL,1,NULL,0,0),(337,1,1063,365.00,'DR',NULL,'',NULL,1,NULL,0,0),(337,2,1,365.00,'CR',NULL,'',NULL,1,NULL,0,0),(338,1,1084,195.00,'DR',NULL,'',NULL,1,NULL,0,0),(338,2,1,195.00,'CR',NULL,'',NULL,1,NULL,0,0),(339,1,1063,330.00,'DR',NULL,'',NULL,1,NULL,0,0),(339,2,1,330.00,'CR',NULL,'',NULL,1,NULL,0,0),(340,1,1095,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(340,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(341,1,1063,1820.00,'DR',NULL,'',NULL,1,NULL,0,0),(341,2,1,1820.00,'CR',NULL,'',NULL,1,NULL,0,0),(342,1,1055,200000.00,'DR',NULL,'',NULL,1,NULL,0,0),(342,2,1095,200000.00,'CR',NULL,'',NULL,1,NULL,0,0),(343,1,1093,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(343,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(344,1,1063,450.00,'DR',NULL,'',NULL,1,NULL,0,0),(344,2,1,450.00,'CR',NULL,'',NULL,1,NULL,0,0),(345,1,1093,77.00,'DR',NULL,'',NULL,1,NULL,0,0),(345,2,1,77.00,'CR',NULL,'',NULL,1,NULL,0,0),(346,1,1091,1065.00,'DR',NULL,'',NULL,1,NULL,0,0),(346,2,1,1065.00,'CR',NULL,'',NULL,1,NULL,0,0),(347,1,1050,240.00,'DR',NULL,'',NULL,1,NULL,0,0),(347,2,1,240.00,'CR',NULL,'',NULL,1,NULL,0,0),(348,1,1067,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(348,2,1,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(349,1,1063,360.00,'DR',NULL,'',NULL,1,NULL,0,0),(349,2,1,360.00,'CR',NULL,'',NULL,1,NULL,0,0),(350,1,1051,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(350,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(351,1,1091,55.00,'DR',NULL,'',NULL,1,NULL,0,0),(351,2,1,55.00,'CR',NULL,'',NULL,1,NULL,0,0),(352,1,1091,1528.00,'DR',NULL,'',NULL,1,NULL,0,0),(352,2,1,1528.00,'CR',NULL,'',NULL,1,NULL,0,0),(353,1,1091,2060.00,'DR',NULL,'',NULL,1,NULL,0,0),(353,2,1,2060.00,'CR',NULL,'',NULL,1,NULL,0,0),(354,1,1050,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(354,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(355,1,1091,365.00,'DR',NULL,'',NULL,1,NULL,0,0),(355,2,1,365.00,'CR',NULL,'',NULL,1,NULL,0,0),(356,1,1063,135.00,'DR',NULL,'',NULL,1,NULL,0,0),(356,2,1,135.00,'CR',NULL,'',NULL,1,NULL,0,0),(357,1,1089,768.00,'DR',NULL,'',NULL,1,NULL,0,0),(357,2,1,768.00,'CR',NULL,'',NULL,1,NULL,0,0),(358,1,1089,1081.00,'DR',NULL,'',NULL,1,NULL,0,0),(358,2,1,1081.00,'CR',NULL,'',NULL,1,NULL,0,0),(359,1,1063,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(359,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(360,1,1091,974.00,'DR',NULL,'',NULL,1,NULL,0,0),(360,2,1,974.00,'CR',NULL,'',NULL,1,NULL,0,0),(361,1,1072,481.00,'DR',NULL,'',NULL,1,NULL,0,0),(361,2,1,481.00,'CR',NULL,'',NULL,1,NULL,0,0),(362,1,1078,95.00,'DR',NULL,'',NULL,1,NULL,0,0),(362,2,1,95.00,'CR',NULL,'',NULL,1,NULL,0,0),(363,1,1063,530.00,'DR',NULL,'',NULL,1,NULL,0,0),(363,2,1,530.00,'CR',NULL,'',NULL,1,NULL,0,0),(364,1,1063,92.00,'DR',NULL,'',NULL,1,NULL,0,0),(364,2,1,92.00,'CR',NULL,'',NULL,1,NULL,0,0),(365,1,1086,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(365,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(366,1,1089,1400.00,'DR',NULL,'',NULL,1,NULL,0,0),(366,2,1,1400.00,'CR',NULL,'',NULL,1,NULL,0,0),(367,1,1086,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(367,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(368,1,1063,1215.00,'DR',NULL,'',NULL,1,NULL,0,0),(368,2,1,1215.00,'CR',NULL,'',NULL,1,NULL,0,0),(369,1,1063,5550.00,'DR',NULL,'',NULL,1,NULL,0,0),(369,2,1,5550.00,'CR',NULL,'',NULL,1,NULL,0,0),(370,1,1063,154.00,'DR',NULL,'',NULL,1,NULL,0,0),(370,2,1,154.00,'CR',NULL,'',NULL,1,NULL,0,0),(371,1,1093,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(371,2,1,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(372,1,1072,85.00,'DR',NULL,'',NULL,1,NULL,0,0),(372,2,1,85.00,'CR',NULL,'',NULL,1,NULL,0,0),(373,1,1091,170.00,'DR',NULL,'',NULL,1,NULL,0,0),(373,2,1,170.00,'CR',NULL,'',NULL,1,NULL,0,0),(374,1,1063,350.00,'DR',NULL,'',NULL,1,NULL,0,0),(374,2,1,350.00,'CR',NULL,'',NULL,1,NULL,0,0),(375,1,1078,756.00,'DR',NULL,'',NULL,1,NULL,0,0),(375,2,1,756.00,'CR',NULL,'',NULL,1,NULL,0,0),(376,1,1084,90.00,'DR',NULL,'',NULL,1,NULL,0,0),(376,2,1,90.00,'CR',NULL,'',NULL,1,NULL,0,0),(377,1,1059,1602.00,'DR',NULL,'',NULL,1,NULL,0,0),(377,2,1,1602.00,'CR',NULL,'',NULL,1,NULL,0,0),(378,1,1053,45000.00,'CR',NULL,'',NULL,1,NULL,0,0),(378,2,1095,45000.00,'DR',NULL,'',NULL,1,NULL,0,0),(379,1,1083,90.00,'DR',NULL,'',NULL,1,NULL,0,0),(379,2,1,90.00,'CR',NULL,'',NULL,1,NULL,0,0),(380,1,1053,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(380,2,1095,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(381,1,1091,376.00,'DR',NULL,'',NULL,1,NULL,0,0),(381,2,1,376.00,'CR',NULL,'',NULL,1,NULL,0,0),(382,1,1091,165.00,'DR',NULL,'',NULL,1,NULL,0,0),(382,2,1,165.00,'CR',NULL,'',NULL,1,NULL,0,0),(383,1,1093,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(383,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(384,1,1060,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(384,2,1,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(385,1,1045,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(385,2,1,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(386,1,1059,3714.00,'DR',NULL,'',NULL,1,NULL,0,0),(386,2,1,3714.00,'CR',NULL,'',NULL,1,NULL,0,0),(387,1,1083,835.00,'DR',NULL,'',NULL,1,NULL,0,0),(387,2,1,835.00,'CR',NULL,'',NULL,1,NULL,0,0),(388,1,1084,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(388,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(389,1,1074,1210.00,'CR',NULL,'',NULL,1,NULL,0,0),(389,2,1,1210.00,'DR',NULL,'',NULL,1,NULL,0,0),(390,1,1074,70000.00,'CR',NULL,'',NULL,1,NULL,0,0),(390,2,1,70000.00,'DR',NULL,'',NULL,1,NULL,0,0),(391,1,1085,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(391,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(392,1,1063,320.00,'DR',NULL,'',NULL,1,NULL,0,0),(392,2,1,320.00,'CR',NULL,'',NULL,1,NULL,0,0),(393,1,1091,770.00,'DR',NULL,'',NULL,1,NULL,0,0),(393,2,1,770.00,'CR',NULL,'',NULL,1,NULL,0,0),(394,1,1060,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(394,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(395,1,1091,460.00,'DR',NULL,'',NULL,1,NULL,0,0),(395,2,1,460.00,'CR',NULL,'',NULL,1,NULL,0,0),(396,1,1085,8500.00,'DR',NULL,'',NULL,1,NULL,0,0),(396,2,1,8500.00,'CR',NULL,'',NULL,1,NULL,0,0),(397,1,1047,29.00,'DR',NULL,'',NULL,1,NULL,0,0),(397,2,1095,29.00,'CR',NULL,'',NULL,1,NULL,0,0),(398,1,1091,680.00,'DR',NULL,'',NULL,1,NULL,0,0),(398,2,1,680.00,'CR',NULL,'',NULL,1,NULL,0,0),(399,1,1091,385.00,'DR',NULL,'',NULL,1,NULL,0,0),(399,2,1,385.00,'CR',NULL,'',NULL,1,NULL,0,0),(400,1,1091,730.00,'DR',NULL,'',NULL,1,NULL,0,0),(400,2,1,730.00,'CR',NULL,'',NULL,1,NULL,0,0),(401,1,1057,70000.00,'DR',NULL,'',NULL,1,NULL,0,0),(401,2,1,70000.00,'CR',NULL,'',NULL,1,NULL,0,0),(402,1,1077,7500.00,'DR',NULL,'',NULL,1,NULL,0,0),(402,2,1,7500.00,'CR',NULL,'',NULL,1,NULL,0,0),(403,1,1055,300000.00,'DR',NULL,'',NULL,1,NULL,0,0),(403,2,1095,300000.00,'CR',NULL,'',NULL,1,NULL,0,0),(404,1,1095,70000.00,'CR',NULL,'',NULL,1,NULL,0,0),(404,2,1,70000.00,'DR',NULL,'',NULL,1,NULL,0,0),(405,1,1085,2500.00,'DR',NULL,'',NULL,1,NULL,0,0),(405,2,1,2500.00,'CR',NULL,'',NULL,1,NULL,0,0),(406,1,1075,19500.00,'CR',NULL,'',NULL,1,NULL,0,0),(406,2,1,19500.00,'DR',NULL,'',NULL,1,NULL,0,0),(407,1,1063,146.00,'DR',NULL,'',NULL,1,NULL,0,0),(407,2,1,146.00,'CR',NULL,'',NULL,1,NULL,0,0),(408,1,1063,2400.00,'DR',NULL,'',NULL,1,NULL,0,0),(408,2,1,2400.00,'CR',NULL,'',NULL,1,NULL,0,0),(409,1,1063,820.00,'DR',NULL,'',NULL,1,NULL,0,0),(409,2,1,820.00,'CR',NULL,'',NULL,1,NULL,0,0),(410,1,1091,220.00,'DR',NULL,'',NULL,1,NULL,0,0),(410,2,1,220.00,'CR',NULL,'',NULL,1,NULL,0,0),(411,1,1071,4800.00,'DR',NULL,'',NULL,1,NULL,0,0),(411,2,1,4800.00,'CR',NULL,'',NULL,1,NULL,0,0),(412,1,1091,1800.00,'DR',NULL,'',NULL,1,NULL,0,0),(412,2,1,1800.00,'CR',NULL,'',NULL,1,NULL,0,0),(413,1,1071,12000.00,'DR',NULL,'',NULL,1,NULL,0,0),(413,2,1,12000.00,'CR',NULL,'',NULL,1,NULL,0,0),(414,1,1063,720.00,'DR',NULL,'',NULL,1,NULL,0,0),(414,2,1,720.00,'CR',NULL,'',NULL,1,NULL,0,0),(415,1,1063,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(415,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(416,1,1060,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(416,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(417,1,1053,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(417,2,1095,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(418,1,1053,100000.00,'CR',NULL,'',NULL,1,NULL,0,0),(418,2,1095,100000.00,'DR',NULL,'',NULL,1,NULL,0,0),(419,1,1063,775.00,'DR',NULL,'',NULL,1,NULL,0,0),(419,2,1,775.00,'CR',NULL,'',NULL,1,NULL,0,0),(420,1,1089,1175.00,'DR',NULL,'',NULL,1,NULL,0,0),(420,2,1,1175.00,'CR',NULL,'',NULL,1,NULL,0,0),(421,1,1060,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(421,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(422,1,1063,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(422,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(423,1,1076,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(423,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(424,1,1058,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(424,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(425,1,1063,148.00,'DR',NULL,'',NULL,1,NULL,0,0),(425,2,1,148.00,'CR',NULL,'',NULL,1,NULL,0,0),(426,1,1079,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(426,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(427,1,1065,92113.00,'CR',NULL,'',NULL,1,NULL,0,0),(427,2,1099,92113.00,'DR',NULL,'',NULL,1,NULL,0,0),(428,1,1084,575.00,'DR',NULL,'',NULL,1,NULL,0,0),(428,2,1,575.00,'CR',NULL,'',NULL,1,NULL,0,0),(429,1,1091,270.00,'DR',NULL,'',NULL,1,NULL,0,0),(429,2,1,270.00,'CR',NULL,'',NULL,1,NULL,0,0),(430,1,1091,770.00,'DR',NULL,'',NULL,1,NULL,0,0),(430,2,1,770.00,'CR',NULL,'',NULL,1,NULL,0,0),(431,1,1078,156.00,'DR',NULL,'',NULL,1,NULL,0,0),(431,2,1,156.00,'CR',NULL,'',NULL,1,NULL,0,0),(432,1,1083,130.00,'DR',NULL,'',NULL,1,NULL,0,0),(432,2,1,130.00,'CR',NULL,'',NULL,1,NULL,0,0),(433,1,1063,764.00,'DR',NULL,'',NULL,1,NULL,0,0),(433,2,1,764.00,'CR',NULL,'',NULL,1,NULL,0,0),(434,1,1091,85.00,'DR',NULL,'',NULL,1,NULL,0,0),(434,2,1,85.00,'CR',NULL,'',NULL,1,NULL,0,0),(435,1,1078,223.00,'DR',NULL,'',NULL,1,NULL,0,0),(435,2,1,223.00,'CR',NULL,'',NULL,1,NULL,0,0),(436,1,1058,3135.00,'DR',NULL,'',NULL,1,NULL,0,0),(436,2,1,3135.00,'CR',NULL,'',NULL,1,NULL,0,0),(437,1,1091,85.00,'DR',NULL,'',NULL,1,NULL,0,0),(437,2,1,85.00,'CR',NULL,'',NULL,1,NULL,0,0),(438,1,1091,340.00,'DR',NULL,'',NULL,1,NULL,0,0),(438,2,1,340.00,'CR',NULL,'',NULL,1,NULL,0,0),(439,1,1058,2750.00,'DR',NULL,'',NULL,1,NULL,0,0),(439,2,1,2750.00,'CR',NULL,'',NULL,1,NULL,0,0),(440,1,1050,1430.00,'DR',NULL,'',NULL,1,NULL,0,0),(440,2,1,1430.00,'CR',NULL,'',NULL,1,NULL,0,0),(441,1,1078,350.00,'DR',NULL,'',NULL,1,NULL,0,0),(441,2,1,350.00,'CR',NULL,'',NULL,1,NULL,0,0),(442,1,1091,85.00,'DR',NULL,'',NULL,1,NULL,0,0),(442,2,1,85.00,'CR',NULL,'',NULL,1,NULL,0,0),(443,1,1079,370.00,'DR',NULL,'',NULL,1,NULL,0,0),(443,2,1,370.00,'CR',NULL,'',NULL,1,NULL,0,0),(444,1,1091,710.00,'DR',NULL,'',NULL,1,NULL,0,0),(444,2,1,710.00,'CR',NULL,'',NULL,1,NULL,0,0),(445,1,1089,785.00,'DR',NULL,'',NULL,1,NULL,0,0),(445,2,1,785.00,'CR',NULL,'',NULL,1,NULL,0,0),(446,1,1053,20000.00,'CR',NULL,'',NULL,1,NULL,0,0),(446,2,1095,20000.00,'DR',NULL,'',NULL,1,NULL,0,0),(447,1,1093,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(447,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(448,1,1089,770.00,'DR',NULL,'',NULL,1,NULL,0,0),(448,2,1,770.00,'CR',NULL,'',NULL,1,NULL,0,0),(449,1,1091,85.00,'DR',NULL,'',NULL,1,NULL,0,0),(449,2,1,85.00,'CR',NULL,'',NULL,1,NULL,0,0),(450,1,1089,1083.00,'DR',NULL,'',NULL,1,NULL,0,0),(450,2,1,1083.00,'CR',NULL,'',NULL,1,NULL,0,0),(451,1,1063,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(451,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(452,1,1063,481.00,'DR',NULL,'',NULL,1,NULL,0,0),(452,2,1,481.00,'CR',NULL,'',NULL,1,NULL,0,0),(453,1,1084,170.00,'DR',NULL,'',NULL,1,NULL,0,0),(453,2,1,170.00,'CR',NULL,'',NULL,1,NULL,0,0),(454,1,1091,326.00,'DR',NULL,'',NULL,1,NULL,0,0),(454,2,1,326.00,'CR',NULL,'',NULL,1,NULL,0,0),(455,1,1063,154.00,'DR',NULL,'',NULL,1,NULL,0,0),(455,2,1,154.00,'CR',NULL,'',NULL,1,NULL,0,0),(456,1,1053,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(456,2,1095,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(457,1,1071,80.00,'DR',NULL,'',NULL,1,NULL,0,0),(457,2,1,80.00,'CR',NULL,'',NULL,1,NULL,0,0),(458,1,1053,20000.00,'CR',NULL,'',NULL,1,NULL,0,0),(458,2,1,20000.00,'DR',NULL,'',NULL,1,NULL,0,0),(459,1,1071,140.00,'DR',NULL,'',NULL,1,NULL,0,0),(459,2,1,140.00,'CR',NULL,'',NULL,1,NULL,0,0),(460,1,1071,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(460,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(461,1,1091,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(461,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(462,1,1095,30000.00,'CR',NULL,'',NULL,1,NULL,0,0),(462,2,1,30000.00,'DR',NULL,'',NULL,1,NULL,0,0),(463,1,1071,504.00,'DR',NULL,'',NULL,1,NULL,0,0),(463,2,1,504.00,'CR',NULL,'',NULL,1,NULL,0,0),(464,1,1052,791.00,'DR',NULL,'',NULL,1,NULL,0,0),(464,2,1,791.00,'CR',NULL,'',NULL,1,NULL,0,0),(465,1,1061,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(465,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(466,1,1061,12000.00,'DR',NULL,'',NULL,1,NULL,0,0),(466,2,1,12000.00,'CR',NULL,'',NULL,1,NULL,0,0),(467,1,1052,220.00,'DR',NULL,'',NULL,1,NULL,0,0),(467,2,1,220.00,'CR',NULL,'',NULL,1,NULL,0,0),(468,1,1078,68.00,'DR',NULL,'',NULL,1,NULL,0,0),(468,2,1,68.00,'CR',NULL,'',NULL,1,NULL,0,0),(469,1,1094,7000.00,'CR',NULL,'',NULL,1,NULL,0,0),(469,2,1,7000.00,'DR',NULL,'',NULL,1,NULL,0,0),(470,1,1071,4650.00,'DR',NULL,'',NULL,1,NULL,0,0),(470,2,1,4650.00,'CR',NULL,'',NULL,1,NULL,0,0),(471,1,1094,8000.00,'CR',NULL,'',NULL,1,NULL,0,0),(471,2,1,8000.00,'DR',NULL,'',NULL,1,NULL,0,0),(472,1,1071,330.00,'DR',NULL,'',NULL,1,NULL,0,0),(472,2,1,330.00,'CR',NULL,'',NULL,1,NULL,0,0),(473,1,1053,20000.00,'CR',NULL,'',NULL,1,NULL,0,0),(473,2,1,20000.00,'DR',NULL,'',NULL,1,NULL,0,0),(474,1,1053,20000.00,'CR',NULL,'',NULL,1,NULL,0,0),(474,2,1,20000.00,'DR',NULL,'',NULL,1,NULL,0,0),(475,1,1063,310.00,'DR',NULL,'',NULL,1,NULL,0,0),(475,2,1,310.00,'CR',NULL,'',NULL,1,NULL,0,0),(476,1,1063,545.00,'DR',NULL,'',NULL,1,NULL,0,0),(476,2,1,545.00,'CR',NULL,'',NULL,1,NULL,0,0),(477,1,1063,715.00,'DR',NULL,'',NULL,1,NULL,0,0),(477,2,1,715.00,'CR',NULL,'',NULL,1,NULL,0,0),(478,1,1063,5369.00,'DR',NULL,'',NULL,1,NULL,0,0),(478,2,1,5369.00,'CR',NULL,'',NULL,1,NULL,0,0),(479,1,1083,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(479,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(480,1,1063,380.00,'DR',NULL,'',NULL,1,NULL,0,0),(480,2,1,380.00,'CR',NULL,'',NULL,1,NULL,0,0),(481,1,1084,280.00,'DR',NULL,'',NULL,1,NULL,0,0),(481,2,1,280.00,'CR',NULL,'',NULL,1,NULL,0,0),(482,1,1084,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(482,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(483,1,1084,70.00,'DR',NULL,'',NULL,1,NULL,0,0),(483,2,1,70.00,'CR',NULL,'',NULL,1,NULL,0,0),(484,1,1063,428.00,'DR',NULL,'',NULL,1,NULL,0,0),(484,2,1,428.00,'CR',NULL,'',NULL,1,NULL,0,0),(485,1,1091,600.00,'DR',NULL,'',NULL,1,NULL,0,0),(485,2,1,600.00,'CR',NULL,'',NULL,1,NULL,0,0),(486,1,1091,316.00,'DR',NULL,'',NULL,1,NULL,0,0),(486,2,1,316.00,'CR',NULL,'',NULL,1,NULL,0,0),(487,1,1093,135.00,'DR',NULL,'',NULL,1,NULL,0,0),(487,2,1,135.00,'CR',NULL,'',NULL,1,NULL,0,0),(488,1,1093,239.00,'DR',NULL,'',NULL,1,NULL,0,0),(488,2,1,239.00,'CR',NULL,'',NULL,1,NULL,0,0),(489,1,1063,940.00,'DR',NULL,'',NULL,1,NULL,0,0),(489,2,1,940.00,'CR',NULL,'',NULL,1,NULL,0,0),(490,1,1059,540.00,'DR',NULL,'',NULL,1,NULL,0,0),(490,2,1,540.00,'CR',NULL,'',NULL,1,NULL,0,0),(491,1,1084,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(491,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(492,1,1063,720.00,'DR',NULL,'',NULL,1,NULL,0,0),(492,2,1,720.00,'CR',NULL,'',NULL,1,NULL,0,0),(493,1,1059,17369.00,'DR',NULL,'',NULL,1,NULL,0,0),(493,2,1,17369.00,'CR',NULL,'',NULL,1,NULL,0,0),(494,1,1067,60000.00,'DR',NULL,'',NULL,1,NULL,0,0),(494,2,1,60000.00,'CR',NULL,'',NULL,1,NULL,0,0),(495,1,1084,800.00,'DR',NULL,'',NULL,1,NULL,0,0),(495,2,1,800.00,'CR',NULL,'',NULL,1,NULL,0,0),(496,1,1085,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(496,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(497,1,1078,219.00,'DR',NULL,'',NULL,1,NULL,0,0),(497,2,1,219.00,'CR',NULL,'',NULL,1,NULL,0,0),(498,1,1078,330.00,'DR',NULL,'',NULL,1,NULL,0,0),(498,2,1,330.00,'CR',NULL,'',NULL,1,NULL,0,0),(499,1,1063,600.00,'DR',NULL,'',NULL,1,NULL,0,0),(499,2,1,600.00,'CR',NULL,'',NULL,1,NULL,0,0),(500,1,1063,129.00,'DR',NULL,'',NULL,1,NULL,0,0),(500,2,1,129.00,'CR',NULL,'',NULL,1,NULL,0,0),(501,1,1063,110.00,'DR',NULL,'',NULL,1,NULL,0,0),(501,2,1,110.00,'CR',NULL,'',NULL,1,NULL,0,0),(502,1,1084,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(502,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(503,1,1063,2015.00,'DR',NULL,'',NULL,1,NULL,0,0),(503,2,1,2015.00,'CR',NULL,'',NULL,1,NULL,0,0),(504,1,1063,2418.00,'DR',NULL,'',NULL,1,NULL,0,0),(504,2,1,2418.00,'CR',NULL,'',NULL,1,NULL,0,0),(505,1,1063,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(505,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(506,1,1063,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(506,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(507,1,1063,450.00,'DR',NULL,'',NULL,1,NULL,0,0),(507,2,1,450.00,'CR',NULL,'',NULL,1,NULL,0,0),(508,1,1060,50.00,'DR',NULL,'',NULL,1,NULL,0,0),(508,2,1,50.00,'CR',NULL,'',NULL,1,NULL,0,0),(509,1,1071,240.00,'DR',NULL,'',NULL,1,NULL,0,0),(509,2,1,240.00,'CR',NULL,'',NULL,1,NULL,0,0),(510,1,1063,720.00,'DR',NULL,'',NULL,1,NULL,0,0),(510,2,1,720.00,'CR',NULL,'',NULL,1,NULL,0,0),(511,1,1078,99.00,'DR',NULL,'',NULL,1,NULL,0,0),(511,2,1,99.00,'CR',NULL,'',NULL,1,NULL,0,0),(512,1,1078,87.00,'DR',NULL,'',NULL,1,NULL,0,0),(512,2,1,87.00,'CR',NULL,'',NULL,1,NULL,0,0),(513,1,1084,60.00,'DR',NULL,'',NULL,1,NULL,0,0),(513,2,1,60.00,'CR',NULL,'',NULL,1,NULL,0,0),(514,1,1063,240.00,'DR',NULL,'',NULL,1,NULL,0,0),(514,2,1,240.00,'CR',NULL,'',NULL,1,NULL,0,0),(515,1,1093,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(515,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(516,1,1077,5500.00,'DR',NULL,'',NULL,1,NULL,0,0),(516,2,1,5500.00,'CR',NULL,'',NULL,1,NULL,0,0),(517,1,1085,2500.00,'DR',NULL,'',NULL,1,NULL,0,0),(517,2,1,2500.00,'CR',NULL,'',NULL,1,NULL,0,0),(518,1,1063,435.00,'DR',NULL,'',NULL,1,NULL,0,0),(518,2,1,435.00,'CR',NULL,'',NULL,1,NULL,0,0),(519,1,1085,8500.00,'DR',NULL,'',NULL,1,NULL,0,0),(519,2,1,8500.00,'CR',NULL,'',NULL,1,NULL,0,0),(520,1,1063,252.00,'DR',NULL,'',NULL,1,NULL,0,0),(520,2,1,252.00,'CR',NULL,'',NULL,1,NULL,0,0),(521,1,1063,234.00,'DR',NULL,'',NULL,1,NULL,0,0),(521,2,1,234.00,'CR',NULL,'',NULL,1,NULL,0,0),(522,1,1063,450.00,'DR',NULL,'',NULL,1,NULL,0,0),(522,2,1,450.00,'CR',NULL,'',NULL,1,NULL,0,0),(523,1,1063,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(523,2,1,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(524,1,1063,520.00,'DR',NULL,'',NULL,1,NULL,0,0),(524,2,1,520.00,'CR',NULL,'',NULL,1,NULL,0,0),(525,1,1086,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(525,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(526,1,1085,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(526,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(527,1,1074,23100.00,'CR',NULL,'',NULL,1,NULL,0,0),(527,2,1,23100.00,'DR',NULL,'',NULL,1,NULL,0,0),(528,1,1063,660.00,'DR',NULL,'',NULL,1,NULL,0,0),(528,2,1,660.00,'CR',NULL,'',NULL,1,NULL,0,0),(529,1,1063,235.00,'DR',NULL,'',NULL,1,NULL,0,0),(529,2,1,235.00,'CR',NULL,'',NULL,1,NULL,0,0),(530,1,1091,2122.00,'DR',NULL,'',NULL,1,NULL,0,0),(530,2,1,2122.00,'CR',NULL,'',NULL,1,NULL,0,0),(531,1,1085,1400.00,'DR',NULL,'',NULL,1,NULL,0,0),(531,2,1,1400.00,'CR',NULL,'',NULL,1,NULL,0,0),(532,1,1095,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(532,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(533,1,1063,107.00,'DR',NULL,'',NULL,1,NULL,0,0),(533,2,1,107.00,'CR',NULL,'',NULL,1,NULL,0,0),(534,1,1091,668.00,'DR',NULL,'',NULL,1,NULL,0,0),(534,2,1,668.00,'CR',NULL,'',NULL,1,NULL,0,0),(535,1,1055,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(535,2,1,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(536,1,1053,20000.00,'CR',NULL,'',NULL,1,NULL,0,0),(536,2,1095,20000.00,'DR',NULL,'',NULL,1,NULL,0,0),(537,1,1078,225.00,'DR',NULL,'',NULL,1,NULL,0,0),(537,2,1,225.00,'CR',NULL,'',NULL,1,NULL,0,0),(538,1,1074,3200.00,'CR',NULL,'',NULL,1,NULL,0,0),(538,2,1,3200.00,'DR',NULL,'',NULL,1,NULL,0,0),(539,1,1063,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(539,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(540,1,1054,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(540,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(541,1,1089,617.00,'DR',NULL,'',NULL,1,NULL,0,0),(541,2,1,617.00,'CR',NULL,'',NULL,1,NULL,0,0),(542,1,1091,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(542,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(543,1,1063,460.00,'DR',NULL,'',NULL,1,NULL,0,0),(543,2,1,460.00,'CR',NULL,'',NULL,1,NULL,0,0),(544,1,1053,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(544,2,1095,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(545,1,1089,800.00,'DR',NULL,'',NULL,1,NULL,0,0),(545,2,1,800.00,'CR',NULL,'',NULL,1,NULL,0,0),(546,1,1092,9505.00,'DR',NULL,'',NULL,1,NULL,0,0),(546,2,1,9505.00,'CR',NULL,'',NULL,1,NULL,0,0),(547,1,1093,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(547,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(548,1,1063,62.00,'DR',NULL,'',NULL,1,NULL,0,0),(548,2,1,62.00,'CR',NULL,'',NULL,1,NULL,0,0),(549,1,1076,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(549,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(550,1,1082,27.00,'DR',NULL,'',NULL,1,NULL,0,0),(550,2,1,27.00,'CR',NULL,'',NULL,1,NULL,0,0),(551,1,1089,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(551,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(552,1,1091,710.00,'DR',NULL,'',NULL,1,NULL,0,0),(552,2,1,710.00,'CR',NULL,'',NULL,1,NULL,0,0),(553,1,1094,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(553,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(554,1,1063,720.00,'DR',NULL,'',NULL,1,NULL,0,0),(554,2,1,720.00,'CR',NULL,'',NULL,1,NULL,0,0),(555,1,1053,20000.00,'CR',NULL,'',NULL,1,NULL,0,0),(555,2,1095,20000.00,'DR',NULL,'',NULL,1,NULL,0,0),(556,1,1063,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(556,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(557,1,1093,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(557,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(558,1,1063,330.00,'DR',NULL,'',NULL,1,NULL,0,0),(558,2,1,330.00,'CR',NULL,'',NULL,1,NULL,0,0),(559,1,1061,3900.00,'DR',NULL,'',NULL,1,NULL,0,0),(559,2,1,3900.00,'CR',NULL,'',NULL,1,NULL,0,0),(560,1,1051,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(560,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(561,1,1063,130.00,'DR',NULL,'',NULL,1,NULL,0,0),(561,2,1,130.00,'CR',NULL,'',NULL,1,NULL,0,0),(562,1,1069,2160.00,'DR',NULL,'',NULL,1,NULL,0,0),(562,2,1,2160.00,'CR',NULL,'',NULL,1,NULL,0,0),(563,1,1059,1130.00,'DR',NULL,'',NULL,1,NULL,0,0),(563,2,1,1130.00,'CR',NULL,'',NULL,1,NULL,0,0),(564,1,1059,422.00,'DR',NULL,'',NULL,1,NULL,0,0),(564,2,1,422.00,'CR',NULL,'',NULL,1,NULL,0,0),(565,1,1063,1645.00,'DR',NULL,'',NULL,1,NULL,0,0),(565,2,1,1645.00,'CR',NULL,'',NULL,1,NULL,0,0),(566,1,1093,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(566,2,1,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(567,1,1091,152.00,'DR',NULL,'',NULL,1,NULL,0,0),(567,2,1,152.00,'CR',NULL,'',NULL,1,NULL,0,0),(568,1,1078,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(568,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(569,1,1091,1116.00,'DR',NULL,'',NULL,1,NULL,0,0),(569,2,1,1116.00,'CR',NULL,'',NULL,1,NULL,0,0),(570,1,1084,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(570,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(571,1,1063,670.00,'DR',NULL,'',NULL,1,NULL,0,0),(571,2,1,670.00,'CR',NULL,'',NULL,1,NULL,0,0),(572,1,1061,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(572,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(573,1,1052,890.00,'DR',NULL,'',NULL,1,NULL,0,0),(573,2,1,890.00,'CR',NULL,'',NULL,1,NULL,0,0),(574,1,1053,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(574,2,1,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(575,1,1063,240.00,'DR',NULL,'',NULL,1,NULL,0,0),(575,2,1,240.00,'CR',NULL,'',NULL,1,NULL,0,0),(576,1,1076,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(576,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(577,1,1053,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(577,2,1,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(578,1,1086,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(578,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(579,1,1063,470.00,'DR',NULL,'',NULL,1,NULL,0,0),(579,2,1,470.00,'CR',NULL,'',NULL,1,NULL,0,0),(580,1,1086,12000.00,'DR',NULL,'',NULL,1,NULL,0,0),(580,2,1,12000.00,'CR',NULL,'',NULL,1,NULL,0,0),(581,1,1053,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(581,2,1,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(582,1,1052,445.00,'DR',NULL,'',NULL,1,NULL,0,0),(582,2,1,445.00,'CR',NULL,'',NULL,1,NULL,0,0),(583,1,1053,10500.00,'CR',NULL,'',NULL,1,NULL,0,0),(583,2,1,10500.00,'DR',NULL,'',NULL,1,NULL,0,0),(584,1,1091,210.00,'DR',NULL,'',NULL,1,NULL,0,0),(584,2,1,210.00,'CR',NULL,'',NULL,1,NULL,0,0),(585,1,1091,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(585,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(586,1,1091,210.00,'DR',NULL,'',NULL,1,NULL,0,0),(586,2,1,210.00,'CR',NULL,'',NULL,1,NULL,0,0),(587,1,1093,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(587,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(588,1,1078,2633.00,'DR',NULL,'',NULL,1,NULL,0,0),(588,2,1,2633.00,'CR',NULL,'',NULL,1,NULL,0,0),(589,1,1089,1871.00,'DR',NULL,'',NULL,1,NULL,0,0),(589,2,1,1871.00,'CR',NULL,'',NULL,1,NULL,0,0),(590,1,1089,769.00,'DR',NULL,'',NULL,1,NULL,0,0),(590,2,1,769.00,'CR',NULL,'',NULL,1,NULL,0,0),(591,1,1093,2781.00,'DR',NULL,'',NULL,1,NULL,0,0),(591,2,1,2781.00,'CR',NULL,'',NULL,1,NULL,0,0),(592,1,1089,1077.00,'DR',NULL,'',NULL,1,NULL,0,0),(592,2,1,1077.00,'CR',NULL,'',NULL,1,NULL,0,0),(593,1,1063,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(593,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(594,1,1074,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(594,2,1,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(595,1,1091,848.00,'DR',NULL,'',NULL,1,NULL,0,0),(595,2,1,848.00,'CR',NULL,'',NULL,1,NULL,0,0),(596,1,1084,25000.00,'DR',NULL,'',NULL,1,NULL,0,0),(596,2,1,25000.00,'CR',NULL,'',NULL,1,NULL,0,0),(597,1,1094,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(597,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(598,1,1091,190.00,'DR',NULL,'',NULL,1,NULL,0,0),(598,2,1,190.00,'CR',NULL,'',NULL,1,NULL,0,0),(599,1,1091,190.00,'DR',NULL,'',NULL,1,NULL,0,0),(599,2,1,190.00,'CR',NULL,'',NULL,1,NULL,0,0),(600,1,1091,1875.00,'DR',NULL,'',NULL,1,NULL,0,0),(600,2,1,1875.00,'CR',NULL,'',NULL,1,NULL,0,0),(601,1,1091,1040.00,'DR',NULL,'',NULL,1,NULL,0,0),(601,2,1,1040.00,'CR',NULL,'',NULL,1,NULL,0,0),(602,1,1059,8130.00,'DR',NULL,'',NULL,1,NULL,0,0),(602,2,1,8130.00,'CR',NULL,'',NULL,1,NULL,0,0),(603,1,1063,5860.00,'DR',NULL,'',NULL,1,NULL,0,0),(603,2,1,5860.00,'CR',NULL,'',NULL,1,NULL,0,0),(604,1,1084,2970.00,'DR',NULL,'',NULL,1,NULL,0,0),(604,2,1,2970.00,'CR',NULL,'',NULL,1,NULL,0,0),(605,1,1054,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(605,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(606,1,1085,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(606,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(607,1,1077,6500.00,'DR',NULL,'',NULL,1,NULL,0,0),(607,2,1,6500.00,'CR',NULL,'',NULL,1,NULL,0,0),(608,1,1063,95.00,'DR',NULL,'',NULL,1,NULL,0,0),(608,2,1,95.00,'CR',NULL,'',NULL,1,NULL,0,0),(609,1,1085,8500.00,'DR',NULL,'',NULL,1,NULL,0,0),(609,2,1,8500.00,'CR',NULL,'',NULL,1,NULL,0,0),(610,1,1095,80000.00,'CR',NULL,'',NULL,1,NULL,0,0),(610,2,1,80000.00,'DR',NULL,'',NULL,1,NULL,0,0),(611,1,1053,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(611,2,1,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(612,1,1070,80000.00,'DR',NULL,'',NULL,1,NULL,0,0),(612,2,1095,80000.00,'CR',NULL,'',NULL,1,NULL,0,0),(613,1,1055,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(613,2,1,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(614,1,1084,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(614,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(615,1,1085,2500.00,'DR',NULL,'',NULL,1,NULL,0,0),(615,2,1,2500.00,'CR',NULL,'',NULL,1,NULL,0,0),(616,1,1060,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(616,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(617,1,1063,2158.00,'DR',NULL,'',NULL,1,NULL,0,0),(617,2,1,2158.00,'CR',NULL,'',NULL,1,NULL,0,0),(618,1,1053,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(618,2,1095,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(619,1,1089,1586.00,'DR',NULL,'',NULL,1,NULL,0,0),(619,2,1,1586.00,'CR',NULL,'',NULL,1,NULL,0,0),(620,1,1063,560.00,'DR',NULL,'',NULL,1,NULL,0,0),(620,2,1,560.00,'CR',NULL,'',NULL,1,NULL,0,0),(621,1,1067,450.00,'DR',NULL,'',NULL,1,NULL,0,0),(621,2,1,450.00,'CR',NULL,'',NULL,1,NULL,0,0),(622,1,1060,746.00,'DR',NULL,'',NULL,1,NULL,0,0),(622,2,1,746.00,'CR',NULL,'',NULL,1,NULL,0,0),(623,1,1059,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(623,2,1,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(624,1,1091,168.00,'DR',NULL,'',NULL,1,NULL,0,0),(624,2,1,168.00,'CR',NULL,'',NULL,1,NULL,0,0),(625,1,1091,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(625,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(626,1,1084,11000.00,'DR',NULL,'',NULL,1,NULL,0,0),(626,2,1,11000.00,'CR',NULL,'',NULL,1,NULL,0,0),(627,1,1084,627.00,'DR',NULL,'',NULL,1,NULL,0,0),(627,2,1,627.00,'CR',NULL,'',NULL,1,NULL,0,0),(628,1,1084,600.00,'DR',NULL,'',NULL,1,NULL,0,0),(628,2,1,600.00,'CR',NULL,'',NULL,1,NULL,0,0),(629,1,1063,220.00,'DR',NULL,'',NULL,1,NULL,0,0),(629,2,1,220.00,'CR',NULL,'',NULL,1,NULL,0,0),(630,1,1058,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(630,2,1,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(631,1,1063,60.00,'DR',NULL,'',NULL,1,NULL,0,0),(631,2,1,60.00,'CR',NULL,'',NULL,1,NULL,0,0),(632,1,1049,14356.00,'CR',NULL,'',NULL,1,NULL,0,0),(632,2,1095,14356.00,'DR',NULL,'',NULL,1,NULL,0,0),(633,1,1063,710.00,'DR',NULL,'',NULL,1,NULL,0,0),(633,2,1,710.00,'CR',NULL,'',NULL,1,NULL,0,0),(634,1,1051,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(634,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(635,1,1084,570.00,'DR',NULL,'',NULL,1,NULL,0,0),(635,2,1,570.00,'CR',NULL,'',NULL,1,NULL,0,0),(636,1,1063,620.00,'DR',NULL,'',NULL,1,NULL,0,0),(636,2,1,620.00,'CR',NULL,'',NULL,1,NULL,0,0),(637,1,1084,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(637,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(638,1,1061,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(638,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(639,1,1059,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(639,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(640,1,1063,360.00,'DR',NULL,'',NULL,1,NULL,0,0),(640,2,1,360.00,'CR',NULL,'',NULL,1,NULL,0,0),(641,1,1084,240.00,'DR',NULL,'',NULL,1,NULL,0,0),(641,2,1,240.00,'CR',NULL,'',NULL,1,NULL,0,0),(642,1,1063,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(642,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(643,1,1053,20000.00,'CR',NULL,'',NULL,1,NULL,0,0),(643,2,1095,20000.00,'DR',NULL,'',NULL,1,NULL,0,0),(644,1,1063,110.00,'DR',NULL,'',NULL,1,NULL,0,0),(644,2,1,110.00,'CR',NULL,'',NULL,1,NULL,0,0),(645,1,1053,20000.00,'CR',NULL,'',NULL,1,NULL,0,0),(645,2,1095,20000.00,'DR',NULL,'',NULL,1,NULL,0,0),(646,1,1084,800.00,'DR',NULL,'',NULL,1,NULL,0,0),(646,2,1,800.00,'CR',NULL,'',NULL,1,NULL,0,0),(647,1,1085,800.00,'DR',NULL,'',NULL,1,NULL,0,0),(647,2,1,800.00,'CR',NULL,'',NULL,1,NULL,0,0),(648,1,1091,910.00,'DR',NULL,'',NULL,1,NULL,0,0),(648,2,1,910.00,'CR',NULL,'',NULL,1,NULL,0,0),(649,1,1089,1083.00,'DR',NULL,'',NULL,1,NULL,0,0),(649,2,1,1083.00,'CR',NULL,'',NULL,1,NULL,0,0),(650,1,1089,788.00,'DR',NULL,'',NULL,1,NULL,0,0),(650,2,1,788.00,'CR',NULL,'',NULL,1,NULL,0,0),(651,1,1089,769.00,'DR',NULL,'',NULL,1,NULL,0,0),(651,2,1,769.00,'CR',NULL,'',NULL,1,NULL,0,0),(652,1,1060,2061.00,'DR',NULL,'',NULL,1,NULL,0,0),(652,2,1,2061.00,'CR',NULL,'',NULL,1,NULL,0,0),(653,1,1063,95.00,'DR',NULL,'',NULL,1,NULL,0,0),(653,2,1,95.00,'CR',NULL,'',NULL,1,NULL,0,0),(654,1,1085,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(654,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(655,1,1091,140.00,'DR',NULL,'',NULL,1,NULL,0,0),(655,2,1,140.00,'CR',NULL,'',NULL,1,NULL,0,0),(656,1,1060,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(656,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(657,1,1079,240.00,'DR',NULL,'',NULL,1,NULL,0,0),(657,2,1,240.00,'CR',NULL,'',NULL,1,NULL,0,0),(658,1,1067,340.00,'DR',NULL,'',NULL,1,NULL,0,0),(658,2,1,340.00,'CR',NULL,'',NULL,1,NULL,0,0),(659,1,1091,537.00,'DR',NULL,'',NULL,1,NULL,0,0),(659,2,1,537.00,'CR',NULL,'',NULL,1,NULL,0,0),(660,1,1063,195.00,'DR',NULL,'',NULL,1,NULL,0,0),(660,2,1,195.00,'CR',NULL,'',NULL,1,NULL,0,0),(661,1,1060,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(661,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(662,1,1065,162496.00,'CR',NULL,'',NULL,1,NULL,0,0),(662,2,1099,162496.00,'DR',NULL,'',NULL,1,NULL,0,0),(663,1,1084,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(663,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(664,1,1084,692.00,'DR',NULL,'',NULL,1,NULL,0,0),(664,2,1,692.00,'CR',NULL,'',NULL,1,NULL,0,0),(665,1,1084,535.00,'DR',NULL,'',NULL,1,NULL,0,0),(665,2,1,535.00,'CR',NULL,'',NULL,1,NULL,0,0),(666,1,1084,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(666,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(667,1,1067,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(667,2,1,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(668,1,1063,485.00,'DR',NULL,'',NULL,1,NULL,0,0),(668,2,1,485.00,'CR',NULL,'',NULL,1,NULL,0,0),(669,1,1063,710.00,'DR',NULL,'',NULL,1,NULL,0,0),(669,2,1,710.00,'CR',NULL,'',NULL,1,NULL,0,0),(670,1,1052,3038.00,'DR',NULL,'',NULL,1,NULL,0,0),(670,2,1,3038.00,'CR',NULL,'',NULL,1,NULL,0,0),(671,1,1063,1772.00,'DR',NULL,'',NULL,1,NULL,0,0),(671,2,1,1772.00,'CR',NULL,'',NULL,1,NULL,0,0),(672,1,1063,512.00,'DR',NULL,'',NULL,1,NULL,0,0),(672,2,1,512.00,'CR',NULL,'',NULL,1,NULL,0,0),(673,1,1095,20000.00,'CR',NULL,'',NULL,1,NULL,0,0),(673,2,1,20000.00,'DR',NULL,'',NULL,1,NULL,0,0),(674,1,1063,174.00,'DR',NULL,'',NULL,1,NULL,0,0),(674,2,1,174.00,'CR',NULL,'',NULL,1,NULL,0,0),(675,1,1076,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(675,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(676,1,1063,370.00,'DR',NULL,'',NULL,1,NULL,0,0),(676,2,1,370.00,'CR',NULL,'',NULL,1,NULL,0,0),(677,1,1061,1450.00,'DR',NULL,'',NULL,1,NULL,0,0),(677,2,1,1450.00,'CR',NULL,'',NULL,1,NULL,0,0),(678,1,1063,195.00,'DR',NULL,'',NULL,1,NULL,0,0),(678,2,1,195.00,'CR',NULL,'',NULL,1,NULL,0,0),(679,1,1078,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(679,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(680,1,1078,505.00,'DR',NULL,'',NULL,1,NULL,0,0),(680,2,1,505.00,'CR',NULL,'',NULL,1,NULL,0,0),(681,1,1078,509.00,'DR',NULL,'',NULL,1,NULL,0,0),(681,2,1,509.00,'CR',NULL,'',NULL,1,NULL,0,0),(682,1,1078,379.00,'DR',NULL,'',NULL,1,NULL,0,0),(682,2,1,379.00,'CR',NULL,'',NULL,1,NULL,0,0),(683,1,1060,1899.00,'DR',NULL,'',NULL,1,NULL,0,0),(683,2,1,1899.00,'CR',NULL,'',NULL,1,NULL,0,0),(684,1,1063,404.00,'DR',NULL,'',NULL,1,NULL,0,0),(684,2,1,404.00,'CR',NULL,'',NULL,1,NULL,0,0),(685,1,1091,2588.00,'DR',NULL,'',NULL,1,NULL,0,0),(685,2,1,2588.00,'CR',NULL,'',NULL,1,NULL,0,0),(686,1,1085,600.00,'DR',NULL,'',NULL,1,NULL,0,0),(686,2,1,600.00,'CR',NULL,'',NULL,1,NULL,0,0),(687,1,1078,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(687,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(688,1,1091,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(688,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(689,1,1062,17.00,'DR',NULL,'',NULL,1,NULL,0,0),(689,2,1099,17.00,'CR',NULL,'',NULL,1,NULL,0,0),(690,1,1063,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(690,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(691,1,1070,160000.00,'DR',NULL,'',NULL,1,NULL,0,0),(691,2,1099,160000.00,'CR',NULL,'',NULL,1,NULL,0,0),(692,1,1063,95.00,'DR',NULL,'',NULL,1,NULL,0,0),(692,2,1,95.00,'CR',NULL,'',NULL,1,NULL,0,0),(693,1,1063,290.00,'DR',NULL,'',NULL,1,NULL,0,0),(693,2,1,290.00,'CR',NULL,'',NULL,1,NULL,0,0),(694,1,1078,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(694,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(695,1,1063,480.00,'DR',NULL,'',NULL,1,NULL,0,0),(695,2,1,480.00,'CR',NULL,'',NULL,1,NULL,0,0),(696,1,1060,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(696,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(697,1,1077,1660.00,'DR',NULL,'',NULL,1,NULL,0,0),(697,2,1,1660.00,'CR',NULL,'',NULL,1,NULL,0,0),(698,1,1091,600.00,'DR',NULL,'',NULL,1,NULL,0,0),(698,2,1,600.00,'CR',NULL,'',NULL,1,NULL,0,0),(699,1,1071,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(699,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(700,1,1063,540.00,'DR',NULL,'',NULL,1,NULL,0,0),(700,2,1,540.00,'CR',NULL,'',NULL,1,NULL,0,0),(701,1,1091,1161.00,'DR',NULL,'',NULL,1,NULL,0,0),(701,2,1,1161.00,'CR',NULL,'',NULL,1,NULL,0,0),(702,1,1063,1190.00,'DR',NULL,'',NULL,1,NULL,0,0),(702,2,1,1190.00,'CR',NULL,'',NULL,1,NULL,0,0),(703,1,1065,99085.00,'CR',NULL,'',NULL,1,NULL,0,0),(703,2,1099,99085.00,'DR',NULL,'',NULL,1,NULL,0,0),(704,1,1061,345.00,'DR',NULL,'',NULL,1,NULL,0,0),(704,2,1,345.00,'CR',NULL,'',NULL,1,NULL,0,0),(705,1,1059,5021.00,'DR',NULL,'',NULL,1,NULL,0,0),(705,2,1,5021.00,'CR',NULL,'',NULL,1,NULL,0,0),(706,1,1061,410.00,'DR',NULL,'',NULL,1,NULL,0,0),(706,2,1,410.00,'CR',NULL,'',NULL,1,NULL,0,0),(707,1,1084,1350.00,'DR',NULL,'',NULL,1,NULL,0,0),(707,2,1,1350.00,'CR',NULL,'',NULL,1,NULL,0,0),(708,1,1053,35000.00,'CR',NULL,'',NULL,1,NULL,0,0),(708,2,1095,35000.00,'DR',NULL,'',NULL,1,NULL,0,0),(709,1,1082,97.00,'DR',NULL,'',NULL,1,NULL,0,0),(709,2,1,97.00,'CR',NULL,'',NULL,1,NULL,0,0),(710,1,1078,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(710,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(711,1,1052,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(711,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(712,1,1059,482.00,'DR',NULL,'',NULL,1,NULL,0,0),(712,2,1,482.00,'CR',NULL,'',NULL,1,NULL,0,0),(713,1,1063,1875.00,'DR',NULL,'',NULL,1,NULL,0,0),(713,2,1,1875.00,'CR',NULL,'',NULL,1,NULL,0,0),(714,1,1063,2010.00,'DR',NULL,'',NULL,1,NULL,0,0),(714,2,1,2010.00,'CR',NULL,'',NULL,1,NULL,0,0),(715,1,1077,7500.00,'DR',NULL,'',NULL,1,NULL,0,0),(715,2,1,7500.00,'CR',NULL,'',NULL,1,NULL,0,0),(716,1,1070,99085.00,'DR',NULL,'',NULL,1,NULL,0,0),(716,2,1099,99085.00,'CR',NULL,'',NULL,1,NULL,0,0),(717,1,1095,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(717,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(718,1,1054,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(718,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(719,1,1095,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(719,2,1095,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(720,1,1082,25.00,'DR',NULL,'',NULL,1,NULL,0,0),(720,2,1,25.00,'CR',NULL,'',NULL,1,NULL,0,0),(721,1,1070,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(721,2,1095,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(722,1,1082,25.00,'DR',NULL,'',NULL,1,NULL,0,0),(722,2,1,25.00,'CR',NULL,'',NULL,1,NULL,0,0),(723,1,1095,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(723,2,1095,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(724,1,1063,130.00,'DR',NULL,'',NULL,1,NULL,0,0),(724,2,1,130.00,'CR',NULL,'',NULL,1,NULL,0,0),(725,1,1078,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(725,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(726,1,1085,4500.00,'DR',NULL,'',NULL,1,NULL,0,0),(726,2,1,4500.00,'CR',NULL,'',NULL,1,NULL,0,0),(727,1,1069,793.00,'DR',NULL,'',NULL,1,NULL,0,0),(727,2,1,793.00,'CR',NULL,'',NULL,1,NULL,0,0),(728,1,1063,488.00,'DR',NULL,'',NULL,1,NULL,0,0),(728,2,1,488.00,'CR',NULL,'',NULL,1,NULL,0,0),(729,1,1085,8500.00,'DR',NULL,'',NULL,1,NULL,0,0),(729,2,1,8500.00,'CR',NULL,'',NULL,1,NULL,0,0),(730,1,1069,2186.00,'DR',NULL,'',NULL,1,NULL,0,0),(730,2,1,2186.00,'CR',NULL,'',NULL,1,NULL,0,0),(731,1,1084,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(731,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(732,1,1084,5400.00,'DR',NULL,'',NULL,1,NULL,0,0),(732,2,1,5400.00,'CR',NULL,'',NULL,1,NULL,0,0),(733,1,1060,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(733,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(734,1,1060,2140.00,'DR',NULL,'',NULL,1,NULL,0,0),(734,2,1,2140.00,'CR',NULL,'',NULL,1,NULL,0,0),(735,1,1084,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(735,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(736,1,1063,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(736,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(737,1,1063,208.00,'DR',NULL,'',NULL,1,NULL,0,0),(737,2,1,208.00,'CR',NULL,'',NULL,1,NULL,0,0),(738,1,1063,1406.00,'DR',NULL,'',NULL,1,NULL,0,0),(738,2,1,1406.00,'CR',NULL,'',NULL,1,NULL,0,0),(739,1,1063,11011.00,'DR',NULL,'',NULL,1,NULL,0,0),(739,2,1,11011.00,'CR',NULL,'',NULL,1,NULL,0,0),(740,1,1084,375.00,'DR',NULL,'',NULL,1,NULL,0,0),(740,2,1,375.00,'CR',NULL,'',NULL,1,NULL,0,0),(741,1,1064,102.00,'DR',NULL,'',NULL,1,NULL,0,0),(741,2,1,102.00,'CR',NULL,'',NULL,1,NULL,0,0),(742,1,1078,380.00,'DR',NULL,'',NULL,1,NULL,0,0),(742,2,1,380.00,'CR',NULL,'',NULL,1,NULL,0,0),(743,1,1069,3841.00,'DR',NULL,'',NULL,1,NULL,0,0),(743,2,1,3841.00,'CR',NULL,'',NULL,1,NULL,0,0),(744,1,1078,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(744,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(745,1,1078,4500.00,'DR',NULL,'',NULL,1,NULL,0,0),(745,2,1,4500.00,'CR',NULL,'',NULL,1,NULL,0,0),(746,1,1063,610.00,'DR',NULL,'',NULL,1,NULL,0,0),(746,2,1,610.00,'CR',NULL,'',NULL,1,NULL,0,0),(747,1,1069,772.00,'DR',NULL,'',NULL,1,NULL,0,0),(747,2,1,772.00,'CR',NULL,'',NULL,1,NULL,0,0),(748,1,1083,16.00,'DR',NULL,'',NULL,1,NULL,0,0),(748,2,1,16.00,'CR',NULL,'',NULL,1,NULL,0,0),(749,1,1083,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(749,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(750,1,1091,365.00,'DR',NULL,'',NULL,1,NULL,0,0),(750,2,1,365.00,'CR',NULL,'',NULL,1,NULL,0,0),(751,1,1084,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(751,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(752,1,1060,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(752,2,1,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(753,1,1091,365.00,'DR',NULL,'',NULL,1,NULL,0,0),(753,2,1,365.00,'CR',NULL,'',NULL,1,NULL,0,0),(754,1,1063,610.00,'DR',NULL,'',NULL,1,NULL,0,0),(754,2,1,610.00,'CR',NULL,'',NULL,1,NULL,0,0),(755,1,1064,610.00,'DR',NULL,'',NULL,1,NULL,0,0),(755,2,1,610.00,'CR',NULL,'',NULL,1,NULL,0,0),(756,1,1068,1187.00,'DR',NULL,'',NULL,1,NULL,0,0),(756,2,1,1187.00,'CR',NULL,'',NULL,1,NULL,0,0),(757,1,1099,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(757,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(758,1,1068,2468.00,'DR',NULL,'',NULL,1,NULL,0,0),(758,2,1,2468.00,'CR',NULL,'',NULL,1,NULL,0,0),(759,1,1082,25.00,'DR',NULL,'',NULL,1,NULL,0,0),(759,2,1,25.00,'CR',NULL,'',NULL,1,NULL,0,0),(760,1,1085,4500.00,'DR',NULL,'',NULL,1,NULL,0,0),(760,2,1,4500.00,'CR',NULL,'',NULL,1,NULL,0,0),(761,1,1064,2010.00,'DR',NULL,'',NULL,1,NULL,0,0),(761,2,1,2010.00,'CR',NULL,'',NULL,1,NULL,0,0),(762,1,1082,25.00,'DR',NULL,'',NULL,1,NULL,0,0),(762,2,1,25.00,'CR',NULL,'',NULL,1,NULL,0,0),(763,1,1087,7500.00,'DR',NULL,'',NULL,1,NULL,0,0),(763,2,1,7500.00,'CR',NULL,'',NULL,1,NULL,0,0),(764,1,1085,8500.00,'DR',NULL,'',NULL,1,NULL,0,0),(764,2,1,8500.00,'CR',NULL,'',NULL,1,NULL,0,0),(765,1,1064,610.00,'DR',NULL,'',NULL,1,NULL,0,0),(765,2,1,610.00,'CR',NULL,'',NULL,1,NULL,0,0),(766,1,1053,200000.00,'CR',NULL,'',NULL,1,NULL,0,0),(766,2,1095,200000.00,'DR',NULL,'',NULL,1,NULL,0,0),(767,1,1081,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(767,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(768,1,1078,2468.00,'DR',NULL,'',NULL,1,NULL,0,0),(768,2,1,2468.00,'CR',NULL,'',NULL,1,NULL,0,0),(769,1,1090,1187.00,'DR',NULL,'',NULL,1,NULL,0,0),(769,2,1,1187.00,'CR',NULL,'',NULL,1,NULL,0,0),(770,1,1068,793.00,'DR',NULL,'',NULL,1,NULL,0,0),(770,2,1,793.00,'CR',NULL,'',NULL,1,NULL,0,0),(771,1,1064,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(771,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(772,1,1060,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(772,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(773,1,1064,208.00,'DR',NULL,'',NULL,1,NULL,0,0),(773,2,1,208.00,'CR',NULL,'',NULL,1,NULL,0,0),(774,1,1060,2140.00,'DR',NULL,'',NULL,1,NULL,0,0),(774,2,1,2140.00,'CR',NULL,'',NULL,1,NULL,0,0),(775,1,1053,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(775,2,1095,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(776,1,1064,1406.00,'DR',NULL,'',NULL,1,NULL,0,0),(776,2,1,1406.00,'CR',NULL,'',NULL,1,NULL,0,0),(777,1,1063,378.00,'DR',NULL,'',NULL,1,NULL,0,0),(777,2,1,378.00,'CR',NULL,'',NULL,1,NULL,0,0),(778,1,1081,375.00,'DR',NULL,'',NULL,1,NULL,0,0),(778,2,1,375.00,'CR',NULL,'',NULL,1,NULL,0,0),(779,1,1063,660.00,'DR',NULL,'',NULL,1,NULL,0,0),(779,2,1,660.00,'CR',NULL,'',NULL,1,NULL,0,0),(780,1,1064,488.00,'DR',NULL,'',NULL,1,NULL,0,0),(780,2,1,488.00,'CR',NULL,'',NULL,1,NULL,0,0),(781,1,1051,85.00,'DR',NULL,'',NULL,1,NULL,0,0),(781,2,1,85.00,'CR',NULL,'',NULL,1,NULL,0,0),(782,1,1081,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(782,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(783,1,1059,5572.00,'DR',NULL,'',NULL,1,NULL,0,0),(783,2,1,5572.00,'CR',NULL,'',NULL,1,NULL,0,0),(784,1,1063,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(784,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(785,1,1068,380.00,'DR',NULL,'',NULL,1,NULL,0,0),(785,2,1,380.00,'CR',NULL,'',NULL,1,NULL,0,0),(786,1,1064,378.00,'DR',NULL,'',NULL,1,NULL,0,0),(786,2,1,378.00,'CR',NULL,'',NULL,1,NULL,0,0),(787,1,1069,3390.00,'DR',NULL,'',NULL,1,NULL,0,0),(787,2,1,3390.00,'CR',NULL,'',NULL,1,NULL,0,0),(788,1,1083,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(788,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(789,1,1081,970.00,'DR',NULL,'',NULL,1,NULL,0,0),(789,2,1,970.00,'CR',NULL,'',NULL,1,NULL,0,0),(790,1,1084,970.00,'DR',NULL,'',NULL,1,NULL,0,0),(790,2,1,970.00,'CR',NULL,'',NULL,1,NULL,0,0),(791,1,1068,383.00,'DR',NULL,'',NULL,1,NULL,0,0),(791,2,1,383.00,'CR',NULL,'',NULL,1,NULL,0,0),(792,1,1073,685.00,'DR',NULL,'',NULL,1,NULL,0,0),(792,2,1,685.00,'CR',NULL,'',NULL,1,NULL,0,0),(793,1,1078,110.00,'DR',NULL,'',NULL,1,NULL,0,0),(793,2,1,110.00,'CR',NULL,'',NULL,1,NULL,0,0),(794,1,1083,65.00,'DR',NULL,'',NULL,1,NULL,0,0),(794,2,1,65.00,'CR',NULL,'',NULL,1,NULL,0,0),(795,1,1093,110.00,'DR',NULL,'',NULL,1,NULL,0,0),(795,2,1,110.00,'CR',NULL,'',NULL,1,NULL,0,0),(796,1,1060,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(796,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(797,1,1068,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(797,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(798,1,1058,700.00,'DR',NULL,'',NULL,1,NULL,0,0),(798,2,1,700.00,'CR',NULL,'',NULL,1,NULL,0,0),(799,1,1069,383.00,'DR',NULL,'',NULL,1,NULL,0,0),(799,2,1,383.00,'CR',NULL,'',NULL,1,NULL,0,0),(800,1,1064,210.00,'DR',NULL,'',NULL,1,NULL,0,0),(800,2,1,210.00,'CR',NULL,'',NULL,1,NULL,0,0),(801,1,1068,420.00,'DR',NULL,'',NULL,1,NULL,0,0),(801,2,1,420.00,'CR',NULL,'',NULL,1,NULL,0,0),(802,1,1069,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(802,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(803,1,1083,16.00,'DR',NULL,'',NULL,1,NULL,0,0),(803,2,1,16.00,'CR',NULL,'',NULL,1,NULL,0,0),(804,1,1068,415.00,'DR',NULL,'',NULL,1,NULL,0,0),(804,2,1,415.00,'CR',NULL,'',NULL,1,NULL,0,0),(805,1,1060,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(805,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(806,1,1052,4620.00,'DR',NULL,'',NULL,1,NULL,0,0),(806,2,1,4620.00,'CR',NULL,'',NULL,1,NULL,0,0),(807,1,1069,420.00,'DR',NULL,'',NULL,1,NULL,0,0),(807,2,1,420.00,'CR',NULL,'',NULL,1,NULL,0,0),(808,1,1068,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(808,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(809,1,1063,210.00,'DR',NULL,'',NULL,1,NULL,0,0),(809,2,1,210.00,'CR',NULL,'',NULL,1,NULL,0,0),(810,1,1093,110.00,'DR',NULL,'',NULL,1,NULL,0,0),(810,2,1,110.00,'CR',NULL,'',NULL,1,NULL,0,0),(811,1,1068,110.00,'DR',NULL,'',NULL,1,NULL,0,0),(811,2,1,110.00,'CR',NULL,'',NULL,1,NULL,0,0),(812,1,1083,65.00,'DR',NULL,'',NULL,1,NULL,0,0),(812,2,1,65.00,'CR',NULL,'',NULL,1,NULL,0,0),(813,1,1068,772.00,'DR',NULL,'',NULL,1,NULL,0,0),(813,2,1,772.00,'CR',NULL,'',NULL,1,NULL,0,0),(814,1,1073,2850.00,'DR',NULL,'',NULL,1,NULL,0,0),(814,2,1,2850.00,'CR',NULL,'',NULL,1,NULL,0,0),(815,1,1069,415.00,'DR',NULL,'',NULL,1,NULL,0,0),(815,2,1,415.00,'CR',NULL,'',NULL,1,NULL,0,0),(816,1,1078,40.00,'DR',NULL,'',NULL,1,NULL,0,0),(816,2,1,40.00,'CR',NULL,'',NULL,1,NULL,0,0),(817,1,1085,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(817,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(818,1,1061,3480.00,'DR',NULL,'',NULL,1,NULL,0,0),(818,2,1,3480.00,'CR',NULL,'',NULL,1,NULL,0,0),(819,1,1068,140.00,'DR',NULL,'',NULL,1,NULL,0,0),(819,2,1,140.00,'CR',NULL,'',NULL,1,NULL,0,0),(820,1,1084,135.00,'DR',NULL,'',NULL,1,NULL,0,0),(820,2,1,135.00,'CR',NULL,'',NULL,1,NULL,0,0),(821,1,1068,40.00,'DR',NULL,'',NULL,1,NULL,0,0),(821,2,1,40.00,'CR',NULL,'',NULL,1,NULL,0,0),(822,1,1084,350.00,'DR',NULL,'',NULL,1,NULL,0,0),(822,2,1,350.00,'CR',NULL,'',NULL,1,NULL,0,0),(823,1,1068,135.00,'DR',NULL,'',NULL,1,NULL,0,0),(823,2,1,135.00,'CR',NULL,'',NULL,1,NULL,0,0),(824,1,1085,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(824,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(825,1,1063,93.00,'DR',NULL,'',NULL,1,NULL,0,0),(825,2,1,93.00,'CR',NULL,'',NULL,1,NULL,0,0),(826,1,1069,140.00,'DR',NULL,'',NULL,1,NULL,0,0),(826,2,1,140.00,'CR',NULL,'',NULL,1,NULL,0,0),(827,1,1068,350.00,'DR',NULL,'',NULL,1,NULL,0,0),(827,2,1,350.00,'CR',NULL,'',NULL,1,NULL,0,0),(828,1,1063,90.00,'DR',NULL,'',NULL,1,NULL,0,0),(828,2,1,90.00,'CR',NULL,'',NULL,1,NULL,0,0),(829,1,1081,700.00,'DR',NULL,'',NULL,1,NULL,0,0),(829,2,1,700.00,'CR',NULL,'',NULL,1,NULL,0,0),(830,1,1078,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(830,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(831,1,1064,1400.00,'DR',NULL,'',NULL,1,NULL,0,0),(831,2,1,1400.00,'CR',NULL,'',NULL,1,NULL,0,0),(832,1,1063,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(832,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(833,1,1081,700.00,'DR',NULL,'',NULL,1,NULL,0,0),(833,2,1,700.00,'CR',NULL,'',NULL,1,NULL,0,0),(834,1,1063,1400.00,'DR',NULL,'',NULL,1,NULL,0,0),(834,2,1,1400.00,'CR',NULL,'',NULL,1,NULL,0,0),(835,1,1091,985.00,'DR',NULL,'',NULL,1,NULL,0,0),(835,2,1,985.00,'CR',NULL,'',NULL,1,NULL,0,0),(836,1,1084,700.00,'DR',NULL,'',NULL,1,NULL,0,0),(836,2,1,700.00,'CR',NULL,'',NULL,1,NULL,0,0),(837,1,1083,367.00,'DR',NULL,'',NULL,1,NULL,0,0),(837,2,1,367.00,'CR',NULL,'',NULL,1,NULL,0,0),(838,1,1063,288.00,'DR',NULL,'',NULL,1,NULL,0,0),(838,2,1,288.00,'CR',NULL,'',NULL,1,NULL,0,0),(839,1,1084,700.00,'DR',NULL,'',NULL,1,NULL,0,0),(839,2,1,700.00,'CR',NULL,'',NULL,1,NULL,0,0),(840,1,1081,350.00,'DR',NULL,'',NULL,1,NULL,0,0),(840,2,1,350.00,'CR',NULL,'',NULL,1,NULL,0,0),(841,1,1073,780.00,'DR',NULL,'',NULL,1,NULL,0,0),(841,2,1,780.00,'CR',NULL,'',NULL,1,NULL,0,0),(842,1,1084,350.00,'DR',NULL,'',NULL,1,NULL,0,0),(842,2,1,350.00,'CR',NULL,'',NULL,1,NULL,0,0),(843,1,1081,136.00,'DR',NULL,'',NULL,1,NULL,0,0),(843,2,1,136.00,'CR',NULL,'',NULL,1,NULL,0,0),(844,1,1051,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(844,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(845,1,1068,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(845,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(846,1,1084,136.00,'DR',NULL,'',NULL,1,NULL,0,0),(846,2,1,136.00,'CR',NULL,'',NULL,1,NULL,0,0),(847,1,1068,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(847,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(848,1,1063,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(848,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(849,1,1074,6000.00,'CR',NULL,'',NULL,1,NULL,0,0),(849,2,1,6000.00,'DR',NULL,'',NULL,1,NULL,0,0),(850,1,1063,60.00,'DR',NULL,'',NULL,1,NULL,0,0),(850,2,1,60.00,'CR',NULL,'',NULL,1,NULL,0,0),(851,1,1063,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(851,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(852,1,1074,12000.00,'CR',NULL,'',NULL,1,NULL,0,0),(852,2,1,12000.00,'DR',NULL,'',NULL,1,NULL,0,0),(853,1,1074,16000.00,'CR',NULL,'',NULL,1,NULL,0,0),(853,2,1,16000.00,'DR',NULL,'',NULL,1,NULL,0,0),(854,1,1068,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(854,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(855,1,1068,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(855,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(856,1,1074,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(856,2,1,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(857,1,1074,6000.00,'CR',NULL,'',NULL,1,NULL,0,0),(857,2,1,6000.00,'DR',NULL,'',NULL,1,NULL,0,0),(858,1,1080,1575.00,'CR',NULL,'',NULL,1,NULL,0,0),(858,2,1,1575.00,'DR',NULL,'',NULL,1,NULL,0,0),(859,1,1068,860.00,'DR',NULL,'',NULL,1,NULL,0,0),(859,2,1,860.00,'CR',NULL,'',NULL,1,NULL,0,0),(860,1,1074,8000.00,'CR',NULL,'',NULL,1,NULL,0,0),(860,2,1,8000.00,'DR',NULL,'',NULL,1,NULL,0,0),(861,1,1060,2406.00,'DR',NULL,'',NULL,1,NULL,0,0),(861,2,1,2406.00,'CR',NULL,'',NULL,1,NULL,0,0),(862,1,1074,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(862,2,1,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(863,1,1074,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(863,2,1,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(864,1,1076,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(864,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(865,1,1080,800.00,'CR',NULL,'',NULL,1,NULL,0,0),(865,2,1,800.00,'DR',NULL,'',NULL,1,NULL,0,0),(866,1,1068,332.00,'DR',NULL,'',NULL,1,NULL,0,0),(866,2,1,332.00,'CR',NULL,'',NULL,1,NULL,0,0),(867,1,1074,12000.00,'CR',NULL,'',NULL,1,NULL,0,0),(867,2,1,12000.00,'DR',NULL,'',NULL,1,NULL,0,0),(868,1,1074,10000.00,'CR',NULL,'',NULL,1,NULL,0,0),(868,2,1,10000.00,'DR',NULL,'',NULL,1,NULL,0,0),(869,1,1064,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(869,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(870,1,1074,20000.00,'CR',NULL,'',NULL,1,NULL,0,0),(870,2,1,20000.00,'DR',NULL,'',NULL,1,NULL,0,0),(871,1,1069,860.00,'DR',NULL,'',NULL,1,NULL,0,0),(871,2,1,860.00,'CR',NULL,'',NULL,1,NULL,0,0),(872,1,1051,160.00,'DR',NULL,'',NULL,1,NULL,0,0),(872,2,1,160.00,'CR',NULL,'',NULL,1,NULL,0,0),(873,1,1074,6000.00,'CR',NULL,'',NULL,1,NULL,0,0),(873,2,1,6000.00,'DR',NULL,'',NULL,1,NULL,0,0),(874,1,1063,2390.00,'DR',NULL,'',NULL,1,NULL,0,0),(874,2,1,2390.00,'CR',NULL,'',NULL,1,NULL,0,0),(875,1,1060,2406.00,'DR',NULL,'',NULL,1,NULL,0,0),(875,2,1,2406.00,'CR',NULL,'',NULL,1,NULL,0,0),(876,1,1074,12000.00,'CR',NULL,'',NULL,1,NULL,0,0),(876,2,1,12000.00,'DR',NULL,'',NULL,1,NULL,0,0),(877,1,1064,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(877,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(878,1,1074,6000.00,'CR',NULL,'',NULL,1,NULL,0,0),(878,2,1,6000.00,'DR',NULL,'',NULL,1,NULL,0,0),(879,1,1078,332.00,'DR',NULL,'',NULL,1,NULL,0,0),(879,2,1,332.00,'CR',NULL,'',NULL,1,NULL,0,0),(880,1,1064,130.00,'DR',NULL,'',NULL,1,NULL,0,0),(880,2,1,130.00,'CR',NULL,'',NULL,1,NULL,0,0),(881,1,1064,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(881,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(882,1,1064,337.00,'DR',NULL,'',NULL,1,NULL,0,0),(882,2,1,337.00,'CR',NULL,'',NULL,1,NULL,0,0),(883,1,1063,1080.00,'DR',NULL,'',NULL,1,NULL,0,0),(883,2,1,1080.00,'CR',NULL,'',NULL,1,NULL,0,0),(884,1,1060,837.00,'DR',NULL,'',NULL,1,NULL,0,0),(884,2,1,837.00,'CR',NULL,'',NULL,1,NULL,0,0),(885,1,1063,190.00,'DR',NULL,'',NULL,1,NULL,0,0),(885,2,1,190.00,'CR',NULL,'',NULL,1,NULL,0,0),(886,1,1089,1130.00,'DR',NULL,'',NULL,1,NULL,0,0),(886,2,1,1130.00,'CR',NULL,'',NULL,1,NULL,0,0),(887,1,1051,3000.00,'DR',NULL,'',NULL,1,NULL,0,0),(887,2,1,3000.00,'CR',NULL,'',NULL,1,NULL,0,0),(888,1,1063,440.00,'DR',NULL,'',NULL,1,NULL,0,0),(888,2,1,440.00,'CR',NULL,'',NULL,1,NULL,0,0),(889,1,1060,50.00,'DR',NULL,'',NULL,1,NULL,0,0),(889,2,1,50.00,'CR',NULL,'',NULL,1,NULL,0,0),(890,1,1079,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(890,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(891,1,1079,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(891,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(892,1,1086,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(892,2,1095,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(893,1,1091,472.00,'DR',NULL,'',NULL,1,NULL,0,0),(893,2,1,472.00,'CR',NULL,'',NULL,1,NULL,0,0),(894,1,1063,5705.00,'DR',NULL,'',NULL,1,NULL,0,0),(894,2,1,5705.00,'CR',NULL,'',NULL,1,NULL,0,0),(895,1,1063,580.00,'DR',NULL,'',NULL,1,NULL,0,0),(895,2,1,580.00,'CR',NULL,'',NULL,1,NULL,0,0),(896,1,1063,297.00,'DR',NULL,'',NULL,1,NULL,0,0),(896,2,1,297.00,'CR',NULL,'',NULL,1,NULL,0,0),(897,1,1091,385.00,'DR',NULL,'',NULL,1,NULL,0,0),(897,2,1,385.00,'CR',NULL,'',NULL,1,NULL,0,0),(898,1,1061,2080.00,'DR',NULL,'',NULL,1,NULL,0,0),(898,2,1,2080.00,'CR',NULL,'',NULL,1,NULL,0,0),(899,1,1063,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(899,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(900,1,1084,950.00,'DR',NULL,'',NULL,1,NULL,0,0),(900,2,1,950.00,'CR',NULL,'',NULL,1,NULL,0,0),(901,1,1063,1470.00,'DR',NULL,'',NULL,1,NULL,0,0),(901,2,1,1470.00,'CR',NULL,'',NULL,1,NULL,0,0),(902,1,1063,2200.00,'DR',NULL,'',NULL,1,NULL,0,0),(902,2,1,2200.00,'CR',NULL,'',NULL,1,NULL,0,0),(903,1,1063,860.00,'DR',NULL,'',NULL,1,NULL,0,0),(903,2,1,860.00,'CR',NULL,'',NULL,1,NULL,0,0),(904,1,1063,5105.00,'DR',NULL,'',NULL,1,NULL,0,0),(904,2,1,5105.00,'CR',NULL,'',NULL,1,NULL,0,0),(905,1,1069,1442.00,'DR',NULL,'',NULL,1,NULL,0,0),(905,2,1,1442.00,'CR',NULL,'',NULL,1,NULL,0,0),(906,1,1063,1120.00,'DR',NULL,'',NULL,1,NULL,0,0),(906,2,1,1120.00,'CR',NULL,'',NULL,1,NULL,0,0),(907,1,1059,2100.00,'DR',NULL,'',NULL,1,NULL,0,0),(907,2,1,2100.00,'CR',NULL,'',NULL,1,NULL,0,0),(908,1,1075,6300.00,'CR',NULL,'',NULL,1,NULL,0,0),(908,2,1,6300.00,'DR',NULL,'',NULL,1,NULL,0,0),(909,1,1061,11500.00,'DR',NULL,'',NULL,1,NULL,0,0),(909,2,1,11500.00,'CR',NULL,'',NULL,1,NULL,0,0),(910,1,1086,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(910,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(911,1,1063,942.00,'DR',NULL,'',NULL,1,NULL,0,0),(911,2,1,942.00,'CR',NULL,'',NULL,1,NULL,0,0),(912,1,1063,380.00,'DR',NULL,'',NULL,1,NULL,0,0),(912,2,1,380.00,'CR',NULL,'',NULL,1,NULL,0,0),(913,1,1063,260.00,'DR',NULL,'',NULL,1,NULL,0,0),(913,2,1,260.00,'CR',NULL,'',NULL,1,NULL,0,0),(914,1,1063,390.00,'DR',NULL,'',NULL,1,NULL,0,0),(914,2,1,390.00,'CR',NULL,'',NULL,1,NULL,0,0),(915,1,1063,96.00,'DR',NULL,'',NULL,1,NULL,0,0),(915,2,1,96.00,'CR',NULL,'',NULL,1,NULL,0,0),(916,1,1063,900.00,'DR',NULL,'',NULL,1,NULL,0,0),(916,2,1,900.00,'CR',NULL,'',NULL,1,NULL,0,0),(917,1,1063,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(917,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(918,1,1063,440.00,'DR',NULL,'',NULL,1,NULL,0,0),(918,2,1,440.00,'CR',NULL,'',NULL,1,NULL,0,0),(919,1,1063,855.00,'DR',NULL,'',NULL,1,NULL,0,0),(919,2,1,855.00,'CR',NULL,'',NULL,1,NULL,0,0),(920,1,1063,610.00,'DR',NULL,'',NULL,1,NULL,0,0),(920,2,1,610.00,'CR',NULL,'',NULL,1,NULL,0,0),(921,1,1060,30.00,'DR',NULL,'',NULL,1,NULL,0,0),(921,2,1,30.00,'CR',NULL,'',NULL,1,NULL,0,0),(922,1,1063,660.00,'DR',NULL,'',NULL,1,NULL,0,0),(922,2,1,660.00,'CR',NULL,'',NULL,1,NULL,0,0),(923,1,1063,940.00,'DR',NULL,'',NULL,1,NULL,0,0),(923,2,1,940.00,'CR',NULL,'',NULL,1,NULL,0,0),(924,1,1063,610.00,'DR',NULL,'',NULL,1,NULL,0,0),(924,2,1,610.00,'CR',NULL,'',NULL,1,NULL,0,0),(925,1,1063,680.00,'DR',NULL,'',NULL,1,NULL,0,0),(925,2,1,680.00,'CR',NULL,'',NULL,1,NULL,0,0),(926,1,1067,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(926,2,1,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(927,1,1051,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(927,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(928,1,1084,350.00,'DR',NULL,'',NULL,1,NULL,0,0),(928,2,1,350.00,'CR',NULL,'',NULL,1,NULL,0,0),(929,1,1063,260.00,'DR',NULL,'',NULL,1,NULL,0,0),(929,2,1,260.00,'CR',NULL,'',NULL,1,NULL,0,0),(930,1,1063,2930.00,'DR',NULL,'',NULL,1,NULL,0,0),(930,2,1,2930.00,'CR',NULL,'',NULL,1,NULL,0,0),(931,1,1084,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(931,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(932,1,1089,769.00,'DR',NULL,'',NULL,1,NULL,0,0),(932,2,1,769.00,'CR',NULL,'',NULL,1,NULL,0,0),(933,1,1060,7600.00,'DR',NULL,'',NULL,1,NULL,0,0),(933,2,1,7600.00,'CR',NULL,'',NULL,1,NULL,0,0),(934,1,1089,770.00,'DR',NULL,'',NULL,1,NULL,0,0),(934,2,1,770.00,'CR',NULL,'',NULL,1,NULL,0,0),(935,1,1083,108.00,'DR',NULL,'',NULL,1,NULL,0,0),(935,2,1,108.00,'CR',NULL,'',NULL,1,NULL,0,0),(936,1,1063,309.00,'DR',NULL,'',NULL,1,NULL,0,0),(936,2,1,309.00,'CR',NULL,'',NULL,1,NULL,0,0),(937,1,1063,4747.00,'DR',NULL,'',NULL,1,NULL,0,0),(937,2,1,4747.00,'CR',NULL,'',NULL,1,NULL,0,0),(938,1,1078,48.00,'DR',NULL,'',NULL,1,NULL,0,0),(938,2,1,48.00,'CR',NULL,'',NULL,1,NULL,0,0),(939,1,1063,140.00,'DR',NULL,'',NULL,1,NULL,0,0),(939,2,1,140.00,'CR',NULL,'',NULL,1,NULL,0,0),(940,1,1052,2258.00,'DR',NULL,'',NULL,1,NULL,0,0),(940,2,1,2258.00,'CR',NULL,'',NULL,1,NULL,0,0),(941,1,1083,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(941,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(942,1,1063,2100.00,'DR',NULL,'',NULL,1,NULL,0,0),(942,2,1,2100.00,'CR',NULL,'',NULL,1,NULL,0,0),(943,1,1063,3425.00,'DR',NULL,'',NULL,1,NULL,0,0),(943,2,1,3425.00,'CR',NULL,'',NULL,1,NULL,0,0),(944,1,1091,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(944,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(945,1,1063,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(945,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(946,1,1078,275.00,'DR',NULL,'',NULL,1,NULL,0,0),(946,2,1,275.00,'CR',NULL,'',NULL,1,NULL,0,0),(947,1,1056,515.00,'DR',NULL,'',NULL,1,NULL,0,0),(947,2,1,515.00,'CR',NULL,'',NULL,1,NULL,0,0),(948,1,1082,22.00,'DR',NULL,'',NULL,1,NULL,0,0),(948,2,1,22.00,'CR',NULL,'',NULL,1,NULL,0,0),(949,1,1061,820.00,'DR',NULL,'',NULL,1,NULL,0,0),(949,2,1,820.00,'CR',NULL,'',NULL,1,NULL,0,0),(950,1,1082,97.00,'DR',NULL,'',NULL,1,NULL,0,0),(950,2,1,97.00,'CR',NULL,'',NULL,1,NULL,0,0),(951,1,1058,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(951,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(952,1,1063,90.00,'DR',NULL,'',NULL,1,NULL,0,0),(952,2,1,90.00,'CR',NULL,'',NULL,1,NULL,0,0),(953,1,1078,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(953,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(954,1,1069,440.00,'DR',NULL,'',NULL,1,NULL,0,0),(954,2,1,440.00,'CR',NULL,'',NULL,1,NULL,0,0),(955,1,1078,26.00,'DR',NULL,'',NULL,1,NULL,0,0),(955,2,1,26.00,'CR',NULL,'',NULL,1,NULL,0,0),(956,1,1063,450.00,'DR',NULL,'',NULL,1,NULL,0,0),(956,2,1,450.00,'CR',NULL,'',NULL,1,NULL,0,0),(957,1,1085,3100.00,'DR',NULL,'',NULL,1,NULL,0,0),(957,2,1,3100.00,'CR',NULL,'',NULL,1,NULL,0,0),(958,1,1085,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(958,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(959,1,1078,990.00,'DR',NULL,'',NULL,1,NULL,0,0),(959,2,1,990.00,'CR',NULL,'',NULL,1,NULL,0,0),(960,1,1052,832.00,'DR',NULL,'',NULL,1,NULL,0,0),(960,2,1,832.00,'CR',NULL,'',NULL,1,NULL,0,0),(961,1,1091,410.00,'DR',NULL,'',NULL,1,NULL,0,0),(961,2,1,410.00,'CR',NULL,'',NULL,1,NULL,0,0),(962,1,1078,205.00,'DR',NULL,'',NULL,1,NULL,0,0),(962,2,1,205.00,'CR',NULL,'',NULL,1,NULL,0,0),(963,1,1085,4500.00,'DR',NULL,'',NULL,1,NULL,0,0),(963,2,1,4500.00,'CR',NULL,'',NULL,1,NULL,0,0),(964,1,1051,1251.00,'DR',NULL,'',NULL,1,NULL,0,0),(964,2,1,1251.00,'CR',NULL,'',NULL,1,NULL,0,0),(965,1,1053,16000.00,'CR',NULL,'',NULL,1,NULL,0,0),(965,2,1,16000.00,'DR',NULL,'',NULL,1,NULL,0,0),(966,1,1059,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(966,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(967,1,1085,8500.00,'DR',NULL,'',NULL,1,NULL,0,0),(967,2,1,8500.00,'CR',NULL,'',NULL,1,NULL,0,0),(968,1,1054,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(968,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(969,1,1053,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(969,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(970,1,1055,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(970,2,1,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(971,1,1051,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(971,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(972,1,1085,4000.00,'DR',NULL,'',NULL,1,NULL,0,0),(972,2,1,4000.00,'CR',NULL,'',NULL,1,NULL,0,0),(973,1,1063,886.00,'DR',NULL,'',NULL,1,NULL,0,0),(973,2,1,886.00,'CR',NULL,'',NULL,1,NULL,0,0),(974,1,1052,12700.00,'DR',NULL,'',NULL,1,NULL,0,0),(974,2,1,12700.00,'CR',NULL,'',NULL,1,NULL,0,0),(975,1,1077,7500.00,'DR',NULL,'',NULL,1,NULL,0,0),(975,2,1,7500.00,'CR',NULL,'',NULL,1,NULL,0,0),(976,1,1060,2300.00,'DR',NULL,'',NULL,1,NULL,0,0),(976,2,1,2300.00,'CR',NULL,'',NULL,1,NULL,0,0),(977,1,1069,65.00,'DR',NULL,'',NULL,1,NULL,0,0),(977,2,1,65.00,'CR',NULL,'',NULL,1,NULL,0,0),(978,1,1063,592.00,'DR',NULL,'',NULL,1,NULL,0,0),(978,2,1,592.00,'CR',NULL,'',NULL,1,NULL,0,0),(979,1,1063,7013.00,'DR',NULL,'',NULL,1,NULL,0,0),(979,2,1,7013.00,'CR',NULL,'',NULL,1,NULL,0,0),(980,1,1063,175.00,'DR',NULL,'',NULL,1,NULL,0,0),(980,2,1,175.00,'CR',NULL,'',NULL,1,NULL,0,0),(981,1,1078,93.00,'DR',NULL,'',NULL,1,NULL,0,0),(981,2,1,93.00,'CR',NULL,'',NULL,1,NULL,0,0),(982,1,1063,425.00,'DR',NULL,'',NULL,1,NULL,0,0),(982,2,1,425.00,'CR',NULL,'',NULL,1,NULL,0,0),(983,1,1061,620.00,'DR',NULL,'',NULL,1,NULL,0,0),(983,2,1,620.00,'CR',NULL,'',NULL,1,NULL,0,0),(984,1,1078,157.00,'DR',NULL,'',NULL,1,NULL,0,0),(984,2,1,157.00,'CR',NULL,'',NULL,1,NULL,0,0),(985,1,1069,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(985,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(986,1,1085,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(986,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(987,1,1093,230.00,'DR',NULL,'',NULL,1,NULL,0,0),(987,2,1,230.00,'CR',NULL,'',NULL,1,NULL,0,0),(988,1,1058,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(988,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(989,1,1069,45.00,'DR',NULL,'',NULL,1,NULL,0,0),(989,2,1,45.00,'CR',NULL,'',NULL,1,NULL,0,0),(990,1,1069,467.00,'DR',NULL,'',NULL,1,NULL,0,0),(990,2,1,467.00,'CR',NULL,'',NULL,1,NULL,0,0),(991,1,1061,250.00,'DR',NULL,'',NULL,1,NULL,0,0),(991,2,1,250.00,'CR',NULL,'',NULL,1,NULL,0,0),(992,1,1060,1600.00,'DR',NULL,'',NULL,1,NULL,0,0),(992,2,1,1600.00,'CR',NULL,'',NULL,1,NULL,0,0),(993,1,1063,135.00,'DR',NULL,'',NULL,1,NULL,0,0),(993,2,1,135.00,'CR',NULL,'',NULL,1,NULL,0,0),(994,1,1093,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(994,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(995,1,1061,4500.00,'DR',NULL,'',NULL,1,NULL,0,0),(995,2,1,4500.00,'CR',NULL,'',NULL,1,NULL,0,0),(996,1,1063,20.00,'DR',NULL,'',NULL,1,NULL,0,0),(996,2,1,20.00,'CR',NULL,'',NULL,1,NULL,0,0),(997,1,1063,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(997,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(998,1,1078,9000.00,'DR',NULL,'',NULL,1,NULL,0,0),(998,2,1,9000.00,'CR',NULL,'',NULL,1,NULL,0,0),(999,1,1091,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(999,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(1000,1,1063,749.00,'DR',NULL,'',NULL,1,NULL,0,0),(1000,2,1,749.00,'CR',NULL,'',NULL,1,NULL,0,0),(1001,1,1093,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(1001,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(1002,1,1063,115.00,'DR',NULL,'',NULL,1,NULL,0,0),(1002,2,1,115.00,'CR',NULL,'',NULL,1,NULL,0,0),(1003,1,1069,210.00,'DR',NULL,'',NULL,1,NULL,0,0),(1003,2,1,210.00,'CR',NULL,'',NULL,1,NULL,0,0),(1004,1,1063,560.00,'DR',NULL,'',NULL,1,NULL,0,0),(1004,2,1,560.00,'CR',NULL,'',NULL,1,NULL,0,0),(1005,1,1063,630.00,'DR',NULL,'',NULL,1,NULL,0,0),(1005,2,1,630.00,'CR',NULL,'',NULL,1,NULL,0,0),(1006,1,1061,3400.00,'DR',NULL,'',NULL,1,NULL,0,0),(1006,2,1,3400.00,'CR',NULL,'',NULL,1,NULL,0,0),(1007,1,1063,530.00,'DR',NULL,'',NULL,1,NULL,0,0),(1007,2,1,530.00,'CR',NULL,'',NULL,1,NULL,0,0),(1008,1,1091,180.00,'DR',NULL,'',NULL,1,NULL,0,0),(1008,2,1,180.00,'CR',NULL,'',NULL,1,NULL,0,0),(1009,1,1063,120.00,'DR',NULL,'',NULL,1,NULL,0,0),(1009,2,1,120.00,'CR',NULL,'',NULL,1,NULL,0,0),(1010,1,1052,510.00,'DR',NULL,'',NULL,1,NULL,0,0),(1010,2,1,510.00,'CR',NULL,'',NULL,1,NULL,0,0),(1011,1,1063,114.00,'DR',NULL,'',NULL,1,NULL,0,0),(1011,2,1,114.00,'CR',NULL,'',NULL,1,NULL,0,0),(1012,1,1083,434.00,'DR',NULL,'',NULL,1,NULL,0,0),(1012,2,1,434.00,'CR',NULL,'',NULL,1,NULL,0,0),(1013,1,1049,5422.00,'CR',NULL,'',NULL,1,NULL,0,0),(1013,2,1099,5422.00,'DR',NULL,'',NULL,1,NULL,0,0),(1014,1,1085,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(1014,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(1015,1,1089,135.00,'DR',NULL,'',NULL,1,NULL,0,0),(1015,2,1,135.00,'CR',NULL,'',NULL,1,NULL,0,0),(1016,1,1063,662.00,'DR',NULL,'',NULL,1,NULL,0,0),(1016,2,1,662.00,'CR',NULL,'',NULL,1,NULL,0,0),(1017,1,1063,662.00,'DR',NULL,'',NULL,1,NULL,0,0),(1017,2,1,662.00,'CR',NULL,'',NULL,1,NULL,0,0),(1018,1,1084,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(1018,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(1019,1,1060,8000.00,'DR',NULL,'',NULL,1,NULL,0,0),(1019,2,1,8000.00,'CR',NULL,'',NULL,1,NULL,0,0),(1020,1,1060,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(1020,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(1021,1,1052,1820.00,'DR',NULL,'',NULL,1,NULL,0,0),(1021,2,1,1820.00,'CR',NULL,'',NULL,1,NULL,0,0),(1022,1,1083,325.00,'DR',NULL,'',NULL,1,NULL,0,0),(1022,2,1,325.00,'CR',NULL,'',NULL,1,NULL,0,0),(1023,1,1052,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(1023,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(1024,1,1063,330.00,'DR',NULL,'',NULL,1,NULL,0,0),(1024,2,1,330.00,'CR',NULL,'',NULL,1,NULL,0,0),(1025,1,1060,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(1025,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(1026,1,1063,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(1026,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(1027,1,1056,16500.00,'DR',NULL,'',NULL,1,NULL,0,0),(1027,2,1,16500.00,'CR',NULL,'',NULL,1,NULL,0,0),(1028,1,1052,1650.00,'DR',NULL,'',NULL,1,NULL,0,0),(1028,2,1,1650.00,'CR',NULL,'',NULL,1,NULL,0,0),(1029,1,1078,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(1029,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(1030,1,1052,220.00,'DR',NULL,'',NULL,1,NULL,0,0),(1030,2,1,220.00,'CR',NULL,'',NULL,1,NULL,0,0),(1031,1,1089,769.00,'DR',NULL,'',NULL,1,NULL,0,0),(1031,2,1,769.00,'CR',NULL,'',NULL,1,NULL,0,0),(1032,1,1089,770.00,'DR',NULL,'',NULL,1,NULL,0,0),(1032,2,1,770.00,'CR',NULL,'',NULL,1,NULL,0,0),(1033,1,1063,220.00,'DR',NULL,'',NULL,1,NULL,0,0),(1033,2,1,220.00,'CR',NULL,'',NULL,1,NULL,0,0),(1034,1,1089,1089.00,'DR',NULL,'',NULL,1,NULL,0,0),(1034,2,1,1089.00,'CR',NULL,'',NULL,1,NULL,0,0),(1035,1,1078,265.00,'DR',NULL,'',NULL,1,NULL,0,0),(1035,2,1,265.00,'CR',NULL,'',NULL,1,NULL,0,0),(1036,1,1078,150.00,'DR',NULL,'',NULL,1,NULL,0,0),(1036,2,1,150.00,'CR',NULL,'',NULL,1,NULL,0,0),(1037,1,1078,195.00,'DR',NULL,'',NULL,1,NULL,0,0),(1037,2,1,195.00,'CR',NULL,'',NULL,1,NULL,0,0),(1038,1,1052,5000.00,'DR',NULL,'',NULL,1,NULL,0,0),(1038,2,1,5000.00,'CR',NULL,'',NULL,1,NULL,0,0),(1039,1,1052,960.00,'DR',NULL,'',NULL,1,NULL,0,0),(1039,2,1,960.00,'CR',NULL,'',NULL,1,NULL,0,0),(1040,1,1052,6118.00,'DR',NULL,'',NULL,1,NULL,0,0),(1040,2,1,6118.00,'CR',NULL,'',NULL,1,NULL,0,0),(1041,1,1091,690.00,'DR',NULL,'',NULL,1,NULL,0,0),(1041,2,1,690.00,'CR',NULL,'',NULL,1,NULL,0,0),(1042,1,1063,535.00,'DR',NULL,'',NULL,1,NULL,0,0),(1042,2,1,535.00,'CR',NULL,'',NULL,1,NULL,0,0),(1043,1,1091,1574.00,'DR',NULL,'',NULL,1,NULL,0,0),(1043,2,1,1574.00,'CR',NULL,'',NULL,1,NULL,0,0),(1044,1,1052,3300.00,'DR',NULL,'',NULL,1,NULL,0,0),(1044,2,1,3300.00,'CR',NULL,'',NULL,1,NULL,0,0),(1045,1,1052,800.00,'DR',NULL,'',NULL,1,NULL,0,0),(1045,2,1,800.00,'CR',NULL,'',NULL,1,NULL,0,0),(1046,1,1078,237.00,'DR',NULL,'',NULL,1,NULL,0,0),(1046,2,1,237.00,'CR',NULL,'',NULL,1,NULL,0,0),(1047,1,1063,2735.00,'DR',NULL,'',NULL,1,NULL,0,0),(1047,2,1,2735.00,'CR',NULL,'',NULL,1,NULL,0,0),(1048,1,1086,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(1048,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(1049,1,1051,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(1049,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(1050,1,1053,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(1050,2,1,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(1051,1,1053,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(1051,2,1,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(1052,1,1059,694.00,'DR',NULL,'',NULL,1,NULL,0,0),(1052,2,1,694.00,'CR',NULL,'',NULL,1,NULL,0,0),(1053,1,1053,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(1053,2,1,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(1054,1,1085,4500.00,'DR',NULL,'',NULL,1,NULL,0,0),(1054,2,1,4500.00,'CR',NULL,'',NULL,1,NULL,0,0),(1055,1,1081,1575.00,'DR',NULL,'',NULL,1,NULL,0,0),(1055,2,1,1575.00,'CR',NULL,'',NULL,1,NULL,0,0),(1056,1,1085,8500.00,'DR',NULL,'',NULL,1,NULL,0,0),(1056,2,1,8500.00,'CR',NULL,'',NULL,1,NULL,0,0),(1057,1,1087,7500.00,'DR',NULL,'',NULL,1,NULL,0,0),(1057,2,1,7500.00,'CR',NULL,'',NULL,1,NULL,0,0),(1058,1,1060,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(1058,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(1059,1,1091,320.00,'DR',NULL,'',NULL,1,NULL,0,0),(1059,2,1,320.00,'CR',NULL,'',NULL,1,NULL,0,0),(1060,1,1064,834.00,'DR',NULL,'',NULL,1,NULL,0,0),(1060,2,1,834.00,'CR',NULL,'',NULL,1,NULL,0,0),(1061,1,1060,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(1061,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(1062,1,1099,80000.00,'CR',NULL,'',NULL,1,NULL,0,0),(1062,2,1,80000.00,'DR',NULL,'',NULL,1,NULL,0,0),(1063,1,1082,22.00,'DR',NULL,'',NULL,1,NULL,0,0),(1063,2,1,22.00,'CR',NULL,'',NULL,1,NULL,0,0),(1064,1,1081,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(1064,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(1065,1,1068,750.00,'DR',NULL,'',NULL,1,NULL,0,0),(1065,2,1,750.00,'CR',NULL,'',NULL,1,NULL,0,0),(1066,1,1081,760.00,'DR',NULL,'',NULL,1,NULL,0,0),(1066,2,1,760.00,'CR',NULL,'',NULL,1,NULL,0,0),(1067,1,1070,21150.00,'DR',NULL,'',NULL,1,NULL,0,0),(1067,2,1,21150.00,'CR',NULL,'',NULL,1,NULL,0,0),(1068,1,1064,7460.00,'DR',NULL,'',NULL,1,NULL,0,0),(1068,2,1,7460.00,'CR',NULL,'',NULL,1,NULL,0,0),(1069,1,1064,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(1069,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(1070,1,1052,1040.00,'DR',NULL,'',NULL,1,NULL,0,0),(1070,2,1,1040.00,'CR',NULL,'',NULL,1,NULL,0,0),(1071,1,1081,940.00,'DR',NULL,'',NULL,1,NULL,0,0),(1071,2,1,940.00,'CR',NULL,'',NULL,1,NULL,0,0),(1072,1,1064,277.00,'DR',NULL,'',NULL,1,NULL,0,0),(1072,2,1,277.00,'CR',NULL,'',NULL,1,NULL,0,0),(1073,1,1064,619.00,'DR',NULL,'',NULL,1,NULL,0,0),(1073,2,1,619.00,'CR',NULL,'',NULL,1,NULL,0,0),(1074,1,1058,650.00,'DR',NULL,'',NULL,1,NULL,0,0),(1074,2,1,650.00,'CR',NULL,'',NULL,1,NULL,0,0),(1075,1,1060,220.00,'DR',NULL,'',NULL,1,NULL,0,0),(1075,2,1,220.00,'CR',NULL,'',NULL,1,NULL,0,0),(1076,1,1068,500.00,'DR',NULL,'',NULL,1,NULL,0,0),(1076,2,1,500.00,'CR',NULL,'',NULL,1,NULL,0,0),(1077,1,1068,80.00,'DR',NULL,'',NULL,1,NULL,0,0),(1077,2,1,80.00,'CR',NULL,'',NULL,1,NULL,0,0),(1078,1,1064,760.00,'DR',NULL,'',NULL,1,NULL,0,0),(1078,2,1,760.00,'CR',NULL,'',NULL,1,NULL,0,0),(1079,1,1064,240.00,'DR',NULL,'',NULL,1,NULL,0,0),(1079,2,1,240.00,'CR',NULL,'',NULL,1,NULL,0,0),(1080,1,1064,600.00,'DR',NULL,'',NULL,1,NULL,0,0),(1080,2,1,600.00,'CR',NULL,'',NULL,1,NULL,0,0),(1081,1,1064,2928.00,'DR',NULL,'',NULL,1,NULL,0,0),(1081,2,1,2928.00,'CR',NULL,'',NULL,1,NULL,0,0),(1082,1,1064,540.00,'DR',NULL,'',NULL,1,NULL,0,0),(1082,2,1,540.00,'CR',NULL,'',NULL,1,NULL,0,0),(1083,1,1064,710.00,'DR',NULL,'',NULL,1,NULL,0,0),(1083,2,1,710.00,'CR',NULL,'',NULL,1,NULL,0,0),(1084,1,1068,56.00,'DR',NULL,'',NULL,1,NULL,0,0),(1084,2,1,56.00,'CR',NULL,'',NULL,1,NULL,0,0),(1085,1,1060,6934.00,'DR',NULL,'',NULL,1,NULL,0,0),(1085,2,1,6934.00,'CR',NULL,'',NULL,1,NULL,0,0),(1086,1,1065,93530.00,'CR',NULL,'',NULL,1,NULL,0,0),(1086,2,1099,93530.00,'DR',NULL,'',NULL,1,NULL,0,0),(1087,1,1064,290.00,'DR',NULL,'',NULL,1,NULL,0,0),(1087,2,1,290.00,'CR',NULL,'',NULL,1,NULL,0,0),(1088,1,1064,510.00,'DR',NULL,'',NULL,1,NULL,0,0),(1088,2,1,510.00,'CR',NULL,'',NULL,1,NULL,0,0),(1089,1,1081,3700.00,'DR',NULL,'',NULL,1,NULL,0,0),(1089,2,1,3700.00,'CR',NULL,'',NULL,1,NULL,0,0),(1090,1,1060,1400.00,'DR',NULL,'',NULL,1,NULL,0,0),(1090,2,1,1400.00,'CR',NULL,'',NULL,1,NULL,0,0),(1091,1,1091,135.00,'DR',NULL,'',NULL,1,NULL,0,0),(1091,2,1,135.00,'CR',NULL,'',NULL,1,NULL,0,0),(1092,1,1091,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(1092,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(1093,1,1085,1800.00,'DR',NULL,'',NULL,1,NULL,0,0),(1093,2,1,1800.00,'CR',NULL,'',NULL,1,NULL,0,0),(1094,1,1065,648352.05,'CR',NULL,'',NULL,1,NULL,0,0),(1094,2,1099,648352.05,'DR',NULL,'',NULL,1,NULL,0,0),(1095,1,1065,280296.00,'CR',NULL,'',NULL,1,NULL,0,0),(1095,2,1099,280296.00,'DR',NULL,'',NULL,1,NULL,0,0),(1096,1,1065,323821.00,'CR',NULL,'',NULL,1,NULL,0,0),(1096,2,1099,323821.00,'DR',NULL,'',NULL,1,NULL,0,0),(1097,1,1099,50000.00,'CR',NULL,'',NULL,1,NULL,0,0),(1097,2,1,50000.00,'DR',NULL,'',NULL,1,NULL,0,0),(1098,1,1060,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(1098,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(1099,1,1064,380.00,'DR',NULL,'',NULL,1,NULL,0,0),(1099,2,1,380.00,'CR',NULL,'',NULL,1,NULL,0,0),(1100,1,1064,130.00,'DR',NULL,'',NULL,1,NULL,0,0),(1100,2,1,130.00,'CR',NULL,'',NULL,1,NULL,0,0),(1101,1,1060,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(1101,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(1102,1,1064,2923.00,'DR',NULL,'',NULL,1,NULL,0,0),(1102,2,1,2923.00,'CR',NULL,'',NULL,1,NULL,0,0),(1103,1,1060,2100.00,'DR',NULL,'',NULL,1,NULL,0,0),(1103,2,1,2100.00,'CR',NULL,'',NULL,1,NULL,0,0),(1104,1,1064,610.00,'DR',NULL,'',NULL,1,NULL,0,0),(1104,2,1,610.00,'CR',NULL,'',NULL,1,NULL,0,0),(1105,1,1091,412.00,'DR',NULL,'',NULL,1,NULL,0,0),(1105,2,1,412.00,'CR',NULL,'',NULL,1,NULL,0,0),(1106,1,1064,740.00,'DR',NULL,'',NULL,1,NULL,0,0),(1106,2,1,740.00,'CR',NULL,'',NULL,1,NULL,0,0),(1107,1,1064,740.00,'DR',NULL,'',NULL,1,NULL,0,0),(1107,2,1,740.00,'CR',NULL,'',NULL,1,NULL,0,0),(1108,1,1068,1124.00,'DR',NULL,'',NULL,1,NULL,0,0),(1108,2,1,1124.00,'CR',NULL,'',NULL,1,NULL,0,0),(1109,1,1064,970.00,'DR',NULL,'',NULL,1,NULL,0,0),(1109,2,1,970.00,'CR',NULL,'',NULL,1,NULL,0,0),(1110,1,1068,773.00,'DR',NULL,'',NULL,1,NULL,0,0),(1110,2,1,773.00,'CR',NULL,'',NULL,1,NULL,0,0),(1111,1,1064,1476.00,'DR',NULL,'',NULL,1,NULL,0,0),(1111,2,1,1476.00,'CR',NULL,'',NULL,1,NULL,0,0),(1112,1,1064,140.00,'DR',NULL,'',NULL,1,NULL,0,0),(1112,2,1,140.00,'CR',NULL,'',NULL,1,NULL,0,0),(1113,1,1085,600.00,'DR',NULL,'',NULL,1,NULL,0,0),(1113,2,1,600.00,'CR',NULL,'',NULL,1,NULL,0,0),(1114,1,1068,771.00,'DR',NULL,'',NULL,1,NULL,0,0),(1114,2,1,771.00,'CR',NULL,'',NULL,1,NULL,0,0),(1115,1,1064,290.00,'DR',NULL,'',NULL,1,NULL,0,0),(1115,2,1,290.00,'CR',NULL,'',NULL,1,NULL,0,0),(1116,1,1081,3195.00,'DR',NULL,'',NULL,1,NULL,0,0),(1116,2,1,3195.00,'CR',NULL,'',NULL,1,NULL,0,0),(1117,1,1068,490.00,'DR',NULL,'',NULL,1,NULL,0,0),(1117,2,1,490.00,'CR',NULL,'',NULL,1,NULL,0,0),(1118,1,1052,1470.00,'DR',NULL,'',NULL,1,NULL,0,0),(1118,2,1,1470.00,'CR',NULL,'',NULL,1,NULL,0,0),(1119,1,1060,1500.00,'DR',NULL,'',NULL,1,NULL,0,0),(1119,2,1,1500.00,'CR',NULL,'',NULL,1,NULL,0,0),(1120,1,1051,100.00,'DR',NULL,'',NULL,1,NULL,0,0),(1120,2,1,100.00,'CR',NULL,'',NULL,1,NULL,0,0),(1121,1,1081,400.00,'DR',NULL,'',NULL,1,NULL,0,0),(1121,2,1,400.00,'CR',NULL,'',NULL,1,NULL,0,0),(1122,1,1081,767.00,'DR',NULL,'',NULL,1,NULL,0,0),(1122,2,1,767.00,'CR',NULL,'',NULL,1,NULL,0,0),(1123,1,1064,2175.00,'DR',NULL,'',NULL,1,NULL,0,0),(1123,2,1,2175.00,'CR',NULL,'',NULL,1,NULL,0,0),(1124,1,1064,124.00,'DR',NULL,'',NULL,1,NULL,0,0),(1124,2,1,124.00,'CR',NULL,'',NULL,1,NULL,0,0),(1125,1,1064,2200.00,'DR',NULL,'',NULL,1,NULL,0,0),(1125,2,1,2200.00,'CR',NULL,'',NULL,1,NULL,0,0),(1126,1,1091,165.00,'DR',NULL,'',NULL,1,NULL,0,0),(1126,2,1,165.00,'CR',NULL,'',NULL,1,NULL,0,0),(1127,1,1068,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(1127,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(1128,1,1064,220.00,'DR',NULL,'',NULL,1,NULL,0,0),(1128,2,1,220.00,'CR',NULL,'',NULL,1,NULL,0,0),(1129,1,1064,125.00,'DR',NULL,'',NULL,1,NULL,0,0),(1129,2,1,125.00,'CR',NULL,'',NULL,1,NULL,0,0),(1130,1,1060,1000.00,'DR',NULL,'',NULL,1,NULL,0,0),(1130,2,1,1000.00,'CR',NULL,'',NULL,1,NULL,0,0),(1131,1,1064,108.00,'DR',NULL,'',NULL,1,NULL,0,0),(1131,2,1,108.00,'CR',NULL,'',NULL,1,NULL,0,0),(1132,1,1064,360.00,'DR',NULL,'',NULL,1,NULL,0,0),(1132,2,1,360.00,'CR',NULL,'',NULL,1,NULL,0,0),(1133,1,1051,200.00,'DR',NULL,'',NULL,1,NULL,0,0),(1133,2,1,200.00,'CR',NULL,'',NULL,1,NULL,0,0),(1134,1,1086,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(1134,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(1135,1,1064,350.00,'DR',NULL,'',NULL,1,NULL,0,0),(1135,2,1,350.00,'CR',NULL,'',NULL,1,NULL,0,0),(1136,1,1068,605.00,'DR',NULL,'',NULL,1,NULL,0,0),(1136,2,1,605.00,'CR',NULL,'',NULL,1,NULL,0,0),(1137,1,1064,161.00,'DR',NULL,'',NULL,1,NULL,0,0),(1137,2,1,161.00,'CR',NULL,'',NULL,1,NULL,0,0),(1138,1,1064,185.00,'DR',NULL,'',NULL,1,NULL,0,0),(1138,2,1,185.00,'CR',NULL,'',NULL,1,NULL,0,0),(1139,1,1091,240.00,'DR',NULL,'',NULL,1,NULL,0,0),(1139,2,1,240.00,'CR',NULL,'',NULL,1,NULL,0,0),(1140,1,1064,1230.00,'DR',NULL,'',NULL,1,NULL,0,0),(1140,2,1,1230.00,'CR',NULL,'',NULL,1,NULL,0,0),(1141,1,1060,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(1141,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(1142,1,1083,450.00,'DR',NULL,'',NULL,1,NULL,0,0),(1142,2,1,450.00,'CR',NULL,'',NULL,1,NULL,0,0),(1143,1,1064,900.00,'DR',NULL,'',NULL,1,NULL,0,0),(1143,2,1,900.00,'CR',NULL,'',NULL,1,NULL,0,0),(1144,1,1058,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(1144,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(1145,1,1064,510.00,'DR',NULL,'',NULL,1,NULL,0,0),(1145,2,1,510.00,'CR',NULL,'',NULL,1,NULL,0,0),(1146,1,1060,2000.00,'DR',NULL,'',NULL,1,NULL,0,0),(1146,2,1,2000.00,'CR',NULL,'',NULL,1,NULL,0,0),(1147,1,1064,470.00,'DR',NULL,'',NULL,1,NULL,0,0),(1147,2,1,470.00,'CR',NULL,'',NULL,1,NULL,0,0),(1148,1,1052,1048.00,'DR',NULL,'',NULL,1,NULL,0,0),(1148,2,1,1048.00,'CR',NULL,'',NULL,1,NULL,0,0),(1149,1,1064,230.00,'DR',NULL,'',NULL,1,NULL,0,0),(1149,2,1,230.00,'CR',NULL,'',NULL,1,NULL,0,0),(1150,1,1083,300.00,'DR',NULL,'',NULL,1,NULL,0,0),(1150,2,1,300.00,'CR',NULL,'',NULL,1,NULL,0,0),(1151,1,1064,487.00,'DR',NULL,'',NULL,1,NULL,0,0),(1151,2,1,487.00,'CR',NULL,'',NULL,1,NULL,0,0),(1152,1,1081,2500.00,'DR',NULL,'',NULL,1,NULL,0,0),(1152,2,1,2500.00,'CR',NULL,'',NULL,1,NULL,0,0),(1153,1,1081,480.00,'DR',NULL,'',NULL,1,NULL,0,0),(1153,2,1,480.00,'CR',NULL,'',NULL,1,NULL,0,0),(1154,1,1059,476.00,'DR',NULL,'',NULL,1,NULL,0,0),(1154,2,1,476.00,'CR',NULL,'',NULL,1,NULL,0,0),(1155,1,1048,7842.00,'CR',NULL,'',NULL,1,NULL,0,0),(1155,2,2,7842.00,'DR',NULL,'',NULL,1,NULL,0,0),(1156,1,1048,7842.00,'CR',NULL,'',NULL,1,NULL,0,0),(1156,2,2,7842.00,'DR',NULL,'',NULL,1,NULL,0,0);
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

-- Dump completed on 2016-04-05 16:34:21

