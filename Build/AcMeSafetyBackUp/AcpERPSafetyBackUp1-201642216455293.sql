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
INSERT INTO `accounting_year` VALUES (8,'2016-04-01 00:00:00','2017-03-31 00:00:00','2016-04-01 00:00:00',1,1);
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
-- Table structure for table `asset_item`
--

DROP TABLE IF EXISTS `asset_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_item` (
  `ITEM_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ASSET_GROUP_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DEPRECIATION_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DISPOSAL_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ACCOUNT_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CATEGORY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ITEM_KIND` varchar(10) DEFAULT NULL,
  `UNIT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `METHOD` varchar(50) NOT NULL DEFAULT '',
  `PREFIX` varchar(10) NOT NULL DEFAULT '',
  `SUFFIX` varchar(10) NOT NULL DEFAULT '',
  `STARTING_NO` int(10) unsigned NOT NULL DEFAULT '0',
  `QUANTITY` int(10) unsigned NOT NULL DEFAULT '0',
  `RATE_PER_ITEM` decimal(10,0) NOT NULL DEFAULT '0',
  `TOTAL` decimal(10,0) NOT NULL DEFAULT '0',
  `RUNNING_NUMBER` int(10) unsigned NOT NULL DEFAULT '0',
  `CUSTODIANS_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ASSET_NAME` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ITEM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_item`
--

LOCK TABLES `asset_item` WRITE;
/*!40000 ALTER TABLE `asset_item` DISABLE KEYS */;
INSERT INTO `asset_item` VALUES (1,1,276,276,1100,1,NULL,1,'','C','S',1,0,0,0,3,0,'Honda');
/*!40000 ALTER TABLE `asset_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_item_detail`
--

DROP TABLE IF EXISTS `asset_item_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_item_detail` (
  `ITEM_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ITEM_DETAIL_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ASSET_ID` varchar(50) NOT NULL DEFAULT '',
  `LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PURCHASE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SALES_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1-Active 0 -Inactive\r\n',
  `SOURCE_FLAG` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Opening Balance - 1, Purchase - 2 , Sales - 3 , Receive-4 , Disposal -5',
  `USEFUL_LIFE` decimal(5,2) NOT NULL DEFAULT '0.00',
  `SALVAGE_LIFE` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ITEM_DETAIL_ID`),
  KEY `FK_asset_item_detail_location_id` (`LOCATION_ID`),
  KEY `FK_asset_item_detail_item_id` (`ITEM_ID`),
  CONSTRAINT `FK_asset_item_detail_item_id` FOREIGN KEY (`ITEM_ID`) REFERENCES `asset_item` (`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_item_detail`
--

LOCK TABLES `asset_item_detail` WRITE;
/*!40000 ALTER TABLE `asset_item_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_item_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_stock_vendor`
--

DROP TABLE IF EXISTS `asset_stock_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_stock_vendor` (
  `VENDOR_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL DEFAULT '',
  `ADDRESS` varchar(100) DEFAULT NULL,
  `PAN_NO` varchar(10) NOT NULL DEFAULT '',
  `CONTACT_NO` varchar(15) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`VENDOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_stock_vendor`
--

LOCK TABLES `asset_stock_vendor` WRITE;
/*!40000 ALTER TABLE `asset_stock_vendor` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_stock_vendor` ENABLE KEYS */;
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
INSERT INTO `headoffice_mapped_ledger` VALUES (1045,1),(1046,2),(1047,3),(1048,4),(1049,5),(1050,6),(1051,7),(1052,8),(1053,9),(1054,10),(1055,11),(1056,12),(1057,13),(1058,14),(1059,15),(1060,16),(1061,17),(1062,18),(1063,19),(1006,20),(1064,20),(1065,21),(1066,22),(1067,23),(1068,24),(1069,25),(1070,26),(1071,27),(1072,28),(1073,29),(1074,30),(1075,31),(1076,32),(1077,33),(1078,34),(1079,35),(1080,36),(1081,37),(1082,38),(1083,39),(1084,40),(1085,41),(1086,42),(1087,43),(1088,44),(1089,45),(1090,46),(1091,47),(1092,48),(1093,49),(1094,50),(1095,51),(1096,52),(1097,53),(1098,54),(1099,55),(1100,56),(1101,57),(1102,58),(1103,59),(1104,60),(1105,61),(1106,62),(1107,63),(1108,64),(1109,65),(1110,66),(1111,67),(1112,68),(1113,69),(1114,70),(1115,71),(1116,72),(1117,73),(1118,74),(1119,75),(1120,76),(1121,77),(1122,78),(1123,79),(1124,80),(1125,81),(1126,82),(1127,83),(1128,84),(1129,85),(1130,86),(1131,87),(1132,88),(1133,89),(1134,90),(1135,91),(1136,92),(1137,93),(1138,94),(1139,95),(1140,96),(1141,97),(1142,98),(1143,99),(1144,100),(1145,101),(1146,102),(1147,103),(1148,104),(1149,105),(1150,106),(1151,107),(1152,108),(1153,109),(1154,110),(1155,111),(1156,112),(1157,113),(1158,114),(1159,115),(1160,116),(1161,117),(1162,118),(1163,119),(1164,120),(1165,121),(1166,122),(1167,123),(1168,124),(1169,125),(1170,126),(1171,127),(1172,128),(1173,129),(1174,130),(1175,131),(1176,132),(1177,133),(1178,134),(1179,135),(1180,136),(1181,137),(1182,138),(1183,139),(1184,140),(1185,141),(1186,142),(1187,143),(1188,144),(1189,145),(1190,146),(1191,147),(1192,148),(1193,149),(1194,150),(1195,151),(1196,152),(1197,153),(1198,154),(1199,155),(1200,156),(1201,157),(1202,158),(1203,159),(1204,160),(1205,161),(1206,162),(1207,163),(1208,164),(1209,165),(1210,166),(1211,167),(1212,168),(1213,169),(1214,170),(1215,171),(1216,172),(1217,173),(1218,174),(1219,175),(1220,176),(1221,177),(1222,178),(1223,179),(1224,180),(1225,181),(1226,182),(1227,183),(1228,184),(1229,185),(1230,186),(1231,187),(1232,188),(1233,189),(1234,190),(1235,191),(1236,192),(1237,193),(1238,194),(1239,195),(1240,196),(1241,197),(1242,198),(1243,199),(1244,200),(1245,201),(1246,202),(1247,203),(1248,204),(1249,205),(1250,206),(1251,207),(1252,208),(1253,209),(1254,210),(1255,211),(1256,212),(1257,213),(1258,214),(1259,215),(1260,216),(1261,217),(1262,218),(1263,219),(1264,220),(1265,221),(1266,222),(1267,223),(1268,224),(1269,225),(1270,226),(1271,227),(1272,228),(1273,229),(1274,230),(1275,231),(1276,232),(1277,233),(1278,234),(1279,235),(1280,236),(1281,237),(1282,238),(1283,239),(1284,240),(1285,241),(1286,242),(1287,243),(1288,244),(1289,245),(1290,246),(1291,247),(1292,248),(1293,249),(1003,250),(1294,250),(1295,251),(1296,252),(1297,253),(1298,254),(1299,255),(1300,256),(1301,257),(1302,258),(1303,259),(1304,260),(1305,261),(1306,262),(1307,263),(1308,264),(1309,265),(1310,266),(1311,267),(1312,268),(1313,269),(1314,270),(1315,271),(1316,272),(1317,273),(1318,274),(1319,275),(1320,276),(1321,277),(1322,278),(1323,279),(1324,280),(1325,281),(1326,282),(1327,283),(1328,284),(1329,285),(1330,286),(1331,287),(1332,288),(1333,289),(1334,290),(1335,291);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_bank`
--

LOCK TABLES `master_bank` WRITE;
/*!40000 ALTER TABLE `master_bank` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_bank_account`
--

LOCK TABLES `master_bank_account` WRITE;
/*!40000 ALTER TABLE `master_bank_account` DISABLE KEYS */;
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
INSERT INTO `master_country` VALUES (1,'India','IND',NULL,'Ã Â¤Â°',NULL),(9,'Saudi Arabia','SAU','SAR','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Saudi Riyal'),(10,'Bulgaria','BGR','BGN','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â','Bulgarian Lev'),(11,'Spain','ESP','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(12,'Taiwan','TWN','TWD','NT$','New Taiwan Dollar'),(13,'Czech Republic','CZE','CZK','KÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢','Czech Koruna'),(14,'Denmark','DNK','DKK','kr.','Danish Krone'),(15,'Germany','DEU','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(16,'Greece','GRC','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(17,'United States','USA','USD','$','US Dollar'),(18,'Finland','FIN','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(19,'France','FRA','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(20,'Israel','ISR','ILS','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Israeli New Shekel'),(21,'Hungary','HUN','HUF','Ft','Hungarian Forint'),(22,'Iceland','ISL','ISK','kr.','Icelandic Krona'),(23,'Italy','ITA','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(24,'Japan','JPN','JPY','ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€š','Japanese Yen'),(25,'Korea','KOR','KRW','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Korean Won'),(26,'Netherlands','NLD','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(27,'Norway','NOR','NOK','kr','Norwegian Krone'),(28,'Poland','POL','PLN','zÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢','Polish Zloty'),(29,'Brazil','BRA','BRL','R$','Real'),(30,'Switzerland','CHE','CHF','fr.','Swiss Franc'),(31,'Romania','ROU','RON','lei','Romanian Leu'),(32,'Russia','RUS','RUB','ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€š','Russian Ruble'),(33,'Croatia','HRV','HRK','kn','Croatian Kuna'),(34,'Slovakia','SVK','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(35,'Albania','ALB','ALL','Lek','Albanian Lek'),(36,'Sweden','SWE','SEK','kr','Swedish Krona'),(37,'Thailand','THA','THB','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ','Thai Baht'),(38,'Turkey','TUR','TRY','TL','Turkish Lira'),(39,'Islamic Republic of Pakistan','PAK','PKR','Rs','Pakistan Rupee'),(40,'Indonesia','IDN','IDR','Rp','Indonesian Rupiah'),(41,'Ukraine','UKR','UAH','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Ukrainian Grivna'),(42,'Belarus','BLR','BYR','ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€š','Belarusian Ruble'),(43,'Slovenia','SVN','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(44,'Estonia','EST','EEK','kr','Estonian Kroon'),(45,'Latvia','LVA','LVL','Ls','Latvian Lats'),(46,'Lithuania','LTU','LTL','Lt','Lithuanian Litas'),(47,'Tajikistan','TAJ','TJS','ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€š','Ruble'),(48,'Iran','IRN','IRR','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Iranian Rial'),(49,'Vietnam','VNM','VND','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Vietnamese Dong'),(50,'Armenia','ARM','AMD','ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€š','Armenian Dram'),(51,'Azerbaijan','AZE','AZN','man.','Azerbaijanian Manat'),(52,'Macedonia (FYROM)','MKD','MKD','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â','Macedonian Denar'),(53,'South Africa','ZAF','ZAR','R','South African Rand'),(54,'Georgia','GEO','GEL','Lari','Lari'),(55,'Faroe Islands','FRO','DKK','kr.','Danish Krone'),(56,'Puerto Rico','PRI','USD','$','US Dollar'),(57,'Malta','MLT','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(58,'Malaysia','MYS','MYR','RM','Malaysian Ringgit'),(59,'Kazakhstan','KAZ','KZT','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â','Tenge'),(60,'Kyrgyzstan','KGZ','KGS','ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€š','som'),(61,'Kenya','KEN','KES','S','Kenyan Shilling'),(62,'Turkmenistan','TKM','TMT','m.','Turkmen manat'),(63,'United Kingdom','GBR','GBP','ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€š','UK Pound Sterling'),(64,'Cambodia','KHM','KHR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¡','Riel'),(65,'Lao P.D.R.','LAO','LAK','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Kip'),(66,'Syria','SYR','SYP','ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â‚¬','Syrian Pound'),(67,'Sri Lanka','LKA','LKR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ','Sri Lanka Rupee'),(68,'Canada','CAN','CAD','$','Canadian Dollar'),(69,'Ethiopia','ETH','ETB','ETB','Ethiopian Birr'),(70,'Nepal','NPL','NPR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â ','Nepalese Rupees'),(71,'Afghanistan','AFG','AFN','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Afghani'),(72,'Philippines','PHL','PHP','PhP','Philippine Peso'),(73,'Maldives','MDV','MVR','ÃƒÆ’Ã†â€™Ãƒâ€¦Ã‚Â¾','Rufiyaa'),(74,'Nigeria','NGA','NIO','N','Nigerian Naira'),(75,'Bolivia','BOL','BOB','$b','Boliviano'),(76,'Luxembourg','LUX','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(77,'Greenland','GRL','DKK','kr.','Danish Krone'),(78,'New Zealand','NZL','NZD','$','New Zealand Dollar'),(79,'Guatemala','GTM','GTQ','Q','Guatemalan Quetzal'),(80,'Rwanda','RWA','RWF','RWF','Rwandan Franc'),(81,'Senegal','SEN','XOF','XOF','XOF Senegal'),(82,'Iraq','IRQ','IQD','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Iraqi Dinar'),(83,'Algeria','DZA','DZD','DZD','Algerian Dinar'),(84,'Ecuador','ECU','USD','$','US Dollar'),(85,'Egypt','EGY','EGP','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Egyptian Pound'),(86,'Hong Kong S.A.R.','HKG','HKD','HK$','Hong Kong Dollar'),(87,'Austria','AUT','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(88,'Australia','AUS','AUD','$','Australian Dollar'),(89,'Serbia and Montenegro (Former)','SCG','CSD','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â','Serbian Dinar'),(90,'Peru','PER','PEN','S/.','Peruvian Nuevo Sol'),(91,'Libya','LBY','LYD','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Libyan Dinar'),(92,'Singapore','SGP','SGD','$','Singapore Dollar'),(93,'Bosnia and Herzegovina','BIH','BAM','KM','Convertible Marks'),(94,'Macao S.A.R.','MAC','MOP','MOP','Macao Pataca'),(95,'Liechtenstein','LIE','CHF','CHF','Swiss Franc'),(96,'Costa Rica','CRI','CRC','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Costa Rican Colon'),(97,'Morocco','MAR','MAD','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Moroccan Dirham'),(98,'Ireland','IRL','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(99,'Panama','PAN','PAB','B/.','Panamanian Balboa'),(100,'Principality of Monaco','MCO','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(101,'Tunisia','TUN','TND','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Tunisian Dinar'),(102,'Dominican Republic','DOM','DOP','RD$','Dominican Peso'),(103,'Oman','OMN','OMR','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Omani Rial'),(104,'Jamaica','JAM','JMD','J$','Jamaican Dollar'),(105,'Bolivarian Republic of Venezuela','VEN','VEF','Bs. F.','Venezuelan Bolivar'),(106,'Yemen','YEM','YER','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Yemeni Rial'),(107,'Caribbean','CR','USD','$','US Dollar'),(108,'Colombia','COL','COP','$','Colombian Peso'),(109,'Serbia','SRB','RSD','Din.','Serbian Dinar'),(110,'Belize','BLZ','BZD','BZ$','Belize Dollar'),(111,'Jordan','JOR','JOD','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Jordanian Dinar'),(112,'Trinidad and Tobago','TTO','TTD','TT$','Trinidad Dollar'),(113,'Argentina','ARG','ARS','$','Argentine Peso'),(114,'Montenegro','MNE','EUR','ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢','Euro'),(115,'Lebanon','LBN','LBP','ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â‚¬','Lebanese Pound'),(116,'Zimbabwe','ZWE','ZWL','Z$','Zimbabwe Dollar'),(117,'Kuwait','KWT','KWD','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Kuwaiti Dinar'),(118,'Chile','CHL','CLP','$','Chilean Peso'),(119,'U.A.E.','ARE','AED','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','UAE Dirham'),(120,'Uruguay','URY','UYU','$U','Peso Uruguayo'),(121,'Bahrain','BHR','BHD','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Bahraini Dinar'),(122,'Paraguay','PRY','PYG','Gs','Paraguay Guarani'),(123,'Qatar','QAT','QAR','ÃƒÆ’Ã†â€™Ãƒâ€¹Ã…â€œ','Qatari Rial'),(124,'El Salvador','SLV','USD','$','US Dollar'),(125,'Honduras','HND','HNL','L.','Honduran Lempira'),(126,'Nicaragua','NIC','NIO','C$','Nicaraguan Cordoba Oro');
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
INSERT INTO `master_headoffice_ledger` VALUES (1,'10000','Tution fee',144,'GN','GN',0,0,'',0,0,0,0),(2,'10001','Admission fee',144,'GN','GN',0,0,'',0,0,0,0),(3,'10002','Establishement fees',144,'GN','GN',0,0,'',0,0,0,0),(4,'10003','Additional fee',144,'GN','GN',0,0,'',0,0,0,0),(5,'10004','Examination fee',144,'GN','GN',0,0,'',0,0,0,0),(6,'10005','Maintenance fee',144,'GN','GN',0,0,'',0,0,0,0),(7,'10006','Term fee',144,'GN','GN',0,0,'',0,0,0,0),(8,'10007','Registration fee',144,'GN','GN',0,0,'',0,0,0,0),(9,'10008','Special fee',144,'GN','GN',0,0,'',0,0,0,0),(10,'10009','Library fee',144,'GN','GN',0,0,'',0,0,0,0),(11,'10010','Laboratory fee',144,'GN','GN',0,0,'',0,0,0,0),(12,'10011','Building Fund fee',144,'GN','GN',0,0,'',0,0,0,0),(13,'10012','Psychology Fee',144,'GN','GN',0,0,'',0,0,0,0),(14,'10013','Group A fee',144,'GN','GN',0,0,'',0,0,0,0),(15,'10014','Group B fee',144,'GN','GN',0,0,'',0,0,0,0),(16,'10015','Computer fee',144,'GN','GN',0,0,'',0,0,0,0),(17,'10016','K.G. fee',144,'GN','GN',0,0,'',0,0,0,0),(18,'10017','Stationary fee',144,'GN','GN',0,0,'',0,0,0,0),(19,'10018','Bus/ Van fee',144,'GN','GN',0,0,'',0,0,0,0),(20,'10019','Administration fee',144,'GN','GN',0,0,'',0,0,0,0),(21,'10020','Retreat fee',144,'GN','GN',0,0,'',0,0,0,0),(22,'10021','Annual fee',144,'GN','GN',0,0,'',0,0,0,0),(23,'10022','Education Development Fund',144,'GN','GN',0,0,'',0,0,0,0),(24,'10023','Games Fee',144,'GN','GN',0,0,'',0,0,0,0),(25,'10024','Student Welfare Fee',144,'GN','GN',0,0,'',0,0,0,0),(26,'10025','Student Aid Fee',144,'GN','GN',0,0,'',0,0,0,0),(27,'10026','Inter Collegiate fee',144,'GN','GN',0,0,'',0,0,0,0),(28,'10027','Audio Visual fee',144,'GN','GN',0,0,'',0,0,0,0),(29,'10028','Inspection fee',144,'GN','GN',0,0,'',0,0,0,0),(30,'10029','University Affiliation fee',144,'GN','GN',0,0,'',0,0,0,0),(31,'10030','Magazine Fee',144,'GN','GN',0,0,'',0,0,0,0),(32,'10031','Founded Prize collections',144,'GN','GN',0,0,'',0,0,0,0),(33,'10032','Laboratory Development fee',144,'GN','GN',0,0,'',0,0,0,0),(34,'10033','Medical fee',144,'GN','GN',0,0,'',0,0,0,0),(35,'10034','Course fee',144,'GN','GN',0,0,'',0,0,0,0),(36,'10035','Staff Welfare fee',144,'GN','GN',0,0,'',0,0,0,0),(37,'10036','Development fee',144,'GN','GN',0,0,'',0,0,0,0),(38,'10037','Student Recognition Fee',144,'GN','GN',0,0,'',0,0,0,0),(39,'10038','Student Union Fee',144,'GN','GN',0,0,'',0,0,0,0),(40,'10039','Provisional Certificate Fee',144,'GN','GN',0,0,'',0,0,0,0),(41,'10040','Project Fee',144,'GN','GN',0,0,'',0,0,0,0),(42,'10041','Revaluation Fee',144,'GN','GN',0,0,'',0,0,0,0),(43,'10042','Processing Fees',144,'GN','GN',0,0,'',0,0,0,0),(44,'10043','University Fee',144,'GN','GN',0,0,'',0,0,0,0),(45,'10044','Convocation Fees',144,'GN','GN',0,0,'',0,0,0,0),(46,'10045','Semester Fee',144,'GN','GN',0,0,'',0,0,0,0),(47,'10046','House Exam Fee',144,'GN','GN',0,0,'',0,0,0,0),(48,'10047','Application/Prospectus Fee',144,'GN','GN',0,0,'',0,0,0,0),(49,'10048','Private Candidates Fee Collection',144,'GN','GN',0,0,'',0,0,0,0),(50,'10049','PTA Fees',144,'GN','GN',0,0,'',0,0,0,0),(51,'10050','Condonation Fee',144,'GN','GN',0,0,'',0,0,0,0),(52,'10051','Boarding Fee/ Hostel Fee /Mess Fee',144,'GN','GN',0,0,'',0,0,0,0),(53,'10052','Consultation Fee',144,'GN','GN',0,0,'',0,0,0,0),(54,'10053','Noviciate Maintainance Fee',144,'GN','GN',0,0,'',0,0,0,0),(55,'10054','Other Fee Collections',144,'GN','GN',0,0,'',0,0,0,0),(56,'10101','Hospital/Dispensary Income',145,'GN','GN',0,0,'',0,0,0,0),(57,'10102','Out Patients Collections',145,'GN','GN',0,0,'',0,0,0,0),(58,'10103','In Patients Collections',145,'GN','GN',0,0,'',0,0,0,0),(59,'10104','Pharmacy Income/Sale of Medicine',145,'GN','GN',0,0,'',0,0,0,0),(60,'10105','Laboratory/X ray / Scanning Income',145,'GN','GN',0,0,'',0,0,0,0),(61,'10106','Commission from Book Seller',145,'GN','GN',0,0,'',0,0,0,0),(62,'10107','Miscelleneous Income',145,'GN','GN',0,0,'',0,0,0,0),(63,'10108','Sale of Vehicle / Sale of other fixed Assets',145,'GN','GN',0,0,'',0,0,0,0),(64,'10109','Income from Fixed Assets',145,'GN','GN',0,0,'',0,0,0,0),(65,'10110','Sale of Ties /Badges/belts/bags/books/uniform',145,'GN','GN',0,0,'',0,0,0,0),(66,'10111','sale of scraps/ papers',145,'GN','GN',0,0,'',0,0,0,0),(67,'10112','Fine',145,'GN','GN',0,0,'',0,0,0,0),(68,'10113','Student Fund',145,'GN','GN',0,0,'',0,0,0,0),(69,'10114','Educational Income',145,'GN','GN',0,0,'',0,0,0,0),(70,'10115','Income from Picnic/Excursion',145,'GN','GN',0,0,'',0,0,0,0),(71,'10116','Breakage/ Deposits/Bonafide/phone calls/sale of other items',145,'GN','GN',0,0,'',0,0,0,0),(72,'10117','Other Collections',145,'GN','GN',0,0,'',0,0,0,0),(73,'10118','Inmate Pension',145,'GN','GN',0,0,'',0,0,0,0),(74,'10119','Gate Pass/ Security Deposit',145,'GN','GN',0,0,'',0,0,0,0),(75,'10201','Sisters Salaries / Remuneration/Honororium',146,'GN','GN',0,0,'',0,0,0,0),(76,'10202','Sisters Pension/ Arrears / Gratuity /EPF/Other benefits',146,'GN','GN',0,0,'',0,0,0,0),(77,'10203','Donations for sisters',146,'GN','GN',0,0,'',0,0,0,0),(78,'10204','Dowry',146,'GN','GN',0,0,'',0,0,0,0),(79,'10205','Gifts and Awards to Members',146,'GN','GN',0,0,'',0,0,0,0),(80,'10206','Scholarship for Sisters',146,'GN','GN',0,0,'',0,0,0,0),(81,'10207','Sisters bank A/c closed',146,'GN','GN',0,0,'',0,0,0,0),(82,'10301','Agricultural Income',147,'GN','GN',0,0,'',0,0,0,0),(83,'10302','Income from Livestock',147,'GN','GN',0,0,'',0,0,0,0),(84,'10303','Land Compensation Received',147,'GN','GN',0,0,'',0,0,0,0),(85,'10304','Rent from Rooms/Canteens/ Vending Machine',147,'GN','GN',0,0,'',0,0,0,0),(86,'10305','Land Lease Income',147,'GN','GN',0,0,'',0,0,0,0),(87,'10401','Interest from Savings bank A/c',148,'GN','GN',0,0,'',0,0,0,0),(88,'10402','Interest on Fixed/ Term  Deposits',148,'GN','GN',0,0,'',0,0,0,0),(89,'10403','Interest from Mutual Funds',148,'GN','GN',0,0,'',0,0,0,0),(90,'10404','Interest received from Income tax / Refund from IT dept',148,'GN','GN',0,0,'',0,0,0,0),(91,'10501','Grant -in-Aid / Aid from Govt',149,'GN','GN',0,0,'',0,0,0,0),(92,'10502','Autonomy Grant',149,'GN','GN',0,0,'',0,0,0,0),(93,'10503','UGC  Grant',149,'GN','GN',0,0,'',0,0,0,0),(94,'10504','Deduction Grant',149,'GN','GN',0,0,'',0,0,0,0),(95,'10505','Scholarships',149,'GN','GN',0,0,'',0,0,0,0),(96,'20000','Salaries & Allowances of Teaching Staff',150,'GN','GN',0,0,'',0,0,0,0),(97,'20001','Salaries & Allowances of Non-Teaching Staff',150,'GN','GN',0,0,'',0,0,0,0),(98,'20002','Salaries of Contingent Staff',150,'GN','GN',0,0,'',0,0,0,0),(99,'20003','Salaries of Domestic Servants',150,'GN','GN',0,0,'',0,0,0,0),(100,'20004','Remuneration/ Honororium',150,'GN','GN',0,0,'',0,0,0,0),(101,'20005','Salaries of  Doctors/ Nurses /Para medical',150,'GN','GN',0,0,'',0,0,0,0),(102,'20006','Salaries of Part-time staff/ Substitute staff',150,'GN','GN',0,0,'',0,0,0,0),(103,'20007','Pensions to staff',150,'GN','GN',0,0,'',0,0,0,0),(104,'20008','Contribution to LIC Gratuity Scheme',150,'GN','GN',0,0,'',0,0,0,0),(105,'20009','Gratuity to staff',150,'GN','GN',0,0,'',0,0,0,0),(106,'20010','EPF/ESI Management share',150,'GN','GN',0,0,'',0,0,0,0),(107,'20011','EPF /ESI administrative charges',150,'GN','GN',0,0,'',0,0,0,0),(108,'20012','wages',150,'GN','GN',0,0,'',0,0,0,0),(109,'20013','Staff Welfare expenses',150,'GN','GN',0,0,'',0,0,0,0),(110,'20101','Printing and Stationary',151,'GN','GN',0,0,'',0,0,0,0),(111,'20102','Telephone Charges',151,'GN','GN',0,0,'',0,0,0,0),(112,'20103','Postage',151,'GN','GN',0,0,'',0,0,0,0),(113,'20104','Electricity  Charges',151,'GN','GN',0,0,'',0,0,0,0),(114,'20105','Muncipal /Property Taxes',151,'GN','GN',0,0,'',0,0,0,0),(115,'20106','Rent paid',151,'GN','GN',0,0,'',0,0,0,0),(116,'20107','News papers and Periodicals',151,'GN','GN',0,0,'',0,0,0,0),(117,'20108','Advertisement',151,'GN','GN',0,0,'',0,0,0,0),(118,'20109','Legal charges',151,'GN','GN',0,0,'',0,0,0,0),(119,'20110','Office Expenses',151,'GN','GN',0,0,'',0,0,0,0),(120,'20111','Professional  / Consultancy Charges',151,'GN','GN',0,0,'',0,0,0,0),(121,'20112','Transportation Charges',151,'GN','GN',0,0,'',0,0,0,0),(122,'20113','Water Charges',151,'GN','GN',0,0,'',0,0,0,0),(123,'20114','Internet Charges',151,'GN','GN',0,0,'',0,0,0,0),(124,'20115','Interview Expenses',151,'GN','GN',0,0,'',0,0,0,0),(125,'20116','Hiring Charges',151,'GN','GN',0,0,'',0,0,0,0),(126,'20117','Bank Charges',151,'GN','GN',0,0,'',0,0,0,0),(127,'20118','Miscellaneous Expenses',151,'GN','GN',0,0,'',0,0,0,0),(128,'20119','Auditors Fee',151,'GN','GN',0,0,'',0,0,0,0),(129,'20120','Contingency',151,'GN','GN',0,0,'',0,0,0,0),(130,'20121','Secretarial Assistence',151,'GN','GN',0,0,'',0,0,0,0),(131,'20201','Laboratory and Science Expenses',152,'GN','GN',0,0,'',0,0,0,0),(132,'20202','Audio Visual Expenses',152,'GN','GN',0,0,'',0,0,0,0),(133,'20203','Games and Sports Expenses',152,'GN','GN',0,0,'',0,0,0,0),(134,'20204','Library expenses',152,'GN','GN',0,0,'',0,0,0,0),(135,'20205','Result Processing fee',152,'GN','GN',0,0,'',0,0,0,0),(136,'20206','Convocation /Graduation  Expenses',152,'GN','GN',0,0,'',0,0,0,0),(137,'20207','Educational expenses',152,'GN','GN',0,0,'',0,0,0,0),(138,'20208','Software updating expenses',152,'GN','GN',0,0,'',0,0,0,0),(139,'20209','Paper Valuation/ Paper setting',152,'GN','GN',0,0,'',0,0,0,0),(140,'20210','Invigilation',152,'GN','GN',0,0,'',0,0,0,0),(141,'20211','Practical Exam Remuneration',152,'GN','GN',0,0,'',0,0,0,0),(142,'20212','Scholarship',152,'GN','GN',0,0,'',0,0,0,0),(143,'20301','Donation given',153,'GN','GN',0,0,'',0,0,0,0),(144,'20302','Donation  to other Societies',153,'GN','GN',0,0,'',0,0,0,0),(145,'20401','Contribution to Dioceses /Ecclesiastical Organisations',154,'GN','GN',0,0,'',0,0,0,0),(146,'20402','Contribution to Others',154,'GN','GN',0,0,'',0,0,0,0),(147,'20403','Contribution to C.R.I.',154,'GN','GN',0,0,'',0,0,0,0),(148,'20404','Contribution to Noviciate',154,'GN','GN',0,0,'',0,0,0,0),(149,'20405','Contribution to communities',154,'GN','GN',0,0,'',0,0,0,0),(150,'20406','Contribution to the Province',154,'GN','GN',0,0,'',0,0,0,0),(151,'20407','Contribution to the Institute',154,'GN','GN',0,0,'',0,0,0,0),(152,'20408','Contribution to other Provinces',154,'GN','GN',0,0,'',0,0,0,0),(153,'20501','charity to the poor',155,'GN','GN',0,0,'',0,0,0,0),(154,'20502','Charity to the poor students',155,'GN','GN',0,0,'',0,0,0,0),(155,'20503','Sponsorship Aid to seminarians & Priests',155,'GN','GN',0,0,'',0,0,0,0),(156,'20504','Sponsorship Aid to poor children',155,'GN','GN',0,0,'',0,0,0,0),(157,'20505','Gifts and charity',155,'GN','GN',0,0,'',0,0,0,0),(158,'20506','Solidarity Fund for the poor',155,'GN','GN',0,0,'',0,0,0,0),(159,'20551','Foreign Travel',156,'GN','GN',0,0,'',0,0,0,0),(160,'20552','Travelling Allowance',156,'GN','GN',0,0,'',0,0,0,0),(161,'20553','Travelling & Conveyance',156,'GN','GN',0,0,'',0,0,0,0),(162,'20554','Local Conveyance',156,'GN','GN',0,0,'',0,0,0,0),(163,'20555','Daily Allowance ( D A )',156,'GN','GN',0,0,'',0,0,0,0),(164,'20556','Home Visit & Holiday Camp expenses',156,'GN','GN',0,0,'',0,0,0,0),(165,'20557','Parking fee / Toll Fee',156,'GN','GN',0,0,'',0,0,0,0),(166,'20558','Cancellation Charges',156,'GN','GN',0,0,'',0,0,0,0),(167,'20559','Diesel / Petrol Charges',156,'GN','GN',0,0,'',0,0,0,0),(168,'20601','Maintanance of Convent',157,'GN','GN',0,0,'',0,0,0,0),(169,'20602','Maintanance of sisters',157,'GN','GN',0,0,'',0,0,0,0),(170,'20603','Expenses of Missionary sisters',157,'GN','GN',0,0,'',0,0,0,0),(171,'20604','Expenses of Sisters of other communities/ other province',157,'GN','GN',0,0,'',0,0,0,0),(172,'20605','Laundry expenses',157,'GN','GN',0,0,'',0,0,0,0),(173,'20606','Secularization expenses',157,'GN','GN',0,0,'',0,0,0,0),(174,'20607','Kitchen maintanance',157,'GN','GN',0,0,'',0,0,0,0),(175,'20608','Garden upkeep',157,'GN','GN',0,0,'',0,0,0,0),(176,'20609','Furnishing of new communities',157,'GN','GN',0,0,'',0,0,0,0),(177,'20610','Food / Provision',157,'GN','GN',0,0,'',0,0,0,0),(178,'20611','Rice / Paddy',157,'GN','GN',0,0,'',0,0,0,0),(179,'20612','Fuel, gas & Combastibles',157,'GN','GN',0,0,'',0,0,0,0),(180,'20613','Clothing / Footwear',157,'GN','GN',0,0,'',0,0,0,0),(181,'20614','Refreshments/ Snacks',157,'GN','GN',0,0,'',0,0,0,0),(182,'20615','Cleanness & Hygien',157,'GN','GN',0,0,'',0,0,0,0),(183,'20616','Medical expenses',157,'GN','GN',0,0,'',0,0,0,0),(184,'20617','Expenses on Functions',157,'GN','GN',0,0,'',0,0,0,0),(185,'20618','Expenses on Excursions and Picnics',157,'GN','GN',0,0,'',0,0,0,0),(186,'20619','Gifts and Prizes Distributed',157,'GN','GN',0,0,'',0,0,0,0),(187,'20620','Retreats/ Seminars/ Courses',157,'GN','GN',0,0,'',0,0,0,0),(188,'20621','Formation expenses for sisters',157,'GN','GN',0,0,'',0,0,0,0),(189,'20622','Sign of Unity',157,'GN','GN',0,0,'',0,0,0,0),(190,'20623','Worship-Suffagges-Chaplains-Preachers',157,'GN','GN',0,0,'',0,0,0,0),(191,'20624','Funeral expenses',157,'GN','GN',0,0,'',0,0,0,0),(192,'20625','Religious Expenses',157,'GN','GN',0,0,'',0,0,0,0),(193,'20626','Provincial Chapter Consultation Expenses',157,'GN','GN',0,0,'',0,0,0,0),(194,'20651','Repairs and Maintanance of Buildings',158,'GN','GN',0,0,'',0,0,0,0),(195,'20652','Repairs & Maintenance of Machinery',158,'GN','GN',0,0,'',0,0,0,0),(196,'20653','Repairs & Maintenance of Computer',158,'GN','GN',0,0,'',0,0,0,0),(197,'20654','Repairs & M of Electrical & Electronic Equipments',158,'GN','GN',0,0,'',0,0,0,0),(198,'20655','Repairs & Maintenance of Furniture',158,'GN','GN',0,0,'',0,0,0,0),(199,'20656','Repairs & Maintenance of Generator',158,'GN','GN',0,0,'',0,0,0,0),(200,'20657','Repairs & Maintenance of Lift',158,'GN','GN',0,0,'',0,0,0,0),(201,'20658','Repairs & Maintenance of Other Assets',158,'GN','GN',0,0,'',0,0,0,0),(202,'20659','Maintanance of Vehicle (Salary)',158,'GN','GN',0,0,'',0,0,0,0),(203,'20660','Repairs & Maintenance of Borewell',158,'GN','GN',0,0,'',0,0,0,0),(204,'20661','Renovation of the building',158,'GN','GN',0,0,'',0,0,0,0),(205,'20662','Repairs of Vehicle',158,'GN','GN',0,0,'',0,0,0,0),(206,'20663','Vehicle Insurance',158,'GN','GN',0,0,'',0,0,0,0),(207,'20664','Museum Renovation',158,'GN','GN',0,0,'',0,0,0,0),(208,'20701','Land',18,'GN','GN',0,0,'',0,0,0,0),(209,'20702','Buildings',18,'GN','GN',0,0,'',0,0,0,0),(210,'20703','Land and Buildings',18,'GN','GN',0,0,'',0,0,0,0),(211,'20704','vehicle',18,'GN','GN',0,0,'',0,0,0,0),(212,'20705','Furniture,Fixture and Equipment',18,'GN','GN',0,0,'',0,0,0,0),(213,'20706','Electrical and Electronic Equipments',18,'GN','GN',0,0,'',0,0,0,0),(214,'20707','Offiice Equipment',18,'GN','GN',0,0,'',0,0,0,0),(215,'20708','Domestic Equipment',18,'GN','GN',0,0,'',0,0,0,0),(216,'20709','Lab Equipment',18,'GN','GN',0,0,'',0,0,0,0),(217,'20710','Hospital Equipment',18,'GN','GN',0,0,'',0,0,0,0),(218,'20711','Musical instruments',18,'GN','GN',0,0,'',0,0,0,0),(219,'20712','Generator',18,'GN','GN',0,0,'',0,0,0,0),(220,'20713','Inverter',18,'GN','GN',0,0,'',0,0,0,0),(221,'20714','Building construction Expenditure',18,'GN','GN',0,0,'',0,0,0,0),(222,'20715','Solar light',18,'GN','GN',0,0,'',0,0,0,0),(223,'20716','Eletronic Gadgets',18,'GN','GN',0,0,'',0,0,0,0),(224,'20717','Religious articles',18,'GN','GN',0,0,'',0,0,0,0),(225,'20718','Borewell',18,'GN','GN',0,0,'',0,0,0,0),(226,'20801','Candidates maintanance',8,'GN','GN',0,0,'',0,0,0,0),(227,'20802','Tertians Maintenance',8,'GN','GN',0,0,'',0,0,0,0),(228,'20803','Agricultural Expenses',8,'GN','GN',0,0,'',0,0,0,0),(229,'20804','Garden expenses',8,'GN','GN',0,0,'',0,0,0,0),(230,'20805','Hospital Maintanance',8,'GN','GN',0,0,'',0,0,0,0),(231,'20806','School Maintanances',8,'GN','GN',0,0,'',0,0,0,0),(232,'20807','College Maintanances',8,'GN','GN',0,0,'',0,0,0,0),(233,'20808','Free Clinic Expenses',8,'GN','GN',0,0,'',0,0,0,0),(234,'20809','Dispensory expenses',8,'GN','GN',0,0,'',0,0,0,0),(235,'20810','Village Development/ Health Programme',8,'GN','GN',0,0,'',0,0,0,0),(236,'20811','Dairy /Pet & domestic animal Expenses',8,'GN','GN',0,0,'',0,0,0,0),(237,'20812','Poultry Expenses',8,'GN','GN',0,0,'',0,0,0,0),(238,'20813','Purchase of Books, Magazines and Articles',8,'GN','GN',0,0,'',0,0,0,0),(239,'20814','Purchase of Uniforms/ materials',8,'GN','GN',0,0,'',0,0,0,0),(240,'20815','Packing Material',8,'GN','GN',0,0,'',0,0,0,0),(241,'20816','Land Development Expenses',8,'GN','GN',0,0,'',0,0,0,0),(242,'20817','Building Material',8,'GN','GN',0,0,'',0,0,0,0),(243,'20818','Supervisors Charges',8,'GN','GN',0,0,'',0,0,0,0),(244,'20819','Inter -Statement Transfer',8,'GN','GN',0,0,'',0,0,0,0),(245,'20751','EPF.Recovery/Payment',23,'GN','GN',0,0,'',0,0,0,0),(246,'20752','Professional Tax Recovery/Payment',23,'GN','GN',0,0,'',0,0,0,0),(247,'20753','E.S.I.Recovery/Payments',23,'GN','GN',0,1,'',0,0,0,0),(248,'20754','Group Insurance recoveries/payments',23,'GN','GN',0,0,'',0,0,0,0),(249,'20755','TDS recoveries / Payments',23,'GN','GN',0,0,'',0,0,0,0),(250,'20756','Advance Tax (TDS on Interest)',23,'GN','GN',0,0,'',0,0,0,0),(251,'20757','Income Tax',23,'GN','GN',0,0,'',0,0,0,0),(252,'20758','Mediclaim Insurance policy Payments / Recoveries',23,'GN','GN',0,0,'',0,0,0,0),(253,'20759','Staff Loan Recovery/Payment',23,'GN','GN',0,0,'',0,0,0,0),(254,'20760','Remittance to Govt / University /Board',23,'GN','GN',0,0,'',0,0,0,0),(255,'20761','Registration on land',23,'GN','GN',0,0,'',0,0,0,0),(256,'','Gruppo di Fraternita',111,'GN','GN',0,0,'',0,0,0,0),(257,'','APIBIMI',111,'GN','GN',0,0,'',0,0,0,0),(258,'','One di Fonte',111,'GN','GN',0,0,'',0,0,0,0),(259,'','Sales Force Sponsorship',111,'GN','GN',0,0,'',0,0,0,0),(260,'','Guntur Project',111,'GN','GN',0,0,'',0,0,0,0),(261,'','Prison Ministry Project',111,'GN','GN',0,0,'',0,0,0,0),(262,'','Project for Seminarians & Priests',111,'GN','GN',0,0,'',0,0,0,0),(263,'','Sponsorship for Poor Children',111,'GN','GN',0,0,'',0,0,0,0),(264,'','Other Projects',111,'GN','GN',0,0,'',0,0,0,0),(265,'','Placement',152,'GN','GN',0,0,'',0,0,0,0),(266,'','DSS',150,'GN','GN',0,0,'',0,0,0,0),(267,'10185','Convent Maintanance',8,'GN','GN',0,0,'',0,0,0,0),(268,'10063','Donations',5,'GN','GN',0,0,'',0,0,0,0),(269,'10166','Educational Expeness',8,'GN','GN',0,0,'',0,0,0,0),(270,'10149','Home Visit & Hoilday Camp Expenses',8,'GN','GN',0,0,'',0,0,0,0),(271,'10065','Interest on Savings Account',5,'GN','GN',0,0,'',0,0,0,0),(272,'10157','R & M of Electrical & Electronic Equipments',8,'GN','GN',0,0,'',0,0,0,0),(273,'10090','Salaries & Allowances',8,'GN','GN',0,0,'',0,0,0,0),(274,'10146','Travelling and Conveyance',8,'GN','GN',0,0,'',0,0,0,0),(275,'','Gym',152,'GN','GN',0,0,'',0,0,0,0),(276,'','Opening of Account',8,'GN','GN',0,0,'',0,0,0,0),(277,'','Sanitary expenses',8,'GN','GN',0,0,'',0,0,0,0),(278,'','Boarding expenses/ Mess expenses',8,'GN','GN',0,0,'',0,0,0,0),(279,'','ESI Recovery /Payment',23,'GN','GN',0,1,'',0,0,0,0),(280,'','Laboratory Deposit',144,'GN','GN',0,1,'',0,0,0,0),(281,'','Library Deposit',144,'GN','GN',0,0,'',0,0,0,0),(282,'10064','Contributions Received',5,'GN','GN',0,0,'',0,0,0,0),(283,'10186','Crokery / Utensils',8,'GN','GN',0,0,'',0,0,0,0),(284,'10197','Purchase of Books and Articles',8,'GN','GN',0,0,'',0,0,0,0),(285,'10155','R & M of Machinery',8,'GN','GN',0,0,'',0,0,0,0),(286,'','Subsidy',110,'GN','GN',0,1,'',0,0,0,0),(287,'','Hospitality',8,'GN','GN',0,1,'',0,0,0,0),(288,'','Vocation Promotion',8,'GN','GN',0,1,'',0,0,0,0),(289,'','Fixed Deposit / Term Deposit opened',21,'GN','GN',0,1,'',0,0,0,0),(290,'','Fixed/ term Deposit closed',21,'GN','GN',0,1,'',0,0,0,0),(291,'','New A/c opened',8,'GN','GN',0,0,'',0,0,0,0);
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
INSERT INTO `master_insti_perference` VALUES (1,NULL,'Sisters of Charity ,Secunderabad Province Society','','','Hyderabad',NULL,1,'','','','','','KAM/240/K/74','2016-04-22 00:00:00','','2016-04-22 00:00:00','','','','','3',3,'','','','2016-04-22 00:00:00','',0,0);
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
  `IS_SUBSIDY_LEDGER` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`LEDGER_ID`),
  UNIQUE KEY `LEDGER_NAME` (`LEDGER_NAME`) USING HASH,
  KEY `FK_master_bank_account_id` (`BANK_ACCOUNT_ID`),
  KEY `UNQ_LEDGER` (`LEDGER_NAME`) USING BTREE,
  KEY `FK_master_ledger_group_id` (`GROUP_ID`),
  CONSTRAINT `FK_master_ledger_group_id` FOREIGN KEY (`GROUP_ID`) REFERENCES `master_ledger_group` (`GROUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1336 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_ledger`
--

LOCK TABLES `master_ledger` WRITE;
/*!40000 ALTER TABLE `master_ledger` DISABLE KEYS */;
INSERT INTO `master_ledger` VALUES (1,'CS911','Cash',13,'GN','GN',0,0,0,'',0,1,0,2,0,0,0,0,0,0,0),(2,'FD912','Fixed Deposit',14,'GN','FD',0,0,0,'',0,2,0,2,0,0,0,0,0,0,0),(3,'CF913','Capital Fund',21,'GN','GN',0,0,0,'',0,3,0,2,0,0,0,0,0,0,0),(1001,'1001','Staff Loan',11,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1002,'1002','Interest on Staff Loan',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1003,'FA001','Fixed Asset Ledger',11,'GN','GN',0,0,0,'',0,2,0,0,0,0,0,0,0,0,0),(1004,'G001','Gain Ledger',5,'GN','GN',0,0,0,'',0,2,0,0,0,0,0,1,0,0,0),(1005,'L001','Loss Ledger',8,'GN','GN',0,0,0,'',0,2,0,0,0,0,0,0,1,0,0),(1006,'IK001','In-Kind Ledger',5,'GN','GN',0,0,0,'',0,2,0,0,0,1,0,0,0,0,0),(1008,'DI001','Disposal Ledger',8,'GN','GN',0,0,0,'',0,2,0,0,0,0,0,0,0,1,0),(1045,'10000','Tution fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1046,'10001','Admission fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1047,'10002','Establishement fees',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1048,'10003','Additional fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1049,'10004','Examination fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1050,'10005','Maintenance fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1051,'10006','Term fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1052,'10007','Registration fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1053,'10008','Special fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1054,'10009','Library fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1055,'10010','Laboratory fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1056,'10011','Building Fund fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1057,'10012','Psychology Fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1058,'10013','Group A fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1059,'10014','Group B fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1060,'10015','Computer fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1061,'10016','K.G. fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1062,'10017','Stationary fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1063,'10018','Bus/ Van fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1064,'10019','Administration fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1065,'10020','Retreat fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1066,'10021','Annual fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1067,'10022','Education Development Fund',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1068,'10023','Games Fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1069,'10024','Student Welfare Fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1070,'10025','Student Aid Fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1071,'10026','Inter Collegiate fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1072,'10027','Audio Visual fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1073,'10028','Inspection fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1074,'10029','University Affiliation fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1075,'10030','Magazine Fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1076,'10031','Founded Prize collections',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1077,'10032','Laboratory Development fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1078,'10033','Medical fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1079,'10034','Course fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1080,'10035','Staff Welfare fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1081,'10036','Development fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1082,'10037','Student Recognition Fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1083,'10038','Student Union Fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1084,'10039','Provisional Certificate Fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1085,'10040','Project Fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1086,'10041','Revaluation Fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1087,'10042','Processing Fees',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1088,'10043','University Fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1089,'10044','Convocation Fees',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1090,'10045','Semester Fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1091,'10046','House Exam Fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1092,'10047','Application/Prospectus Fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1093,'10048','Private Candidates Fee Collection',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1094,'10049','PTA Fees',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1095,'10050','Condonation Fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1096,'10051','Boarding Fee/ Hostel Fee /Mess Fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1097,'10052','Consultation Fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1098,'10053','Noviciate Maintainance Fee',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1099,'10054','Other Fee Collections',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1100,'10101','Hospital/Dispensary Income',145,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1101,'10102','Out Patients Collections',145,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1102,'10103','In Patients Collections',145,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1103,'10104','Pharmacy Income/Sale of Medicine',145,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1104,'10105','Laboratory/X ray / Scanning Income',145,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1105,'10106','Commission from Book Seller',145,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1106,'10107','Miscelleneous Income',145,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1107,'10108','Sale of Vehicle / Sale of other fixed Assets',145,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1108,'10109','Income from Fixed Assets',145,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1109,'10110','Sale of Ties /Badges/belts/bags/books/uniform',145,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1110,'10111','sale of scraps/ papers',145,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1111,'10112','Fine',145,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1112,'10113','Student Fund',145,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1113,'10114','Educational Income',145,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1114,'10115','Income from Picnic/Excursion',145,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1115,'10116','Breakage/ Deposits/Bonafide/phone calls/sale of other items',145,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1116,'10117','Other Collections',145,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1117,'10118','Inmate Pension',145,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1118,'10119','Gate Pass/ Security Deposit',145,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1119,'10201','Sisters Salaries / Remuneration/Honororium',146,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1120,'10202','Sisters Pension/ Arrears / Gratuity /EPF/Other benefits',146,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1121,'10203','Donations for sisters',146,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1122,'10204','Dowry',146,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1123,'10205','Gifts and Awards to Members',146,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1124,'10206','Scholarship for Sisters',146,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1125,'10207','Sisters bank A/c closed',146,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1126,'10301','Agricultural Income',147,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1127,'10302','Income from Livestock',147,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1128,'10303','Land Compensation Received',147,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1129,'10304','Rent from Rooms/Canteens/ Vending Machine',147,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1130,'10305','Land Lease Income',147,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1131,'10401','Interest from Savings bank A/c',148,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1132,'10402','Interest on Fixed/ Term  Deposits',148,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1133,'10403','Interest from Mutual Funds',148,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1134,'10404','Interest received from Income tax / Refund from IT dept',148,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1135,'10501','Grant -in-Aid / Aid from Govt',149,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1136,'10502','Autonomy Grant',149,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1137,'10503','UGC  Grant',149,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1138,'10504','Deduction Grant',149,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1139,'10505','Scholarships',149,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1140,'20000','Salaries & Allowances of Teaching Staff',150,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1141,'20001','Salaries & Allowances of Non-Teaching Staff',150,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1142,'20002','Salaries of Contingent Staff',150,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1143,'20003','Salaries of Domestic Servants',150,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1144,'20004','Remuneration/ Honororium',150,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1145,'20005','Salaries of  Doctors/ Nurses /Para medical',150,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1146,'20006','Salaries of Part-time staff/ Substitute staff',150,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1147,'20007','Pensions to staff',150,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1148,'20008','Contribution to LIC Gratuity Scheme',150,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1149,'20009','Gratuity to staff',150,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1150,'20010','EPF/ESI Management share',150,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1151,'20011','EPF /ESI administrative charges',150,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1152,'20012','wages',150,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1153,'20013','Staff Welfare expenses',150,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1154,'20101','Printing and Stationary',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1155,'20102','Telephone Charges',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1156,'20103','Postage',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1157,'20104','Electricity  Charges',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1158,'20105','Muncipal /Property Taxes',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1159,'20106','Rent paid',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1160,'20107','News papers and Periodicals',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1161,'20108','Advertisement',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1162,'20109','Legal charges',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1163,'20110','Office Expenses',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1164,'20111','Professional  / Consultancy Charges',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1165,'20112','Transportation Charges',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1166,'20113','Water Charges',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1167,'20114','Internet Charges',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1168,'20115','Interview Expenses',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1169,'20116','Hiring Charges',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1170,'20117','Bank Charges',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1171,'20118','Miscellaneous Expenses',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1172,'20119','Auditors Fee',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1173,'20120','Contingency',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1174,'20121','Secretarial Assistence',151,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1175,'20201','Laboratory and Science Expenses',152,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1176,'20202','Audio Visual Expenses',152,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1177,'20203','Games and Sports Expenses',152,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1178,'20204','Library expenses',152,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1179,'20205','Result Processing fee',152,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1180,'20206','Convocation /Graduation  Expenses',152,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1181,'20207','Educational expenses',152,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1182,'20208','Software updating expenses',152,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1183,'20209','Paper Valuation/ Paper setting',152,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1184,'20210','Invigilation',152,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1185,'20211','Practical Exam Remuneration',152,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1186,'20212','Scholarship',152,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1187,'20301','Donation given',153,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1188,'20302','Donation  to other Societies',153,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1189,'20401','Contribution to Dioceses /Ecclesiastical Organisations',154,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1190,'20402','Contribution to Others',154,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1191,'20403','Contribution to C.R.I.',154,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1192,'20404','Contribution to Noviciate',154,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1193,'20405','Contribution to communities',154,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1194,'20406','Contribution to the Province',154,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1195,'20407','Contribution to the Institute',154,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1196,'20408','Contribution to other Provinces',154,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1197,'20501','charity to the poor',155,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1198,'20502','Charity to the poor students',155,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1199,'20503','Sponsorship Aid to seminarians & Priests',155,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1200,'20504','Sponsorship Aid to poor children',155,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1201,'20505','Gifts and charity',155,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1202,'20506','Solidarity Fund for the poor',155,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1203,'20551','Foreign Travel',156,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1204,'20552','Travelling Allowance',156,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1205,'20553','Travelling & Conveyance',156,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1206,'20554','Local Conveyance',156,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1207,'20555','Daily Allowance ( D A )',156,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1208,'20556','Home Visit & Holiday Camp expenses',156,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1209,'20557','Parking fee / Toll Fee',156,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1210,'20558','Cancellation Charges',156,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1211,'20559','Diesel / Petrol Charges',156,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1212,'20601','Maintanance of Convent',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1213,'20602','Maintanance of sisters',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1214,'20603','Expenses of Missionary sisters',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1215,'20604','Expenses of Sisters of other communities/ other province',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1216,'20605','Laundry expenses',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1217,'20606','Secularization expenses',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1218,'20607','Kitchen maintanance',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1219,'20608','Garden upkeep',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1220,'20609','Furnishing of new communities',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1221,'20610','Food / Provision',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1222,'20611','Rice / Paddy',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1223,'20612','Fuel, gas & Combastibles',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1224,'20613','Clothing / Footwear',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1225,'20614','Refreshments/ Snacks',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1226,'20615','Cleanness & Hygien',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1227,'20616','Medical expenses',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1228,'20617','Expenses on Functions',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1229,'20618','Expenses on Excursions and Picnics',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1230,'20619','Gifts and Prizes Distributed',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1231,'20620','Retreats/ Seminars/ Courses',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1232,'20621','Formation expenses for sisters',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1233,'20622','Sign of Unity',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1234,'20623','Worship-Suffagges-Chaplains-Preachers',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1235,'20624','Funeral expenses',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1236,'20625','Religious Expenses',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1237,'20626','Provincial Chapter Consultation Expenses',157,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1238,'20651','Repairs and Maintanance of Buildings',158,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1239,'20652','Repairs & Maintenance of Machinery',158,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1240,'20653','Repairs & Maintenance of Computer',158,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1241,'20654','Repairs & M of Electrical & Electronic Equipments',158,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1242,'20655','Repairs & Maintenance of Furniture',158,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1243,'20656','Repairs & Maintenance of Generator',158,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1244,'20657','Repairs & Maintenance of Lift',158,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1245,'20658','Repairs & Maintenance of Other Assets',158,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1246,'20659','Maintanance of Vehicle (Salary)',158,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1247,'20660','Repairs & Maintenance of Borewell',158,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1248,'20661','Renovation of the building',158,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1249,'20662','Repairs of Vehicle',158,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1250,'20663','Vehicle Insurance',158,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1251,'20664','Museum Renovation',158,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1252,'20701','Land',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1253,'20702','Buildings',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1254,'20703','Land and Buildings',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1255,'20704','vehicle',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1256,'20705','Furniture,Fixture and Equipment',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1257,'20706','Electrical and Electronic Equipments',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1258,'20707','Offiice Equipment',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1259,'20708','Domestic Equipment',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1260,'20709','Lab Equipment',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1261,'20710','Hospital Equipment',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1262,'20711','Musical instruments',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1263,'20712','Generator',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1264,'20713','Inverter',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1265,'20714','Building construction Expenditure',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1266,'20715','Solar light',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1267,'20716','Eletronic Gadgets',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1268,'20717','Religious articles',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1269,'20718','Borewell',18,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1270,'20801','Candidates maintanance',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1271,'20802','Tertians Maintenance',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1272,'20803','Agricultural Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1273,'20804','Garden expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1274,'20805','Hospital Maintanance',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1275,'20806','School Maintanances',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1276,'20807','College Maintanances',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1277,'20808','Free Clinic Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1278,'20809','Dispensory expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1279,'20810','Village Development/ Health Programme',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1280,'20811','Dairy /Pet & domestic animal Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1281,'20812','Poultry Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1282,'20813','Purchase of Books, Magazines and Articles',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1283,'20814','Purchase of Uniforms/ materials',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1284,'20815','Packing Material',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1285,'20816','Land Development Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1286,'20817','Building Material',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1287,'20818','Supervisors Charges',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1288,'20819','Inter -Statement Transfer',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1289,'20751','EPF.Recovery/Payment',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1290,'20752','Professional Tax Recovery/Payment',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1291,'20753','E.S.I.Recovery/Payments',23,'GN','GN',0,1,0,'',0,0,0,0,0,0,0,0,0,0,0),(1292,'20754','Group Insurance recoveries/payments',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1293,'20755','TDS recoveries / Payments',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1294,'20756','Advance Tax (TDS on Interest)',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1295,'20757','Income Tax',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1296,'20758','Mediclaim Insurance policy Payments / Recoveries',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1297,'20759','Staff Loan Recovery/Payment',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1298,'20760','Remittance to Govt / University /Board',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1299,'20761','Registration on land',23,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1300,'','Gruppo di Fraternita',111,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1301,'','APIBIMI',111,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1302,'','One di Fonte',111,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1303,'','Sales Force Sponsorship',111,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1304,'','Guntur Project',111,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1305,'','Prison Ministry Project',111,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1306,'','Project for Seminarians & Priests',111,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1307,'','Sponsorship for Poor Children',111,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1308,'','Other Projects',111,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1309,'','Placement',152,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1310,'','DSS',150,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1311,'10185','Convent Maintanance',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1312,'10063','Donations',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1313,'10166','Educational Expeness',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1314,'10149','Home Visit & Hoilday Camp Expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1315,'10065','Interest on Savings Account',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1316,'10157','R & M of Electrical & Electronic Equipments',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1317,'10090','Salaries & Allowances',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1318,'10146','Travelling and Conveyance',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1319,'','Gym',152,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1320,'','Opening of Account',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1321,'','Sanitary expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1322,'','Boarding expenses/ Mess expenses',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1323,'','ESI Recovery /Payment',23,'GN','GN',0,1,0,'',0,0,0,0,0,0,0,0,0,0,0),(1324,'','Laboratory Deposit',144,'GN','GN',0,1,0,'',0,0,0,0,0,0,0,0,0,0,0),(1325,'','Library Deposit',144,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1326,'10064','Contributions Received',5,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1327,'10186','Crokery / Utensils',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1328,'10197','Purchase of Books and Articles',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1329,'10155','R & M of Machinery',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(1330,'','Subsidy',110,'GN','GN',0,1,0,'',0,0,0,0,0,0,0,0,0,0,0),(1331,'','Hospitality',8,'GN','GN',0,1,0,'',0,0,0,0,0,0,0,0,0,0,0),(1332,'','Vocation Promotion',8,'GN','GN',0,1,0,'',0,0,0,0,0,0,0,0,0,0,0),(1333,'','Fixed Deposit / Term Deposit opened',21,'GN','GN',0,1,0,'',0,0,0,0,0,0,0,0,0,0,0),(1334,'','Fixed/ term Deposit closed',21,'GN','GN',0,1,0,'',0,0,0,0,0,0,0,0,0,0,0),(1335,'','New A/c opened',8,'GN','GN',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_ledger_group`
--

LOCK TABLES `master_ledger_group` WRITE;
/*!40000 ALTER TABLE `master_ledger_group` DISABLE KEYS */;
INSERT INTO `master_ledger_group` VALUES (1,'01','Incomes',1,1,1,0,2,0),(2,'02','Expenses',2,2,2,0,2,0),(3,'03','Assets',3,3,3,0,2,0),(4,'04','Liabilities',4,4,4,0,2,0),(5,'05','Direct Incomes',1,1,1,0,0,0),(6,'06','Indirect Incomes',1,1,1,0,0,0),(7,'07','Sales Accounts',1,1,1,0,0,0),(8,'08','Direct Expenses',2,2,2,0,0,0),(9,'09','Indirect Expenses',2,2,2,0,0,0),(10,'10','Purchase Accounts',2,2,2,0,0,0),(11,'18','Current Assets',3,3,3,0,2,0),(12,'20','Bank Accounts',11,3,11,0,2,0),(13,'19','Cash-in-hand',11,3,11,0,2,0),(14,'17','Fixed Deposits',11,3,11,0,2,0),(15,'16','Loans and Advances (Asset)',11,3,11,0,0,0),(16,'14','Stock-in-hand',11,3,11,0,0,0),(17,'15','Sundry Debtors',11,3,11,0,0,0),(18,'11','Fixed Assets',3,3,3,0,0,0),(19,'12','Investments',3,3,3,0,0,0),(20,'13','Misc. Expenses (Asset)',3,3,3,0,0,0),(21,'21','Capital Fund',4,4,4,0,2,0),(22,'22','Reserves and Surplus (Fixed Assets)',4,4,4,0,0,0),(23,'27','Current Liabilities',4,4,4,0,0,0),(24,'24','Duties & Taxes',23,4,23,0,0,0),(25,'25','Provisions',23,4,23,0,0,0),(26,'26','Sundry Creditors',23,4,23,0,0,0),(27,'23','Loans and Advances (Liability)',4,4,4,0,0,0),(28,'28','Bank OD A/c',27,4,27,0,0,0),(29,'29','Secured Loans',27,4,27,0,0,0),(30,'30','Unsecured Loans',27,4,27,0,0,0),(31,'31','Suspense A/c',4,4,4,0,0,0),(104,'','Institutional Income',1,1,1,0,0,3400),(105,'','Academic fees',104,1,104,0,0,3401),(106,'','Boarding fees',104,1,104,0,0,3402),(107,'','Workshop / Production income',104,1,104,0,0,3403),(108,'','Press income',104,1,104,0,0,3404),(109,'','Scholarship received',104,1,104,0,0,3405),(110,'','General Income',1,1,1,0,0,3500),(111,'','Foreign Contribution',110,1,110,0,0,3501),(112,'','Farm & Dairy Income',1,1,1,0,0,3600),(113,'','Bank interest',1,1,1,0,0,3700),(114,'','Investment income',1,1,1,0,0,3800),(115,'','Parish Income',1,1,1,0,0,3900),(116,'','Goods & Supplies',2,2,2,0,0,4400),(117,'','Food & Fuel',116,2,116,0,0,4401),(118,'','Health & Sanitation',116,2,116,0,0,4402),(119,'','Services',2,2,2,0,0,4500),(120,'','Personnel',2,2,2,0,0,4600),(121,'','General Expenditure',2,2,2,0,0,4700),(122,'','Formation Expenses',2,2,2,0,0,4800),(123,'','Contributions & Donations',2,2,2,0,0,4900),(124,'','Farm, Dairy & Poultry exp',2,2,2,0,0,5000),(125,'','Administration Expenses',2,2,2,0,0,5100),(126,'','Stationery & Printing',125,2,125,0,0,5101),(127,'','Institutional expenses',2,2,2,0,0,5200),(128,'','Lab Expenses',127,2,127,0,0,5201),(129,'','Workshop & Production expenses',127,2,127,0,0,5202),(130,'','Transportation',127,2,127,0,0,5203),(131,'','Project Expenses',2,2,2,0,0,5300),(132,'','Programme expenses',131,2,131,0,0,5301),(133,'','Training Expenses',131,2,131,0,0,5302),(134,'','Personnel expenses',131,2,131,0,0,5303),(135,'','Admin. & Operating exp',131,2,131,0,0,5304),(136,'','Infrastructure & Equipments',131,2,131,0,0,5305),(137,'','Parish Expenses',2,2,2,0,0,5400),(138,'','Construction in Progress',18,3,18,0,0,1201),(139,'','Advances',11,3,11,0,0,1107),(140,'','Capital / General Fund',4,4,4,0,0,2700),(141,'','Project fund',4,4,4,0,0,2800),(142,'','Corpus fund',4,4,4,0,0,2900),(143,'','Loan taken',23,4,23,0,0,2304),(144,'','Fee Collections',1,1,1,0,0,4000),(145,'','Other Collections',1,1,1,0,0,4100),(146,'','Salaries & Earnings of members',1,1,1,0,0,4200),(147,'','Property Income',1,1,1,0,0,4300),(148,'','Interest & Dividents',1,1,1,0,0,4400),(149,'','Grant from State & Central Govt',1,1,1,0,0,4500),(150,'','Employees Salaries, Remuneration & Benefits',2,2,2,0,0,5500),(151,'','Administrative Expenses',2,2,2,0,0,5600),(152,'','Educational Expenses',2,2,2,0,0,5700),(153,'','Donation given',2,2,2,0,0,5800),(154,'','Contributions given',2,2,2,0,0,5900),(155,'','Charitable expenses',2,2,2,0,0,6000),(156,'','Travelling & Conveyance',2,2,2,0,0,6100),(157,'','Maintenance of Members',2,2,2,0,0,6200),(158,'','Repairs  and Maintenance of Fixed Assets',2,2,2,0,0,6300),(159,'','UGC Grant',2,2,2,0,0,6500),(160,'','Minor Research Project',159,2,159,0,0,6501),(161,'','Carrer Oriented Programme',159,2,159,0,0,6502),(162,'','XII Plan - Development Grant',159,2,159,0,0,6503),(163,'','IQAC',159,2,159,0,0,6504),(164,'','B.VOC',159,2,159,0,0,6505),(165,'','Plan Block Grant',159,2,159,0,0,6506),(166,'','Merged Scheme',159,2,159,0,0,6507),(167,'','CPE',159,2,159,0,0,6508),(168,'','Autonomy',159,2,159,0,0,6509),(169,'','Deposits (Asset)',2,2,2,0,0,4900),(170,'','Concessions',1,1,1,0,0,4700),(171,'','Concession',2,2,2,0,0,6600),(172,'','Major Research Project',2,2,2,0,0,6600),(173,'','Dr. Shailaja Raj',172,2,172,0,0,6601),(174,'','UGC',2,2,2,0,0,6700),(175,'20409','Contribution from the Province',1,1,1,0,0,4600);
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
INSERT INTO `project_ledger` VALUES (1,1),(2,1),(3,1),(4,1),(3,1045),(3,1046),(3,1047),(3,1048),(3,1049),(3,1050),(3,1051),(3,1052),(3,1053),(3,1054),(3,1055),(3,1056),(3,1057),(3,1058),(3,1059),(3,1060),(3,1061),(3,1062),(3,1063),(3,1064),(3,1065),(3,1066),(3,1067),(3,1068),(3,1069),(3,1070),(3,1071),(3,1072),(3,1073),(3,1074),(3,1075),(3,1076),(3,1077),(3,1078),(3,1079),(3,1080),(3,1081),(3,1082),(3,1083),(3,1084),(3,1085),(3,1086),(3,1087),(3,1088),(3,1089),(3,1090),(3,1091),(3,1092),(3,1093),(3,1094),(3,1095),(3,1096),(4,1096),(3,1097),(3,1098),(3,1099),(4,1100),(1,1101),(2,1101),(1,1102),(2,1102),(3,1103),(3,1104),(3,1105),(4,1106),(4,1107),(1,1108),(2,1108),(3,1109),(3,1110),(3,1111),(3,1112),(1,1113),(2,1113),(1,1114),(2,1114),(3,1115),(3,1116),(3,1117),(3,1118),(4,1119),(4,1120),(1,1121),(2,1121),(3,1122),(3,1123),(3,1124),(1,1125),(2,1125),(1,1126),(2,1126),(1,1127),(2,1127),(3,1128),(3,1129),(3,1130),(3,1131),(1,1132),(2,1132),(1,1133),(2,1133),(1,1134),(2,1134),(3,1135),(3,1136),(3,1137),(3,1138),(1,1139),(2,1139),(1,1140),(2,1140),(3,1140),(1,1141),(2,1141),(3,1141),(1,1142),(2,1142),(3,1142),(1,1143),(2,1143),(3,1143),(1,1144),(2,1144),(3,1144),(1,1145),(2,1145),(3,1145),(1,1146),(2,1146),(3,1146),(1,1147),(2,1147),(3,1147),(1,1148),(2,1148),(3,1148),(1,1149),(2,1149),(3,1149),(1,1150),(2,1150),(3,1150),(4,1151),(1,1152),(2,1152),(1,1153),(2,1153),(3,1153),(1,1154),(2,1154),(1,1155),(2,1155),(1,1156),(2,1156),(1,1157),(2,1157),(4,1158),(1,1159),(2,1159),(3,1159),(1,1160),(2,1160),(3,1160),(1,1161),(2,1161),(3,1161),(1,1162),(2,1162),(3,1162),(1,1163),(2,1163),(3,1163),(4,1164),(1,1165),(2,1165),(3,1165),(1,1166),(2,1166),(3,1166),(1,1167),(2,1167),(3,1167),(1,1168),(2,1168),(3,1168),(1,1169),(2,1169),(3,1169),(1,1170),(2,1170),(1,1171),(2,1171),(3,1171),(1,1172),(2,1172),(3,1172),(1,1173),(2,1173),(1,1174),(2,1174),(1,1175),(2,1175),(1,1176),(2,1176),(1,1177),(2,1177),(1,1178),(2,1178),(1,1179),(2,1179),(1,1180),(2,1180),(1,1181),(2,1181),(1,1182),(2,1182),(3,1183),(1,1184),(2,1184),(1,1185),(2,1185),(1,1186),(2,1186),(1,1187),(2,1187),(1,1188),(2,1188),(3,1189),(4,1190),(1,1191),(2,1191),(1,1192),(2,1192),(1,1193),(2,1193),(1,1194),(2,1194),(1,1195),(2,1195),(1,1196),(2,1196),(1,1197),(2,1197),(1,1198),(2,1198),(1,1199),(2,1199),(1,1200),(2,1200),(1,1201),(2,1201),(3,1202),(1,1203),(2,1203),(1,1204),(2,1204),(1,1205),(2,1205),(1,1206),(2,1206),(1,1207),(2,1207),(1,1208),(2,1208),(1,1209),(2,1209),(1,1210),(2,1210),(1,1211),(2,1211),(1,1212),(2,1212),(1,1213),(2,1213),(1,1214),(2,1214),(3,1215),(1,1216),(2,1216),(1,1217),(2,1217),(1,1218),(2,1218),(1,1219),(2,1219),(1,1220),(2,1220),(3,1221),(4,1222),(4,1223),(1,1224),(2,1224),(1,1225),(2,1225),(1,1226),(2,1226),(1,1227),(2,1227),(1,1228),(2,1228),(4,1229),(1,1230),(2,1230),(1,1231),(2,1231),(1,1232),(2,1232),(1,1233),(2,1233),(3,1234),(4,1235),(1,1236),(2,1236),(1,1237),(2,1237),(1,1238),(2,1238),(1,1239),(2,1239),(1,1240),(2,1240),(1,1241),(2,1241),(4,1242),(4,1243),(1,1244),(2,1244),(1,1245),(2,1245),(1,1246),(2,1246),(3,1247),(4,1248),(4,1249),(1,1250),(2,1250),(1,1251),(2,1251),(1,1252),(2,1252),(3,1253),(4,1254),(4,1255),(4,1256),(4,1257),(1,1258),(2,1258),(1,1259),(2,1259),(1,1260),(2,1260),(4,1261),(4,1262),(4,1263),(4,1264),(1,1265),(2,1265),(3,1266),(4,1267),(4,1268),(4,1269),(4,1270),(1,1271),(2,1271),(1,1272),(2,1272),(1,1273),(2,1273),(4,1274),(1,1275),(2,1275),(1,1276),(2,1276),(1,1277),(2,1277),(1,1278),(2,1278),(3,1279),(1,1280),(2,1280),(1,1281),(2,1281),(1,1282),(2,1282),(1,1283),(2,1283),(1,1284),(2,1284),(3,1285),(4,1286),(1,1287),(2,1287),(1,1288),(2,1288),(1,1289),(2,1289),(1,1290),(2,1290),(1,1291),(2,1291),(1,1292),(2,1292),(1,1293),(2,1293),(1,1294),(2,1294),(1,1295),(2,1295),(1,1296),(2,1296),(1,1297),(2,1297),(3,1298),(4,1299),(1,1300),(2,1300),(1,1301),(2,1301),(1,1302),(2,1302),(1,1303),(2,1303),(1,1304),(2,1304),(1,1305),(2,1305),(1,1306),(2,1306),(1,1307),(2,1307),(4,1307),(1,1308),(2,1308),(4,1308),(1,1309),(2,1309),(1,1310),(2,1310),(1,1311),(2,1311),(4,1311),(3,1312),(1,1313),(2,1313),(1,1314),(2,1314),(1,1315),(2,1315),(1,1316),(2,1316),(1,1317),(2,1317),(4,1317),(3,1318),(3,1319),(1,1320),(2,1320),(1,1321),(2,1321),(1,1322),(2,1322),(1,1323),(2,1323),(3,1324),(3,1325),(1,1326),(2,1326),(4,1326),(1,1327),(2,1327),(1,1328),(2,1328),(1,1329),(2,1329),(1,1330),(2,1330),(1,1331),(2,1331),(1,1332),(2,1332),(4,1333),(1,1334),(2,1334),(1,1335),(2,1335);
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
) ENGINE=InnoDB AUTO_INCREMENT=48757 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_policy`
--

LOCK TABLES `tds_policy` WRITE;
/*!40000 ALTER TABLE `tds_policy` DISABLE KEYS */;
INSERT INTO `tds_policy` VALUES (47914,2,13,'2013-04-01 00:00:00'),(47915,2,14,'2013-04-01 00:00:00'),(47916,2,15,'2013-04-01 00:00:00'),(47917,2,16,'2013-04-01 00:00:00'),(47918,2,19,'2007-04-01 00:00:00'),(47919,2,19,'2009-04-01 00:00:00'),(47920,2,19,'2010-07-01 00:00:00'),(47921,2,22,'2007-04-01 00:00:00'),(47922,2,22,'2009-04-01 00:00:00'),(47923,2,22,'2012-07-01 00:00:00'),(47924,2,23,'2007-04-01 00:00:00'),(47925,2,23,'2009-04-01 00:00:00'),(47926,2,23,'2013-04-01 00:00:00'),(47927,2,24,'2013-04-01 00:00:00'),(47928,2,27,'2007-04-01 00:00:00'),(47929,2,27,'2009-04-01 00:00:00'),(47930,2,27,'2012-07-01 00:00:00'),(47931,2,28,'2013-06-01 00:00:00'),(47932,2,29,'2007-04-01 00:00:00'),(47933,2,29,'2009-04-01 00:00:00'),(47934,2,31,'2007-04-01 00:00:00'),(47935,2,31,'2009-04-01 00:00:00'),(47936,2,31,'2009-10-01 00:00:00'),(47937,2,31,'2010-07-01 00:00:00'),(47938,2,32,'2007-04-01 00:00:00'),(47939,2,38,'2012-07-01 00:00:00'),(47940,2,39,'2007-04-01 00:00:00'),(47941,2,39,'2009-04-01 00:00:00'),(47942,2,39,'2009-10-01 00:00:00'),(47943,2,39,'2010-07-01 00:00:00'),(47944,2,40,'2007-06-01 00:00:00'),(47945,2,40,'2009-04-01 00:00:00'),(47946,2,40,'2009-10-01 00:00:00'),(47947,2,40,'2010-07-01 00:00:00'),(47948,2,49,'2007-04-01 00:00:00'),(47949,2,49,'2009-04-01 00:00:00'),(47950,2,49,'2010-07-01 00:00:00'),(47951,2,50,'2007-04-01 00:00:00'),(47952,2,50,'2009-04-01 00:00:00'),(47953,2,50,'2010-07-01 00:00:00'),(47954,2,53,'2007-04-01 00:00:00'),(47955,2,53,'2009-04-01 00:00:00'),(47956,2,54,'2012-07-01 00:00:00'),(47957,2,54,'2013-04-01 00:00:00'),(47958,2,55,'2007-04-01 00:00:00'),(47959,2,55,'2009-04-01 00:00:00'),(47960,2,56,'2007-04-01 00:00:00'),(47961,2,56,'2007-06-01 00:00:00'),(47962,2,56,'2009-04-01 00:00:00'),(47963,2,56,'2010-07-01 00:00:00'),(47964,2,57,'2007-04-01 00:00:00'),(47965,2,57,'2009-04-01 00:00:00'),(47966,2,58,'2006-04-01 00:00:00'),(47967,2,58,'2007-04-01 00:00:00'),(47968,2,58,'2009-04-01 00:00:00'),(47969,2,58,'2010-07-01 00:00:00'),(47970,2,67,'2009-10-01 00:00:00'),(47971,2,67,'2010-07-01 00:00:00'),(47972,2,68,'2009-10-01 00:00:00'),(47973,2,68,'2010-04-01 00:00:00'),(47974,2,68,'2010-07-01 00:00:00'),(47975,3,19,'2004-04-01 00:00:00'),(47976,3,19,'2007-04-01 00:00:00'),(47977,3,19,'2009-04-01 00:00:00'),(47978,3,19,'2010-07-01 00:00:00'),(47979,3,20,'2008-04-01 00:00:00'),(47980,3,20,'2009-04-01 00:00:00'),(47981,3,22,'2004-04-01 00:00:00'),(47982,3,22,'2007-04-01 00:00:00'),(47983,3,22,'2009-04-01 00:00:00'),(47984,3,22,'2012-07-01 00:00:00'),(47985,3,23,'2004-04-01 00:00:00'),(47986,3,23,'2007-04-01 00:00:00'),(47987,3,23,'2009-04-01 00:00:00'),(47988,3,27,'2004-10-01 00:00:00'),(47989,3,27,'2007-04-01 00:00:00'),(47990,3,27,'2009-04-01 00:00:00'),(47991,3,27,'2012-07-01 00:00:00'),(47992,3,28,'2013-06-01 00:00:00'),(47993,3,29,'2004-04-01 00:00:00'),(47994,3,29,'2007-04-01 00:00:00'),(47995,3,29,'2009-04-01 00:00:00'),(47996,3,31,'2004-04-01 00:00:00'),(47997,3,31,'2007-04-01 00:00:00'),(47998,3,31,'2009-04-01 00:00:00'),(47999,3,32,'2004-04-01 00:00:00'),(48000,3,32,'2007-04-01 00:00:00'),(48001,3,32,'2009-04-01 00:00:00'),(48002,3,32,'2009-10-01 00:00:00'),(48003,3,32,'2010-07-01 00:00:00'),(48004,3,38,'2012-07-01 00:00:00'),(48005,3,39,'2004-04-01 00:00:00'),(48006,3,39,'2007-04-01 00:00:00'),(48007,3,39,'2007-06-01 00:00:00'),(48008,3,39,'2009-04-01 00:00:00'),(48009,3,39,'2009-10-01 00:00:00'),(48010,3,39,'2010-07-01 00:00:00'),(48011,3,40,'2007-06-01 00:00:00'),(48012,3,40,'2009-04-01 00:00:00'),(48013,3,40,'2009-10-01 00:00:00'),(48014,3,40,'2010-07-01 00:00:00'),(48015,3,49,'2004-04-01 00:00:00'),(48016,3,49,'2007-04-01 00:00:00'),(48017,3,49,'2009-04-01 00:00:00'),(48018,3,49,'2010-07-01 00:00:00'),(48019,3,50,'2004-04-01 00:00:00'),(48020,3,50,'2007-04-01 00:00:00'),(48021,3,50,'2009-04-01 00:00:00'),(48022,3,50,'2010-07-01 00:00:00'),(48023,3,53,'2004-04-01 00:00:00'),(48024,3,53,'2007-04-01 00:00:00'),(48025,3,53,'2008-04-01 00:00:00'),(48026,3,53,'2009-04-01 00:00:00'),(48027,3,53,'2012-04-01 00:00:00'),(48028,3,54,'2012-07-01 00:00:00'),(48029,3,55,'2007-04-01 00:00:00'),(48030,3,55,'2009-04-01 00:00:00'),(48031,3,56,'2004-04-01 00:00:00'),(48032,3,56,'2007-04-01 00:00:00'),(48033,3,56,'2007-06-01 00:00:00'),(48034,3,56,'2009-04-01 00:00:00'),(48035,3,56,'2010-07-01 00:00:00'),(48036,3,57,'2007-04-01 00:00:00'),(48037,3,57,'2009-04-01 00:00:00'),(48038,3,58,'2004-04-01 00:00:00'),(48039,3,58,'2007-04-01 00:00:00'),(48040,3,58,'2007-06-01 00:00:00'),(48041,3,58,'2009-04-01 00:00:00'),(48042,3,58,'2010-07-01 00:00:00'),(48043,3,66,'2004-04-01 00:00:00'),(48044,3,66,'2007-04-01 00:00:00'),(48045,3,66,'2009-04-01 00:00:00'),(48046,3,66,'2009-10-01 00:00:00'),(48047,3,66,'2010-07-01 00:00:00'),(48048,3,67,'2004-04-01 00:00:00'),(48049,3,67,'2007-04-01 00:00:00'),(48050,3,67,'2009-04-01 00:00:00'),(48051,3,67,'2009-10-01 00:00:00'),(48052,3,67,'2010-07-01 00:00:00'),(48053,3,68,'2009-10-01 00:00:00'),(48054,3,68,'2010-04-01 00:00:00'),(48055,3,68,'2010-07-01 00:00:00'),(48056,3,69,'2009-10-01 00:00:00'),(48057,3,69,'2010-04-01 00:00:00'),(48058,3,69,'2010-07-01 00:00:00'),(48059,4,13,'2009-04-01 00:00:00'),(48060,4,19,'2004-04-01 00:00:00'),(48061,4,19,'2007-04-01 00:00:00'),(48062,4,19,'2010-07-01 00:00:00'),(48063,4,20,'2008-04-01 00:00:00'),(48064,4,20,'2010-07-01 00:00:00'),(48065,4,22,'2004-04-01 00:00:00'),(48066,4,22,'2007-04-01 00:00:00'),(48067,4,22,'2009-04-01 00:00:00'),(48068,4,22,'2012-07-01 00:00:00'),(48069,4,23,'2004-04-01 00:00:00'),(48070,4,23,'2007-04-01 00:00:00'),(48071,4,23,'2009-04-01 00:00:00'),(48072,4,27,'2004-10-01 00:00:00'),(48073,4,27,'2007-04-01 00:00:00'),(48074,4,27,'2009-04-01 00:00:00'),(48075,4,27,'2012-07-01 00:00:00'),(48076,4,28,'2013-06-01 00:00:00'),(48077,4,29,'2004-04-01 00:00:00'),(48078,4,29,'2007-04-01 00:00:00'),(48079,4,29,'2009-04-01 00:00:00'),(48080,4,31,'2004-04-01 00:00:00'),(48081,4,31,'2007-04-01 00:00:00'),(48082,4,31,'2009-04-01 00:00:00'),(48083,4,32,'2004-04-01 00:00:00'),(48084,4,32,'2007-04-01 00:00:00'),(48085,4,32,'2009-04-01 00:00:00'),(48086,4,32,'2009-10-01 00:00:00'),(48087,4,32,'2010-07-01 00:00:00'),(48088,4,38,'2012-07-01 00:00:00'),(48089,4,39,'2004-04-01 00:00:00'),(48090,4,39,'2007-04-01 00:00:00'),(48091,4,39,'2007-06-01 00:00:00'),(48092,4,39,'2009-04-01 00:00:00'),(48093,4,39,'2009-10-01 00:00:00'),(48094,4,39,'2010-07-01 00:00:00'),(48095,4,40,'2007-06-01 00:00:00'),(48096,4,40,'2009-04-01 00:00:00'),(48097,4,40,'2009-10-01 00:00:00'),(48098,4,40,'2010-07-01 00:00:00'),(48099,4,49,'2004-04-01 00:00:00'),(48100,4,49,'2004-07-01 00:00:00'),(48101,4,49,'2007-04-01 00:00:00'),(48102,4,49,'2009-04-01 00:00:00'),(48103,4,50,'2004-04-01 00:00:00'),(48104,4,50,'2007-04-01 00:00:00'),(48105,4,50,'2010-07-01 00:00:00'),(48106,4,53,'2004-04-01 00:00:00'),(48107,4,53,'2007-04-01 00:00:00'),(48108,4,53,'2008-04-01 00:00:00'),(48109,4,53,'2009-04-01 00:00:00'),(48110,4,54,'2012-07-01 00:00:00'),(48111,4,55,'2004-04-01 00:00:00'),(48112,4,55,'2007-04-01 00:00:00'),(48113,4,55,'2009-04-01 00:00:00'),(48114,4,56,'2004-04-01 00:00:00'),(48115,4,56,'2007-04-01 00:00:00'),(48116,4,56,'2007-06-01 00:00:00'),(48117,4,56,'2009-04-01 00:00:00'),(48118,4,56,'2010-07-01 00:00:00'),(48119,4,57,'2007-04-01 00:00:00'),(48120,4,57,'2009-04-01 00:00:00'),(48121,4,58,'2004-04-01 00:00:00'),(48122,4,58,'2007-04-01 00:00:00'),(48123,4,58,'2007-06-01 00:00:00'),(48124,4,58,'2009-04-01 00:00:00'),(48125,4,58,'2010-07-01 00:00:00'),(48126,4,66,'2004-04-01 00:00:00'),(48127,4,66,'2007-04-01 00:00:00'),(48128,4,66,'2009-04-01 00:00:00'),(48129,4,66,'2009-10-01 00:00:00'),(48130,4,66,'2010-07-01 00:00:00'),(48131,4,67,'2004-04-01 00:00:00'),(48132,4,67,'2007-04-01 00:00:00'),(48133,4,67,'2009-04-01 00:00:00'),(48134,4,67,'2009-10-01 00:00:00'),(48135,4,68,'2009-10-01 00:00:00'),(48136,4,68,'2010-04-01 00:00:00'),(48137,4,68,'2010-07-01 00:00:00'),(48138,4,69,'2009-10-01 00:00:00'),(48139,4,69,'2010-07-01 00:00:00'),(48140,7,19,'2004-04-01 00:00:00'),(48141,7,19,'2005-04-01 00:00:00'),(48142,7,19,'2007-04-01 00:00:00'),(48143,7,19,'2009-04-01 00:00:00'),(48144,7,19,'2010-07-01 00:00:00'),(48145,7,20,'2008-04-01 00:00:00'),(48146,7,20,'2009-04-01 00:00:00'),(48147,7,22,'2004-04-01 00:00:00'),(48148,7,22,'2005-04-01 00:00:00'),(48149,7,22,'2007-04-01 00:00:00'),(48150,7,22,'2009-04-01 00:00:00'),(48151,7,22,'2012-07-01 00:00:00'),(48152,7,23,'2004-04-01 00:00:00'),(48153,7,23,'2005-04-01 00:00:00'),(48154,7,23,'2007-04-01 00:00:00'),(48155,7,23,'2009-04-01 00:00:00'),(48156,7,27,'2004-10-01 00:00:00'),(48157,7,27,'2005-04-01 00:00:00'),(48158,7,27,'2007-04-01 00:00:00'),(48159,7,27,'2009-04-01 00:00:00'),(48160,7,27,'2012-07-01 00:00:00'),(48161,7,28,'2013-06-01 00:00:00'),(48162,7,29,'2004-04-01 00:00:00'),(48163,7,29,'2005-04-01 00:00:00'),(48164,7,29,'2007-04-01 00:00:00'),(48165,7,29,'2009-04-01 00:00:00'),(48166,7,31,'2004-04-01 00:00:00'),(48167,7,31,'2005-04-01 00:00:00'),(48168,7,31,'2007-04-01 00:00:00'),(48169,7,31,'2009-04-01 00:00:00'),(48170,7,32,'2004-04-01 00:00:00'),(48171,7,32,'2005-04-01 00:00:00'),(48172,7,32,'2007-04-01 00:00:00'),(48173,7,32,'2009-04-01 00:00:00'),(48174,7,32,'2009-10-01 00:00:00'),(48175,7,32,'2010-07-01 00:00:00'),(48176,7,38,'2012-07-01 00:00:00'),(48177,7,39,'2004-04-01 00:00:00'),(48178,7,39,'2005-04-01 00:00:00'),(48179,7,39,'2007-04-01 00:00:00'),(48180,7,39,'2009-04-01 00:00:00'),(48181,7,39,'2009-10-01 00:00:00'),(48182,7,39,'2010-07-01 00:00:00'),(48183,7,40,'2007-06-01 00:00:00'),(48184,7,40,'2009-04-01 00:00:00'),(48185,7,40,'2009-10-01 00:00:00'),(48186,7,40,'2010-07-01 00:00:00'),(48187,7,49,'2004-04-01 00:00:00'),(48188,7,49,'2005-04-01 00:00:00'),(48189,7,49,'2007-04-01 00:00:00'),(48190,7,49,'2009-04-01 00:00:00'),(48191,7,49,'2010-07-01 00:00:00'),(48192,7,50,'2004-04-01 00:00:00'),(48193,7,50,'2005-04-01 00:00:00'),(48194,7,50,'2007-04-01 00:00:00'),(48195,7,50,'2009-04-01 00:00:00'),(48196,7,50,'2010-07-01 00:00:00'),(48197,7,53,'2004-04-01 00:00:00'),(48198,7,53,'2005-04-01 00:00:00'),(48199,7,53,'2007-04-01 00:00:00'),(48200,7,53,'2008-04-01 00:00:00'),(48201,7,53,'2009-04-01 00:00:00'),(48202,7,54,'2012-07-01 00:00:00'),(48203,7,55,'2004-04-01 00:00:00'),(48204,7,55,'2005-04-01 00:00:00'),(48205,7,55,'2007-04-01 00:00:00'),(48206,7,55,'2009-04-01 00:00:00'),(48207,7,56,'2004-04-01 00:00:00'),(48208,7,56,'2005-04-01 00:00:00'),(48209,7,56,'2007-04-01 00:00:00'),(48210,7,56,'2007-06-01 00:00:00'),(48211,7,56,'2009-04-01 00:00:00'),(48212,7,56,'2010-07-01 00:00:00'),(48213,7,57,'2007-04-01 00:00:00'),(48214,7,57,'2009-04-01 00:00:00'),(48215,7,58,'2004-04-01 00:00:00'),(48216,7,58,'2005-04-01 00:00:00'),(48217,7,58,'2007-04-01 00:00:00'),(48218,7,58,'2007-06-01 00:00:00'),(48219,7,58,'2009-04-01 00:00:00'),(48220,7,58,'2010-07-01 00:00:00'),(48221,7,66,'2004-04-01 00:00:00'),(48222,7,66,'2005-04-01 00:00:00'),(48223,7,66,'2007-04-01 00:00:00'),(48224,7,66,'2009-04-01 00:00:00'),(48225,7,66,'2009-10-01 00:00:00'),(48226,7,66,'2010-07-01 00:00:00'),(48227,7,67,'2004-04-01 00:00:00'),(48228,7,67,'2005-04-01 00:00:00'),(48229,7,67,'2007-04-01 00:00:00'),(48230,7,67,'2009-04-01 00:00:00'),(48231,7,67,'2009-10-01 00:00:00'),(48232,7,67,'2010-07-01 00:00:00'),(48233,7,68,'2009-10-01 00:00:00'),(48234,7,68,'2010-04-01 00:00:00'),(48235,7,68,'2010-07-01 00:00:00'),(48236,7,69,'2009-10-01 00:00:00'),(48237,7,69,'2010-04-01 00:00:00'),(48238,7,69,'2010-07-01 00:00:00'),(48239,5,1,'2008-04-01 00:00:00'),(48240,5,1,'2011-04-01 00:00:00'),(48241,5,1,'2012-04-01 00:00:00'),(48242,5,1,'2013-04-01 00:00:00'),(48243,5,13,'2008-04-01 00:00:00'),(48244,5,13,'2011-04-01 00:00:00'),(48245,5,13,'2012-04-01 00:00:00'),(48246,5,13,'2013-04-01 00:00:00'),(48247,5,14,'2004-04-01 00:00:00'),(48248,5,14,'2007-04-01 00:00:00'),(48249,5,15,'2012-07-01 00:00:00'),(48250,5,16,'2008-04-01 00:00:00'),(48251,5,16,'2011-04-01 00:00:00'),(48252,5,16,'2012-04-01 00:00:00'),(48253,5,16,'2013-04-01 00:00:00'),(48254,5,21,'2011-06-01 00:00:00'),(48255,5,24,'2008-04-01 00:00:00'),(48256,5,24,'2011-04-01 00:00:00'),(48257,5,24,'2012-04-01 00:00:00'),(48258,5,24,'2013-04-01 00:00:00'),(48259,5,25,'2008-04-01 00:00:00'),(48260,5,25,'2011-04-01 00:00:00'),(48261,5,25,'2012-04-01 00:00:00'),(48262,5,25,'2013-04-01 00:00:00'),(48263,5,29,'2011-04-01 00:00:00'),(48264,5,29,'2013-04-01 00:00:00'),(48265,5,30,'2004-04-01 00:00:00'),(48266,5,30,'2007-04-01 00:00:00'),(48267,5,30,'2012-04-01 00:00:00'),(48268,5,41,'2008-04-01 00:00:00'),(48269,5,41,'2011-04-01 00:00:00'),(48270,5,41,'2012-04-01 00:00:00'),(48271,5,42,'2008-04-01 00:00:00'),(48272,5,42,'2011-04-01 00:00:00'),(48273,5,42,'2012-04-01 00:00:00'),(48274,5,43,'0511-04-01 00:00:00'),(48275,5,43,'2008-04-01 00:00:00'),(48276,5,43,'2011-04-01 00:00:00'),(48277,5,43,'2012-04-01 00:00:00'),(48278,5,44,'2008-04-01 00:00:00'),(48279,5,44,'2011-04-01 00:00:00'),(48280,5,44,'2012-04-01 00:00:00'),(48281,5,44,'2013-04-01 00:00:00'),(48282,5,45,'2008-04-01 00:00:00'),(48283,5,45,'2011-04-01 00:00:00'),(48284,5,45,'2012-04-01 00:00:00'),(48285,5,45,'2013-04-01 00:00:00'),(48286,5,46,'2008-04-01 00:00:00'),(48287,5,46,'2011-04-01 00:00:00'),(48288,5,46,'2012-04-01 00:00:00'),(48289,5,47,'2008-04-01 00:00:00'),(48290,5,47,'2012-04-01 00:00:00'),(48291,5,48,'2008-04-01 00:00:00'),(48292,5,48,'2011-04-01 00:00:00'),(48293,5,48,'2012-04-01 00:00:00'),(48294,5,48,'2013-04-01 00:00:00'),(48295,5,49,'2007-04-01 00:00:00'),(48296,5,49,'2011-04-01 00:00:00'),(48297,5,49,'2012-04-01 00:00:00'),(48298,5,49,'2013-04-01 00:00:00'),(48299,5,50,'2007-04-01 00:00:00'),(48300,5,50,'2011-04-01 00:00:00'),(48301,5,50,'2012-04-01 00:00:00'),(48302,5,50,'2013-04-01 00:00:00'),(48303,5,55,'2007-04-01 00:00:00'),(48304,5,55,'2011-04-01 00:00:00'),(48305,5,55,'2012-04-01 00:00:00'),(48306,5,55,'2013-04-01 00:00:00'),(48307,5,59,'2008-04-01 00:00:00'),(48308,5,59,'2011-04-01 00:00:00'),(48309,5,59,'2012-04-01 00:00:00'),(48310,5,59,'2013-04-01 00:00:00'),(48311,5,60,'2008-04-01 00:00:00'),(48312,5,60,'2011-04-01 00:00:00'),(48313,5,60,'2012-04-01 00:00:00'),(48314,5,60,'2013-04-01 00:00:00'),(48315,5,61,'2008-04-01 00:00:00'),(48316,5,61,'2011-04-01 00:00:00'),(48317,5,61,'2012-04-01 00:00:00'),(48318,5,62,'2008-04-01 00:00:00'),(48319,5,62,'2011-04-01 00:00:00'),(48320,5,62,'2012-04-01 00:00:00'),(48321,5,63,'2013-06-01 00:00:00'),(48322,5,65,'2004-04-01 00:00:00'),(48323,5,65,'2007-04-01 00:00:00'),(48324,5,65,'2011-04-01 00:00:00'),(48325,5,65,'2012-04-01 00:00:00'),(48326,5,65,'2012-07-01 00:00:00'),(48327,5,65,'2013-04-01 00:00:00'),(48328,5,70,'2004-04-01 00:00:00'),(48329,5,70,'2007-04-01 00:00:00'),(48330,5,70,'2011-04-01 00:00:00'),(48331,5,70,'2012-04-01 00:00:00'),(48332,5,71,'2004-04-01 00:00:00'),(48333,5,71,'2007-04-01 00:00:00'),(48334,5,71,'2011-04-01 00:00:00'),(48335,5,71,'2012-04-01 00:00:00'),(48336,6,19,'2004-04-01 00:00:00'),(48337,6,19,'2007-04-01 00:00:00'),(48338,6,19,'2009-04-01 00:00:00'),(48339,6,19,'2010-07-01 00:00:00'),(48340,6,20,'2008-04-01 00:00:00'),(48341,6,20,'2009-04-01 00:00:00'),(48342,6,22,'2004-04-01 00:00:00'),(48343,6,22,'2007-04-01 00:00:00'),(48344,6,22,'2009-04-01 00:00:00'),(48345,6,22,'2012-07-01 00:00:00'),(48346,6,23,'2004-04-01 00:00:00'),(48347,6,23,'2007-04-01 00:00:00'),(48348,6,23,'2009-04-01 00:00:00'),(48349,6,27,'2004-10-01 00:00:00'),(48350,6,27,'2007-04-01 00:00:00'),(48351,6,27,'2009-04-01 00:00:00'),(48352,6,27,'2012-07-01 00:00:00'),(48353,6,28,'2013-06-01 00:00:00'),(48354,6,29,'2007-04-01 00:00:00'),(48355,6,29,'2009-04-01 00:00:00'),(48356,6,31,'2004-04-01 00:00:00'),(48357,6,31,'2007-04-01 00:00:00'),(48358,6,31,'2009-04-01 00:00:00'),(48359,6,32,'2004-04-01 00:00:00'),(48360,6,32,'2007-04-01 00:00:00'),(48361,6,32,'2009-04-01 00:00:00'),(48362,6,32,'2009-10-01 00:00:00'),(48363,6,32,'2010-07-01 00:00:00'),(48364,6,38,'2012-07-01 00:00:00'),(48365,6,39,'2004-04-01 00:00:00'),(48366,6,39,'2007-04-01 00:00:00'),(48367,6,39,'2009-04-01 00:00:00'),(48368,6,39,'2010-07-01 00:00:00'),(48369,6,39,'2012-10-01 00:00:00'),(48370,6,40,'2007-06-01 00:00:00'),(48371,6,40,'2009-04-01 00:00:00'),(48372,6,40,'2009-10-01 00:00:00'),(48373,6,40,'2010-07-01 00:00:00'),(48374,6,49,'2004-04-01 00:00:00'),(48375,6,49,'2007-04-01 00:00:00'),(48376,6,49,'2009-04-01 00:00:00'),(48377,6,49,'2010-07-01 00:00:00'),(48378,6,50,'2004-04-01 00:00:00'),(48379,6,50,'2007-04-01 00:00:00'),(48380,6,50,'2009-04-01 00:00:00'),(48381,6,50,'2010-07-01 00:00:00'),(48382,6,53,'2004-04-01 00:00:00'),(48383,6,53,'2007-04-01 00:00:00'),(48384,6,53,'2008-04-01 00:00:00'),(48385,6,53,'2009-04-01 00:00:00'),(48386,6,54,'2012-07-01 00:00:00'),(48387,6,55,'2004-04-01 00:00:00'),(48388,6,55,'2007-04-01 00:00:00'),(48389,6,55,'2009-04-01 00:00:00'),(48390,6,56,'2004-04-01 00:00:00'),(48391,6,56,'2007-04-01 00:00:00'),(48392,6,56,'2007-06-01 00:00:00'),(48393,6,56,'2009-04-01 00:00:00'),(48394,6,56,'2010-07-01 00:00:00'),(48395,6,57,'2007-04-01 00:00:00'),(48396,6,57,'2009-04-01 00:00:00'),(48397,6,58,'2004-04-01 00:00:00'),(48398,6,58,'2007-04-01 00:00:00'),(48399,6,58,'2007-06-01 00:00:00'),(48400,6,58,'2009-04-01 00:00:00'),(48401,6,58,'2010-07-01 00:00:00'),(48402,6,66,'2004-04-01 00:00:00'),(48403,6,66,'2007-04-01 00:00:00'),(48404,6,66,'2009-04-01 00:00:00'),(48405,6,66,'2009-10-01 00:00:00'),(48406,6,66,'2010-07-01 00:00:00'),(48407,6,67,'2004-04-01 00:00:00'),(48408,6,67,'2007-04-01 00:00:00'),(48409,6,67,'2009-04-01 00:00:00'),(48410,6,67,'2009-10-01 00:00:00'),(48411,6,67,'2010-07-01 00:00:00'),(48412,6,68,'2009-10-01 00:00:00'),(48413,6,68,'2010-04-01 00:00:00'),(48414,6,68,'2010-07-01 00:00:00'),(48415,6,69,'2009-10-01 00:00:00'),(48416,6,69,'2010-04-01 00:00:00'),(48417,6,69,'2010-07-01 00:00:00'),(48418,8,1,'2008-04-01 00:00:00'),(48419,8,1,'2012-04-01 00:00:00'),(48420,8,1,'2013-04-01 00:00:00'),(48421,8,13,'0013-04-01 00:00:00'),(48422,8,13,'2008-04-01 00:00:00'),(48423,8,13,'2012-04-01 00:00:00'),(48424,8,14,'2008-04-01 00:00:00'),(48425,8,14,'2012-04-01 00:00:00'),(48426,8,15,'2012-07-01 00:00:00'),(48427,8,15,'2013-04-01 00:00:00'),(48428,8,16,'2008-04-01 00:00:00'),(48429,8,16,'2012-04-01 00:00:00'),(48430,8,16,'2013-04-01 00:00:00'),(48431,8,21,'2011-06-01 00:00:00'),(48432,8,21,'2013-04-01 00:00:00'),(48433,8,24,'2008-04-01 00:00:00'),(48434,8,24,'2012-04-01 00:00:00'),(48435,8,24,'2013-04-01 00:00:00'),(48436,8,25,'2008-04-01 00:00:00'),(48437,8,25,'2012-04-01 00:00:00'),(48438,8,25,'2013-04-01 00:00:00'),(48439,8,29,'2007-04-01 00:00:00'),(48440,8,29,'2012-04-01 00:00:00'),(48441,8,30,'2004-04-01 00:00:00'),(48442,8,30,'2007-04-01 00:00:00'),(48443,8,30,'2012-04-01 00:00:00'),(48444,8,30,'2013-04-01 00:00:00'),(48445,8,31,'2007-04-01 00:00:00'),(48446,8,31,'2012-04-01 00:00:00'),(48447,8,31,'2013-04-01 00:00:00'),(48448,8,41,'2008-04-01 00:00:00'),(48449,8,41,'2012-04-01 00:00:00'),(48450,8,42,'2008-04-01 00:00:00'),(48451,8,42,'2012-04-01 00:00:00'),(48452,8,43,'2008-04-01 00:00:00'),(48453,8,43,'2012-04-01 00:00:00'),(48454,8,44,'2008-04-01 00:00:00'),(48455,8,44,'2012-04-01 00:00:00'),(48456,8,44,'2013-04-01 00:00:00'),(48457,8,45,'2008-04-01 00:00:00'),(48458,8,45,'2012-04-01 00:00:00'),(48459,8,45,'2013-04-01 00:00:00'),(48460,8,46,'2008-04-01 00:00:00'),(48461,8,46,'2012-04-01 00:00:00'),(48462,8,47,'2008-04-01 00:00:00'),(48463,8,47,'2012-04-01 00:00:00'),(48464,8,48,'2008-04-01 00:00:00'),(48465,8,48,'2012-04-01 00:00:00'),(48466,8,48,'2013-04-01 00:00:00'),(48467,8,49,'2007-04-01 00:00:00'),(48468,8,49,'2012-04-01 00:00:00'),(48469,8,49,'2013-04-01 00:00:00'),(48470,8,50,'2007-04-01 00:00:00'),(48471,8,50,'2012-04-01 00:00:00'),(48472,8,50,'2013-04-01 00:00:00'),(48473,8,55,'2007-04-01 00:00:00'),(48474,8,55,'2012-04-01 00:00:00'),(48475,8,55,'2013-04-01 00:00:00'),(48476,8,59,'2008-04-01 00:00:00'),(48477,8,59,'2012-04-01 00:00:00'),(48478,8,59,'2013-04-01 00:00:00'),(48479,8,60,'2008-04-01 00:00:00'),(48480,8,60,'2012-04-01 00:00:00'),(48481,8,60,'2013-04-01 00:00:00'),(48482,8,61,'2008-04-01 00:00:00'),(48483,8,61,'2012-12-04 00:00:00'),(48484,8,62,'2008-04-01 00:00:00'),(48485,8,62,'2012-04-01 00:00:00'),(48486,8,63,'2013-06-01 00:00:00'),(48487,8,64,'2004-04-01 00:00:00'),(48488,8,64,'2012-04-01 00:00:00'),(48489,8,64,'2013-04-01 00:00:00'),(48490,8,64,'2020-07-14 00:00:00'),(48491,8,65,'2007-04-01 00:00:00'),(48492,8,65,'2010-04-01 00:00:00'),(48493,8,65,'2012-04-01 00:00:00'),(48494,8,65,'2012-07-01 00:00:00'),(48495,8,65,'2013-04-01 00:00:00'),(48496,8,70,'2004-04-01 00:00:00'),(48497,8,70,'2007-04-01 00:00:00'),(48498,8,70,'2012-07-01 00:00:00'),(48499,8,71,'2004-04-01 00:00:00'),(48500,8,71,'2007-04-01 00:00:00'),(48501,8,71,'2008-04-01 00:00:00'),(48502,8,71,'2012-04-01 00:00:00'),(48503,9,19,'2004-04-01 00:00:00'),(48504,9,19,'2007-04-01 00:00:00'),(48505,9,19,'2009-04-01 00:00:00'),(48506,9,19,'2010-07-01 00:00:00'),(48507,9,20,'2008-04-01 00:00:00'),(48508,9,20,'2009-04-01 00:00:00'),(48509,9,22,'2004-04-01 00:00:00'),(48510,9,22,'2007-04-01 00:00:00'),(48511,9,22,'2009-04-01 00:00:00'),(48512,9,22,'2012-07-01 00:00:00'),(48513,9,23,'2004-04-01 00:00:00'),(48514,9,23,'2007-04-01 00:00:00'),(48515,9,23,'2009-04-01 00:00:00'),(48516,9,27,'2004-10-01 00:00:00'),(48517,9,27,'2007-04-01 00:00:00'),(48518,9,27,'2009-04-01 00:00:00'),(48519,9,27,'2012-07-01 00:00:00'),(48520,9,28,'2013-06-01 00:00:00'),(48521,9,29,'2004-04-01 00:00:00'),(48522,9,29,'2007-04-01 00:00:00'),(48523,9,29,'2009-04-01 00:00:00'),(48524,9,31,'2007-04-01 00:00:00'),(48525,9,31,'2009-04-01 00:00:00'),(48526,9,32,'2004-04-01 00:00:00'),(48527,9,32,'2007-04-01 00:00:00'),(48528,9,32,'2009-04-01 00:00:00'),(48529,9,32,'2009-10-01 00:00:00'),(48530,9,32,'2010-07-01 00:00:00'),(48531,9,38,'2012-07-01 00:00:00'),(48532,9,39,'2004-04-01 00:00:00'),(48533,9,39,'2007-04-01 00:00:00'),(48534,9,39,'2009-04-01 00:00:00'),(48535,9,39,'2009-10-01 00:00:00'),(48536,9,39,'2010-07-01 00:00:00'),(48537,9,40,'2007-06-01 00:00:00'),(48538,9,40,'2009-04-01 00:00:00'),(48539,9,40,'2009-10-01 00:00:00'),(48540,9,40,'2010-07-01 00:00:00'),(48541,9,49,'2004-04-01 00:00:00'),(48542,9,49,'2007-04-01 00:00:00'),(48543,9,49,'2009-04-01 00:00:00'),(48544,9,49,'2010-07-01 00:00:00'),(48545,9,50,'2004-04-01 00:00:00'),(48546,9,50,'2007-04-01 00:00:00'),(48547,9,50,'2009-04-01 00:00:00'),(48548,9,50,'2010-07-01 00:00:00'),(48549,9,53,'2004-04-01 00:00:00'),(48550,9,53,'2005-04-01 00:00:00'),(48551,9,53,'2008-04-01 00:00:00'),(48552,9,53,'2009-04-01 00:00:00'),(48553,9,54,'2012-07-01 00:00:00'),(48554,9,55,'2004-04-01 00:00:00'),(48555,9,55,'2007-04-01 00:00:00'),(48556,9,55,'2009-04-01 00:00:00'),(48557,9,56,'2004-04-01 00:00:00'),(48558,9,56,'2007-04-01 00:00:00'),(48559,9,56,'2007-06-01 00:00:00'),(48560,9,56,'2009-04-01 00:00:00'),(48561,9,56,'2010-07-01 00:00:00'),(48562,9,57,'2007-04-01 00:00:00'),(48563,9,57,'2009-04-01 00:00:00'),(48564,9,58,'2004-04-01 00:00:00'),(48565,9,58,'2007-04-01 00:00:00'),(48566,9,58,'2007-06-01 00:00:00'),(48567,9,58,'2009-04-01 00:00:00'),(48568,9,58,'2010-07-01 00:00:00'),(48569,9,66,'2004-04-01 00:00:00'),(48570,9,66,'2007-04-01 00:00:00'),(48571,9,66,'2009-04-01 00:00:00'),(48572,9,66,'2009-10-01 00:00:00'),(48573,9,66,'2010-07-01 00:00:00'),(48574,9,67,'2004-04-01 00:00:00'),(48575,9,67,'2007-04-01 00:00:00'),(48576,9,67,'2009-04-01 00:00:00'),(48577,9,67,'2009-10-01 00:00:00'),(48578,9,67,'2010-07-01 00:00:00'),(48579,9,68,'2009-10-01 00:00:00'),(48580,9,68,'2010-04-01 00:00:00'),(48581,9,68,'2010-07-01 00:00:00'),(48582,9,69,'2009-10-01 00:00:00'),(48583,9,69,'2010-04-01 00:00:00'),(48584,9,69,'2010-07-01 00:00:00'),(48585,10,19,'2004-04-01 00:00:00'),(48586,10,19,'2005-04-01 00:00:00'),(48587,10,19,'2007-04-01 00:00:00'),(48588,10,19,'2009-04-01 00:00:00'),(48589,10,19,'2010-07-01 00:00:00'),(48590,10,20,'2008-04-01 00:00:00'),(48591,10,20,'2009-04-01 00:00:00'),(48592,10,22,'2004-04-01 00:00:00'),(48593,10,22,'2005-04-01 00:00:00'),(48594,10,22,'2007-04-01 00:00:00'),(48595,10,22,'2009-04-01 00:00:00'),(48596,10,22,'2012-07-01 00:00:00'),(48597,10,23,'2004-04-01 00:00:00'),(48598,10,23,'2005-04-01 00:00:00'),(48599,10,23,'2007-04-01 00:00:00'),(48600,10,23,'2009-04-01 00:00:00'),(48601,10,27,'2004-04-01 00:00:00'),(48602,10,27,'2005-04-01 00:00:00'),(48603,10,27,'2007-04-01 00:00:00'),(48604,10,27,'2009-04-01 00:00:00'),(48605,10,27,'2012-07-01 00:00:00'),(48606,10,28,'2013-06-01 00:00:00'),(48607,10,29,'2004-04-01 00:00:00'),(48608,10,29,'2005-04-01 00:00:00'),(48609,10,29,'2007-04-01 00:00:00'),(48610,10,29,'2009-04-01 00:00:00'),(48611,10,31,'2004-04-01 00:00:00'),(48612,10,31,'2005-04-01 00:00:00'),(48613,10,31,'2007-04-01 00:00:00'),(48614,10,31,'2009-04-01 00:00:00'),(48615,10,32,'2004-04-01 00:00:00'),(48616,10,32,'2005-04-01 00:00:00'),(48617,10,32,'2007-04-01 00:00:00'),(48618,10,32,'2009-04-01 00:00:00'),(48619,10,32,'2009-10-01 00:00:00'),(48620,10,32,'2010-07-01 00:00:00'),(48621,10,38,'2012-07-01 00:00:00'),(48622,10,39,'2004-04-01 00:00:00'),(48623,10,39,'2005-04-01 00:00:00'),(48624,10,39,'2007-04-01 00:00:00'),(48625,10,39,'2009-04-01 00:00:00'),(48626,10,39,'2009-10-01 00:00:00'),(48627,10,39,'2010-07-01 00:00:00'),(48628,10,40,'2007-06-01 00:00:00'),(48629,10,40,'2009-04-01 00:00:00'),(48630,10,40,'2009-10-01 00:00:00'),(48631,10,40,'2010-07-01 00:00:00'),(48632,10,49,'2004-04-01 00:00:00'),(48633,10,49,'2005-04-01 00:00:00'),(48634,10,49,'2007-04-01 00:00:00'),(48635,10,49,'2009-04-01 00:00:00'),(48636,10,49,'2010-07-01 00:00:00'),(48637,10,50,'2004-04-01 00:00:00'),(48638,10,50,'2005-04-01 00:00:00'),(48639,10,50,'2007-04-01 00:00:00'),(48640,10,50,'2009-04-01 00:00:00'),(48641,10,50,'2010-07-01 00:00:00'),(48642,10,53,'2004-04-01 00:00:00'),(48643,10,53,'2005-04-01 00:00:00'),(48644,10,53,'2007-04-01 00:00:00'),(48645,10,53,'2008-04-01 00:00:00'),(48646,10,53,'2009-04-01 00:00:00'),(48647,10,54,'2012-07-01 00:00:00'),(48648,10,55,'2004-04-01 00:00:00'),(48649,10,55,'2005-04-01 00:00:00'),(48650,10,55,'2007-04-01 00:00:00'),(48651,10,55,'2009-04-01 00:00:00'),(48652,10,56,'2004-04-01 00:00:00'),(48653,10,56,'2005-04-01 00:00:00'),(48654,10,56,'2007-04-01 00:00:00'),(48655,10,56,'2007-06-01 00:00:00'),(48656,10,56,'2009-04-01 00:00:00'),(48657,10,56,'2010-07-01 00:00:00'),(48658,10,57,'2007-04-01 00:00:00'),(48659,10,57,'2009-04-01 00:00:00'),(48660,10,58,'2004-04-01 00:00:00'),(48661,10,58,'2005-04-01 00:00:00'),(48662,10,58,'2007-04-01 00:00:00'),(48663,10,58,'2007-06-01 00:00:00'),(48664,10,58,'2009-04-01 00:00:00'),(48665,10,58,'2010-07-01 00:00:00'),(48666,10,66,'2004-04-01 00:00:00'),(48667,10,66,'2005-04-01 00:00:00'),(48668,10,66,'2007-04-01 00:00:00'),(48669,10,66,'2009-04-01 00:00:00'),(48670,10,66,'2009-10-01 00:00:00'),(48671,10,66,'2010-07-01 00:00:00'),(48672,10,67,'2004-04-01 00:00:00'),(48673,10,67,'2005-04-01 00:00:00'),(48674,10,67,'2007-04-01 00:00:00'),(48675,10,67,'2009-04-01 00:00:00'),(48676,10,67,'2009-10-01 00:00:00'),(48677,10,67,'2010-07-01 00:00:00'),(48678,10,68,'2009-10-01 00:00:00'),(48679,10,68,'2010-04-01 00:00:00'),(48680,10,68,'2010-07-01 00:00:00'),(48681,10,69,'2009-10-01 00:00:00'),(48682,10,69,'2010-04-01 00:00:00'),(48683,10,69,'2010-07-01 00:00:00'),(48684,11,19,'2004-04-01 00:00:00'),(48685,11,19,'2009-04-01 00:00:00'),(48686,11,19,'2010-07-01 00:00:00'),(48687,11,19,'2012-07-04 00:00:00'),(48688,11,22,'2004-04-01 00:00:00'),(48689,11,22,'2007-04-01 00:00:00'),(48690,11,22,'2009-04-01 00:00:00'),(48691,11,22,'2012-07-01 00:00:00'),(48692,11,23,'2004-04-01 00:00:00'),(48693,11,23,'2007-04-01 00:00:00'),(48694,11,23,'2009-04-01 00:00:00'),(48695,11,27,'2004-04-01 00:00:00'),(48696,11,27,'2007-04-01 00:00:00'),(48697,11,27,'2009-04-01 00:00:00'),(48698,11,27,'2012-07-01 00:00:00'),(48699,11,29,'2004-04-01 00:00:00'),(48700,11,29,'2007-04-01 00:00:00'),(48701,11,29,'2009-04-01 00:00:00'),(48702,11,31,'2004-04-01 00:00:00'),(48703,11,31,'2007-04-01 00:00:00'),(48704,11,31,'2009-04-01 00:00:00'),(48705,11,32,'2004-04-01 00:00:00'),(48706,11,32,'2007-04-01 00:00:00'),(48707,11,32,'2009-04-01 00:00:00'),(48708,11,32,'2009-10-01 00:00:00'),(48709,11,32,'2010-07-01 00:00:00'),(48710,11,39,'2004-04-01 00:00:00'),(48711,11,39,'2007-04-01 00:00:00'),(48712,11,39,'2009-04-01 00:00:00'),(48713,11,39,'2009-10-01 00:00:00'),(48714,11,39,'2010-07-01 00:00:00'),(48715,11,40,'2007-06-01 00:00:00'),(48716,11,40,'2009-04-01 00:00:00'),(48717,11,40,'2009-10-01 00:00:00'),(48718,11,40,'2010-07-01 00:00:00'),(48719,11,49,'2004-04-01 00:00:00'),(48720,11,49,'2007-04-01 00:00:00'),(48721,11,49,'2009-04-01 00:00:00'),(48722,11,49,'2010-07-01 00:00:00'),(48723,11,50,'2004-04-01 00:00:00'),(48724,11,50,'2007-04-01 00:00:00'),(48725,11,50,'2009-04-01 00:00:00'),(48726,11,50,'2010-07-01 00:00:00'),(48727,11,53,'2004-04-01 00:00:00'),(48728,11,53,'2007-04-01 00:00:00'),(48729,11,53,'2008-04-01 00:00:00'),(48730,11,53,'2009-04-01 00:00:00'),(48731,11,55,'2004-04-01 00:00:00'),(48732,11,55,'2007-04-01 00:00:00'),(48733,11,55,'2009-04-01 00:00:00'),(48734,11,56,'2004-04-01 00:00:00'),(48735,11,56,'2007-04-01 00:00:00'),(48736,11,56,'2007-06-01 00:00:00'),(48737,11,56,'2009-04-01 00:00:00'),(48738,11,56,'2010-07-01 00:00:00'),(48739,11,57,'2007-04-01 00:00:00'),(48740,11,57,'2009-04-01 00:00:00'),(48741,11,57,'2012-01-01 00:00:00'),(48742,11,58,'2004-04-01 00:00:00'),(48743,11,58,'2007-04-01 00:00:00'),(48744,11,58,'2007-06-01 00:00:00'),(48745,11,58,'2009-04-01 00:00:00'),(48746,11,58,'2010-07-01 00:00:00'),(48747,11,66,'2004-04-01 00:00:00'),(48748,11,66,'2007-04-01 00:00:00'),(48749,11,66,'2009-04-01 00:00:00'),(48750,11,66,'2009-10-01 00:00:00'),(48751,11,66,'2010-07-01 00:00:00'),(48752,11,67,'2004-04-01 00:00:00'),(48753,11,67,'2007-04-01 00:00:00'),(48754,11,67,'2009-04-01 00:00:00'),(48755,11,67,'2009-10-01 00:00:00'),(48756,11,67,'2010-07-01 00:00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=242151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_tax_rate`
--

LOCK TABLES `tds_tax_rate` WRITE;
/*!40000 ALTER TABLE `tds_tax_rate` DISABLE KEYS */;
INSERT INTO `tds_tax_rate` VALUES (237966,47914,5.00,5000.00,1),(237967,47914,20.00,50000.00,2),(237968,47914,0.00,0.00,3),(237969,47914,0.00,0.00,4),(237970,47914,0.00,0.00,5),(237971,47915,2.55,50000.00,1),(237972,47915,20.00,45000.00,2),(237973,47915,0.00,0.00,3),(237974,47915,0.00,0.00,4),(237975,47915,0.00,0.00,5),(237976,47916,4.50,450000.00,1),(237977,47916,20.00,45000.00,2),(237978,47916,0.00,0.00,3),(237979,47916,0.00,0.00,4),(237980,47916,0.00,0.00,5),(237981,47917,4.78,40000.00,1),(237982,47917,20.00,6000.00,2),(237983,47917,0.00,0.00,3),(237984,47917,0.00,0.00,4),(237985,47917,0.00,0.00,5),(237986,47918,10.00,5000.00,1),(237987,47918,20.00,0.00,2),(237988,47918,10.00,10000000.00,3),(237989,47918,2.00,0.00,4),(237990,47918,1.00,0.00,5),(237991,47919,10.00,5000.00,1),(237992,47919,20.00,0.00,2),(237993,47919,0.00,0.00,3),(237994,47919,0.00,0.00,4),(237995,47919,0.00,0.00,5),(237996,47920,10.00,20000.00,1),(237997,47920,20.00,0.00,2),(237998,47920,0.00,0.00,3),(237999,47920,0.00,0.00,4),(238000,47920,0.00,0.00,5),(238001,47921,10.00,2500.00,1),(238002,47921,20.00,0.00,2),(238003,47921,10.00,10000000.00,3),(238004,47921,2.00,0.00,4),(238005,47921,1.00,0.00,5),(238006,47922,10.00,2500.00,1),(238007,47922,20.00,0.00,2),(238008,47922,0.00,0.00,3),(238009,47922,0.00,0.00,4),(238010,47922,0.00,0.00,5),(238011,47923,10.00,5000.00,1),(238012,47923,20.00,0.00,2),(238013,47923,0.00,0.00,3),(238014,47923,0.00,0.00,4),(238015,47923,0.00,0.00,5),(238016,47924,10.00,5000.00,1),(238017,47924,20.00,0.00,2),(238018,47924,10.00,10000000.00,3),(238019,47924,2.00,0.00,4),(238020,47924,1.00,0.00,5),(238021,47925,10.00,5000.00,1),(238022,47925,20.00,0.00,2),(238023,47925,0.00,0.00,3),(238024,47925,0.00,0.00,4),(238025,47925,0.00,0.00,5),(238026,47926,5.50,6000.00,1),(238027,47926,20.00,31000.00,2),(238028,47926,0.00,0.00,3),(238029,47926,0.00,0.00,4),(238030,47926,0.00,0.00,5),(238031,47927,2.00,8000.00,1),(238032,47927,20.00,31000.00,2),(238033,47927,0.00,0.00,3),(238034,47927,0.00,0.00,4),(238035,47927,0.00,0.00,5),(238036,47928,10.00,100000.00,1),(238037,47928,20.00,0.00,2),(238038,47928,10.00,10000000.00,3),(238039,47928,2.00,0.00,4),(238040,47928,1.00,0.00,5),(238041,47929,10.00,100000.00,1),(238042,47929,20.00,0.00,2),(238043,47929,0.00,0.00,3),(238044,47929,0.00,0.00,4),(238045,47929,0.00,0.00,5),(238046,47930,10.00,200000.00,1),(238047,47930,20.00,0.00,2),(238048,47930,0.00,0.00,3),(238049,47930,0.00,0.00,4),(238050,47930,0.00,0.00,5),(238051,47931,1.00,5000000.00,1),(238052,47931,20.00,0.00,2),(238053,47931,0.00,0.00,3),(238054,47931,0.00,0.00,4),(238055,47931,0.00,0.00,5),(238056,47932,20.00,0.00,1),(238057,47932,20.00,0.00,2),(238058,47932,10.00,10000000.00,3),(238059,47932,2.00,0.00,4),(238060,47932,1.00,0.00,5),(238061,47933,20.00,0.00,1),(238062,47933,20.00,0.00,2),(238063,47933,0.00,0.00,3),(238064,47933,0.00,0.00,4),(238065,47933,0.00,0.00,5),(238066,47934,20.00,0.00,1),(238067,47934,20.00,0.00,2),(238068,47934,10.00,10000000.00,3),(238069,47934,2.00,0.00,4),(238070,47934,1.00,0.00,5),(238071,47935,2.00,50000.00,1),(238072,47935,20.00,0.00,2),(238073,47935,0.00,0.00,3),(238074,47935,0.00,0.00,4),(238075,47935,0.00,0.00,5),(238076,47936,2.00,50000.00,1),(238077,47936,20.00,0.00,2),(238078,47936,0.00,0.00,3),(238079,47936,0.00,0.00,4),(238080,47936,0.00,0.00,5),(238081,47937,2.00,75000.00,1),(238082,47937,20.00,0.00,2),(238083,47937,0.00,0.00,3),(238084,47937,0.00,0.00,4),(238085,47937,0.00,0.00,5),(238086,47938,2.00,50000.00,1),(238087,47938,20.00,0.00,2),(238088,47938,10.00,10000000.00,3),(238089,47938,2.00,0.00,4),(238090,47938,1.00,0.00,5),(238091,47939,10.00,30000.00,1),(238092,47939,20.00,0.00,2),(238093,47939,0.00,0.00,3),(238094,47939,0.00,0.00,4),(238095,47939,0.00,0.00,5),(238096,47940,20.00,120000.00,1),(238097,47940,20.00,0.00,2),(238098,47940,10.00,10000000.00,3),(238099,47940,2.00,0.00,4),(238100,47940,1.00,0.00,5),(238101,47941,20.00,120000.00,1),(238102,47941,20.00,0.00,2),(238103,47941,0.00,0.00,3),(238104,47941,0.00,0.00,4),(238105,47941,0.00,0.00,5),(238106,47942,10.00,120000.00,1),(238107,47942,20.00,0.00,2),(238108,47942,0.00,0.00,3),(238109,47942,0.00,0.00,4),(238110,47942,0.00,0.00,5),(238111,47943,10.00,180000.00,1),(238112,47943,20.00,0.00,2),(238113,47943,0.00,0.00,3),(238114,47943,0.00,0.00,4),(238115,47943,0.00,0.00,5),(238116,47944,10.00,120000.00,1),(238117,47944,20.00,0.00,2),(238118,47944,10.00,10000000.00,3),(238119,47944,2.00,0.00,4),(238120,47944,1.00,0.00,5),(238121,47945,10.00,120000.00,1),(238122,47945,20.00,0.00,2),(238123,47945,0.00,0.00,3),(238124,47945,0.00,0.00,4),(238125,47945,0.00,0.00,5),(238126,47946,2.00,120000.00,1),(238127,47946,20.00,0.00,2),(238128,47946,0.00,0.00,3),(238129,47946,0.00,0.00,4),(238130,47946,0.00,0.00,5),(238131,47947,2.00,180000.00,1),(238132,47947,20.00,0.00,2),(238133,47947,0.00,0.00,3),(238134,47947,0.00,0.00,4),(238135,47947,0.00,0.00,5),(238136,47948,30.00,2500.00,1),(238137,47948,20.00,0.00,2),(238138,47948,10.00,10000000.00,3),(238139,47948,2.00,0.00,4),(238140,47948,1.00,0.00,5),(238141,47949,30.00,2500.00,1),(238142,47949,20.00,0.00,2),(238143,47949,0.00,0.00,3),(238144,47949,0.00,0.00,4),(238145,47949,0.00,0.00,5),(238146,47950,30.00,5000.00,1),(238147,47950,20.00,0.00,2),(238148,47950,0.00,0.00,3),(238149,47950,0.00,0.00,4),(238150,47950,0.00,0.00,5),(238151,47951,30.00,5000.00,1),(238152,47951,20.00,0.00,2),(238153,47951,10.00,10000000.00,3),(238154,47951,2.00,0.00,4),(238155,47951,1.00,0.00,5),(238156,47952,30.00,5000.00,1),(238157,47952,20.00,0.00,2),(238158,47952,0.00,0.00,3),(238159,47952,0.00,0.00,4),(238160,47952,0.00,0.00,5),(238161,47953,30.00,10000.00,1),(238162,47953,20.00,0.00,2),(238163,47953,0.00,0.00,3),(238164,47953,0.00,0.00,4),(238165,47953,0.00,0.00,5),(238166,47954,20.00,2500.00,1),(238167,47954,20.00,0.00,2),(238168,47954,10.00,10000000.00,3),(238169,47954,2.00,0.00,4),(238170,47954,1.00,0.00,5),(238171,47955,10.00,2500.00,1),(238172,47955,20.00,0.00,2),(238173,47955,0.00,0.00,3),(238174,47955,0.00,0.00,4),(238175,47955,0.00,0.00,5),(238176,47956,10.00,0.00,1),(238177,47956,20.00,0.00,2),(238178,47956,0.00,0.00,3),(238179,47956,0.00,0.00,4),(238180,47956,0.00,0.00,5),(238181,47957,10.00,2500.00,1),(238182,47957,20.00,5000.00,2),(238183,47957,0.00,0.00,3),(238184,47957,0.00,0.00,4),(238185,47957,0.00,0.00,5),(238186,47958,10.00,1000.00,1),(238187,47958,20.00,0.00,2),(238188,47958,10.00,10000000.00,3),(238189,47958,2.00,0.00,4),(238190,47958,1.00,0.00,5),(238191,47959,10.00,1000.00,1),(238192,47959,20.00,0.00,2),(238193,47959,0.00,0.00,3),(238194,47959,0.00,0.00,4),(238195,47959,0.00,0.00,5),(238196,47960,5.00,2500.00,1),(238197,47960,20.00,0.00,2),(238198,47960,10.00,10000000.00,3),(238199,47960,2.00,0.00,4),(238200,47960,1.00,0.00,5),(238201,47961,10.00,2500.00,1),(238202,47961,20.00,0.00,2),(238203,47961,10.00,10000000.00,3),(238204,47961,2.00,0.00,4),(238205,47961,1.00,0.00,5),(238206,47962,10.00,2500.00,1),(238207,47962,20.00,0.00,2),(238208,47962,0.00,0.00,3),(238209,47962,0.00,0.00,4),(238210,47962,0.00,0.00,5),(238211,47963,10.00,5000.00,1),(238212,47963,20.00,0.00,2),(238213,47963,0.00,0.00,3),(238214,47963,0.00,0.00,4),(238215,47963,0.00,0.00,5),(238216,47964,20.00,2500.00,1),(238217,47964,20.00,0.00,2),(238218,47964,10.00,10000000.00,3),(238219,47964,2.00,0.00,4),(238220,47964,1.00,0.00,5),(238221,47965,10.00,2500.00,1),(238222,47965,20.00,0.00,2),(238223,47965,0.00,0.00,3),(238224,47965,0.00,0.00,4),(238225,47965,0.00,0.00,5),(238226,47966,10.00,20000.00,1),(238227,47966,20.00,0.00,2),(238228,47966,10.00,10000000.00,3),(238229,47966,2.00,0.00,4),(238230,47966,1.00,0.00,5),(238231,47967,5.00,20000.00,1),(238232,47967,0.00,0.00,2),(238233,47967,10.00,10000000.00,3),(238234,47967,2.00,0.00,4),(238235,47967,1.00,0.00,5),(238236,47968,10.00,20000.00,1),(238237,47968,20.00,0.00,2),(238238,47968,0.00,0.00,3),(238239,47968,0.00,0.00,4),(238240,47968,0.00,0.00,5),(238241,47969,10.00,30000.00,1),(238242,47969,20.00,0.00,2),(238243,47969,0.00,0.00,3),(238244,47969,0.00,0.00,4),(238245,47969,0.00,0.00,5),(238246,47970,2.00,50000.00,1),(238247,47970,20.00,0.00,2),(238248,47970,0.00,0.00,3),(238249,47970,0.00,0.00,4),(238250,47970,0.00,0.00,5),(238251,47971,2.00,75000.00,1),(238252,47971,20.00,0.00,2),(238253,47971,0.00,0.00,3),(238254,47971,0.00,0.00,4),(238255,47971,0.00,0.00,5),(238256,47972,2.00,50000.00,1),(238257,47972,20.00,0.00,2),(238258,47972,0.00,0.00,3),(238259,47972,0.00,0.00,4),(238260,47972,0.00,0.00,5),(238261,47973,0.00,0.00,1),(238262,47973,20.00,0.00,2),(238263,47973,0.00,0.00,3),(238264,47973,0.00,0.00,4),(238265,47973,0.00,0.00,5),(238266,47974,20.00,75000.00,1),(238267,47974,20.00,0.00,2),(238268,47974,0.00,0.00,3),(238269,47974,0.00,0.00,4),(238270,47974,0.00,0.00,5),(238271,47975,10.00,5000.00,1),(238272,47975,20.00,0.00,2),(238273,47975,10.00,1000000.00,3),(238274,47975,2.00,0.00,4),(238275,47975,0.00,0.00,5),(238276,47976,10.00,5000.00,1),(238277,47976,20.00,0.00,2),(238278,47976,10.00,1000000.00,3),(238279,47976,2.00,0.00,4),(238280,47976,1.00,0.00,5),(238281,47977,10.00,5000.00,1),(238282,47977,20.00,0.00,2),(238283,47977,0.00,0.00,3),(238284,47977,0.00,0.00,4),(238285,47977,0.00,0.00,5),(238286,47978,10.00,20000.00,1),(238287,47978,0.00,0.00,2),(238288,47978,0.00,0.00,3),(238289,47978,0.00,0.00,4),(238290,47978,0.00,0.00,5),(238291,47979,10.00,10000.00,1),(238292,47979,20.00,0.00,2),(238293,47979,10.00,1000000.00,3),(238294,47979,2.00,0.00,4),(238295,47979,1.00,0.00,5),(238296,47980,10.00,10000.00,1),(238297,47980,20.00,0.00,2),(238298,47980,0.00,0.00,3),(238299,47980,0.00,0.00,4),(238300,47980,0.00,0.00,5),(238301,47981,10.00,2500.00,1),(238302,47981,20.00,0.00,2),(238303,47981,10.00,1000000.00,3),(238304,47981,2.00,0.00,4),(238305,47981,0.00,0.00,5),(238306,47982,10.00,2500.00,1),(238307,47982,20.00,0.00,2),(238308,47982,10.00,1000000.00,3),(238309,47982,2.00,0.00,4),(238310,47982,1.00,0.00,5),(238311,47983,10.00,2500.00,1),(238312,47983,20.00,0.00,2),(238313,47983,0.00,0.00,3),(238314,47983,0.00,0.00,4),(238315,47983,0.00,0.00,5),(238316,47984,10.00,5000.00,1),(238317,47984,20.00,0.00,2),(238318,47984,0.00,0.00,3),(238319,47984,0.00,0.00,4),(238320,47984,0.00,0.00,5),(238321,47985,10.00,5000.00,1),(238322,47985,20.00,0.00,2),(238323,47985,10.00,1000000.00,3),(238324,47985,2.00,0.00,4),(238325,47985,0.00,0.00,5),(238326,47986,10.00,5000.00,1),(238327,47986,20.00,0.00,2),(238328,47986,10.00,1000000.00,3),(238329,47986,2.00,0.00,4),(238330,47986,1.00,0.00,5),(238331,47987,10.00,5000.00,1),(238332,47987,20.00,0.00,2),(238333,47987,0.00,0.00,3),(238334,47987,0.00,0.00,4),(238335,47987,0.00,0.00,5),(238336,47988,10.00,10000000.00,1),(238337,47988,20.00,0.00,2),(238338,47988,10.00,1000000.00,3),(238339,47988,2.00,0.00,4),(238340,47988,0.00,0.00,5),(238341,47989,10.00,10000000.00,1),(238342,47989,20.00,0.00,2),(238343,47989,10.00,1000000.00,3),(238344,47989,2.00,0.00,4),(238345,47989,1.00,0.00,5),(238346,47990,10.00,10000000.00,1),(238347,47990,20.00,0.00,2),(238348,47990,0.00,0.00,3),(238349,47990,0.00,0.00,4),(238350,47990,0.00,0.00,5),(238351,47991,10.00,20000000.00,1),(238352,47991,20.00,0.00,2),(238353,47991,0.00,0.00,3),(238354,47991,0.00,0.00,4),(238355,47991,0.00,0.00,5),(238356,47992,1.00,5000000.00,1),(238357,47992,20.00,0.00,2),(238358,47992,0.00,0.00,3),(238359,47992,0.00,0.00,4),(238360,47992,0.00,0.00,5),(238361,47993,20.00,2500.00,1),(238362,47993,20.00,0.00,2),(238363,47993,10.00,1000000.00,3),(238364,47993,2.00,0.00,4),(238365,47993,0.00,0.00,5),(238366,47994,20.00,0.00,1),(238367,47994,20.00,0.00,2),(238368,47994,10.00,1000000.00,3),(238369,47994,2.00,0.00,4),(238370,47994,1.00,0.00,5),(238371,47995,20.00,0.00,1),(238372,47995,20.00,0.00,2),(238373,47995,0.00,0.00,3),(238374,47995,0.00,0.00,4),(238375,47995,0.00,0.00,5),(238376,47996,20.00,0.00,1),(238377,47996,20.00,0.00,2),(238378,47996,10.00,1000000.00,3),(238379,47996,2.00,0.00,4),(238380,47996,0.00,0.00,5),(238381,47997,20.00,0.00,1),(238382,47997,20.00,0.00,2),(238383,47997,10.00,1000000.00,3),(238384,47997,2.00,0.00,4),(238385,47997,1.00,0.00,5),(238386,47998,20.00,0.00,1),(238387,47998,0.00,0.00,2),(238388,47998,0.00,0.00,3),(238389,47998,0.00,0.00,4),(238390,47998,0.00,0.00,5),(238391,47999,2.00,50000.00,1),(238392,47999,20.00,0.00,2),(238393,47999,10.00,1000000.00,3),(238394,47999,2.00,0.00,4),(238395,47999,0.00,0.00,5),(238396,48000,2.00,50000.00,1),(238397,48000,20.00,0.00,2),(238398,48000,10.00,1000000.00,3),(238399,48000,2.00,0.00,4),(238400,48000,1.00,0.00,5),(238401,48001,2.00,50000.00,1),(238402,48001,20.00,0.00,2),(238403,48001,0.00,0.00,3),(238404,48001,0.00,0.00,4),(238405,48001,0.00,0.00,5),(238406,48002,2.00,50000.00,1),(238407,48002,20.00,0.00,2),(238408,48002,0.00,0.00,3),(238409,48002,0.00,0.00,4),(238410,48002,0.00,0.00,5),(238411,48003,2.00,75000.00,1),(238412,48003,20.00,0.00,2),(238413,48003,0.00,0.00,3),(238414,48003,0.00,0.00,4),(238415,48003,0.00,0.00,5),(238416,48004,10.00,30000.00,1),(238417,48004,20.00,0.00,2),(238418,48004,0.00,0.00,3),(238419,48004,0.00,0.00,4),(238420,48004,0.00,0.00,5),(238421,48005,15.00,120000.00,1),(238422,48005,20.00,0.00,2),(238423,48005,10.00,1000000.00,3),(238424,48005,2.00,0.00,4),(238425,48005,0.00,0.00,5),(238426,48006,15.00,120000.00,1),(238427,48006,20.00,0.00,2),(238428,48006,10.00,1000000.00,3),(238429,48006,2.00,0.00,4),(238430,48006,1.00,0.00,5),(238431,48007,20.00,120000.00,1),(238432,48007,20.00,0.00,2),(238433,48007,10.00,1000000.00,3),(238434,48007,2.00,0.00,4),(238435,48007,1.00,0.00,5),(238436,48008,20.00,120000.00,1),(238437,48008,20.00,0.00,2),(238438,48008,0.00,0.00,3),(238439,48008,0.00,0.00,4),(238440,48008,0.00,0.00,5),(238441,48009,10.00,120000.00,1),(238442,48009,20.00,0.00,2),(238443,48009,0.00,0.00,3),(238444,48009,0.00,0.00,4),(238445,48009,0.00,0.00,5),(238446,48010,10.00,180000.00,1),(238447,48010,20.00,0.00,2),(238448,48010,0.00,0.00,3),(238449,48010,0.00,0.00,4),(238450,48010,0.00,0.00,5),(238451,48011,10.00,120000.00,1),(238452,48011,20.00,0.00,2),(238453,48011,10.00,1000000.00,3),(238454,48011,2.00,0.00,4),(238455,48011,1.00,0.00,5),(238456,48012,10.00,120000.00,1),(238457,48012,20.00,0.00,2),(238458,48012,0.00,0.00,3),(238459,48012,0.00,0.00,4),(238460,48012,0.00,0.00,5),(238461,48013,2.00,120000.00,1),(238462,48013,20.00,0.00,2),(238463,48013,0.00,0.00,3),(238464,48013,0.00,0.00,4),(238465,48013,0.00,0.00,5),(238466,48014,2.00,180000.00,1),(238467,48014,20.00,0.00,2),(238468,48014,0.00,0.00,3),(238469,48014,0.00,0.00,4),(238470,48014,0.00,0.00,5),(238471,48015,30.00,2500.00,1),(238472,48015,20.00,0.00,2),(238473,48015,10.00,1000000.00,3),(238474,48015,2.00,0.00,4),(238475,48015,0.00,0.00,5),(238476,48016,30.00,2500.00,1),(238477,48016,20.00,0.00,2),(238478,48016,10.00,1000000.00,3),(238479,48016,2.00,0.00,4),(238480,48016,1.00,0.00,5),(238481,48017,30.00,2500.00,1),(238482,48017,20.00,0.00,2),(238483,48017,0.00,0.00,3),(238484,48017,0.00,0.00,4),(238485,48017,0.00,0.00,5),(238486,48018,30.00,5000.00,1),(238487,48018,20.00,0.00,2),(238488,48018,0.00,0.00,3),(238489,48018,0.00,0.00,4),(238490,48018,0.00,0.00,5),(238491,48019,30.00,5000.00,1),(238492,48019,20.00,0.00,2),(238493,48019,10.00,1000000.00,3),(238494,48019,2.00,0.00,4),(238495,48019,0.00,0.00,5),(238496,48020,30.00,5000.00,1),(238497,48020,20.00,0.00,2),(238498,48020,10.00,1000000.00,3),(238499,48020,2.00,0.00,4),(238500,48020,0.00,0.00,5),(238501,48021,30.00,5000.00,1),(238502,48021,20.00,0.00,2),(238503,48021,0.00,0.00,3),(238504,48021,0.00,0.00,4),(238505,48021,0.00,0.00,5),(238506,48022,30.00,10000.00,1),(238507,48022,20.00,0.00,2),(238508,48022,0.00,0.00,3),(238509,48022,0.00,0.00,4),(238510,48022,0.00,0.00,5),(238511,48023,20.00,2500.00,1),(238512,48023,20.00,0.00,2),(238513,48023,10.00,1000000.00,3),(238514,48023,2.00,0.00,4),(238515,48023,0.00,0.00,5),(238516,48024,20.00,2500.00,1),(238517,48024,20.00,0.00,2),(238518,48024,10.00,1000000.00,3),(238519,48024,2.00,0.00,4),(238520,48024,1.00,0.00,5),(238521,48025,20.00,0.00,1),(238522,48025,20.00,0.00,2),(238523,48025,10.00,1000000.00,3),(238524,48025,2.00,0.00,4),(238525,48025,1.00,0.00,5),(238526,48026,10.00,0.00,1),(238527,48026,20.00,0.00,2),(238528,48026,0.00,0.00,3),(238529,48026,0.00,0.00,4),(238530,48026,0.00,0.00,5),(238531,48028,10.00,0.00,1),(238532,48028,0.00,0.00,2),(238533,48028,0.00,0.00,3),(238534,48028,0.00,0.00,4),(238535,48028,0.00,0.00,5),(238536,48029,10.00,1000.00,1),(238537,48029,20.00,0.00,2),(238538,48029,10.00,1000000.00,3),(238539,48029,2.00,0.00,4),(238540,48029,0.00,0.00,5),(238541,48030,10.00,1000.00,1),(238542,48030,20.00,0.00,2),(238543,48030,0.00,1000000.00,3),(238544,48030,0.00,0.00,4),(238545,48030,0.00,0.00,5),(238546,48031,5.00,2500.00,1),(238547,48031,20.00,0.00,2),(238548,48031,10.00,1000000.00,3),(238549,48031,2.00,0.00,4),(238550,48031,0.00,0.00,5),(238551,48032,5.00,2500.00,1),(238552,48032,20.00,0.00,2),(238553,48032,10.00,1000000.00,3),(238554,48032,2.00,0.00,4),(238555,48032,1.00,0.00,5),(238556,48033,10.00,2500.00,1),(238557,48033,20.00,0.00,2),(238558,48033,10.00,1000000.00,3),(238559,48033,2.00,0.00,4),(238560,48033,1.00,0.00,5),(238561,48034,10.00,2500.00,1),(238562,48034,20.00,0.00,2),(238563,48034,0.00,0.00,3),(238564,48034,0.00,0.00,4),(238565,48034,0.00,0.00,5),(238566,48035,10.00,5000.00,1),(238567,48035,0.00,0.00,2),(238568,48035,0.00,0.00,3),(238569,48035,0.00,0.00,4),(238570,48035,0.00,0.00,5),(238571,48036,20.00,2500.00,1),(238572,48036,20.00,0.00,2),(238573,48036,10.00,1000000.00,3),(238574,48036,2.00,0.00,4),(238575,48036,1.00,0.00,5),(238576,48037,10.00,2500.00,1),(238577,48037,20.00,0.00,2),(238578,48037,0.00,0.00,3),(238579,48037,0.00,0.00,4),(238580,48037,0.00,0.00,5),(238581,48038,5.00,20000.00,1),(238582,48038,20.00,0.00,2),(238583,48038,10.00,1000000.00,3),(238584,48038,2.00,0.00,4),(238585,48038,0.00,0.00,5),(238586,48039,5.00,20000.00,1),(238587,48039,20.00,0.00,2),(238588,48039,10.00,1000000.00,3),(238589,48039,2.00,0.00,4),(238590,48039,1.00,0.00,5),(238591,48040,10.00,20000.00,1),(238592,48040,20.00,0.00,2),(238593,48040,10.00,1000000.00,3),(238594,48040,2.00,0.00,4),(238595,48040,1.00,0.00,5),(238596,48041,10.00,20000.00,1),(238597,48041,20.00,0.00,2),(238598,48041,0.00,0.00,3),(238599,48041,0.00,0.00,4),(238600,48041,0.00,0.00,5),(238601,48042,10.00,30000.00,1),(238602,48042,20.00,0.00,2),(238603,48042,0.00,0.00,3),(238604,48042,0.00,0.00,4),(238605,48042,0.00,0.00,5),(238606,48043,1.00,20000.00,1),(238607,48043,20.00,0.00,2),(238608,48043,10.00,1000000.00,3),(238609,48043,2.00,0.00,4),(238610,48043,0.00,0.00,5),(238611,48044,1.00,20000.00,1),(238612,48044,20.00,0.00,2),(238613,48044,10.00,1000000.00,3),(238614,48044,0.00,0.00,4),(238615,48044,0.00,0.00,5),(238616,48045,1.00,20000.00,1),(238617,48045,20.00,0.00,2),(238618,48045,0.00,0.00,3),(238619,48045,0.00,0.00,4),(238620,48045,0.00,0.00,5),(238621,48046,2.00,20000.00,1),(238622,48046,20.00,0.00,2),(238623,48046,0.00,0.00,3),(238624,48046,0.00,0.00,4),(238625,48046,0.00,0.00,5),(238626,48047,2.00,75000.00,1),(238627,48047,20.00,0.00,2),(238628,48047,0.00,0.00,3),(238629,48047,0.00,0.00,4),(238630,48047,0.00,0.00,5),(238631,48048,1.00,20000.00,1),(238632,48048,20.00,0.00,2),(238633,48048,10.00,1000000.00,3),(238634,48048,2.00,0.00,4),(238635,48048,0.00,0.00,5),(238636,48049,1.00,50000.00,1),(238637,48049,20.00,0.00,2),(238638,48049,10.00,1000000.00,3),(238639,48049,2.00,0.00,4),(238640,48049,1.00,0.00,5),(238641,48050,1.00,50000.00,1),(238642,48050,20.00,0.00,2),(238643,48050,0.00,0.00,3),(238644,48050,0.00,0.00,4),(238645,48050,0.00,0.00,5),(238646,48051,2.00,50000.00,1),(238647,48051,20.00,0.00,2),(238648,48051,0.00,0.00,3),(238649,48051,0.00,0.00,4),(238650,48051,0.00,0.00,5),(238651,48052,2.00,75000.00,1),(238652,48052,20.00,0.00,2),(238653,48052,0.00,0.00,3),(238654,48052,0.00,0.00,4),(238655,48052,0.00,0.00,5),(238656,48053,2.00,50000.00,1),(238657,48053,20.00,0.00,2),(238658,48053,0.00,0.00,3),(238659,48053,0.00,0.00,4),(238660,48053,0.00,0.00,5),(238661,48055,20.00,75000.00,1),(238662,48055,20.00,0.00,2),(238663,48055,0.00,0.00,3),(238664,48055,0.00,0.00,4),(238665,48055,0.00,0.00,5),(238666,48056,2.00,50000.00,1),(238667,48056,20.00,0.00,2),(238668,48056,0.00,0.00,3),(238669,48056,0.00,0.00,4),(238670,48056,0.00,0.00,5),(238671,48058,20.00,75000.00,1),(238672,48058,20.00,0.00,2),(238673,48058,0.00,0.00,3),(238674,48058,0.00,0.00,4),(238675,48058,0.00,0.00,5),(238676,48059,10.00,10000.00,1),(238677,48059,20.00,0.00,2),(238678,48059,0.00,0.00,3),(238679,48059,0.00,0.00,4),(238680,48059,0.00,0.00,5),(238681,48060,10.00,5000.00,1),(238682,48060,20.00,0.00,2),(238683,48060,10.00,1000000.00,3),(238684,48060,2.00,0.00,4),(238685,48060,0.00,0.00,5),(238686,48061,10.00,5000.00,1),(238687,48061,20.00,0.00,2),(238688,48061,10.00,1000000.00,3),(238689,48061,2.00,0.00,4),(238690,48061,1.00,0.00,5),(238691,48062,10.00,20000.00,1),(238692,48062,20.00,0.00,2),(238693,48062,0.00,0.00,3),(238694,48062,0.00,0.00,4),(238695,48062,0.00,0.00,5),(238696,48063,10.00,10000.00,1),(238697,48063,20.00,0.00,2),(238698,48063,10.00,1000000.00,3),(238699,48063,2.00,0.00,4),(238700,48063,1.00,0.00,5),(238701,48064,20.00,75000.00,1),(238702,48064,20.00,0.00,2),(238703,48064,0.00,0.00,3),(238704,48064,0.00,0.00,4),(238705,48064,0.00,0.00,5),(238706,48065,10.00,2500.00,1),(238707,48065,20.00,0.00,2),(238708,48065,10.00,1000000.00,3),(238709,48065,2.00,0.00,4),(238710,48065,0.00,0.00,5),(238711,48066,10.00,2500.00,1),(238712,48066,20.00,0.00,2),(238713,48066,10.00,1000000.00,3),(238714,48066,2.00,0.00,4),(238715,48066,1.00,0.00,5),(238716,48067,10.00,25000.00,1),(238717,48067,20.00,0.00,2),(238718,48067,0.00,0.00,3),(238719,48067,0.00,0.00,4),(238720,48067,0.00,0.00,5),(238721,48068,10.00,5000.00,1),(238722,48068,20.00,0.00,2),(238723,48068,0.00,0.00,3),(238724,48068,0.00,0.00,4),(238725,48068,0.00,0.00,5),(238726,48069,10.00,5000.00,1),(238727,48069,20.00,0.00,2),(238728,48069,10.00,1000000.00,3),(238729,48069,2.00,0.00,4),(238730,48069,0.00,0.00,5),(238731,48070,10.00,5000.00,1),(238732,48070,20.00,0.00,2),(238733,48070,10.00,1000000.00,3),(238734,48070,2.00,0.00,4),(238735,48070,1.00,0.00,5),(238736,48071,10.00,5000.00,1),(238737,48071,20.00,0.00,2),(238738,48071,0.00,0.00,3),(238739,48071,0.00,0.00,4),(238740,48071,0.00,0.00,5),(238741,48072,10.00,100000.00,1),(238742,48072,20.00,0.00,2),(238743,48072,10.00,1000000.00,3),(238744,48072,2.00,0.00,4),(238745,48072,0.00,0.00,5),(238746,48073,10.00,100000.00,1),(238747,48073,20.00,0.00,2),(238748,48073,10.00,1000000.00,3),(238749,48073,2.00,0.00,4),(238750,48073,1.00,0.00,5),(238751,48074,10.00,100000.00,1),(238752,48074,20.00,0.00,2),(238753,48074,0.00,0.00,3),(238754,48074,0.00,0.00,4),(238755,48074,0.00,0.00,5),(238756,48075,10.00,200000.00,1),(238757,48075,20.00,0.00,2),(238758,48075,0.00,0.00,3),(238759,48075,0.00,0.00,4),(238760,48075,0.00,0.00,5),(238761,48076,1.00,5000000.00,1),(238762,48076,20.00,0.00,2),(238763,48076,0.00,0.00,3),(238764,48076,0.00,0.00,4),(238765,48076,0.00,0.00,5),(238766,48077,20.00,2500.00,1),(238767,48077,20.00,0.00,2),(238768,48077,10.00,1000000.00,3),(238769,48077,2.00,0.00,4),(238770,48077,0.00,0.00,5),(238771,48078,20.00,0.00,1),(238772,48078,20.00,0.00,2),(238773,48078,10.00,1000000.00,3),(238774,48078,2.00,0.00,4),(238775,48078,1.00,0.00,5),(238776,48079,20.00,0.00,1),(238777,48079,20.00,0.00,2),(238778,48079,0.00,0.00,3),(238779,48079,0.00,0.00,4),(238780,48079,0.00,0.00,5),(238781,48080,20.00,0.00,1),(238782,48080,20.00,0.00,2),(238783,48080,10.00,1000000.00,3),(238784,48080,2.00,0.00,4),(238785,48080,0.00,0.00,5),(238786,48081,20.00,0.00,1),(238787,48081,20.00,0.00,2),(238788,48081,10.00,1000000.00,3),(238789,48081,2.00,0.00,4),(238790,48081,1.00,0.00,5),(238791,48082,20.00,0.00,1),(238792,48082,20.00,0.00,2),(238793,48082,0.00,0.00,3),(238794,48082,0.00,0.00,4),(238795,48082,0.00,0.00,5),(238796,48083,2.00,20000.00,1),(238797,48083,20.00,0.00,2),(238798,48083,10.00,100000.00,3),(238799,48083,2.00,0.00,4),(238800,48083,0.00,0.00,5),(238801,48084,2.00,50000.00,1),(238802,48084,20.00,0.00,2),(238803,48084,10.00,1000000.00,3),(238804,48084,2.00,0.00,4),(238805,48084,1.00,0.00,5),(238806,48085,2.00,50000.00,1),(238807,48085,20.00,0.00,2),(238808,48085,0.00,0.00,3),(238809,48085,0.00,0.00,4),(238810,48085,0.00,0.00,5),(238811,48086,2.00,50000.00,1),(238812,48086,20.00,0.00,2),(238813,48086,0.00,0.00,3),(238814,48086,0.00,0.00,4),(238815,48086,0.00,0.00,5),(238816,48087,2.00,75000.00,1),(238817,48087,20.00,0.00,2),(238818,48087,0.00,0.00,3),(238819,48087,0.00,0.00,4),(238820,48087,0.00,0.00,5),(238821,48088,10.00,30000.00,1),(238822,48088,20.00,0.00,2),(238823,48088,0.00,0.00,3),(238824,48088,0.00,0.00,4),(238825,48088,0.00,0.00,5),(238826,48089,15.00,120000.00,1),(238827,48089,20.00,0.00,2),(238828,48089,10.00,1000000.00,3),(238829,48089,2.00,0.00,4),(238830,48089,0.00,0.00,5),(238831,48090,15.00,120000.00,1),(238832,48090,20.00,0.00,2),(238833,48090,10.00,1000000.00,3),(238834,48090,2.00,0.00,4),(238835,48090,1.00,0.00,5),(238836,48091,20.00,120000.00,1),(238837,48091,20.00,0.00,2),(238838,48091,10.00,1000000.00,3),(238839,48091,2.00,0.00,4),(238840,48091,1.00,0.00,5),(238841,48092,20.00,120000.00,1),(238842,48092,20.00,0.00,2),(238843,48092,0.00,0.00,3),(238844,48092,0.00,0.00,4),(238845,48092,0.00,0.00,5),(238846,48093,10.00,120000.00,1),(238847,48093,20.00,0.00,2),(238848,48093,0.00,0.00,3),(238849,48093,0.00,0.00,4),(238850,48093,0.00,0.00,5),(238851,48094,10.00,180000.00,1),(238852,48094,20.00,0.00,2),(238853,48094,0.00,0.00,3),(238854,48094,0.00,0.00,4),(238855,48094,0.00,0.00,5),(238856,48095,10.00,120000.00,1),(238857,48095,20.00,0.00,2),(238858,48095,10.00,1000000.00,3),(238859,48095,2.00,0.00,4),(238860,48095,1.00,0.00,5),(238861,48096,10.00,120000.00,1),(238862,48096,20.00,0.00,2),(238863,48096,0.00,0.00,3),(238864,48096,0.00,0.00,4),(238865,48096,0.00,0.00,5),(238866,48097,2.00,120000.00,1),(238867,48097,20.00,0.00,2),(238868,48097,0.00,0.00,3),(238869,48097,0.00,0.00,4),(238870,48097,0.00,0.00,5),(238871,48098,2.00,180000.00,1),(238872,48098,20.00,0.00,2),(238873,48098,0.00,0.00,3),(238874,48098,0.00,0.00,4),(238875,48098,0.00,0.00,5),(238876,48099,30.00,2500.00,1),(238877,48099,20.00,0.00,2),(238878,48099,10.00,1000000.00,3),(238879,48099,2.00,0.00,4),(238880,48099,0.00,0.00,5),(238881,48100,30.00,5000.00,1),(238882,48100,20.00,0.00,2),(238883,48100,0.00,0.00,3),(238884,48100,0.00,0.00,4),(238885,48100,0.00,0.00,5),(238886,48101,30.00,2500.00,1),(238887,48101,20.00,0.00,2),(238888,48101,10.00,1000000.00,3),(238889,48101,2.00,0.00,4),(238890,48101,1.00,0.00,5),(238891,48102,30.00,2500.00,1),(238892,48102,20.00,0.00,2),(238893,48102,0.00,0.00,3),(238894,48102,0.00,0.00,4),(238895,48102,0.00,0.00,5),(238896,48103,30.00,5000.00,1),(238897,48103,20.00,0.00,2),(238898,48103,10.00,1000000.00,3),(238899,48103,2.00,0.00,4),(238900,48103,0.00,0.00,5),(238901,48104,30.00,5000.00,1),(238902,48104,20.00,0.00,2),(238903,48104,10.00,1000000.00,3),(238904,48104,2.00,0.00,4),(238905,48104,1.00,0.00,5),(238906,48105,30.00,10000.00,1),(238907,48105,20.00,0.00,2),(238908,48105,0.00,0.00,3),(238909,48105,0.00,0.00,4),(238910,48105,0.00,0.00,5),(238911,48106,20.00,2500.00,1),(238912,48106,20.00,0.00,2),(238913,48106,10.00,1000000.00,3),(238914,48106,2.00,0.00,4),(238915,48106,0.00,0.00,5),(238916,48107,20.00,2500.00,1),(238917,48107,20.00,0.00,2),(238918,48107,10.00,1000000.00,3),(238919,48107,2.00,0.00,4),(238920,48107,1.00,0.00,5),(238921,48108,20.00,0.00,1),(238922,48108,20.00,0.00,2),(238923,48108,10.00,1000000.00,3),(238924,48108,2.00,0.00,4),(238925,48108,1.00,0.00,5),(238926,48109,10.00,0.00,1),(238927,48109,20.00,0.00,2),(238928,48109,0.00,0.00,3),(238929,48109,0.00,0.00,4),(238930,48109,0.00,0.00,5),(238931,48110,10.00,0.00,1),(238932,48110,20.00,0.00,2),(238933,48110,0.00,0.00,3),(238934,48110,0.00,0.00,4),(238935,48110,0.00,0.00,5),(238936,48111,10.00,1000.00,1),(238937,48111,20.00,0.00,2),(238938,48111,10.00,1000000.00,3),(238939,48111,1.00,0.00,4),(238940,48111,0.00,0.00,5),(238941,48112,10.00,1000.00,1),(238942,48112,20.00,0.00,2),(238943,48112,10.00,1000000.00,3),(238944,48112,2.00,0.00,4),(238945,48112,1.00,0.00,5),(238946,48113,10.00,1000.00,1),(238947,48113,20.00,0.00,2),(238948,48113,0.00,0.00,3),(238949,48113,0.00,0.00,4),(238950,48113,0.00,0.00,5),(238951,48114,5.00,2500.00,1),(238952,48114,20.00,0.00,2),(238953,48114,10.00,1000000.00,3),(238954,48114,2.00,0.00,4),(238955,48114,0.00,0.00,5),(238956,48115,5.00,2500.00,1),(238957,48115,20.00,0.00,2),(238958,48115,10.00,1000000.00,3),(238959,48115,2.00,0.00,4),(238960,48115,1.00,0.00,5),(238961,48116,10.00,2500.00,1),(238962,48116,20.00,0.00,2),(238963,48116,10.00,1000000.00,3),(238964,48116,2.00,0.00,4),(238965,48116,1.00,0.00,5),(238966,48117,10.00,2500.00,1),(238967,48117,20.00,0.00,2),(238968,48117,0.00,0.00,3),(238969,48117,0.00,0.00,4),(238970,48117,0.00,0.00,5),(238971,48118,10.00,5000.00,1),(238972,48118,20.00,0.00,2),(238973,48118,0.00,0.00,3),(238974,48118,0.00,0.00,4),(238975,48118,0.00,0.00,5),(238976,48119,20.00,2500.00,1),(238977,48119,20.00,0.00,2),(238978,48119,10.00,1000000.00,3),(238979,48119,2.00,0.00,4),(238980,48119,1.00,0.00,5),(238981,48120,10.00,2500.00,1),(238982,48120,20.00,0.00,2),(238983,48120,0.00,0.00,3),(238984,48120,0.00,0.00,4),(238985,48120,0.00,0.00,5),(238986,48121,5.00,20000.00,1),(238987,48121,20.00,0.00,2),(238988,48121,10.00,1000000.00,3),(238989,48121,2.00,0.00,4),(238990,48121,1.00,0.00,5),(238991,48122,5.00,20000.00,1),(238992,48122,20.00,0.00,2),(238993,48122,10.00,1000000.00,3),(238994,48122,2.00,0.00,4),(238995,48122,1.00,0.00,5),(238996,48123,10.00,20000.00,1),(238997,48123,20.00,0.00,2),(238998,48123,10.00,1000000.00,3),(238999,48123,2.00,0.00,4),(239000,48123,1.00,0.00,5),(239001,48124,10.00,20000.00,1),(239002,48124,20.00,0.00,2),(239003,48124,0.00,0.00,3),(239004,48124,0.00,0.00,4),(239005,48124,0.00,0.00,5),(239006,48125,10.00,30000.00,1),(239007,48125,20.00,0.00,2),(239008,48125,0.00,0.00,3),(239009,48125,0.00,0.00,4),(239010,48125,0.00,0.00,5),(239011,48126,1.00,20000.00,1),(239012,48126,20.00,0.00,2),(239013,48126,10.00,1000000.00,3),(239014,48126,2.00,0.00,4),(239015,48126,1.00,0.00,5),(239016,48127,1.00,20000.00,1),(239017,48127,20.00,0.00,2),(239018,48127,10.00,1000000.00,3),(239019,48127,2.00,0.00,4),(239020,48127,1.00,0.00,5),(239021,48128,1.00,20000.00,1),(239022,48128,20.00,0.00,2),(239023,48128,0.00,0.00,3),(239024,48128,0.00,0.00,4),(239025,48128,0.00,0.00,5),(239026,48129,2.00,20000.00,1),(239027,48129,20.00,0.00,2),(239028,48129,0.00,0.00,3),(239029,48129,0.00,0.00,4),(239030,48129,0.00,0.00,5),(239031,48130,2.00,75000.00,1),(239032,48130,20.00,0.00,2),(239033,48130,0.00,0.00,3),(239034,48130,0.00,0.00,4),(239035,48130,0.00,0.00,5),(239036,48131,1.00,20000.00,1),(239037,48131,20.00,0.00,2),(239038,48131,10.00,1000000.00,3),(239039,48131,2.00,0.00,4),(239040,48131,0.00,0.00,5),(239041,48132,1.00,50000.00,1),(239042,48132,20.00,0.00,2),(239043,48132,10.00,1000000.00,3),(239044,48132,2.00,0.00,4),(239045,48132,1.00,0.00,5),(239046,48133,1.00,50000.00,1),(239047,48133,20.00,0.00,2),(239048,48133,0.00,0.00,3),(239049,48133,0.00,0.00,4),(239050,48133,0.00,0.00,5),(239051,48134,2.00,50000.00,1),(239052,48134,20.00,0.00,2),(239053,48134,0.00,0.00,3),(239054,48134,0.00,0.00,4),(239055,48134,0.00,0.00,5),(239056,48135,2.00,50000.00,1),(239057,48135,20.00,0.00,2),(239058,48135,0.00,0.00,3),(239059,48135,0.00,0.00,4),(239060,48135,0.00,0.00,5),(239061,48137,20.00,75000.00,1),(239062,48137,20.00,0.00,2),(239063,48137,0.00,0.00,3),(239064,48137,0.00,0.00,4),(239065,48137,0.00,0.00,5),(239066,48138,1.00,50000.00,1),(239067,48138,20.00,0.00,2),(239068,48138,0.00,0.00,3),(239069,48138,0.00,0.00,4),(239070,48138,0.00,0.00,5),(239071,48139,20.00,75000.00,1),(239072,48139,20.00,0.00,2),(239073,48139,0.00,0.00,3),(239074,48139,0.00,0.00,4),(239075,48139,0.00,0.00,5),(239076,48140,10.00,5000.00,1),(239077,48140,20.00,0.00,2),(239078,48140,2.50,0.00,3),(239079,48140,2.00,0.00,4),(239080,48140,0.00,0.00,5),(239081,48141,10.00,5000.00,1),(239082,48141,20.00,0.00,2),(239083,48141,0.00,0.00,3),(239084,48141,2.00,0.00,4),(239085,48141,0.00,0.00,5),(239086,48142,10.00,5000.00,1),(239087,48142,20.00,0.00,2),(239088,48142,0.00,0.00,3),(239089,48142,2.00,0.00,4),(239090,48142,1.00,0.00,5),(239091,48143,10.00,5000.00,1),(239092,48143,20.00,0.00,2),(239093,48143,0.00,0.00,3),(239094,48143,0.00,0.00,4),(239095,48143,0.00,0.00,5),(239096,48144,10.00,20000.00,1),(239097,48144,20.00,0.00,2),(239098,48144,0.00,0.00,3),(239099,48144,0.00,0.00,4),(239100,48144,0.00,0.00,5),(239101,48145,10.00,10000.00,1),(239102,48145,20.00,0.00,2),(239103,48145,0.00,0.00,3),(239104,48145,2.00,0.00,4),(239105,48145,1.00,0.00,5),(239106,48146,10.00,10000.00,1),(239107,48146,20.00,0.00,2),(239108,48146,0.00,0.00,3),(239109,48146,0.00,0.00,4),(239110,48146,0.00,0.00,5),(239111,48147,10.00,2500.00,1),(239112,48147,20.00,0.00,2),(239113,48147,2.50,0.00,3),(239114,48147,2.00,0.00,4),(239115,48147,0.00,0.00,5),(239116,48148,10.00,2500.00,1),(239117,48148,20.00,0.00,2),(239118,48148,0.00,0.00,3),(239119,48148,2.00,0.00,4),(239120,48148,0.00,0.00,5),(239121,48149,10.00,2500.00,1),(239122,48149,20.00,0.00,2),(239123,48149,0.00,0.00,3),(239124,48149,2.00,0.00,4),(239125,48149,1.00,0.00,5),(239126,48150,10.00,2500.00,1),(239127,48150,20.00,0.00,2),(239128,48150,0.00,0.00,3),(239129,48150,0.00,0.00,4),(239130,48150,0.00,0.00,5),(239131,48151,10.00,5000.00,1),(239132,48151,20.00,0.00,2),(239133,48151,0.00,0.00,3),(239134,48151,0.00,0.00,4),(239135,48151,0.00,0.00,5),(239136,48152,10.00,5000.00,1),(239137,48152,20.00,0.00,2),(239138,48152,2.50,0.00,3),(239139,48152,2.00,0.00,4),(239140,48152,0.00,0.00,5),(239141,48153,10.00,5000.00,1),(239142,48153,20.00,0.00,2),(239143,48153,0.00,0.00,3),(239144,48153,2.00,0.00,4),(239145,48153,0.00,0.00,5),(239146,48154,10.00,5000.00,1),(239147,48154,20.00,0.00,2),(239148,48154,0.00,0.00,3),(239149,48154,2.00,0.00,4),(239150,48154,1.00,0.00,5),(239151,48155,10.00,5000.00,1),(239152,48155,20.00,0.00,2),(239153,48155,0.00,0.00,3),(239154,48155,0.00,0.00,4),(239155,48155,0.00,0.00,5),(239156,48156,10.00,100000.00,1),(239157,48156,20.00,0.00,2),(239158,48156,2.50,0.00,3),(239159,48156,2.00,0.00,4),(239160,48156,0.00,0.00,5),(239161,48157,10.00,100000.00,1),(239162,48157,20.00,0.00,2),(239163,48157,0.00,0.00,3),(239164,48157,2.00,0.00,4),(239165,48157,0.00,0.00,5),(239166,48158,10.00,100000.00,1),(239167,48158,20.00,0.00,2),(239168,48158,0.00,0.00,3),(239169,48158,2.00,0.00,4),(239170,48158,1.00,0.00,5),(239171,48159,10.00,100000.00,1),(239172,48159,20.00,0.00,2),(239173,48159,0.00,0.00,3),(239174,48159,0.00,0.00,4),(239175,48159,0.00,0.00,5),(239176,48160,10.00,200000.00,1),(239177,48160,20.00,0.00,2),(239178,48160,0.00,0.00,3),(239179,48160,0.00,0.00,4),(239180,48160,0.00,0.00,5),(239181,48161,1.00,5000000.00,1),(239182,48161,20.00,0.00,2),(239183,48161,0.00,0.00,3),(239184,48161,0.00,0.00,4),(239185,48161,0.00,0.00,5),(239186,48162,20.00,2500.00,1),(239187,48162,20.00,0.00,2),(239188,48162,2.50,0.00,3),(239189,48162,2.00,0.00,4),(239190,48162,0.00,0.00,5),(239191,48163,20.00,2500.00,1),(239192,48163,20.00,0.00,2),(239193,48163,0.00,0.00,3),(239194,48163,2.00,0.00,4),(239195,48163,0.00,0.00,5),(239196,48164,20.00,0.00,1),(239197,48164,20.00,0.00,2),(239198,48164,0.00,0.00,3),(239199,48164,2.00,0.00,4),(239200,48164,1.00,0.00,5),(239201,48165,20.00,0.00,1),(239202,48165,20.00,0.00,2),(239203,48165,0.00,0.00,3),(239204,48165,0.00,0.00,4),(239205,48165,0.00,0.00,5),(239206,48166,20.00,0.00,1),(239207,48166,20.00,0.00,2),(239208,48166,2.50,0.00,3),(239209,48166,2.00,0.00,4),(239210,48166,0.00,0.00,5),(239211,48167,20.00,0.00,1),(239212,48167,20.00,0.00,2),(239213,48167,0.00,0.00,3),(239214,48167,2.00,0.00,4),(239215,48167,0.00,0.00,5),(239216,48168,20.00,0.00,1),(239217,48168,20.00,0.00,2),(239218,48168,0.00,0.00,3),(239219,48168,2.00,0.00,4),(239220,48168,1.00,0.00,5),(239221,48169,20.00,0.00,1),(239222,48169,20.00,0.00,2),(239223,48169,0.00,0.00,3),(239224,48169,0.00,0.00,4),(239225,48169,0.00,0.00,5),(239226,48170,2.20,20.00,1),(239227,48170,0.00,0.00,2),(239228,48170,2.50,0.00,3),(239229,48170,2.00,0.00,4),(239230,48170,0.00,0.00,5),(239231,48171,2.00,20000.00,1),(239232,48171,20.00,0.00,2),(239233,48171,0.00,0.00,3),(239234,48171,2.00,0.00,4),(239235,48171,0.00,0.00,5),(239236,48172,2.00,50000.00,1),(239237,48172,20.00,0.00,2),(239238,48172,0.00,0.00,3),(239239,48172,2.00,0.00,4),(239240,48172,1.00,0.00,5),(239241,48173,2.00,50000.00,1),(239242,48173,20.00,0.00,2),(239243,48173,0.00,0.00,3),(239244,48173,0.00,0.00,4),(239245,48173,0.00,0.00,5),(239246,48174,2.00,50000.00,1),(239247,48174,20.00,0.00,2),(239248,48174,0.00,0.00,3),(239249,48174,0.00,0.00,4),(239250,48174,0.00,0.00,5),(239251,48175,2.00,75000.00,1),(239252,48175,20.00,0.00,2),(239253,48175,0.00,0.00,3),(239254,48175,0.00,0.00,4),(239255,48175,0.00,0.00,5),(239256,48176,10.00,30000.00,1),(239257,48176,20.00,0.00,2),(239258,48176,0.00,0.00,3),(239259,48176,0.00,0.00,4),(239260,48176,0.00,0.00,5),(239261,48177,20.00,120000.00,1),(239262,48177,20.00,0.00,2),(239263,48177,2.50,0.00,3),(239264,48177,2.00,0.00,4),(239265,48177,0.00,0.00,5),(239266,48178,20.00,120000.00,1),(239267,48178,20.00,0.00,2),(239268,48178,0.00,0.00,3),(239269,48178,2.00,0.00,4),(239270,48178,0.00,0.00,5),(239271,48179,20.00,120000.00,1),(239272,48179,20.00,0.00,2),(239273,48179,0.00,0.00,3),(239274,48179,2.00,0.00,4),(239275,48179,1.00,0.00,5),(239276,48180,20.00,120000.00,1),(239277,48180,20.00,0.00,2),(239278,48180,0.00,0.00,3),(239279,48180,0.00,0.00,4),(239280,48180,0.00,0.00,5),(239281,48181,10.00,120000.00,1),(239282,48181,20.00,0.00,2),(239283,48181,0.00,0.00,3),(239284,48181,0.00,0.00,4),(239285,48181,0.00,0.00,5),(239286,48182,10.00,180000.00,1),(239287,48182,20.00,0.00,2),(239288,48182,0.00,0.00,3),(239289,48182,0.00,0.00,4),(239290,48182,0.00,0.00,5),(239291,48183,10.00,120000.00,1),(239292,48183,20.00,0.00,2),(239293,48183,0.00,0.00,3),(239294,48183,2.00,0.00,4),(239295,48183,1.00,0.00,5),(239296,48184,10.00,120000.00,1),(239297,48184,20.00,0.00,2),(239298,48184,0.00,0.00,3),(239299,48184,0.00,0.00,4),(239300,48184,0.00,0.00,5),(239301,48185,2.00,120000.00,1),(239302,48185,20.00,0.00,2),(239303,48185,0.00,0.00,3),(239304,48185,0.00,0.00,4),(239305,48185,0.00,0.00,5),(239306,48186,2.00,180000.00,1),(239307,48186,20.00,0.00,2),(239308,48186,0.00,0.00,3),(239309,48186,0.00,0.00,4),(239310,48186,0.00,0.00,5),(239311,48187,30.00,2500.00,1),(239312,48187,20.00,0.00,2),(239313,48187,2.50,0.00,3),(239314,48187,2.00,0.00,4),(239315,48187,0.00,0.00,5),(239316,48188,30.00,2500.00,1),(239317,48188,20.00,0.00,2),(239318,48188,0.00,0.00,3),(239319,48188,2.00,0.00,4),(239320,48188,0.00,0.00,5),(239321,48189,30.00,2500.00,1),(239322,48189,20.00,0.00,2),(239323,48189,0.00,0.00,3),(239324,48189,2.00,0.00,4),(239325,48189,1.00,0.00,5),(239326,48190,30.00,2500.00,1),(239327,48190,20.00,0.00,2),(239328,48190,0.00,0.00,3),(239329,48190,0.00,0.00,4),(239330,48190,0.00,0.00,5),(239331,48191,30.00,5000.00,1),(239332,48191,20.00,0.00,2),(239333,48191,0.00,0.00,3),(239334,48191,0.00,0.00,4),(239335,48191,0.00,0.00,5),(239336,48192,30.00,5000.00,1),(239337,48192,20.00,0.00,2),(239338,48192,2.50,0.00,3),(239339,48192,2.00,0.00,4),(239340,48192,0.00,0.00,5),(239341,48193,30.00,5000.00,1),(239342,48193,20.00,0.00,2),(239343,48193,0.00,0.00,3),(239344,48193,2.00,0.00,4),(239345,48193,0.00,0.00,5),(239346,48194,30.00,5000.00,1),(239347,48194,20.00,0.00,2),(239348,48194,0.00,0.00,3),(239349,48194,2.00,0.00,4),(239350,48194,1.00,0.00,5),(239351,48195,30.00,5000.00,1),(239352,48195,20.00,0.00,2),(239353,48195,0.00,0.00,3),(239354,48195,0.00,0.00,4),(239355,48195,0.00,0.00,5),(239356,48196,30.00,10000.00,1),(239357,48196,20.00,0.00,2),(239358,48196,0.00,0.00,3),(239359,48196,0.00,0.00,4),(239360,48196,0.00,0.00,5),(239361,48197,20.00,2500.00,1),(239362,48197,20.00,0.00,2),(239363,48197,2.50,0.00,3),(239364,48197,2.00,0.00,4),(239365,48197,0.00,0.00,5),(239366,48198,20.00,2500.00,1),(239367,48198,20.00,0.00,2),(239368,48198,0.00,0.00,3),(239369,48198,2.00,0.00,4),(239370,48198,0.00,0.00,5),(239371,48199,20.00,2500.00,1),(239372,48199,20.00,0.00,2),(239373,48199,0.00,0.00,3),(239374,48199,2.00,0.00,4),(239375,48199,1.00,0.00,5),(239376,48200,20.00,0.00,1),(239377,48200,20.00,0.00,2),(239378,48200,0.00,0.00,3),(239379,48200,2.00,0.00,4),(239380,48200,1.00,0.00,5),(239381,48201,10.00,0.00,1),(239382,48201,20.00,0.00,2),(239383,48201,0.00,0.00,3),(239384,48201,0.00,0.00,4),(239385,48201,0.00,0.00,5),(239386,48202,10.00,0.00,1),(239387,48202,20.00,0.00,2),(239388,48202,0.00,0.00,3),(239389,48202,0.00,0.00,4),(239390,48202,0.00,0.00,5),(239391,48203,10.00,1000.00,1),(239392,48203,20.00,0.00,2),(239393,48203,2.50,0.00,3),(239394,48203,2.00,0.00,4),(239395,48203,0.00,0.00,5),(239396,48204,10.00,1000.00,1),(239397,48204,20.00,0.00,2),(239398,48204,0.00,0.00,3),(239399,48204,2.00,0.00,4),(239400,48204,0.00,0.00,5),(239401,48205,10.00,1000.00,1),(239402,48205,20.00,0.00,2),(239403,48205,0.00,0.00,3),(239404,48205,2.00,0.00,4),(239405,48205,1.00,0.00,5),(239406,48206,10.00,1000.00,1),(239407,48206,20.00,0.00,2),(239408,48206,0.00,0.00,3),(239409,48206,0.00,0.00,4),(239410,48206,0.00,0.00,5),(239411,48207,5.00,2500.00,1),(239412,48207,20.00,0.00,2),(239413,48207,2.50,0.00,3),(239414,48207,2.00,0.00,4),(239415,48207,0.00,0.00,5),(239416,48208,5.00,2500.00,1),(239417,48208,20.00,0.00,2),(239418,48208,0.00,0.00,3),(239419,48208,2.00,0.00,4),(239420,48208,0.00,0.00,5),(239421,48209,5.00,2500.00,1),(239422,48209,20.00,0.00,2),(239423,48209,0.00,0.00,3),(239424,48209,2.00,0.00,4),(239425,48209,1.00,0.00,5),(239426,48210,10.00,2500.00,1),(239427,48210,20.00,0.00,2),(239428,48210,0.00,0.00,3),(239429,48210,2.00,0.00,4),(239430,48210,1.00,0.00,5),(239431,48211,10.00,2500.00,1),(239432,48211,20.00,0.00,2),(239433,48211,0.00,0.00,3),(239434,48211,0.00,0.00,4),(239435,48211,0.00,0.00,5),(239436,48212,10.00,5000.00,1),(239437,48212,20.00,0.00,2),(239438,48212,0.00,0.00,3),(239439,48212,0.00,0.00,4),(239440,48212,0.00,0.00,5),(239441,48213,5.00,20000.00,1),(239442,48213,20.00,0.00,2),(239443,48213,2.50,0.00,3),(239444,48213,2.00,0.00,4),(239445,48213,1.00,0.00,5),(239446,48214,10.00,20000.00,1),(239447,48214,20.00,0.00,2),(239448,48214,0.00,0.00,3),(239449,48214,0.00,0.00,4),(239450,48214,0.00,0.00,5),(239451,48215,5.00,20000.00,1),(239452,48215,20.00,0.00,2),(239453,48215,2.50,0.00,3),(239454,48215,2.00,0.00,4),(239455,48215,0.00,0.00,5),(239456,48216,5.00,20000.00,1),(239457,48216,20.00,0.00,2),(239458,48216,0.00,0.00,3),(239459,48216,2.00,0.00,4),(239460,48216,0.00,0.00,5),(239461,48217,5.00,20000.00,1),(239462,48217,20.00,0.00,2),(239463,48217,0.00,0.00,3),(239464,48217,2.00,0.00,4),(239465,48217,1.00,0.00,5),(239466,48218,10.00,20000.00,1),(239467,48218,20.00,0.00,2),(239468,48218,0.00,0.00,3),(239469,48218,2.00,0.00,4),(239470,48218,1.00,0.00,5),(239471,48219,10.00,20000.00,1),(239472,48219,20.00,0.00,2),(239473,48219,0.00,0.00,3),(239474,48219,0.00,0.00,4),(239475,48219,0.00,0.00,5),(239476,48220,10.00,30000.00,1),(239477,48220,20.00,0.00,2),(239478,48220,0.00,0.00,3),(239479,48220,0.00,0.00,4),(239480,48220,0.00,0.00,5),(239481,48221,1.00,20000.00,1),(239482,48221,20.00,0.00,2),(239483,48221,2.50,0.00,3),(239484,48221,2.00,0.00,4),(239485,48221,0.00,0.00,5),(239486,48222,1.00,20000.00,1),(239487,48222,20.00,0.00,2),(239488,48222,0.00,0.00,3),(239489,48222,2.00,0.00,4),(239490,48222,0.00,0.00,5),(239491,48223,1.00,20000.00,1),(239492,48223,20.00,0.00,2),(239493,48223,0.00,0.00,3),(239494,48223,2.00,0.00,4),(239495,48223,1.00,0.00,5),(239496,48224,1.00,20000.00,1),(239497,48224,20.00,0.00,2),(239498,48224,0.00,0.00,3),(239499,48224,0.00,0.00,4),(239500,48224,0.00,0.00,5),(239501,48225,2.00,20000.00,1),(239502,48225,20.00,0.00,2),(239503,48225,0.00,0.00,3),(239504,48225,0.00,0.00,4),(239505,48225,0.00,0.00,5),(239506,48226,2.00,75000.00,1),(239507,48226,20.00,0.00,2),(239508,48226,0.00,0.00,3),(239509,48226,0.00,0.00,4),(239510,48226,0.00,0.00,5),(239511,48227,1.00,20000.00,1),(239512,48227,20.00,0.00,2),(239513,48227,2.50,0.00,3),(239514,48227,2.00,0.00,4),(239515,48227,0.00,0.00,5),(239516,48228,1.00,20000.00,1),(239517,48228,20.00,0.00,2),(239518,48228,0.00,0.00,3),(239519,48228,2.00,0.00,4),(239520,48228,0.00,0.00,5),(239521,48229,1.00,50000.00,1),(239522,48229,20.00,0.00,2),(239523,48229,0.00,0.00,3),(239524,48229,2.00,0.00,4),(239525,48229,1.00,0.00,5),(239526,48230,1.00,50000.00,1),(239527,48230,20.00,0.00,2),(239528,48230,0.00,0.00,3),(239529,48230,0.00,0.00,4),(239530,48230,0.00,0.00,5),(239531,48231,2.00,50000.00,1),(239532,48231,20.00,0.00,2),(239533,48231,0.00,0.00,3),(239534,48231,0.00,0.00,4),(239535,48231,0.00,0.00,5),(239536,48232,2.00,75000.00,1),(239537,48232,20.00,0.00,2),(239538,48232,0.00,0.00,3),(239539,48232,0.00,0.00,4),(239540,48232,0.00,0.00,5),(239541,48233,2.00,50000.00,1),(239542,48233,20.00,0.00,2),(239543,48233,0.00,0.00,3),(239544,48233,0.00,0.00,4),(239545,48233,0.00,0.00,5),(239546,48234,0.00,0.00,1),(239547,48234,20.00,0.00,2),(239548,48234,0.00,0.00,3),(239549,48234,0.00,0.00,4),(239550,48234,0.00,0.00,5),(239551,48235,20.00,75000.00,1),(239552,48235,20.00,0.00,2),(239553,48235,0.00,0.00,3),(239554,48235,0.00,0.00,4),(239555,48235,0.00,0.00,5),(239556,48236,1.00,50000.00,1),(239557,48236,20.00,0.00,2),(239558,48236,0.00,0.00,3),(239559,48236,0.00,0.00,4),(239560,48236,0.00,0.00,5),(239561,48237,0.00,0.00,1),(239562,48237,20.00,0.00,2),(239563,48237,0.00,0.00,3),(239564,48237,0.00,0.00,4),(239565,48237,0.00,0.00,5),(239566,48238,20.00,75000.00,1),(239567,48238,20.00,0.00,2),(239568,48238,0.00,0.00,3),(239569,48238,0.00,0.00,4),(239570,48238,0.00,0.00,5),(239571,48239,40.00,0.00,1),(239572,48239,20.00,0.00,2),(239573,48239,2.50,10000000.00,3),(239574,48239,2.00,0.00,4),(239575,48239,1.00,0.00,5),(239576,48240,40.00,0.00,1),(239577,48240,20.00,0.00,2),(239578,48240,2.00,10000000.00,3),(239579,48240,2.00,0.00,4),(239580,48240,1.00,0.00,5),(239581,48241,40.00,0.00,1),(239582,48241,20.00,0.00,2),(239583,48241,2.50,10000000.00,3),(239584,48241,2.00,0.00,4),(239585,48241,1.00,0.00,5),(239586,48242,40.00,0.00,1),(239587,48242,20.00,0.00,2),(239588,48242,2.00,10000000.00,3),(239589,48242,2.00,0.00,4),(239590,48242,1.00,0.00,5),(239591,48243,10.00,0.00,1),(239592,48243,0.00,0.00,2),(239593,48243,0.00,0.00,3),(239594,48243,2.00,0.00,4),(239595,48243,1.00,0.00,5),(239596,48244,10.00,0.00,1),(239597,48244,20.00,0.00,2),(239598,48244,2.00,10000000.00,3),(239599,48244,2.00,0.00,4),(239600,48244,1.00,0.00,5),(239601,48245,10.00,0.00,1),(239602,48245,20.00,0.00,2),(239603,48245,2.50,10000000.00,3),(239604,48245,2.00,0.00,4),(239605,48245,2.00,0.00,5),(239606,48246,10.00,0.00,1),(239607,48246,20.00,0.00,2),(239608,48246,2.00,10000000.00,3),(239609,48246,2.00,0.00,4),(239610,48246,1.00,0.00,5),(239611,48247,10.00,0.00,1),(239612,48247,20.00,0.00,2),(239613,48247,2.50,0.00,3),(239614,48247,2.00,0.00,4),(239615,48247,0.00,0.00,5),(239616,48248,10.00,0.00,1),(239617,48248,20.00,0.00,2),(239618,48248,2.50,10000000.00,3),(239619,48248,2.00,0.00,4),(239620,48248,1.00,0.00,5),(239621,48249,5.00,0.00,1),(239622,48249,20.00,0.00,2),(239623,48249,2.00,10000000.00,3),(239624,48249,2.00,0.00,4),(239625,48249,1.00,0.00,5),(239626,48250,20.00,0.00,1),(239627,48250,20.00,0.00,2),(239628,48250,0.00,0.00,3),(239629,48250,2.00,0.00,4),(239630,48250,1.00,0.00,5),(239631,48251,20.00,0.00,1),(239632,48251,20.00,0.00,2),(239633,48251,2.00,10000000.00,3),(239634,48251,2.00,0.00,4),(239635,48251,1.00,0.00,5),(239636,48252,20.00,0.00,1),(239637,48252,20.00,0.00,2),(239638,48252,2.50,10000000.00,3),(239639,48252,2.00,0.00,4),(239640,48252,1.00,0.00,5),(239641,48254,5.00,0.00,1),(239642,48254,20.00,0.00,2),(239643,48254,2.00,10000000.00,3),(239644,48254,2.00,0.00,4),(239645,48254,1.00,0.00,5),(239646,48255,20.00,0.00,1),(239647,48255,20.00,0.00,2),(239648,48255,2.50,10000000.00,3),(239649,48255,2.00,0.00,4),(239650,48255,1.00,0.00,5),(239651,48256,20.00,0.00,1),(239652,48256,20.00,0.00,2),(239653,48256,2.00,10000000.00,3),(239654,48256,2.00,0.00,4),(239655,48256,1.00,0.00,5),(239656,48257,20.00,0.00,1),(239657,48257,20.00,0.00,2),(239658,48257,2.50,10000000.00,3),(239659,48257,2.00,0.00,4),(239660,48257,1.00,0.00,5),(239661,48258,20.00,0.00,1),(239662,48258,20.00,0.00,2),(239663,48258,2.00,10000000.00,3),(239664,48258,2.00,0.00,4),(239665,48258,1.00,0.00,5),(239666,48259,20.00,0.00,1),(239667,48259,20.00,0.00,2),(239668,48259,2.50,10000000.00,3),(239669,48259,2.00,0.00,4),(239670,48259,1.00,0.00,5),(239671,48260,20.00,0.00,1),(239672,48260,20.00,0.00,2),(239673,48260,2.00,10000000.00,3),(239674,48260,2.00,0.00,4),(239675,48260,1.00,0.00,5),(239676,48261,20.00,0.00,1),(239677,48261,20.00,0.00,2),(239678,48261,2.50,10000000.00,3),(239679,48261,2.00,0.00,4),(239680,48261,1.00,0.00,5),(239681,48262,20.00,0.00,1),(239682,48262,20.00,0.00,2),(239683,48262,2.00,10000000.00,3),(239684,48262,2.00,0.00,4),(239685,48262,1.00,0.00,5),(239686,48263,10.00,0.00,1),(239687,48263,20.00,0.00,2),(239688,48263,2.00,10000000.00,3),(239689,48263,2.00,0.00,4),(239690,48263,1.00,0.00,5),(239691,48264,10.00,0.00,1),(239692,48264,20.00,0.00,2),(239693,48264,2.00,10000000.00,3),(239694,48264,2.00,0.00,4),(239695,48264,1.00,0.00,5),(239696,48265,10.00,0.00,1),(239697,48265,20.00,0.00,2),(239698,48265,2.50,0.00,3),(239699,48265,2.00,0.00,4),(239700,48265,0.00,0.00,5),(239701,48266,10.00,0.00,1),(239702,48266,20.00,0.00,2),(239703,48266,2.50,10000000.00,3),(239704,48266,2.00,0.00,4),(239705,48266,1.00,0.00,5),(239706,48267,10.00,0.00,1),(239707,48267,20.00,0.00,2),(239708,48267,2.50,10000000.00,3),(239709,48267,2.00,0.00,4),(239710,48267,1.00,0.00,5),(239711,48268,20.00,0.00,1),(239712,48268,20.00,0.00,2),(239713,48268,2.50,10000000.00,3),(239714,48268,2.00,0.00,4),(239715,48268,1.00,0.00,5),(239716,48269,20.00,0.00,1),(239717,48269,20.00,0.00,2),(239718,48269,2.50,10000000.00,3),(239719,48269,2.00,0.00,4),(239720,48269,1.00,0.00,5),(239721,48270,20.00,0.00,1),(239722,48270,20.00,0.00,2),(239723,48270,2.50,10000000.00,3),(239724,48270,2.00,0.00,4),(239725,48270,1.00,0.00,5),(239726,48271,30.00,0.00,1),(239727,48271,20.00,0.00,2),(239728,48271,2.50,10000000.00,3),(239729,48271,2.00,0.00,4),(239730,48271,1.00,0.00,5),(239731,48272,30.00,0.00,1),(239732,48272,20.00,0.00,2),(239733,48272,2.00,10000000.00,3),(239734,48272,2.00,0.00,4),(239735,48272,1.00,0.00,5),(239736,48273,30.00,0.00,1),(239737,48273,20.00,0.00,2),(239738,48273,2.50,10000000.00,3),(239739,48273,2.00,0.00,4),(239740,48273,1.00,0.00,5),(239741,48274,10.00,0.00,1),(239742,48274,20.00,0.00,2),(239743,48274,2.00,10000000.00,3),(239744,48274,2.00,0.00,4),(239745,48274,1.00,0.00,5),(239746,48275,10.00,0.00,1),(239747,48275,20.00,0.00,2),(239748,48275,2.50,10000000.00,3),(239749,48275,3.00,0.00,4),(239750,48275,1.00,0.00,5),(239751,48276,10.00,0.00,1),(239752,48276,20.00,0.00,2),(239753,48276,2.00,10000000.00,3),(239754,48276,2.00,0.00,4),(239755,48276,1.00,0.00,5),(239756,48277,10.00,0.00,1),(239757,48277,20.00,0.00,2),(239758,48277,2.50,10000000.00,3),(239759,48277,2.00,0.00,4),(239760,48277,1.00,0.00,5),(239761,48278,50.00,0.00,1),(239762,48278,20.00,0.00,2),(239763,48278,2.50,10000000.00,3),(239764,48278,2.00,0.00,4),(239765,48278,1.00,0.00,5),(239766,48279,50.00,0.00,1),(239767,48279,20.00,0.00,2),(239768,48279,2.00,10000000.00,3),(239769,48279,2.00,0.00,4),(239770,48279,1.00,0.00,5),(239771,48280,50.00,0.00,1),(239772,48280,20.00,0.00,2),(239773,48280,2.50,10000000.00,3),(239774,48280,2.00,0.00,4),(239775,48280,1.00,0.00,5),(239776,48281,50.00,0.00,1),(239777,48281,20.00,0.00,2),(239778,48281,2.00,10000000.00,3),(239779,48281,2.00,0.00,4),(239780,48281,1.00,0.00,5),(239781,48282,30.00,0.00,1),(239782,48282,20.00,0.00,2),(239783,48282,2.50,10000000.00,3),(239784,48282,2.00,0.00,4),(239785,48282,1.00,0.00,5),(239786,48283,30.00,0.00,1),(239787,48283,20.00,0.00,2),(239788,48283,2.00,10000000.00,3),(239789,48283,2.00,0.00,4),(239790,48283,1.00,0.00,5),(239791,48284,30.00,0.00,1),(239792,48284,20.00,0.00,2),(239793,48284,2.50,10000000.00,3),(239794,48284,2.00,0.00,4),(239795,48284,1.00,0.00,5),(239796,48285,25.00,0.00,1),(239797,48285,20.00,0.00,2),(239798,48285,2.00,10000000.00,3),(239799,48285,2.00,0.00,4),(239800,48285,1.00,0.00,5),(239801,48286,20.00,0.00,1),(239802,48286,20.00,0.00,2),(239803,48286,2.50,10000000.00,3),(239804,48286,2.00,0.00,4),(239805,48286,1.00,0.00,5),(239806,48287,20.00,0.00,1),(239807,48287,20.00,0.00,2),(239808,48287,2.00,10000000.00,3),(239809,48287,2.00,0.00,4),(239810,48287,1.00,0.00,5),(239811,48288,20.00,0.00,1),(239812,48288,20.00,0.00,2),(239813,48288,2.50,10000000.00,3),(239814,48288,2.00,0.00,4),(239815,48288,1.00,0.00,5),(239816,48289,10.00,0.00,1),(239817,48289,20.00,0.00,2),(239818,48289,2.50,10000000.00,3),(239819,48289,2.00,0.00,4),(239820,48289,1.00,0.00,5),(239821,48290,10.00,0.00,1),(239822,48290,20.00,0.00,2),(239823,48290,2.50,10000000.00,3),(239824,48290,2.00,0.00,4),(239825,48290,1.00,0.00,5),(239826,48291,10.00,0.00,1),(239827,48291,20.00,0.00,2),(239828,48291,2.50,10000000.00,3),(239829,48291,2.00,0.00,4),(239830,48291,1.00,0.00,5),(239831,48292,10.00,0.00,1),(239832,48292,20.00,0.00,2),(239833,48292,2.00,10000000.00,3),(239834,48292,2.00,0.00,4),(239835,48292,1.00,0.00,5),(239836,48293,10.00,0.00,1),(239837,48293,20.00,0.00,2),(239838,48293,2.50,10000000.00,3),(239839,48293,2.00,0.00,4),(239840,48293,1.00,0.00,5),(239841,48294,15.00,0.00,1),(239842,48294,20.00,0.00,2),(239843,48294,2.00,10000000.00,3),(239844,48294,2.00,0.00,4),(239845,48294,1.00,0.00,5),(239846,48295,30.00,2500.00,1),(239847,48295,20.00,0.00,2),(239848,48295,2.50,10000000.00,3),(239849,48295,2.00,0.00,4),(239850,48295,1.00,0.00,5),(239851,48296,30.00,2500.00,1),(239852,48296,20.00,0.00,2),(239853,48296,2.00,10000000.00,3),(239854,48296,2.00,0.00,4),(239855,48296,1.00,0.00,5),(239856,48297,30.00,2500.00,1),(239857,48297,20.00,0.00,2),(239858,48297,2.50,10000000.00,3),(239859,48297,2.00,0.00,4),(239860,48297,1.00,0.00,5),(239861,48298,30.00,2500.00,1),(239862,48298,20.00,0.00,2),(239863,48298,2.00,10000000.00,3),(239864,48298,2.00,0.00,4),(239865,48298,1.00,0.00,5),(239866,48299,30.00,5000.00,1),(239867,48299,20.00,0.00,2),(239868,48299,2.50,10000000.00,3),(239869,48299,2.00,0.00,4),(239870,48299,1.00,0.00,5),(239871,48300,30.00,5000.00,1),(239872,48300,20.00,0.00,2),(239873,48300,2.00,10000000.00,3),(239874,48300,2.00,0.00,4),(239875,48300,1.00,0.00,5),(239876,48301,30.00,5000.00,1),(239877,48301,20.00,0.00,2),(239878,48301,2.50,10000000.00,3),(239879,48301,2.00,0.00,4),(239880,48301,1.00,0.00,5),(239881,48302,30.00,5000.00,1),(239882,48302,20.00,0.00,2),(239883,48302,2.00,10000000.00,3),(239884,48302,2.00,0.00,4),(239885,48302,1.00,0.00,5),(239886,48303,10.00,1000.00,1),(239887,48303,20.00,0.00,2),(239888,48303,2.50,10000000.00,3),(239889,48303,2.00,0.00,4),(239890,48303,1.00,0.00,5),(239891,48304,10.00,1000.00,1),(239892,48304,20.00,0.00,2),(239893,48304,2.00,10000000.00,3),(239894,48304,2.00,0.00,4),(239895,48304,1.00,0.00,5),(239896,48305,10.00,1000.00,1),(239897,48305,20.00,0.00,2),(239898,48305,2.50,10000000.00,3),(239899,48305,2.00,0.00,4),(239900,48305,1.00,0.00,5),(239901,48306,10.00,1000.00,1),(239902,48306,20.00,0.00,2),(239903,48306,2.00,10000000.00,3),(239904,48306,2.00,0.00,4),(239905,48306,1.00,0.00,5),(239906,48307,50.00,0.00,1),(239907,48307,20.00,0.00,2),(239908,48307,2.50,10000000.00,3),(239909,48307,2.00,0.00,4),(239910,48307,1.00,0.00,5),(239911,48308,50.00,0.00,1),(239912,48308,20.00,0.00,2),(239913,48308,2.00,10000000.00,3),(239914,48308,2.00,0.00,4),(239915,48308,1.00,0.00,5),(239916,48309,50.00,0.00,1),(239917,48309,20.00,0.00,2),(239918,48309,2.50,10000000.00,3),(239919,48309,2.00,0.00,4),(239920,48309,1.00,0.00,5),(239921,48310,50.00,0.00,1),(239922,48310,20.00,0.00,2),(239923,48310,2.00,10000000.00,3),(239924,48310,2.00,0.00,4),(239925,48310,1.00,0.00,5),(239926,48311,30.00,0.00,1),(239927,48311,20.00,0.00,2),(239928,48311,2.50,10000000.00,3),(239929,48311,2.00,0.00,4),(239930,48311,1.00,0.00,5),(239931,48312,30.00,0.00,1),(239932,48312,20.00,0.00,2),(239933,48312,2.00,10000000.00,3),(239934,48312,2.00,0.00,4),(239935,48312,1.00,0.00,5),(239936,48313,30.00,0.00,1),(239937,48313,20.00,0.00,2),(239938,48313,2.50,10000000.00,3),(239939,48313,2.00,0.00,4),(239940,48313,1.00,0.00,5),(239941,48314,25.00,0.00,1),(239942,48314,20.00,0.00,2),(239943,48314,2.00,10000000.00,3),(239944,48314,2.00,0.00,4),(239945,48314,1.00,0.00,5),(239946,48315,30.00,0.00,1),(239947,48315,20.00,0.00,2),(239948,48315,2.50,10000000.00,3),(239949,48315,2.00,0.00,4),(239950,48315,1.00,0.00,5),(239951,48316,30.00,0.00,1),(239952,48316,20.00,0.00,2),(239953,48316,2.00,10000000.00,3),(239954,48316,2.00,0.00,4),(239955,48316,1.00,0.00,5),(239956,48317,30.00,0.00,1),(239957,48317,20.00,0.00,2),(239958,48317,2.50,10000000.00,3),(239959,48317,2.00,0.00,4),(239960,48317,1.00,0.00,5),(239961,48318,10.00,0.00,1),(239962,48318,20.00,0.00,2),(239963,48318,2.50,10000000.00,3),(239964,48318,2.00,0.00,4),(239965,48318,1.00,0.00,5),(239966,48319,10.00,0.00,1),(239967,48319,20.00,0.00,2),(239968,48319,2.00,10000000.00,3),(239969,48319,2.00,0.00,4),(239970,48319,1.00,0.00,5),(239971,48320,10.00,0.00,1),(239972,48320,20.00,0.00,2),(239973,48320,2.50,10000000.00,3),(239974,48320,2.00,0.00,4),(239975,48320,1.00,0.00,5),(239976,48321,5.00,0.00,1),(239977,48321,20.00,0.00,2),(239978,48321,2.00,10000000.00,3),(239979,48321,2.00,0.00,4),(239980,48321,1.00,0.00,5),(239981,48322,10.00,0.00,1),(239982,48322,20.00,0.00,2),(239983,48322,2.50,0.00,3),(239984,48322,2.00,0.00,4),(239985,48322,0.00,0.00,5),(239986,48323,10.00,0.00,1),(239987,48323,20.00,0.00,2),(239988,48323,2.50,10000000.00,3),(239989,48323,2.00,0.00,4),(239990,48323,0.00,0.00,5),(239991,48324,10.00,0.00,1),(239992,48324,20.00,0.00,2),(239993,48324,2.00,10000000.00,3),(239994,48324,2.00,0.00,4),(239995,48324,1.00,0.00,5),(239996,48325,10.00,0.00,1),(239997,48325,20.00,0.00,2),(239998,48325,2.50,10000000.00,3),(239999,48325,2.00,0.00,4),(240000,48325,1.00,0.00,5),(240001,48326,20.00,0.00,1),(240002,48326,20.00,0.00,2),(240003,48326,2.50,10000000.00,3),(240004,48326,2.00,0.00,4),(240005,48326,1.00,0.00,5),(240006,48327,20.00,0.00,1),(240007,48327,20.00,0.00,2),(240008,48327,2.00,10000000.00,3),(240009,48327,2.00,0.00,4),(240010,48327,1.00,0.00,5),(240011,48328,30.00,0.00,1),(240012,48328,20.00,0.00,2),(240013,48328,2.50,0.00,3),(240014,48328,2.00,0.00,4),(240015,48328,0.00,0.00,5),(240016,48329,30.00,0.00,1),(240017,48329,20.00,0.00,2),(240018,48329,2.50,10000000.00,3),(240019,48329,2.00,0.00,4),(240020,48329,1.00,0.00,5),(240021,48330,30.00,0.00,1),(240022,48330,20.00,0.00,2),(240023,48330,2.00,10000000.00,3),(240024,48330,2.00,0.00,4),(240025,48330,1.00,0.00,5),(240026,48331,30.00,0.00,1),(240027,48331,20.00,0.00,2),(240028,48331,2.50,10000000.00,3),(240029,48331,2.00,0.00,4),(240030,48331,1.00,0.00,5),(240031,48332,20.00,0.00,1),(240032,48332,20.00,0.00,2),(240033,48332,2.50,0.00,3),(240034,48332,2.00,0.00,4),(240035,48332,0.00,0.00,5),(240036,48333,20.00,0.00,1),(240037,48333,20.00,0.00,2),(240038,48333,2.50,10000000.00,3),(240039,48333,2.00,0.00,4),(240040,48333,1.00,0.00,5),(240041,48334,20.00,0.00,1),(240042,48334,20.00,0.00,2),(240043,48334,2.00,10000000.00,3),(240044,48334,2.00,0.00,4),(240045,48334,1.00,0.00,5),(240046,48335,20.00,0.00,1),(240047,48335,20.00,0.00,2),(240048,48335,2.50,10000000.00,3),(240049,48335,2.00,0.00,4),(240050,48335,1.00,0.00,5),(240051,48336,20.00,5000.00,1),(240052,48336,20.00,0.00,2),(240053,48336,10.00,0.00,3),(240054,48336,2.00,0.00,4),(240055,48336,0.00,0.00,5),(240056,48337,20.00,5000.00,1),(240057,48337,20.00,0.00,2),(240058,48337,10.00,10000000.00,3),(240059,48337,2.00,0.00,4),(240060,48337,1.00,0.00,5),(240061,48338,10.00,5000.00,1),(240062,48338,20.00,0.00,2),(240063,48338,0.00,0.00,3),(240064,48338,0.00,0.00,4),(240065,48338,0.00,0.00,5),(240066,48339,10.00,20000.00,1),(240067,48339,20.00,0.00,2),(240068,48339,0.00,0.00,3),(240069,48339,0.00,0.00,4),(240070,48339,0.00,0.00,5),(240071,48340,10.00,10000.00,1),(240072,48340,20.00,0.00,2),(240073,48340,10.00,10000000.00,3),(240074,48340,2.00,0.00,4),(240075,48340,1.00,0.00,5),(240076,48341,10.00,10000.00,1),(240077,48341,20.00,0.00,2),(240078,48341,0.00,0.00,3),(240079,48341,0.00,0.00,4),(240080,48341,0.00,0.00,5),(240081,48342,20.00,2500.00,1),(240082,48342,20.00,0.00,2),(240083,48342,10.00,0.00,3),(240084,48342,2.00,0.00,4),(240085,48342,0.00,0.00,5),(240086,48343,20.00,2500.00,1),(240087,48343,20.00,0.00,2),(240088,48343,10.00,10000000.00,3),(240089,48343,2.00,0.00,4),(240090,48343,1.00,0.00,5),(240091,48344,10.00,2500.00,1),(240092,48344,20.00,0.00,2),(240093,48344,0.00,0.00,3),(240094,48344,0.00,0.00,4),(240095,48344,0.00,0.00,5),(240096,48345,10.00,5000.00,1),(240097,48345,20.00,0.00,2),(240098,48345,0.00,0.00,3),(240099,48345,0.00,0.00,4),(240100,48345,0.00,0.00,5),(240101,48346,20.00,5000.00,1),(240102,48346,20.00,0.00,2),(240103,48346,10.00,0.00,3),(240104,48346,2.00,0.00,4),(240105,48346,0.00,0.00,5),(240106,48347,20.00,5000.00,1),(240107,48347,20.00,0.00,2),(240108,48347,10.00,10000000.00,3),(240109,48347,2.00,0.00,4),(240110,48347,1.00,0.00,5),(240111,48348,10.00,5000.00,1),(240112,48348,20.00,0.00,2),(240113,48348,0.00,0.00,3),(240114,48348,0.00,0.00,4),(240115,48348,0.00,0.00,5),(240116,48349,10.00,100000.00,1),(240117,48349,20.00,0.00,2),(240118,48349,10.00,0.00,3),(240119,48349,2.00,0.00,4),(240120,48349,0.00,0.00,5),(240121,48350,10.00,100000.00,1),(240122,48350,20.00,0.00,2),(240123,48350,10.00,1000000.00,3),(240124,48350,2.00,0.00,4),(240125,48350,1.00,0.00,5),(240126,48351,10.00,100000.00,1),(240127,48351,20.00,0.00,2),(240128,48351,0.00,0.00,3),(240129,48351,0.00,0.00,4),(240130,48351,0.00,0.00,5),(240131,48352,10.00,200000.00,1),(240132,48352,20.00,0.00,2),(240133,48352,0.00,0.00,3),(240134,48352,0.00,0.00,4),(240135,48352,0.00,0.00,5),(240136,48353,1.00,5000000.00,1),(240137,48353,20.00,0.00,2),(240138,48353,0.00,0.00,3),(240139,48353,0.00,0.00,4),(240140,48353,0.00,0.00,5),(240141,48354,20.00,0.00,1),(240142,48354,20.00,0.00,2),(240143,48354,10.00,1000000.00,3),(240144,48354,2.00,0.00,4),(240145,48354,1.00,0.00,5),(240146,48355,20.00,0.00,1),(240147,48355,20.00,0.00,2),(240148,48355,0.00,0.00,3),(240149,48355,0.00,0.00,4),(240150,48355,0.00,0.00,5),(240151,48356,20.00,0.00,1),(240152,48356,20.00,0.00,2),(240153,48356,10.00,0.00,3),(240154,48356,2.00,0.00,4),(240155,48356,0.00,0.00,5),(240156,48357,20.00,2500.00,1),(240157,48357,20.00,0.00,2),(240158,48357,10.00,10000000.00,3),(240159,48357,2.00,0.00,4),(240160,48357,1.00,0.00,5),(240161,48358,10.00,0.00,1),(240162,48358,20.00,0.00,2),(240163,48358,0.00,0.00,3),(240164,48358,0.00,0.00,4),(240165,48358,0.00,0.00,5),(240166,48359,2.00,20000.00,1),(240167,48359,20.00,0.00,2),(240168,48359,10.00,0.00,3),(240169,48359,2.00,0.00,4),(240170,48359,0.00,0.00,5),(240171,48360,2.00,50000.00,1),(240172,48360,20.00,0.00,2),(240173,48360,10.00,10000000.00,3),(240174,48360,2.00,0.00,4),(240175,48360,1.00,0.00,5),(240176,48361,2.00,50000.00,1),(240177,48361,20.00,0.00,2),(240178,48361,0.00,0.00,3),(240179,48361,0.00,0.00,4),(240180,48361,0.00,0.00,5),(240181,48362,2.00,50000.00,1),(240182,48362,20.00,0.00,2),(240183,48362,0.00,0.00,3),(240184,48362,0.00,0.00,4),(240185,48362,0.00,0.00,5),(240186,48363,2.00,75000.00,1),(240187,48363,20.00,0.00,2),(240188,48363,0.00,0.00,3),(240189,48363,0.00,0.00,4),(240190,48363,0.00,0.00,5),(240191,48364,10.00,30000.00,1),(240192,48364,20.00,0.00,2),(240193,48364,0.00,0.00,3),(240194,48364,0.00,0.00,4),(240195,48364,0.00,0.00,5),(240196,48365,20.00,120000.00,1),(240197,48365,20.00,0.00,2),(240198,48365,10.00,0.00,3),(240199,48365,2.00,0.00,4),(240200,48365,0.00,0.00,5),(240201,48366,20.00,120000.00,1),(240202,48366,20.00,0.00,2),(240203,48366,10.00,10000000.00,3),(240204,48366,2.00,0.00,4),(240205,48366,1.00,0.00,5),(240206,48367,20.00,120000.00,1),(240207,48367,20.00,0.00,2),(240208,48367,0.00,0.00,3),(240209,48367,0.00,0.00,4),(240210,48367,0.00,0.00,5),(240211,48368,10.00,180000.00,1),(240212,48368,20.00,0.00,2),(240213,48368,0.00,0.00,3),(240214,48368,0.00,0.00,4),(240215,48368,0.00,0.00,5),(240216,48369,10.00,120000.00,1),(240217,48369,20.00,0.00,2),(240218,48369,0.00,0.00,3),(240219,48369,0.00,0.00,4),(240220,48369,0.00,0.00,5),(240221,48370,10.00,120000.00,1),(240222,48370,20.00,0.00,2),(240223,48370,10.00,10000000.00,3),(240224,48370,2.00,0.00,4),(240225,48370,1.00,0.00,5),(240226,48371,10.00,120000.00,1),(240227,48371,20.00,0.00,2),(240228,48371,0.00,0.00,3),(240229,48371,0.00,0.00,4),(240230,48371,0.00,0.00,5),(240231,48372,2.00,120000.00,1),(240232,48372,20.00,0.00,2),(240233,48372,0.00,0.00,3),(240234,48372,0.00,0.00,4),(240235,48372,0.00,0.00,5),(240236,48373,2.00,180000.00,1),(240237,48373,20.00,0.00,2),(240238,48373,0.00,0.00,3),(240239,48373,0.00,0.00,4),(240240,48373,0.00,0.00,5),(240241,48374,30.00,2500.00,1),(240242,48374,20.00,0.00,2),(240243,48374,10.00,0.00,3),(240244,48374,2.00,0.00,4),(240245,48374,0.00,0.00,5),(240246,48375,30.00,2500.00,1),(240247,48375,20.00,0.00,2),(240248,48375,10.00,10000000.00,3),(240249,48375,2.00,0.00,4),(240250,48375,1.00,0.00,5),(240251,48376,30.00,2500.00,1),(240252,48376,20.00,0.00,2),(240253,48376,0.00,0.00,3),(240254,48376,0.00,0.00,4),(240255,48376,0.00,0.00,5),(240256,48377,30.00,5000.00,1),(240257,48377,20.00,0.00,2),(240258,48377,0.00,0.00,3),(240259,48377,0.00,0.00,4),(240260,48377,0.00,0.00,5),(240261,48378,30.00,5000.00,1),(240262,48378,20.00,0.00,2),(240263,48378,10.00,0.00,3),(240264,48378,2.00,0.00,4),(240265,48378,1.00,0.00,5),(240266,48379,30.00,5000.00,1),(240267,48379,20.00,0.00,2),(240268,48379,10.00,10000000.00,3),(240269,48379,2.00,0.00,4),(240270,48379,1.00,0.00,5),(240271,48380,30.00,5000.00,1),(240272,48380,20.00,0.00,2),(240273,48380,0.00,0.00,3),(240274,48380,0.00,0.00,4),(240275,48380,0.00,0.00,5),(240276,48381,30.00,10000.00,1),(240277,48381,20.00,0.00,2),(240278,48381,0.00,0.00,3),(240279,48381,0.00,0.00,4),(240280,48381,0.00,0.00,5),(240281,48382,20.00,2500.00,1),(240282,48382,20.00,0.00,2),(240283,48382,10.00,0.00,3),(240284,48382,2.00,0.00,4),(240285,48382,0.00,0.00,5),(240286,48383,20.00,2500.00,1),(240287,48383,20.00,0.00,2),(240288,48383,10.00,10000000.00,3),(240289,48383,2.00,0.00,4),(240290,48383,1.00,0.00,5),(240291,48384,20.00,0.00,1),(240292,48384,20.00,0.00,2),(240293,48384,10.00,10000000.00,3),(240294,48384,2.00,0.00,4),(240295,48384,1.00,0.00,5),(240296,48385,10.00,0.00,1),(240297,48385,20.00,0.00,2),(240298,48385,0.00,0.00,3),(240299,48385,0.00,0.00,4),(240300,48385,0.00,0.00,5),(240301,48386,10.00,0.00,1),(240302,48386,20.00,0.00,2),(240303,48386,0.00,0.00,3),(240304,48386,0.00,0.00,4),(240305,48386,0.00,0.00,5),(240306,48387,10.00,1000.00,1),(240307,48387,20.00,0.00,2),(240308,48387,10.00,0.00,3),(240309,48387,2.00,0.00,4),(240310,48387,0.00,0.00,5),(240311,48388,10.00,1000.00,1),(240312,48388,20.00,0.00,2),(240313,48388,10.00,10000000.00,3),(240314,48388,2.00,0.00,4),(240315,48388,1.00,0.00,5),(240316,48389,10.00,1000.00,1),(240317,48389,20.00,0.00,2),(240318,48389,0.00,0.00,3),(240319,48389,0.00,0.00,4),(240320,48389,0.00,0.00,5),(240321,48390,5.00,2500.00,1),(240322,48390,20.00,0.00,2),(240323,48390,10.00,0.00,3),(240324,48390,2.00,0.00,4),(240325,48390,0.00,0.00,5),(240326,48391,5.00,2500.00,1),(240327,48391,20.00,0.00,2),(240328,48391,10.00,10000000.00,3),(240329,48391,2.00,0.00,4),(240330,48391,1.00,0.00,5),(240331,48392,10.00,2500.00,1),(240332,48392,20.00,0.00,2),(240333,48392,10.00,10000000.00,3),(240334,48392,2.00,0.00,4),(240335,48392,1.00,0.00,5),(240336,48393,10.00,2500.00,1),(240337,48393,20.00,0.00,2),(240338,48393,0.00,0.00,3),(240339,48393,0.00,0.00,4),(240340,48393,0.00,0.00,5),(240341,48394,10.00,5000.00,1),(240342,48394,20.00,0.00,2),(240343,48394,0.00,0.00,3),(240344,48394,0.00,0.00,4),(240345,48394,0.00,0.00,5),(240346,48395,20.00,2500.00,1),(240347,48395,20.00,0.00,2),(240348,48395,10.00,10000000.00,3),(240349,48395,2.00,0.00,4),(240350,48395,1.00,0.00,5),(240351,48396,10.00,2500.00,1),(240352,48396,20.00,0.00,2),(240353,48396,0.00,0.00,3),(240354,48396,0.00,0.00,4),(240355,48396,0.00,0.00,5),(240356,48397,5.00,20000.00,1),(240357,48397,20.00,0.00,2),(240358,48397,10.00,0.00,3),(240359,48397,2.00,0.00,4),(240360,48397,0.00,0.00,5),(240361,48398,5.00,20000.00,1),(240362,48398,20.00,0.00,2),(240363,48398,10.00,10000000.00,3),(240364,48398,2.00,0.00,4),(240365,48398,1.00,0.00,5),(240366,48399,10.00,20000.00,1),(240367,48399,20.00,0.00,2),(240368,48399,10.00,10000000.00,3),(240369,48399,2.00,0.00,4),(240370,48399,1.00,0.00,5),(240371,48400,10.00,20000.00,1),(240372,48400,20.00,0.00,2),(240373,48400,0.00,0.00,3),(240374,48400,0.00,0.00,4),(240375,48400,0.00,0.00,5),(240376,48401,10.00,30000.00,1),(240377,48401,20.00,0.00,2),(240378,48401,0.00,0.00,3),(240379,48401,0.00,0.00,4),(240380,48401,0.00,0.00,5),(240381,48402,1.00,20000.00,1),(240382,48402,20.00,0.00,2),(240383,48402,10.00,0.00,3),(240384,48402,2.00,0.00,4),(240385,48402,0.00,0.00,5),(240386,48403,1.00,20000.00,1),(240387,48403,20.00,0.00,2),(240388,48403,10.00,10000000.00,3),(240389,48403,2.00,0.00,4),(240390,48403,1.00,0.00,5),(240391,48404,1.00,20000.00,1),(240392,48404,20.00,0.00,2),(240393,48404,0.00,0.00,3),(240394,48404,0.00,0.00,4),(240395,48404,0.00,0.00,5),(240396,48405,2.00,20000.00,1),(240397,48405,20.00,0.00,2),(240398,48405,0.00,0.00,3),(240399,48405,0.00,0.00,4),(240400,48405,0.00,0.00,5),(240401,48406,2.00,75000.00,1),(240402,48406,20.00,0.00,2),(240403,48406,0.00,0.00,3),(240404,48406,0.00,0.00,4),(240405,48406,0.00,0.00,5),(240406,48407,1.00,20000.00,1),(240407,48407,20.00,0.00,2),(240408,48407,10.00,0.00,3),(240409,48407,2.00,0.00,4),(240410,48407,0.00,0.00,5),(240411,48408,1.00,50000.00,1),(240412,48408,20.00,0.00,2),(240413,48408,10.00,10000000.00,3),(240414,48408,2.00,0.00,4),(240415,48408,1.00,0.00,5),(240416,48409,1.00,50000.00,1),(240417,48409,20.00,0.00,2),(240418,48409,0.00,0.00,3),(240419,48409,0.00,0.00,4),(240420,48409,0.00,0.00,5),(240421,48410,2.00,50000.00,1),(240422,48410,20.00,0.00,2),(240423,48410,0.00,0.00,3),(240424,48410,0.00,0.00,4),(240425,48410,0.00,0.00,5),(240426,48411,2.00,75000.00,1),(240427,48411,20.00,0.00,2),(240428,48411,0.00,0.00,3),(240429,48411,0.00,0.00,4),(240430,48411,0.00,0.00,5),(240431,48412,2.00,50000.00,1),(240432,48412,20.00,0.00,2),(240433,48412,0.00,0.00,3),(240434,48412,0.00,0.00,4),(240435,48412,0.00,0.00,5),(240436,48413,0.00,0.00,1),(240437,48413,20.00,0.00,2),(240438,48413,0.00,0.00,3),(240439,48413,0.00,0.00,4),(240440,48413,0.00,0.00,5),(240441,48414,20.00,75000.00,1),(240442,48414,20.00,0.00,2),(240443,48414,0.00,0.00,3),(240444,48414,0.00,0.00,4),(240445,48414,0.00,0.00,5),(240446,48415,1.00,50000.00,1),(240447,48415,20.00,0.00,2),(240448,48415,0.00,0.00,3),(240449,48415,0.00,0.00,4),(240450,48415,0.00,0.00,5),(240451,48416,0.00,0.00,1),(240452,48416,20.00,0.00,2),(240453,48416,0.00,0.00,3),(240454,48416,0.00,0.00,4),(240455,48416,0.00,0.00,5),(240456,48417,20.00,75000.00,1),(240457,48417,20.00,0.00,2),(240458,48417,0.00,0.00,3),(240459,48417,0.00,0.00,4),(240460,48417,0.00,0.00,5),(240461,48418,30.00,0.00,1),(240462,48418,20.00,0.00,2),(240463,48418,10.00,1000000.00,3),(240464,48418,2.00,0.00,4),(240465,48418,1.00,0.00,5),(240466,48419,3.00,0.00,1),(240467,48419,20.00,0.00,2),(240468,48419,0.00,0.00,3),(240469,48419,2.00,0.00,4),(240470,48419,1.00,0.00,5),(240471,48420,30.00,0.00,1),(240472,48420,20.00,0.00,2),(240473,48420,10.00,10000000.00,3),(240474,48420,2.00,0.00,4),(240475,48420,1.00,0.00,5),(240476,48421,10.00,0.00,1),(240477,48421,20.00,0.00,2),(240478,48421,10.00,10000000.00,3),(240479,48421,2.00,0.00,4),(240480,48421,1.00,0.00,5),(240481,48422,10.00,0.00,1),(240482,48422,20.00,0.00,2),(240483,48422,10.00,1000000.00,3),(240484,48422,2.00,0.00,4),(240485,48422,1.00,0.00,5),(240486,48423,10.00,0.00,1),(240487,48423,20.00,0.00,2),(240488,48423,0.00,0.00,3),(240489,48423,2.00,0.00,4),(240490,48423,1.00,0.00,5),(240491,48424,10.00,0.00,1),(240492,48424,20.00,0.00,2),(240493,48424,10.00,1000000.00,3),(240494,48424,2.00,0.00,4),(240495,48424,1.00,0.00,5),(240496,48425,10.00,0.00,1),(240497,48425,20.00,0.00,2),(240498,48425,0.00,0.00,3),(240499,48425,2.00,0.00,4),(240500,48425,1.00,0.00,5),(240501,48426,5.00,0.00,1),(240502,48426,20.00,0.00,2),(240503,48426,2.00,10000000.00,3),(240504,48426,2.00,0.00,4),(240505,48426,1.00,0.00,5),(240506,48427,5.00,0.00,1),(240507,48427,20.00,0.00,2),(240508,48427,10.00,10000000.00,3),(240509,48427,2.00,0.00,4),(240510,48427,1.00,0.00,5),(240511,48428,20.00,0.00,1),(240512,48428,20.00,0.00,2),(240513,48428,10.00,1000000.00,3),(240514,48428,2.00,0.00,4),(240515,48428,1.00,0.00,5),(240516,48429,20.00,0.00,1),(240517,48429,0.00,0.00,2),(240518,48429,0.00,0.00,3),(240519,48429,2.00,0.00,4),(240520,48429,1.00,0.00,5),(240521,48430,20.00,0.00,1),(240522,48430,20.00,0.00,2),(240523,48430,10.00,1000000.00,3),(240524,48430,2.00,0.00,4),(240525,48430,1.00,0.00,5),(240526,48431,5.00,0.00,1),(240527,48431,20.00,0.00,2),(240528,48431,2.00,10000000.00,3),(240529,48431,2.00,0.00,4),(240530,48431,1.00,0.00,5),(240531,48432,5.00,0.00,1),(240532,48432,20.00,0.00,2),(240533,48432,10.00,10000000.00,3),(240534,48432,2.00,0.00,4),(240535,48432,1.00,0.00,5),(240536,48433,20.00,0.00,1),(240537,48433,20.00,0.00,2),(240538,48433,10.00,1000000.00,3),(240539,48433,2.00,0.00,4),(240540,48433,1.00,0.00,5),(240541,48434,20.00,0.00,1),(240542,48434,20.00,0.00,2),(240543,48434,0.00,0.00,3),(240544,48434,2.00,0.00,4),(240545,48434,1.00,0.00,5),(240546,48435,20.00,0.00,1),(240547,48435,20.00,0.00,2),(240548,48435,10.00,10000000.00,3),(240549,48435,2.00,0.00,4),(240550,48435,1.00,0.00,5),(240551,48436,20.00,0.00,1),(240552,48436,20.00,0.00,2),(240553,48436,10.00,1000000.00,3),(240554,48436,2.00,0.00,4),(240555,48436,1.00,0.00,5),(240556,48437,20.00,0.00,1),(240557,48437,20.00,0.00,2),(240558,48437,0.00,0.00,3),(240559,48437,2.00,0.00,4),(240560,48437,1.00,0.00,5),(240561,48438,20.00,0.00,1),(240562,48438,20.00,0.00,2),(240563,48438,10.00,10000000.00,3),(240564,48438,2.00,0.00,4),(240565,48438,1.00,0.00,5),(240566,48439,20.00,0.00,1),(240567,48439,20.00,0.00,2),(240568,48439,10.00,1000000.00,3),(240569,48439,2.00,0.00,4),(240570,48439,0.00,0.00,5),(240571,48440,20.00,0.00,1),(240572,48440,20.00,0.00,2),(240573,48440,0.00,0.00,3),(240574,48440,2.00,0.00,4),(240575,48440,0.00,0.00,5),(240576,48441,10.00,0.00,1),(240577,48441,20.00,0.00,2),(240578,48441,10.00,1000000.00,3),(240579,48441,2.00,0.00,4),(240580,48441,0.00,0.00,5),(240581,48442,10.00,0.00,1),(240582,48442,20.00,0.00,2),(240583,48442,10.00,1000000.00,3),(240584,48442,2.00,0.00,4),(240585,48442,1.00,0.00,5),(240586,48443,10.00,0.00,1),(240587,48443,20.00,0.00,2),(240588,48443,0.00,0.00,3),(240589,48443,2.00,0.00,4),(240590,48443,1.00,0.00,5),(240591,48444,10.00,0.00,1),(240592,48444,20.00,0.00,2),(240593,48444,10.00,1000000.00,3),(240594,48444,2.00,0.00,4),(240595,48444,1.00,0.00,5),(240596,48445,20.00,0.00,1),(240597,48445,20.00,0.00,2),(240598,48445,10.00,1000000.00,3),(240599,48445,2.00,0.00,4),(240600,48445,1.00,0.00,5),(240601,48446,20.00,0.00,1),(240602,48446,0.00,0.00,2),(240603,48446,0.00,0.00,3),(240604,48446,2.00,0.00,4),(240605,48446,1.00,0.00,5),(240606,48447,20.00,0.00,1),(240607,48447,20.00,0.00,2),(240608,48447,10.00,1000000.00,3),(240609,48447,2.00,0.00,4),(240610,48447,1.00,0.00,5),(240611,48448,20.00,0.00,1),(240612,48448,20.00,0.00,2),(240613,48448,10.00,1000000.00,3),(240614,48448,2.00,0.00,4),(240615,48448,1.00,0.00,5),(240616,48449,20.00,0.00,1),(240617,48449,20.00,0.00,2),(240618,48449,0.00,0.00,3),(240619,48449,2.00,0.00,4),(240620,48449,1.00,0.00,5),(240621,48450,30.00,0.00,1),(240622,48450,20.00,0.00,2),(240623,48450,10.00,1000000.00,3),(240624,48450,2.00,0.00,4),(240625,48450,1.00,0.00,5),(240626,48451,30.00,0.00,1),(240627,48451,20.00,0.00,2),(240628,48451,0.00,0.00,3),(240629,48451,2.00,0.00,4),(240630,48451,1.00,0.00,5),(240631,48452,10.00,0.00,1),(240632,48452,20.00,0.00,2),(240633,48452,10.00,1000000.00,3),(240634,48452,2.00,0.00,4),(240635,48452,1.00,0.00,5),(240636,48453,10.00,0.00,1),(240637,48453,20.00,0.00,2),(240638,48453,0.00,0.00,3),(240639,48453,2.00,0.00,4),(240640,48453,1.00,0.00,5),(240641,48454,30.00,0.00,1),(240642,48454,20.00,0.00,2),(240643,48454,10.00,1000000.00,3),(240644,48454,2.00,0.00,4),(240645,48454,1.00,0.00,5),(240646,48455,30.00,0.00,1),(240647,48455,20.00,0.00,2),(240648,48455,0.00,0.00,3),(240649,48455,2.00,0.00,4),(240650,48455,1.00,0.00,5),(240651,48456,30.00,0.00,1),(240652,48456,20.00,0.00,2),(240653,48456,10.00,10000000.00,3),(240654,48456,2.00,0.00,4),(240655,48456,1.00,0.00,5),(240656,48457,30.00,0.00,1),(240657,48457,20.00,0.00,2),(240658,48457,10.00,1000000.00,3),(240659,48457,2.00,0.00,4),(240660,48457,1.00,0.00,5),(240661,48458,30.00,0.00,1),(240662,48458,20.00,0.00,2),(240663,48458,0.00,0.00,3),(240664,48458,2.00,0.00,4),(240665,48458,1.00,0.00,5),(240666,48459,25.00,0.00,1),(240667,48459,20.00,0.00,2),(240668,48459,10.00,10000000.00,3),(240669,48459,2.00,0.00,4),(240670,48459,1.00,0.00,5),(240671,48460,20.00,0.00,1),(240672,48460,20.00,0.00,2),(240673,48460,10.00,1000000.00,3),(240674,48460,2.00,0.00,4),(240675,48460,1.00,0.00,5),(240676,48461,20.00,0.00,1),(240677,48461,20.00,0.00,2),(240678,48461,0.00,0.00,3),(240679,48461,2.00,0.00,4),(240680,48461,1.00,0.00,5),(240681,48462,10.00,0.00,1),(240682,48462,20.00,0.00,2),(240683,48462,10.00,1000000.00,3),(240684,48462,2.00,0.00,4),(240685,48462,1.00,0.00,5),(240686,48463,10.00,0.00,1),(240687,48463,20.00,0.00,2),(240688,48463,0.00,0.00,3),(240689,48463,2.00,0.00,4),(240690,48463,1.00,0.00,5),(240691,48464,10.00,0.00,1),(240692,48464,20.00,0.00,2),(240693,48464,10.00,1000000.00,3),(240694,48464,2.00,0.00,4),(240695,48464,1.00,0.00,5),(240696,48465,10.00,0.00,1),(240697,48465,20.00,0.00,2),(240698,48465,0.00,0.00,3),(240699,48465,2.00,0.00,4),(240700,48465,1.00,0.00,5),(240701,48466,15.00,0.00,1),(240702,48466,20.00,0.00,2),(240703,48466,10.00,10000000.00,3),(240704,48466,2.00,0.00,4),(240705,48466,1.00,0.00,5),(240706,48467,30.00,2500.00,1),(240707,48467,20.00,0.00,2),(240708,48467,10.00,100000.00,3),(240709,48467,2.00,0.00,4),(240710,48467,1.00,0.00,5),(240711,48468,30.00,2500.00,1),(240712,48468,20.00,0.00,2),(240713,48468,0.00,0.00,3),(240714,48468,2.00,0.00,4),(240715,48468,1.00,0.00,5),(240716,48469,30.00,2500.00,1),(240717,48469,20.00,0.00,2),(240718,48469,10.00,10000000.00,3),(240719,48469,2.00,0.00,4),(240720,48469,1.00,0.00,5),(240721,48470,30.00,5000.00,1),(240722,48470,20.00,0.00,2),(240723,48470,10.00,1000000.00,3),(240724,48470,2.00,0.00,4),(240725,48470,1.00,0.00,5),(240726,48471,30.00,5000.00,1),(240727,48471,20.00,0.00,2),(240728,48471,0.00,0.00,3),(240729,48471,2.00,0.00,4),(240730,48471,1.00,0.00,5),(240731,48472,30.00,5000.00,1),(240732,48472,20.00,0.00,2),(240733,48472,10.00,1000000.00,3),(240734,48472,2.00,0.00,4),(240735,48472,1.00,0.00,5),(240736,48473,10.00,1000.00,1),(240737,48473,20.00,0.00,2),(240738,48473,10.00,1000000.00,3),(240739,48473,2.00,0.00,4),(240740,48473,1.00,0.00,5),(240741,48474,10.00,1000.00,1),(240742,48474,20.00,0.00,2),(240743,48474,0.00,0.00,3),(240744,48474,2.00,0.00,4),(240745,48474,1.00,0.00,5),(240746,48475,10.00,1000.00,1),(240747,48475,20.00,0.00,2),(240748,48475,10.00,1000000.00,3),(240749,48475,2.00,0.00,4),(240750,48475,1.00,0.00,5),(240751,48476,30.00,0.00,1),(240752,48476,20.00,0.00,2),(240753,48476,10.00,1000000.00,3),(240754,48476,2.00,0.00,4),(240755,48476,1.00,0.00,5),(240756,48477,30.00,0.00,1),(240757,48477,20.00,0.00,2),(240758,48477,0.00,0.00,3),(240759,48477,2.00,0.00,4),(240760,48477,1.00,0.00,5),(240761,48478,30.00,0.00,1),(240762,48478,20.00,0.00,2),(240763,48478,10.00,10000000.00,3),(240764,48478,2.00,0.00,4),(240765,48478,1.00,0.00,5),(240766,48479,30.00,0.00,1),(240767,48479,20.00,0.00,2),(240768,48479,10.00,1000000.00,3),(240769,48479,2.00,0.00,4),(240770,48479,1.00,0.00,5),(240771,48480,30.00,0.00,1),(240772,48480,20.00,0.00,2),(240773,48480,0.00,0.00,3),(240774,48480,2.00,0.00,4),(240775,48480,1.00,0.00,5),(240776,48481,25.00,0.00,1),(240777,48481,20.00,0.00,2),(240778,48481,10.00,10000000.00,3),(240779,48481,2.00,0.00,4),(240780,48481,1.00,0.00,5),(240781,48482,20.00,0.00,1),(240782,48482,20.00,0.00,2),(240783,48482,10.00,1000000.00,3),(240784,48482,2.00,0.00,4),(240785,48482,1.00,0.00,5),(240786,48483,20.00,0.00,1),(240787,48483,20.00,0.00,2),(240788,48483,0.00,0.00,3),(240789,48483,2.00,0.00,4),(240790,48483,1.00,0.00,5),(240791,48484,10.00,0.00,1),(240792,48484,20.00,0.00,2),(240793,48484,10.00,1000000.00,3),(240794,48484,2.00,0.00,4),(240795,48484,1.00,0.00,5),(240796,48485,10.00,0.00,1),(240797,48485,20.00,0.00,2),(240798,48485,0.00,0.00,3),(240799,48485,2.00,0.00,4),(240800,48485,1.00,0.00,5),(240801,48486,5.00,0.00,1),(240802,48486,20.00,0.00,2),(240803,48486,10.00,10000000.00,3),(240804,48486,2.00,0.00,4),(240805,48486,1.00,0.00,5),(240806,48487,20.00,0.00,1),(240807,48487,20.00,0.00,2),(240808,48487,10.00,1000000.00,3),(240809,48487,2.00,0.00,4),(240810,48487,0.00,0.00,5),(240811,48488,20.00,0.00,1),(240812,48488,20.00,0.00,2),(240813,48488,0.00,0.00,3),(240814,48488,2.00,0.00,4),(240815,48488,1.00,0.00,5),(240816,48489,20.00,0.00,1),(240817,48489,20.00,0.00,2),(240818,48489,10.00,10000000.00,3),(240819,48489,2.00,0.00,4),(240820,48489,1.00,0.00,5),(240821,48490,20.00,0.00,1),(240822,48490,20.00,0.00,2),(240823,48490,10.00,1000000.00,3),(240824,48490,2.00,0.00,4),(240825,48490,1.00,0.00,5),(240826,48491,10.00,0.00,1),(240827,48491,20.00,0.00,2),(240828,48491,10.00,1000000.00,3),(240829,48491,2.00,0.00,4),(240830,48491,1.00,0.00,5),(240831,48492,10.00,0.00,1),(240832,48492,20.00,0.00,2),(240833,48492,10.00,1000000.00,3),(240834,48492,2.00,0.00,4),(240835,48492,0.00,0.00,5),(240836,48493,10.00,0.00,1),(240837,48493,20.00,0.00,2),(240838,48493,0.00,0.00,3),(240839,48493,2.00,0.00,4),(240840,48493,1.00,0.00,5),(240841,48494,20.00,0.00,1),(240842,48494,20.00,0.00,2),(240843,48494,0.00,0.00,3),(240844,48494,2.00,0.00,4),(240845,48494,1.00,0.00,5),(240846,48495,20.00,0.00,1),(240847,48495,20.00,0.00,2),(240848,48495,10.00,10000000.00,3),(240849,48495,2.00,0.00,4),(240850,48495,1.00,0.00,5),(240851,48496,30.00,0.00,1),(240852,48496,20.00,0.00,2),(240853,48496,10.00,1000000.00,3),(240854,48496,2.00,0.00,4),(240855,48496,0.00,0.00,5),(240856,48497,30.00,0.00,1),(240857,48497,20.00,0.00,2),(240858,48497,10.00,1000000.00,3),(240859,48497,2.00,0.00,4),(240860,48497,1.00,0.00,5),(240861,48498,30.00,0.00,1),(240862,48498,20.00,0.00,2),(240863,48498,0.00,0.00,3),(240864,48498,2.00,0.00,4),(240865,48498,1.00,0.00,5),(240866,48499,20.00,0.00,1),(240867,48499,20.00,0.00,2),(240868,48499,10.00,1000000.00,3),(240869,48499,2.00,0.00,4),(240870,48499,0.00,0.00,5),(240871,48500,20.00,0.00,1),(240872,48500,20.00,0.00,2),(240873,48500,10.00,1000000.00,3),(240874,48500,2.00,0.00,4),(240875,48500,1.00,0.00,5),(240876,48501,0.00,0.00,1),(240877,48501,20.00,0.00,2),(240878,48501,0.00,0.00,3),(240879,48501,0.00,0.00,4),(240880,48501,0.00,0.00,5),(240881,48502,0.00,0.00,1),(240882,48502,20.00,0.00,2),(240883,48502,0.00,0.00,3),(240884,48502,0.00,0.00,4),(240885,48502,0.00,0.00,5),(240886,48503,10.00,5000.00,1),(240887,48503,20.00,0.00,2),(240888,48503,10.00,1000000.00,3),(240889,48503,2.00,0.00,4),(240890,48503,0.00,0.00,5),(240891,48504,10.00,5000.00,1),(240892,48504,20.00,0.00,2),(240893,48504,10.00,1000000.00,3),(240894,48504,2.00,0.00,4),(240895,48504,1.00,0.00,5),(240896,48505,10.00,5000.00,1),(240897,48505,20.00,0.00,2),(240898,48505,0.00,0.00,3),(240899,48505,0.00,0.00,4),(240900,48505,0.00,0.00,5),(240901,48506,10.00,20000.00,1),(240902,48506,20.00,0.00,2),(240903,48506,0.00,0.00,3),(240904,48506,0.00,0.00,4),(240905,48506,0.00,0.00,5),(240906,48507,10.00,10000.00,1),(240907,48507,20.00,0.00,2),(240908,48507,10.00,1000000.00,3),(240909,48507,2.00,0.00,4),(240910,48507,1.00,0.00,5),(240911,48508,10.00,10000.00,1),(240912,48508,20.00,0.00,2),(240913,48508,0.00,0.00,3),(240914,48508,0.00,0.00,4),(240915,48508,0.00,0.00,5),(240916,48509,10.00,2500.00,1),(240917,48509,20.00,0.00,2),(240918,48509,10.00,1000000.00,3),(240919,48509,2.00,0.00,4),(240920,48509,0.00,0.00,5),(240921,48510,10.00,2500.00,1),(240922,48510,20.00,0.00,2),(240923,48510,10.00,1000000.00,3),(240924,48510,2.00,0.00,4),(240925,48510,1.00,0.00,5),(240926,48511,10.00,2500.00,1),(240927,48511,20.00,0.00,2),(240928,48511,0.00,0.00,3),(240929,48511,0.00,0.00,4),(240930,48511,0.00,0.00,5),(240931,48512,10.00,5000.00,1),(240932,48512,20.00,0.00,2),(240933,48512,0.00,0.00,3),(240934,48512,0.00,0.00,4),(240935,48512,0.00,0.00,5),(240936,48513,10.00,5000.00,1),(240937,48513,20.00,0.00,2),(240938,48513,10.00,1000000.00,3),(240939,48513,2.00,0.00,4),(240940,48513,0.00,0.00,5),(240941,48514,10.00,5000.00,1),(240942,48514,20.00,0.00,2),(240943,48514,10.00,1000000.00,3),(240944,48514,2.00,0.00,4),(240945,48514,1.00,0.00,5),(240946,48515,10.00,5000.00,1),(240947,48515,20.00,0.00,2),(240948,48515,0.00,0.00,3),(240949,48515,0.00,0.00,4),(240950,48515,0.00,0.00,5),(240951,48516,10.00,100000.00,1),(240952,48516,20.00,0.00,2),(240953,48516,10.00,1000000.00,3),(240954,48516,2.00,0.00,4),(240955,48516,0.00,0.00,5),(240956,48517,10.00,100000.00,1),(240957,48517,20.00,0.00,2),(240958,48517,10.00,1000000.00,3),(240959,48517,2.00,0.00,4),(240960,48517,1.00,0.00,5),(240961,48518,10.00,100000.00,1),(240962,48518,20.00,0.00,2),(240963,48518,0.00,0.00,3),(240964,48518,0.00,0.00,4),(240965,48518,0.00,0.00,5),(240966,48519,10.00,200000.00,1),(240967,48519,20.00,0.00,2),(240968,48519,0.00,0.00,3),(240969,48519,0.00,0.00,4),(240970,48519,0.00,0.00,5),(240971,48520,1.00,5000000.00,1),(240972,48520,20.00,0.00,2),(240973,48520,0.00,0.00,3),(240974,48520,0.00,0.00,4),(240975,48520,0.00,0.00,5),(240976,48521,20.00,2500.00,1),(240977,48521,20.00,0.00,2),(240978,48521,10.00,1000000.00,3),(240979,48521,2.00,0.00,4),(240980,48521,0.00,0.00,5),(240981,48522,20.00,0.00,1),(240982,48522,20.00,0.00,2),(240983,48522,10.00,1000000.00,3),(240984,48522,2.00,0.00,4),(240985,48522,1.00,0.00,5),(240986,48523,20.00,0.00,1),(240987,48523,20.00,0.00,2),(240988,48523,0.00,0.00,3),(240989,48523,0.00,0.00,4),(240990,48523,0.00,0.00,5),(240991,48524,20.00,0.00,1),(240992,48524,20.00,0.00,2),(240993,48524,10.00,1000000.00,3),(240994,48524,2.00,0.00,4),(240995,48524,1.00,0.00,5),(240996,48525,20.00,0.00,1),(240997,48525,20.00,0.00,2),(240998,48525,0.00,0.00,3),(240999,48525,0.00,0.00,4),(241000,48525,0.00,0.00,5),(241001,48526,2.00,20000.00,1),(241002,48526,20.00,0.00,2),(241003,48526,10.00,1000000.00,3),(241004,48526,2.00,0.00,4),(241005,48526,0.00,0.00,5),(241006,48527,2.00,50000.00,1),(241007,48527,20.00,0.00,2),(241008,48527,10.00,1000000.00,3),(241009,48527,2.00,0.00,4),(241010,48527,1.00,0.00,5),(241011,48528,2.00,50000.00,1),(241012,48528,20.00,0.00,2),(241013,48528,0.00,0.00,3),(241014,48528,0.00,0.00,4),(241015,48528,0.00,0.00,5),(241016,48529,1.00,50000.00,1),(241017,48529,20.00,0.00,2),(241018,48529,0.00,0.00,3),(241019,48529,0.00,0.00,4),(241020,48529,0.00,0.00,5),(241021,48530,1.00,75000.00,1),(241022,48530,20.00,0.00,2),(241023,48530,0.00,0.00,3),(241024,48530,0.00,0.00,4),(241025,48530,0.00,0.00,5),(241026,48531,10.00,30000.00,1),(241027,48531,20.00,0.00,2),(241028,48531,0.00,0.00,3),(241029,48531,0.00,0.00,4),(241030,48531,0.00,0.00,5),(241031,48532,15.00,120000.00,1),(241032,48532,20.00,0.00,2),(241033,48532,10.00,1000000.00,3),(241034,48532,2.00,0.00,4),(241035,48532,0.00,0.00,5),(241036,48533,15.00,120000.00,1),(241037,48533,20.00,0.00,2),(241038,48533,10.00,1000000.00,3),(241039,48533,2.00,0.00,4),(241040,48533,1.00,0.00,5),(241041,48534,15.00,120000.00,1),(241042,48534,20.00,0.00,2),(241043,48534,0.00,0.00,3),(241044,48534,0.00,0.00,4),(241045,48534,0.00,0.00,5),(241046,48535,10.00,120000.00,1),(241047,48535,20.00,0.00,2),(241048,48535,0.00,0.00,3),(241049,48535,0.00,0.00,4),(241050,48535,0.00,0.00,5),(241051,48536,10.00,180000.00,1),(241052,48536,20.00,0.00,2),(241053,48536,0.00,0.00,3),(241054,48536,0.00,0.00,4),(241055,48536,0.00,0.00,5),(241056,48537,10.00,120000.00,1),(241057,48537,20.00,0.00,2),(241058,48537,10.00,1000000.00,3),(241059,48537,2.00,0.00,4),(241060,48537,1.00,0.00,5),(241061,48538,10.00,120000.00,1),(241062,48538,20.00,0.00,2),(241063,48538,0.00,0.00,3),(241064,48538,0.00,0.00,4),(241065,48538,0.00,0.00,5),(241066,48539,2.00,120000.00,1),(241067,48539,20.00,0.00,2),(241068,48539,0.00,0.00,3),(241069,48539,0.00,0.00,4),(241070,48539,0.00,0.00,5),(241071,48540,2.00,180000.00,1),(241072,48540,20.00,0.00,2),(241073,48540,0.00,0.00,3),(241074,48540,0.00,0.00,4),(241075,48540,0.00,0.00,5),(241076,48541,30.00,2500.00,1),(241077,48541,20.00,0.00,2),(241078,48541,10.00,1000000.00,3),(241079,48541,2.00,0.00,4),(241080,48541,0.00,0.00,5),(241081,48542,30.00,2500.00,1),(241082,48542,20.00,0.00,2),(241083,48542,10.00,1000000.00,3),(241084,48542,2.00,0.00,4),(241085,48542,1.00,0.00,5),(241086,48543,30.00,2500.00,1),(241087,48543,20.00,0.00,2),(241088,48543,0.00,0.00,3),(241089,48543,0.00,0.00,4),(241090,48543,0.00,0.00,5),(241091,48544,30.00,5000.00,1),(241092,48544,20.00,0.00,2),(241093,48544,0.00,0.00,3),(241094,48544,0.00,0.00,4),(241095,48544,0.00,0.00,5),(241096,48545,30.00,5000.00,1),(241097,48545,20.00,0.00,2),(241098,48545,10.00,1000000.00,3),(241099,48545,2.00,0.00,4),(241100,48545,0.00,0.00,5),(241101,48546,30.00,5000.00,1),(241102,48546,20.00,0.00,2),(241103,48546,10.00,1000000.00,3),(241104,48546,2.00,0.00,4),(241105,48546,1.00,0.00,5),(241106,48547,30.00,5000.00,1),(241107,48547,20.00,0.00,2),(241108,48547,0.00,0.00,3),(241109,48547,0.00,0.00,4),(241110,48547,0.00,0.00,5),(241111,48548,30.00,10000.00,1),(241112,48548,20.00,0.00,2),(241113,48548,0.00,0.00,3),(241114,48548,0.00,0.00,4),(241115,48548,0.00,0.00,5),(241116,48549,20.00,2500.00,1),(241117,48549,20.00,0.00,2),(241118,48549,10.00,1000000.00,3),(241119,48549,2.00,0.00,4),(241120,48549,0.00,0.00,5),(241121,48550,20.00,2500.00,1),(241122,48550,20.00,0.00,2),(241123,48550,10.00,1000000.00,3),(241124,48550,2.00,0.00,4),(241125,48550,1.00,0.00,5),(241126,48551,20.00,0.00,1),(241127,48551,20.00,0.00,2),(241128,48551,10.00,1000000.00,3),(241129,48551,2.00,0.00,4),(241130,48551,1.00,0.00,5),(241131,48552,10.00,0.00,1),(241132,48552,20.00,0.00,2),(241133,48552,0.00,0.00,3),(241134,48552,0.00,0.00,4),(241135,48552,0.00,0.00,5),(241136,48553,10.00,0.00,1),(241137,48553,20.00,0.00,2),(241138,48553,0.00,0.00,3),(241139,48553,0.00,0.00,4),(241140,48553,0.00,0.00,5),(241141,48554,10.00,1000.00,1),(241142,48554,20.00,0.00,2),(241143,48554,10.00,1000000.00,3),(241144,48554,2.00,0.00,4),(241145,48554,0.00,0.00,5),(241146,48555,10.00,1000.00,1),(241147,48555,20.00,0.00,2),(241148,48555,10.00,1000000.00,3),(241149,48555,2.00,0.00,4),(241150,48555,1.00,0.00,5),(241151,48556,10.00,1000.00,1),(241152,48556,20.00,0.00,2),(241153,48556,0.00,0.00,3),(241154,48556,0.00,0.00,4),(241155,48556,0.00,0.00,5),(241156,48557,5.00,2500.00,1),(241157,48557,20.00,0.00,2),(241158,48557,10.00,1000000.00,3),(241159,48557,2.00,0.00,4),(241160,48557,0.00,0.00,5),(241161,48558,5.00,2500.00,1),(241162,48558,20.00,0.00,2),(241163,48558,10.00,1000000.00,3),(241164,48558,2.00,0.00,4),(241165,48558,1.00,0.00,5),(241166,48559,10.00,2500.00,1),(241167,48559,20.00,0.00,2),(241168,48559,10.00,1000000.00,3),(241169,48559,2.00,0.00,4),(241170,48559,1.00,0.00,5),(241171,48560,10.00,2500.00,1),(241172,48560,20.00,0.00,2),(241173,48560,0.00,0.00,3),(241174,48560,0.00,0.00,4),(241175,48560,0.00,0.00,5),(241176,48561,10.00,5000.00,1),(241177,48561,20.00,0.00,2),(241178,48561,0.00,0.00,3),(241179,48561,0.00,0.00,4),(241180,48561,0.00,0.00,5),(241181,48562,20.00,2500.00,1),(241182,48562,20.00,0.00,2),(241183,48562,10.00,1000000.00,3),(241184,48562,2.00,0.00,4),(241185,48562,1.00,0.00,5),(241186,48563,10.00,2500.00,1),(241187,48563,20.00,0.00,2),(241188,48563,0.00,0.00,3),(241189,48563,0.00,0.00,4),(241190,48563,0.00,0.00,5),(241191,48564,5.00,20000.00,1),(241192,48564,20.00,0.00,2),(241193,48564,10.00,1000000.00,3),(241194,48564,2.00,0.00,4),(241195,48564,0.00,0.00,5),(241196,48565,5.00,20000.00,1),(241197,48565,20.00,0.00,2),(241198,48565,10.00,1000000.00,3),(241199,48565,2.00,0.00,4),(241200,48565,1.00,0.00,5),(241201,48566,10.00,20000.00,1),(241202,48566,20.00,0.00,2),(241203,48566,10.00,1000000.00,3),(241204,48566,2.00,0.00,4),(241205,48566,1.00,0.00,5),(241206,48567,10.00,20000.00,1),(241207,48567,20.00,0.00,2),(241208,48567,0.00,0.00,3),(241209,48567,0.00,0.00,4),(241210,48567,0.00,0.00,5),(241211,48568,10.00,30000.00,1),(241212,48568,20.00,0.00,2),(241213,48568,0.00,0.00,3),(241214,48568,0.00,0.00,4),(241215,48568,0.00,0.00,5),(241216,48569,1.00,20000.00,1),(241217,48569,20.00,0.00,2),(241218,48569,10.00,1000000.00,3),(241219,48569,2.00,0.00,4),(241220,48569,0.00,0.00,5),(241221,48570,1.00,20000.00,1),(241222,48570,20.00,0.00,2),(241223,48570,10.00,1000000.00,3),(241224,48570,2.00,0.00,4),(241225,48570,1.00,0.00,5),(241226,48571,1.00,20000.00,1),(241227,48571,20.00,0.00,2),(241228,48571,0.00,0.00,3),(241229,48571,0.00,0.00,4),(241230,48571,0.00,0.00,5),(241231,48572,1.00,20000.00,1),(241232,48572,20.00,0.00,2),(241233,48572,0.00,0.00,3),(241234,48572,0.00,0.00,4),(241235,48572,0.00,0.00,5),(241236,48573,1.00,75000.00,1),(241237,48573,20.00,0.00,2),(241238,48573,0.00,0.00,3),(241239,48573,0.00,0.00,4),(241240,48573,0.00,0.00,5),(241241,48574,1.00,20000.00,1),(241242,48574,20.00,0.00,2),(241243,48574,10.00,1000000.00,3),(241244,48574,2.00,0.00,4),(241245,48574,0.00,0.00,5),(241246,48575,1.00,20000.00,1),(241247,48575,20.00,0.00,2),(241248,48575,10.00,1000000.00,3),(241249,48575,2.00,0.00,4),(241250,48575,1.00,0.00,5),(241251,48576,1.00,50000.00,1),(241252,48576,20.00,0.00,2),(241253,48576,0.00,0.00,3),(241254,48576,0.00,0.00,4),(241255,48576,0.00,0.00,5),(241256,48577,1.00,50000.00,1),(241257,48577,20.00,0.00,2),(241258,48577,0.00,0.00,3),(241259,48577,0.00,0.00,4),(241260,48577,0.00,0.00,5),(241261,48578,1.00,75000.00,1),(241262,48578,20.00,0.00,2),(241263,48578,0.00,0.00,3),(241264,48578,0.00,0.00,4),(241265,48578,0.00,0.00,5),(241266,48579,2.00,50000.00,1),(241267,48579,20.00,0.00,2),(241268,48579,0.00,0.00,3),(241269,48579,0.00,0.00,4),(241270,48579,0.00,0.00,5),(241271,48580,0.00,0.00,1),(241272,48580,20.00,0.00,2),(241273,48580,0.00,0.00,3),(241274,48580,0.00,0.00,4),(241275,48580,0.00,0.00,5),(241276,48581,20.00,75000.00,1),(241277,48581,20.00,0.00,2),(241278,48581,0.00,0.00,3),(241279,48581,0.00,0.00,4),(241280,48581,0.00,0.00,5),(241281,48582,1.00,50000.00,1),(241282,48582,20.00,0.00,2),(241283,48582,0.00,0.00,3),(241284,48582,0.00,0.00,4),(241285,48582,0.00,0.00,5),(241286,48583,0.00,0.00,1),(241287,48583,20.00,0.00,2),(241288,48583,0.00,0.00,3),(241289,48583,0.00,0.00,4),(241290,48583,0.00,0.00,5),(241291,48584,20.00,75000.00,1),(241292,48584,20.00,0.00,2),(241293,48584,0.00,0.00,3),(241294,48584,0.00,0.00,4),(241295,48584,0.00,0.00,5),(241296,48585,10.00,5000.00,1),(241297,48585,20.00,0.00,2),(241298,48585,2.50,0.00,3),(241299,48585,2.00,0.00,4),(241300,48585,0.00,0.00,5),(241301,48586,10.00,5000.00,1),(241302,48586,20.00,0.00,2),(241303,48586,0.00,0.00,3),(241304,48586,2.00,0.00,4),(241305,48586,1.00,0.00,5),(241306,48587,10.00,5000.00,1),(241307,48587,20.00,0.00,2),(241308,48587,0.00,0.00,3),(241309,48587,2.00,0.00,4),(241310,48587,1.00,0.00,5),(241311,48588,10.00,5000.00,1),(241312,48588,20.00,0.00,2),(241313,48588,0.00,0.00,3),(241314,48588,0.00,0.00,4),(241315,48588,0.00,0.00,5),(241316,48589,10.00,20000.00,1),(241317,48589,20.00,0.00,2),(241318,48589,0.00,0.00,3),(241319,48589,0.00,0.00,4),(241320,48589,0.00,0.00,5),(241321,48590,10.00,10000.00,1),(241322,48590,20.00,0.00,2),(241323,48590,0.00,0.00,3),(241324,48590,2.00,0.00,4),(241325,48590,1.00,0.00,5),(241326,48591,10.00,10000.00,1),(241327,48591,20.00,0.00,2),(241328,48591,0.00,0.00,3),(241329,48591,0.00,0.00,4),(241330,48591,0.00,0.00,5),(241331,48592,10.00,2500.00,1),(241332,48592,20.00,0.00,2),(241333,48592,2.50,2.00,3),(241334,48592,0.00,0.00,4),(241335,48592,0.00,0.00,5),(241336,48593,10.00,2500.00,1),(241337,48593,20.00,0.00,2),(241338,48593,0.00,0.00,3),(241339,48593,2.00,0.00,4),(241340,48593,0.00,0.00,5),(241341,48594,10.00,2500.00,1),(241342,48594,20.00,0.00,2),(241343,48594,0.00,0.00,3),(241344,48594,2.00,0.00,4),(241345,48594,1.00,0.00,5),(241346,48595,10.00,2500.00,1),(241347,48595,20.00,0.00,2),(241348,48595,0.00,0.00,3),(241349,48595,0.00,0.00,4),(241350,48595,0.00,0.00,5),(241351,48596,10.00,5000.00,1),(241352,48596,20.00,0.00,2),(241353,48596,0.00,0.00,3),(241354,48596,0.00,0.00,4),(241355,48596,0.00,0.00,5),(241356,48597,10.00,5000.00,1),(241357,48597,20.00,0.00,2),(241358,48597,2.50,0.00,3),(241359,48597,2.00,0.00,4),(241360,48597,0.00,0.00,5),(241361,48598,10.00,5000.00,1),(241362,48598,20.00,0.00,2),(241363,48598,0.00,0.00,3),(241364,48598,2.00,0.00,4),(241365,48598,0.00,0.00,5),(241366,48599,10.00,5000.00,1),(241367,48599,20.00,0.00,2),(241368,48599,0.00,0.00,3),(241369,48599,2.00,0.00,4),(241370,48599,1.00,0.00,5),(241371,48600,10.00,5000.00,1),(241372,48600,20.00,0.00,2),(241373,48600,0.00,0.00,3),(241374,48600,0.00,0.00,4),(241375,48600,0.00,0.00,5),(241376,48601,10.00,100000.00,1),(241377,48601,20.00,0.00,2),(241378,48601,2.50,0.00,3),(241379,48601,2.00,0.00,4),(241380,48601,0.00,0.00,5),(241381,48602,10.00,100000.00,1),(241382,48602,20.00,0.00,2),(241383,48602,0.00,0.00,3),(241384,48602,2.00,0.00,4),(241385,48602,1.00,0.00,5),(241386,48603,10.00,100000.00,1),(241387,48603,20.00,0.00,2),(241388,48603,0.00,0.00,3),(241389,48603,2.00,0.00,4),(241390,48603,1.00,0.00,5),(241391,48604,10.00,100000.00,1),(241392,48604,20.00,0.00,2),(241393,48604,0.00,0.00,3),(241394,48604,0.00,0.00,4),(241395,48604,0.00,0.00,5),(241396,48605,10.00,200000.00,1),(241397,48605,20.00,0.00,2),(241398,48605,0.00,0.00,3),(241399,48605,0.00,0.00,4),(241400,48605,0.00,0.00,5),(241401,48606,1.00,50000.00,1),(241402,48606,20.00,0.00,2),(241403,48606,0.00,0.00,3),(241404,48606,0.00,0.00,4),(241405,48606,0.00,0.00,5),(241406,48607,20.00,2500.00,1),(241407,48607,20.00,0.00,2),(241408,48607,2.50,0.00,3),(241409,48607,2.00,0.00,4),(241410,48607,0.00,0.00,5),(241411,48608,20.00,2500.00,1),(241412,48608,20.00,0.00,2),(241413,48608,0.00,0.00,3),(241414,48608,2.00,0.00,4),(241415,48608,0.00,0.00,5),(241416,48609,20.00,0.00,1),(241417,48609,20.00,0.00,2),(241418,48609,0.00,0.00,3),(241419,48609,2.00,0.00,4),(241420,48609,1.00,0.00,5),(241421,48610,20.00,0.00,1),(241422,48610,20.00,0.00,2),(241423,48610,0.00,0.00,3),(241424,48610,0.00,0.00,4),(241425,48610,0.00,0.00,5),(241426,48611,20.00,0.00,1),(241427,48611,20.00,0.00,2),(241428,48611,2.50,0.00,3),(241429,48611,2.00,0.00,4),(241430,48611,0.00,0.00,5),(241431,48612,20.00,0.00,1),(241432,48612,20.00,0.00,2),(241433,48612,0.00,0.00,3),(241434,48612,2.00,0.00,4),(241435,48612,0.00,0.00,5),(241436,48613,20.00,0.00,1),(241437,48613,20.00,0.00,2),(241438,48613,0.00,0.00,3),(241439,48613,2.00,0.00,4),(241440,48613,1.00,0.00,5),(241441,48614,20.00,0.00,1),(241442,48614,20.00,0.00,2),(241443,48614,0.00,0.00,3),(241444,48614,0.00,0.00,4),(241445,48614,0.00,0.00,5),(241446,48615,2.00,20000.00,1),(241447,48615,20.00,0.00,2),(241448,48615,2.50,0.00,3),(241449,48615,2.00,0.00,4),(241450,48615,0.00,0.00,5),(241451,48616,2.00,50000.00,1),(241452,48616,20.00,0.00,2),(241453,48616,0.00,0.00,3),(241454,48616,2.00,0.00,4),(241455,48616,0.00,0.00,5),(241456,48617,2.00,50000.00,1),(241457,48617,20.00,0.00,2),(241458,48617,0.00,0.00,3),(241459,48617,2.00,0.00,4),(241460,48617,1.00,0.00,5),(241461,48618,2.00,50000.00,1),(241462,48618,20.00,0.00,2),(241463,48618,0.00,0.00,3),(241464,48618,0.00,0.00,4),(241465,48618,0.00,0.00,5),(241466,48619,2.00,50000.00,1),(241467,48619,20.00,0.00,2),(241468,48619,0.00,0.00,3),(241469,48619,0.00,0.00,4),(241470,48619,0.00,0.00,5),(241471,48620,2.00,75000.00,1),(241472,48620,20.00,0.00,2),(241473,48620,0.00,0.00,3),(241474,48620,0.00,0.00,4),(241475,48620,0.00,0.00,5),(241476,48621,10.00,30000.00,1),(241477,48621,20.00,0.00,2),(241478,48621,0.00,0.00,3),(241479,48621,0.00,0.00,4),(241480,48621,0.00,0.00,5),(241481,48622,20.00,120000.00,1),(241482,48622,20.00,0.00,2),(241483,48622,2.50,0.00,3),(241484,48622,2.00,0.00,4),(241485,48622,0.00,0.00,5),(241486,48623,20.00,120000.00,1),(241487,48623,20.00,0.00,2),(241488,48623,0.00,0.00,3),(241489,48623,2.00,0.00,4),(241490,48623,0.00,0.00,5),(241491,48624,20.00,120000.00,1),(241492,48624,20.00,0.00,2),(241493,48624,0.00,0.00,3),(241494,48624,2.00,0.00,4),(241495,48624,1.00,0.00,5),(241496,48625,20.00,120000.00,1),(241497,48625,20.00,0.00,2),(241498,48625,0.00,0.00,3),(241499,48625,0.00,0.00,4),(241500,48625,0.00,0.00,5),(241501,48626,10.00,120000.00,1),(241502,48626,20.00,0.00,2),(241503,48626,0.00,0.00,3),(241504,48626,0.00,0.00,4),(241505,48626,0.00,0.00,5),(241506,48627,10.00,180000.00,1),(241507,48627,20.00,0.00,2),(241508,48627,0.00,0.00,3),(241509,48627,0.00,0.00,4),(241510,48627,0.00,0.00,5),(241511,48628,10.00,120000.00,1),(241512,48628,20.00,0.00,2),(241513,48628,0.00,0.00,3),(241514,48628,2.00,0.00,4),(241515,48628,1.00,0.00,5),(241516,48629,10.00,120000.00,1),(241517,48629,20.00,0.00,2),(241518,48629,0.00,0.00,3),(241519,48629,0.00,0.00,4),(241520,48629,0.00,0.00,5),(241521,48630,2.00,120000.00,1),(241522,48630,20.00,0.00,2),(241523,48630,0.00,0.00,3),(241524,48630,0.00,0.00,4),(241525,48630,0.00,0.00,5),(241526,48631,2.00,180000.00,1),(241527,48631,20.00,0.00,2),(241528,48631,0.00,0.00,3),(241529,48631,0.00,0.00,4),(241530,48631,0.00,0.00,5),(241531,48632,30.00,2500.00,1),(241532,48632,20.00,0.00,2),(241533,48632,2.50,0.00,3),(241534,48632,2.00,0.00,4),(241535,48632,0.00,0.00,5),(241536,48633,30.00,2500.00,1),(241537,48633,20.00,0.00,2),(241538,48633,0.00,0.00,3),(241539,48633,2.00,0.00,4),(241540,48633,0.00,0.00,5),(241541,48634,30.00,2500.00,1),(241542,48634,20.00,0.00,2),(241543,48634,0.00,0.00,3),(241544,48634,2.00,0.00,4),(241545,48634,1.00,0.00,5),(241546,48635,30.00,2500.00,1),(241547,48635,20.00,0.00,2),(241548,48635,0.00,0.00,3),(241549,48635,0.00,0.00,4),(241550,48635,0.00,0.00,5),(241551,48636,30.00,5000.00,1),(241552,48636,20.00,0.00,2),(241553,48636,0.00,0.00,3),(241554,48636,0.00,0.00,4),(241555,48636,0.00,0.00,5),(241556,48637,30.00,5000.00,1),(241557,48637,20.00,0.00,2),(241558,48637,2.50,0.00,3),(241559,48637,2.00,0.00,4),(241560,48637,0.00,0.00,5),(241561,48638,30.00,5000.00,1),(241562,48638,20.00,0.00,2),(241563,48638,0.00,0.00,3),(241564,48638,2.00,0.00,4),(241565,48638,0.00,0.00,5),(241566,48639,30.00,5000.00,1),(241567,48639,20.00,0.00,2),(241568,48639,0.00,0.00,3),(241569,48639,2.00,0.00,4),(241570,48639,1.00,0.00,5),(241571,48640,30.00,5000.00,1),(241572,48640,20.00,0.00,2),(241573,48640,0.00,0.00,3),(241574,48640,0.00,0.00,4),(241575,48640,0.00,0.00,5),(241576,48641,30.00,10000.00,1),(241577,48641,20.00,0.00,2),(241578,48641,0.00,0.00,3),(241579,48641,0.00,0.00,4),(241580,48641,0.00,0.00,5),(241581,48642,20.00,2500.00,1),(241582,48642,20.00,0.00,2),(241583,48642,2.50,0.00,3),(241584,48642,2.00,0.00,4),(241585,48642,0.00,0.00,5),(241586,48643,20.00,2500.00,1),(241587,48643,20.00,0.00,2),(241588,48643,0.00,0.00,3),(241589,48643,2.00,0.00,4),(241590,48643,0.00,0.00,5),(241591,48644,20.00,2500.00,1),(241592,48644,20.00,0.00,2),(241593,48644,0.00,0.00,3),(241594,48644,2.00,0.00,4),(241595,48644,1.00,0.00,5),(241596,48645,20.00,0.00,1),(241597,48645,20.00,0.00,2),(241598,48645,0.00,0.00,3),(241599,48645,2.00,0.00,4),(241600,48645,1.00,0.00,5),(241601,48646,10.00,0.00,1),(241602,48646,20.00,0.00,2),(241603,48646,0.00,0.00,3),(241604,48646,0.00,0.00,4),(241605,48646,0.00,0.00,5),(241606,48647,10.00,0.00,1),(241607,48647,20.00,0.00,2),(241608,48647,0.00,0.00,3),(241609,48647,0.00,0.00,4),(241610,48647,0.00,0.00,5),(241611,48648,10.00,1000.00,1),(241612,48648,20.00,0.00,2),(241613,48648,2.50,0.00,3),(241614,48648,2.00,0.00,4),(241615,48648,0.00,0.00,5),(241616,48649,10.00,1000.00,1),(241617,48649,20.00,0.00,2),(241618,48649,0.00,0.00,3),(241619,48649,2.00,0.00,4),(241620,48649,0.00,0.00,5),(241621,48650,10.00,1000.00,1),(241622,48650,20.00,0.00,2),(241623,48650,0.00,0.00,3),(241624,48650,2.00,0.00,4),(241625,48650,1.00,0.00,5),(241626,48651,10.00,1000.00,1),(241627,48651,20.00,0.00,2),(241628,48651,0.00,0.00,3),(241629,48651,0.00,0.00,4),(241630,48651,0.00,0.00,5),(241631,48652,5.00,2500.00,1),(241632,48652,20.00,0.00,2),(241633,48652,2.50,0.00,3),(241634,48652,2.00,0.00,4),(241635,48652,0.00,0.00,5),(241636,48653,5.00,2500.00,1),(241637,48653,20.00,0.00,2),(241638,48653,0.00,0.00,3),(241639,48653,2.00,0.00,4),(241640,48653,0.00,0.00,5),(241641,48654,5.00,2500.00,1),(241642,48654,20.00,0.00,2),(241643,48654,0.00,0.00,3),(241644,48654,2.00,0.00,4),(241645,48654,1.00,0.00,5),(241646,48655,10.00,2500.00,1),(241647,48655,20.00,0.00,2),(241648,48655,0.00,0.00,3),(241649,48655,2.00,0.00,4),(241650,48655,1.00,0.00,5),(241651,48656,10.00,2500.00,1),(241652,48656,20.00,0.00,2),(241653,48656,0.00,0.00,3),(241654,48656,0.00,0.00,4),(241655,48656,0.00,0.00,5),(241656,48657,10.00,5000.00,1),(241657,48657,20.00,0.00,2),(241658,48657,0.00,0.00,3),(241659,48657,0.00,0.00,4),(241660,48657,0.00,0.00,5),(241661,48658,20.00,2500.00,1),(241662,48658,20.00,0.00,2),(241663,48658,0.00,0.00,3),(241664,48658,2.00,0.00,4),(241665,48658,1.00,0.00,5),(241666,48659,10.00,2500.00,1),(241667,48659,20.00,0.00,2),(241668,48659,0.00,0.00,3),(241669,48659,0.00,0.00,4),(241670,48659,0.00,0.00,5),(241671,48660,5.00,20000.00,1),(241672,48660,20.00,0.00,2),(241673,48660,2.50,0.00,3),(241674,48660,2.00,0.00,4),(241675,48660,1.00,0.00,5),(241676,48661,5.00,20000.00,1),(241677,48661,20.00,0.00,2),(241678,48661,0.00,0.00,3),(241679,48661,2.00,0.00,4),(241680,48661,0.00,0.00,5),(241681,48662,5.00,20000.00,1),(241682,48662,20.00,0.00,2),(241683,48662,0.00,0.00,3),(241684,48662,2.00,0.00,4),(241685,48662,1.00,0.00,5),(241686,48663,10.00,20000.00,1),(241687,48663,20.00,0.00,2),(241688,48663,0.00,0.00,3),(241689,48663,2.00,0.00,4),(241690,48663,1.00,0.00,5),(241691,48664,10.00,20000.00,1),(241692,48664,20.00,0.00,2),(241693,48664,0.00,0.00,3),(241694,48664,0.00,0.00,4),(241695,48664,0.00,0.00,5),(241696,48665,10.00,30000.00,1),(241697,48665,20.00,0.00,2),(241698,48665,0.00,0.00,3),(241699,48665,0.00,0.00,4),(241700,48665,0.00,0.00,5),(241701,48666,1.00,20000.00,1),(241702,48666,20.00,0.00,2),(241703,48666,2.50,0.00,3),(241704,48666,2.00,0.00,4),(241705,48666,0.00,0.00,5),(241706,48667,1.00,20000.00,1),(241707,48667,20.00,0.00,2),(241708,48667,0.00,0.00,3),(241709,48667,2.00,0.00,4),(241710,48667,0.00,0.00,5),(241711,48668,1.00,20000.00,1),(241712,48668,20.00,0.00,2),(241713,48668,0.00,0.00,3),(241714,48668,2.00,0.00,4),(241715,48668,1.00,0.00,5),(241716,48669,1.00,20000.00,1),(241717,48669,20.00,0.00,2),(241718,48669,0.00,0.00,3),(241719,48669,0.00,0.00,4),(241720,48669,0.00,0.00,5),(241721,48670,2.00,20000.00,1),(241722,48670,20.00,0.00,2),(241723,48670,0.00,0.00,3),(241724,48670,0.00,0.00,4),(241725,48670,0.00,0.00,5),(241726,48671,2.00,75000.00,1),(241727,48671,20.00,0.00,2),(241728,48671,0.00,0.00,3),(241729,48671,0.00,0.00,4),(241730,48671,0.00,0.00,5),(241731,48672,1.00,20000.00,1),(241732,48672,20.00,0.00,2),(241733,48672,2.50,0.00,3),(241734,48672,2.00,0.00,4),(241735,48672,0.00,0.00,5),(241736,48673,1.00,20000.00,1),(241737,48673,20.00,0.00,2),(241738,48673,0.00,0.00,3),(241739,48673,2.00,0.00,4),(241740,48673,0.00,0.00,5),(241741,48674,1.00,20000.00,1),(241742,48674,20.00,0.00,2),(241743,48674,0.00,0.00,3),(241744,48674,2.00,0.00,4),(241745,48674,1.00,0.00,5),(241746,48675,1.00,20000.00,1),(241747,48675,20.00,0.00,2),(241748,48675,0.00,0.00,3),(241749,48675,0.00,0.00,4),(241750,48675,0.00,0.00,5),(241751,48676,2.00,50000.00,1),(241752,48676,20.00,0.00,2),(241753,48676,0.00,0.00,3),(241754,48676,0.00,0.00,4),(241755,48676,0.00,0.00,5),(241756,48677,2.00,75000.00,1),(241757,48677,20.00,0.00,2),(241758,48677,0.00,0.00,3),(241759,48677,0.00,0.00,4),(241760,48677,0.00,0.00,5),(241761,48678,2.00,50000.00,1),(241762,48678,20.00,0.00,2),(241763,48678,0.00,0.00,3),(241764,48678,0.00,0.00,4),(241765,48678,0.00,0.00,5),(241766,48679,0.00,0.00,1),(241767,48679,20.00,0.00,2),(241768,48679,0.00,0.00,3),(241769,48679,0.00,0.00,4),(241770,48679,0.00,0.00,5),(241771,48680,20.00,75000.00,1),(241772,48680,20.00,0.00,2),(241773,48680,0.00,0.00,3),(241774,48680,0.00,0.00,4),(241775,48680,0.00,0.00,5),(241776,48681,1.00,50000.00,1),(241777,48681,20.00,0.00,2),(241778,48681,0.00,0.00,3),(241779,48681,0.00,0.00,4),(241780,48681,0.00,0.00,5),(241781,48682,0.00,0.00,1),(241782,48682,20.00,0.00,2),(241783,48682,0.00,0.00,3),(241784,48682,0.00,0.00,4),(241785,48682,0.00,0.00,5),(241786,48683,20.00,75000.00,1),(241787,48683,20.00,0.00,2),(241788,48683,0.00,0.00,3),(241789,48683,0.00,0.00,4),(241790,48683,0.00,0.00,5),(241791,48684,10.00,5000.00,1),(241792,48684,20.00,0.00,2),(241793,48684,10.00,0.00,3),(241794,48684,2.00,0.00,4),(241795,48684,0.00,0.00,5),(241796,48685,10.00,5000.00,1),(241797,48685,20.00,0.00,2),(241798,48685,0.00,0.00,3),(241799,48685,0.00,0.00,4),(241800,48685,0.00,0.00,5),(241801,48686,10.00,20000.00,1),(241802,48686,20.00,0.00,2),(241803,48686,0.00,0.00,3),(241804,48686,0.00,0.00,4),(241805,48686,0.00,0.00,5),(241806,48687,10.00,5000.00,1),(241807,48687,20.00,0.00,2),(241808,48687,10.00,10000000.00,3),(241809,48687,2.00,0.00,4),(241810,48687,1.00,0.00,5),(241811,48688,10.00,2500.00,1),(241812,48688,20.00,0.00,2),(241813,48688,10.00,0.00,3),(241814,48688,2.00,0.00,4),(241815,48688,0.00,0.00,5),(241816,48689,10.00,2500.00,1),(241817,48689,20.00,0.00,2),(241818,48689,10.00,10000000.00,3),(241819,48689,2.00,0.00,4),(241820,48689,1.00,0.00,5),(241821,48690,10.00,2500.00,1),(241822,48690,20.00,0.00,2),(241823,48690,0.00,0.00,3),(241824,48690,0.00,0.00,4),(241825,48690,0.00,0.00,5),(241826,48691,10.00,5000.00,1),(241827,48691,20.00,0.00,2),(241828,48691,0.00,0.00,3),(241829,48691,0.00,0.00,4),(241830,48691,0.00,0.00,5),(241831,48692,10.00,5000.00,1),(241832,48692,20.00,0.00,2),(241833,48692,10.00,0.00,3),(241834,48692,2.00,0.00,4),(241835,48692,0.00,0.00,5),(241836,48693,10.00,5000.00,1),(241837,48693,20.00,0.00,2),(241838,48693,10.00,10000000.00,3),(241839,48693,2.00,0.00,4),(241840,48693,1.00,0.00,5),(241841,48694,10.00,5000.00,1),(241842,48694,20.00,0.00,2),(241843,48694,0.00,0.00,3),(241844,48694,0.00,0.00,4),(241845,48694,0.00,0.00,5),(241846,48695,10.00,100000.00,1),(241847,48695,20.00,0.00,2),(241848,48695,10.00,0.00,3),(241849,48695,2.00,0.00,4),(241850,48695,0.00,0.00,5),(241851,48696,10.00,100000.00,1),(241852,48696,20.00,0.00,2),(241853,48696,10.00,10000000.00,3),(241854,48696,2.00,0.00,4),(241855,48696,1.00,0.00,5),(241856,48697,10.00,100000.00,1),(241857,48697,20.00,0.00,2),(241858,48697,0.00,0.00,3),(241859,48697,0.00,0.00,4),(241860,48697,0.00,0.00,5),(241861,48698,10.00,200000.00,1),(241862,48698,20.00,0.00,2),(241863,48698,0.00,0.00,3),(241864,48698,0.00,0.00,4),(241865,48698,0.00,0.00,5),(241866,48699,20.00,2500.00,1),(241867,48699,20.00,0.00,2),(241868,48699,10.00,0.00,3),(241869,48699,2.00,0.00,4),(241870,48699,0.00,0.00,5),(241871,48700,20.00,0.00,1),(241872,48700,20.00,0.00,2),(241873,48700,10.00,10000000.00,3),(241874,48700,2.00,0.00,4),(241875,48700,1.00,0.00,5),(241876,48701,20.00,0.00,1),(241877,48701,20.00,0.00,2),(241878,48701,0.00,0.00,3),(241879,48701,0.00,0.00,4),(241880,48701,0.00,0.00,5),(241881,48702,20.00,0.00,1),(241882,48702,20.00,0.00,2),(241883,48702,10.00,0.00,3),(241884,48702,2.00,0.00,4),(241885,48702,0.00,0.00,5),(241886,48703,20.00,0.00,1),(241887,48703,20.00,0.00,2),(241888,48703,10.00,10000000.00,3),(241889,48703,2.00,0.00,4),(241890,48703,1.00,0.00,5),(241891,48704,20.00,0.00,1),(241892,48704,20.00,0.00,2),(241893,48704,0.00,0.00,3),(241894,48704,0.00,0.00,4),(241895,48704,0.00,0.00,5),(241896,48705,2.00,20000.00,1),(241897,48705,20.00,0.00,2),(241898,48705,10.00,0.00,3),(241899,48705,2.00,0.00,4),(241900,48705,0.00,0.00,5),(241901,48706,2.00,20000.00,1),(241902,48706,20.00,0.00,2),(241903,48706,10.00,10000000.00,3),(241904,48706,2.00,0.00,4),(241905,48706,1.00,0.00,5),(241906,48707,2.00,20000.00,1),(241907,48707,20.00,0.00,2),(241908,48707,0.00,0.00,3),(241909,48707,0.00,0.00,4),(241910,48707,0.00,0.00,5),(241911,48708,2.00,20000.00,1),(241912,48708,20.00,0.00,2),(241913,48708,0.00,0.00,3),(241914,48708,0.00,0.00,4),(241915,48708,0.00,0.00,5),(241916,48709,2.00,75000.00,1),(241917,48709,20.00,0.00,2),(241918,48709,0.00,0.00,3),(241919,48709,0.00,0.00,4),(241920,48709,0.00,0.00,5),(241921,48710,20.00,120000.00,1),(241922,48710,20.00,0.00,2),(241923,48710,10.00,0.00,3),(241924,48710,2.00,0.00,4),(241925,48710,0.00,0.00,5),(241926,48711,20.00,120000.00,1),(241927,48711,20.00,0.00,2),(241928,48711,10.00,10000000.00,3),(241929,48711,2.00,0.00,4),(241930,48711,1.00,0.00,5),(241931,48712,20.00,120000.00,1),(241932,48712,20.00,0.00,2),(241933,48712,0.00,0.00,3),(241934,48712,0.00,0.00,4),(241935,48712,0.00,0.00,5),(241936,48713,10.00,120000.00,1),(241937,48713,20.00,0.00,2),(241938,48713,0.00,0.00,3),(241939,48713,0.00,0.00,4),(241940,48713,0.00,0.00,5),(241941,48714,10.00,180000.00,1),(241942,48714,20.00,0.00,2),(241943,48714,0.00,0.00,3),(241944,48714,0.00,0.00,4),(241945,48714,0.00,0.00,5),(241946,48715,10.00,120000.00,1),(241947,48715,20.00,0.00,2),(241948,48715,10.00,10000000.00,3),(241949,48715,2.00,0.00,4),(241950,48715,1.00,0.00,5),(241951,48716,10.00,120000.00,1),(241952,48716,20.00,0.00,2),(241953,48716,0.00,0.00,3),(241954,48716,0.00,0.00,4),(241955,48716,0.00,0.00,5),(241956,48717,2.00,120000.00,1),(241957,48717,20.00,0.00,2),(241958,48717,0.00,0.00,3),(241959,48717,0.00,0.00,4),(241960,48717,0.00,0.00,5),(241961,48718,2.00,180000.00,1),(241962,48718,20.00,0.00,2),(241963,48718,0.00,0.00,3),(241964,48718,0.00,0.00,4),(241965,48718,0.00,0.00,5),(241966,48719,30.00,2500.00,1),(241967,48719,20.00,0.00,2),(241968,48719,10.00,0.00,3),(241969,48719,2.00,0.00,4),(241970,48719,0.00,0.00,5),(241971,48720,30.00,2500.00,1),(241972,48720,20.00,0.00,2),(241973,48720,10.00,10000000.00,3),(241974,48720,2.00,0.00,4),(241975,48720,1.00,0.00,5),(241976,48721,30.00,2500.00,1),(241977,48721,20.00,0.00,2),(241978,48721,0.00,0.00,3),(241979,48721,0.00,0.00,4),(241980,48721,0.00,0.00,5),(241981,48722,30.00,5000.00,1),(241982,48722,20.00,0.00,2),(241983,48722,0.00,0.00,3),(241984,48722,0.00,0.00,4),(241985,48722,0.00,0.00,5),(241986,48723,30.00,5000.00,1),(241987,48723,20.00,0.00,2),(241988,48723,10.00,0.00,3),(241989,48723,2.00,0.00,4),(241990,48723,0.00,0.00,5),(241991,48724,30.00,5000.00,1),(241992,48724,20.00,0.00,2),(241993,48724,10.00,10000000.00,3),(241994,48724,2.00,0.00,4),(241995,48724,1.00,0.00,5),(241996,48725,30.00,5000.00,1),(241997,48725,20.00,0.00,2),(241998,48725,0.00,0.00,3),(241999,48725,0.00,0.00,4),(242000,48725,0.00,0.00,5),(242001,48726,30.00,10000.00,1),(242002,48726,20.00,0.00,2),(242003,48726,0.00,0.00,3),(242004,48726,0.00,0.00,4),(242005,48726,0.00,0.00,5),(242006,48727,20.00,2500.00,1),(242007,48727,20.00,0.00,2),(242008,48727,10.00,0.00,3),(242009,48727,2.00,0.00,4),(242010,48727,0.00,0.00,5),(242011,48728,20.00,2500.00,1),(242012,48728,20.00,0.00,2),(242013,48728,10.00,10000000.00,3),(242014,48728,2.00,0.00,4),(242015,48728,1.00,0.00,5),(242016,48729,20.00,0.00,1),(242017,48729,20.00,0.00,2),(242018,48729,10.00,10000000.00,3),(242019,48729,2.00,0.00,4),(242020,48729,1.00,0.00,5),(242021,48730,10.00,0.00,1),(242022,48730,20.00,0.00,2),(242023,48730,0.00,0.00,3),(242024,48730,0.00,0.00,4),(242025,48730,0.00,0.00,5),(242026,48731,10.00,1000.00,1),(242027,48731,20.00,0.00,2),(242028,48731,10.00,0.00,3),(242029,48731,2.00,0.00,4),(242030,48731,0.00,0.00,5),(242031,48732,10.00,1000.00,1),(242032,48732,20.00,0.00,2),(242033,48732,10.00,10000000.00,3),(242034,48732,2.00,0.00,4),(242035,48732,1.00,0.00,5),(242036,48733,10.00,1000.00,1),(242037,48733,20.00,0.00,2),(242038,48733,0.00,0.00,3),(242039,48733,0.00,0.00,4),(242040,48733,0.00,0.00,5),(242041,48734,5.00,2500.00,1),(242042,48734,20.00,0.00,2),(242043,48734,2.00,0.00,3),(242044,48734,0.00,0.00,4),(242045,48734,0.00,0.00,5),(242046,48735,5.00,2500.00,1),(242047,48735,20.00,0.00,2),(242048,48735,10.00,10000000.00,3),(242049,48735,2.00,0.00,4),(242050,48735,1.00,0.00,5),(242051,48736,10.00,2500.00,1),(242052,48736,20.00,0.00,2),(242053,48736,10.00,10000000.00,3),(242054,48736,2.00,0.00,4),(242055,48736,1.00,0.00,5),(242056,48737,10.00,2500.00,1),(242057,48737,20.00,0.00,2),(242058,48737,0.00,0.00,3),(242059,48737,0.00,0.00,4),(242060,48737,0.00,0.00,5),(242061,48738,10.00,5000.00,1),(242062,48738,20.00,0.00,2),(242063,48738,0.00,0.00,3),(242064,48738,0.00,0.00,4),(242065,48738,0.00,0.00,5),(242066,48739,20.00,2500.00,1),(242067,48739,20.00,0.00,2),(242068,48739,10.00,10000000.00,3),(242069,48739,2.00,0.00,4),(242070,48739,1.00,0.00,5),(242071,48740,10.00,2500.00,1),(242072,48740,20.00,0.00,2),(242073,48740,0.00,0.00,3),(242074,48740,0.00,0.00,4),(242075,48740,0.00,0.00,5),(242076,48742,5.00,20000.00,1),(242077,48742,20.00,0.00,2),(242078,48742,10.00,0.00,3),(242079,48742,2.00,0.00,4),(242080,48742,0.00,0.00,5),(242081,48743,5.00,20000.00,1),(242082,48743,20.00,0.00,2),(242083,48743,10.00,10000000.00,3),(242084,48743,2.00,0.00,4),(242085,48743,1.00,0.00,5),(242086,48744,10.00,20000.00,1),(242087,48744,20.00,0.00,2),(242088,48744,10.00,10000000.00,3),(242089,48744,2.00,0.00,4),(242090,48744,1.00,0.00,5),(242091,48745,10.00,20000.00,1),(242092,48745,20.00,0.00,2),(242093,48745,0.00,0.00,3),(242094,48745,0.00,0.00,4),(242095,48745,0.00,0.00,5),(242096,48746,10.00,30000.00,1),(242097,48746,20.00,0.00,2),(242098,48746,0.00,0.00,3),(242099,48746,0.00,0.00,4),(242100,48746,0.00,0.00,5),(242101,48747,1.00,20000.00,1),(242102,48747,20.00,0.00,2),(242103,48747,10.00,0.00,3),(242104,48747,2.00,0.00,4),(242105,48747,0.00,0.00,5),(242106,48748,1.00,20000.00,1),(242107,48748,20.00,0.00,2),(242108,48748,10.00,10000000.00,3),(242109,48748,2.00,0.00,4),(242110,48748,1.00,0.00,5),(242111,48749,1.00,20000.00,1),(242112,48749,20.00,0.00,2),(242113,48749,0.00,0.00,3),(242114,48749,0.00,0.00,4),(242115,48749,0.00,0.00,5),(242116,48750,2.00,20000.00,1),(242117,48750,20.00,0.00,2),(242118,48750,0.00,0.00,3),(242119,48750,0.00,0.00,4),(242120,48750,0.00,0.00,5),(242121,48751,2.00,75000.00,1),(242122,48751,20.00,0.00,2),(242123,48751,0.00,0.00,3),(242124,48751,0.00,0.00,4),(242125,48751,0.00,0.00,5),(242126,48752,1.00,20000.00,1),(242127,48752,20.00,0.00,2),(242128,48752,10.00,0.00,3),(242129,48752,2.00,0.00,4),(242130,48752,0.00,0.00,5),(242131,48753,1.00,50000.00,1),(242132,48753,20.00,0.00,2),(242133,48753,10.00,10000000.00,3),(242134,48753,2.00,0.00,4),(242135,48753,1.00,0.00,5),(242136,48754,1.00,50000.00,1),(242137,48754,20.00,0.00,2),(242138,48754,0.00,0.00,3),(242139,48754,0.00,0.00,4),(242140,48754,0.00,0.00,5),(242141,48755,2.00,50000.00,1),(242142,48755,20.00,0.00,2),(242143,48755,0.00,0.00,3),(242144,48755,0.00,0.00,4),(242145,48755,0.00,0.00,5),(242146,48756,2.00,75000.00,1),(242147,48756,20.00,0.00,2),(242148,48756,0.00,0.00,3),(242149,48756,0.00,0.00,4),(242150,48756,0.00,0.00,5);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_master_trans`
--

LOCK TABLES `voucher_master_trans` WRITE;
/*!40000 ALTER TABLE `voucher_master_trans` DISABLE KEYS */;
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

-- Dump completed on 2016-04-22 16:45:53

