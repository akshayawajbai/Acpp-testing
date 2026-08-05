-- MySQL dump 10.13  Distrib 5.6.10, for Win32 (x86)
--
-- Host: localhost    Database: thalavadi
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
-- Current Database: `thalavadi`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `thalavadi` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `thalavadi`;

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounting_year`
--

LOCK TABLES `accounting_year` WRITE;
/*!40000 ALTER TABLE `accounting_year` DISABLE KEYS */;
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
-- Table structure for table `admin_ack`
--

DROP TABLE IF EXISTS `admin_ack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_ack` (
  `USER_NAME` varchar(45) NOT NULL DEFAULT '',
  `PASSWORD` varchar(45) DEFAULT NULL,
  `USER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ROLE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`USER_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_ack`
--

LOCK TABLES `admin_ack` WRITE;
/*!40000 ALTER TABLE `admin_ack` DISABLE KEYS */;
INSERT INTO `admin_ack` VALUES ('andrew','andrew',5,'admin'),('aro','aro',6,'user'),('praveen','praveen',7,'supervisor');
/*!40000 ALTER TABLE `admin_ack` ENABLE KEYS */;
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
-- Table structure for table `amendment_history`
--

DROP TABLE IF EXISTS `amendment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amendment_history` (
  `AMENDMENT_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AMENDMENT_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `REMARKS` varchar(500) NOT NULL DEFAULT '',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`AMENDMENT_ID`),
  KEY `FK_amendment_history_voucher_id` (`BRANCH_ID`,`VOUCHER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amendment_history`
--

LOCK TABLES `amendment_history` WRITE;
/*!40000 ALTER TABLE `amendment_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `amendment_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_amc_item_mapping`
--

DROP TABLE IF EXISTS `asset_amc_item_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_amc_item_mapping` (
  `AMC_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ITEM_DETAIL_ID` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `UNQ_AMC_ITEM_DETAIL` (`AMC_ID`,`ITEM_DETAIL_ID`),
  KEY `FK_AMC_ITEM_DETAIL_ID` (`ITEM_DETAIL_ID`),
  CONSTRAINT `FK_AMC_ID` FOREIGN KEY (`AMC_ID`) REFERENCES `asset_amc_renewal_master` (`AMC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_amc_item_mapping`
--

LOCK TABLES `asset_amc_item_mapping` WRITE;
/*!40000 ALTER TABLE `asset_amc_item_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_amc_item_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_amc_renewal_history`
--

DROP TABLE IF EXISTS `asset_amc_renewal_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_amc_renewal_history` (
  `AMC_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `RENEWAL_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `AMC_FROM` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `AMC_TO` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PREMIUM_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AMC_RENEWAL_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`AMC_RENEWAL_ID`,`VOUCHER_ID`,`BRANCH_ID`),
  KEY `FK_asset_amc_renewal_history_1` (`AMC_ID`),
  CONSTRAINT `FK_asset_amc_renewal_history_1` FOREIGN KEY (`AMC_ID`) REFERENCES `asset_amc_renewal_master` (`AMC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_amc_renewal_history`
--

LOCK TABLES `asset_amc_renewal_history` WRITE;
/*!40000 ALTER TABLE `asset_amc_renewal_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_amc_renewal_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_amc_renewal_master`
--

DROP TABLE IF EXISTS `asset_amc_renewal_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_amc_renewal_master` (
  `AMC_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AMC_GROUP` varchar(100) NOT NULL DEFAULT '',
  `PROVIDER` varchar(100) NOT NULL DEFAULT '',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`AMC_ID`),
  KEY `FK_AMC_PROJECT_ID` (`PROJECT_ID`),
  CONSTRAINT `FK_AMC_PROJECT_ID` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_amc_renewal_master`
--

LOCK TABLES `asset_amc_renewal_master` WRITE;
/*!40000 ALTER TABLE `asset_amc_renewal_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_amc_renewal_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_area`
--

DROP TABLE IF EXISTS `asset_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_area` (
  `AREA_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`AREA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_area`
--

LOCK TABLES `asset_area` WRITE;
/*!40000 ALTER TABLE `asset_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_block`
--

DROP TABLE IF EXISTS `asset_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_block` (
  `BLOCK_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BUILDING_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NAME` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`BLOCK_ID`),
  KEY `FK_BUILDING_ID` (`BUILDING_ID`),
  CONSTRAINT `FK_BUILDING_ID` FOREIGN KEY (`BUILDING_ID`) REFERENCES `asset_building` (`BUILDING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_block`
--

LOCK TABLES `asset_block` WRITE;
/*!40000 ALTER TABLE `asset_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_building`
--

DROP TABLE IF EXISTS `asset_building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_building` (
  `BUILDING_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AREA_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NAME` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`BUILDING_ID`),
  KEY `FK_AREA_ID` (`AREA_ID`),
  CONSTRAINT `FK_AREA_ID` FOREIGN KEY (`AREA_ID`) REFERENCES `asset_area` (`AREA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_building`
--

LOCK TABLES `asset_building` WRITE;
/*!40000 ALTER TABLE `asset_building` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_category`
--

DROP TABLE IF EXISTS `asset_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_category` (
  `CATEGORY_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL DEFAULT '',
  `PARENT_CATEGORY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `IMAGE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_category`
--

LOCK TABLES `asset_category` WRITE;
/*!40000 ALTER TABLE `asset_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_class`
--

DROP TABLE IF EXISTS `asset_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_class` (
  `ASSET_CLASS_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ASSET_CLASS` varchar(100) NOT NULL DEFAULT '',
  `PARENT_CLASS_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DEP_PERCENTAGE` decimal(13,2) NOT NULL DEFAULT '0.00',
  `IMAGE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `METHOD_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ASSET_CLASS_ID`),
  UNIQUE KEY `ASSET_CLASS` (`ASSET_CLASS`),
  KEY `FK_CLASS_METHOD_ID` (`METHOD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_class`
--

LOCK TABLES `asset_class` WRITE;
/*!40000 ALTER TABLE `asset_class` DISABLE KEYS */;
INSERT INTO `asset_class` VALUES (1,'Primary',1,0.00,0,2),(2,'Software - Programs - licences',1,0.00,0,2),(3,'Other intangible assets',1,0.00,0,2),(4,'Land',1,0.00,0,2),(5,'Buildings',1,0.00,0,2),(6,'Plant & Machinery',1,0.00,0,2),(7,'Fixtures & Fittings',1,0.00,0,2),(8,'Furniture',1,0.00,0,2),(9,'Office Equipments',1,0.00,0,2),(10,'Vehicles',1,0.00,0,2),(11,'Home Appliances',1,0.00,0,2),(12,'Other Tangible Assets',1,0.00,0,2),(24,'Computer',9,10.00,0,1);
/*!40000 ALTER TABLE `asset_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_custodian`
--

DROP TABLE IF EXISTS `asset_custodian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_custodian` (
  `CUSTODIAN_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CUSTODIAN` varchar(50) NOT NULL DEFAULT '',
  `ROLE` varchar(50) NOT NULL DEFAULT '',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`CUSTODIAN_ID`,`BRANCH_ID`),
  KEY `CUSTODIAN` (`CUSTODIAN`,`ROLE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_custodian`
--

LOCK TABLES `asset_custodian` WRITE;
/*!40000 ALTER TABLE `asset_custodian` DISABLE KEYS */;
INSERT INTO `asset_custodian` VALUES (2,'Leo','Manager',0),(1,'Lourdu','Admin',0),(3,'Salamon','Project Leader',0);
/*!40000 ALTER TABLE `asset_custodian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_dep_method`
--

DROP TABLE IF EXISTS `asset_dep_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_dep_method` (
  `METHOD_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DEP_METHOD` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`METHOD_ID`),
  UNIQUE KEY `DEP_METHOD` (`DEP_METHOD`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_dep_method`
--

LOCK TABLES `asset_dep_method` WRITE;
/*!40000 ALTER TABLE `asset_dep_method` DISABLE KEYS */;
INSERT INTO `asset_dep_method` VALUES (1,'Straight Line Method'),(2,'Written Down Method');
/*!40000 ALTER TABLE `asset_dep_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_depreciation_detail`
--

DROP TABLE IF EXISTS `asset_depreciation_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_depreciation_detail` (
  `DEPRECIATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ITEM_DETAIL_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `METHOD_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DEPRECIATION_PERCENTAGE` decimal(15,2) NOT NULL DEFAULT '0.00',
  `DEPRECIATION_VALUE` decimal(15,2) NOT NULL DEFAULT '0.00',
  `BALANCE_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `DEPRECIATION_APPLY_FROM` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DEPRECIATON_PERIOD_TO` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `FK_asset_depreciation_detail_1` (`ITEM_DETAIL_ID`),
  KEY `FK_asset_depreciation_detail_DepID` (`DEPRECIATION_ID`),
  CONSTRAINT `FK_asset_depreciation_detail_1` FOREIGN KEY (`ITEM_DETAIL_ID`) REFERENCES `asset_item_detail` (`ITEM_DETAIL_ID`),
  CONSTRAINT `FK_asset_depreciation_detail_DepID` FOREIGN KEY (`DEPRECIATION_ID`) REFERENCES `asset_depreciation_master` (`DEPRECIATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_depreciation_detail`
--

LOCK TABLES `asset_depreciation_detail` WRITE;
/*!40000 ALTER TABLE `asset_depreciation_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_depreciation_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_depreciation_master`
--

DROP TABLE IF EXISTS `asset_depreciation_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_depreciation_master` (
  `DEPRECIATION_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DEPRECIATION_APPLIED_ON` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DEPRECIATION_PERIOD_FROM` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DEPRECIATION_PERIOD_TO` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `NARRATION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DEPRECIATION_ID`),
  KEY `FK_asset_depreciation_master_1` (`PROJECT_ID`),
  CONSTRAINT `FK_asset_depreciation_master_1` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_depreciation_master`
--

LOCK TABLES `asset_depreciation_master` WRITE;
/*!40000 ALTER TABLE `asset_depreciation_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_depreciation_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_depreciation_method`
--

DROP TABLE IF EXISTS `asset_depreciation_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_depreciation_method` (
  `METHOD_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`METHOD_ID`),
  UNIQUE KEY `UNQ_NAME` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_depreciation_method`
--

LOCK TABLES `asset_depreciation_method` WRITE;
/*!40000 ALTER TABLE `asset_depreciation_method` DISABLE KEYS */;
INSERT INTO `asset_depreciation_method` VALUES (1,'Straight Line Method','Straight Line Method'),(2,'Written down method','written down method');
/*!40000 ALTER TABLE `asset_depreciation_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_group`
--

DROP TABLE IF EXISTS `asset_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_group` (
  `GROUP_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `GROUP_NAME` varchar(50) NOT NULL DEFAULT '',
  `PARENT_GROUP_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `METHOD_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DEP_PERCENTAGE` double NOT NULL DEFAULT '0',
  `IMAGE_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`GROUP_ID`),
  KEY `FK_asset_group_1` (`METHOD_ID`),
  CONSTRAINT `FK_asset_group_1` FOREIGN KEY (`METHOD_ID`) REFERENCES `asset_depreciation_method` (`METHOD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_group`
--

LOCK TABLES `asset_group` WRITE;
/*!40000 ALTER TABLE `asset_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_id_format`
--

DROP TABLE IF EXISTS `asset_id_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_id_format` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ITEM_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PREFIX` varchar(20) NOT NULL DEFAULT '',
  `SUFIX` varchar(20) NOT NULL DEFAULT '',
  `RUNNING_NUMBER` int(10) unsigned NOT NULL DEFAULT '0',
  `LAST_ASSET_ID` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_id_format`
--

LOCK TABLES `asset_id_format` WRITE;
/*!40000 ALTER TABLE `asset_id_format` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_id_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_in_out_detail`
--

DROP TABLE IF EXISTS `asset_in_out_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_in_out_detail` (
  `IN_OUT_DETAIL_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IN_OUT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ITEM_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `QUANTITY` int(10) unsigned NOT NULL DEFAULT '0',
  `AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`IN_OUT_DETAIL_ID`,`BRANCH_ID`),
  KEY `FK__DETAIL_IN_OUT_ITEM_ID` (`ITEM_ID`),
  KEY `FK_DETAIL_IN_OUT_ID` (`IN_OUT_ID`),
  CONSTRAINT `FK_DETAIL_IN_OUT_ID` FOREIGN KEY (`IN_OUT_ID`) REFERENCES `asset_in_out_master` (`IN_OUT_ID`),
  CONSTRAINT `FK__DETAIL_IN_OUT_ITEM_ID` FOREIGN KEY (`ITEM_ID`) REFERENCES `asset_item` (`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_in_out_detail`
--

LOCK TABLES `asset_in_out_detail` WRITE;
/*!40000 ALTER TABLE `asset_in_out_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_in_out_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_in_out_master`
--

DROP TABLE IF EXISTS `asset_in_out_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_in_out_master` (
  `IN_OUT_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IN_OUT_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `BILL_INVOICE_NO` varchar(30) NOT NULL DEFAULT '',
  `VENDOR_ID` int(10) unsigned DEFAULT NULL,
  `SOLD_TO` varchar(50) DEFAULT NULL,
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TOT_AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `FLAG` varchar(5) NOT NULL DEFAULT '' COMMENT 'OP - Opening Balance, PU - Purchase, IK - Inkind, SL - Sales, DS - Dispose, DN - Donate',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DONOR_ID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`IN_OUT_ID`,`BRANCH_ID`),
  KEY `FK_IN_OUT_VENDOR_ID` (`VENDOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_in_out_master`
--

LOCK TABLES `asset_in_out_master` WRITE;
/*!40000 ALTER TABLE `asset_in_out_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_in_out_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_insurance_detail`
--

DROP TABLE IF EXISTS `asset_insurance_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_insurance_detail` (
  `INSURANCE_DETAIL_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ITEM_DETAIL_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `RENEWAL_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PERIOD_FROM` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PERIOD_TO` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SUM_INSURED` decimal(13,2) NOT NULL DEFAULT '0.00',
  `PREMIUM_AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `INSURANCE_PLAN_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `POLICY_NO` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`INSURANCE_DETAIL_ID`),
  KEY `FK_ASSET_INSURANCE_ITEM_DETAIL_ID` (`ITEM_DETAIL_ID`),
  KEY `FK_INSURANCE_PLAN_ID` (`INSURANCE_PLAN_ID`),
  CONSTRAINT `FK_ASSET_INSURANCE_ITEM_DETAIL_ID` FOREIGN KEY (`ITEM_DETAIL_ID`) REFERENCES `asset_item_detail` (`ITEM_DETAIL_ID`),
  CONSTRAINT `FK_INSURANCE_PLAN_ID` FOREIGN KEY (`INSURANCE_PLAN_ID`) REFERENCES `asset_insurance_plan` (`INSURANCE_PLAN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_insurance_detail`
--

LOCK TABLES `asset_insurance_detail` WRITE;
/*!40000 ALTER TABLE `asset_insurance_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_insurance_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_insurance_plan`
--

DROP TABLE IF EXISTS `asset_insurance_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_insurance_plan` (
  `INSURANCE_PLAN_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `INSURANCE_PLAN` varchar(200) NOT NULL DEFAULT '',
  `COMPANY` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`INSURANCE_PLAN_ID`),
  UNIQUE KEY `INSURANCE_PLAN_unq` (`INSURANCE_PLAN`),
  UNIQUE KEY `COMPANY_unq` (`COMPANY`),
  KEY `UNQ` (`INSURANCE_PLAN`,`COMPANY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_insurance_plan`
--

LOCK TABLES `asset_insurance_plan` WRITE;
/*!40000 ALTER TABLE `asset_insurance_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_insurance_plan` ENABLE KEYS */;
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
-- Table structure for table `asset_location`
--

DROP TABLE IF EXISTS `asset_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_location` (
  `LOCATION_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL DEFAULT '',
  `ADDRESS` varchar(100) DEFAULT NULL,
  `LOCATION_TYPE` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`LOCATION_ID`),
  UNIQUE KEY `UNQ_NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_location`
--

LOCK TABLES `asset_location` WRITE;
/*!40000 ALTER TABLE `asset_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_project_location`
--

DROP TABLE IF EXISTS `asset_project_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_project_location` (
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`PROJECT_ID`,`LOCATION_ID`,`BRANCH_ID`),
  KEY `FK_PROJECT_LOCATION_ID` (`LOCATION_ID`),
  CONSTRAINT `FK_PROJECT_LOCATION_ID` FOREIGN KEY (`LOCATION_ID`) REFERENCES `asset_location` (`LOCATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_project_location`
--

LOCK TABLES `asset_project_location` WRITE;
/*!40000 ALTER TABLE `asset_project_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_project_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_room`
--

DROP TABLE IF EXISTS `asset_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_room` (
  `ROOM_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BLOCK_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `FLOOR_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ROOM_NO` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ROOM_ID`),
  KEY `FK_FLOOR_ID` (`BLOCK_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_room`
--

LOCK TABLES `asset_room` WRITE;
/*!40000 ALTER TABLE `asset_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_stock_location`
--

DROP TABLE IF EXISTS `asset_stock_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_stock_location` (
  `LOCATION_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LOCATION_NAME` varchar(50) NOT NULL DEFAULT '',
  `PARENT_LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `IMAGE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`LOCATION_ID`),
  UNIQUE KEY `Location_name` (`LOCATION_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_stock_location`
--

LOCK TABLES `asset_stock_location` WRITE;
/*!40000 ALTER TABLE `asset_stock_location` DISABLE KEYS */;
INSERT INTO `asset_stock_location` VALUES (1,'Primary',1,0);
/*!40000 ALTER TABLE `asset_stock_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_stock_manufacture`
--

DROP TABLE IF EXISTS `asset_stock_manufacture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_stock_manufacture` (
  `MANUFACTURE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL DEFAULT '',
  `ADDRESS` varchar(100) DEFAULT NULL,
  `PAN_NO` varchar(10) NOT NULL DEFAULT '',
  `CONTACT_NO` varchar(15) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MANUFACTURE_ID`),
  UNIQUE KEY `UN_NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_stock_manufacture`
--

LOCK TABLES `asset_stock_manufacture` WRITE;
/*!40000 ALTER TABLE `asset_stock_manufacture` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_stock_manufacture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_stock_manufacturer`
--

DROP TABLE IF EXISTS `asset_stock_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_stock_manufacturer` (
  `MANUFACTURER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MANUFACTURER` varchar(100) NOT NULL DEFAULT '',
  `ADDRESS` varchar(200) NOT NULL DEFAULT '',
  `CONTACT_NO` varchar(15) NOT NULL DEFAULT '',
  `EMAIL_ID` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`MANUFACTURER_ID`),
  UNIQUE KEY `MANUFACTURER` (`MANUFACTURER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_stock_manufacturer`
--

LOCK TABLES `asset_stock_manufacturer` WRITE;
/*!40000 ALTER TABLE `asset_stock_manufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_stock_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_stock_unitofmeasure`
--

DROP TABLE IF EXISTS `asset_stock_unitofmeasure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_stock_unitofmeasure` (
  `UNIT_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(20) NOT NULL DEFAULT '',
  `SYMBOL` varchar(20) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DECIMAL_PLACE` int(10) unsigned DEFAULT NULL,
  `FIRST_UNIT_ID` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `SECOND_UNIT_ID` varchar(20) DEFAULT NULL,
  `CONVERSION_OF` int(10) unsigned DEFAULT NULL,
  `UNITTYPE_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UNIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_stock_unitofmeasure`
--

LOCK TABLES `asset_stock_unitofmeasure` WRITE;
/*!40000 ALTER TABLE `asset_stock_unitofmeasure` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_stock_unitofmeasure` ENABLE KEYS */;
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
-- Table structure for table `asset_trans`
--

DROP TABLE IF EXISTS `asset_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_trans` (
  `IN_OUT_DETAIL_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ITEM_DETAIL_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `GAIN_AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `LOSS_AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`IN_OUT_DETAIL_ID`,`ITEM_DETAIL_ID`,`BRANCH_ID`),
  KEY `FK_ITEM_DETAIL_ID` (`ITEM_DETAIL_ID`),
  CONSTRAINT `FK_IN_OUT_DETAIL_ID` FOREIGN KEY (`IN_OUT_DETAIL_ID`) REFERENCES `asset_in_out_detail` (`IN_OUT_DETAIL_ID`),
  CONSTRAINT `FK_ITEM_DETAIL_ID` FOREIGN KEY (`ITEM_DETAIL_ID`) REFERENCES `asset_item_detail` (`ITEM_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_trans`
--

LOCK TABLES `asset_trans` WRITE;
/*!40000 ALTER TABLE `asset_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_unitofmeasure`
--

DROP TABLE IF EXISTS `asset_unitofmeasure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_unitofmeasure` (
  `UNIT_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(20) NOT NULL DEFAULT '',
  `SYMBOL` varchar(20) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DECIMAL_PLACE` int(10) unsigned DEFAULT NULL,
  `FIRST_UNIT_ID` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `SECOND_UNIT_ID` varchar(20) DEFAULT NULL,
  `CONVERSION_OF` int(10) unsigned DEFAULT NULL,
  `UNITTYPE_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UNIT_ID`),
  UNIQUE KEY `UNQ_SYMBOL` (`SYMBOL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_unitofmeasure`
--

LOCK TABLES `asset_unitofmeasure` WRITE;
/*!40000 ALTER TABLE `asset_unitofmeasure` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_unitofmeasure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_vendor_info`
--

DROP TABLE IF EXISTS `asset_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_vendor_info` (
  `VENDOR_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(150) NOT NULL DEFAULT '',
  `ADDRESS` varchar(100) DEFAULT NULL,
  `CITY` varchar(45) DEFAULT NULL,
  `STATE` varchar(45) DEFAULT NULL,
  `POSTAL_CODE` varchar(20) DEFAULT NULL,
  `PANNO` varchar(50) NOT NULL DEFAULT '',
  `COUNTRY` varchar(50) DEFAULT NULL,
  `TELEPHONE_NO` varchar(15) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`VENDOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_vendor_info`
--

LOCK TABLES `asset_vendor_info` WRITE;
/*!40000 ALTER TABLE `asset_vendor_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch_location`
--

DROP TABLE IF EXISTS `branch_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch_location` (
  `LOCATION_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LOCATION_NAME` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`LOCATION_ID`),
  UNIQUE KEY `Location_Name Unique` (`LOCATION_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_location`
--

LOCK TABLES `branch_location` WRITE;
/*!40000 ALTER TABLE `branch_location` DISABLE KEYS */;
INSERT INTO `branch_location` VALUES (1,0,'Primary'),(2,15,'SHC-HYD House'),(3,15,'SHC-HYD School');
/*!40000 ALTER TABLE `branch_location` ENABLE KEYS */;
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
-- Table structure for table `budget_allot_fund`
--

DROP TABLE IF EXISTS `budget_allot_fund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_allot_fund` (
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
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`BRANCH_ID`,`BUDGET_ID`,`LEDGER_ID`),
  KEY `idx_budget_allot_fund_budget_id` (`BUDGET_ID`) USING BTREE,
  KEY `idx_budget_allot_fund_ledger_id` (`LEDGER_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_allot_fund`
--

LOCK TABLES `budget_allot_fund` WRITE;
/*!40000 ALTER TABLE `budget_allot_fund` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget_allot_fund` ENABLE KEYS */;
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
INSERT INTO `costcategory_costcentre` VALUES (2,1);
/*!40000 ALTER TABLE `costcategory_costcentre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `COUNTRY_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `COUNTRY` varchar(50) NOT NULL DEFAULT '',
  `COUNTRY_CODE` varchar(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`COUNTRY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Afghanistan','AFG'),(3,'Albania','ALB'),(4,'Algeria','DZA'),(6,'American Samoa','ASM'),(8,'Andorra','AND'),(10,'Angola','AGO'),(11,'Anguilla','AIA'),(12,'Antarctica','ATA'),(13,'Antigua and Barbuda','ATG'),(14,'Argentina','ARG'),(15,'Armenia','ARM'),(16,'Aruba','ABW'),(17,'Australia','AUS'),(18,'Austria','AUT'),(19,'Azerbaijan','AZE'),(20,'Bahamas','BHS'),(21,'Bahrain','BHR'),(22,'Bangladesh','BGD'),(23,'Barbados','BRB'),(24,'Belarus','BLR'),(25,'Belgium','BEL'),(26,'Belize','BLZ'),(27,'Benin','BEN'),(28,'Bermuda','BMU'),(29,'Bhutan','BTN'),(30,'Bolivia','BOL'),(31,'Bosnia and Herzegovina','BIH'),(32,'Botswana','BWA'),(33,'Brazil','BRA'),(34,'British Indian Ocean Territory','IOT'),(35,'Brunei Darussalam','BRN'),(36,'Bulgaria','BGR'),(37,'Burkina Faso','BFA'),(38,'Burundi','BDI'),(39,'Cambodia','KHM'),(40,'Cameroon','CMR'),(41,'Canada','CAN'),(42,'Cape Verde','CPV'),(43,'Cayman Islands','CYM'),(44,'Central African Republic','CAF'),(45,'Chad','TCD'),(46,'Chile','CHL'),(47,'China','CHN'),(48,'Christmas Island','CXR'),(49,'Cocos (Keeling) Islands','CCK'),(50,'Colombia','COL'),(51,'Comoros','COM'),(52,'Cook Islands','COK'),(53,'Costa Rica','CRC'),(54,'Croatia','HRV'),(55,'Cuba','CUB'),(56,'Cyprus','CYP'),(57,'Czech Republic','CZE'),(58,'Denmark','DNK'),(59,'Djibouti','DJI'),(60,'Dominica','DMA'),(61,'Dominican Republic','DOM'),(62,'Ecuador','ECU'),(63,'Egypt','EGY'),(64,'El Salvador','SLV'),(65,'Equatorial Guinea','GNQ'),(66,'Eritrea','ERI'),(67,'Estonia','EST'),(68,'Ethiopia','ETH'),(69,'Falkland Islands (Malvinas)','FLK'),(70,'Faroe Islands','FRO'),(71,'Fiji','FJI'),(72,'Finland','FIN'),(73,'France','FRA'),(74,'Gabon','GAB'),(75,'Gambia','GMB'),(76,'Georgia','GEO'),(77,'Germany','DEU'),(78,'Ghana','GHA'),(79,'Gibraltar','GIB'),(80,'Greece','GRC'),(81,'Greenland','GRL'),(82,'Grenada','GRD'),(83,'Guam','GUM'),(84,'Guatemala','GLP'),(85,'Guinea','GIN'),(86,'Guinea-Bissau','GNB'),(87,'Guyana','GUY'),(88,'Haiti','HTI'),(89,'Holy See (Vatican City State)','VAT'),(90,'Honduras','HND'),(91,'Hong Kong','HKG'),(92,'Hungary','HUN'),(93,'Iceland','IS'),(94,'India','IND'),(95,'Indonesia','IDN'),(96,'Iran, Islamic Republic of','IRN'),(97,'Iraq','IRQ'),(98,'Ireland','IRL'),(99,'Israel','ISR'),(100,'Italy','ITA'),(101,'Jamaica','JAM'),(102,'Japan','JPN'),(103,'Jordan','JOR'),(104,'Kazakhstan','KAZ'),(105,'Kenya','KEN'),(106,'Kuwait','KWT'),(107,'Kyrgyzstan','KGZ'),(108,'Lao Peoples Democratic Republic','LAO'),(109,'Latvia','LVA'),(110,'Lebanon','LBN'),(111,'Lesotho','LSO'),(112,'Liberia','LBR'),(113,'Libyan Arab Jamahiriya','LBY'),(114,'Liechtenstein','LIE'),(115,'Lithuania','LTU'),(116,'Luxembourg','LUX'),(117,'Macao','MAC'),(118,'Macedonia, the Former Yugoslav Republic of','MKD'),(119,'Madagascar','MDG'),(120,'Malawi','MWI'),(121,'Malaysia','MYS'),(122,'Maldives','MDV'),(123,'Mali','MLI'),(124,'Malta','MLT'),(125,'Marshall Islands','MHL'),(126,'Mauritania','MRT'),(127,'Mauritius','MUS'),(128,'Mayotte','MYT'),(129,'Mexico','MEX'),(130,'Micronesia, Federated States of','FSM'),(131,'Moldova, Republic of','MDA'),(132,'Monaco','MCO'),(133,'Mongolia','MNG'),(134,'Montserrat','MSR'),(135,'Mozambique','MOZ'),(136,'Namibia','NAM'),(137,'Nauru','NRU'),(138,'Nepal','NPL'),(139,'Netherlands','NLD'),(140,'Netherlands Antilles','ANT'),(141,'New Caledonia','NCL'),(142,'New Zealand','NZL'),(143,'Nicaragua','NIC'),(144,'Niger','NER'),(145,'Nigeria','NGA'),(146,'Niue','NIU'),(147,'Norfolk Island','NFK'),(148,'Northern Mariana Islands','MNP'),(149,'Norway','NOR'),(150,'Oman','OMN'),(151,'Pakistan','PAK'),(152,'Palau','PLW'),(153,'Panama','PAN'),(154,'Papua New Guinea','PNG'),(155,'Paraguay','PRY'),(156,'Peru','PER'),(157,'Philippines','PHL'),(158,'Pitcairn','PCN'),(159,'Poland','POL'),(160,'Portugal','PRT'),(161,'Puerto Rico','PRI'),(162,'Qatar','QAT'),(163,'Romania','ROU'),(164,'Russian Federation','RUS'),(165,'Rwanda','RWA'),(166,'Saint Helena','SHN'),(167,'Saint Kitts and Nevis','KNA'),(168,'Saint Lucia','LCA'),(169,'Saint Pierre and Miquelon','SPM'),(170,'Saint Vincent and the Grenadines','VCT'),(171,'Samoa','WSM'),(172,'San Marino','SMR'),(173,'Sao Tome and Principe','STP'),(174,'Saudi Arabia','SAU'),(175,'Senegal','SEN'),(176,'Serbia and Montenegro','SRB'),(177,'Seychelles','SYC'),(178,'Sierra Leone','SLE'),(179,'Singapore','SGP'),(180,'Slovakia','SVK'),(181,'Slovenia','SVN'),(182,'Solomon Islands','SLB'),(183,'Somalia','SOM'),(184,'South Africa','ZAF'),(185,'South Georgia and the South Sandwich Islands','SGS'),(186,'Spain','ESP'),(187,'Sri Lanka','LKA'),(188,'Sudan','SDN'),(189,'Suriname','SUR'),(190,'Svalbard and Jan Mayen','SJM'),(191,'Swaziland','SWZ'),(192,'Sweden','SWE'),(193,'Switzerland','CHE'),(194,'Syrian Arab Republic','SYR'),(195,'Taiwan, Province of China','TWN'),(196,'Tajikistan','TJK'),(197,'Tanzania, United Republic of','TZA'),(198,'Thailand','THA'),(199,'Togo','TGO'),(200,'Tokelau','TKL'),(201,'Tonga','TON'),(202,'Trinidad and Tobago','TTO'),(203,'Tunisia','TUN'),(204,'Turkey','TUR'),(205,'Turkmenistan','TKM'),(206,'Turks and Caicos Islands','TCA'),(207,'Tuvalu','TUV'),(208,'Uganda','UGA'),(209,'Ukraine','UKR'),(210,'United Arab Emirates','ARE'),(211,'United Kingdom','GBR'),(212,'United States','USA'),(213,'Uruguay','URY'),(214,'Uzbekistan','UZB'),(215,'Vanuatu','VUT'),(216,'Venezuela','VEN'),(217,'Wallis and Futuna','WLF'),(218,'Western Sahara','ESH'),(219,'Yemen','YEM'),(220,'Zambia','ZMB'),(221,'Zimbabwe','ZWE'),(222,'Timor Leste','TL');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_baptism_register`
--

DROP TABLE IF EXISTS `cristo_baptism_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_baptism_register` (
  `BAPTISM_REGISTER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BAPTISM_REGISTER_REF` varchar(15) NOT NULL DEFAULT '',
  `BAPTISM_REGISTER_TYPE` varchar(1) NOT NULL DEFAULT 'R',
  `BAPTISM_DATE` datetime DEFAULT NULL,
  `BAPTISM_PLACE` varchar(50) DEFAULT NULL,
  `BAPTISM_MINISTER` varchar(50) DEFAULT NULL,
  `BAPTISM_PARISH` varchar(50) NOT NULL DEFAULT '',
  `BAPTISM_COUNTRY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `FIRST_NAME` varchar(50) NOT NULL DEFAULT '',
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `AGE` varchar(3) DEFAULT NULL,
  `BIRTH_PLACE` varchar(50) DEFAULT NULL,
  `GENDER` varchar(1) NOT NULL DEFAULT '',
  `FATHER_NAME` varchar(50) DEFAULT NULL,
  `FATHER_DOMICILE` varchar(50) DEFAULT NULL,
  `FATHER_RELIGION_ID` int(10) unsigned DEFAULT NULL,
  `MOTHER_NAME` varchar(50) DEFAULT NULL,
  `MOTHER_DOMICILE` varchar(50) DEFAULT NULL,
  `MOTHER_RELIGION_ID` int(10) unsigned DEFAULT NULL,
  `GOD_FATHER_NAME` varchar(50) DEFAULT NULL,
  `GOD_MOTHER_NAME` varchar(50) DEFAULT NULL,
  `GOD_PARENT_PLACE` varchar(50) DEFAULT NULL,
  `COMMUNITY_ID` int(10) unsigned DEFAULT NULL,
  `OCCUPATION_ID` int(10) unsigned DEFAULT NULL,
  `NOTES` varchar(300) DEFAULT NULL,
  `DATE_OF_CONFIRMATION` datetime DEFAULT NULL,
  `CONFIRMATION_REG_ID` int(10) unsigned DEFAULT NULL,
  `PLACE_OF_CONFIRMATION` varchar(50) DEFAULT NULL,
  `DATE_OF_FIRST_HOLY_COMMUNION` datetime DEFAULT NULL,
  `HOLY_COMMUNION_REGISTER_ID` int(10) unsigned DEFAULT NULL,
  `PLACE_OF_HOLY_COMMUNION` varchar(50) DEFAULT NULL,
  `DATE_OF_MARRIAGE` datetime DEFAULT NULL,
  `MARRIAGE_REGISTER_ID` int(10) unsigned DEFAULT NULL,
  `PLACE_OF_MARRIAGE` varchar(50) DEFAULT NULL,
  `SPOUSE` varchar(50) DEFAULT NULL,
  `DATE_OF_DEATH` datetime DEFAULT NULL,
  `DEATH_REGISTER_ID` int(10) unsigned DEFAULT NULL,
  `PLACE_OF_DEATH` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`BAPTISM_REGISTER_ID`),
  UNIQUE KEY `UNQ_BAPTISM_REFERENCE` (`BAPTISM_REGISTER_REF`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_baptism_register`
--

LOCK TABLES `cristo_baptism_register` WRITE;
/*!40000 ALTER TABLE `cristo_baptism_register` DISABLE KEYS */;
INSERT INTO `cristo_baptism_register` VALUES (1,'1','R','2016-01-24 00:00:00','Yelagiri','Fr Thaddeus','Our Lady of Lourdes',1,'M.Sweety princes ','','2015-08-10 00:00:00','','Rusha Hospital, Katpadi','F','Mathew ','Punganoor',0,'Mary sathya','Punganoor',0,'Leo Anbarasan ','Julia Mary ','Punganoor',0,0,NULL,'0001-01-01 00:00:00',0,'','0001-01-01 00:00:00',0,'','0001-01-01 00:00:00',0,'','','0001-01-01 00:00:00',0,''),(2,'2','R','2016-04-24 00:00:00','Yelagiri','Fr Thaddeus','Our Lady of Lourdes',1,'H.Mounish paul','','2015-09-12 00:00:00','','CMCH, Vellore ','F','S.Hariharan','Athanavur ',0,'K.S. Rexi Ramya','Yelagiri hills ',0,'K.Joe Sankaran','S.Manimegalai ','',0,0,NULL,'0001-01-01 00:00:00',0,'','0001-01-01 00:00:00',0,'','0001-01-01 00:00:00',0,'','','0001-01-01 00:00:00',0,'');
/*!40000 ALTER TABLE `cristo_baptism_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_communion_register`
--

DROP TABLE IF EXISTS `cristo_communion_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_communion_register` (
  `COMMUNION_REGISTER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `COMMUNION_REGISTER_REF` varchar(15) NOT NULL DEFAULT '',
  `COMMUNION_REGISTER_TYPE` varchar(1) NOT NULL DEFAULT 'R',
  `COMMUNION_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `COMMUNION_PLACE` varchar(50) DEFAULT NULL,
  `COMMUNION_MINISTER` varchar(50) DEFAULT NULL,
  `COMMUNION_PARISH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `COMMUNION_CHURCH` varchar(50) NOT NULL DEFAULT '',
  `BAPTISM_REGISTER_LINK_ID` int(10) unsigned DEFAULT NULL,
  `COMMUNION_COUNTRY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `GENDER` varchar(1) NOT NULL DEFAULT '',
  `AGE` varchar(3) DEFAULT NULL,
  `BAPTISM_DATE` datetime DEFAULT NULL,
  `BAPTISM_PARISH_ID` int(10) unsigned DEFAULT NULL,
  `FATHER_NAME` varchar(50) DEFAULT NULL,
  `MOTHER_NAME` varchar(50) DEFAULT NULL,
  `NOTES` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`COMMUNION_REGISTER_ID`),
  UNIQUE KEY `UNQ_COMMUNION_REGISTER_REF` (`COMMUNION_REGISTER_REF`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_communion_register`
--

LOCK TABLES `cristo_communion_register` WRITE;
/*!40000 ALTER TABLE `cristo_communion_register` DISABLE KEYS */;
/*!40000 ALTER TABLE `cristo_communion_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_confirmation_register`
--

DROP TABLE IF EXISTS `cristo_confirmation_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_confirmation_register` (
  `CONFIRMATION_REGISTER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CONFIRMATION_REGISTER_REF` varchar(15) NOT NULL DEFAULT '',
  `CONFIRMATION_REGISTER_TYPE` varchar(1) NOT NULL DEFAULT 'R',
  `CONFIRMATION_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CONFIRMATION_PLACE` varchar(50) DEFAULT NULL,
  `CONFIRMATION_MINISTER` varchar(50) DEFAULT NULL,
  `CONFIRMATION_PARISH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CONFIRMATION_COUNTRY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `GENDER` varchar(1) NOT NULL DEFAULT '',
  `AGE` varchar(3) DEFAULT NULL,
  `BAPTISM_DATE` datetime DEFAULT NULL,
  `BAPTISM_PARISH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BAPTISM_REGISTER_LINK_ID` int(10) unsigned DEFAULT NULL,
  `FATHER_NAME` varchar(50) DEFAULT NULL,
  `MOTHER_NAME` varchar(50) DEFAULT NULL,
  `GOD_FATHER_NAME` varchar(50) DEFAULT NULL,
  `GOD_MOTHER_NAME` varchar(50) DEFAULT NULL,
  `NOTES` varchar(300) DEFAULT NULL,
  `BAPTISM_LINK_ID` int(10) unsigned DEFAULT NULL,
  `SYNCHRONISED_FLAG` int(10) unsigned DEFAULT NULL,
  `MODIFIED_FLAG` int(10) unsigned DEFAULT NULL,
  `DELETED_FLAG` int(10) unsigned DEFAULT NULL,
  `ADDED_FLAG` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`CONFIRMATION_REGISTER_ID`),
  UNIQUE KEY `UNQ_CONFIRMATION_REGISTER_REF` (`CONFIRMATION_REGISTER_REF`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_confirmation_register`
--

LOCK TABLES `cristo_confirmation_register` WRITE;
/*!40000 ALTER TABLE `cristo_confirmation_register` DISABLE KEYS */;
/*!40000 ALTER TABLE `cristo_confirmation_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_daily_collection`
--

DROP TABLE IF EXISTS `cristo_daily_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_daily_collection` (
  `COLLECTION_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BALANCE_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `AMOUNT` decimal(10,0) NOT NULL DEFAULT '0',
  `CATEGORY` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1- Subscription, 2 - Holy Mass Offering, 3- Offering',
  `VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `FLAG` int(10) unsigned NOT NULL DEFAULT '0',
  `USER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MODE` varchar(50) DEFAULT NULL,
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CASHBANK_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`COLLECTION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_daily_collection`
--

LOCK TABLES `cristo_daily_collection` WRITE;
/*!40000 ALTER TABLE `cristo_daily_collection` DISABLE KEYS */;
INSERT INTO `cristo_daily_collection` VALUES (6,'2015-07-04 00:00:00',700,1,0,0,1,NULL,1040,3,1),(8,'2015-08-05 00:00:00',700,1,0,0,1,NULL,1040,3,1),(9,'2015-06-05 00:00:00',200,1,0,0,1,NULL,1040,3,1),(10,'2015-09-04 00:00:00',700,1,0,0,1,NULL,1040,3,1),(11,'2015-10-10 00:00:00',700,1,0,0,1,NULL,1040,3,1),(12,'2015-06-01 00:00:00',700,1,0,0,1,NULL,1040,3,1),(13,'2015-06-05 00:00:00',700,1,0,0,1,NULL,1040,3,1),(14,'2015-06-10 00:00:00',400,1,0,0,1,NULL,1040,3,1),(15,'2015-08-08 00:00:00',700,1,0,0,1,NULL,1040,3,1),(16,'2015-08-16 00:00:00',700,1,0,0,1,NULL,1040,3,1),(17,'2015-06-01 00:00:00',200,1,0,0,1,NULL,1040,3,1),(18,'2015-06-01 00:00:00',700,1,0,0,1,NULL,1040,3,1),(19,'2015-06-01 00:00:00',350,1,0,0,1,NULL,1040,3,1),(20,'2015-06-01 00:00:00',300,1,0,0,1,NULL,1040,3,1),(21,'2015-06-01 00:00:00',700,1,0,0,1,NULL,1040,3,1),(22,'2015-06-01 00:00:00',1400,1,0,0,1,NULL,1040,3,1),(23,'2015-09-08 00:00:00',14000,1,0,0,1,NULL,1040,3,1),(24,'2015-09-15 00:00:00',1000,1,0,0,1,NULL,1040,3,1),(25,'2015-08-01 00:00:00',700,1,0,0,1,NULL,1040,3,1),(26,'2015-06-01 00:00:00',2000,1,0,0,1,NULL,1040,3,1),(27,'2015-08-10 00:00:00',700,1,0,0,1,NULL,1040,3,1),(30,'2016-05-05 00:00:00',600,1,0,0,1,NULL,1040,3,1),(31,'2016-02-15 00:00:00',200,1,0,0,1,NULL,1040,3,1),(32,'2016-01-05 00:00:00',100,1,0,0,1,NULL,1040,3,1),(33,'2016-01-05 00:00:00',1000,1,0,0,1,NULL,1040,3,1),(34,'2016-01-05 00:00:00',1000,1,0,0,1,NULL,1040,3,1),(35,'2016-06-01 00:00:00',700,1,0,0,1,NULL,1040,3,1),(36,'2016-03-25 00:00:00',300,1,0,0,1,NULL,1040,3,1),(37,'2016-03-25 00:00:00',400,1,0,0,1,NULL,1040,3,1),(38,'2016-03-25 00:00:00',300,1,0,0,1,NULL,1040,3,1),(39,'2016-05-05 00:00:00',1000,1,0,0,1,NULL,1040,3,1),(40,'2016-09-09 00:00:00',1200,1,0,0,1,NULL,1040,3,1);
/*!40000 ALTER TABLE `cristo_daily_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_death_register`
--

DROP TABLE IF EXISTS `cristo_death_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_death_register` (
  `DEATH_REGISTER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DEATH_REGISTER_REF` varchar(15) NOT NULL DEFAULT '',
  `DEATH_REGISTER_TYPE` varchar(1) NOT NULL DEFAULT 'R',
  `DEATH_DATE` datetime DEFAULT NULL,
  `DEATH_PLACE` varchar(50) DEFAULT NULL,
  `DEATH_CAUSE` varchar(50) DEFAULT NULL,
  `DEATH_COUNTRY_ID` int(10) unsigned DEFAULT NULL,
  `FIRST_NAME` varchar(50) NOT NULL DEFAULT '',
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `BIRTH_PLACE` varchar(50) DEFAULT NULL,
  `GENDER` varchar(1) DEFAULT NULL,
  `SPOUSE` varchar(50) DEFAULT NULL,
  `FATHER_NAME` varchar(50) DEFAULT NULL,
  `MOTHER_NAME` varchar(50) DEFAULT NULL,
  `BURIAL_DATE` datetime DEFAULT NULL,
  `BURIAL_PLACE` varchar(50) DEFAULT NULL,
  `BURIAL_MINISTER` varchar(50) DEFAULT NULL,
  `DEATH_NOTES` varchar(300) DEFAULT NULL,
  `BAPTISM_REGISTER_LINK_ID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`DEATH_REGISTER_ID`),
  UNIQUE KEY `UNQ_DEATH_REGISTER_REF` (`DEATH_REGISTER_REF`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_death_register`
--

LOCK TABLES `cristo_death_register` WRITE;
/*!40000 ALTER TABLE `cristo_death_register` DISABLE KEYS */;
INSERT INTO `cristo_death_register` VALUES (1,'1','R','2016-02-02 00:00:00','Banglore ','',0,'K.Francis Gunasekaran','','1953-02-04 00:00:00','Jolarpet','M','Mary Jesintha Jagatha','Kuppu Rathinam ','Rani','2016-02-04 00:00:00','Yelagiri','FR.Thaddeus Sdb','',0),(2,'2','R','2016-03-22 00:00:00','Yelagiri','',0,'I.George Annamalai ','','1947-10-15 00:00:00','Yelagiri','M','Bascalin-Panchalai','Iyyakannu','Chellamal ','2016-03-23 00:00:00','Yelagiri','FR.Thaddeus Sdb','',0);
/*!40000 ALTER TABLE `cristo_death_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_family`
--

DROP TABLE IF EXISTS `cristo_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_family` (
  `FAMILY_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL DEFAULT '',
  `BCC_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DATE_OF_REGISTRATION` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `REGISTER_NO` varchar(15) NOT NULL DEFAULT '',
  `FAMILY_HEAD_AS` int(10) unsigned NOT NULL DEFAULT '0',
  `SETTLED_AS` int(10) unsigned NOT NULL DEFAULT '0',
  `FAMILY_HEAD` int(10) unsigned DEFAULT NULL,
  `PREVIOUS_PARISH_ID` int(10) unsigned DEFAULT NULL,
  `PREVIOUS_DIOCESE_ID` int(10) unsigned DEFAULT NULL,
  `NATIVE_PARISH_ID` int(10) unsigned DEFAULT NULL,
  `NATIVE_DIOCESE_ID` int(10) unsigned DEFAULT NULL,
  `RITE` int(10) unsigned DEFAULT NULL,
  `MARITAL_STATUS` varchar(50) DEFAULT NULL,
  `MATRIMONIAL_LINK_ID` int(10) unsigned DEFAULT NULL,
  `LANGUAGE_COMMUNITY_ID` int(10) unsigned DEFAULT NULL,
  `LANGUAGE_GROUPS` varchar(50) DEFAULT NULL,
  `ACTIVE_PARISH` int(10) unsigned DEFAULT NULL,
  `HOUSE_TYPE` int(10) unsigned DEFAULT NULL,
  `HOUSE_OWNERSHIP` varchar(50) DEFAULT NULL,
  `RENT_AMOUNT` decimal(15,2) DEFAULT NULL,
  `INCOME` decimal(15,2) DEFAULT NULL,
  `INCOME_TYPE` int(10) unsigned DEFAULT NULL,
  `LAST_SUBSCRIPTION_MONTH` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `RESIDENT_ADDRESS_LINE1` varchar(50) NOT NULL DEFAULT '',
  `RESIDENT_ADDRESS_LINE2` varchar(50) DEFAULT NULL,
  `RESIDENT_PLACE` varchar(45) DEFAULT NULL,
  `RESIDENT_CITY_TOWN_TALUK` varchar(50) NOT NULL DEFAULT '',
  `RESDIENT_DISTRICT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `RESIDENT_STATE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `RESIDENT_ZIP` varchar(20) NOT NULL DEFAULT '',
  `RESIDENT_COUNTRY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `RESIDENT_MOBILE_NO` varchar(15) DEFAULT NULL,
  `RESIDENT_PHONE` varchar(20) DEFAULT NULL,
  `RESIDENT_EMAIL` varchar(45) DEFAULT NULL,
  `RESIDENT_WEBSITE_BLOG` varchar(45) DEFAULT NULL,
  `PERMANENT_ADDRESS_LINE1` varchar(50) DEFAULT NULL,
  `PERMANENT_ADDRESS_LINE2` varchar(50) DEFAULT NULL,
  `PERMANENT_PLACE` varchar(45) DEFAULT NULL,
  `PERMANENT_CITY_TOWN_TALUK` varchar(45) DEFAULT NULL,
  `PERMANENT_DISTRICT_ID` int(10) unsigned DEFAULT NULL,
  `PERMANENT_STATE_ID` int(10) unsigned DEFAULT NULL,
  `PERMANENT_ZIP` varchar(45) DEFAULT NULL,
  `PERMANENT_COUNTRY_ID` int(10) unsigned DEFAULT NULL,
  `PERMANENT_MOBILE_NO` varchar(15) DEFAULT NULL,
  `PERMANENT_PHONE` varchar(20) DEFAULT NULL,
  `PERMANENT_EMAIL` varchar(45) DEFAULT NULL,
  `PERMANENT_WEBSITE_BLOG` varchar(45) DEFAULT NULL,
  `NOTES` varchar(300) DEFAULT NULL,
  `FAMILY_IMAGE` blob,
  `IS_CHRUCH_MARRIAGE` int(10) unsigned DEFAULT NULL,
  `IS_CIVIL_MARRIAGE` int(10) unsigned DEFAULT NULL,
  `CHRUCH_MARRIAGE_DATE` datetime DEFAULT NULL,
  `CIVIL_MARRIAGE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FAMILY_ID`),
  UNIQUE KEY `UNQ_REG_NO` (`REGISTER_NO`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_family`
--

LOCK TABLES `cristo_family` WRITE;
/*!40000 ALTER TABLE `cristo_family` DISABLE KEYS */;
INSERT INTO `cristo_family` VALUES (1,'Lourdu Pitchai A',4,'2015-07-24 00:00:00','2015/01',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,30000.00,0,'2015-06-01 00:00:00','Kottaiyur','','Kottaiyur','Yelagiri Hillis',523,26,'635853',1,'9597568552','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(2,'Royston Pereira',4,'2015-07-24 00:00:00','2015/02',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'0',0.00,0.00,0,'2015-06-01 00:00:00','Postman Chinnasamy House','','Kottaiyur','Yelagiri Hillis',523,26,'635853',1,'9786668081','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(3,'Gnanapragasam S',4,'2015-07-24 00:00:00','2015/03',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,0.00,0,'2015-06-01 00:00:00','Punganoor','','Punganoor','Yelagiri Hillis',523,26,'635853',1,'8148877149','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(4,'Puspharaj S',4,'2015-07-24 00:00:00','2015/04',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,0.00,0,'2015-06-01 00:00:00','Xavier Illam','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'9443099271','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(5,'Sagaya Raj',4,'2015-07-24 00:00:00','2015/05',1,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,10000.00,0,'2015-06-01 00:00:00','Near Boat House','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'9443629525','','dayacaroylg@gmail.com','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(6,'Matthew',4,'2015-07-24 00:00:00','2015/06',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,10000.00,0,'2015-06-01 00:00:00','Punganoor','','Kottaiyur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(7,'Arul A',4,'2015-07-24 00:00:00','2015/07',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,0.00,0,'2015-06-01 00:00:00','Punganoor','','Punganoor','Yelagiri Hillis',523,26,'635853',1,'9500357208','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(8,'Arul Raj S',4,'2015-07-24 00:00:00','2015/08',1,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,10000.00,0,'2015-06-01 00:00:00','Xavier Illam','','Punganoor','Yelagiri Hillis',523,26,'635853',1,'9790535586','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(9,'Asuntha Mary',4,'2015-07-24 00:00:00','2015/09',3,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,9000.00,0,'2015-06-01 00:00:00','283,Boat House Road','','Punganoor','Yelagiri Hillis',523,26,'635853',1,'9655840882','','kumarylg@gmail.com','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(10,'Gerold Francis',4,'2015-07-24 00:00:00','2015/10',1,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,10000.00,0,'2015-06-01 00:00:00','Boat House Road','','Punganoor','Yelagiri Hillis',523,26,'635853',1,'9442310807','','leomariafrancis@yahoo.co.in','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(11,'Luis Nathan',4,'2015-07-24 00:00:00','2015/11',1,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,0.00,0,'2015-06-01 00:00:00','Punganoor','','Punganoor','Yelagiri Hillis',523,26,'635853',1,'9786539139','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(12,'Pathrose',4,'2015-07-24 00:00:00','2015/12',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,30000.00,0,'2015-06-01 00:00:00','252, Boat House Road','','Punganoor','Yelagiri Hills',523,26,'635853',1,'8489782227','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(13,'Rajathi',4,'2015-07-24 00:00:00','2015/13',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,0.00,0,'2015-06-01 00:00:00','Punganoor','','Punganoor','Yelagiri Hillis',523,26,'635853',1,'9486844736','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(14,'Vimala T',4,'2015-07-24 00:00:00','2015/14',3,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,10000.00,0,'2015-06-01 00:00:00','Punganoor','','Punganoor','Yelagiri Hillis',523,26,'635853',1,'9442357711','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(15,'Antony Raj  A',1,'2015-07-24 00:00:00','2015/15',1,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,0.00,0,'2015-06-01 00:00:00','No. 276','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'9444799499','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(16,'Antony Raj S',1,'2015-07-24 00:00:00','2015/16',1,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,0.00,0,'2015-06-01 00:00:00','Athanavur','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'9884464480','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(17,'Gnana Subramaniyam',1,'2015-07-24 00:00:00','2015/17',1,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,0.00,0,'2015-06-01 00:00:00','Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(18,'John Stephen N',1,'2015-07-24 00:00:00','2015/18',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,30000.00,0,'2015-06-01 00:00:00','Near State Bank','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(19,'Leo Anbarasan',1,'2015-07-24 00:00:00','2015/19',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,0.00,0,'2015-06-01 00:00:00','Athanavur','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(20,'Maria Krishnan G',1,'2015-07-24 00:00:00','2015/20',1,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,0.00,0,'2015-06-01 00:00:00','266, Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(21,'Michael Dominic Smith',1,'2015-07-24 00:00:00','2015/21',1,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,0.00,0,'2015-06-01 00:00:00','Near VSK Lodge','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(22,'Philip Newman',1,'2015-07-24 00:00:00','2015/22',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,0.00,0,'2015-06-01 00:00:00','104, White Gate','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(23,'Sagaya Mary   A',1,'2015-07-24 00:00:00','2015/23',3,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,0.00,0,'2015-06-01 00:00:00','Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(24,'Selvam A',1,'2015-07-24 00:00:00','2015/24',1,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,0.00,0,'2015-06-01 00:00:00','Athanavur','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(25,'Shinoj Robert',1,'2015-07-24 00:00:00','2015/25',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,0.00,0,'2015-06-01 00:00:00','Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(26,'Sylvia',1,'2015-07-24 00:00:00','2015/26',3,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,0.00,0,'2015-06-01 00:00:00','Athanavur','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(27,'Stephen E',1,'2015-07-24 00:00:00','2015/27',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,0.00,0,'2015-06-01 00:00:00','A/4, Varakuttai','','Varakuttai','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(28,'Albert & Agnes',2,'2015-07-24 00:00:00','2015/28',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,10000.00,0,'2015-06-01 00:00:00','244, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(29,'Alister Michel',2,'2015-07-24 00:00:00','2015/29',1,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,0.00,0,'2015-06-01 00:00:00','246/3','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(30,'Antonyraj S',2,'2015-07-24 00:00:00','2015/30',1,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'0',0.00,0.00,0,'2015-06-01 00:00:00','Near Indian Bank','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(31,'Arokia Mary S',2,'2015-07-24 00:00:00','2015/31',1,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,0.00,0,'2015-06-01 00:00:00','Near Indian Bank','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(32,'Arokia Raj Prem Kumar',2,'2015-07-24 00:00:00','2015/32',1,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'0',0.00,0.00,0,'2015-06-01 00:00:00','Near Arockia Annai Hostel','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(33,'Immanuel & Priya',2,'2015-07-24 00:00:00','2015/33',1,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,100.00,0,'2015-06-01 00:00:00','244, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(34,'Jayapalan Xavier Raja',2,'2015-07-24 00:00:00','2015/34',1,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'0',0.00,0.00,0,'2015-06-01 00:00:00','Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(35,'John Sathiyanathan & Rose',2,'2015-07-24 00:00:00','2015/35',1,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,5000.00,0,'2015-06-01 00:00:00','Perumal Koil Street','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(36,'Mathalai Samy',2,'2015-07-24 00:00:00','2015/36',1,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,16000.00,0,'2015-06-01 00:00:00','Athanavur','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(37,'Narcheithi Alwar',2,'2015-07-24 00:00:00','2015/37',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'0',0.00,0.00,0,'2015-06-01 00:00:00','Athanavur','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(38,'Pauline Pereira',2,'2015-07-24 00:00:00','2015/38',3,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'0',0.00,0.00,0,'2015-06-01 00:00:00','Athanavur','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(39,'Pushpa (W/o Lourdunathan)',2,'2015-07-24 00:00:00','2015/39',3,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,0.00,0,'2015-06-01 00:00:00','Micor Tower','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(40,'Savarimuthu & Theresha',2,'2015-07-24 00:00:00','2015/40',1,1,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,5000.00,0,'2015-06-01 00:00:00','244,Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(41,'Muddiyappan',2,'2015-07-24 00:00:00','2015/41',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,0.00,0,'2015-06-01 00:00:00','Thayaloor Village','','Mangalam','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(42,'Antony. S',3,'2015-07-24 00:00:00','2015/42',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'0',0.00,0.00,0,'2015-06-01 00:00:00','503, Near St. Charles School','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(43,'Aurelia Whittle Bartley',3,'2015-07-24 00:00:00','2015/43',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'0',0.00,0.00,0,'2015-07-01 00:00:00','Murugan Kovil Road','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(44,'Christuraj A',3,'2015-07-24 00:00:00','2015/44',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'0',0.00,0.00,0,'2015-06-01 00:00:00','490, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(45,'Dayalan W',3,'2015-07-24 00:00:00','2015/45',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'0',0.00,0.00,1,'2015-06-01 00:00:00','3/489, Murugan Kovil Road','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(46,'Govindasamy N. R (Joseph)',3,'2015-07-24 00:00:00','2015/46',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'0',0.00,0.00,0,'2015-06-01 00:00:00','Near St. Charles School','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(47,'Mary Jecintha Jagatha',3,'2015-07-24 00:00:00','2015/47',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'0',0.00,0.00,0,'2015-06-01 00:00:00','Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(48,'John Britto J',3,'2015-07-24 00:00:00','2015/48',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'0',0.00,0.00,0,'2015-06-01 00:00:00','Don Bosco Camp Center','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(49,'Joseph Velukumar',3,'2015-07-24 00:00:00','2015/49',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,8500.00,0,'2015-06-01 00:00:00','Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(50,'Leo Maria Francis',3,'2015-07-24 00:00:00','2015/50',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'0',0.00,0.00,0,'2015-06-01 00:00:00','485, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(51,'Michael S',3,'2015-07-24 00:00:00','2015/51',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'0',0.00,0.00,0,'2015-06-01 00:00:00','Near Idaya Deepam','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(52,'Sagaya Raj',3,'2015-07-24 00:00:00','2015/52',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,7000.00,0,'2015-06-01 00:00:00','353,Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(53,'Sundaram',3,'2015-07-24 00:00:00','2015/53',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'0',0.00,0.00,0,'2015-06-01 00:00:00','Murugan Kovil Road','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(54,'Erroel Vogt (Peter)',3,'2015-07-24 00:00:00','2015/54',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'0',0.00,0.00,0,'2015-06-01 00:00:00','3/503. Manjakolla pudur','','MK Pudur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(55,'Jeswanth Jonas',3,'2015-07-24 00:00:00','2015/55',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'0',0.00,0.00,0,'2015-06-01 00:00:00','536, Manjankollai Pudur','','MK Pudur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(56,'Clement Arun Jerry',4,'2016-07-25 00:00:00','2015/56',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,10000.00,0,'2015-06-01 00:00:00','Near Boat House','','Punganoor','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(57,'Savariraj',4,'2016-07-25 00:00:00','2015/57',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,0.00,0,'2015-06-01 00:00:00','Punganoor','','Tower','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(58,'Noel Regel & Pascal',2,'2016-05-02 00:00:00','2015/58',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,0.00,0,'2015-06-01 00:00:00','Punganoor','','Tower','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(59,'Prasanna & Ancy',2,'2016-05-02 00:00:00','2015/59',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,0.00,0,'2015-06-01 00:00:00','Punganoor','','Tower','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(60,'Antony yash',3,'2016-05-02 00:00:00','2015/60',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'1',0.00,0.00,0,'2015-06-01 00:00:00','Punganoor','','Tower','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00'),(61,'Thris Raj Kumar',3,'2016-05-02 00:00:00','2015/61',1,2,0,0,NULL,0,NULL,5,NULL,0,94,'94',1,0,'2',0.00,0.00,0,'2015-06-01 00:00:00','Punganoor','','Athanavur','Yelagiri Hillis',523,26,'635853',1,'','','','','','','','',0,0,'',0,'','','','','',NULL,0,0,'0001-01-01 00:00:00','0001-01-01 00:00:00');
/*!40000 ALTER TABLE `cristo_family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_family_member`
--

DROP TABLE IF EXISTS `cristo_family_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_family_member` (
  `MEMBER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MEMBER_TITLE` int(10) unsigned DEFAULT NULL,
  `MEMBER_FIRST_NAME` varchar(50) NOT NULL DEFAULT '',
  `MEMBER_LAST_NAME` varchar(50) DEFAULT NULL,
  `MEMBER_REGIONAL_LANGUAGE` varchar(50) DEFAULT NULL,
  `MEMBER_FAMILY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MEMBER_MEMBER` varchar(15) NOT NULL DEFAULT '',
  `MEMBER_ALIAS` varchar(50) DEFAULT NULL,
  `MEMBER_GENDER` varchar(1) NOT NULL DEFAULT '',
  `MEMBER_DOB` datetime DEFAULT NULL,
  `MEMBER_AGE` varchar(3) DEFAULT NULL,
  `MEMBER_PARISH` varchar(50) DEFAULT NULL,
  `MEMBER_BAPTISM_PARISH` int(10) unsigned DEFAULT NULL,
  `MEMBER_RELATIONSHIP` int(10) unsigned DEFAULT NULL,
  `BAPTISM_REGISTER_LINK_ID` int(10) unsigned DEFAULT NULL,
  `MEMBER_CITIZENSHIP` int(10) unsigned DEFAULT NULL,
  `IS_MEMBER_ALIVE` int(10) unsigned NOT NULL DEFAULT '1',
  `IS_PARISH_MEMBER` int(10) unsigned NOT NULL DEFAULT '1',
  `MEMBER_PHYSICAL_STATUS` varchar(50) DEFAULT NULL,
  `MEMBER_MOBILE_NO` varchar(15) DEFAULT NULL,
  `MEMBER_EMAIL` varchar(30) DEFAULT NULL,
  `MEMBER_WEBSITE_BLOG` varchar(50) DEFAULT NULL,
  `MEMBER_ADDRESS_LINE1` varchar(100) DEFAULT NULL,
  `MEMBER_ADDRESS_LINE2` varchar(100) NOT NULL DEFAULT '',
  `MEMBER_PLACE` varchar(50) DEFAULT NULL,
  `MEMBER_CITY` varchar(50) NOT NULL DEFAULT '',
  `MEMBER_DISTRICT` int(10) unsigned DEFAULT NULL,
  `MEMBER_STATE` int(10) unsigned DEFAULT NULL,
  `MEMBER_COUNTRY` int(10) unsigned DEFAULT NULL,
  `MEMBER_ZIIP` varchar(6) DEFAULT NULL,
  `MEMBER_NOTES` varchar(300) DEFAULT NULL,
  `MEMBERSHIP_RATIONAL` varchar(50) DEFAULT NULL,
  `MEMBER_PROFILE` blob,
  `DELETED_FLAG` int(10) unsigned DEFAULT NULL,
  `MODIFIED_FLAG` int(10) unsigned DEFAULT NULL,
  `SYNCHRONISED_FLAG` int(10) unsigned DEFAULT NULL,
  `ADDED_FLAG` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`MEMBER_ID`),
  UNIQUE KEY `UNQ_MEMBER` (`MEMBER_MEMBER`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_family_member`
--

LOCK TABLES `cristo_family_member` WRITE;
/*!40000 ALTER TABLE `cristo_family_member` DISABLE KEYS */;
INSERT INTO `cristo_family_member` VALUES (1,1,'Lorudu Pitchai A','','',1,'2015/01//01','','M','1978-04-17 00:00:00','','',0,1,0,1,1,0,'1','9486939644','','','Kottaiyur','','Kottaiyur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(2,2,'Rosario Dhanalakshmi G.','','',1,'2015/01//02','','F','1980-08-10 00:00:00','','',0,2,0,1,1,0,'1','','','','Kottaiyur','','Kottaiyur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357A2B78E3ED93EA6A6A9722AC515B1247CCD8FA545711244768396EF5A754EEEDC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB578000600A1542A803A0A7566DDCB0A28A29009452D14014AEEDB83220FA8AA55B046462B2EE13CB9997B76AB8B2591D14515420A28A2800A28A2800A28A2800A28A2800A9EC866E07B541566C7FD7FE149EC3468D1451599414514500145145002551BF1FBC53ED57AA95FF0055FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A28012A8DFFF00AC5FA55EAA17FF00EB57E94E3B899568A28AD090A28A2800A28A2800A28A2800A28A2800ABBA7E30DEB54AADD81C48C3D4527B0D17E8A28ACCA0A28A2800A28A28012AB5E81E4E4FAD59AA9A81F9147BD35B899468A28AD090A28A2800A28A2800A28A2800A28A2800A92093CA94354745006C8E452D47036F854FB549591614514500145145002566DDCBE64B8ECBC568B9DA84FA0AC8639627D4D5444C4A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2802ED8BFCA633DB91572B2A0244C847AD6AD44B7290B4514548C28A28A00AD7B26C8B6F76ACEA9EF4937073DAA0AD16C4B0A28A298828A28A0028A28A0028A28A0028A28A0028A28A0096D466E1056A553B284604A4F3572A25B9485A28A2A461451450066DF0C4FF008557AD0BC843A17CF2A2B3EB45B12C28A28A620A28A2800A28A2800A28A2800A28A2800A2A68ADA490F4C0F535762B648F9C64FA9A4DD8761F026C8547B549494B599414514500145149400D71B908F51592C0AB107B56C5452DBA4A39183EA2A93B09A32E8A9E5B578F91F30F6A83A559214514500145145001463353C36AF2F2785F5ABB15BC71F4193EA693761D8A515AC927246D1EF56E3B68E3E71B8FBD4F45436D8EC14B451486145145001451450014514500252D1450025452DBC7275183EA2A6A2803365B374E57E6155C820E08C56CD47242927DE5E7D6A9485632A8AB335A32729F30A2AEE49A14B494B59161451450014514500145145001451450014514500145145001451450014514500145145007FFD9,NULL,1,NULL,1),(3,1,'Tarun Peter L','','',1,'2015/01//03','','M','2001-10-16 00:00:00','','',0,3,0,1,1,0,'1','','','','Kottaiyur','','Kottaiyur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(4,1,'Tina Shivani L','','',1,'2015/01//04','','F','2003-05-27 00:00:00','','',0,4,0,1,1,0,'1','','','','Kottaiyur','','Kottaiyur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357A2B78E3ED93EA6A6A9722AC515B1247CCD8FA545711244768396EF5A754EEEDC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB578000600A1542A803A0A7566DDCB0A28A29009452D14014AEEDB83220FA8AA55B046462B2EE13CB9997B76AB8B2591D14515420A28A2800A28A2800A28A2800A28A2800A9EC866E07B541566C7FD7FE149EC3468D1451599414514500145145002551BF1FBC53ED57AA95FF0055FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A28012A8DFFF00AC5FA55EAA17FF00EB57E94E3B899568A28AD090A28A2800A28A2800A28A2800A28A2800ABBA7E30DEB54AADD81C48C3D4527B0D17E8A28ACCA0A28A2800A28A28012AB5E81E4E4FAD59AA9A81F9147BD35B899468A28AD090A28A2800A28A2800A28A2800A28A2800A92093CA94354745006C8E452D47036F854FB549591614514500145145002566DDCBE64B8ECBC568B9DA84FA0AC8639627D4D5444C4A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2802ED8BFCA633DB91572B2A0244C847AD6AD44B7290B4514548C28A28A00AD7B26C8B6F76ACEA9EF4937073DAA0AD16C4B0A28A298828A28A0028A28A0028A28A0028A28A0028A28A0096D466E1056A553B284604A4F3572A25B9485A28A2A461451450066DF0C4FF008557AD0BC843A17CF2A2B3EB45B12C28A28A620A28A2800A28A2800A28A2800A28A2800A2A68ADA490F4C0F535762B648F9C64FA9A4DD8761F026C8547B549494B599414514500145149400D71B908F51592C0AB107B56C5452DBA4A39183EA2A93B09A32E8A9E5B578F91F30F6A83A559214514500145145001463353C36AF2F2785F5ABB15BC71F4193EA693761D8A515AC927246D1EF56E3B68E3E71B8FBD4F45436D8EC14B451486145145001451450014514500252D1450025452DBC7275183EA2A6A2803365B374E57E6155C820E08C56CD47242927DE5E7D6A9485632A8AB335A32729F30A2AEE49A14B494B59161451450014514500145145001451450014514500145145001451450014514500145145007FFD9,NULL,1,NULL,1),(5,1,'Royston Pereira','','',2,'2015/02//01','','M','1969-09-30 00:00:00','','',0,1,0,1,1,0,'1','9884486858','','http://www.kozeekavesyelagiri.com/','Postman Chinnasamy House','','Kottaiyur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(6,1,'Suzanne Pereira','','',2,'2015/02//02','','F','1969-02-21 00:00:00','','',0,2,0,1,1,0,'1','','','http://www.kozeekavesyelagiri.com/','Postman Chinnasamy House','','Kottaiyur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(7,1,'Shania Pereira','','',2,'2015/02//03','','F','2005-04-11 00:00:00','','',0,4,0,1,1,0,'1','','','http://www.kozeekavesyelagiri.com/','Postman Chinnasamy House','','Kottaiyur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(8,1,'Gana Prakasam S','','',3,'2015/03//01','','M','1978-02-02 00:00:00','','',0,1,0,1,1,0,'1','9894368426','','','Xavier Illam','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(9,1,'Anitha Mary Rani','','',3,'2015/03//02','','F','1993-10-21 00:00:00','','',0,2,0,1,1,0,'1','','','','Xavier Illam','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(10,2,'Andriya G','','',3,'2015/03//03','','F','2015-03-24 00:00:00','','',0,4,0,1,1,0,'1','','','','Xavier Illam','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357A2B78E3ED93EA6A6A9722AC515B1247CCD8FA545711244768396EF5A754EEEDC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB578000600A1542A803A0A7566DDCB0A28A29009452D14014AEEDB83220FA8AA55B046462B2EE13CB9997B76AB8B2591D14515420A28A2800A28A2800A28A2800A28A2800A9EC866E07B541566C7FD7FE149EC3468D1451599414514500145145002551BF1FBC53ED57AA95FF0055FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A28012A8DFFF00AC5FA55EAA17FF00EB57E94E3B899568A28AD090A28A2800A28A2800A28A2800A28A2800ABBA7E30DEB54AADD81C48C3D4527B0D17E8A28ACCA0A28A2800A28A28012AB5E81E4E4FAD59AA9A81F9147BD35B899468A28AD090A28A2800A28A2800A28A2800A28A2800A92093CA94354745006C8E452D47036F854FB549591614514500145145002566DDCBE64B8ECBC568B9DA84FA0AC8639627D4D5444C4A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2802ED8BFCA633DB91572B2A0244C847AD6AD44B7290B4514548C28A28A00AD7B26C8B6F76ACEA9EF4937073DAA0AD16C4B0A28A298828A28A0028A28A0028A28A0028A28A0028A28A0096D466E1056A553B284604A4F3572A25B9485A28A2A461451450066DF0C4FF008557AD0BC843A17CF2A2B3EB45B12C28A28A620A28A2800A28A2800A28A2800A28A2800A2A68ADA490F4C0F535762B648F9C64FA9A4DD8761F026C8547B549494B599414514500145149400D71B908F51592C0AB107B56C5452DBA4A39183EA2A93B09A32E8A9E5B578F91F30F6A83A559214514500145145001463353C36AF2F2785F5ABB15BC71F4193EA693761D8A515AC927246D1EF56E3B68E3E71B8FBD4F45436D8EC14B451486145145001451450014514500252D1450025452DBC7275183EA2A6A2803365B374E57E6155C820E08C56CD47242927DE5E7D6A9485632A8AB335A32729F30A2AEE49A14B494B59161451450014514500145145001451450014514500145145001451450014514500145145007FFD9,NULL,1,NULL,1),(11,1,'Puspharaj S','','',4,'2015/04//01','','M','1972-06-15 00:00:00','','',0,1,0,1,1,0,'1','9976540720','','','Xavier Illam','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(12,1,'Lily Pushpam','','',4,'2015/04//02','','F','1975-07-17 00:00:00','','',0,2,0,1,1,0,'1','','','','Xavier Illam','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(13,1,'Riya P. L','','',4,'2015/04//03','','F','2005-03-02 00:00:00','','',0,4,0,1,1,0,'1','','','','Xavier Illam','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(14,1,'Ruben Gladwin P. L','','',4,'2015/04//04','','M','1999-05-01 00:00:00','','',0,3,0,1,1,0,'1','','','','Xavier Illam','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(15,1,'Sagaya Raj K','','',5,'2015/05//01','','M','1976-08-16 00:00:00','','',0,1,0,1,1,0,'1','7639034964','','','Near Boat House','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(16,2,'Helan Prijith D.','','',5,'2015/05//02','','F','1977-07-24 00:00:00','','',0,2,0,1,1,0,'1','7639034964','helenmariafewin@gmail.com','','Near Boat House','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357A2B78E3ED93EA6A6A9722AC515B1247CCD8FA545711244768396EF5A754EEEDC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB578000600A1542A803A0A7566DDCB0A28A29009452D14014AEEDB83220FA8AA55B046462B2EE13CB9997B76AB8B2591D14515420A28A2800A28A2800A28A2800A28A2800A9EC866E07B541566C7FD7FE149EC3468D1451599414514500145145002551BF1FBC53ED57AA95FF0055FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A28012A8DFFF00AC5FA55EAA17FF00EB57E94E3B899568A28AD090A28A2800A28A2800A28A2800A28A2800ABBA7E30DEB54AADD81C48C3D4527B0D17E8A28ACCA0A28A2800A28A28012AB5E81E4E4FAD59AA9A81F9147BD35B899468A28AD090A28A2800A28A2800A28A2800A28A2800A92093CA94354745006C8E452D47036F854FB549591614514500145145002566DDCBE64B8ECBC568B9DA84FA0AC8639627D4D5444C4A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2802ED8BFCA633DB91572B2A0244C847AD6AD44B7290B4514548C28A28A00AD7B26C8B6F76ACEA9EF4937073DAA0AD16C4B0A28A298828A28A0028A28A0028A28A0028A28A0028A28A0096D466E1056A553B284604A4F3572A25B9485A28A2A461451450066DF0C4FF008557AD0BC843A17CF2A2B3EB45B12C28A28A620A28A2800A28A2800A28A2800A28A2800A2A68ADA490F4C0F535762B648F9C64FA9A4DD8761F026C8547B549494B599414514500145149400D71B908F51592C0AB107B56C5452DBA4A39183EA2A93B09A32E8A9E5B578F91F30F6A83A559214514500145145001463353C36AF2F2785F5ABB15BC71F4193EA693761D8A515AC927246D1EF56E3B68E3E71B8FBD4F45436D8EC14B451486145145001451450014514500252D1450025452DBC7275183EA2A6A2803365B374E57E6155C820E08C56CD47242927DE5E7D6A9485632A8AB335A32729F30A2AEE49A14B494B59161451450014514500145145001451450014514500145145001451450014514500145145007FFD9,NULL,1,NULL,1),(17,1,'Maria Antony','','',5,'2015/05//03','','M','2005-06-24 00:00:00','','',0,3,0,1,1,0,'1','7639034964','','','Near Boat House','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(18,1,'Richard Maria Bevin','','',5,'2015/05//04','','M','2010-10-22 00:00:00','','',0,3,0,1,1,0,'1','7639034964','','','Near Boat House','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(19,1,'Matthew Subramaniyan','','',6,'2015/06//01','','M','1987-02-25 00:00:00','','',0,1,0,1,1,0,'1','9751949294','','','Punganoor','','Kottaiyur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(20,1,'Mary Sathya M','','',6,'2015/06//02','','','1987-05-12 00:00:00','','',0,2,0,1,1,0,'1','','','','Punganoor','','Kottaiyur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1005A4578696600004D4D002A00000008000503010005000000010000004A030300010000000100000000511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(21,1,'Daniel M','','',6,'2015/06//03','','M','2010-03-26 00:00:00','','',0,3,0,1,1,0,'1','','','','Punganoor','','Kottaiyur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(22,1,'Sweety Princy M','','',6,'2015/06//04','','F','2016-03-01 00:00:00','','',0,4,0,1,1,0,'1','','','','Punganoor','','','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(23,0,'Arul A','','',7,'2015/07//01','','','1969-06-01 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9442357631','','','Punganoor','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(24,0,'Shanthi Mary A.','','',7,'2015/07//02','','','1975-10-19 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','Punganoor','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(25,0,'Stanlee Robin A.','','',7,'2015/07//03','','','1997-09-26 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','Punganoor','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(26,0,'Ramya Mary A.','','',7,'2015/07//04','','','1999-12-02 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','Punganoor','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(27,0,'Arul Raj S','','',8,'2015/08//01','','','1975-11-05 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9486335368','','','Xavier Illam','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(28,0,'Maria Madalena Mary D.','','',8,'2015/08//02','','','1987-12-09 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','Xavier Illam','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(29,0,'Amalesh A.','','',8,'2015/08//03','','','2010-07-20 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','Xavier Illam','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(30,0,'Joseph Antony','','',9,'2015/09//01','','','1985-03-07 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9176598329','','','283,Boat House Road','Punganoor','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(31,0,'Asuntha Mary','','',9,'2015/09//02','','','1960-03-01 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','9176598329','','','283,Boat House Road','Punganoor','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(32,0,'John Mariamuthu','','',9,'2015/09//03','','','1981-04-10 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','9176598329','amjohn_mari@yahoo.co.in','','283,Boat House Road','Punganoor','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(33,0,'Gerold Francis','','',10,'2015/10//01','','','1978-03-01 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9159416404','','','Boat House Road','Punganoor','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(34,0,'Amuthavalli Anthmary','','',10,'2015/10//02','','','1982-04-24 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','9047879704','','','Boat House Road','Punganoor','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(35,0,'Maria Das Emanuel','','',10,'2015/10//03','','','2001-01-25 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','9047879704','','','Boat House Road','Punganoor','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(36,0,'Marina Florance','','',10,'2015/10//04','','','2003-01-17 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','9047879704','','','Boat House Road','Punganoor','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(37,0,'Louis Nathan','','',11,'2015/11//01','','','1981-07-03 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9655503070','','','Boat House Road','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(38,0,'Ruby Gayathri','','',11,'2015/11//02','','','1992-03-13 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','Boat House Road','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(39,1,'George  Annamalai A','','',11,'2015/11//03','','','1947-10-15 00:00:00','','',0,5,0,1,2,0,'1','','','','Boat House Road','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(40,0,'Pathrose M','','',12,'2015/12//01','','','1961-09-30 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9444610904','pathrose@boscosofttech.com','','252, Boat House Road','','Punganoor','Yelagiri Hills',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(41,0,'Vijila Mary Y','','',12,'2015/12//02','','','1979-07-06 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','7200212090','','','252, Boat House Road','','Punganoor','Yelagiri Hills',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(42,0,'Avila Blency Rose PV','','',12,'2015/12//03','','','1999-10-14 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','252, Boat House Road','','Punganoor','Yelagiri Hills',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(43,0,'Gracy Viji Rose PV','','',12,'2015/12//04','','','2001-01-21 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','252, Boat House Road','','Punganoor','Yelagiri Hills',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(44,0,'Queen Sweety PV','','',12,'2015/12//05','','','2005-03-22 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','252, Boat House Road','','Punganoor','Yelagiri Hills',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(45,0,'Murali','','',13,'2015/13//01','','','1970-03-22 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','8940389908','','','Boat House Road','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(46,0,'Rajathi','','',13,'2015/13//02','','','1980-03-22 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','Boat House Road','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(47,0,'Vimala T','','',14,'2015/14//01','','','1971-05-01 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','9787370109','','','Boat House Road','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(48,0,'Rose Gladson A.G','','',14,'2015/14//02','','','1991-07-26 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','9159640103','gladson.bits@gmail.com','','Boat House Road','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(49,0,'Rose King A.G.','','',14,'2015/14//03','','','1992-12-05 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','Boat House Road','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(50,0,'Rose Gladin A.G','','',14,'2015/14//04','','','1994-02-20 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','Boat House Road','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(51,0,'Clement Arun Jerry','','',56,'2015/56//01','','','1980-09-13 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','','','','Boat House Road','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(52,0,'Jorgin Mary','','',56,'2015/56//02','','','1993-07-22 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','Boat House Road','','Punganoor','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(53,0,'Christuraja','','',57,'2015/57//01','','','1958-01-23 00:00:00',NULL,NULL,0,0,0,1,1,0,'1','','','','Sagayam','','Kottaiyur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(54,0,'Roslin Mary C','','',57,'2015/57//02','','','2016-07-25 00:00:00',NULL,NULL,0,0,0,1,1,0,'1','','','','Sagayam','','Kottaiyur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(55,0,'Geetha Mary V.','','',57,'2015/57//03','','','1990-05-28 00:00:00',NULL,NULL,0,0,0,1,1,0,'1','','','','Sagayam','','Kottaiyur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(56,0,'Savari Raj B (Sagayam)','','',57,'2015/57//04','','','1970-05-31 00:00:00',NULL,NULL,0,0,0,1,1,0,'1','','','','Sagayam','','Kottaiyur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(57,0,'Soundri Mary S.','','',57,'2015/57//05','','','1969-12-30 00:00:00',NULL,NULL,0,0,0,1,1,0,'1','','','','Sagayam','','Kottaiyur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(58,0,'Anitha Mary V.','','',57,'2015/57//06','','','1989-05-25 00:00:00',NULL,NULL,0,0,0,1,1,0,'1','','','','Sagayam','','Kottaiyur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(59,0,'Rubi Rani Mary S.','','',57,'2015/57//07','','','1996-06-16 00:00:00',NULL,NULL,0,0,0,1,1,0,'1','','','','Sagayam','','Kottaiyur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(60,0,'Antoniraj A','','',15,'2015/15/01','','','1980-08-30 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9442357671','','','No. 276','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(61,0,'Francis Stella Rani','','',15,'2015/15/02','','','1985-01-05 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','No. 276','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(62,0,'Aron Kishore','','',15,'2015/15/03','','','2011-03-03 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','No. 276','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(63,0,'Antony Raj S','','',16,'2015/16/01','','','1979-12-12 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9943626319','','','Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(64,0,'Roselin A.','','',16,'2015/16/02','','','1984-05-30 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(65,0,'Ansi Romi A.','','',16,'2015/16/03','','','2005-04-12 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(66,0,'Anni Elisia A','','',16,'2015/16/04','','','2006-09-15 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(67,0,'Gnana Subramaniyam J','','',17,'2015/17/01','','','1955-07-10 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9442357612','','','Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(68,0,'Sagaya Mary S.','','',17,'2015/17/02','','','1964-06-07 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(69,1,'John Stephen N','','',18,'2015/18/01','','M','1973-07-31 00:00:00','','',0,1,0,1,1,0,'1','9442302047','','','Near State Bank','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(70,0,'Angel Kumari V.','','',18,'2015/18/02','','','1976-05-30 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','9487105551','','','Near State Bank','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(71,0,'Ashlisha J.A.','','',18,'2015/18/03','','','2002-05-09 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','Near State Bank','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(72,0,'Mervin J.A','','',18,'2015/18/04','','','2010-11-02 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','Near State Bank','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(73,0,'Leo Anbarasan','','',19,'2015/19/01','','','1984-09-12 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9751231933','','','Kottaiyur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(74,0,'Julia Mary','','',19,'2015/19/02','','','1981-09-08 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','Kottaiyur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(75,0,'Joel Roshan','','',19,'2015/19/03','','','2009-05-03 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','Kottaiyur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(76,0,'Albin Jaison','','',19,'2015/19/04','','','2012-01-25 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','Kottaiyur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(77,0,'Maria Krishnan G','','',20,'2015/20/01','','','1962-06-30 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9786681847','','','266, Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(78,0,'Mary Meena','','',20,'2015/20/02','','','1973-12-08 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','266, Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(79,0,'Johncy','','',20,'2015/20/03','','','1989-05-06 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','266, Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(80,0,'Narmatha','','',20,'2015/20/04','','','1993-04-30 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','266, Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(81,0,'Vikram Joel Joseph','','',20,'2015/20/05','','','2000-03-16 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','266, Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(82,0,'Michael Dominic Smith','','',21,'2015/21/01','','','1970-11-11 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9884607132','','','Near VSK Lodge','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(83,0,'Caroline Francis Smith','','',21,'2015/21/02','','','1971-12-31 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','Near VSK Lodge','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(84,0,'Ronan Christopher','','',21,'2015/21/03','','','2001-03-18 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','Near VSK Lodge','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(85,0,'Philip Newman','','',22,'2015/22/01','','','1962-09-23 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9962834842','','','104, White Gate','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(86,0,'Rani Philip','','',22,'2015/22/02','','','1967-01-15 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','104, White Gate','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(87,0,'Monica Celestina A.','','',22,'2015/22/03','','','1993-03-03 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','104, White Gate','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(88,0,'Sagaya Mary  A.','','',23,'2015/23/01','','','1961-03-11 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','9003957929','','','Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(89,0,'Sagaya Beaulla Joyce','','',23,'2015/23/02','','','1985-08-18 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(90,0,'Selvam A','','',24,'2015/24/01','','','1963-08-04 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9894804419','','','Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(91,0,'Thenmozhi S.','','',24,'2015/24/02','','','1970-05-10 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','9894804419','','','Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(92,0,'Gracy S.','','',24,'2015/24/03','','','1994-02-26 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','9894804419','','','Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(93,0,'Shinoj Robert','','',25,'2015/25/01','','','1987-10-29 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9943464340','','','Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(94,0,'Angel Rani','','',25,'2015/25/02','','','1991-10-15 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','9943464340','','','Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(95,0,'Sylvia','','',26,'2015/26/01','','','1979-12-01 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','9940370524','','','Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(96,0,'Joseph','','',26,'2015/26/02','','','1975-03-09 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9940370524','','','Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(97,0,'Andriya J','','',26,'2015/26/03','','','2012-07-29 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','9940370524','','','Mariyamman Kovil St','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(98,0,'Stephen E','','',27,'2015/27/01','','','1975-06-07 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','7639984476','','','A/4, Varakuttai','','Varakuttai','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(99,0,'Anusuya Mary N','','',27,'2015/27/02','','','1982-03-25 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','A/4, Varakuttai','','Varakuttai','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(100,0,'Sneha Priya S.','','',27,'2015/27/03','','','2000-01-18 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','A/4, Varakuttai','','Varakuttai','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(101,0,'Harish Christoper S.','','',27,'2015/27/04','','','2002-04-10 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','A/4, Varakuttai','','Varakuttai','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(102,0,'Sham Moses S.','','',27,'2015/27/05','','','2004-05-11 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','A/4, Varakuttai','','Varakuttai','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(103,0,'Albert Ratchagar P.B.','','',28,'2015/28/01','','','1971-09-26 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9447523576','','','244, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(104,0,'Agnes Mary A','','',28,'2015/28/02','','','1975-04-23 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','8940765838','','','244, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(105,0,'Adaikala Abinaya A','','',28,'2015/28/03','','','1996-12-28 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','9447523576','','','244, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(106,0,'Suriya Prakash A','','',28,'2015/28/04','','','2000-09-19 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','9447523576','','','244, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(107,0,'Alister Michel','','',29,'2015/29/01','','','1965-03-01 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9840135257','','','246/3, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(108,0,'Petronella','','',29,'2015/29/02','','','1970-02-03 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','9840135257','','','Near Indian Bank','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(109,0,'Antonyraj S','','',30,'2015/30/01','','','2016-07-25 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','9786958397','','','Near Indian Bank','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(110,0,'Arokia Mary S','','',31,'2015/31/01','','','1969-01-08 00:00:00',NULL,NULL,0,6,0,1,1,0,'1','9003546479','','','Near Indian Bank','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(111,0,'Gnana Prakash Raj R','','',31,'2015/31/02','','','1993-08-09 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','9003546479','','','Near Indian Bank','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(112,0,'Arokia Raj Prem Kumar','','',32,'2015/32/01','','','1980-01-11 00:00:00',NULL,NULL,0,0,0,1,1,0,'1','9962352796','','','Near Arockia Annai Hostel','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(113,0,'Mary Stella Jayalakshmi','','',32,'2015/32/02','','','1986-06-25 00:00:00',NULL,NULL,0,0,0,1,1,0,'1','9962352796','','','Near Arockia Annai Hostel','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(114,0,'Mary Mageswari','','',32,'2015/32/03','','','2008-07-07 00:00:00',NULL,NULL,0,0,0,1,1,0,'1','9962352796','','','Near Arockia Annai Hostel','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(115,0,'Nirmalla','','',32,'2015/32/04','','','2016-07-25 00:00:00',NULL,NULL,0,0,0,1,1,0,'1','9962352796','','','Near Arockia Annai Hostel','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(116,0,'Immanuel Kumar','','',33,'2015/33/01','','','1987-09-21 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9629146030','Imman.Kumar@gmail.com','','244, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(117,0,'Priya Dharshini S','','',33,'2015/33/02','','','1986-12-07 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','9629146030','','','244, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(118,0,'Xavier Raja R.','','',34,'2015/34/01','','','1979-05-09 00:00:00',NULL,NULL,0,0,0,1,1,0,'1','9486149678','','','Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(119,0,'Kavitha Mary G.','','',34,'2015/34/02','','','2016-07-25 00:00:00',NULL,NULL,0,0,0,1,1,0,'1','','','','Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(120,0,'Avisekh X.','','',34,'2015/34/03','','','2016-07-25 00:00:00',NULL,NULL,0,0,0,1,1,0,'1','','','','Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(121,0,'Avilash X.','','',34,'2015/34/04','','','2016-07-25 00:00:00',NULL,NULL,0,0,0,1,1,0,'1','','','','Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(122,0,'John Sathiyanathan S','','',35,'2015/35/01','','','1965-06-13 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9786126882','','','Perumal Koil Street','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(123,0,'Roselin J.','','',35,'2015/35/02','','','1969-07-12 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','Perumal Koil Street','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(124,0,'Mathalai Samy S','','',36,'2015/36/01','','','1967-09-29 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','8489782195','','','Athanavur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(125,0,'Susai Mary K','','',36,'2015/36/02','','','1965-01-20 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','8489782195','','','Athanavur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(126,0,'Praveen Yesu Rathinam','','',36,'2015/36/03','','','1996-02-22 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','8489782195','','','Athanavur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(127,0,'Maria Nelson','','',36,'2015/36/04','','','1997-05-23 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','8489782195','','','Athanavur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(128,0,'Narcheithi Alwar','','',37,'2015/37/01','','','1978-04-13 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','','','','Athanavur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(129,0,'Johnsi','','',37,'2015/37/02','','','1985-01-12 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','Athanavur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(130,0,'Remi Alwin','','',37,'2015/37/03','','','2011-11-29 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','Athanavur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(131,0,'Pauline Pereira','','',38,'2015/38/01','','','1948-01-21 00:00:00',NULL,NULL,0,6,0,1,1,0,'1','','','','Athanavur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(132,0,'Irudhaya Mary (A) Pushpa','','',39,'2015/39/01','','','1956-05-03 00:00:00',NULL,NULL,0,6,0,1,1,0,'1','','','','Micro Tower','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(133,0,'Lordu Nathan R','','',39,'2015/39/02','','','1976-07-29 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','Micro Tower','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(134,0,'Arokiya Mary Jothi','','',39,'2015/39/03','','','1983-07-27 00:00:00',NULL,NULL,0,0,0,1,1,0,'1','','','','Micro Tower','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(135,0,'Gnana Anitha L.','','',39,'2015/39/04','','','2003-01-01 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','Micro Tower','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(136,0,'Arun L.','','',39,'2015/39/05','','','2005-06-15 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','Micro Tower','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(137,0,'Maria Arthi L.','','',39,'2015/39/06','','','2007-09-08 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','Micro Tower','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(138,0,'Savari Muthu  S.','','',40,'2015/40/01','','','1946-01-01 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9786648924','','','244,Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(139,0,'Theresha L.','','',40,'2015/40/02','','','1966-03-02 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','9786648924','','','244,Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(140,0,'Muddiyappan A','','',41,'2015/41/01','','','1966-09-20 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9597568552','','','Thayaloor Village','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(141,0,'Shahilla Vinnarasi','','',41,'2015/41/02','','','1996-09-07 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','Thayaloor Village','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(142,0,'Leela Mary B','','',41,'2015/41/03','','','1970-09-02 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','Thayaloor Village','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(143,0,'Robert Sahayam M','','',41,'2015/41/04','','','1987-09-06 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','Thayaloor Village','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(144,0,'Amal Raj M.','','',41,'2015/41/05','','','1989-11-09 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','Thayaloor Village','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(145,0,'Charles Raja M','','',41,'2015/41/06','','','1991-10-13 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','Thayaloor Village','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(146,0,'Anthony S','','',42,'2015/42/01','','','1968-02-03 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9786668081','','','503, Near St. Charles School','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(147,0,'Feula S.','','',42,'2015/42/02','','','1968-01-22 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','503, Near St. Charles School','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(148,0,'Maria Pepin A.','','',42,'2015/42/03','','','1999-04-24 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','503, Near St. Charles School','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(149,0,'Aurelia Whittle Bartley','','',43,'2015/43/01','','','1959-01-01 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','8148877149','','','Murugan Kovil Road','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(150,0,'Christuraj A','','',44,'2015/44/01','','','1964-06-11 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9443099271','','','490, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(151,0,'Jaya Mary A.','','',44,'2015/44/02','','','1970-12-20 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','490, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(152,0,'Jeffrey Raj Guezou C.','','',44,'2015/44/03','','','1996-01-28 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','490, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(153,0,'Jaycel Marion Raj C.','','',44,'2015/44/04','','','1999-06-14 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','490, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(154,0,'Dayalan W','','',45,'2015/45/01','','','1963-11-13 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9443629525','dayacaroylg@gmail.com','','3/489, Murugan Kovil Road','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(155,0,'Caroline A.','','',45,'2015/45/02','','','1966-04-08 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','3/489, Murugan Kovil Road','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(156,0,'Sibi Francis D.','','',45,'2015/45/03','','','1993-02-06 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','3/489, Murugan Kovil Road','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(157,0,'Danny Stephen D.','','',45,'2015/45/04','','','1994-12-26 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','3/489, Murugan Kovil Road','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(158,0,'Joseph (Govindasamy N. R)','','',46,'2015/46/01','','','1954-08-15 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','','','','Near St. Charles School','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(159,0,'Jacintha (A) Radha G.','','',46,'2015/46/02','','','1959-01-01 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','Near St. Charles School','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(160,0,'Kavitha G.','','',46,'2015/46/03','','','1999-04-08 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','Near St. Charles School','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(161,1,'Francis Gunasekar K','','',47,'2015/47/01','','','1952-02-04 00:00:00','','',0,1,0,1,2,0,'1','9500357208','','','Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(162,0,'Mary Jecintha Jagatha','','',47,'2015/47/02','','','1958-10-19 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','9500357208','','','Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(163,0,'Susan Geetha','','',47,'2015/47/03','','','1977-07-31 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','9500357208','','','Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(164,0,'Berthe Kavitha','','',47,'2015/47/04','','','1981-03-03 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','9500357208','','','Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(165,0,'illana Sangeetha','','',47,'2015/47/05','','','1983-06-06 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','9500357208','','','Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(166,0,'John Britto J','','',48,'2015/48/01','','','1980-04-08 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9790535586','','','Don Bosco Camp Center','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(167,0,'Rose Mary A.','','',48,'2015/48/02','','','1979-11-12 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','Don Bosco Camp Center','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(168,0,'Jenifer Angelin J.','','',48,'2015/48/03','','','2004-07-22 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','Don Bosco Camp Center','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(169,0,'Mary Sinega J','','',48,'2015/48/04','','','2005-07-19 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','Don Bosco Camp Center','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(170,0,'Joseph Velukumar','','',49,'2015/49/01','','','1969-04-05 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9655840882','kumarylg@gmail.com','','Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(171,0,'Maria selvi','','',49,'2015/49/02','','','1976-08-03 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(172,0,'Santhos Raj','','',49,'2015/49/03','','','1999-06-21 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(173,0,'Vivek Parak','','',49,'2015/49/04','','','2000-06-15 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(174,0,'Navinadarshani','','',49,'2015/49/05','','','1997-06-02 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(175,0,'Leo Maria Francis','','',50,'2015/50/01','','','1956-11-06 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9442310807','leomariafrancis@yahoo.co.in','','485, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(176,0,'Maria Nirmala','','',50,'2015/50/02','','','1960-05-12 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','485, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(177,0,'Lin Teresa Maria Francis','','',50,'2015/50/03','','','1994-11-07 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','485, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(178,0,'Mervin Louis Maria Francis','','',50,'2015/50/04','','','1997-05-29 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','485, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(179,0,'Merlin  Cleri Maria Francis','','',50,'2015/50/05','','','1997-05-29 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','485, Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(180,0,'Michael S','','',51,'2015/51/01','','','1974-04-08 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9786539139','','','Near Idaya Deepam','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(181,0,'Myla','','',51,'2015/51/02','','','1986-06-26 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','Near Idaya Deepam','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(182,0,'Snekan Anto','','',51,'2015/51/03','','','2008-01-22 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','Near Idaya Deepam','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(183,0,'Nisha Mary','','',51,'2015/51/04','','','2010-01-17 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','Near Idaya Deepam','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(184,0,'Sagaya Raj M','','',52,'2015/52/01','','','1963-01-13 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','848978227','','','353,Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(185,0,'Sagaya Selvi M.','','',52,'2015/52/02','','','1976-07-29 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','848978227','','','353,Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(186,0,'Sangeetha Rosari S.','','',52,'2015/52/03','','','1997-08-04 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','848978227','sangeetharosi97@gmail.com','','353,Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(187,0,'Infant Maria Franklin S.','','',52,'2015/52/04','','','1999-01-15 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','848978227','franklinsagayam@gmail.com','','353,Guezou Nagar','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(188,0,'William Sundaram M.','','',53,'2015/53/01','','','1978-02-03 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9486844736','maradnus@gmail.com','','Murugan Kovil Road','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(189,0,'Isabella Rani M.','','',53,'2015/53/02','','','1980-04-10 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','9442369483','isabellaranimw@yahoo.com','','Murugan Kovil Road','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(190,0,'Monica Ezhil Arase S.','','',53,'2015/53/03','','','2005-10-10 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','Murugan Kovil Road','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(191,0,'Christopher S.','','',53,'2015/53/04','','','2011-10-22 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','Murugan Kovil Road','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(192,0,'Christina','','',53,'2015/53/05','','','2011-10-22 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','Murugan Kovil Road','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(193,0,'Erroel Vogt (Peter)','','',54,'2015/54/01','','','1967-10-07 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','9442357711','','','3/503. Manjakolla pudur','','MK Pudur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(194,0,'Joqulin Vogt','','',54,'2015/54/02','','','1970-11-19 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','3/503. Manjakolla pudur','','MK Pudur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(195,0,'Veronica Gomes','','',54,'2015/54/03','','','1946-01-18 00:00:00',NULL,NULL,0,15,0,1,1,0,'1','','','','3/503. Manjakolla pudur','','MK Pudur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(196,0,'Jeswanth Jonas','','',55,'2015/55/01','','','1955-07-30 00:00:00',NULL,NULL,0,5,0,1,1,0,'1','9444799499','','','536, Manjankollai Pudur','','','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(197,0,'Antony Yash','','',60,'2015/60/01','','','1980-05-02 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','','','','Murugan Kovil Road','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(198,0,'Reena Mary','','',60,'2015/60/02','','','1984-10-12 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','Murugan Kovil Road','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(199,0,'Theris Raj Kumar','','',61,'2015/61/01','','','1980-09-01 00:00:00',NULL,NULL,0,1,0,1,1,0,'1','','','','Athanavur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(200,0,'Mary Premila','','',61,'2015/61/02','','','1981-02-02 00:00:00',NULL,NULL,0,2,0,1,1,0,'1','','','','Athanavur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(201,0,'Anu Elizebeth','','',61,'2015/61/03','','','2005-08-01 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','Athanavur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(202,0,'John Mathew','','',61,'2015/61/04','','','2007-06-20 00:00:00',NULL,NULL,0,3,0,1,1,0,'1','','','','Athanavur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(203,0,'Alphones Iyane','','',61,'2015/61/05','','','2009-02-09 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','Athanavur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(204,0,'Amali Theya','','',61,'2015/61/06','','','2011-01-01 00:00:00',NULL,NULL,0,4,0,1,1,0,'1','','','','Athanavur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,NULL,NULL,NULL,NULL,1),(205,1,'Noel Regel','','',58,'2015/58/01','','M','1986-01-06 00:00:00','','',0,1,0,1,1,0,'1','','','','Athanavur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1),(206,1,'Pasca Mary','','',58,'2015/58/02','','F','1990-03-21 00:00:00','','',0,2,0,1,1,0,'1','','','','Athanavur','','Athanavur','Yelagiri Hillis',523,26,1,'635853','',NULL,0xFFD8FFE000104A46494600010101006000600000FFE1004E4578696600004D4D002A00000008000403010005000000010000003E511000010000000101000000511100040000000100000EC2511200040000000100000EC200000000000186A00000B18FFFDB004300100B0C0E0C0A100E0D0E1211101318281A181616183123251D283A333D3C3933383740485C4E404457453738506D51575F626768673E4D71797064785C656763FFDB0043011112121815182F1A1A2F634238426363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363FFC000110800AA009803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E9A8A28AD480A28A2800A28A2800A28A9A1B77979E8BEB4010D4A96F249D178F5357E2B68E3ED93EA6A5A9722AC515B1247CCD8FA545711244768396EF5A954AF2DC96322F3EA2927A83452A28A2AC90A28A2800A28A2800A28A2800A28A2800A28A2800A28A7469BE455F5340162D6DBCCF9DFEEF61EB57C000600A4550AA00E829D59B772C28A28A401494B450052BBB6E0C883EA2A956C91918ACAB84F2E665EDDAAE2C96474514550828A28A0028A28A0028A28A0028A28A002A7B219B81ED50559B1FF5FF008527B0D1A34514566505145140051451400550D407EF14FB55FAA3A87DE5FA538EE2653A28A2B42428A28A0028A28A0028A28A0028A28A002AC597FC7C0FA557A9AD38B85A4F61A3528A28ACCA0A28A2800A28A2800AA1A87FAC5FA55FACFBFF00F5ABF4A71DC4CAB4514568485145140051451400514514005145140055DD3F186F5AA556F4F389187A8A4F61A2FD145159941451450014514500155AF80F2727AE6ACD53D40FC8A3DE9ADC4CA345145684851451400514514005145140051451400549049E54A1AA3A28036472296A381B7C2A7DAA4AC8B0A28A2800A28A2800ACCBB97CC971D978AD173B509F41590C72C4FA9AA889894514559214514500145145001451450014514500145145005EB093E5319EDC8AB959301226423D6B5AA25B94828A28A918514514015AF64D916DEED59D53DE926E0E7B5415A2D89614514531051451400514514005145140051451400514514012DA8CDC20AD5AA56508C0949E6AED44B7290514515230A28A280336F8627FC2ABD685E421D0BE795159F5A2D896145145310514514005145140051451400514514005153456D2487A607A9ABB15AA47CE327D4D26EC3B0F813642A3DAA4A4A5ACCA0A28A2800A28A2801AE37211EA2B21815620F6AD9A865B749472307D45527613465D153CB6AF1F23E61ED5074AB2428A28A0028A28A0028C66A786D5E5E4F0BEB5762B78E3E8327D4D26EC3B14A2B5924E48DA3DEAE456B1C7CE371F7A9E8A86DB1D84A5A28A430A28A2800A28A2800A28A2800A28A28012A296DE393A8C1F5153514019B2D9BA72BF30AAE41070462B6AA39214907CCBCFAD5290AC64D15666B464E53E61455DC9342969296B22C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9,NULL,1,NULL,1);
/*!40000 ALTER TABLE `cristo_family_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_family_subscription`
--

DROP TABLE IF EXISTS `cristo_family_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_family_subscription` (
  `FAMILY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `APPLICABLE_FROM` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `AMOUNT` decimal(10,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_family_subscription`
--

LOCK TABLES `cristo_family_subscription` WRITE;
/*!40000 ALTER TABLE `cristo_family_subscription` DISABLE KEYS */;
INSERT INTO `cristo_family_subscription` VALUES (1,'2015-06-01 00:00:00',100),(2,'2015-01-01 00:00:00',100),(3,'2015-06-01 00:00:00',100),(4,'2015-06-01 00:00:00',100),(5,'2015-06-01 00:00:00',100),(6,'2015-06-01 00:00:00',100),(7,'2015-06-01 00:00:00',100),(8,'2015-06-01 00:00:00',100),(9,'2015-06-01 00:00:00',100),(10,'2015-06-01 00:00:00',100),(12,'2015-06-01 00:00:00',100),(13,'2015-06-01 00:00:00',100),(14,'2015-06-01 00:00:00',100),(15,'2015-06-01 00:00:00',100),(16,'2015-06-01 00:00:00',100),(17,'2015-06-01 00:00:00',100),(18,'2015-06-01 00:00:00',100),(19,'2015-06-01 00:00:00',100),(20,'2015-06-01 00:00:00',100),(21,'2015-06-01 00:00:00',100),(22,'2015-06-01 00:00:00',100),(23,'2015-06-01 00:00:00',100),(24,'2015-06-01 00:00:00',100),(25,'2015-06-01 00:00:00',100),(27,'2015-06-01 00:00:00',100),(28,'2015-06-01 00:00:00',100),(30,'2015-06-01 00:00:00',100),(31,'2015-06-01 00:00:00',100),(61,'2015-06-01 00:00:00',100),(60,'2015-06-01 00:00:00',100),(58,'2015-06-01 00:00:00',100),(59,'2015-06-01 00:00:00',100),(57,'2015-06-01 00:00:00',100),(56,'2015-06-01 00:00:00',100),(55,'2015-06-01 00:00:00',100),(53,'2015-06-01 00:00:00',100),(52,'2015-06-01 00:00:00',100),(51,'2015-06-01 00:00:00',100),(50,'2015-06-01 00:00:00',100),(49,'2015-06-01 00:00:00',100),(48,'2015-06-01 00:00:00',100),(47,'2015-06-01 00:00:00',100),(46,'2015-06-01 00:00:00',100),(44,'2015-06-01 00:00:00',100),(42,'2015-06-01 00:00:00',100),(41,'2015-06-01 00:00:00',100),(40,'2015-06-01 00:00:00',100),(39,'2015-06-01 00:00:00',100),(38,'2015-06-01 00:00:00',100),(37,'2015-06-01 00:00:00',100),(34,'2015-06-01 00:00:00',100),(33,'2015-06-01 00:00:00',100),(32,'2015-06-01 00:00:00',100),(11,'2015-06-01 00:00:00',50),(36,'2015-06-01 00:00:00',50),(45,'2015-06-01 00:00:00',200),(54,'2015-06-01 00:00:00',2000),(29,'2015-06-01 00:00:00',1000),(43,'2015-06-01 00:00:00',500),(35,'2015-06-01 00:00:00',100),(26,'2016-01-01 00:00:00',100);
/*!40000 ALTER TABLE `cristo_family_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_marriage_register`
--

DROP TABLE IF EXISTS `cristo_marriage_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_marriage_register` (
  `MARRIAGE_REGISTER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MARRIAGE_REGISTER_REF` varchar(15) NOT NULL DEFAULT '',
  `MARRIAGE_REGISTER_TYPE` varchar(1) NOT NULL DEFAULT 'R',
  `MARRIAGE_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `MARRIAGE_PLACE` varchar(50) DEFAULT NULL,
  `MARRIAGE_MINISTER` varchar(50) DEFAULT NULL,
  `MARRIAGE_PARISH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MARRIAGE_CHURCH` varchar(50) DEFAULT NULL,
  `BRIDE_NAME` varchar(50) NOT NULL DEFAULT '',
  `BRIDE_LAST_NAME` varchar(50) DEFAULT NULL,
  `BRIDE_DOB` datetime DEFAULT NULL,
  `BRIDE_AGE` varchar(3) DEFAULT NULL,
  `BRIDE_STATUS` int(10) unsigned NOT NULL DEFAULT '0',
  `BRIDE_PARISH` int(10) unsigned DEFAULT NULL,
  `BRIDE_RELIGION` int(10) unsigned DEFAULT NULL,
  `BRIDE_BAPTISM_DATE` datetime DEFAULT NULL,
  `BRIDE_DOMICILE` varchar(50) DEFAULT NULL,
  `BRIDE_COUNTRY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BRIDE_FATHER_NAME` varchar(50) DEFAULT NULL,
  `BRIDE_MOTHER_NAME` varchar(50) DEFAULT NULL,
  `BRIDEGROOM_NAME` varchar(50) NOT NULL DEFAULT '',
  `BRIDEGROOM_LAST_NAME` varchar(50) DEFAULT NULL,
  `BRIDEGROOM_DOB` datetime DEFAULT NULL,
  `BRIDEGROOM_AGE` varchar(3) DEFAULT NULL,
  `BRIDEGROOM_STATUS` varchar(50) NOT NULL DEFAULT '0',
  `BRIDEGROOM_PARISH` int(10) unsigned NOT NULL DEFAULT '0',
  `BRIDEGROOM_RELIGION` int(10) unsigned DEFAULT NULL,
  `BRIDEGROOM_BAPTISM_DATE` datetime DEFAULT NULL,
  `BRIDEGROOM_DOMICILE` varchar(50) DEFAULT NULL,
  `BRIDEGROOM_COUNTRY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BRIDEGROOM_FATHER_NAME` varchar(50) DEFAULT NULL,
  `BRIDEGROOM_MOTHER_NAME` varchar(50) DEFAULT NULL,
  `WITNESS1_NAME` varchar(50) DEFAULT NULL,
  `WITNESS1_DOMICILE` varchar(50) DEFAULT NULL,
  `WITNESS1_BANNS` varchar(50) DEFAULT NULL,
  `WITNESS2_NAME` varchar(50) DEFAULT NULL,
  `WITNESS2_DOMICILE` varchar(50) DEFAULT NULL,
  `WITNESS2_IMPEDIMENTS` varchar(50) DEFAULT NULL,
  `NOTES` varchar(300) DEFAULT NULL,
  `BRIDEGROOM` int(10) unsigned DEFAULT NULL,
  `BRIDE` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`MARRIAGE_REGISTER_ID`),
  UNIQUE KEY `UNQ_MARRIAGE_REGISTER_REF` (`MARRIAGE_REGISTER_REF`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_marriage_register`
--

LOCK TABLES `cristo_marriage_register` WRITE;
/*!40000 ALTER TABLE `cristo_marriage_register` DISABLE KEYS */;
INSERT INTO `cristo_marriage_register` VALUES (1,'1','R','2016-04-11 00:00:00','yelegiri','Fr Thaddeus',0,'','Aruna annammal','','1989-06-11 00:00:00','27',1,0,0,'0001-01-01 00:00:00','Dasarapalli',0,'kanikaisamy','elizabeth','Vikkira madhithan','','1985-06-06 00:00:00','31','1',0,0,'0001-01-01 00:00:00','irunapattu',0,'arul nathan','lakshmi','sundara','','','yagappan','','','',0,0),(2,'2','R','2016-05-12 00:00:00','yelagiri','Fr Thaddeus',0,'','Abila','','1993-10-18 00:00:00','23',1,0,0,'0001-01-01 00:00:00','Neyveli',0,'boobalan','santhi','Amalraj','','1989-11-09 00:00:00','27','1',0,0,'0001-01-01 00:00:00','thayaloor',0,'mudiyappen','leela mary','john petar','','','dharma raja','','','',0,0);
/*!40000 ALTER TABLE `cristo_marriage_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_mass_offering`
--

DROP TABLE IF EXISTS `cristo_mass_offering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_mass_offering` (
  `MASS_OFFERING_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MASS_OFFERING_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `IS_PARISHNER` int(10) unsigned NOT NULL DEFAULT '0',
  `MASS_OFFERING_BCC_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MASS_OFFERING_FAMILY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MASS_OFFERING_NAME` varchar(50) NOT NULL DEFAULT '',
  `MASS_OFFERING_PLACE` varchar(50) NOT NULL DEFAULT '',
  `MASS_OFFERING_TYPE` int(10) unsigned NOT NULL DEFAULT '0',
  `MASS_OFFERING_NO_OF_MASSES` int(10) unsigned NOT NULL DEFAULT '0',
  `MASS_OFFERING_DATE_FROM` datetime DEFAULT NULL,
  `MASS_OFFERING_DATE_TO` datetime DEFAULT NULL,
  `MASS_OFFERING_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MASS_OFFERING_INTENTION` varchar(300) DEFAULT NULL,
  `MASS_OFFERING_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `CASHBANK_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MASS_OFFERING_REF_NO` varchar(30) DEFAULT NULL,
  `USER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MASS_OFFERING_PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MASS_OFFERING_MATERIALIZED_ON` datetime DEFAULT NULL,
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`MASS_OFFERING_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_mass_offering`
--

LOCK TABLES `cristo_mass_offering` WRITE;
/*!40000 ALTER TABLE `cristo_mass_offering` DISABLE KEYS */;
INSERT INTO `cristo_mass_offering` VALUES (1,'2015-09-15 00:00:00',0,4,5,'','',1,1,'2015-09-13 00:00:00','2015-09-13 00:00:00','2016-03-23 01:30:00','Thanks giving\r\nThanks giving',100.00,1,'',1,3,'2013-07-12 00:00:00',1029),(2,'2015-09-10 00:00:00',0,3,43,'','',1,1,'2015-09-08 00:00:00','2015-09-08 00:00:00','2016-03-23 01:30:00','Special Intentions of Aurelia Whittle Bartley,Special Intentions of Haley White\r\nSpecial Intentions of Aurelia Whittle Bartley,Special Intentions of Haley White',400.00,1,'',0,3,'2015-04-12 00:00:00',1029),(3,'2015-09-08 00:00:00',1,0,0,'Parish Priest','YELLAGIRI MISSION',1,1,'2015-09-08 00:00:00','2015-09-08 00:00:00','2016-03-23 01:30:00','Mass offering for People\r\nMass offering for People\r\nMass offering for People',200.00,1,'',0,3,'2015-04-12 00:00:00',1029),(4,'2015-09-13 00:00:00',0,2,36,'','',1,1,'2015-09-13 00:00:00','2015-09-13 00:00:00','2016-03-23 01:30:00','Thanks giving',100.00,1,'',0,3,'2015-04-12 00:00:00',1029),(5,'2015-07-29 00:00:00',1,0,0,'Parist Priest','Yellagiri Hills',1,1,'2015-09-27 00:00:00','2015-09-27 00:00:00','2016-03-23 01:30:00','Thanks giving',100.00,1,'',0,3,'2015-04-12 00:00:00',1029),(6,'2015-10-06 00:00:00',1,0,0,'Mr Vallabadoss','Tirupattur',1,1,'2015-10-05 00:00:00','2015-10-05 00:00:00','2016-03-23 01:30:00','Donations',5000.00,1,'',0,3,'2015-04-12 00:00:00',1029),(7,'2015-10-14 00:00:00',0,4,12,'','',1,1,'2015-10-14 00:00:00','2015-10-14 00:00:00','2016-03-23 01:30:00','Birthday of Avila Blency',100.00,1182,'',0,3,'2015-04-12 00:00:00',1029),(8,'2015-10-15 00:00:00',0,1,17,'','',1,1,'2015-10-05 00:00:00','2015-04-12 00:00:00','2016-03-23 01:30:00','6 th Death Anniversary of Mrs Pascaline Pachalai',100.00,1,'',0,3,'2015-04-12 00:00:00',1029),(9,'2015-10-25 00:00:00',0,3,43,'','',1,1,'2015-10-25 00:00:00','2015-10-25 00:00:00','2016-03-23 01:30:00','Special Intentions of Aurelia whittle Bartley and Haley white RIP',100.00,1,'',0,3,'2015-04-12 00:00:00',1029),(10,'2015-10-25 00:00:00',0,4,4,'','',1,1,'2015-10-25 00:00:00','2015-04-12 00:00:00','2016-03-23 01:30:00','Special Soul\'s Day Mass for Mary,susai, savariammal,Lazar\r\nSpecial Soul\'s Day Mass for Thomas,Savari Muthu,Sabastian',100.00,1182,'',1,3,'2015-04-12 00:00:00',1029),(11,'2015-10-03 00:00:00',0,4,8,'','',1,1,'2015-10-02 00:00:00','2015-10-02 00:00:00','2016-03-23 01:30:00','Special Soul\'s Day Mass for Thomas,Savari Muthu,Sabastian',100.00,1,'',0,3,'2015-04-12 00:00:00',1029),(12,'2015-02-28 00:00:00',1,0,0,'Vincent Paul & Pathima','YELLAGIRI HILLS',1,1,'2015-10-02 00:00:00','2015-10-02 00:00:00','2016-03-23 01:30:00','Soul\'s Day Mass for Alphones,Johni',100.00,1,'',0,3,'2015-04-12 00:00:00',1029);
/*!40000 ALTER TABLE `cristo_mass_offering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_master_bcc`
--

DROP TABLE IF EXISTS `cristo_master_bcc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_master_bcc` (
  `BCC_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`BCC_ID`),
  UNIQUE KEY `UNQ_NAME` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_master_bcc`
--

LOCK TABLES `cristo_master_bcc` WRITE;
/*!40000 ALTER TABLE `cristo_master_bcc` DISABLE KEYS */;
INSERT INTO `cristo_master_bcc` VALUES (1,'Arockia Annai'),(2,'St. Antony'),(3,'St. Francis Xavier'),(4,'Valanar');
/*!40000 ALTER TABLE `cristo_master_bcc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_master_community`
--

DROP TABLE IF EXISTS `cristo_master_community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_master_community` (
  `COMMUNITY_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `COMMUNITY_NAME` varchar(50) NOT NULL DEFAULT '',
  `ABBREVIATION` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`COMMUNITY_ID`),
  UNIQUE KEY `UNQ_COMMUNITY_NAME` (`COMMUNITY_NAME`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_master_community`
--

LOCK TABLES `cristo_master_community` WRITE;
/*!40000 ALTER TABLE `cristo_master_community` DISABLE KEYS */;
INSERT INTO `cristo_master_community` VALUES (1,'SC','Scheduled Caste'),(3,'ST','Scheduled Tribe'),(5,'BC/OBC','Backward Community'),(7,'MBC','Most Backward Community'),(9,'DC','Denotified Communities'),(11,'BCM','Backward Community Muslim');
/*!40000 ALTER TABLE `cristo_master_community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_master_district`
--

DROP TABLE IF EXISTS `cristo_master_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_master_district` (
  `DISTRICT_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DISTRICT_NAME` varchar(50) NOT NULL DEFAULT '',
  `STATE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`DISTRICT_ID`),
  UNIQUE KEY `UNQ_DISTRICT_NAME` (`DISTRICT_NAME`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=668 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_master_district`
--

LOCK TABLES `cristo_master_district` WRITE;
/*!40000 ALTER TABLE `cristo_master_district` DISABLE KEYS */;
INSERT INTO `cristo_master_district` VALUES (1,'Anantapur',27),(2,'Chittoor',27),(3,'East Godavari',27),(4,'Guntur',27),(5,'Krishna',27),(6,'Kurnool',27),(7,'Nellore',27),(8,'Prakasam',27),(9,'Srikakulam',27),(10,'Visakhapatnam',27),(11,'Vizianagaram',27),(12,'West Godavari',27),(13,'YSR',27),(14,'Anjaw',40),(15,'Changlang',40),(16,'East Kameng',40),(17,'East Siang',40),(18,'Kra Daadi',40),(19,'Kurung Kumey',40),(20,'Lohit',40),(21,'Longding',40),(22,'Lower Dibang Valley',40),(23,'Lower Subansiri',40),(24,'Namsai',40),(25,'Papum Pare',40),(26,'Tawang',40),(27,'TIrap',40),(28,'Upper Dibang Valley',40),(29,'Upper Siang',40),(30,'Upper Subansiri',40),(31,'West Kameng',40),(32,'West Siang',40),(33,'Baksa',41),(34,'Barpeta',41),(35,'Bongaigaon',41),(36,'Cachar',41),(37,'Chirang',41),(38,'Darrang',41),(39,'Dhemaji',41),(40,'Dhubri',41),(41,'Dibrugarh',41),(42,'Dima Hasao',41),(43,'Goalpara',41),(44,'Golaghat',41),(45,'Hailakandi',41),(46,'Jorhat',41),(47,'Kamrup',41),(48,'Kamrup Metropolitan',41),(49,'Karbi Anglong',41),(50,'Karimganj',41),(51,'Kokrajhar',41),(52,'Lakhimpur',41),(53,'Morigaon',41),(54,'Nagaon',41),(55,'Nalbari',41),(56,'Sivasagar',41),(57,'Sonitpur',41),(58,'Tinsukia',41),(59,'Udalguri',41),(60,'Araria',42),(61,'Arwal',42),(62,'Aurangabad',53),(63,'Banka',42),(64,'Begusarai',42),(65,'Bhagalpur',42),(66,'Bhojpur',42),(67,'Buxar',42),(68,'Darbhanga',42),(69,'East Champaran',42),(70,'Gaya',42),(71,'Gopalganj',42),(72,'Jamui',42),(73,'Jehanabad',42),(74,'Kaimur',42),(75,'Katihar',42),(76,'Khagaria',42),(77,'Kishanganj',42),(78,'Lakhisarai',42),(79,'Madhepura',42),(80,'Madhubani',42),(81,'Munger',42),(82,'Muzaffarpur',42),(83,'Nalanda',42),(84,'Nawada',42),(85,'Patna',42),(86,'Purnia',42),(87,'Rohtas',42),(88,'Saharsa',42),(89,'Samastipur',42),(90,'Saran',42),(91,'Sheikhpura',42),(92,'Sheohar',42),(93,'Sitamarhi',42),(94,'Siwan',42),(95,'Supaul',42),(96,'Vaishali',42),(97,'West Champaran',42),(98,'Balod',43),(99,'Baloda Bazar',43),(100,'Balrampur',30),(101,'Bastar',43),(102,'Bemetara',43),(103,'Bijapur',43),(104,'Bilaspur',47),(105,'Dantewada',43),(106,'Dhamtari',43),(107,'Durg',43),(108,'Gariaband',43),(109,'Janjgir-Champa',43),(110,'Jashpur',43),(111,'Kabirdham',43),(112,'Kanker',43),(113,'Kondagaon',43),(114,'Korba',43),(115,'Koriya',43),(116,'Mahasamund',43),(117,'Mungeli',43),(118,'Narayanpur',43),(119,'Raigarh',43),(120,'Raipur',43),(121,'Rajnandgaon',43),(122,'Sukma',43),(123,'Surajpur',43),(124,'Surguja',43),(125,'North Goa',44),(126,'South Goa',44),(127,'Ahmedabad',45),(128,'Amreli',45),(129,'Anand',45),(130,'Aravalli',45),(131,'Banaskantha',45),(132,'Bharuch',45),(133,'Bhavnagar',45),(134,'Botad',45),(135,'Chhota Udaipur',45),(136,'Dahod',45),(137,'Dang',45),(138,'Devbhoomi Dwarka',45),(139,'Gandhinagar',45),(140,'Gir Somnath',45),(141,'Jamnagar',45),(142,'Junagadh',45),(143,'Kheda',45),(144,'Kutch',45),(145,'Mahisagar',45),(146,'Mehsana',45),(147,'Morbi',45),(148,'Narmada',45),(149,'Navsari',45),(150,'Panchmahal',45),(151,'Patan',45),(152,'Porbandar',45),(153,'Rajkot',45),(154,'Sabarkantha',45),(155,'Surat',45),(156,'Surendranagar',45),(157,'Tapi',45),(158,'Vadodara',45),(159,'Valsad',45),(160,'Ambala',46),(161,'Bhiwani',46),(162,'Faridabad',46),(163,'Fatehabad',46),(164,'Gurgaon',46),(165,'Hisar',46),(166,'Jhajjar',46),(167,'Jind',46),(168,'Kaithal',46),(169,'Karnal',46),(170,'Kurukshetra',46),(171,'Mahendragarh',46),(172,'Mewat',46),(173,'Palwal',46),(174,'Panchkula',46),(175,'Panipat',46),(176,'Rewari',46),(177,'Rohtak',46),(178,'Sirsa',46),(179,'Sonipat',46),(180,'Yamuna Nagar',46),(181,'Chamba',47),(182,'Hamirpur',30),(183,'Kangra',47),(184,'Kinnaur',47),(185,'Kullu',47),(186,'Lahaul and Spiti',47),(187,'Mandi',47),(188,'Shimla',47),(189,'Sirmaur',47),(190,'Solan',47),(191,'Una',47),(192,'Anantnag',48),(193,'Bandipora',48),(194,'Baramulla',48),(195,'Budgam',48),(196,'Doda',48),(197,'Ganderbal',48),(198,'Jammu',48),(199,'Kargil',48),(200,'Kathua',48),(201,'Kishtwar',48),(202,'Kulgam',48),(203,'Kupwara',48),(204,'Leh',48),(205,'Poonch',48),(206,'Pulwama',48),(207,'Rajouri',48),(208,'Ramban',48),(209,'Reasi',48),(210,'Samba',48),(211,'Shophian',48),(212,'Srinagar',48),(213,'Udhampur',48),(214,'Bokaro',49),(215,'Chatra',49),(216,'Deoghar',49),(217,'Dhanbad',49),(218,'Dumka',49),(219,'East Singhbhum',49),(220,'Garhwa',49),(221,'Giridih',49),(222,'Godda',49),(223,'Gumla',49),(224,'Hazaribagh',49),(225,'Jamtara',49),(226,'Khunti',49),(227,'Koderma',49),(228,'Latehar',49),(229,'Lohardaga',49),(230,'Pakur',49),(231,'Palamu',49),(232,'Ramgarh',49),(233,'Ranchi',49),(234,'Sahebganj',49),(235,'Saraikela Kharsawan',49),(236,'Simdega',49),(237,'West Singhbhum',49),(238,'Bagalkot',50),(239,'Belagavi',50),(240,'Bellary',50),(241,'Bengaluru',50),(242,'Bidar',50),(243,'Chamarajnagar',50),(244,'Chikballapur',50),(245,'Chikkamagaluru',50),(246,'Chitradurga',50),(247,'Dakshina Kannada',50),(248,'Davanagere',50),(249,'Dharwad',50),(250,'Gadag',50),(251,'Hassan',50),(252,'Haveri',50),(253,'Kalaburagi',50),(254,'Kodagu',50),(255,'Kolar',50),(256,'Koppal',50),(257,'Mandya',50),(258,'Mysuru',50),(259,'Raichur',50),(260,'Ramanagara',50),(261,'Shivamogga',50),(262,'Tumakuru',50),(263,'Udupi',50),(264,'Uttara Kannada',50),(265,'Vijayapura',50),(266,'Yadgir',50),(267,'Alappuzha',51),(268,'Ernakulam',51),(269,'Idukki',51),(270,'Kannur',51),(271,'Kasaragod',51),(272,'Kollam',51),(273,'Kottayam',51),(274,'Kozhikode',51),(275,'Malappuram',51),(276,'Palakkad',51),(277,'Pathanamthitta',51),(278,'Thiruvananthapuram',51),(279,'Thrissur',51),(280,'Wayanad',51),(281,'Agar Malwa',52),(282,'Alirajpur',52),(283,'Anuppur',52),(284,'Ashoknagar',52),(285,'Balghat',52),(286,'Barwani',52),(287,'Betul',52),(288,'Bhind',52),(289,'Bhopal',52),(290,'Burhanpur',52),(291,'Chhatarpur',52),(292,'Chhindwara',52),(293,'Damoh',52),(294,'Datia',52),(295,'Dewas',52),(296,'Dhar',52),(297,'Dindori',52),(298,'Guna',52),(299,'Gwalior',52),(300,'Harda',52),(301,'Hoshangabad',52),(302,'Indore',52),(303,'Jabalpur',52),(304,'Jhabua',52),(305,'Katni',52),(306,'Khandwa',52),(307,'Khargone',52),(308,'Mandla',52),(309,'Mandsaur',52),(310,'Morena',52),(311,'Narsinghpur',52),(312,'Neemuch',52),(313,'Panna',52),(314,'Raisen',52),(315,'Rajgarh',52),(316,'Ratlam',52),(317,'Rewa',52),(318,'Sagar',52),(319,'Satna',52),(320,'Sehore',52),(321,'Seoni',52),(322,'Shahdol',52),(323,'Shajapur',52),(324,'Sheopur',52),(325,'Shivpuri',52),(326,'Sidhi',52),(327,'Singrauli',52),(328,'Tikamgarh',52),(329,'Ujjain',52),(330,'Umaria',52),(331,'Vidisha',52),(332,'Ahmednagar',53),(333,'Akola',53),(334,'Amravati',53),(335,'Beed',53),(336,'Bhandara',53),(337,'Buldana',53),(338,'Chandrapur',53),(339,'Dhule',53),(340,'Gadchiroli',53),(341,'Gondia',53),(342,'Hingoli',53),(343,'Jalgaon',53),(344,'Jalna',53),(345,'Kolhapur',53),(346,'Latur',53),(347,'Mumbai',53),(348,'Mumbai Suburban',53),(349,'Nagpur',53),(350,'Nanded',53),(351,'Nandurbar',53),(352,'Nashik',53),(353,'Osmanabad',53),(354,'Palghar',53),(355,'Parbhani',53),(356,'Pune',53),(357,'Raigad',53),(358,'Ratnagiri',53),(359,'Sangli',53),(360,'Satara',53),(361,'Sindhudurg',53),(362,'Solapur',53),(363,'Thane',53),(364,'Wardha',53),(365,'Washim',53),(366,'Yavatmal',53),(367,'Bishnupur',54),(368,'Chandel',54),(369,'Churachandpur',54),(370,'Imphal East',54),(371,'Imphal West',54),(372,'Senapati',54),(373,'Tamenglong',54),(374,'Thoubal',54),(375,'Ukhrul',54),(376,'East Garo Hills (Williamnagar)',55),(377,'East Jaintia Hills (Khliehriat)',55),(378,'East Khasi Hills (Shillong)',55),(379,'North Garo Hills (Resubelpara)',55),(380,'Ri-Bhoi (Nongpoh)',55),(381,'South Garo Hills (Baghmara)',55),(382,'West Garo Hills',55),(383,'South West Khasi Hills (Mawkyrwat)',55),(384,'West Jaintia Hills (Jowai)',55),(385,'West Khasi Hills (Nongstoin)',55),(386,'Aizawl',20),(387,'Champhai',20),(388,'Kolasib',20),(389,'Lawngtlai',20),(390,'Lunglei',20),(391,'Mamit',20),(392,'Saiha',20),(393,'Serchhip',20),(394,'Dimapur',21),(395,'Kiphire',21),(396,'Kohima',21),(397,'Longleng',21),(398,'Mokokchung',21),(399,'Mon',21),(400,'Peren',21),(401,'Phek',21),(402,'Tuensang',21),(403,'Wokha',21),(404,'Zunheboto',21),(405,'Anugul',22),(406,'Balangir',22),(407,'Balasore',22),(408,'Bargarh',22),(409,'Bhadrak',22),(410,'Boudh',22),(411,'Cuttack',22),(412,'Debagarh',22),(413,'Dhenkanal',22),(414,'Gajapati',22),(415,'Ganjam',22),(416,'Jagatsinghapur',22),(417,'Jajapur',22),(418,'Jharsuguda',22),(419,'Kalahandi',22),(420,'Kandhamal',22),(421,'Kendrapara',22),(422,'Kendujhar',22),(423,'Khordha',22),(424,'Koraput',22),(425,'Malkangiri',22),(426,'Mayurbhanj',22),(427,'Nabarangpur',22),(428,'Nayagarh',22),(429,'Nuapada',22),(430,'Puri',22),(431,'Rayagada',22),(432,'Sambalpur',22),(433,'Subarnapur',22),(434,'Sundargarh',22),(435,'Ajitgarh',23),(436,'Amritsar',23),(437,'Barnala',23),(438,'Bathinda',23),(439,'Faridkot',23),(440,'Fatehgarh Sahib',23),(441,'Fazilka',23),(442,'Firozpur',23),(443,'Gurdaspur',23),(444,'Hoshiarpur',23),(445,'Jalandhar',23),(446,'Kapurthala',23),(447,'Ludhiana',23),(448,'Mansa',23),(449,'Moga',23),(450,'Muktsar',23),(451,'Nawan Shahr',23),(452,'Pathankot',23),(453,'Patiala',23),(454,'Ropar',23),(455,'Sangrur',23),(456,'Tarn Taran',23),(457,'Ajmer',24),(458,'Alwar',24),(459,'Banswara',24),(460,'Baran',24),(461,'Barmer',24),(462,'Bharatpur',24),(463,'Bhilwara',24),(464,'Bikaner',24),(465,'Bundi',24),(466,'Chittorgarh',24),(467,'Churu',24),(468,'Dausa',24),(469,'Dholpur',24),(470,'Dungarpur',24),(471,'Hanumagarh',24),(472,'Jaipur',24),(473,'Jaisalmer',24),(474,'Jalor',24),(475,'Jhalawar',24),(476,'Jhunjhunu',24),(477,'Jodhpur',24),(478,'Karauli',24),(479,'Kota',24),(480,'Nagaur',24),(481,'Pali',24),(482,'Pratapgarh',30),(483,'Rajsamand',24),(484,'Sawai Madhopur',24),(485,'Sikar',24),(486,'Sirohi',24),(487,'Sri Ganganagar',24),(488,'Tonk',24),(489,'Udaipur',24),(490,'East Sikkim (Gangtok)',25),(491,'North Sikkim (Mangan)',25),(492,'South Sikkim (Namchi)',25),(493,'West Sikkim (Geyzing)',25),(494,'Ariyalur',26),(495,'Chennai',26),(496,'Coimbatore',26),(497,'Cuddalore',26),(498,'Dharmapuri',26),(499,'Dindigul',26),(500,'Erode',26),(501,'Kanchipuram',26),(502,'Kanyakumari',26),(503,'Karur',26),(504,'Krishnagiri',26),(505,'Madurai ',26),(506,'Nagapattinam',26),(507,'Namakkal',26),(508,'Perambalur',26),(509,'Pudukkottai',26),(510,'Ramanathapuram',26),(511,'Salem',26),(512,'Sivagangai',26),(513,'Thanjavur',26),(514,'The Nilgiris',26),(515,'Theni',26),(516,'Thoothukkudi',26),(517,'Tiruchirappalli',26),(518,'Tirunelveli',26),(519,'Tiruppur',26),(520,'Tiruvallur',26),(521,'Tiruvannamalai',26),(522,'Tiruvarur',26),(523,'Vellore',26),(524,'Villupuram',26),(525,'Virudhunagar',26),(526,'Adilabad',39),(527,'Hyderabad',39),(528,'Karimnagar',39),(529,'Khammam',39),(530,'Mahboobnagar',39),(531,'Medak',39),(532,'Nalgonda',39),(533,'Nizamabad',39),(534,'Ranga Reddy',39),(535,'Warangal',39),(536,'Dhalai',28),(537,'Gomati',28),(538,'Khowai',28),(539,'North Tripura',28),(540,'Sipahijala',28),(541,'South Tripura',28),(542,'Unakoti',28),(543,'West Tripura',28),(544,'Almora',29),(545,'Bageshwar',29),(546,'Chamoli',29),(547,'Champawat',29),(548,'Dehradun',29),(549,'Haridwar',29),(550,'Nainithal',29),(551,'Pauri Garhwal',29),(552,'Pithoragarh',29),(553,'Rudraprayag',29),(554,'Tehri Garhwal',29),(555,'Udham Singh Nagar',29),(556,'Uttarkashi',29),(557,'Agra',30),(558,'Aligarh',30),(559,'Allahabad',30),(560,'Ambedkar Nagar',30),(561,'Amroha',30),(562,'Auraiya',30),(563,'Azamgarh',30),(564,'Badaun',30),(565,'Bahraich',30),(566,'Ballia',30),(567,'Banda',30),(568,'Barabanki',30),(569,'Bareilly',30),(570,'Basti',30),(571,'Bijnor',30),(572,'Bulandshahr',30),(573,'Chandauli',30),(574,'Chitrakoot',30),(575,'Deoria',30),(576,'Etah',30),(577,'Etawah',30),(578,'Faizabad',30),(579,'Farrukhabad',30),(580,'Fatehpur',30),(581,'Firozabad',30),(582,'Gautam Buddha Nagar',30),(583,'Ghaziabad',30),(584,'Ghazipur',30),(585,'Gonda',30),(586,'Gorakhpur',30),(587,'Hapur',30),(588,'Hardoi',30),(589,'Jaunpur',30),(590,'Jhansi',30),(591,'Kannauj',30),(592,'Kanpur',30),(593,'Kanpur Nagar',30),(594,'Kanshi Ram Nagar',30),(595,'Kaushambi',30),(596,'Kushinagar',30),(597,'Lakhimpur Kheri',30),(598,'Lalitpur',30),(599,'Lucknow',30),(600,'Mahamaya Nagar',30),(601,'Maharajaganj',30),(602,'Mahoba',30),(603,'Mainpuri',30),(604,'Mathura',30),(605,'Mau',30),(606,'Meerut',30),(607,'Mizrapur',30),(608,'Moradabad',30),(609,'Muzzaffarnagar',30),(610,'Pilibhit',30),(611,'Rae Bareli',30),(612,'Rampur',30),(613,'Saharanpur',30),(614,'Sambhal (Bhimnagar)',30),(615,'Sant Ravidas Nagar',30),(616,'Shahjahanpur',30),(617,'Shamli',30),(618,'Shravasti',30),(619,'Siddharthnagar',30),(620,'Sitapur',30),(621,'Sonbhadra',30),(622,'Sultanpur',30),(623,'Unnao',30),(624,'Varanasi',30),(625,'Alipurduar',31),(626,'Bankura',31),(627,'Bardhaman',31),(628,'Birbhum',31),(629,'Cooch Behar',31),(630,'Darjeeling',31),(631,'East Midnapore',31),(632,'Hooghly',31),(633,'Howrah',31),(634,'Jalpaiguri',31),(635,'Kolkata',31),(636,'Malda',31),(637,'Murshidabad',31),(638,'Nadia',31),(639,'North 24 Parganas',31),(640,'North Dinajpur',31),(641,'Purulia',31),(642,'South 24 Parganas',31),(643,'South Dinajpur',31),(644,'West Midnapore',31),(645,'Nicobar',32),(646,'North and Middle Andaman',32),(647,'South Andaman',32),(648,'Chandigarh',33),(649,'Dadra and Nagar Haveli',34),(650,'Daman',35),(651,'Diu',35),(652,'Central Delhi',36),(653,'East Delhi',36),(654,'New Delhi',36),(655,'North Delhi',36),(656,'North East Delhi',36),(657,'North West Delhi',36),(658,'Shahdara',36),(659,'South Delhi',36),(660,'South East Delhi',36),(661,'South West Delhi',36),(662,'West Delhi',36),(663,'Lakshadweep',37),(664,'Karaikal',38),(665,'Mahe',38),(666,'Puducherry',38),(667,'Yanam',38);
/*!40000 ALTER TABLE `cristo_master_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_master_housetype`
--

DROP TABLE IF EXISTS `cristo_master_housetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_master_housetype` (
  `HOUSE_TYPE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`HOUSE_TYPE_ID`),
  UNIQUE KEY `UNQ_NAME` (`NAME`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_master_housetype`
--

LOCK TABLES `cristo_master_housetype` WRITE;
/*!40000 ALTER TABLE `cristo_master_housetype` DISABLE KEYS */;
INSERT INTO `cristo_master_housetype` VALUES (35,'Apartment/Flat'),(36,'Concrete Roof'),(37,'Individual'),(38,'Other'),(39,'Thatched Roof'),(40,'Tiled Roof');
/*!40000 ALTER TABLE `cristo_master_housetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_master_languagegroups`
--

DROP TABLE IF EXISTS `cristo_master_languagegroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_master_languagegroups` (
  `LANGUAGE_GROUP_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`LANGUAGE_GROUP_ID`),
  UNIQUE KEY `UNQ_NAME` (`NAME`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_master_languagegroups`
--

LOCK TABLES `cristo_master_languagegroups` WRITE;
/*!40000 ALTER TABLE `cristo_master_languagegroups` DISABLE KEYS */;
INSERT INTO `cristo_master_languagegroups` VALUES (1,'Adi'),(2,'Aka'),(3,'Anal'),(4,'Apatani'),(5,'Assamese'),(6,'Atong'),(7,'Awadhi'),(8,'Badaga'),(9,'Baghelkandi'),(10,'Bengali'),(11,'Bhili'),(12,'Bhojpuri'),(13,'Bhutanese'),(14,'Bodo'),(15,'Bori'),(16,'Boro Kachari'),(17,'Boro Santal'),(18,'Bunelkhandi'),(19,'Cachiari'),(20,'Chhattisgarhi'),(21,'Dogri'),(22,'English'),(23,'French'),(24,'Garhwalee'),(25,'Garo'),(26,'Gondi'),(27,'Gujarati'),(28,'Hill Miri'),(29,'Hindi'),(30,'Hmar'),(31,'Ho'),(32,'Kannada'),(33,'Karbi'),(34,'Kashmiri'),(35,'Kharia'),(36,'Khasi'),(37,'Khriya'),(38,'Kisan'),(39,'Kodava'),(40,'Kokborok'),(41,'Konkani'),(42,'Korku'),(43,'Kui'),(44,'Kumaoni'),(45,'Kutchi'),(46,'Lepcha'),(47,'Lyngngam'),(48,'Maghi'),(49,'Maithili'),(50,'Malayalam'),(51,'Malvi'),(52,'Manipuri'),(53,'Mao'),(54,'Maram'),(55,'Marathi'),(56,'Maring'),(57,'Marwari'),(58,'Mayon'),(59,'Mewari'),(60,'Mishing'),(61,'Mizo'),(62,'Monpa'),(63,'Monsang'),(64,'Munda'),(65,'Munda Kharia'),(66,'Mundari'),(67,'Mynniong'),(68,'Nagamese'),(69,'Nagpuri'),(70,'Nepali'),(71,'Netakani'),(72,'Nicobarese'),(73,'Nimari'),(74,'Nyshi'),(75,'Oram'),(76,'Oraon'),(77,'Oriya'),(78,'Pahari'),(79,'Paite'),(80,'Pnar'),(81,'Portuguese'),(82,'Poumai'),(83,'Punjabi'),(84,'Rabha'),(85,'Rajasthani'),(86,'Rapha'),(87,'Rathavi'),(88,'Rongmei'),(89,'Sadri'),(90,'Santali'),(91,'Sikkimese'),(92,'Surgujia'),(93,'Tagin'),(94,'Tamil'),(95,'Tangkhul'),(96,'Telugu'),(97,'Thadou'),(98,'Tibetan'),(99,'Tiwa'),(100,'Tulu'),(101,'Urali'),(102,'Uraon'),(103,'Urdu'),(104,'Wagdi'),(105,'War'),(106,'Zou');
/*!40000 ALTER TABLE `cristo_master_languagegroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_master_membership_status`
--

DROP TABLE IF EXISTS `cristo_master_membership_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_master_membership_status` (
  `MEMBERSHIP_STATUS_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL DEFAULT '',
  `MEMBERSHIP_CODE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MEMBERSHIP_STATUS_ID`),
  UNIQUE KEY `UNQ_NAME` (`NAME`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_master_membership_status`
--

LOCK TABLES `cristo_master_membership_status` WRITE;
/*!40000 ALTER TABLE `cristo_master_membership_status` DISABLE KEYS */;
INSERT INTO `cristo_master_membership_status` VALUES (1,'Lay Person','LT'),(2,'Religious','RE'),(3,'Secular Clergy','SE');
/*!40000 ALTER TABLE `cristo_master_membership_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_master_occupation`
--

DROP TABLE IF EXISTS `cristo_master_occupation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_master_occupation` (
  `OCCUPATION_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`OCCUPATION_ID`),
  UNIQUE KEY `UNQ_NAME` (`NAME`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_master_occupation`
--

LOCK TABLES `cristo_master_occupation` WRITE;
/*!40000 ALTER TABLE `cristo_master_occupation` DISABLE KEYS */;
INSERT INTO `cristo_master_occupation` VALUES (2,'Account Manager'),(1,'Accountant'),(3,'Advocate'),(4,'Agriculture'),(5,'Airforce'),(6,'Architect'),(7,'Army'),(8,'Asst. Manager'),(9,'Asst. Professor'),(10,'Bank Manager'),(11,'Bank Officer'),(12,'Bread Company'),(13,'Business'),(14,'Business Development'),(15,'Business Manager'),(16,'Campus Supervisor'),(17,'Care-Taker'),(18,'Carpenter'),(19,'Chief Cook'),(20,'Civil Engineer'),(21,'Clerk'),(22,'Collector'),(23,'Company diferrently abled'),(24,'Compounder'),(25,'Conductor'),(26,'Contractor'),(27,'Cook'),(28,'Coolie'),(29,'Counsellor'),(30,'Craine Operator'),(31,'Customer Service'),(32,'Daily Wages'),(33,'Director'),(34,'Doctor'),(35,'Driver'),(36,'Electrician'),(37,'Engineer'),(38,'Ex. Service Man'),(39,'Farmer'),(40,'Fisherman'),(41,'Former'),(42,'Govt.Job'),(43,'Handicapped'),(44,'Hardware Engineer'),(45,'Head Master'),(46,'Home Maker'),(49,'Hotel & Shop'),(47,'Hotel Hills'),(48,'Hotel Manager'),(50,'House Wife'),(51,'House Work'),(52,'Inspector'),(53,'Lab Assistant'),(54,'Labour'),(55,'Lecturer'),(56,'LIC Agent'),(57,'Maintenance EPI'),(58,'Manager'),(59,'Marine Administrator'),(60,'Mason'),(61,'Mechanic'),(62,'Mechanical Engineer'),(63,'Media'),(64,'Merchant'),(65,'Mid day meals'),(66,'Mobile Phone Service'),(67,'Navy'),(68,'Nurse'),(69,'Office Assistant'),(70,'Office Superintendent'),(71,'Other'),(72,'Our Own School'),(73,'Painter'),(74,'Petty Shop'),(75,'Photographer'),(76,'Photoshop Designer'),(77,'Plumber'),(78,'Police'),(79,'Press'),(80,'Printing'),(81,'Private'),(82,'Professor'),(83,'Project Manager'),(84,'Railways'),(85,'Receptionist'),(86,'Revenue'),(87,'Sales'),(88,'Sales Executive'),(89,'Secretary'),(90,'Security'),(91,'Shipping Offier'),(92,'Singer'),(93,'Small Scale'),(94,'Software Engineer'),(95,'Staff Nurse'),(96,'Store Keeper'),(97,'Surveyor'),(98,'Sweeper'),(99,'System Admin'),(100,'Tailor'),(101,'Teacher'),(102,'Technical'),(103,'Technician'),(104,'Terminal Operator'),(105,'Watchman'),(106,'Weaver'),(107,'Web Admin'),(108,'Welder'),(109,'Widow');
/*!40000 ALTER TABLE `cristo_master_occupation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_master_parish`
--

DROP TABLE IF EXISTS `cristo_master_parish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_master_parish` (
  `PARISH_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT NULL,
  `PARISH_CODE` varchar(30) DEFAULT NULL,
  `CHURCH` varchar(50) DEFAULT NULL,
  `DIOCESE_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PARISH_ID`),
  UNIQUE KEY `UNQ_PARISH_CODE` (`PARISH_CODE`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=2992 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_master_parish`
--

LOCK TABLES `cristo_master_parish` WRITE;
/*!40000 ALTER TABLE `cristo_master_parish` DISABLE KEYS */;
INSERT INTO `cristo_master_parish` VALUES (1,'Abiramapuram-Mandavelli ','203/MAB','Our Lady of Visitation Church','Madras-Mylapore'),(2,'Achanur','217/ACH','St. Antony\'s Church','Kumbakonam'),(3,'Acharapakkam','207/ACA','St. Joseph\'s Church','Chingleput'),(4,'Acharapakkam Shrine','207/ACH','Mazhai Malai Madha Shrine','Chingleput'),(5,'Achinakom','139/ACH','St. Antony Church','Ernakulam-Angamaly'),(6,'Adaikalapuram','209/ADA','Arockia Matha Church','Tuticorin'),(7,'Adaikalapuram','220/ADA','St Mary Church','Dharmapuri'),(8,'Adambakkam','203/ADA','St Mark Church','Madras-Mylapore'),(9,'Adanur','216/ADA','Holy Trinity Church','Pondicherry-Cuddalore'),(10,'Adichapuram','219/ADI','St Antony Church','Thanjavur'),(11,'Adichavilagam','165/AGM','St. Jude Church','Marthandom'),(12,'Adimali','141/ADI','St. Jude\'s Church','Idukki'),(13,'Adivaram','136/ADI','St. Mary Church','Palai'),(14,'Adoor','135/ADO','Mar Sleeva Church','Changanacherry'),(15,'Adukkom','136/ADU','St. Xavier Church','Palai'),(16,'Adyar','203/ADY','St Louis Church','Madras-Mylapore'),(17,'Agarakattu','212/AGA','St. Antony Church','Palayamkottai'),(18,'Agarakottalam','216/AGA','St Joseph Church','Pondicherry-Cuddalore'),(19,'Agnespuram','217/AGN','St. Agnes Church','Kumbakonam'),(20,'Agraharam','218/AGR','Holy Spirit Church','Salem'),(21,'Aickarachira','135/AIC','St. George Church','Changanacherry'),(22,'Aimcombu','136/AIM','St. Thomas Church','Palai'),(23,'Aimury','139/AIM','Sacred Heart Church','Ernakulam-Angamaly'),(24,'Airode','142/AIR','Infant Jesus Church','Kottayam'),(25,'Airoor','139/AIR','St. Antony Church','Ernakulam-Angamaly'),(26,'Ajekar','142/AJE','St. Mary\'s Chapel','Kottayam'),(27,'Akaparambu','139/AKA','Ss. Gervasis & Protasis Church','Ernakulam-Angamaly'),(28,'A Kattupadi','205/AKA','Mary Help of Christians Church','Vellore'),(29,'Akkarai Kodiveri','204/AKK','St Ignatius Church','Coimbatore'),(30,'Akkarapalayam','216/AKK','Mary Help of Christians Church','Pondicherry-Cuddalore'),(31,'Alagappa Samuthiram','216/ALA','Our Lady of Miracles Church','Pondicherry-Cuddalore'),(32,'Alagapuram','218/ALA','St. MichaelÃ¢â‚¬â„¢s Church','Salem'),(33,'Alakodu','140/ALA','St. Thomas More Church','Kothamangalam'),(34,'Alambakkam','217/ALA','St. Thomas Church','Kumbakonam'),(35,'Alampally','137/ALA','St. Dominic Church','Kanjirapally'),(36,'Alancholai','215/ALA','Church of Our Lady of Lourdes','Kuzhithurai'),(37,'Alandur','207/ALA','St. Antony\'s Church','Chingleput'),(38,'Alangad','139/ALA','St. Mary Church','Ernakulam-Angamaly'),(39,'Alangudi','219/ALA','Our Lady of Miracles Church','Thanjavur'),(40,'Alangulam','208/ALA','Vidivelli Don Bosco Church','Madurai'),(41,'Alangulam','212/ALA','Holy Redeemer Church','Palayamkottai'),(42,'Alanthalai','209/ALA','Ss Peter & Paul Church','Tuticorin'),(43,'Alanvilai','215/ALN','Church of Our Lady of Lourdes','Kuzhithurai'),(44,'Alapakkam','205/ALA','Our Lady of Perpetual Succour Church','Vellore'),(45,'Alaprakad','135/ALA','St. Antony Church','Changanacherry'),(46,'Alavanthankulam','212/AVA','St. Antony Church','Palayamkottai'),(47,'Albuthapuram','139/ALB','St. Mary Church','Ernakulam-Angamaly'),(48,'Alenchy','210/ALE','Church of St. Francis Xavier','Kottar'),(49,'Alex Nagar','142/ALE','St. Joseph Church','Kottayam'),(50,'Aliabad','190/ALI','Our Lady of Grace Church','Hyderabad'),(51,'Alirajpet','190/AJP','St. Paul Church','Hyderabad'),(52,'Alliandal','205/ALL','Our Lady of Lourdes Church','Vellore'),(53,'Allikondapattu','205/ALI','St John de Britto Church','Vellore'),(54,'Alpara','141/ALP','St. George\'s Church','Idukki'),(55,'Alphonsagiri','136/ALP','St. Alphonsa Church','Palai'),(56,'Alphonsagiri (Soolappara)','141/APH','St. Alphonsa Church','Idukki'),(57,'Alphonsanagar','141/ASN','St. Alphonsa Church','Idukki'),(58,'Alphonsapuram','136/APM','St. Alphonsa Church','Palai'),(59,'Alphonsapuram','203/ALP','St Thomas Mission','Madras-Mylapore'),(60,'Alphonsapuram','141/APM','St. Alphonsa Church','Idukki'),(61,'Aluva','139/ALU','St. Dominic Church','Ernakulam-Angamaly'),(62,'Alwarpet','206/ALW','St Joseph Church','Ootacamund'),(63,'Amalagiri','141/AMA','St. Mary\'s Church','Idukki'),(64,'Amalagiri','137/AMA','St. Thomas Church','Kanjirapally'),(65,'Amalapuram','141/ALM','St. Mary\'s Church','Idukki'),(66,'Amalapuram','139/AMA','St. Joseph Church','Ernakulam-Angamaly'),(67,'Amalapuri','139/APR','Sacred Heart Church','Ernakulam-Angamaly'),(68,'Amalashram','217/AMA','Amala Annai Church','Kumbakonam'),(69,'Amalinagar','209/AMA','Amala Annai Church','Tuticorin'),(70,'Amanakara','142/AMA','St. Sebastian Church','Kottayam'),(71,'Amaradaki','219/AMA','St Michael Church','Thanjavur'),(72,'Amarambalam','142/AMR','Christ The King Church','Kottayam'),(73,'Amaravathivilai','210/AMA','Church of St Antony','Kottar'),(74,'Amaravathy','137/AMR','St. Joseph Church','Kanjirapally'),(75,'Ambalakadai','215/AMB','Church of Ss. Peter & Paul','Kuzhithurai'),(76,'Ambalamedu','139/AMB','St. Jude Church','Ernakulam-Angamaly'),(77,'Ambalamughal','139/ALG','Christ the King Church','Ernakulam-Angamaly'),(78,'Ambalapuzha','135/AMB','St. Mary Church','Changanacherry'),(79,'Amballoor','139/ABD','St. FrancisAssisi Church','Ernakulam-Angamaly'),(80,'Ambasamuthiram','212/AMB','St. Joseph Church','Palayamkottai'),(81,'Ambattur','203/AMB','Divine Mercy Church','Madras-Mylapore'),(82,'Ambattur OT','203/AMO','St Joseph the Worker & Philip Church','Madras-Mylapore'),(83,'Ambikapuram','140/AMB','St. Mary Church','Kothamangalam'),(84,'Ambikapuram','211/AMB','St Roche Church','Tiruchirappalli'),(85,'Ambilikonam','165/AKM','St. Thomas Church','Marthandom'),(86,'Amboory','135/ABR','St. George Forane Church','Changanacherry'),(87,'Ambunadu','139/ABU','St. Sebastian Church','Ernakulam-Angamaly'),(88,'Ambur','205/AMB','St Antony Church','Vellore'),(89,'Ammaiyappanallur','207/AMM','Sagayamadha Mission','Chingleput'),(90,'Ammankovilpatti','208/AMM','Our Lady of Lourdes Church','Madurai'),(91,'Ammanpettai','217/AMM','Our Lady of Refuge Church','Kumbakonam'),(92,'Ammapatti','208/AMP','St. Antony Church','Madurai'),(93,'Ammapet','219/AMM','St Joseph Church','Thanjavur'),(94,'Ammapettai','211/AMM','St James Church','Tiruchirappalli'),(95,'Ammuguda','190/AMM','St. Bernard Church','Hyderabad'),(96,'Amparanirappel','136/AMP','St. John the Apostle Church','Palai'),(97,'Amsi','215/AMS','Church of the Immaculate Heart of Mary','Kuzhithurai'),(98,'Anachal','141/ACL','St. George\'s Church','Idukki'),(99,'Anaikarai','209/ANA','Our Lady of Nativity Church','Tuticorin'),(100,'Anaiyeri','216/ANA','St Mary Magadalene Church','Pondicherry-Cuddalore'),(101,'Anakkallu','137/ANA','St. Antony Church','Kanjirapally'),(102,'Anakkara','137/ANK','St. Thomas Forane Church','Kanjirapally'),(103,'Anakkari','165/ANK','St. Joseph\'s Church','Marthandom'),(104,'Anakulam','135/ANA','St. Joseph Church','Changanacherry'),(105,'Anakulam','141/AKL','St. Joseph\'s Church','Idukki'),(106,'Anakuzhy','141/ANA','St. Michael\'s Church','Idukki'),(107,'Anamalai Hills','204/ANA','St Antony Church','Coimbatore'),(108,'Anamukham','138/AKM','Loreto Matha Church','Thuckalay'),(109,'Anandan Nagar','210/ANR','Church of Our Lady of Good Health','Kottar'),(110,'Anandarayankottai','214/ANA','St Ignatius Church','Dindigul'),(111,'Anappara','139/ANA','Our Lady of Fathima Church','Ernakulam-Angamaly'),(112,'Anavilasam','137/ANV','St. George Church','Kanjirapally'),(113,'Anayadi','138/AYD','St. George\'s Church','Thuckalay'),(114,'Anchal','135/ANC','Mary Matha Church','Changanacherry'),(115,'Anchilippa','137/ANC','St. Pius X Church','Kanjirapally'),(116,'Anchiri','140/ANC','St. Martin de Porres Church','Kothamangalam'),(117,'Andavoorani','213/AND','Our Lady of Divine Mercy Church','Sivagangai'),(118,'Andichiurani','213/ANI','Our Lady of Refuge Church','Sivagangai'),(119,'Andimadam','217/AND','St. Martin de Porres Church','Kumbakonam'),(120,'Andipatti','218/AND','St. Sebastian Church','Salem'),(121,'Angamaly','139/ANG','St. GeorgeBasilica','Ernakulam-Angamaly'),(122,'Angamaly East','139/AGE','St. Hormis Church','Ernakulam-Angamaly'),(123,'Angamaly South','139/AGS','St. Martin Shrine','Ernakulam-Angamaly'),(124,'Angel Valley','137/ANG','St. Mary Church','Kanjirapally'),(125,'Anicad','135/ANI','St. Antony Church','Changanacherry'),(126,'Anicadu','140/ANI','St. Sebastian Church','Kothamangalam'),(127,'Anickadu','137/ANI','St. Mary Church','Kanjirapally'),(128,'Anilady','216/ANI','Sacred Heart Church','Pondicherry-Cuddalore'),(129,'Aniyartholu','137/ANY','St. Thomas Church','Kanjirapally'),(130,'Anjal Nagar','208/ANJ','Our Mother of Perpetual Help Church','Madurai'),(131,'Anjugramam','138/AGM','St. Thomas Church','Thuckalay'),(132,'Anjukottai','213/ANJ','St. Gerard Majella Church','Sivagangai'),(133,'Annai Nagar','210/ANN','Church of Our Lady of Miracle','Kottar'),(134,'Annamangalam','217/ANN','St. Thomas Church','Kumbakonam'),(135,'Annanada','139/ANN','St. Sebastian Church','Ernakulam-Angamaly'),(136,'Anna Nagar','219/ANN','St Sebastian Church','Thanjavur'),(137,'Anna Nagar','209/ANN','St Michael Church','Tuticorin'),(138,'Anna Nagar','208/ANN','Shrine of Our Lady of Vailankanni','Madurai'),(139,'Anna Nagar-Avadi-Pattabiram','203/PAT','St Joseph Church','Madras-Mylapore'),(140,'Anna Nagar West','203/ANN','St Luke Church','Madras-Mylapore'),(141,'Annanur','203/ANA','Annai Vailankanni Church','Madras-Mylapore'),(142,'Annikkarai','138/AKR','St. Mathew Church','Thuckalay'),(143,'Anthialam','136/ANT','St. Mathew Church','Palai'),(144,'Anthinad','136/ATD','St. Joseph Church','Palai'),(145,'Anthoniarpuram','209/ANT','St Antony Church','Tuticorin'),(146,'Anthoniyar Nagar','205/ANT','St Antony Church','Vellore'),(147,'Antopuram','139/ANT','St. Antony Church','Ernakulam-Angamaly'),(148,'Antopuram','141/ANT','St. Antony\'s Church','Idukki'),(149,'Appangad','139/APP','St. Joseph Church','Ernakulam-Angamaly'),(150,'Appattuvilai','215/APA','Church of St. Antony','Kuzhithurai'),(151,'Appattuvilai','215/APP','Church of St. Joseph','Kuzhithurai'),(152,'Arakanadu','165/ARU','Christ the King Church','Marthandom'),(153,'Arakkonam','205/ARA','Sacred Heart of Jesus Church','Vellore'),(154,'Arakkunnam','139/ARA','St. Joseph Church','Ernakulam-Angamaly'),(155,'Arakulam New','136/ARA','St. Mary Church','Palai'),(156,'Arakulam Old','136/ALO','St. Thomas Church','Palai'),(157,'Arakuzha','140/ARA','St. Mary Forane Church','Kothamangalam'),(158,'Aral-Kumarapuram','165/ARK','St. Antony\'s Church','Marthandom'),(159,'Aralvaimozhy-Arockia Nagar','210/ARA','Church of Our Lady of Good Health','Kottar'),(160,'Aralvaimozhy-Kurusady','210/ARL','Church of Our Lady of Sorrows','Kottar'),(161,'Arambakkam','203/ARA','Our Lady of Angels Church','Madras-Mylapore'),(162,'Aranthangi C','219/ARA','St Antony of Padua Church','Thanjavur'),(163,'Aranthangi P','219/ARN','Christ the King Church','Thanjavur'),(164,'Arasadipatty','219/ARS','Seven Dolours Church','Thanjavur'),(165,'Arasakuzhy','216/ARA','Mount Carmel Church','Pondicherry-Cuddalore'),(166,'Arattuvazhy','135/ARA','St. Joseph Church','Changanacherry'),(167,'Aravakurichy','204/ARA','St Francis Xavier Church','Coimbatore'),(168,'Arayangad','142/ARA','Assumption Church','Kottayam'),(169,'Arcadu','216/ARC','St Francis Xavier Church','Pondicherry-Cuddalore'),(170,'Arcot','205/ARC','St Antony Church','Vellore'),(171,'Areekkara','142/ARE','St. Roch Church','Kottayam'),(172,'Ariancoupam','216/ARI','Our Lady of Good Health Church','Pondicherry-Cuddalore'),(173,'Arikuzha','140/ARI','St. Sebastian Church','Kothamangalam'),(174,'Arisipalayam','218/ARI','Infant Jesus Cathedral','Salem'),(175,'Ariyakudi','213/ARI','Infant Jesus Church','Sivagangai'),(176,'Ariyalur','217/ARI','Our Lady of Lourdes Church','Kumbakonam'),(177,'Ariyanellure','214/ARI','Ss Peter & Paul Church','Dindigul'),(178,'A.R. Mangalam','213/ARM','St. Antony of Padua Church','Sivagangai'),(179,'Armoor','190/ARM','Sacred Heart Church','Hyderabad'),(180,'Arni','205/ARN','Our Lady of Presentation Church','Vellore'),(181,'Arockiapuram','210/ARO','Church of Our Lady of Good Health','Kottar'),(182,'Arockiapuram','215/ARO','Church of St. Roch','Kuzhithurai'),(183,'Arogyanagar','190/ARO','Our Lady of Health Mission','Hyderabad'),(184,'Arpookara','135/AKR','St. Xavier Church','Changanacherry'),(185,'Arpookara','135/ARP','Cherupushpam Church','Changanacherry'),(186,'Arukani','138/ARK','Holy Family Forane Church','Thuckalay'),(187,'Arulagam','212/ARU','St. Francis of Assisi Church','Palayamkottai'),(188,'Arulambady','216/ARU','Ss. Peter & Paul Church','Pondicherry-Cuddalore'),(189,'Arul Colony','190/ARU','St. John the Baptist Church','Hyderabad'),(190,'Arumanai','165/ARM','St. George\'s Church','Marthandom'),(191,'Arumanai','165/ARN','St. Mary\'s Church','Marthandom'),(192,'Arumanoor','135/ARU','Mangalavartha Church','Changanacherry'),(193,'Arumuganeri','209/ARU','St Xavier Church','Tuticorin'),(194,'Arunapuram','136/APU','St. Thomas Church','Palai'),(195,'Arunootimangalam','142/ARU','St. Joseph Church','Kottayam'),(196,'Arunoottimangalam','136/ARO','St. Thomas Church','Palai'),(197,'Aruppukkottai','208/ARU','St. Joseph the Worker Church','Madurai'),(198,'Aruvankadu','206/ARV','Our Lady of Health Church','Ootacamund'),(199,'Aruvankadu','206/ARU','Holy Spirit Church','Ootacamund'),(200,'Aruvikuzhi','135/AZH','Lourdu Matha Church','Changanacherry'),(201,'Aruvithura','136/ARU','St. George Forane Church','Palai'),(202,'Aryad','135/ARD','Little Flower Church','Changanacherry'),(203,'Aryankavu','135/ARK','St. Mary Church','Changanacherry'),(204,'Asaripallam-Kil','210/ASK','Church of Our Lady of Snows','Kottar'),(205,'Asaripallam-Mel','210/ASM','Church of St Michael','Kottar'),(206,'Ashok Nagar','203/ASH','St Mathias Church','Madras-Mylapore'),(207,'Asokapuram','139/ASO','St. Sebastian Church','Ernakulam-Angamaly'),(208,'Assisinagar','203/ASS','St Francis of Assisi Mission','Madras-Mylapore'),(209,'Assisi Nagar','214/ASS','St Francis of Assisi Church','Dindigul'),(210,'Athani','139/ATH','St. FrancisAssisi Church','Ernakulam-Angamaly'),(211,'Athanur','219/ATH','St Anne Church','Thanjavur'),(212,'Athencode','138/ATC','St. Maria Goretti Church','Thuckalay'),(213,'Athicode','204/ATH','St Antony Church','Coimbatore'),(214,'Athipakkam','216/ATH','Our Lady of Good Health Church','Pondicherry-Cuddalore'),(215,'Athirampuzha','135/APU','St. Mary Forane Church','Changanacherry'),(216,'Athirampuzha','135/ATH','Lisieux Church','Changanacherry'),(217,'Athoor','214/ATH','Our Lady of Assumption Church','Dindigul'),(218,'Athukudi','219/ATU','Our Lady of Refuge Church','Thanjavur'),(219,'Attadi','206/ATT','Our Lady of Fatima Church','Ootacamund'),(220,'Attapadam','139/ATT','St. Joseph Church','Ernakulam-Angamaly'),(221,'Attappallam','204/ATT','St John the Baptist Church','Coimbatore'),(222,'Attara','139/ATR','St. Alphonsa Church','Ernakulam-Angamaly'),(223,'Attingal','135/ATT','St. Jude Church','Changanacherry'),(224,'Attoor','215/ATT','Church of St. Andrew','Kuzhithurai'),(225,'Attoor','165/ATR','St. Thomas Church','Marthandom'),(226,'Attur','218/ATT','St. MaryÃ¢â‚¬â„¢s Church','Salem'),(227,'Audaipoigai','213/AUD','St. Antony Church','Sivagangai'),(228,'Avadi','203/AVA','St Antony Shrine','Madras-Mylapore'),(229,'Avadi HVF','203/AVD','Sacred Heart Garrison Church','Madras-Mylapore'),(230,'Avarampatti','211/AVA','St Ignatius of Loyola Church','Tiruchirappalli'),(231,'A Vellodu','214/AVE','Ss James & Theresa of Child Jesus Church','Dindigul'),(232,'Avinashi','204/AVI','St Thomas Church','Coimbatore'),(233,'Avoor','205/AVO','Sacred Heart of Jesus Church','Vellore'),(234,'Avoor','211/AVO','Our Lady of Assumption Church','Tiruchirappalli'),(235,'Avudaiyarkoil','219/AVU','St Joseph Church','Thanjavur'),(236,'Avudayanur','212/AVU','St. John Church','Palayamkottai'),(237,'Ayanavaram','203/AYN','St Thomas Church','Madras-Mylapore'),(238,'Ayanavaram','203/AYA','Don Bosco Church','Madras-Mylapore'),(239,'Ayandur','216/AYA','St Antony Church','Pondicherry-Cuddalore'),(240,'Ayan Nathampatti','208/AYA','St. Francis Xavier Church','Madurai'),(241,'Ayarkunnam','135/AYA','St. Sebastian Church','Changanacherry'),(242,'Ayathupady','139/AYA','Our Lady of Perpetual Succour Church','Ernakulam-Angamaly'),(243,'Ayavana','140/AYA','Sacred Heart Church','Kothamangalam'),(244,'Ayiramekkar','141/AYI','St. Thomas Church','Idukki'),(245,'Ayoor','135/AYO','Christ the King Forane Church','Changanacherry'),(246,'Ayravathanallur','208/AYR','St. Antony Church','Madurai'),(247,'Ayroor','135/AYR','Lourdu Matha Church','Changanacherry'),(248,'Aythala','142/AYT','St. Mary\'s Church','Kottayam'),(249,'Ayyampalayam','208/AYY','Immaculate Conception Church','Madurai'),(250,'Ayyampara','136/AYY','Little Flower Church','Palai'),(251,'Ayyampatti','211/AYY','St Mary Magdalene Church','Tiruchirappalli'),(252,'Ayyampet','217/AYY','St Antony of Paduva Church','Kumbakonam'),(253,'Ayyampuzha','139/AYY','St. Mary Church','Ernakulam-Angamaly'),(254,'Ayyapanthangal ','207/AYY','Our Lady of Snow Church','Chingleput'),(255,'Azhagappapuram','209/AZH','St Antony Church','Tuticorin'),(256,'Azhangadu','137/AZH','St. Antony Church','Kanjirapally'),(257,'Azhikal','210/AZH','Church of St Mary','Kottar'),(258,'Bagalur','220/BAG','Sagaya Matha Church','Dharmapuri'),(259,'Bagayam','205/BAG','Infant Jesus Church','Vellore'),(260,'Bahour','216/BAH','Our Lady of Victory Church','Pondicherry-Cuddalore'),(261,'Balagram','137/BAL','St. Joseph Church','Kanjirapally'),(262,'Balaiah Nagar','190/BAL','St. Francis Xavier Church','Hyderabad'),(263,'Band Lines','190/BAN','Our Lady of Lourdes Church','Hyderabad'),(264,'Banjara Hills','190/BJH','St. Alphonsus Church','Hyderabad'),(265,'Barbarammalpuram','209/BAR','St Barbara Church','Tuticorin'),(266,'Bargur','220/BGR','St Antony Church','Dharmapuri'),(267,'Basavanapuram','206/BAS','Holy Family Church','Ootacamund'),(268,'Basin Bridge','203/BAS','Mary Help of Christians Church','Madras-Mylapore'),(269,'Bastian Nagar','208/BAS','St. Paul Church','Madurai'),(270,'Basuregady','190/BAS','Immaculate Heart Church','Hyderabad'),(271,'Batlagundu','208/BAT','St. Thomas Church','Madurai'),(272,'Bayyaram','190/BAY','St. John de Britto Church','Hyderabad'),(273,'Bazar Ghat','190/BAZ','St. Anthony Church','Hyderabad'),(274,'Beach Rd','165/BCR','Infant Jesus Church','Marthandom'),(275,'Begumpet','190/BEG','Holy Trinity Church','Hyderabad'),(276,'Bengiri','138/BEN','St. Benedict\'s Church','Thuckalay'),(277,'Besant Nagar','203/BES','Annai Vailankanni Shrine','Madras-Mylapore'),(278,'Beslehem','139/BES','St. Joseph Church','Ernakulam-Angamaly'),(279,'Bethany Hills','137/BET','St. Mary Church','Kanjirapally'),(280,'Bethel','141/BET','St. Jacob Church','Idukki'),(281,'Bethlehem','140/BET','Holy Family Church','Kothamangalam'),(282,'Bharananganam','136/BHA','St. Mary Forane Church','Palai'),(283,'Bharathiyar Nagar','203/BHA','Sagaya Matha Church','Madras-Mylapore'),(284,'Bhavani','206/BHA','St Mary Church','Ootacamund'),(285,'Bhavani Sagar','204/BHA','Holy Redeemer Church','Coimbatore'),(286,'Bhoiguda','190/BHO','St. John Maria Vianney Church','Hyderabad'),(287,'Bhoomiyamkulam','141/BHO','St. Sebastian\'s Church','Idukki'),(288,'Bhoothappandy','165/BPD','St. Thomas Church','Marthandom'),(289,'Bibikulam','208/BIB','Sahaya Annai Church','Madurai'),(290,'Bisonvalley','141/BIS','St. Antony\'s Church','Idukki'),(291,'Bison Valley','142/BIS','Mayalthamatha Church','Kottayam'),(292,'Bodhan','190/BOD','St. Peter Church','Hyderabad'),(293,'Bodinayakanur','208/BOD','Punitha Arockia Annai Church','Madurai'),(294,'Bolarum','190/BOL','St. Joseph Church','Hyderabad'),(295,'Bommidi','220/BOM','St Antony Church','Dharmapuri'),(296,'Boodamangalam','205/BOO','Queen of Heaven Church','Vellore'),(297,'Borabanda','190/BOR','St. Francis Xavier Church','Hyderabad'),(298,'Bosco Maiyam','213/BOS','Sahaya Annai Church','Sivagangai'),(299,'Bosco Nagar','211/BOS','Anaithu Makkalin Sahaya Annai Church','Tiruchirappalli'),(300,'Bowenpally','190/BOW','Our Lady of Mount Carmel Church','Hyderabad'),(301,'B Pallipatti','220/BPA','Mount Carmel Church','Dharmapuri'),(302,'Brahmamangalam','142/BRA','St. Mary\'s Church','Kottayam'),(303,'Broadway','203/BRO','St Francis Xavier Church','Madras-Mylapore'),(304,'Budapadi','206/BUD','St Ignatius Church','Ootacamund'),(305,'Budhalur','219/BUD','St Mary\'s Church','Thanjavur'),(306,'Cablenagar','139/CAB','St. Joseph Church','Ernakulam-Angamaly'),(307,'Caldwell Colony','209/CAL','Infant Jesus Shrine','Tuticorin'),(308,'Calvarigiri','140/CAL','BVM Dolours Church','Kothamangalam'),(309,'Calvary','139/CAL','St. George Church','Ernakulam-Angamaly'),(310,'Calvarymount','141/CAL','St. George\'s Church','Idukki'),(311,'Cardinal Nagar','139/CAR','Blessed Sacrament Church','Ernakulam-Angamaly'),(312,'Caritas','142/CAR','St. Thomas Church','Kottayam'),(313,'Carmelgiri','139/CGR','St. Mary Church','Ernakulam-Angamaly'),(314,'Carmel Nagar','210/CAR','Church of Holy Family','Kottar'),(315,'Chakkampuzha','136/CHA','Lorethu Matha Church','Palai'),(316,'Chakkarakadavu','139/CHA','St. Rose Church','Ernakulam-Angamaly'),(317,'Chakkaraparambu','139/CHP','St. George Church','Ernakulam-Angamaly'),(318,'Chakkupallam','142/CHA','Our Lady of Rosary Church','Kottayam'),(319,'Chakkupallam','137/CHA','Carmala Matha Church','Kanjirapally'),(320,'Chalassery','140/CHA','St. Pius X Church','Kothamangalam'),(321,'Chalil','139/CHL','Sacred Heart Church','Ernakulam-Angamaly'),(322,'Chamakala','142/CHM','St. John\'s Church','Kottayam'),(323,'Chamampathal','137/CHM','Fatima Matha Church','Kanjirapally'),(324,'Chamathachal','142/CHT','St. Stephen Church','Kottayam'),(325,'Champakara','135/CHA','St. Joseph Church','Changanacherry'),(326,'Champakulam','135/CHM','St. Mary Forane Church','Changanacherry'),(327,'Champannoor North','139/CHN','St. Sebastian Church','Ernakulam-Angamaly'),(328,'Champannoor South','139/CHS','St. Ritha Church','Ernakulam-Angamaly'),(329,'Chandanackampara','142/CHD','St. Stephen Church','Kottayam'),(330,'Chandiroor','139/CHD','St. Mary Church','Ernakulam-Angamaly'),(331,'Changaleri','142/CHN','Sacred Heart Church','Kottayam'),(332,'Changampuzha Nagar','139/CZN','Fathima Matha Church','Ernakulam-Angamaly'),(333,'Changanacherry','135/CGC','St. Mary Metropolitan Cathedral','Changanacherry'),(334,'Changankary','135/CHK','St. Joseph Church','Changanacherry'),(335,'Chanjody','135/CHJ','St. Sebastian Church','Changanacherry'),(336,'Charamangalam','142/CHG','St. Anne Church','Kottayam'),(337,'Charamangalam','135/CHN','Lourdu Matha Church','Changanacherry'),(338,'Charoor','165/CHR','Sacred Heart of Jesus Church','Marthandom'),(339,'Charupara','135/CPR','St. Mary Church','Changanacherry'),(340,'Chathamma','139/CHM','Mother of Perpetual Succour Church','Ernakulam-Angamaly'),(341,'Cheenikuzhy','140/CHE','BVM Annunciation Church','Kothamangalam'),(342,'Cheenivilai','138/CHN','Amala Maria Church','Thuckalay'),(343,'Cheepunkal','135/CPK','St. Antony Church','Changanacherry'),(344,'Cheeramchira','135/CHR','St. George Church','Changanacherry'),(345,'Chekkady','210/CHE','Church of Our Lady of Perpetual Succour','Kottar'),(346,'Chelamattam','139/CMT','St. Sebastian Church','Ernakulam-Angamaly'),(347,'Chellamkonam','165/CHK','St. George\'s Church','Marthandom'),(348,'Chellarcoil','137/CHE','Mar Sleeva Church','Kanjirapally'),(349,'Chelliampara','141/CHE','St. Mary\'s Church','Idukki'),(350,'Chembalam','137/CHB','St. Mary Church','Kanjirapally'),(351,'Chemmalamattam','136/CHE','Twelve Apostles Church','Palai'),(352,'Chemmanathukara','139/CTK','St. Antony Church','Ernakulam-Angamaly'),(353,'Chemmannar','141/CMN','St. Francis Assisi Church','Idukki'),(354,'Chemmannu','137/CHN','St. Thomas Church','Kanjirapally'),(355,'Chempakapara','141/CPK','St. Peter\'s Church','Idukki'),(356,'Chempalam','141/CPL','St. Joseph\'s Church','Idukki'),(357,'Chempanoly','137/CPN','St. Sebastian Church','Kanjirapally'),(358,'Chemparuthivilai','215/CHE','Church of St. Antony of Padua','Kuzhithurai'),(359,'Chempilavu','136/CHM','Little Flower Church','Palai'),(360,'Chempu','139/CMP','St. Thomas Church','Ernakulam-Angamaly'),(361,'Chenamcode','138/CHM','Lourdu Matha Church','Thuckalay'),(362,'Chendamangalam','139/CDG','Holy Cross Church','Ernakulam-Angamaly'),(363,'Chengalam','135/CGM','St. Sebastian Church','Changanacherry'),(364,'Chengalam','137/CGM','St. Antony Church','Kanjirapally'),(365,'Chengalam','142/CHL','Good Shepherd Church','Kottayam'),(366,'Chengam','205/CHE','St John de Britto Church','Vellore'),(367,'Chengamanad','139/CGM','St. Antony Church','Ernakulam-Angamaly'),(368,'Chengannoor','135/CGN','Mary Matha Church','Changanacherry'),(369,'Chenkal','137/CHK','Sacred Heart Church','Kanjirapally'),(370,'Chenkulam','135/CNM','Nithyasahaya Matha Church','Changanacherry'),(371,'Chennad','136/CND','Lourdu Matha Church','Palai'),(372,'Chennakkunnu','137/CNK','St. George Church','Kanjirapally'),(373,'Chennamkary','135/CHE','Lourdu Matha Church','Changanacherry'),(374,'Chennamkary West','135/CHW','St. Joseph Church','Changanacherry'),(375,'Chentharai','215/CHN','Church of St. Francis Xavier','Kuzhithurai'),(376,'Cheppukulam','140/CHP','St. Thomas Church','Kothamangalam'),(377,'Cheppumpara','135/CHP','Martha Mariam Church','Changanacherry'),(378,'Cherai','139/CHR','St. Sebastian Church','Ernakulam-Angamaly'),(379,'Cherambadi','206/CHE','St Sebastian Church','Ootacamund'),(380,'Cheranalloor East','139/CLE','St. FrancisXavier Church','Ernakulam-Angamaly'),(381,'Cheranmahadevi','212/CHE','St. Michael Church','Palayamkottai'),(382,'Cherial','190/CHE','St Thomas Church','Hyderabad'),(383,'Cheriyavelinalloor','135/CHY','St. Sebastian Church','Changanacherry'),(384,'Cherottukonam','165/CHT','Infant Jesus Church','Marthandom'),(385,'Cherpunkal','142/CHE','Ss. Peter & Paul Church','Kottayam'),(386,'Cherpunkal','136/CPK','Holy Cross Forane Church','Palai'),(387,'Cherukadapuram','139/CDP','Fathima Matha Church','Ernakulam-Angamaly'),(388,'Cherukadavu','135/CHD','Infant Jesus Church','Changanacherry'),(389,'Cherukara','142/CHK','St. Mary\'s Church','Kottayam'),(390,'Cherukol Karumputhottam','215/CHK','Church of St. Antony','Kuzhithurai'),(391,'Cheruppaloor','165/CHE','Sacred Heart of Jesus & Mary Church','Marthandom'),(392,'Cherupushpalayam','139/CPM','Little Flower Church','Ernakulam-Angamaly'),(393,'Cheruvallikulam','137/CVL','St. George Church','Kanjirapally'),(394,'Cheruvalloor','215/CHR','Church of St. Michael the Archangel','Kuzhithurai'),(395,'Cheruvally','137/CUV','St. Mary Church','Kanjirapally'),(396,'Cheruvandoor','135/CVD','St. Sebastian Church','Changanacherry'),(397,'Chethicode','139/CHE','Mary Immaculate Church','Ernakulam-Angamaly'),(398,'Chethipuzha','135/CPZ','Sacred Heart Church','Changanacherry'),(399,'Chetpet','205/CPT','Our Lady of Lourdes Shrine','Vellore'),(400,'Chetticharvilai','215/CHL','Church of Little Flower','Kuzhithurai'),(401,'Chettikulam','212/CHT','Our Lady of Lourdes Church','Palayamkottai'),(402,'Chettimedu','207/CHE','Sacred Heart Church','Chingleput'),(403,'Chettivilai','209/CHE','Our Lady of Assumption Church','Tuticorin'),(404,'Chettukulam','142/CKM','St. Mary\'s Church','Kottayam'),(405,'Chettuthodu','136/CTH','Fatima Matha Church','Palai'),(406,'Chevarambalam','142/CVM','St. Mary\'s Church','Kottayam'),(407,'Cheyyur','207/CHT','Our Lady of Good Voyage Church','Chingleput'),(408,'Chidambaram','219/CHI','Sacred Heart Church','Thanjavur'),(409,'Chidambarapuram','212/CHI','Immaculate Conception Church','Palayamkottai'),(410,'Chilavu','140/CHI','Christ the King Church','Kothamangalam'),(411,'Chimptahalli','206/CHI','Holy Cross Church','Ootacamund'),(412,'Chingavanam','142/CHI','St. John\'s Church','Kottayam'),(413,'Chingithurai','209/CHG','Selva Matha Church','Tuticorin'),(414,'Chingleput','207/CPT','Divine Mercy Hill Shrine','Chingleput'),(415,'Chingleput','207/CHI','St Joseph Cathedral','Chingleput'),(416,'Chinmaya Nagar','203/CHI','Infant Jesus Church','Madras-Mylapore'),(417,'Chinna Dharapuram','204/CHI','Our Lady of La Salette Church','Coimbatore'),(418,'Chinnagollapatti','218/CHI','Our Lady of Perpetual Help Church','Salem'),(419,'Chinna Koil','209/CHI','Sacred Heart Cathedral','Tuticorin'),(420,'Chinnalapatty','214/CHI','Our Lady of Perpetual Help Church','Dindigul'),(421,'Chinnamanur','208/CHI','Our Lady of Vailankanni Church','Madurai'),(422,'Chinnamuttom','210/CHI','Church of St Thomas','Kottar'),(423,'Chinnapallam','206/CHN','St Joseph Church','Ootacamund'),(424,'Chinnar','137/CHI','St. George Church','Kanjirapally'),(425,'Chinnarnirappu','141/CHN','St. Thomas Church','Idukki'),(426,'Chinnasalem','216/CHI','St Theresa Church','Pondicherry-Cuddalore'),(427,'Chinnathottipalayam','146/CPM','Jeevan Jyothi Centre','Ramanathapuram'),(428,'Chinnavilai','210/CHN','Church of St Antony','Kottar'),(429,'Chintadripet','203/CHN','Queenship of Mary Church','Madras-Mylapore'),(430,'Chintalacheru','190/CHI','Holy Spirit Church','Hyderabad'),(431,'Chinthamani','209/CHN','Our Lady of Snows Church','Tuticorin'),(432,'Chitharal','165/CHL','St. Mary\'s Church','Marthandom'),(433,'Chithirapuram','141/CHI','St. George\'s Church','Idukki'),(434,'Chithirapuram','141/CPU','Infant Jesus Church','Idukki'),(435,'Chittanad','139/CHI','St. Thaddeus Church','Ernakulam-Angamaly'),(436,'Chittar','136/CHI','St. George Church','Palai'),(437,'Chittoor','139/CTR','St. Thomas Church','Ernakulam-Angamaly'),(438,'Chittoor','140/CHT','St. George Church','Kothamangalam'),(439,'Chittur','204/CHT','St Antony the Hermit Church','Coimbatore'),(440,'Cholathadam','136/CHO','St. Mary Church','Palai'),(441,'Choondacherry','136/CHD','St. Joseph Church','Palai'),(442,'Choondy','139/CHO','St. Pius X Church','Ernakulam-Angamaly'),(443,'Choozhal','215/CHO','Church of St. Michael the Archangel','Kuzhithurai'),(444,'Chowara','139/CHW','St. Mary Church','Ernakulam-Angamaly'),(445,'Christianpet','205/CHR','Queen of Angels Church','Vellore'),(446,'Christ Nagar','142/CHR','St. Jude\'s Church','Kottayam'),(447,'Christunagar','137/CHR','St. George Church','Kanjirapally'),(448,'Christu Nagar','210/CHR','Church of Christ the King','Kottar'),(449,'Christupalayam','220/CHR','Immaculate Conception Church','Dharmapuri'),(450,'Christurajapuram','138/CHR','Christuraja Church','Thuckalay'),(451,'Chromepet','207/CHR','Immaculate Conception Church','Chingleput'),(452,'Chullikkara','142/CHU','St. Mary\'s Church','Kottayam'),(453,'Chulliyode','142/CYD','Our Lady of Hope Church','Kottayam'),(454,'Chully','139/CLY','St. George Church','Ernakulam-Angamaly'),(455,'Chunangamvely','139/CHG','St. Joseph Church','Ernakulam-Angamaly'),(456,'Chunkankadai Shrine','215/CKS','Church of St. Antony','Kuzhithurai'),(457,'Chunkapara','135/CKR','Little Flower Church','Changanacherry'),(458,'Chunkom','142/CNM','St. Mary\'s Church','Kottayam'),(459,'Church Colony','190/CHC','Holy Spirit Church','Hyderabad'),(460,'Churuly','141/CHR','St. Thomas Church','Idukki'),(461,'C.K. Mangalam','213/CKM','St. Peter Church','Sivagangai'),(462,'C Nammiyandal','205/CNM','St Joseph the Worker Church','Vellore'),(463,'Coimbatore','204/COI','St Michael Cathedral','Coimbatore'),(464,'Coimbatore','204/COM','St Jude Shrine','Coimbatore'),(465,'Colachel','210/COL','Church of Our Lady of Presentation','Kottar'),(466,'Coonoor','206/CNR','St Antony Church','Ootacamund'),(467,'Coonoor','206/COO','Sacred Heart Church','Ootacamund'),(468,'Covelong (Kovalam)','207/COV','Mount Carmel Church','Chingleput'),(469,'Crawford','211/CRA','St Theresa Church','Tiruchirappalli'),(470,'Cruzpuram','209/CRU','St Joseph Church','Tuticorin'),(471,'C Saveriarpuram','209/CSA','St Xavier Church','Tuticorin'),(472,'Cuddalore New Town','216/CDL','Our Lady of Mount Carmel Church','Pondicherry-Cuddalore'),(473,'Cuddalore Old Town','216/CDO','St Francis Xavier Church','Pondicherry-Cuddalore'),(474,'Cumbummettu','137/CUM','St. Joseph Church','Kanjirapally'),(475,'Daivammedu','141/DAI','Infant Jesus Church','Idukki'),(476,'Dalmughom','135/DAL','St. Mary Church','Changanacherry'),(477,'Dasarapally','220/DAS','Christ the King Church','Dharmapuri'),(478,'Dayanandnagar','190/DAY','St. Cecilia Church','Hyderabad'),(479,'Denkanikottai','220/DEN','Little Flower Church','Dharmapuri'),(480,'Devadanam','219/DEV','St Anne\'s Church','Thanjavur'),(481,'Devagiri','139/DEV','St. Sebastian Church','Ernakulam-Angamaly'),(482,'Devakottai Town','213/DEV','Sahaya Matha Church','Sivagangai'),(483,'Devala','206/DEV','St Antony Church','Ootacamund'),(484,'Devarsholai','206/DEA','Our Lady of Lourdes Church','Ootacamund'),(485,'Devikapuram','205/DEV','Our Lady of Good Health Church','Vellore'),(486,'Devi Nagar','203/DEV','Infant Jesus Church','Madras-Mylapore'),(487,'Dharapuram','204/DHA','St Aloysius Church','Coimbatore'),(488,'Dharapuram','false','St Jude Mission Centre','Ramanathapuram'),(489,'Dharkast','207/DHA','Assumption Church','Chingleput'),(490,'Dharmapuri','220/DHA','Sacred Heart Cathedral','Dharmapuri'),(491,'Dharmaram','190/DHA','Our Lady of Lourdes Church','Hyderabad'),(492,'Dindigul','214/DIN','St Joseph Cathedral','Dindigul'),(493,'Doddagajanur','206/DOD','St John the Baptist Church','Ootacamund'),(494,'Duraikudiyiruppu','209/DUR','Our Lady of Rosary Church','Tuticorin'),(495,'Duraisamipuram','212/DUR','St. James Mission','Palayamkottai'),(496,'Duraisamipuram','211/DUR','St Antony Church','Tiruchirappalli'),(497,'Eachome','142/EAC','Christ The King Church','Kottayam'),(498,'Eanchacode','215/EAN','Church of Our Lady of Perpetual Help','Kuzhithurai'),(499,'Eara','135/EAR','Lourdu Matha Church','Changanacherry'),(500,'East Gate','208/EAS','St. Mary Cathedral','Madurai'),(501,'East Marianathapuram','214/EAS','St Sebastian Church','Dindigul'),(502,'East Nattassery','142/EAS','Holy Family Church','Kottayam'),(503,'Eattithopu','141/EAT','Vijaya Matha Church','Idukki'),(504,'Edackat','142/EDA','St. George Church','Kottayam'),(505,'Edadu','136/EDA','St. Mary Church','Palai'),(506,'Edakkunnam','137/EDA','Mary Matha Church','Kanjirapally'),(507,'Edakoly','142/ECT','St. Anne Church','Kottayam'),(508,'Edakunnu','139/EDK','St. Antony Church','Ernakulam-Angamaly'),(509,'Edamalaippatty Pudur','211/EDM','Infant Jesus Church (Pudur)','Tiruchirappalli'),(510,'Edamalaippatty Pudur','211/EDA','Infant Jesus Church','Tiruchirappalli'),(511,'Edamaruku','136/EDM','St. Antony Church','Palai'),(512,'Edamattam','141/EDA','St. John\'s Church','Idukki'),(513,'Edamon','137/EDM','St. Mary Church','Kanjirapally'),(514,'Edanad (Edad)','139/EDA','St. Mary Church','Ernakulam-Angamaly'),(515,'Edapally','139/EDP','St. George Forane Church','Ernakulam-Angamaly'),(516,'Edappady','136/EDP','St. Joseph Church','Palai'),(517,'Edappalayam','135/EDA','St. George Church','Changanacherry'),(518,'Edathua','135/EDT','St. George Forane Church','Changanacherry'),(519,'Edavoor','139/EDV','St. Sebastian Church','Ernakulam-Angamaly'),(520,'Edayarpalayam','146/EPM','Infant Jesus Church','Ramanathapuram'),(521,'Edayazham','139/EDZ','St. Joseph Church','Ernakulam-Angamaly'),(522,'Edayazham East','139/EZE','St. Mary Church','Ernakulam-Angamaly'),(523,'Eganivayal','219/EGA','Our Lady of Good Health Church','Thanjavur'),(524,'Egmore','203/EGM','Sacred Heart Shrine','Madras-Mylapore'),(525,'Elachipalayam','218/ELA','St.Antony\'s Church','Salem'),(526,'Elakurichy','217/ELA','Adaikala Madha Shrine','Kumbakonam'),(527,'Elamakara','139/EKA','St. Antony Church','Ernakulam-Angamaly'),(528,'Elamgulam','137/ELA','St. Mary Church','Kanjirapally'),(529,'Elamkulam','139/EKM','Little Flower Church','Ernakulam-Angamaly'),(530,'Elamthottam','136/ELA','St. Antony Church','Palai'),(531,'Elanagar','218/ELN','St. PaulÃ¢â‚¬â„¢s Church','Salem'),(532,'Elanganathapuram','209/ELA','St Xavier Church','Tuticorin'),(533,'Elangoi','137/EGU','Holy Cross Church','Kanjirapally'),(534,'Elangulam','209/ELN','Arockia Matha Church','Tuticorin'),(535,'Elanji','136/ELN','Ss. Peter & Paul Forane Church','Palai'),(536,'Elankadai','210/ELA','Church of Church of St. Antony','Kottar'),(537,'Elapakkam','207/ELA','Our Lady of Ransom Church','Chingleput'),(538,'Elappally','136/ELP','St. Mary Church','Palai'),(539,'Elappara','137/ELP','St. Alphonsa Church','Kanjirapally'),(540,'Elathagiri','220/ELA','Our Lady of Refuge Church','Dharmapuri'),(541,'Elavoor','139/ELA','St. Mary Church','Ernakulam-Angamaly'),(542,'Elavoor (Kunnel)','139/ELK','St. Antony Church','Ernakulam-Angamaly'),(543,'Elavuvilai','215/ELA','Church of St. Aloysius','Kuzhithurai'),(544,'Eleankanny','205/ELE','Our Lady of Mount Carmel Church','Vellore'),(545,'Elikkulam','137/ELI','Infant Jesus Church','Kanjirapally'),(546,'Elivalikara','137/ELV','St. Antony Church','Kanjirapally'),(547,'Elk Hill','206/ELK','St Jude Church','Ootacamund'),(548,'Ellackal','141/ELL','St. Antony\'s Church','Idukki'),(549,'Eloor','139/ELO','St. Anne Church','Ernakulam-Angamaly'),(550,'Emerald','206/EME','Annai Vailankanni Church','Ootacamund'),(551,'Emjala','190/EMJ','Infant Jesus Shrine','Hyderabad'),(552,'Enanalloor','140/ENA','St. Sebastian Church','Kothamangalam'),(553,'Enayam','210/ENA','Church of St Helen','Kottar'),(554,'Enayam-Puthenthurai','210/ENP','Church of St Antony','Kottar'),(555,'Ennore','203/ENN','St Joseph Church','Madras-Mylapore'),(556,'Erachakulam','210/ERA','Church of St. jude','Kottar'),(557,'Eraiyur','216/ERA','Our Lady of Rosary Church','Pondicherry-Cuddalore'),(558,'Eraiyur','207/ERA','St. Antony\'s Church','Chingleput'),(559,'Eraiyur','217/ERA','St. Antony\'s Church','Kumbakonam'),(560,'Eral','209/ERA','Othasai Matha Church','Tuticorin'),(561,'Eral','209/ERL','St Joseph Church','Tuticorin'),(562,'Eramalloor','139/ERA','St. Joseph Church','Ernakulam-Angamaly'),(563,'Eranavoor','203/ERA','St George Church','Madras-Mylapore'),(564,'Eranavoor','203/ERN','Sacred Heart Church','Madras-Mylapore'),(565,'Erattayar','141/ERA','St. Thomas Church','Idukki'),(566,'Eravimangalam','142/ERA','St. Mary\'s Church','Kottayam'),(567,'Eravinalloor','135/ERV','Our Lady of Assumption Church','Changanacherry'),(568,'Eraviperoor','142/EPR','St. Joseph Church','Kottayam'),(569,'Eravuchira','135/ERA','St. Mary Church','Changanacherry'),(570,'Ernakulam','139/ERN','St. John Vianney Church','Ernakulam-Angamaly'),(571,'Ernakulam','139/ENK','St. Mary Cathedral Basilica','Ernakulam-Angamaly'),(572,'Erode','204/ERO','St Mary Church','Coimbatore'),(573,'Erode','146/EDE','Lourdu Matha Forane Church','Ramanathapuram'),(574,'Erode (Rly Colony)','204/EDE','Sacred Heart Church','Coimbatore'),(575,'Erukkencherry','203/ERU','St Joseph Church','Madras-Mylapore'),(576,'Erukkur','219/ERU','Our Lady of Happy Voyage Church','Thanjavur'),(577,'Erumaikaranur','204/ERU','St Kunaguntha Church','Coimbatore'),(578,'Erumely','137/ERU','Assumption Forane Church','Kanjirapally'),(579,'Eruthenpathy','204/ERT','St Peter & Paul Church','Coimbatore'),(580,'Eruvadi','209/ERU','St Joseph Church','Tuticorin'),(581,'Ettamadai','210/ETT','Church of Holy Family','Kottar'),(582,'Ettumanoor','142/ETT','St. Joseph Church','Kottayam'),(583,'Ettumanoor','135/ETT','Christ the King Church','Changanacherry'),(584,'Ezhacherry','136/EZH','St. John the Baptist Church','Palai'),(585,'Ezhalloor','140/EZH','St. Sebastian Church','Kothamangalam'),(586,'Ezhattumugham','139/EZH','St. Thomas Church','Ernakulam-Angamaly'),(587,'Ezhikkara','139/EZK','St. Mary Assumption Church','Ernakulam-Angamaly'),(588,'Ezhukumvayal','141/EZH','St. Mary\'s Church','Idukki'),(589,'Ezhupunna','139/EZN','St. Raphael Church','Ernakulam-Angamaly'),(590,'Ezumattoor','135/EZU','St. Joseph Church','Changanacherry'),(591,'Fathimanagar','165/FMN','St. Joseph\'s Church','Marthandom'),(592,'Fathimapalayam','216/FAT','Our Lady of Fatima Church','Pondicherry-Cuddalore'),(593,'Fathima Puram','136/FAT','Fathima Matha Church','Palai'),(594,'Fatima Nagar','211/FAT','Our Lady of Fatima Church','Tiruchirappalli'),(595,'Fatima Nagar','209/FAT','Our Lady of Fatima Church','Tuticorin'),(596,'Fatimapuram','217/FAT','Our Lady of Fatima Church','Kumbakonam'),(597,'Fatima Puram','135/FAT','Fatima Matha Church','Changanacherry'),(598,'Fatimapuram (Oorambu)','215/FAT','Church of Our Lady of Fatima','Kuzhithurai'),(599,'Finger Post','206/FIN','St Theresa of Child Jesus Church','Ootacamund'),(600,'Flower Mount','139/FLO','Little Flower Church','Ernakulam-Angamaly'),(601,'Fort Kochi','139/FOR','Little Flower Church','Ernakulam-Angamaly'),(602,'Gabrielpuram','217/GAB','Sacred Heart Church','Kumbakonam'),(603,'Gaddiannaram','190/GAD','St. Stanislaus Church','Hyderabad'),(604,'Gagillapuram','190/GAG','St. Ignatius Church','Hyderabad'),(605,'Gagultha','136/GAG','Holy Cross Church','Palai'),(606,'Gajwel','190/GAJ','Infant Jesus Shrine','Hyderabad'),(607,'Ganadharapuram','165/GDP','St. Michael\'s Church','Marthandom'),(608,'Ganapathy Village','204/GAN','St Francis of Assisi Church','Coimbatore'),(609,'Gandhi Nagar','190/GAN','St. Anthony Church','Hyderabad'),(610,'Gandhi Nagar','205/GAN','Sacred Heart of Jesus Church','Vellore'),(611,'Gandhi Nagar','209/GAN','St Thomas Church','Tuticorin'),(612,'Gandhi Nagar','203/GAD','Christ the King Church','Madras-Mylapore'),(613,'Gandhi Nagar','207/GAN','Our Lady of Lourdes Church','Chingleput'),(614,'Gandhipet Mission','203/GAN','St Joseph Church','Madras-Mylapore'),(615,'Gandhipuram','146/GPM','Lourdu Forane Church','Ramanathapuram'),(616,'Gandhipuram','204/GAD','Our Lady of Fatima Church','Coimbatore'),(617,'Gangavalli','218/GAN','Christ the King Church','Salem'),(618,'Garrison','190/TGH','St. Patrick Church','Hyderabad'),(619,'Gaspar Nagar','213/GAS','Precious Blood Church','Sivagangai'),(620,'Gedilam Maranodai','216/GED','Our Lady of Assumption Church','Pondicherry-Cuddalore'),(621,'Gengapuram','205/GEN','St Antony of Padua Church','Vellore'),(622,'Gengupattu','205/GPT','Our Lady of Rosary Church','Vellore'),(623,'Geopuram','139/GEO','St. George Church','Ernakulam-Angamaly'),(624,'George Town-1','203/GEO','Our Lady of Assumption Church','Madras-Mylapore'),(625,'George Town-2','203/GER','St Mary Co-Cathedral','Madras-Mylapore'),(626,'Georgiyar','141/GEO','St. Jude\'s Church','Idukki'),(627,'Geovalley','136/GEO','St. George Church','Palai'),(628,'Ghatkesar','190/GHA','Immaculate Heart of Mary Church','Hyderabad'),(629,'Gingee','216/GIN','St Michael\'s Church','Pondicherry-Cuddalore'),(630,'GKM Colony','203/GKM','Christ the King Church','Madras-Mylapore'),(631,'Glenvans','206/GLE','St Anthony Church','Ootacamund'),(632,'Gnanaolivupuram','208/GNA','St. Joseph Church','Madurai'),(633,'Gnanapragasiarpatnam','209/GPA','St Aloysius Church','Tuticorin'),(634,'Gobichettipalayam','204/GOB','Sacred Heart Church','Coimbatore'),(635,'Golconda','190/GOL','St. Michael Church','Hyderabad'),(636,'Golden George Nagar','203/GOL','Holy Trinity Church','Madras-Mylapore'),(637,'Goundampalayam','204/GOU','St John Bosco Church','Coimbatore'),(638,'Grace Mount','137/GRA','Grace Matha Church','Kanjirapally'),(639,'Green Valley','137/GRE','Infant Jesus Church','Kanjirapally'),(640,'Guanella Nagar','217/GUA','Our Lady of Divine Providence Church','Kumbakonam'),(641,'Gudalur','206/GUD','Infant Jesus Church','Ootacamund'),(642,'Gudiyattam','205/GUD','St John the Baptist Church','Vellore'),(643,'Guduvancherry','207/GUD','Good Shepherd Church','Chingleput'),(644,'Guindy','203/GUI','Infant Jesus Church','Madras-Mylapore'),(645,'Gummidipundi','203/GUM','Sacred Heart Church','Madras-Mylapore'),(646,'Gundri','206/GUN','Our Lady of Lourdes Church','Ootacamund'),(647,'Gunfoundry','190/GUN','St. Joseph Cathedral','Hyderabad'),(648,'Guzliamparai','214/GUZ','Ss Peter & Paul Church','Dindigul'),(649,'Haffieldspet','205/HAF','St Theresa of Child Jesus Church','Vellore'),(650,'Hanumanthanapatti','208/HAN','Holy Spirit Church','Madurai'),(651,'Harbour Estate','209/HAR','Sahaya Annai Church','Tuticorin'),(652,'Harur','220/HAR','Sacred Heart Church','Dharmapuri'),(653,'Helen Nagar','210/HEL','Church of St Francis Xavier','Kottar'),(654,'HMT Estate','139/HMT','St. Joseph Church','Ernakulam-Angamaly'),(655,'Hogenakkal Mission','220/HOG','Our Lady of Falls Church','Dharmapuri'),(656,'Hosur','220/HOS','Sacred Heart Church','Dharmapuri'),(657,'Hosur - Divine Nagar','220/HSR','St. Theresa of Child Jesus Church','Dharmapuri'),(658,'Hyderabad','190/HYD','Maria Rosa Mystica Church','Hyderabad'),(659,'Ibrahimpatnam','190/IBR','Ibrahimpatnam Mission Station','Hyderabad'),(660,'Idaikattur','213/IDA','Sacred Heart Church','Sivagangai'),(661,'Idamattom','136/IDA','St. Michael Church','Palai'),(662,'Idappay','218/IDA','St. Selvanayagi Church','Salem'),(663,'Idinthakarai','209/IDI','Our Lady of Lourdes Church','Tuticorin'),(664,'Idukki','141/IDU','St. George\'s Church','Idukki'),(665,'Ilayangudi','213/ILA','Holy Redeemer Church','Sivagangai'),(666,'Ilayarasanendal','212/ILA','Nativity of Our Lady Church','Palayamkottai'),(667,'Illithode','139/ILL','Sacred Heart Church','Ernakulam-Angamaly'),(668,'Illupur','211/ILL','St Antony Church','Tiruchirappalli'),(669,'Inchathotty','140/INC','BVM Immaculate Conception Church','Kothamangalam'),(670,'Inchathotty','141/INC','St. Jude\'s Church','Idukki'),(671,'Inchiyani','137/INC','Holy Family Church','Kanjirapally'),(672,'Inchoor','140/INH','St. Antony Church','Kothamangalam'),(673,'Indu Nagar HPF','206/IND','Our Lady of Lourdes Church','Ootacamund'),(674,'Inigo Nagar','209/INI','St Ignatius Church','Tuticorin'),(675,'Injambakkam (Quasi Parish)','207/INJ','St. Thomas Church','Chingleput'),(676,'Innaciarpuram','209/INN','St Ignatius Church','Tuticorin'),(677,'Irendalaiparai','214/IRE','St Joseph Church','Dindigul'),(678,'Irimpanam','139/IRU','Infant Jesus Church','Ernakulam-Angamaly'),(679,'Irudayakulam','212/IRU','Sacred Heart of Jesus Church','Palayamkottai'),(680,'Irudayampattu','216/IRU','Our Lady Queen of Heaven Church','Pondicherry-Cuddalore'),(681,'Irudayanagar','212/IDA','Sacred Heart of Jesus Church','Palayamkottai'),(682,'Irudayapuram','213/IRU','Sacred Heart of Jesus Church','Sivagangai'),(683,'Irudayapuram','215/IRU','Church of Christ the King','Kuzhithurai'),(684,'Irulancherry-Perambakkam','203/IRU','Our Lady of Immaculate Conception','Madras-Mylapore'),(685,'Irumpayam','139/IRM','St. Joseph Church','Ernakulam-Angamaly'),(686,'Irumpupalam','141/IRU','St. Antony\'s Church','Idukki'),(687,'Irundai','216/IRN','St Joseph Church','Pondicherry-Cuddalore'),(688,'Irungalur','217/IRU','St. Thomas Church','Kumbakonam'),(689,'Iruppukurichy','216/IRP','Sacred Heart Church','Pondicherry-Cuddalore'),(690,'Iruthayapuram','215/IPM','Church of the Sacred Heart of Jesus','Kuzhithurai'),(691,'Ithayapuram','215/ITH','Church of the Sacred Heart of Jesus','Kuzhithurai'),(692,'Ithithanam','135/ITH','St. Mary Church','Changanacherry'),(693,'Iyerpadi','204/IYE','St Paul the Hermit Church','Coimbatore'),(694,'Iyyancherry','207/IYY','Our Lady of Good Health Church','Chingleput'),(695,'Jadijamalpur','190/JAD','St. Joseph Church','Hyderabad'),(696,'Jagadgirigutta','190/JAG','Our Lady of Perpetual Help Church','Hyderabad'),(697,'Jahanuma','190/JAH','Our Lady of Sorrows Church','Hyderabad'),(698,'Jaigiri','136/JAI','Christ Raj Church','Palai'),(699,'James Town','165/JMT','St. Alphonsa Church','Marthandom'),(700,'Japthikarani','205/JAP','St Peter & Paul Church','Vellore'),(701,'Jawahar Nagar','212/JAW','Our Lady Perpetual Succour Church','Palayamkottai'),(702,'Jayanagar','216/JAY','St Thomas Syrian Church','Pondicherry-Cuddalore'),(703,'Jayankondam','217/JAY','Our Lady of Fatima Church','Kumbakonam'),(704,'Jayarakkini Nagar','218/JAY','Annai Jayarakkini Church','Salem'),(705,'Jeedimetla','190/JEE','St. Anthony Church','Hyderabad'),(706,'Jerusalem','211/JER','Church of the Risen Lord','Tiruchirappalli'),(707,'Jesurajapuram','209/JES','Christ the King Church','Tuticorin'),(708,'Jogipet','190/JOG','St. Joseph Freinademetz Church','Hyderabad'),(709,'Johnsonpet','218/JOH','St. AntonyÃ¢â‚¬â„¢s Church','Salem'),(710,'Jojipet','190/JOJ','St. Mathias Church','Hyderabad'),(711,'Jolarpet','205/JOL','Our Lady of Victory Church','Vellore'),(712,'Josegiri','141/JOS','St. Joseph\'s Church','Idukki'),(713,'Josegiri','136/JGR','St. Joseph Church','Palai'),(714,'Jose Mount','136/JOS','St. Joseph Church','Palai'),(715,'Josepuram','139/JOS','St. Thomas Church','Ernakulam-Angamaly'),(716,'Josepuram','141/JPM','St. Joseph\'s Church','Idukki'),(717,'Kabisthalam','217/KAB','St. Antony\'s Church','Kumbakonam'),(718,'Kacheripady','139/KAC','St. Germaine Church','Ernakulam-Angamaly'),(719,'Kadaba','142/KAD','Arogya Matha Church','Kottayam'),(720,'Kadachanendal','208/KAD','St. Antony Shrine','Madurai'),(721,'Kadagathur','220/KAD','St Mary Church','Dharmapuri'),(722,'Kadainiekadu','135/KAD','St. Mary Church','Changanacherry'),(723,'Kadakkarapally','139/KAD','Christ the King Church','Ernakulam-Angamaly'),(724,'Kadakulam','209/KAD','Raja Kanni Matha Church','Tuticorin'),(725,'Kadalikad','140/KAD','Vimala Matha Church','Kothamangalam'),(726,'Kadamakkudy','139/KDK','St. Augustine Church','Ernakulam-Angamaly'),(727,'Kadamalaikundu','208/KAA','Vailankanni Mission Church','Madurai'),(728,'Kadambathur','203/KAD','St Mathew Mission','Madras-Mylapore'),(729,'Kadanad','136/KAD','St. Augustine Church','Palai'),(730,'Kadapakkam','207/KAD','Our Lady of Miracles Church','Chingleput'),(731,'Kadaplamattam','136/KPT','St. Mary Church','Palai'),(732,'Kadavanthra','139/KDN','St. Joseph Church','Ernakulam-Angamaly'),(733,'Kadavoor','140/KDV','St. George Church','Kothamangalam'),(734,'Kadayal','215/KAD','Church of the Sacred Heart of Jesus','Kuzhithurai'),(735,'Kadayam','212/KAD','St. Ignatius Church','Palayamkottai'),(736,'Kadiapattanam','210/KAD','Church of Ss Peter & Paul','Kottar'),(737,'Kadinalvayal','219/KAD','St John de Britto Church','Thanjavur'),(738,'Kadukkacity (Rajakumari North)','141/KAD','Vailankanni Matha Church','Idukki'),(739,'Kadukutty','139/KDT','Infant Jesus Church','Ernakulam-Angamaly'),(740,'Kaduthuruthy','142/KDU','St. Mary\'s Church','Kottayam'),(741,'Kaduthuruthy Thazhathu','136/KUT','St. Mary Church','Palai'),(742,'Kailasam','141/KAI','St. Joseph\'s Church','Idukki'),(743,'Kailasapuram','211/KAI','St Joseph the Worker Church','Tiruchirappalli'),(744,'Kainady','135/KAI','Our Lady of Dolours Church','Changanacherry'),(745,'Kainakary','135/KNK','St. Mary Church','Changanacherry'),(746,'Kaipally','136/KAI','St. Antony Church','Palai'),(747,'Kaippattoor','139/KAI','Our Lady of Dolours Church','Ernakulam-Angamaly'),(748,'Kaipuzha','142/KAI','St. George Church','Kottayam'),(749,'Kaisalavilai','138/KAV','St. Xavier\'s Church','Thuckalay'),(750,'Kaithapara','140/KAI','St. Mary Church','Kothamangalam'),(751,'Kaitharam','139/KAM','Mary Immaculate Church','Ernakulam-Angamaly'),(752,'Kaithavana','135/KTH','Immaculate Heart Church','Changanacherry'),(753,'Kakkanad','139/KAK','St. FrancisAssisi Church','Ernakulam-Angamaly'),(754,'Kakkanad','142/KAK','St. Kuriakose Church','Kottayam'),(755,'Kakkanur','216/KAK','St Theresa of Child Jesus Church','Pondicherry-Cuddalore'),(756,'Kakkaveri','218/KAK','Our Lady Mt. Carmel Church','Salem'),(757,'Kakkoor','136/KAO','St. Joseph Church','Palai'),(758,'Kakombu','136/KAK','St. Mary Church','Palai'),(759,'Kalady','139/KAL','St. George Church','Ernakulam-Angamaly'),(760,'Kalaikulam','213/KAL','St. Michael Church','Sivagangai'),(761,'Kalaiyarkoil','213/KAI','St. John de Britto Church','Sivagangai'),(762,'Kalamassery','139/KLM','St. Joseph Church','Ernakulam-Angamaly'),(763,'Kalambattupuram','139/KBT','Sacred Heart Church','Ernakulam-Angamaly'),(764,'Kalasapadu','190/KAL','St John Church','Hyderabad'),(765,'Kalathilventranpettai','217/KAL','St. Mary Magdalene Church','Kumbakonam'),(766,'Kalathookadavu','136/KAH','St. John Vianney Church','Palai'),(767,'Kalathoor','136/KHR','St. Mary Church','Palai'),(768,'Kalavamkodam (Uzhuva)','139/KMK','St. Anne Church','Ernakulam-Angamaly'),(769,'Kalavoor','135/KAL','St. Thomas Church','Changanacherry'),(770,'Kalayanthani','140/KAL','BVM Immaculate Conception Church','Kothamangalam'),(771,'Kalayathumkunnu','139/KNU','St. Antony Church','Ernakulam-Angamaly'),(772,'Kalhatty','206/KAL','St Joseph Church','Ootacamund'),(773,'Kaliakkavilai','215/KAL','Church of St. Antony','Kuzhithurai'),(774,'Kalikavu','136/KAL','St. Sebastian Church','Palai'),(775,'Kalimar','210/KAL','Church of St Joseph','Kottar'),(776,'Kaliyal','138/KYL','St. Mary\'s Church','Thuckalay'),(777,'Kaliyar','140/KAY','St. Ritha Forane Church','Kothamangalam'),(778,'Kalkurichy','215/KAI','Church of St. Joseph','Kuzhithurai'),(779,'Kalladipatti','208/KAL','St. Arulanandar Church','Madurai'),(780,'Kalladithidal','213/KAD','St. Antony of Padua Church','Sivagangai'),(781,'Kallakudi','217/KAA','St. Xavier Church','Kumbakonam'),(782,'Kallakurichi','216/KAL','Our Lady of Rosary Church','Pondicherry-Cuddalore'),(783,'Kallal','213/KLL','Queen of the Missions Church','Sivagangai'),(784,'Kallambedu','203/KAL','Christ the King Church','Madras-Mylapore'),(785,'Kallamozhi','209/KAL','St Antony Church','Tuticorin'),(786,'Kallanickal','140/KAN','St. George Church','Kothamangalam'),(787,'Kallar','141/KAL','St. Joseph\'s Church','Idukki'),(788,'Kallar','142/KAL','St. Thomas Church','Kottayam'),(789,'Kallara','142/KLR','St. Thomas Church','Kottayam'),(790,'Kallara New','142/KLA','St. Mary\'s Church','Kottayam'),(791,'Kallaravilai','215/KAK','Church of Our Lady of Fatima','Kuzhithurai'),(792,'Kallarkutty','141/KLK','St. Joseph\'s Church','Idukki'),(793,'Kallelimedu','140/KAE','St. Jude Church','Kothamangalam'),(794,'Kallery','216/KAE','Jayarakini Madha Church','Pondicherry-Cuddalore'),(795,'Kallidaikurichi','212/KAL','St. Anthony Shrine','Palayamkottai'),(796,'Kallikulam','209/KAM','Our Lady of Snows Church','Tuticorin'),(797,'Kallissery','142/KSY','St. Mary\'s Church','Kottayam'),(798,'Kalloorkad','140/KAO','St. Augustine Church','Kothamangalam'),(799,'Kallukoottam','215/KAO','Church of Our Lady of Fatima','Kuzhithurai'),(800,'Kallukuzhi','211/KAL','St Antony Church','Tiruchirappalli'),(801,'Kallupalam','141/KLP','St. Mary\'s Church','Idukki'),(802,'Kalluvilai','138/KLV','Bl Mother Teresa Church','Thuckalay'),(803,'Kaloor','139/KLR','St. Joseph Church','Ernakulam-Angamaly'),(804,'Kaloor','140/KAR','St. John the Baptist Church','Kothamangalam'),(805,'Kalpet','216/KAP','St Paul the Hermit Church','Pondicherry-Cuddalore'),(806,'Kalthotty','137/KAL','Holy Family Church','Kanjirapally'),(807,'Kalugumalai','212/KAU','Our Lady of Lourdes Church','Palayamkottai'),(808,'Kalwakole','190/KWK','Arogyamatha Church','Hyderabad'),(809,'Kamakshy','141/KAM','St. Mary\'s Church','Idukki'),(810,'Kamalapuram','214/KAM','St John the Baptist Church','Dindigul'),(811,'Kamanayakkanpatty','212/KAM','Our Lady of Assumption Shrine','Palayamkottai'),(812,'Kamarajapuram','207/KAM','St. Antony\'s Church','Chingleput'),(813,'Kamarajnagar','211/KAM','St Antony Church','Tiruchirappalli'),(814,'Kamaraj Nagar','203/KAM','Annunciation Church','Madras-Mylapore'),(815,'Kamareddy','190/KAM','Sacred Heart Church','Hyderabad'),(816,'Kamplar','215/KAM','Church of St. Joseph','Kuzhithurai'),(817,'Kamuthi','213/KAM','St. Antony Church','Sivagangai'),(818,'Kanakakunnu','141/KAN','St. Jude\'s Church','Idukki'),(819,'Kanakammachatram','203/KAN','Jagan Matha Marial Alayam','Madras-Mylapore'),(820,'Kanakkankuppam','216/KAA','Our Lady of Lourdes Church','Pondicherry-Cuddalore'),(821,'Kanakkanpatty','213/KAN','St. Francis Xavier Church','Sivagangai'),(822,'Kanamala','137/KAN','St. Thomas Church','Kanjirapally'),(823,'Kanamvayal','142/KAN','St. Pius X Church','Kottayam'),(824,'Kanangadu','216/KAN','Our Lady of Annunciation Church','Pondicherry-Cuddalore'),(825,'Kanavoor','210/KAN','Church of Christ the King','Kottar'),(826,'Kanayankavayal','137/KNY','St. Mary Church','Kanjirapally'),(827,'Kancheepuram (Oblates )','207/KAN','Immaculate Heart of Mary','Chingleput'),(828,'Kanchiyar','141/KCY','St. Mary\'s Church','Idukki'),(829,'Kanchiyar','137/KNC','St. Mary Church','Kanjirapally'),(830,'Kanchiyodu','165/KCD','St. Aloysius Church','Marthandom'),(831,'Kandamkary','135/KDM','St. Joseph Church','Changanacherry'),(832,'Kandanad','139/KND','Infant Jesus Church','Ernakulam-Angamaly'),(833,'Kandanvilai','215/KAV','Church of St. Therese of Child Jesus','Kuzhithurai'),(834,'Kandarvilagam','210/KAA','Church of Our Lady of Fatima','Kottar'),(835,'Kandikuppam','220/KAN','Vinnarasi Church','Dharmapuri'),(836,'Kangayam','146/KGM','St Mary\'s Mission Centre','Ramanathapuram'),(837,'Kaniyambadi','205/KAN','Sacred Heart of Jesus Church','Vellore'),(838,'Kaniyambakkam','203/KAY','St Joseph Church','Madras-Mylapore'),(839,'Kaniyarvayal','142/KYR','St. George Chapel','Kottayam'),(840,'Kaniyiruppu','217/KAN','Our Lady of Fatima Church','Kumbakonam'),(841,'Kanjampuram','215/KAN','Church of St. Therese of Child Jesus','Kuzhithurai'),(842,'Kanjikode','204/KAN','Holy Family Church','Coimbatore'),(843,'Kanjikuzhy','141/KJZ','St. Mary\'s Church','Idukki'),(844,'Kanjiracode','215/KAJ','Church of Our Lady of Rosary','Kuzhithurai'),(845,'Kanjiramattom','136/KJM','Mar Sleeva Church','Palai'),(846,'Kanjirapally','137/KAJ','St. Dominic Cathedral','Kanjirapally'),(847,'Kanjirathanam','136/KAN','St. John the Baptist Church','Palai'),(848,'Kanjoor','139/KJR','St. Mary Forane Church','Ernakulam-Angamaly'),(849,'Kannacode','165/KNC','Infant Jesus Church','Marthandom'),(850,'Kannady','135/KDY','St. Joseph Church','Changanacherry'),(851,'Kannady','135/KAN','St. Rita Church','Changanacherry'),(852,'Kannakkankalam','204/KAA','St Theresa of Child Jesus Church','Coimbatore'),(853,'Kannammoola','135/KMO','Bl Mother Teresa Centre','Changanacherry'),(854,'Kannampalayam','204/KAM','Adaikala Matha Church','Coimbatore'),(855,'Kannampally','137/KAM','St. Mary Church','Kanjirapally'),(856,'Kannankara','142/KNK','St. Francis Xavier Church','Kottayam'),(857,'Kannimala','137/KNM','St. Joseph Church','Kanjirapally'),(858,'Kannimangalam','139/KAN','St. Martin de Porres Church','Ernakulam-Angamaly'),(859,'Kanniyakumari','210/KAY','Church of Our Lady of Ransom','Kottar'),(860,'Kanthalam','142/KTH','Sacred Heart Church','Kottayam'),(861,'Kanthalloor','141/KLR','Vailankanni Matha Church','Idukki'),(862,'Kanthipara','141/KTH','St. Sebastian\'s Church','Idukki'),(863,'Kanyakumari','165/KKM','St. Mary\'s Church','Marthandom'),(864,'Kappadu','137/KAP','Holy Cross Church','Kanjirapally'),(865,'Kappiarai','215/KAP','Church of St. Catherine','Kuzhithurai'),(866,'Kappiset','142/KAP','Perpetual Succour Church','Kottayam'),(867,'Kappukadu','215/KAU','Church of Kallithattu St. Antony','Kuzhithurai'),(868,'Kaprassery','139/KAP','Little Flower Church','Ernakulam-Angamaly'),(869,'Karaikal','216/KAR','Our Lady of Angels Church','Pondicherry-Cuddalore'),(870,'Karaiyur','219/KAR','St Anne\'s Church','Thanjavur'),(871,'Karakunnam','140/KAK','BVM Rosary Church','Kothamangalam'),(872,'Karamadai','146/KMD','Good Shepherd Church','Ramanathapuram'),(873,'Karanakodam','139/KDM','St. Jude Church','Ernakulam-Angamaly'),(874,'Karankadu','213/KAR','Our Lady of Angels Church','Sivagangai'),(875,'Karavaloor','135/KRV','Nithya Sahaya Matha Church','Changanacherry'),(876,'Karayamparambu','139/KPB','St. Joseph Church','Ernakulam-Angamaly'),(877,'Karenkadu','215/KAR','Church of St. Aloysius Gonzaga','Kuzhithurai'),(878,'Kariapatti','208/KAR','Our Lady of Immaculate Conception Church','Madurai'),(879,'Karickumtholam','141/KTM','St. Antony\'s Church','Idukki'),(880,'Karikkad (Varanam)','139/KKD','St. Joseph Church','Ernakulam-Angamaly'),(881,'Karikkamuri','139/KMR','St. Joseph Church','Ernakulam-Angamaly'),(882,'Karikkattoor','137/KAR','St. Antony Church','Kanjirapally'),(883,'Karikkattoor','135/KRK','St. James Church','Changanacherry'),(884,'Karikode','139/KDE','St. Sebastian Church','Ernakulam-Angamaly'),(885,'Karikulam','137/KRK','Fatima Matha Church','Kanjirapally'),(886,'Karimala','141/KRM','Fathima Matha Church','Idukki'),(887,'Karimannoor','140/KMN','BVM Purification Church','Kothamangalam'),(888,'Karimkunnam','142/KAR','St. Augustine Church','Kottayam'),(889,'Karimpan','141/KPN','St. Mary\'s Church','Idukki'),(890,'Karimpanakulam','135/KRM','Sacred Heart Church','Changanacherry'),(891,'Karimpany','136/KRP','Blessed Sacrament Church','Palai'),(892,'Karimughal','139/KGL','Infant Jesus Church','Ernakulam-Angamaly'),(893,'Karipassery','139/KPS','St. Augustine Church','Ernakulam-Angamaly'),(894,'Karisalpatty','214/KAR','St Antony the Hermit Church','Dindigul'),(895,'Karithodu','141/KAR','St. Mary\'s Church','Idukki'),(896,'Kariyandal','205/KAR','St Antony Church','Vellore'),(897,'Karode','138/KRD','St. Joseph\'s Church','Thuckalay'),(898,'Karoor','136/KAR','Sacred Heart Church','Palai'),(899,'Karukunnu','139/KRU','St. Joseph Church','Ernakulam-Angamaly'),(900,'Karukutty','139/KTY','St. FrancisXavier Church','Ernakulam-Angamaly'),(901,'Karukutty-Monastery','139/KRK','Christ the King Church','Ernakulam-Angamaly'),(902,'Karumady','135/KRD','St. Nicholas Church','Changanacherry'),(903,'Karumalloor','139/KAR','St. Thomas Church','Ernakulam-Angamaly'),(904,'Karumandapam','211/KAR','Our Lady the Healer Church','Tiruchirappalli'),(905,'Karumandurai','218/KAR','St. Francis of Assisi Church','Salem'),(906,'Karumannur','165/KMN','St. George\'s Church','Marthandom'),(907,'Karumathampatty','204/KAR','Our Lady of Holy Rosary Shrine','Coimbatore'),(908,'Karumathur','208/KMA','St. Antony Mary Claret Church','Madurai'),(909,'Karumbakkam','207/KAR','Christ the King Church','Chingleput'),(910,'Karunapuram','137/KNP','St. Mary Church','Kanjirapally'),(911,'Karungulam','211/KAU','St Ignatius of Loyola Church','Tiruchirappalli'),(912,'Karunkanni','219/KAI','St Antony\'s Church','Thanjavur'),(913,'Karunya Nagar','146/KNR','Karunya Matha Prayer Centre','Ramanathapuram'),(914,'Karur','146/KAR','St. Antony Church','Ramanathapuram'),(915,'Karuthapillaiyur','212/KAR','St. Antony\'s Church','Palayamkottai'),(916,'Karuvatta','135/KRT','St. Joseph Church','Changanacherry'),(917,'Karyavattam','135/KAR','St. Joseph Church','Changanacherry'),(918,'Kasimode','203/KAS','St Theresa Church','Madras-Mylapore'),(919,'Kasthambadi','205/KAS','St Lawrence Church','Vellore'),(920,'Kathikudam','139/KAT','St. Mary Church','Ernakulam-Angamaly'),(921,'Katoor','204/KAT','Christ the King Church','Coimbatore'),(922,'Katpadi','205/KAT','Blessed Sacrament Church','Vellore'),(923,'Kattachira','142/KAT','St. Mary\'s Church','Kottayam'),(924,'Kattachira','135/KAC','St. Xavier Church','Changanacherry'),(925,'Kattakala (Georgepuram)','141/KAT','St. George\'s Church','Idukki'),(926,'Kattakulam','135/KAT','Christ the King Church','Changanacherry'),(927,'Kattampak','136/KAT','St. Mary Church','Palai'),(928,'Kattappana','137/KAT','St. George Forane Church','Kanjirapally'),(929,'Kattappana','142/KPN','St. Stephen Church','Kottayam'),(930,'Kattapuram','139/KPM','Holy Family Church','Ernakulam-Angamaly'),(931,'Kattathurai','138/KTH','St. Michael\'s Church','Thuckalay'),(932,'Kattikkunnu','139/KTN','St. Mary Church','Ernakulam-Angamaly'),(933,'Kattode','142/KTD','St. Mary\'s Church','Kottayam'),(934,'Kattumannarkoil','219/KAT','Immaculate Conception Church','Thanjavur'),(935,'Kattur','211/KAT','St Antony Church','Tiruchirappalli'),(936,'Kattuvilai','165/KTV','Our Lady of Assumption Church','Marthandom'),(937,'Kattuvilai','210/KAT','Church of Our Lady of Annunciation','Kottar'),(938,'Kavakad','140/KAV','BVM Perpetual Help Church','Kothamangalam'),(939,'Kavalam','135/KLM','Lisieux Church','Changanacherry'),(940,'Kavalam','135/KVL','St. Joseph Church','Changanacherry'),(941,'Kavalam','135/KAV','St. Theresa Church','Changanacherry'),(942,'Kavalkinaru','209/KAV','Sacred Heart Church','Tuticorin'),(943,'Kavaly','136/KAV','St. Mary Church','Palai'),(944,'K Avarampatty','214/KAV','St Francis Xavier Church','Dindigul'),(945,'Kavaraparambu','139/KVB','Little Flower Church','Ernakulam-Angamaly'),(946,'Kaveekunnu','136/KMK','St. Ephrem Church','Palai'),(947,'Kaveripattinam Mission Station','220/KAV','Shanti Matha Church','Dharmapuri'),(948,'Kavil','139/KAV','St. Michael Church','Ernakulam-Angamaly'),(949,'Kavirayapuram','208/KAV','Infant Jesus Church','Madurai'),(950,'Kavumkandam','136/KMN','St. Maria Goretti Church','Palai'),(951,'Kavundampalayam','146/KPM','St. Joseph Church','Ramanathapuram'),(952,'Kayalpuram','135/KPM','St. Antony Church','Changanacherry'),(953,'Kayalpuram','135/KAY','St. Joseph Church','Changanacherry'),(954,'Kayampatty','211/KAY','St Xavier Church','Tiruchirappalli'),(955,'Kayathar','212/KAY','Our Lady of Lourdes Church','Palayamkottai'),(956,'Kayyoor','136/KAY','Christ Raj Church','Palai'),(957,'Kazhuvanthittai','138/KAZ','St. Martin de Porres Church','Thuckalay'),(958,'Kedamangalam','139/KED','Vailankanni Matha Church','Ernakulam-Angamaly'),(959,'Keechery','139/KEE','Holy Family Church','Ernakulam-Angamaly'),(960,'Keela Eral','209/KEE','Don Bosco Mission','Tuticorin'),(961,'Keelakarai','213/KEE','St. Antony Church','Sivagangai'),(962,'Keela Michaelpatti','217/KEE','St. Michael\'s Church','Kumbakonam'),(963,'Keelamudiman','209/KEL','St Aloysius Church','Tuticorin'),(964,'Keelaneduvai','217/KEL','St. Anne\'s Church','Kumbakonam'),(965,'Keelauchani','213/KEA','Ss Joachim & Anne Church','Sivagangai'),(966,'Keelkattalai','207/KEE','Sacred Heart Church','Chingleput'),(967,'Keerampara','140/KEE','St. Sebastian Church','Kothamangalam'),(968,'Keeranur','211/KEE','Punitha Arokia Annai Church','Tiruchirappalli'),(969,'Keerikara','137/KEE','St. Antony Church','Kanjirapally'),(970,'Keerithode','141/KEE','St. Mary\'s Church','Idukki'),(971,'Keezha Kattuvilai','210/KEE','Church of Our Lady of Lourdes','Kottar'),(972,'Keezhavaippar','209/KEZ','Assumption Church','Tuticorin'),(973,'Keezhmadu','139/KZD','Sacred Heart Church','Ernakulam-Angamaly'),(974,'Keezhmankodu','165/KZK','St. George\'s Church','Marthandom'),(975,'Keezhoor','136/KEE','Mount Carmel Church','Palai'),(976,'Keezhputhupattu','216/KEE','Holy Family Church','Pondicherry-Cuddalore'),(977,'Kelamangalam','135/KEL','Our Lady of Dolours Church','Changanacherry'),(978,'Kelamangalam','220/KEL','Sacred Heart Church','Dharmapuri'),(979,'Kelambakkam (MSFS)','207/KEL','Christ the Redeemer Church','Chingleput'),(980,'Kesavanputhenthurai','210/KES','Church of Immaculate Heart of Mary','Kottar'),(981,'Kethanahalli','220/KET','St Francis Xavier Church','Dharmapuri'),(982,'Ketti','206/KET','St Michael Church','Ootacamund'),(983,'Khairatabad','190/KHA','Our Lady of Health Shrine','Hyderabad'),(984,'Kidangara','135/KID','St. Gregorios Church','Changanacherry'),(985,'Kidangoor','142/KID','St. Mary\'s Church','Kottayam'),(986,'Kidangoor','139/KGR','Infant Jesus Church','Ernakulam-Angamaly'),(987,'Kidangoor North','139/KID','St. Sebastian Church','Ernakulam-Angamaly'),(988,'Kidarakuzhi','165/KDK','St. John Church','Marthandom'),(989,'Kilachery','203/KIL','Sacred Heart Church','Madras-Mylapore'),(990,'Kilambady','204/KIL','Our Lady of Purification Church','Coimbatore'),(991,'Kilhpennathur','205/KIL','Sahaya Matha Church','Vellore'),(992,'Kiliyarkandam','141/KIL','Holy Family Church','Idukki'),(993,'Killiroor','135/KIL','St. Francis de Sales Church','Changanacherry'),(994,'Killiyoor','138/KIL','Devamatha Church','Thuckalay'),(995,'Killukottai','211/KIL','St Antony Church','Tiruchirappalli'),(996,'Kilnathur','205/KIN','Arputha Matha Church','Vellore'),(997,'Kilpauk','203/KPK','Votive Shrine of the Immaculate Heart of Mary','Madras-Mylapore'),(998,'Kilvelur','219/KEE','St Joseph\'s Church','Thanjavur'),(999,'Kirathoor','165/KTR','St. George\'s Church','Marthandom'),(1000,'Kismatpur(Bandlaguda Jagir)','190/KIS','Don Bosco Shrine','Hyderabad'),(1001,'Kissan Nagar','190/KSN','St. Elizabeth Ann Seton Church','Hyderabad'),(1002,'Kizhakkambalam','139/KIZ','St. Antony Church','Ernakulam-Angamaly'),(1003,'Kizhakkemithrakary','135/KIZ','Holy Family Church','Changanacherry'),(1004,'Kizhakkumbhagam','139/KGM','Infant Jesus Church','Ernakulam-Angamaly'),(1005,'Kizhakkummuri','139/KIR','St. Thomas Church','Ernakulam-Angamaly'),(1006,'Kizhaparayar','136/KIZ','St. Gregorio Church','Palai'),(1007,'Kizhathadiyoor','136/KZY','Ss. Joseph & Jude Shrine','Palai'),(1008,'Kizhavaneri','209/KIZ','St Anne Church','Tuticorin'),(1009,'KK Nagar','211/KKN','Queen of All Saints Church','Tiruchirappalli'),(1010,'K.K. Pudur','207/KKP','St. Joseph\'s Church','Chingleput'),(1011,'K.M. Kottai','213/KMK','St. John the Evangelist Church','Sivagangai'),(1012,'Kochara','137/KOC','St. Joseph Church','Kanjirapally'),(1013,'Kochuthovala','137/KTH','St. Joseph Church','Kanjirapally'),(1014,'Kodambakkam','203/KBM','St Alphonsa Church','Madras-Mylapore'),(1015,'Kodambakkam','203/KOD','Our Lady of Fatima Church','Madras-Mylapore'),(1016,'Kodamthuruth','139/KOD','St. Antony Church','Ernakulam-Angamaly'),(1017,'Kodanad','139/KAA','St. Antony Church','Ernakulam-Angamaly'),(1018,'Kodayanchi','205/KOD','St Francis Xavier Church','Vellore'),(1019,'Kodikulam','140/KOD','St. Ann Church','Kothamangalam'),(1020,'Kodimunai','210/KOD','Church of St Bartholomew','Kottar'),(1021,'Kodinattukunnu','135/KOD','St. Sebastian Church','Changanacherry'),(1022,'Kodungal','216/KOD','Our Lady of Fatima Church','Pondicherry-Cuddalore'),(1023,'Koduppunna','135/KPN','St. Joseph Church','Changanacherry'),(1024,'Kodussery','139/KSY','St. Joseph Church','Ernakulam-Angamaly'),(1025,'Koduvely','140/KOU','Little Flower Church','Kothamangalam'),(1026,'Koikkathoppu','165/KTP','St. Thomas Church','Marthandom'),(1027,'Koilmuk','135/KOI','St. Joseph Church','Changanacherry'),(1028,'Kokkamangalam','139/KOK','St. Thomas Church','Ernakulam-Angamaly'),(1029,'Kokkudy','217/KOK','St. Ignatius Church','Kumbakonam'),(1030,'Kokkunnu','139/KKM','St. Joseph Church','Ernakulam-Angamaly'),(1031,'Kokkurani','213/KOK','St. Sebastian Church','Sivagangai'),(1032,'Kolady','140/KOL','St. Thomas Church','Kothamangalam'),(1033,'Kolapakkam','207/KOL','St. Michael\'s Church','Chingleput'),(1034,'Kolappalur','205/KOL','Our Lady of Victories Church','Vellore'),(1035,'Kolenchery','139/KOL','Queen Mary Church','Ernakulam-Angamaly'),(1036,'Kolengai','139/KNG','St. Michael Church','Ernakulam-Angamaly'),(1037,'Koleppalur','204/KOL','St Theresa Church','Coimbatore'),(1038,'Koliyoor','135/KOL','St. Thomas Church','Changanacherry'),(1039,'Kollad','135/KLD','Little Flower Church','Changanacherry'),(1040,'Kollakode','139/KLK','Infant Jesus Church','Ernakulam-Angamaly'),(1041,'Kollam','135/KLL','St. Thomas Church','Changanacherry'),(1042,'Kollamula','137/KOL','St. Maria Goretti Church','Kanjirapally'),(1043,'Kolunthattu','209/KOL','St. XavierÃ¢â‚¬â„¢s Church','Tuticorin'),(1044,'Kolvel','215/KOL','Church of Our Lady of Mt. Carmel','Kuzhithurai'),(1045,'Komarapalayam','204/KOM','St Antony Church','Coimbatore'),(1046,'Kombadimadurai','213/KOM','St. Francis Xavier Church','Sivagangai'),(1047,'Kombady','209/KOM','St Michael Church','Tuticorin'),(1048,'Kombaiyanpatty','214/KOM','St Antony the Hermit Church','Dindigul'),(1049,'Kombayar','141/KOM','Infant Jesus Church','Idukki'),(1050,'Kombuthurai','209/KOB','St Stephen Church','Tuticorin'),(1051,'Kommedu','216/KOM','St Joseph Church','Pondicherry-Cuddalore'),(1052,'Konakollaipatty','219/KON','St Catherine\'s Church','Thanjavur'),(1053,'Konalai','217/KON','St. Antony of Paduva Church','Kumbakonam'),(1054,'Konam','210/KON','Church of St Anne','Kottar'),(1055,'Konam','165/KNM','Arokya Annai Church','Marthandom'),(1056,'Konamkadu','215/KON','Church of St. Francis Xavier','Kuzhithurai'),(1057,'Konankuppam','216/KON','Our Lady of Periyanayagi Shrine','Pondicherry-Cuddalore'),(1058,'Kondackal','135/KON','St. Joseph Church','Changanacherry'),(1059,'Kondad','136/KON','St. Sebastian Church','Palai'),(1060,'Koneripatti','218/KON','St. MaryÃ¢â‚¬â„¢s Church','Salem'),(1061,'Kongerpalayam','206/KON','St Joseph Church','Ootacamund'),(1062,'Konginipadavu (Josenagar)','141/KON','St. Joseph\'s Church','Idukki'),(1063,'Kongorpilly','139/KGP','St. George Church','Ernakulam-Angamaly'),(1064,'Kongrapatti','218/KOG','St. Sebastian Church','Salem'),(1065,'Konnaikudy','217/KOA','St. Antony\'s Church','Kumbakonam'),(1066,'Konnakuzhivilai','215/KOA','Church of Our Lady of Sorrows','Kuzhithurai'),(1067,'Konni','137/KON','St. Jude Church','Kanjirapally'),(1068,'Konoor','139/KNR','St. Joseph Church','Ernakulam-Angamaly'),(1069,'Konthuruthy','139/KON','St. John Nepumsian Church','Ernakulam-Angamaly'),(1070,'Koodalappad','139/KOO','St. George Church','Ernakulam-Angamaly'),(1071,'Koodalloor','142/KOO','St. Mary\'s Church','Kottayam'),(1072,'Koodalloor','136/KOO','St. Joseph Church','Palai'),(1073,'Koodangulam','209/KOO','St Anne Church','Tuticorin'),(1074,'Kooduthalai','209/KOD','St Thomas Church','Tuticorin'),(1075,'Koombanmala','141/KOO','St. Joseph\'s Church','Idukki'),(1076,'Koombanpara','141/KMB','Fathima Matha Church','Idukki'),(1077,'Kooropada','135/KPD','Holy Cross Church','Changanacherry'),(1078,'Kootapanai','209/KOT','St Antony Church','Tuticorin'),(1079,'Kootapuly','209/KOP','St Joseph Church','Tuticorin'),(1080,'Kootatturpatti','218/KOO','St. Sebastian Church','Salem'),(1081,'Koothattukulam','137/KOO','Assumption Church','Kanjirapally'),(1082,'Koothattukulam','136/KOU','Holy Family Church','Palai'),(1083,'Koothavakkam','207/KOO','St. John de Britto Church','Chingleput'),(1084,'Koothrappally','135/KOO','St. Mary Church','Changanacherry'),(1085,'Koottamavu','215/KOO','Church of Our Lady of Perpetual Succour','Kuzhithurai'),(1086,'Koottickal','136/KOC','St. George Church','Palai'),(1087,'Koovapally','137/KVP','St. Joseph Church','Kanjirapally'),(1088,'Koovappadam','139/KVP','St. Antony Church','Ernakulam-Angamaly'),(1089,'Koovathur','217/KOO','St. Antony\'s Church','Kumbakonam'),(1090,'Koradachery','219/KOR','St Francis Xavier\'s Church','Thanjavur'),(1091,'Korandikadu','141/KOR','St. Mary\'s Church','Idukki'),(1092,'Korattur','203/KOR','Infant Jesus Church','Madras-Mylapore'),(1093,'Koratty','137/KOR','St. Joseph Church','Kanjirapally'),(1094,'Koratty East','139/KOY','St. Mary Church','Ernakulam-Angamaly'),(1095,'Koratty West','139/KOR','Our Lady of Fathima Church','Ernakulam-Angamaly'),(1096,'Kortampet','205/KOR','Our Lady of Mount Carmel Church','Vellore'),(1097,'Korukkupet','203/KOU','St Joseph Church','Madras-Mylapore'),(1098,'Koruthodu','137/KRU','St. George Church','Kanjirapally'),(1099,'Kosavampatti','218/KOS','St. Francis XavierÃ¢â‚¬â„¢s Church','Salem'),(1100,'Kosavapatty','214/KOS','St Aloysius Church','Dindigul'),(1101,'Kotagiri','206/KOT','St Mary Church','Ootacamund'),(1102,'Kothamangalam','140/KOH','St. George Cathedral','Kothamangalam'),(1103,'Kothamangalam','206/KTH','St George Church','Ootacamund'),(1104,'Kothanalloor','136/KOT','Ss. Gervasis & Prothasis Forane Church','Palai'),(1105,'Kothanalloor','142/KOT','St. Mary\'s Church','Kottayam'),(1106,'Kothavara','139/KTH','St. FrancisXavier Church','Ernakulam-Angamaly'),(1107,'Kothumudi','206/KTU','St Antony Church','Ootacamund'),(1108,'Kottackapuram','135/KTK','St. Mathew Church','Changanacherry'),(1109,'Kottacombai','206/KTA','Our Lady of Fathima Church','Ootacamund'),(1110,'Kottaikadu','219/KOT','St Joseph\'s Church','Thanjavur'),(1111,'Kottaipalayam','217/KOT','St. Mary Magdalene Church','Kumbakonam'),(1112,'Kottaiyur','213/KOT','St. Thomas Church','Sivagangai'),(1113,'Kottamam','139/KTM','St. Joseph Church','Ernakulam-Angamaly'),(1114,'Kottampatty','214/KOT','St Francis Xavier Mission','Dindigul'),(1115,'Kottangal','135/KTG','St. John the Baptist Church','Changanacherry'),(1116,'Kottaparambu','139/KPA','St. Mary Church','Ernakulam-Angamaly'),(1117,'Kottapattu','211/KOT','Our Lady of Good Health Church','Tiruchirappalli'),(1118,'Kottappady','140/KOT','St. Sebastian Church','Kothamangalam'),(1119,'Kottar','210/KOT','Church of St Francis Xavier Cathedral','Kottar'),(1120,'Kottarakara','135/KTR','St. Thomas Mission Church','Changanacherry'),(1121,'Kottaram','210/KOA','Church of St Jude Thaddeus','Kottar'),(1122,'Kottarapatty','219/KOA','Our Lady of Good Health Church','Thanjavur'),(1123,'Kottarappally','139/KOT','St. Sebastian Church','Ernakulam-Angamaly'),(1124,'Kottathara','142/KTR','St. Peter Church','Kottayam'),(1125,'Kottayam','135/KOT','Lourdes Forane Church','Changanacherry'),(1126,'Kottayam','142/KTM','Christ The King Cathedral','Kottayam'),(1127,'Kottilpadu','210/KOI','Church of St Alex','Kottar'),(1128,'Kottody','142/KOD','St. Anne Church','Kottayam'),(1129,'Kottoorkonam','215/KOT','Church of Infant Jesus','Kuzhithurai'),(1130,'Kottoorvayal','142/KTV','St. Joseph Church','Kottayam'),(1131,'Kottucherry','216/KOT','Mary Help of Christians Church','Pondicherry-Cuddalore'),(1132,'Kottur','208/KOT','Our Lady of Dolours Church','Madurai'),(1133,'Kovaipudur','204/KOV','Infant Jesus Shrine','Coimbatore'),(1134,'Kovalam','210/KOV','Church of St Ignatius','Kottar'),(1135,'Kovandakurichy','217/KOV','St. James Church','Kumbakonam'),(1136,'Kovilanur','216/KOV','Our Lady of Mount Carmel Church','Pondicherry-Cuddalore'),(1137,'Koviloor','205/KOV','St Joseph Church','Vellore'),(1138,'Kovilpatti','212/KOV','St. Joseph Church','Palayamkottai'),(1139,'Kovilur','220/KOV','St Francis Xavier Church','Dharmapuri'),(1140,'Kozhimala','141/KOZ','St. Joseph\'s Church','Idukki'),(1141,'Kozhiporvilai','215/KOZ','Church of St. Michael','Kuzhithurai'),(1142,'Kozhipporvilai','138/KOZ','Sychar Resources Centre','Thuckalay'),(1143,'Kozhuvanal','136/KOZ','St. John Nepumcian Church','Palai'),(1144,'K Pudhur','208/KPU','Our Lady of Lourdes Shrine','Madurai'),(1145,'K Rasiamangalam','219/KRS','St Antony\'s Church','Thanjavur'),(1146,'Krishnagiri','220/KRI','Our Lady of Fathima Shrine','Dharmapuri'),(1147,'Krishnankuppam','216/KRI','Our Lady of Assumption Church','Pondicherry-Cuddalore'),(1148,'KTC Nagar','212/KTC','Annai Vailankanni Church','Palayamkottai'),(1149,'Kudakkachira','136/KUD','St. Joseph Church','Palai'),(1150,'Kudamaloor','135/KUD','St. Mary Forane Church','Changanacherry'),(1151,'Kudavechoor','139/KUD','St. Mary Church','Ernakulam-Angamaly'),(1152,'K Udayapatti','211/KUD','Our Lady of Snows Church','Tiruchirappalli'),(1153,'Kudayathoor','136/KDY','St. Augustine Church','Palai'),(1154,'Kukatpally','190/KUK','Immaculate Conception Church','Hyderabad'),(1155,'Kulamanickam','217/KUL','St. Ignatius Church','Kumbakonam'),(1156,'Kulamavu','136/KUL','St. Mary Church','Palai'),(1157,'Kulappara','140/KUL','St. Francis Xavier Church','Kothamangalam'),(1158,'Kulapparai','165/KPR','St. Mary\'s Church','Marthandom'),(1159,'Kulasekaram','165/KUL','St. Joseph\'s Church','Marthandom'),(1160,'Kulasekharam','215/KUL','Church of St. Augustine','Kuzhithurai'),(1161,'Kulasekharam','138/KUL','Bl John Paul II Mission','Thuckalay'),(1162,'Kulathoor','135/KUL','Little Flower Church','Changanacherry'),(1163,'Kulathupuzha','135/KPZ','St. Sebastian Church','Changanacherry'),(1164,'Kulithalai','211/KUL','St Christina Church','Tiruchirappalli'),(1165,'Kullakamby','206/KUL','Christ the King Church','Ootacamund'),(1166,'Kulumur','217/KUA','St. Paul Church','Kumbakonam'),(1167,'Kumarakom','135/KMK','Navanazareth Church','Changanacherry'),(1168,'Kumarakom','142/KUM','St. John Nepumcen Church','Kottayam'),(1169,'Kumarakom','135/KUO','St. John Nepumsian Church','Changanacherry'),(1170,'Kumaranalloor','135/KML','St. Thomas Church','Changanacherry'),(1171,'Kumarankary','135/KRY','St. Mary Church','Changanacherry'),(1172,'Kumaran Thirunagar','214/KUM','Annai Vailankanni Church','Dindigul'),(1173,'Kumarapalayam','218/KUM','Our Lady of Rosary Church','Salem'),(1174,'Kumarapuram','135/KUM','St. Mary Church','Changanacherry'),(1175,'Kumar Nagar','204/KUM','St Joseph Church','Coimbatore'),(1176,'Kumbakonam','217/KUM','St. Mary Cathedral','Kumbakonam'),(1177,'Kumbalam','139/KUM','Our Lady of Dolours Church','Ernakulam-Angamaly'),(1178,'Kumilanguzhy','217/KUI','St. Xavier Church','Kumbakonam'),(1179,'Kumily','137/KUM','St. Thomas Forane Church','Kanjirapally'),(1180,'Kunankurichy','216/KUN','Our Lady of Periyanayagi Church','Pondicherry-Cuddalore'),(1181,'Kunchithanny','141/KUN','Holy Family Church','Idukki'),(1182,'Kundah Bridge','206/KUN','St Francis of Assisi Church','Ootacamund'),(1183,'Kundamam','135/KND','St. Thomas Church','Changanacherry'),(1184,'Kundrathur','207/KUN','Amala Annai Church','Chingleput'),(1185,'Kundukulam','213/KUN','Sacred Heart Church','Sivagangai'),(1186,'Kuniamuthur','204/KUN','Divine Mercy Church','Coimbatore'),(1187,'Kuniamuthur','146/KMR','St. Mark Church','Ramanathapuram'),(1188,'Kuninji','140/KUN','St. Antony Church','Kothamangalam'),(1189,'Kunnamalai','218/KUN','Our Lady of Mt. Carmel Church','Salem'),(1190,'Kunnamthanam','135/KUN','St. Joseph Church','Changanacherry'),(1191,'Kunnapillissery','139/KUN','St. Sebastian Church','Ernakulam-Angamaly'),(1192,'Kunnel (Alangad)','139/KNL','Infant Jesus Church','Ernakulam-Angamaly'),(1193,'Kunnonni','136/KUN','St. Joseph Church','Palai'),(1194,'Kunnumbhagam','137/KUN','St. Joseph Church','Kanjirapally'),(1195,'Kunnumpuram','139/KMP','St. Joseph Church','Ernakulam-Angamaly'),(1196,'Kuravilangad','136/KUR','St. Mary Forane Church','Palai'),(1197,'Kurichithanam','136/KCH','St. Thomas Church','Palai'),(1198,'Kurichy','135/KCH','St. Joseph Church','Changanacherry'),(1199,'Kurinji','136/KJI','St. Sebastian Church','Palai'),(1200,'Kurisumudi','139/KUR','Mar Thoma Church','Ernakulam-Angamaly'),(1201,'Kurisupara','141/KUR','Holy Cross Church','Idukki'),(1202,'Kurukkusalai','209/KUR','Infant Jesus Mission','Tuticorin'),(1203,'Kurumannu','136/KNU','St. John the Baptist Church','Palai'),(1204,'Kurumassery','139/KMS','Little Flower Church','Ernakulam-Angamaly'),(1205,'Kurumbagaram','216/KUR','St Andrew Church','Pondicherry-Cuddalore'),(1206,'Kurumbanai','210/KUR','Church of St Ignatius of Loyola','Kottar'),(1207,'Kurumbur','209/KUM','St Lucia Church','Tuticorin'),(1208,'Kurumilangudi','213/KUR','Ss Joachim & Anne Church','Sivagangai'),(1209,'Kurumpanadam','135/KUR','St. Antony Forane Church','Changanacherry'),(1210,'Kurumpanadam','135/KMP','Our Lady of Assumption Church','Changanacherry'),(1211,'Kurumpanmoozhy','137/KUR','St. Thomas Church','Kanjirapally'),(1212,'Kurumulloor','142/KUR','St. Stephen Church','Kottayam'),(1213,'Kuruppam','139/KRM','St. Sebastian Church','Ernakulam-Angamaly'),(1214,'Kuruppanthara','142/KUP','St. Thomas Church','Kottayam'),(1215,'Kuruppumpady','140/KUR','Ss. Peter & Paul Church','Kothamangalam'),(1216,'Kurusady','210/KUU','Church of St Antony','Kottar'),(1217,'Kurusukuppam','216/KUS','St Francis of Assisi Church','Pondicherry-Cuddalore'),(1218,'Kuruvikulam','212/KUR','St. Joseph Church','Palayamkottai'),(1219,'Kuruvinal','136/KVL','St. Michael Church','Palai'),(1220,'Kutchapuram','135/KCP','St. Joseph Church','Changanacherry'),(1221,'Kuthalam','219/KUT','Infant Jesus Church','Thanjavur'),(1222,'Kuthalur','213/KUT','Immaculate Conception Church','Sivagangai'),(1223,'Kuthenkuzhy','209/KUT','Epiphany Church','Tuticorin'),(1224,'Kuthiathode','139/KTD','St. Thomas Church','Ernakulam-Angamaly'),(1225,'Kuthiathode (New)','139/KUA','St. FrancisXavier Church','Ernakulam-Angamaly'),(1226,'Kuthirakkallu','141/KUT','St. Jude\'s Church','Idukki'),(1227,'Kuthumkal','140/KUT','St. George Church','Kothamangalam'),(1228,'Kuthupara','141/KPR','St. Joseph\'s Church','Idukki'),(1229,'Kuttaikadu','215/KUT','Church of St. Jude Thadeus','Kuzhithurai'),(1230,'Kuttampuzha','140/KUA','Mother of Mercy Church','Kothamangalam'),(1231,'Kuttara','135/KTA','St. Gerald Church','Changanacherry'),(1232,'Kuttathupatty','214/KUT','St Antony Church','Dindigul'),(1233,'Kuttikonam','135/KUT','Christ the King Church','Changanacherry'),(1234,'Kuttippara','139/KPR','Ss. Joseph & Jude Church','Ernakulam-Angamaly'),(1235,'Kuttipuzha','139/KUT','St. Sebastian Church','Ernakulam-Angamaly'),(1236,'Kuttoor','142/KUT','St. Mary\'s Church','Kottayam'),(1237,'Kuzhitholu','137/KUZ','St. Sebastian Church','Kanjirapally'),(1238,'Kuzhithurai','165/KZT','Sahaya Matha Church','Marthandom'),(1239,'Kuzhithurai','215/KUZ','Church of St. Michael the Archangel','Kuzhithurai'),(1240,'Kuzhivilai','215/KUH','Church of St. Francis Xavier','Kuzhithurai'),(1241,'Kuzhuppilly','139/KUZ','St. Augustine Church','Ernakulam-Angamaly'),(1242,'Laikadu','135/LAI','St. Joseph Church','Changanacherry'),(1243,'Lakshmipuram','203/LAK','Our Lady of the Good Health Church','Madras-Mylapore'),(1244,'Lalam New','136/LAL','St. George Church','Palai'),(1245,'Lalam Old','136/LAO','St. Mary Church','Palai'),(1246,'Lalgudi','217/LAL','St. Joseph\'s Church','Kumbakonam'),(1247,'Lallaguda','190/LAL','Sacred Heart Church','Hyderabad'),(1248,'Lillipur','190/LIL','St. Thomas Church','Hyderabad'),(1249,'Lions Town','209/LIO','Our Lady of Mercy Church','Tuticorin'),(1250,'Lisieux Nagar','139/LIS','Little Flower Church','Ernakulam-Angamaly'),(1251,'Little Mount','203/LIT','St Thomas Church','Madras-Mylapore'),(1252,'Lourdammaipuram','209/LOU','Our Lady of Lourdes Church','Tuticorin'),(1253,'Lourdes Mount','136/LOU','St. Antony Church','Palai'),(1254,'Lourdugiri','215/LOU','Church of Our Lady of Lourdes','Kuzhithurai'),(1255,'Lourdunagar','211/LOU','Our Lady of Lourdes Church','Tiruchirappalli'),(1256,'Lourdupuram','208/LOU','Our Lady of Lourdes Church','Madurai'),(1257,'Lourdupuram','204/LOU','Our Lady of Lourdes Church','Coimbatore'),(1258,'Lovedale','206/LOV','St Antony Church','Ootacamund'),(1259,'Lower Kulamavu','141/LOW','St. Thomas Church','Idukki'),(1260,'Machiplavu','141/MAC','St. Francis Assisi Church','Idukki'),(1261,'Machuvadi','219/MAC','Infant Jesus Church','Thanjavur'),(1262,'Madakal','139/MAD','St. Joseph Church','Ernakulam-Angamaly'),(1263,'Madampam','142/MAD','Our Lady of Lourdes Church','Kottayam'),(1264,'Madampattu','216/MAD','St Joan of Arc Church','Pondicherry-Cuddalore'),(1265,'Madappally','135/MAD','Little Flower Church','Changanacherry'),(1266,'Madathattuvliai','215/MAD','Church of St. Sebastian','Kuzhithurai'),(1267,'Madathukulam','204/MAD','St Peter & Paul Church','Coimbatore'),(1268,'Madhagondapalli','220/MAD','Sacred Heart Church','Dharmapuri'),(1269,'Madhakottai','219/MAD','Lourdu Sagaya Annai Church','Thanjavur'),(1270,'Madha Nagar','207/MAD','St. Francis Xavier Church','Chingleput'),(1271,'Madhavaram','203/MAD','St Sebastian Church','Madras-Mylapore'),(1272,'Madipakkam','207/MAI','Our Lady of Lourdes Church','Chingleput'),(1273,'Madukka','137/MAD','St. Mathew Church','Kanjirapally'),(1274,'Madukkarai','204/MAU','St Pius X Church','Coimbatore'),(1275,'Madurampattu','205/MAD','St Theresa of Child Jesus Church','Vellore'),(1276,'Madurantakam','207/MAU','St. Antony\'s Church','Chingleput'),(1277,'Maduravoyal','203/MAU','St Antony Church','Madras-Mylapore'),(1278,'Mahabalipuram','207/MAH','Holy Family Church','Chingleput'),(1279,'Mahalakshmi Nagar','207/MAA','St. Joseph\'s Church','Chingleput'),(1280,'Maharajanagar','212/MAH','St. Jude Shrine','Palayamkottai'),(1281,'Maharajapuram','138/MPM','St. Michael\'s Church','Thuckalay'),(1282,'Mahendra Hills','190/MAH','Auxilium Church','Hyderabad'),(1283,'Mahendrapuram','135/MAH','St. Sebastian Church','Changanacherry'),(1284,'Mahindi Michaelpattanam','213/MAH','St. Michael Church','Sivagangai'),(1285,'Mailacombu','140/MAI','St. Thomas Forane Church','Kothamangalam'),(1286,'Mailadumpara','141/MAI','Vailankanni Matha Church','Idukki'),(1287,'Mailapra','137/MAI','St. Joseph Church','Kanjirapally'),(1288,'Maiyanur','216/MAI','Assumption Church','Pondicherry-Cuddalore'),(1289,'Makkampalayam','206/MAK','St Antony the Hermit Church','Ootacamund'),(1290,'Makkuvally','141/MAK','St. George\'s Church','Idukki'),(1291,'Makudalayam','142/MAK','St. Teresa Church','Kottayam'),(1292,'Malaicode','138/MAC','Holy Cross Church','Thuckalay'),(1293,'Malai Matha','211/MAL','Punitha Arockia Annai Malai Matha Shrine','Tiruchirappalli'),(1294,'Malaiyadipatti','211/MAI','St Francis Xavier Church','Tiruchirappalli'),(1295,'Malakkallu','142/MAL','Our Lady of Lourdes Church','Kottayam'),(1296,'Malampatti','211/MAP','St Francis Xavier Church','Tiruchirappalli'),(1297,'Malappuram','136/MPM','St. Theresa Church','Palai'),(1298,'Malathankulam','217/MAL','St. Joseph\'s Church','Kumbakonam'),(1299,'Malayankulam','209/MAL','Our Lady of Passion Church','Tuticorin'),(1300,'Malayattoor','139/MAL','St. Thomas Church','Ernakulam-Angamaly'),(1301,'Malayattoor W','139/MLR','St. Joseph Church','Ernakulam-Angamaly'),(1302,'Malayinchipara','136/MAL','Holy Cross Church','Palai'),(1303,'Malayinchy','140/MAL','St. Thomas Church','Kothamangalam'),(1304,'Malippara','140/MAP','Blessed Virgin Mary Church','Kothamangalam'),(1305,'Mallappally','135/MAL','St. Athanasius Church','Changanacherry'),(1306,'Mallapur','190/MAL','St. Ann Church (QuasiParish)','Hyderabad'),(1307,'Malligapuram','207/MAL','St.Antony\'s Church','Chingleput'),(1308,'Mallikasserry','136/MKS','St. Thomas Church','Palai'),(1309,'Malloossery','142/MLS','St. Thomas Church','Kottayam'),(1310,'Mallussery','139/MRY','St. Mary Church','Ernakulam-Angamaly'),(1311,'Malom','142/MLM','St. Stephen Church','Kottayam'),(1312,'Mamalakandam','140/MAM','St. George Church','Kothamangalam'),(1313,'Mambakkam','207/MAM','Immaculate Conception Church','Chingleput'),(1314,'Mammood','135/MMD','Lourdu Matha Church','Changanacherry'),(1315,'Mampra','139/MAM','St. Joseph Church','Ernakulam-Angamaly'),(1316,'Mampuzhakary','135/MAM','Lourdu Matha Church','Changanacherry'),(1317,'MA Nagar','203/MAN','Our Lady of Health Church','Madras-Mylapore'),(1318,'Manakkachira','135/MKC','St. Joseph Church','Changanacherry'),(1319,'Manakkad','142/MAN','St. Joseph Church','Kottayam'),(1320,'Manakkal','217/MAN','Our Lady of Help of Refuge Church','Kumbakonam'),(1321,'Manakodam','139/MAN','St. Sebastian Church','Ernakulam-Angamaly'),(1322,'Manakudy-Kil','210/MAK','Church of Holy Cross','Kottar'),(1323,'Manakudy-Mel','210/MAM','Church of St Andrew','Kottar'),(1324,'Manalady','135/MDY','St. Mary Church','Changanacherry'),(1325,'Manalar','208/MAN','Our Lady of Lourdes Church','Madurai'),(1326,'Manali','215/MAN','Church of St. Antony','Kuzhithurai'),(1327,'Manalikarai','215/MAA','Church of St. Joseph','Kuzhithurai'),(1328,'Manalikuzhivilai','215/MAL','Church of St. Michael the Archangel','Kuzhithurai'),(1329,'Manali New Town','203/MAA','Infant Jesus Shrine','Madras-Mylapore'),(1330,'Manali Old Town','203/MLI','Our Lady of Perpetual Help Church','Madras-Mylapore'),(1331,'Manalumkal','136/MAN','St. Mary Church','Palai'),(1332,'Manalurpet','216/MAN','Sacred Heart Church','Pondicherry-Cuddalore'),(1333,'Manamadurai','213/MAN','St. Theresa of Child JesusChurch','Sivagangai'),(1334,'Manambuchavady','219/MAN','St Joseph\'s Church','Thanjavur'),(1335,'Manampathi Kandigai','207/MAN','Our Lady of Purification Church','Chingleput'),(1336,'Manapad','209/MAP','St James Church','Tuticorin'),(1337,'Manapad','209/MAN','Holy Ghost Church','Tuticorin'),(1338,'Manapakkam','207/MAP','St. Antony\'s Church','Chingleput'),(1339,'Manaparai','211/MAN','Our Lady of Lourdes Church','Tiruchirappalli'),(1340,'Manappuram','139/MPM','Little Flower Church','Ernakulam-Angamaly'),(1341,'Manapra','135/MPR','St. Joseph Church','Changanacherry'),(1342,'Manathidal','217/MAA','St. Thomas Church','Kumbakonam'),(1343,'Manathoor','136/MNT','St. Mary Church','Palai'),(1344,'Manavalanagar','203/MAV','Our Lady of Rosary Church','Madras-Mylapore'),(1345,'Manavalanallur','219/MAV','St Michael\'s Church','Thanjavur'),(1346,'Manavilai','210/MAN','Church of Our Lady of Snows','Kottar'),(1347,'Manchakonam','215/MAC','Church of St. Therese of Child Jesus','Kuzhithurai'),(1348,'Manchikavala','141/MAN','Christ the King Church','Idukki'),(1349,'Mancompu','135/MPU','St. Pius X Church','Changanacherry'),(1350,'Mandai','219/MAL','Sacred Heart Church','Thanjavur'),(1351,'Mandalakottai','219/MAI','Irudaya Matha Church','Thanjavur'),(1352,'Mandapam','213/MAM','St. John de Britto Church','Sivagangai'),(1353,'Mandapam Camp','213/MAP','Sahaya Annai Church','Sivagangai'),(1354,'Mangalagiri','136/MGR','St. Thomas Church','Palai'),(1355,'Mangalagiri','142/MAG','Martha Mariam Church','Kottayam'),(1356,'Mangalakunnu','210/MAG','Church of St Bernadette','Kottar'),(1357,'Mangalam Kombu','208/MAG','St. Antony Church','Madurai'),(1358,'Mangalappuzha','139/MZA','St. Joseph Church','Ernakulam-Angamaly'),(1359,'Mangalapuram','219/MAG','Our Lady of Lourdes Church','Thanjavur'),(1360,'Mangalaram','136/MGL','St. Sebastian Church','Palai'),(1361,'Mangalassery','139/MSR','St. Thomas Church','Ernakulam-Angamaly'),(1362,'Mangamanoothu','214/MAN','St James Church','Dindigul'),(1363,'Mangapetta','137/MAN','St. Thomas Church','Kanjirapally'),(1364,'Mangarai Ammapatty','214/MAG','St Michael Church','Dindigul'),(1365,'Mangidappally','142/MAI','St. Thomas Church','Kottayam'),(1366,'Mangudimeenachipuram','208/MAU','Our Lady of Grace Church','Madurai'),(1367,'Maniamkulam','136/MNL','St. Joseph Church','Palai'),(1368,'Maniankunnu','136/MIK','Sacred Heart Church','Palai'),(1369,'Maniaparampu','135/MNA','St. Jude Church','Changanacherry'),(1370,'Manickamangalam','139/MKG','St. Rockey Church','Ernakulam-Angamaly'),(1371,'Manikandamchal','140/MKD','St. Mary Church','Kothamangalam'),(1372,'Manimala','135/MAI','St. Basil Church','Changanacherry'),(1373,'Manimala','135/MML','Holy Magi Forane Church','Changanacherry'),(1374,'Manipuzha','137/MPZ','ChriSt. the King Church','Kanjirapally'),(1375,'Maniyarankudy','141/MYK','St. Mary\'s Church','Idukki'),(1376,'Manjakkad','142/MAJ','St. Joseph Church','Kottayam'),(1377,'Manjakultai','218/MAN','St. Joseph\'s Church','Salem'),(1378,'Manjalumoodu','138/MJM','Little Flower Forane Church','Thuckalay'),(1379,'Manjamattam','136/MTM','St. Sebastian Church','Palai'),(1380,'Manjapetty','141/MJP','St. Mary\'s Church','Idukki'),(1381,'Manjappara','141/MPR','Christ the King Church','Idukki'),(1382,'Manjapra','139/MJP','Holy Cross Church','Ernakulam-Angamaly'),(1383,'Manjathoppu','165/MJT','Holy Family Church','Marthandom'),(1384,'Mankad','165/MKD','St. George\'s Church','Marthandom'),(1385,'Mankarai','138/MKR','St. James Church','Thuckalay'),(1386,'Mankulam','141/MKL','St. Mary\'s Church','Idukki'),(1387,'Mankuva','141/MKV','St. Thomas Church','Idukki'),(1388,'Mankuzhy','139/MZH','Holy Family Church','Ernakulam-Angamaly'),(1389,'Mankuzhy','142/MAZ','St. Thomas Church','Kottayam'),(1390,'Mankuzhy','215/MAK','Church of St. Francis Xavier','Kuzhithurai'),(1391,'Mannackanad','136/MKD','St. Sebastian Church','Palai'),(1392,'Mannanam','135/MNI','St. Joseph Church','Changanacherry'),(1393,'Mannanam','142/MNM','St. Stephen Church','Kottayam'),(1394,'Mannancherry','135/MCH','Our Lady of Perpetual Help Church','Changanacherry'),(1395,'Mannanthala','135/MNH','Ranigiri Church','Changanacherry'),(1396,'Mannar','136/MNR','Mary Help of Christians Church','Palai'),(1397,'Mannarappara','136/MPR','St. Xavier Church','Palai'),(1398,'Mannargudi','219/MAU','St Joseph Church','Thanjavur'),(1399,'Mannargudi','219/MAR','Infant Jesus Church','Thanjavur'),(1400,'Mannarkunnu','135/MRK','St. Gregory Church','Changanacherry'),(1401,'Mannarpuram','209/MAU','Our Lady of Rosary Church','Tuticorin'),(1402,'Mannila','135/MAN','Holy Family Church','Changanacherry'),(1403,'Mannukad','140/MAN','St. Mary Church','Kothamangalam'),(1404,'Manoor','142/MNR','St. George Church','Kottayam'),(1405,'Mantharamputhur','165/MTP','St. Mary\'s Church','Marthandom'),(1406,'Manvettam','136/MVT','St. George Church','Palai'),(1407,'Maradu','139/MRD','St. Gianna Church','Ernakulam-Angamaly'),(1408,'Marady','140/MAR','St. George Church','Kothamangalam'),(1409,'Maraimalai Nagar','207/MAR','Vinnarasi Alayam','Chingleput'),(1410,'Marakanam','216/MAR','Our Lady of Madhuranayaghy Church','Pondicherry-Cuddalore'),(1411,'Marambady','214/MAR','St Antony Shrine','Dindigul'),(1412,'Maraneri','219/MAE','St Antony\'s Church','Thanjavur'),(1413,'Marangattupally','136/MGT','St. Francis of Assisi Church','Palai'),(1414,'Marangoly','136/MNG','St. Mary Church','Palai'),(1415,'Maranthai Savariarpattanam','213/MAR','St. James Church','Sivagangai'),(1416,'Marappady','138/MPD','St. Thomas Church','Thuckalay'),(1417,'Maravankudiyiruppu','210/MAR','Church of Our Lady of Snows','Kottar'),(1418,'Maravapatty','214/MAA','St Adaikala Annai Church','Dindigul'),(1419,'Mariagiri','137/MAR','St. Sebastian Church','Kanjirapally'),(1420,'Mariagiri','165/MRG','Our Lady of Assumption Church','Marthandom'),(1421,'Marianagar','141/MGR','Bl Kunjachan Church','Idukki'),(1422,'Marianallur','204/MAR','St Ann Church','Coimbatore'),(1423,'Mariapuram','141/MRP','St. Mary\'s Church','Idukki'),(1424,'Mariapuram','204/MAI','St Mary Church','Coimbatore'),(1425,'Mariapuram','139/MRM','St. Mary Church','Ernakulam-Angamaly'),(1426,'Mariathrikkai','139/MHK','St. Mary Church','Ernakulam-Angamaly'),(1427,'Maridom','142/MDM','Sacred Heart Church','Kottayam'),(1428,'Marika','142/MAR','St. Anthony Church','Kottayam'),(1429,'Marika','140/MAK','St. Joseph Forane Church','Kothamangalam'),(1430,'Mariyapuram','135/MAR','Mary Matha Shrine','Changanacherry'),(1431,'Market','209/MAR','St Antony Church','Tuticorin'),(1432,'Marthandam','215/MAT','Church of St. Francis Xavier','Kuzhithurai'),(1433,'Marthandam','138/MTH','St. Vincent de Paul Church','Thuckalay'),(1434,'Marthandom','165/MDM','Christ the King Cathedral','Marthandom'),(1435,'Martin Nagar','139/MRN','St. Martin de Porres Church','Ernakulam-Angamaly'),(1436,'Maruthancode','215/MAR','Church of St. Antony','Kuzhithurai'),(1437,'Maruthorvattom','139/MTV','St. Sebastian Church','Ernakulam-Angamaly'),(1438,'Marygiri','139/MGR','St. Sebastian Church','Ernakulam-Angamaly'),(1439,'Marykulam','137/MYK','St. George Church','Kanjirapally'),(1440,'Maryland','141/MAR','St. Mary\'s Church','Idukki'),(1441,'Maryland','136/MAR','St. Mary Church','Palai'),(1442,'Maryland','139/MAR','St. Mary Church','Ernakulam-Angamaly'),(1443,'Masilapalayam','218/MAR','St. Sebastian Church','Salem'),(1444,'Masinagudi','206/MAS','Mother of Perpetual Help Church','Ootacamund'),(1445,'Mathakoil','209/MAT','Our Lady of Snows Basilica','Tuticorin'),(1446,'Mathal','210/MAT','Church of St Francis Assisi','Kottar'),(1447,'Mathanagar','139/MGA','Our Lady of Vailankanni Church','Ernakulam-Angamaly'),(1448,'Mathankovilpatti','208/MAT','Sahaya Matha Church','Madurai'),(1449,'Mathapuram','138/MTP','St. Thomas Church','Thuckalay'),(1450,'Mathar','165/MTH','St. Joseph\'s Church','Marthandom'),(1451,'Mathias Nagar','165/MTN','St. Mary\'s Church','Marthandom'),(1452,'Mathigiri','220/MAT','Our Lady of Good Health Church','Dharmapuri'),(1453,'Mathirappilly','140/MAT','St. Sebastian Church','Kothamangalam'),(1454,'Mathiravilai','215/MAH','Church of Our Lady of Assumption','Kuzhithurai'),(1455,'Mathiyampatti','218/MAT','St. Mary Magdalene Church','Salem'),(1456,'Mathoor','215/MAO','Church of St. Joseph','Kuzhithurai'),(1457,'Mathoorkonam','165/MTK','St. Peter\'s Church','Marthandom'),(1458,'Mathur','203/MAT','Our Lady of Good Health Church','Madras-Mylapore'),(1459,'Mathur','217/MAT','Our Lady of Victory Church','Kumbakonam'),(1460,'Mathur','211/MAT','St Francis of Assisi Church','Tiruchirappalli'),(1461,'Mattakkara','136/MAT','Holy Family Church','Palai'),(1462,'Mattel','139/MTL','St. Thomas Shrine','Ernakulam-Angamaly'),(1463,'Mattiarendal','213/MAT','St. Joseph Church','Sivagangai'),(1464,'Mattoor','139/MTO','St. Antony Church','Ernakulam-Angamaly'),(1465,'Mattoor Town','139/MAT','St. Mary Church','Ernakulam-Angamaly'),(1466,'Mavady','141/MAV','St. Thomas Church','Idukki'),(1467,'Mavady','136/MAV','St. Sebastian Church','Palai'),(1468,'Mavelikara','135/MAV','St. Alphonsa Church','Changanacherry'),(1469,'Mayam','135/MAY','St. Mary Church','Changanacherry'),(1470,'Mayiladuthurai','219/MAY','St Francis Xavier Church','Thanjavur'),(1471,'Mazhuvankarunai','205/MAZ','Don Bosco Church','Vellore'),(1472,'Mecode','165/MEC','St. Francis Xavier\'s Church','Marthandom'),(1473,'Medavakkam','207/MED','Sagaya Madha Alayam','Chingleput'),(1474,'Medchal','190/MED','St. Joseph Church','Hyderabad'),(1475,'Medipalli','190/MDP','Our Lady of Compassion Church','Hyderabad'),(1476,'Meenachal','165/MEH','St. Mary\'s Church','Marthandom'),(1477,'Meenachil','136/MEE','St. Antony Church','Palai'),(1478,'Meenambakkam','207/MEE','Holy Spirit Church','Chingleput'),(1479,'Meenampatti North','208/MEE','Bl Mother Teresa Church','Madurai'),(1480,'Meenkulam','135/MEE','Lourdu Matha Church','Changanacherry'),(1481,'Meenkunnam','140/MEE','St. Joseph Church','Kothamangalam'),(1482,'Meenkuzhy','137/MEE','Little Flower Church','Kanjirapally'),(1483,'Megalathur','217/MEG','Our Lady of Refuge Church','Kumbakonam'),(1484,'Mekkad','139/MEK','St. Mary Church','Ernakulam-Angamaly'),(1485,'Mekkadampu','140/MEK','St. Jude Church','Kothamangalam'),(1486,'Mekkalur','205/MEK','Immaculate Conception Church','Vellore'),(1487,'Mekkarai','138/MEK','St. George\'s Church','Thuckalay'),(1488,'MelaiIandakulam','212/MEL','Sacred Heart of Jesus Church','Palayamkottai'),(1489,'Melameignanapuram','212/MEA','St. James Church','Palayamkottai'),(1490,'Mela-Peruvilai','210/MEP','Church of Our Lady of Rosary','Kottar'),(1491,'Melapudur','211/MEL','St. Mary Cathedral','Tiruchirappalli'),(1492,'Mela-Ramanputhur','210/MER','Church of Holy Family','Kottar'),(1493,'Melatheru Karai','165/MLK','St. Antony\'s Church','Marthandom'),(1494,'Mela Thiruppanthuruthy','217/MEL','Arputha Annai Church','Kumbakonam'),(1495,'Melechemmannar','141/MEL','St. Mary\'s Church','Idukki'),(1496,'Melma Nagar','203/MEL','Annai Vailankanni Church','Madras-Mylapore'),(1497,'Mel-Nariappanur','216/MLN','St Antony Church','Pondicherry-Cuddalore'),(1498,'Meloor','139/MEL','St. Joseph Church','Ernakulam-Angamaly'),(1499,'Meloram','137/MEL','St. Sebastian Church','Kanjirapally'),(1500,'Melpalai','215/MEL','Church of Our Lady of Assumption','Kuzhithurai'),(1501,'Mel-Pazhangur','216/MLP','St Antony Church','Pondicherry-Cuddalore'),(1502,'Melpudupakkam','205/MEL','Sacred Heart of Jesus Church','Vellore'),(1503,'Melpuram','215/MPM','Church of the Holy Guardian Angel','Kuzhithurai'),(1504,'Melrosapuram','207/MEL','Saghaya Madha Mission','Chingleput'),(1505,'Mel-Sitamur','216/MLS','Our Lady of Lourdes Church','Pondicherry-Cuddalore'),(1506,'Melukavumattam','136/MEL','St. Thomas Church','Palai'),(1507,'Melur','208/MEL','Christ the King Church','Madurai'),(1508,'Melvazhi','216/MEL','St Francis Xavier Church','Pondicherry-Cuddalore'),(1509,'Memalur','216/MEM','Our Lady of Mount Carmel Church','Pondicherry-Cuddalore'),(1510,'Memury','142/MEM','Little Flower Church','Kottayam'),(1511,'Menonpara','204/MEN','Holy Cross Church','Coimbatore'),(1512,'Meppara','137/MEP','Lourdu Matha Church','Kanjirapally'),(1513,'Metalavadi','206/MET','Sacred Heart Church','Ootacamund'),(1514,'Methotty','140/MET','St. Paul Church','Kothamangalam'),(1515,'Mettuguda','190/MET','St. Anthony Church','Hyderabad'),(1516,'Mettupalayam','146/MPM','St. Joseph Church','Ramanathapuram'),(1517,'Mettupalayam','204/MET','Miraculous Grotto of Annai Vailankanni Shrine','Coimbatore'),(1518,'Mettupatty','214/MET','Seven Dolours Church','Dindigul'),(1519,'Mettur Dam','218/MET','Our Lady of Assumption Church','Salem'),(1520,'Mettur-Podanur','204/MEU','Our Lady of Mount Carmel Church','Coimbatore'),(1521,'Mevelloor','139/MEV','Mary Immaculate Church','Ernakulam-Angamaly'),(1522,'Mevida','136/MEV','St. Mary Church','Palai'),(1523,'Meyyapuram','219/MEY','St Sebastian Church','Thanjavur'),(1524,'Mezhacode','138/MEZ','St. Francis Assisi Church','Thuckalay'),(1525,'MH Colony','203/MHC','Ascension Church','Madras-Mylapore'),(1526,'Michaelgiri','142/MIC','St. Michael Church','Kottayam'),(1527,'Michaelpalayam','206/MIC','St Michael Church','Ootacamund'),(1528,'Michaelpalayam','208/MIC','St. Michael Church','Madurai'),(1529,'Michaelpattanam','213/MIC','St. Michael Church','Sivagangai'),(1530,'Michaelpatti','217/MIC','St. Michael\'s Church','Kumbakonam'),(1531,'Michaelpuram','216/MIC','St Michael Church','Pondicherry-Cuddalore'),(1532,'Midalakadu','210/MID','Church of Good Shepherd','Kottar'),(1533,'Midalam-Kil','210/MIK','Church of St Joseph','Kottar'),(1534,'Midalam-Mel','210/MIM','Church of Most Holy Trinity','Kottar'),(1535,'Minjur','203/MIN','Our Lady of Perpetual Help Church','Madras-Mylapore'),(1536,'Mithrakary','135/MIT','St. Xavier Church','Changanacherry'),(1537,'Miyapur','190/MIY','Our Lady of Rosary Church','Hyderabad'),(1538,'M Kottur','209/MKT','St Antony Church','Tuticorin'),(1539,'Mlamala','137/MLA','Fatima Matha Church','Kanjirapally'),(1540,'Mogappair','203/MOG','Holy Cross Church','Madras-Mylapore'),(1541,'Mogappair West','203/MOA','St Anthony Church','Madras-Mylapore'),(1542,'Molasur (Vincentians)','207/MOL','St. Joseph\'s Church','Chingleput'),(1543,'Monippally','142/MON','Sacred Heart Church','Kottayam'),(1544,'Monippally','136/MON','St. Thomas Church','Palai'),(1545,'Mookaiyur','213/MOO','St. James Church','Sivagangai'),(1546,'Mookkannoor','139/MOO','St. Mary Church','Ernakulam-Angamaly'),(1547,'Moolamattom','136/MOO','St. George Forane Church','Palai'),(1548,'Moolangudi','219/MOO','St Joseph Church','Thanjavur'),(1549,'Moonnani','136/MNA','St. Peter Church','Palai'),(1550,'Moonnilavu','136/MOL','St. Mary Church','Palai'),(1551,'Moovanur','219/MOV','Our Lady of Refuge Church','Thanjavur'),(1552,'Moozhikkulam','139/MOZ','St. Mary Church','Ernakulam-Angamaly'),(1553,'Moozhoor','136/MOZ','St. Mary Church','Palai'),(1554,'Morai','203/MOR','St Theresa of the Child Jesus Church','Madras-Mylapore'),(1555,'Morakkala','139/MOR','St. Mary Church','Ernakulam-Angamaly'),(1556,'Mosavadi','205/MOS','St Joseph Church','Vellore'),(1557,'Moula Ali','190/MOU','St Joseph Church','Hyderabad'),(1558,'Mount Pleasant','206/MOU','Sagayamatha Church','Ootacamund'),(1559,'MPT Quarters','203/MPT','Blessed Sacrament Church','Madras-Mylapore'),(1560,'Mrala','142/MRA','Ss. Peter & Paul Church','Kottayam'),(1561,'Mudavoor','140/MUD','St. Joseph Church','Kothamangalam'),(1562,'Mudfort','190/MUD','St. Anthony Church','Hyderabad'),(1563,'Mudianur','206/MUD','St Thomas Church','Ootacamund'),(1564,'Mudichur','207/MUD','Holy Family Church','Chingleput'),(1565,'Mudiyoorkkara','135/MUD','Holy Family Church','Changanacherry'),(1566,'Mugaiyur','216/MUG','St Francis Xavier Church','Pondicherry-Cuddalore'),(1567,'Muhamma','135/MUH','St. George Church','Changanacherry'),(1568,'Mukkalampadu','215/MUK','Church of Our Lady of Sorrows','Kuzhithurai'),(1569,'Mukkoottukal','138/MUK','Holy Family Church','Thuckalay'),(1570,'Mukkoottuthara','137/MUK','St. Thomas Church','Kanjirapally'),(1571,'Mukkudal','165/MKL','St. Benedict\'s Church','Marthandom'),(1572,'Mukkudam','141/MUK','St. Sebastian\'s Church','Idukki'),(1573,'Mukkulam','137/MKL','St. George Church','Kanjirapally'),(1574,'Mulagumoodu','215/MDU','Church of Our Lady of Nativity','Kuzhithurai'),(1575,'Mulakaramedu','141/MUL','St. Martin de Porres Church','Idukki'),(1576,'Mulakulam','136/MUL','St. Mary Church','Palai'),(1577,'Mulakuvally','141/MLY','St. Joseph\'s Church','Idukki'),(1578,'Mulamkunnu','137/MUL','Infant Jesus Church','Kanjirapally'),(1579,'Mulappuram','140/MUL','St. Jude Church','Kothamangalam'),(1580,'Mulavilai','215/MUV','Church of Christ the King','Kuzhithurai'),(1581,'Mullaikudi','211/MUL','Adaikala Matha Church','Tiruchirappalli'),(1582,'Mullanganavilai','215/MUL','Church of St. Antony','Kuzhithurai'),(1583,'Mullaringad','140/MLG','BVM of Lourdes Church','Kothamangalam'),(1584,'Mulli','206/MUL','St Thomas Church','Ootacamund'),(1585,'Mullipadi','214/MUL','St Joseph Church','Dindigul'),(1586,'Munchirai','138/MCH','St. George Cathedral','Thuckalay'),(1587,'Munchirai','215/MUN','Church of Our Lady of Good Health','Kuzhithurai'),(1588,'Mundakayam','137/MUN','Our Lady of Dolours Forane Church','Kanjirapally'),(1589,'Mundankal','136/MUN','St. Dominic Church','Palai'),(1590,'Mundanmuddy','140/MUN','St. Mary Church','Kothamangalam'),(1591,'Mundanthanam','135/MUN','St. Antony Church','Changanacherry'),(1592,'Munderi','142/MUN','St. Stephen Church','Kottayam'),(1593,'Mundiyeruma','137/MDY','Assumption Church','Kanjirapally'),(1594,'Mundupalam','135/MUA','St. Mary Church','Changanacherry'),(1595,'Munjikkal','208/MUN','Sacred Heart Church','Madurai'),(1596,'Munnar','141/MUN','St. Michael\'s Church','Idukki'),(1597,'Munnayampatti','219/MUN','St Antony Church','Thanjavur'),(1598,'Munnur','216/MUN','Immaculate Conception Church','Pondicherry-Cuddalore'),(1599,'Muppaiyur','213/MUP','Our Lady of Grace Church','Sivagangai'),(1600,'Muppathadam (Edayar)','139/MUP','Holy Angels Church','Ernakulam-Angamaly'),(1601,'Murasancode','215/MUR','Church of Our Lady of Mt. Carmel','Kuzhithurai'),(1602,'Murickassery','141/MUR','St. Mary\'s Church','Idukki'),(1603,'Murikkumthotty','141/MRK','St. Maria Goretti Church','Idukki'),(1604,'Muringoor','139/MUR','St. Sebastian Church','Ernakulam-Angamaly'),(1605,'Musiri','217/MUS','Sacred Heart Church','Kumbakonam'),(1606,'Muthaiyapuram','209/MUT','St Michael Church','Tuticorin'),(1607,'Muthalagupatty','214/MUT','St Antony Church','Dindigul'),(1608,'Muthalakodam','140/MUT','St. George Forane Church','Kothamangalam'),(1609,'Muthalar','165/MTR','Sacred Heart Church','Marthandom'),(1610,'Muthamizh Nagar','203/MUT','Our Lady of Health Church','Madras-Mylapore'),(1611,'Muthandipatty','219/MUT','St Peter & Paul Church','Thanjavur'),(1612,'Muthangi','190/MUT','Divine Word Church','Hyderabad'),(1613,'Muthapudupet-Avadi','203/MUH','St Peter & Paul Church','Madras-Mylapore'),(1614,'Muthialpet','216/MUT','Our Lady of Rosary Church','Pondicherry-Cuddalore'),(1615,'Mutholapuram','136/MUT','St. Sebastian Church','Palai'),(1616,'Mutholy','136/MTH','St. George Church','Palai'),(1617,'Muthupattanam','213/MUH','St. Antony\'s Church','Sivagangai'),(1618,'Muthupettai','213/MUT','Kanikkai Matha Church','Sivagangai'),(1619,'Muthupudayanpatti','211/MUT','Our Lady of Good Health Church','Tiruchirappalli'),(1620,'Muttaikadu','215/MUT','Church of St. Francis Xavier','Kuzhithurai'),(1621,'Muttar','135/MUT','Immaculate Conception Church','Changanacherry'),(1622,'Muttar New','135/MTN','St. Thomas Church','Changanacherry'),(1623,'Muttar Old','135/MTO','St. George Church','Changanacherry'),(1624,'Muttathiparambu','139/MUT','St. Antony Church','Ernakulam-Angamaly'),(1625,'Muttathupara','140/MPR','St. Mary Church','Kothamangalam'),(1626,'Muttom','139/MTM','St. Mary Church','Ernakulam-Angamaly'),(1627,'Muttom','142/MUT','St. Mary\'s Church','Kottayam'),(1628,'Muttom','210/MUT','Church of All Saints','Kottar'),(1629,'Muttuchira','136/MCH','Holy Ghost Forane Church','Palai'),(1630,'Muttukadu','141/MUT','St. George\'s Church','Idukki'),(1631,'Muttukadu','207/MUT','Our Lady of Lourdes Church','Chingleput'),(1632,'Muvattupuzha','140/MUV','Holy Magi Forane Church','Kothamangalam'),(1633,'Muvattupuzha East','140/MUE','Nirmala Matha Church','Kothamangalam'),(1634,'Muzhucode','138/MUZ','St. Thomas Church','Thuckalay'),(1635,'Mylacode','215/MYL','Church of Our Lady of Mt. Carmel','Kuzhithurai'),(1636,'Mylapore-Luz','203/MYL','Our Lady of Light Shrine','Madras-Mylapore'),(1637,'Naalaamkattalai','212/NAA','St. Antony\'s Church','Palayamkottai'),(1638,'Nacharam','190/NAC','St. Pius X Church','Hyderabad'),(1639,'Nadaikkavu','165/NDK','Christuraja Church','Marthandom'),(1640,'Nadel','139/NDL','Little Flower Church','Ernakulam-Angamaly'),(1641,'NAD Puram','139/NAD','St. Mary Church','Ernakulam-Angamaly'),(1642,'Nadukani','140/NAD','St. Thomas Church','Kothamangalam'),(1643,'Nadukara','140/NAK','St. Mathew Church','Kothamangalam'),(1644,'Naduthuruthu','139/NDT','St. Antony Church','Ernakulam-Angamaly'),(1645,'Naduvalur','217/NAD','St. Joseph\'s Church','Kumbakonam'),(1646,'Naduvattam','206/NAD','St Sebastian Church','Ootacamund'),(1647,'Naduvattom','139/NVT','St. Antony Church','Ernakulam-Angamaly'),(1648,'Nagacode','215/NAG','Church of St. Antony','Kuzhithurai'),(1649,'Nagalapuram','209/NAG','Our Lady of Rosary Church','Tuticorin'),(1650,'Nagalur','218/NAG','Sagayamatha Church','Salem'),(1651,'Nagalur','206/NAG','St Sebastian Church','Ootacamund'),(1652,'Nagamalai Pudukottai','208/NAG','Mary Queen of Peace Church','Madurai'),(1653,'Nagamangalam','211/NAG','Divine Mercy Church','Tiruchirappalli'),(1654,'Nagapattinam','219/NAG','Our Lady of Lourdes Church','Thanjavur'),(1655,'Nagarikathan','213/NAG','St. Antony of Padua Church','Sivagangai'),(1656,'Nagercoil','138/NAG','St. Alphonsa\'s Church','Thuckalay'),(1657,'Nagercoil','210/NAG','Church of Sacred Heart','Kottar'),(1658,'Nagore','219/NAR','Our Lady of Fatima Church','Thanjavur'),(1659,'Nakapuzha','140/NAP','Mother of Mercy Church','Kothamangalam'),(1660,'Nalattinputhur','212/NAL','Our Lady of Perpetual Help Church','Palayamkottai'),(1661,'Nallamanayakkanpatty','214/NAL','St Antony Church','Dindigul'),(1662,'Nallathanny','137/NAL','Holy Family Church','Kanjirapally'),(1663,'Nallayanpuram','215/NAL','Church of Good Shepherd','Kuzhithurai'),(1664,'Nallur','205/NAL','St Antony Church','Vellore'),(1665,'Nalpathimala','135/NAL','St. Thomas Church','Changanacherry'),(1666,'Nalukody','135/NAU','St. Thomas Church','Changanacherry'),(1667,'Namagiripettai','218/NAM','St. Joseph\'s Church','Salem'),(1668,'Namakkal','218/NAA','Christ the King Church','Salem'),(1669,'Namanasamudram','219/NAM','Infant Jesus Church','Thanjavur'),(1670,'Nambiakulam','136/NAM','St. Thomas Mount Church','Palai'),(1671,'Nammalwarpet','203/NAM','Sagayamatha Church','Madras-Mylapore'),(1672,'Nanakudi','213/NAN','Immaculate Conception Church','Sivagangai'),(1673,'Nandambakkam','207/NAN','Annai Velankanni Church','Chingleput'),(1674,'Nandimedu','206/NAN','St Thomas Church','Ootacamund'),(1675,'Nandrakal','190/NAN','St. Paul the Hermit Church','Hyderabad'),(1676,'Nangathur','216/NAN','Our Lady of Periyanayagi Church','Pondicherry-Cuddalore'),(1677,'Nanguneri','209/NAN','Christ the King Church','Tuticorin'),(1678,'Nanjanadu','206/NAJ','St Theresa Church','Ootacamund'),(1679,'Nanjur','211/NAN','Our Lady of Dolours Church','Tiruchirappalli'),(1680,'Nanmangalam - Kovilambakkam','207/NGM','St. Stephen\'s Catholic Church','Chingleput'),(1681,'Narakakanam','141/NAR','St. Joseph\'s Church','Idukki'),(1682,'Narakal','139/NAR','St. Mary Church','Ernakulam-Angamaly'),(1683,'Narasinganur','216/NAR','St Therese of Child Jesus Church','Pondicherry-Cuddalore'),(1684,'Narasingapuram','205/NAR','St Joseph Church','Vellore'),(1685,'Narasingapuram','203/NAR','St Antony Church','Madras-Mylapore'),(1686,'Narayankhed','190/NAR','St. Arnold Church (QuasiParish)','Hyderabad'),(1687,'Narbonapuram','135/NAB','St. Sebastian Church','Changanacherry'),(1688,'Nariampara','137/NAR','Holy Cross Church','Kanjirapally'),(1689,'Narianganam','136/NAR','St. Mary Magdalene Church','Palai'),(1690,'Narikkallu','135/NAR','St. Mary Church','Changanacherry'),(1691,'Nasranipuram','137/NAS','St. Mathew Church','Kanjirapally'),(1692,'Natham','214/NAT','St Peter Church','Dindigul'),(1693,'Nattalam','165/NTL','St. Amalorpova Matha Church','Marthandom'),(1694,'Nattalam Shrine','215/NAT','Martyr Devasahayampillai Shrine','Kuzhithurai'),(1695,'Nattarkulam','209/NAT','St Joseph Church','Tuticorin'),(1696,'Navalkadu','165/NKD','Annai Vailankanni Matha Church','Marthandom'),(1697,'Nayarambalam','139/NAY','Immaculate Heart Church','Ernakulam-Angamaly'),(1698,'Nayarambalam North','139/NYN','Immaculate Conception Church','Ernakulam-Angamaly'),(1699,'Nayathode','139/NYD','St. Joseph Church','Ernakulam-Angamaly'),(1700,'Nazareth','135/NAZ','St. Jerome Church','Changanacherry'),(1701,'Nazareth Hill','140/NAZ','Infant Jesus Church','Kothamangalam'),(1702,'Nazareth Nagar','203/NAZ','Holy Family Church','Madras-Mylapore'),(1703,'Nazreth','141/NAZ','St. Joseph\'s Church','Idukki'),(1704,'Nazrethvalley','141/NZV','Holy Family Church','Idukki'),(1705,'N.D. Des Anges','216/NDD','Notre Dame des Anges Church','Pondicherry-Cuddalore'),(1706,'Nediakad','140/NED','Little Flower Church','Kothamangalam'),(1707,'Nediasala','140/NEI','BVM of Nativity Church','Kothamangalam'),(1708,'Nedumanny','135/NEU','Fatima Matha Church','Changanacherry'),(1709,'Nedumgampet','216/NED','Our Lady of Health Church','Pondicherry-Cuddalore'),(1710,'Nedumkandam','141/NED','St. Sebastian\'s Church','Idukki'),(1711,'Nedumkunnam','135/NEM','St. John the Baptist Forane Church','Changanacherry'),(1712,'Nedumon','135/NED','St. Mary Church','Changanacherry'),(1713,'Nedumprakad','139/NED','St. Thomas Church','Ernakulam-Angamaly'),(1714,'Nedungad','139/NDG','St. Augustine Church','Ernakulam-Angamaly'),(1715,'Nedungapra','140/NEU','St. Antony Church','Kothamangalam'),(1716,'Nedungulam','209/NED','Holy Redeemer Church','Tuticorin'),(1717,'Nedunoor','190/NED','St. Vincent Church','Hyderabad'),(1718,'Neduvannoor','139/NDN','St. Mary Church','Ernakulam-Angamaly'),(1719,'Needamangalam','219/NEE','Christ the King Church','Thanjavur'),(1720,'Neela Camp','190/NEE','Maria Rani Church','Hyderabad'),(1721,'Neelappara','136/NEE','St. Mary Church','Palai'),(1722,'Neeleswaram','139/NEE','Assumption Church','Ernakulam-Angamaly'),(1723,'Neelivayal','141/NEE','St. Mary\'s Church','Idukki'),(1724,'Neeloor','136/NLR','St. Francis Xavier Church','Palai'),(1725,'Neendakara','139/NDK','St. Martin de Porres Church','Ernakulam-Angamaly'),(1726,'Neendapara','140/NEE','BVM Immaculate Conception Church','Kothamangalam'),(1727,'Neendoor','139/NEO','St. Joseph Church','Ernakulam-Angamaly'),(1728,'Neendoor','142/NEE','St. Michael Church','Kottayam'),(1729,'Neeramthanam','136/NRM','St. Thomas Church','Palai'),(1730,'Neericad','142/NER','Our Lady of Lourdes Church','Kottayam'),(1731,'Neerikode','139/NER','St. Sebastian Church','Ernakulam-Angamaly'),(1732,'Neermulai','219/NER','St Xavier Church','Thanjavur'),(1733,'Neerpair','207/NEE','Jeyarakkini Madha Church','Chingleput'),(1734,'Nelliani','136/NEL','St. Sebastian Church','Palai'),(1735,'Nelliankulam','205/NEL','Christ the King Church','Vellore'),(1736,'Nellikuppam','216/NEL','St Joesph Church','Pondicherry-Cuddalore'),(1737,'Nellimarathupatti','220/NEL','Our Lady of Lourdes Church','Dharmapuri'),(1738,'Nellimattam','140/NEL','St. Joseph Church','Kothamangalam'),(1739,'Nellippara','141/NEL','St. Francis Assisi Church','Idukki'),(1740,'Nellitope','216/NEI','Assumption Church','Pondicherry-Cuddalore'),(1741,'Nelliyady','142/NEL','St. Stephen Church','Kottayam'),(1742,'Nemilicherry','207/NEM','Risen Christ Church','Chingleput'),(1743,'Nemmara','204/NEM','St Sebastian Church','Coimbatore'),(1744,'Neriamangalam','140/NER','St. Joseph the Worker Church','Kothamangalam'),(1745,'Nesapakkam','203/NES','St Anne Church','Madras-Mylapore'),(1746,'Netta','138/NET','St. Thomas Church','Thuckalay'),(1747,'Nettigudy','141/NET','St. Thomas Church','Idukki'),(1748,'Nettimedu','141/NDU','Little Flower Church','Idukki'),(1749,'Nettinampilly','139/NET','St. Maximilian Kolbe Church','Ernakulam-Angamaly'),(1750,'Nettithozhu','137/NET','St. Isidore Church','Kanjirapally'),(1751,'Nettoor','139/NTO','St. Sebastian Church','Ernakulam-Angamaly'),(1752,'Nettur','212/NET','Immaculate Heart of Mary Church','Palayamkottai'),(1753,'New Ellis Nagar','208/NEW','St. Sebastian Church','Madurai'),(1754,'Neyveli Township','216/NEY','Presentation Church','Pondicherry-Cuddalore'),(1755,'Neyyassery','140/NEY','St. Sebastian Church','Kothamangalam'),(1756,'Neyyattussery','137/NEY','St. George Church','Kanjirapally'),(1757,'NGO Colony','214/NGO','Punitha Arockia Annai Aalayam','Dindigul'),(1758,'NGO Quarters','139/NGO','St. Antony Church','Ernakulam-Angamaly'),(1759,'Nilackal','137/NIL','Marthoma Sleeha Church','Kanjirapally'),(1760,'Nilakottai','208/NIL','St. Joseph Church','Madurai'),(1761,'Niranam','135/NIR','Thomasleeha Pilgrim Centre','Changanacherry'),(1762,'Niravu','137/NIR','St. Mary Church','Kanjirapally'),(1763,'Nirmalagiri','137/NMA','St. Antony Church','Kanjirapally'),(1764,'Nirmalapuram','137/NLA','Holy Family Church','Kanjirapally'),(1765,'Nirmalapuram','135/NIM','St. Mary Church','Changanacherry'),(1766,'Nithiravilai','138/NTV','Jayamatha Forane Church','Thuckalay'),(1767,'Nizamabad','190/NIZ','St. Ann Church','Hyderabad'),(1768,'Njalookara','139/NJA','St. Peter Church','Ernakulam-Angamaly'),(1769,'Njarakad','140/NJA','St. Joseph Church','Kothamangalam'),(1770,'Njaralloor','139/NJR','St. Joseph Church','Ernakulam-Angamaly'),(1771,'Njayappilly','140/NJY','St. Antony Church','Kothamangalam'),(1772,'Njeezhoor','142/NJE','Infant Jesus Church','Kottayam'),(1773,'Nochikulam','209/NOC','St Michael Church','Tuticorin'),(1774,'Nochiodaipatty','214/NOC','St Antony of Padua Church','Dindigul'),(1775,'Noothapur','217/NOO','Our Lady of Refuge Church','Kumbakonam'),(1776,'North Gate Thanjavur','219/NOR','St John de Britto Church','Thanjavur'),(1777,'N Panjampatty','214/NPA','Sacred Heart of Jesus Church','Dindigul'),(1778,'N Poolampatti','211/NPO','St John the Baptist Church','Tiruchirappalli'),(1779,'N.R. City','142/NRC','St. Mary\'s Church','Kottayam'),(1780,'Nuchiyad','142/NUC','St. Joseph Church','Kottayam'),(1781,'Nullivilai','215/NUL','Church of Our Lady of Mt. Carmel','Kuzhithurai'),(1782,'Nungambakkam','203/NUN','St Theresa Church','Madras-Mylapore'),(1783,'Odayanchal','142/ODA','St. George Church','Kottayam'),(1784,'Oddanchatram','214/ODD','Annai Vailankanni Church','Dindigul'),(1785,'Odiyathur','216/ODI','St Mary Magdalene Church','Pondicherry-Cuddalore'),(1786,'Okkur','213/OKK','St. Francis of Assisi Church','Sivagangai'),(1787,'OK Mandapam','204/OKM','St Theresa of Child Jesus Church','Coimbatore'),(1788,'Olanad','139/OLA','Our Lady of Perpetual Succour Church','Ernakulam-Angamaly'),(1789,'Old Perungalathur','207/OLD','Christ the King Church','Chingleput'),(1790,'Olessa','142/OLE','St. Antony of Paduva Church','Kottayam'),(1791,'Oliamangalam','219/OLI','Our Lady of Fatima Church','Thanjavur'),(1792,'Olive Mount','139/OLI','St. Thomas Church','Ernakulam-Angamaly'),(1793,'Ongur (Jesuits)','207/ONG','Our Lady of Victory Church','Chingleput'),(1794,'Onnalvadi','220/ONN','Sagaya Matha Church','Dharmapuri'),(1795,'Onnatti','206/ONN','Sagaya Matha Church','Ootacamund'),(1796,'Oonnukal','140/OON','Little Flower Forane Church','Kothamangalam'),(1797,'Oragadam','207/ORA','Sacred Heart Church','Chingleput'),(1798,'Oraslem','139/ORA','Mary Immaculate Church','Ernakulam-Angamaly'),(1799,'Orathanadu','219/ORA','Our Lady of Assumption Church','Thanjavur'),(1800,'Ordinance Factory','211/ORD','Annai Vailankanni Church','Tiruchirappalli'),(1801,'Orikkottai','213/ORI','Our Lady of Rosary Church','Sivagangai'),(1802,'Oriyur','213/ORY','St. John de Britto Church','Sivagangai'),(1803,'Othaiyal','208/OTH','Infant Jesus Church','Madurai'),(1804,'Othakkadai','208/MAD','St. John de Britto Church','Madurai'),(1805,'Othara','142/OTH','Little Flower Church','Kottayam'),(1806,'Ottalloor','140/OTT','St. Mary Church','Kothamangalam'),(1807,'Ottanthangal','207/OTT','St. Antony\'s Church','Chingleput'),(1808,'Ottappunna','139/OTT','St. Mary Church','Ernakulam-Angamaly'),(1809,'Otteri','203/OTT','St Sebastian Church','Madras-Mylapore'),(1810,'Paalissery','139/PAA','St. Sebastian Church','Ernakulam-Angamaly'),(1811,'Pacha-Checkidkkad','135/PAC','Lourdu Matha Church','Changanacherry'),(1812,'Pachakad','135/PAK','Sacred Heart Church','Changanacherry'),(1813,'Pachalam','139/PAC','St. Pius X Church','Ernakulam-Angamaly'),(1814,'Pachira','142/PAC','St. Mary\'s Church','Kottayam'),(1815,'Packiapuram','208/PAC','Our Lady of Good Health Church','Madurai'),(1816,'Packiapuram','215/PAC','Church of St. Eusthachius','Kuzhithurai'),(1817,'Pacode','215/PAO','Church of the Sacred Heart of Jesus','Kuzhithurai'),(1818,'Padaharam','135/PDH','St. Joseph Church','Changanacherry'),(1819,'Padalur','217/PAD','St. Francis of Assisi Church','Kumbakonam'),(1820,'Padamugal','139/PAD','St. Maximilian Kolbe Church','Ernakulam-Angamaly'),(1821,'Padamugham','142/PAD','Sacred Heart Church','Kottayam'),(1822,'Padanilam','137/PAD','St. Sebastian Church','Kanjirapally'),(1823,'Padanthalumoodu','138/PTM','Sacred Heart Forane Church','Thuckalay'),(1824,'Padappai','207/PAD','Sahaya Annai Alayam','Chingleput'),(1825,'Padarnilam','215/PAD','Church of St. Pius X','Kuzhithurai'),(1826,'Padi-Mannurpet','203/PAD','Sahaya Annai Alayam','Madras-Mylapore'),(1827,'Padregudi','219/PAD','St James Church','Thanjavur'),(1828,'Paduva','136/PDV','St. Antony Church','Palai'),(1829,'Paduvapuram','141/PVP','St. Antony\'s Church','Idukki'),(1830,'Paduvapuram','135/PAV','St. Antony Church','Changanacherry'),(1831,'Pagaianchan','213/PAG','St. Antony Church','Sivagangai'),(1832,'Paika','136/PKA','St. Joseph Church','Palai'),(1833,'Painavu','141/PAI','St. Thomas Church','Idukki'),(1834,'Paingottoor','140/PAI','St. Antony Forane Church','Kothamangalam'),(1835,'Paingulam','136/PAI','St. Mary Church','Palai'),(1836,'Paippadu','135/PAI','Lourdu Matha Church','Changanacherry'),(1837,'Pala','136/PAA','St. Thomas Cathedral','Palai'),(1838,'Palacode','220/PAL','Christu Arasar Church','Dharmapuri'),(1839,'Palakad','136/PKD','Cherupushpam Church','Palai'),(1840,'Palakattumala','136/PKT','Mother of Perpetual Help Church','Palai'),(1841,'Palakkarai','211/PAL','Holy Redeemer Basilica','Tiruchirappalli'),(1842,'Palakurichi','211/PAK','St James the Apostle Church','Tiruchirappalli'),(1843,'Palamalai Estate','208/PAL','St Michael Church','Madurai'),(1844,'Palampra','137/PAL','Gethsemane Church','Kanjirapally'),(1845,'Palanganatham','208/PAN','St. Antony Church','Madurai'),(1846,'Palani','214/PAL','St Michael the Archangel Church','Dindigul'),(1847,'Palapilly','139/PAL','St. Mary Church','Ernakulam-Angamaly'),(1848,'Palappallam','138/PAP','Christ the King Church','Thuckalay'),(1849,'Palapra','137/PLP','Vimala Matha Church','Kanjirapally'),(1850,'Palar','141/PAL','St. George\'s Church','Idukki'),(1851,'Palarivattom','139/PLV','St. Martin de Porres Church','Ernakulam-Angamaly'),(1852,'Palathuruth','142/PAL','St. Theresa Church','Kottayam'),(1853,'Palavakkam','207/PAL','St. Antony\'s Shrine','Chingleput'),(1854,'Palavilai','165/PLV','St. Xavier\'s Church','Marthandom'),(1855,'Palavilai','215/PAL','Church of St. Antony','Kuzhithurai'),(1856,'Palayakoil','211/PAY','Seven Dolours Church','Tiruchirappalli'),(1857,'Palayam','136/PAL','St. Michael Church','Palai'),(1858,'Palayam','217/PAL','St. Joseph\'s Church','Kumbakonam'),(1859,'Palayamkottai','219/PAL','Holy Rosary Church','Thanjavur'),(1860,'Palayamkottai','212/PKT','St. Francis Xavier Cathedral','Palayamkottai'),(1861,'Palladam','204/PAL','Our Lady of Vailankanni Church','Coimbatore'),(1862,'Palladam','146/PDM','St. Alphonsa Church','Ramanathapuram'),(1863,'Pallalakuppam','205/PAL','Mary Perpetual Help Church','Vellore'),(1864,'Pallam','210/PAL','Church of St Mathew','Kottar'),(1865,'Pallamthuruth','139/PLM','St. Mary Church','Ernakulam-Angamaly'),(1866,'Pallanad','141/PLN','Infant Jesus Church','Idukki'),(1867,'Pallapalayam','204/PAA','St Mary Church','Coimbatore'),(1868,'Pallathuruthy','135/PTH','St. Thomas Church','Changanacherry'),(1869,'Pallavaram','207/PAV','St. Francis Xavier\'s Church','Chingleput'),(1870,'Palliagaram','207/PAI','Sancta Maria Mission','Chingleput'),(1871,'Pallickamury','140/PAL','St. Theresa Church','Kothamangalam'),(1872,'Pallikaranai','207/PAK','Infant Jesus Church','Chingleput'),(1873,'Pallikkonam','138/PKM','Sacred Heart Church','Thuckalay'),(1874,'Pallikkoottumma','135/PKT','Fatima Matha Church','Changanacherry'),(1875,'Pallikonda','205/PAK','St Theresa of Child Jesus Church','Vellore'),(1876,'Pallikudathampatty','211/PAU','St James Church','Tiruchirappalli'),(1877,'Pallikunnu','135/PKN','St. Thomas Church','Changanacherry'),(1878,'Pallikunnu','141/PKN','St. Sebastian\'s Church','Idukki'),(1879,'Pallimughal','139/PGH','Infant Jesus of Prague Church','Ernakulam-Angamaly'),(1880,'Pallipalayam','218/PAL','St. Antony\'s Church','Salem'),(1881,'Pallippuram','139/PRM','St. Mary Church','Ernakulam-Angamaly'),(1882,'Pallippuram S','139/PLP','St. Sebastian Church','Ernakulam-Angamaly'),(1883,'Palliyady','215/PAY','Church of the Sacred Heart of Jesus','Kuzhithurai'),(1884,'Palluruthy','139/PLT','St. Mary Church','Ernakulam-Angamaly'),(1885,'Palnellore','207/PAN','Our Lady of Health Church','Chingleput'),(1886,'Palode','135/PAL','St. Mary Church','Changanacherry'),(1887,'Paloorkavu','137/PLO','St. George Church','Kanjirapally'),(1888,'Palugal','138/PGL','St. Thomas Church','Thuckalay'),(1889,'Paluthara','139/PLR','St. James Church','Ernakulam-Angamaly'),(1890,'Pamban','213/PAM','Arockia Annai Church','Sivagangai'),(1891,'Pammal','207/PAM','Christ the King Church','Chingleput'),(1892,'Pampadumpara','137/PAM','St. George Church','Kanjirapally'),(1893,'Pampady','135/PAM','Devamatha Church','Changanacherry'),(1894,'Pampanvilai','210/PAM','Church of Our Lady of Lourdes','Kottar'),(1895,'Panachamoodu','165/PCM','St. Joseph\'s Church','Marthandom'),(1896,'Panagudi','209/PAN','St Joseph Church','Tuticorin'),(1897,'Panakahalli','206/PAN','St Antony Church','Ootacamund'),(1898,'Panamkutty','141/PKT','St. Joseph\'s Church','Idukki'),(1899,'Panangad','139/PGD','Bharatha Rani Church','Ernakulam-Angamaly'),(1900,'Panapilavu','137/PAN','St. Joseph Church','Kanjirapally'),(1901,'Panavally','139/PVL','St. Augustine Church','Ernakulam-Angamaly'),(1902,'Panavally North','139/PVN','St. Joseph Church','Ernakulam-Angamaly'),(1903,'Panavilai','210/PAN','Holy Redeemer Church','Kuzhithurai'),(1904,'Panayampala','135/PYM','St. Sebastian Church','Changanacherry'),(1905,'Pandalur','206/PAA','St Francis Xavier Church','Ootacamund'),(1906,'Pandankary','135/PKR','St. Pius X Church','Changanacherry'),(1907,'Pandarakulam','212/PAN','St. John\'s Church','Palayamkottai'),(1908,'Pandhalam','135/PDL','Danahapally','Changanacherry'),(1909,'Pandian Nagar','208/PAI','St. Xavier Church','Madurai'),(1910,'Pandippara','141/PDR','St. Joseph\'s Church','Idukki'),(1911,'Pandravedu','203/PVD','St Joseph Church','Madras-Mylapore'),(1912,'Pandupara','139/PDP','St. Sebastian Church','Ernakulam-Angamaly'),(1913,'Pandy','135/PDY','Fatima Matha Church','Changanacherry'),(1914,'Pangada','135/PAN','Sacred Heart Church','Changanacherry'),(1915,'Panickamkudy','141/PKU','St. John Vianney Church','Idukki'),(1916,'Panikankuppam','216/PAN','Our Lady of Assumption Church','Pondicherry-Cuddalore'),(1917,'Pannaivilagam','219/PAN','Our Lady of Victory Church','Thanjavur'),(1918,'Panniarkutty','141/PAN','St. Mary\'s Church','Idukki'),(1919,'Pannimattam','140/PAN','St. Sebastian Church','Kothamangalam'),(1920,'Panniyal','142/PAN','St. Jude\'s Church','Kottayam'),(1921,'Pannur','203/PAN','Our Lady of Health Church','Madras-Mylapore'),(1922,'Panrutti','207/PAR','Sagaya Madha Alayam','Chingleput'),(1923,'Panthackal','139/PAN','Bl Mother Theresa Church','Ernakulam-Angamaly'),(1924,'Papanasam','217/PAP','St. Sebastian Shrine','Kumbakonam'),(1925,'Pappanallur','207/PAP','St. Theresa of Child Jesus Church','Chingleput'),(1926,'Pappireddipatti','220/PAP','Our Lady of Velankanni Church','Dharmapuri'),(1927,'Paracheri','165/PCH','St. Peter\'s Church','Marthandom'),(1928,'Paraicode','138/PAC','Christ the King Church','Thuckalay'),(1929,'Parakunnu','215/PAR','Church of the Sacred.Heart of Jesus','Kuzhithurai'),(1930,'Paral','135/PRL','St. Antony Metropolitan Church','Changanacherry'),(1931,'Paramakudi','213/PAR','Alangara Matha Church','Sivagangai'),(1932,'Paramathi','218/PAR','Amala Annai Church','Salem'),(1933,'Parambancherry','142/PAR','St. Stephen Church','Kottayam'),(1934,'Parampuzha','135/PRZ','Bethlehem Church','Changanacherry'),(1935,'Parappuram','139/PAR','St. George Church','Ernakulam-Angamaly'),(1936,'Parapuzha','140/PAR','St. Joseph Church','Kothamangalam'),(1937,'Parasur','205/PAR','St Francis Xavier Church','Vellore'),(1938,'Parathanam','136/PAR','Mother of Seven Dolours Church','Palai'),(1939,'Parathodu','141/PAR','St. George\'s Church','Idukki'),(1940,'Parathy','135/PRT','St. Alphonsa Church','Changanacherry'),(1941,'Pareekanny','140/PAE','St. Mary Church','Kothamangalam'),(1942,'Parel','135/PRE','St. Mary Church','Changanacherry'),(1943,'Parethitta','139/PRT','St. Sebastian Church','Ernakulam-Angamaly'),(1944,'Parigi','190/PAR','St. Gonzalo Garcia Church','Hyderabad'),(1945,'Park Town','203/PKT','St Anthony Church','Madras-Mylapore'),(1946,'Parolickal','135/PAR','St. George Church','Changanacherry'),(1947,'Parur-Kottakkavu','139/PRK','St. Thomas Forane Church','Ernakulam-Angamaly'),(1948,'Parur South','139/PRS','St. John the Baptist Church','Ernakulam-Angamaly'),(1949,'Paruthipattu','203/PAR','Our Lady of Assumption Church','Madras-Mylapore'),(1950,'Paruthiyur','219/PAR','St Antony Church','Thanjavur'),(1951,'Parvathipuram','210/PAR','Church of Infant Jesus','Kottar'),(1952,'Parvathipuram','165/PPM','St. Thainesi Matha Church','Marthandom'),(1953,'Pasupathipalayam','204/PAS','Our Lady of Mount Carmel Church','Coimbatore'),(1954,'Patancheru','190/PAT','St. Joseph Church','Hyderabad'),(1955,'Pathalapettai','211/PAT','St MaryÃ¢â‚¬â„¢s Scapular Church','Tiruchirappalli'),(1956,'Pathanamthitta','137/PAT','Mary Matha Forane Church','Kanjirapally'),(1957,'Pathanapuram','135/PAT','Mar Aprem Mission Church','Changanacherry'),(1958,'Pathiavaram','205/PAT','St Anne Church','Vellore'),(1959,'Pathinathapuram','209/PAH','St Jude Shrine','Tuticorin'),(1960,'Pathinathapuram','209/PAT','St Benedict Church','Tuticorin'),(1961,'Pathukani','138/PAK','St. Thomas Church','Thuckalay'),(1962,'Pattabiram','203/PTB','Our Lady of Health Church','Madras-Mylapore'),(1963,'Pattanam','139/PAT','Our Lady of Dolours Church','Ernakulam-Angamaly'),(1964,'Pattanamkurichy','217/PAT','Our Lady of Lourdes Church','Kumbakonam'),(1965,'Pattarivilai','215/PAT','Church of Our Lady of Snows','Kuzhithurai'),(1966,'Pattudaiyaniruppu','219/PAT','St Adaikala Annai Church','Thanjavur'),(1967,'Pattukkottai','219/PAU','Holy Redeemer Church','Thanjavur'),(1968,'Pavanamangalam','217/PAV','St. James Church','Kumbakonam'),(1969,'Pavithiram','205/PAV','Mary Help of Christians Church','Vellore'),(1970,'Pavoorchatiram','212/PAV','St. Antony\'s Church','Palayamkottai'),(1971,'Pavunjur','207/PAU','Holy Family Church','Chingleput'),(1972,'Payattupakka','135/PAY','Holy Family Church','Changanacherry'),(1973,'Payyanithottam','136/PAY','St. Alphonsa Church','Palai'),(1974,'Payyavoor','142/PAY','St. Sebastian Church','Kottayam'),(1975,'Payyavoor Town','142/PYA','St. Anne Church','Kottayam'),(1976,'Pazhampallichal','140/PAZ','BVM Assumption Church','Kothamangalam'),(1977,'Pazhanganad','139/PAZ','St. Augustine Church','Ernakulam-Angamaly'),(1978,'Pazhanjur-Poonamallee','203/PML','St Joseph Church','Madras-Mylapore'),(1979,'Pazhavangady','135/PAH','Mar Sleeva Forane Church','Changanacherry'),(1980,'Pazhayakayal','209/PAZ','Our Lady of Expectation Church','Tuticorin'),(1981,'Pazhaya Koratty','137/PAZ','St. Mary Church','Kanjirapally'),(1982,'Pazhayarikandam','141/PAZ','St. Sebastian\'s Church','Idukki'),(1983,'Pazhayeroor','135/PAZ','St. Thomas Church','Changanacherry'),(1984,'Pazhayidom','137/PAH','St. Michael Church','Kanjirapally'),(1985,'Pazhoor','139/PZO','St. Antony Church','Ernakulam-Angamaly'),(1986,'Pazhuthuruth','142/PAZ','St. Kuriakose Chapel','Kottayam'),(1987,'Pechipparai','215/PEC','Church of St. Joseph','Kuzhithurai'),(1988,'Pechipparai','165/PHP','St. George\'s Church','Marthandom'),(1989,'Peechanikad','139/PEE','St. Mary Church','Ernakulam-Angamaly'),(1990,'Peelamedu','204/PEE','St Sebastian Church','Coimbatore'),(1991,'Peermade','137/PEE','St. Mary Church','Kanjirapally'),(1992,'Pennadam','216/PEN','St Thomas Church','Pondicherry-Cuddalore'),(1993,'Penu','138/PEN','St. Mary\'s Church','Thuckalay'),(1994,'Perambalur','217/PER','Our Lady of Snows Church','Kumbakonam'),(1995,'Perambur','203/PER','Our Lady of Lourdes Shrine','Madras-Mylapore'),(1996,'Perambur','203/PMB','St Joseph Church','Madras-Mylapore'),(1997,'Peravallur','203/PVL','Risen Christ Church','Madras-Mylapore'),(1998,'Periakadu','210/PER','Church of St Antony','Kottar'),(1999,'Peria Kodivery','206/PER','St Francis Xavier Church','Ootacamund'),(2000,'Periakurichi','216/PER','St Francis Xavier Church','Pondicherry-Cuddalore'),(2001,'Perianolambai','216/PEA','Sagayamadha Church','Pondicherry-Cuddalore'),(2002,'Periapettu','216/PEO','St Antony Church','Pondicherry-Cuddalore'),(2003,'Periapuram','136/PAU','St. John the Baptist Church','Palai'),(2004,'Periasamypuram','209/PER','Our Lady of Nativity Church','Tuticorin'),(2005,'Periathalai','209/PES','Ss John & Stephen Church','Tuticorin'),(2006,'Periavilai','210/PEI','Church of St Vincent de Paul','Kottar'),(2007,'Perikkalloor','142/PER','St. Thomas Forane Church','Kottayam'),(2008,'Perinaickempalayam','146/PKM','Infant Jesus Church','Ramanathapuram'),(2009,'Perinchamkutty','141/PTY','St. Mary\'s Church','Idukki'),(2010,'Peringala','142/PRN','St. Stephen Church','Kottayam'),(2011,'Peringassery','140/PER','St. George Church','Kothamangalam'),(2012,'Peringazha','139/PER','St. Joseph Church','Ernakulam-Angamaly'),(2013,'Peringulam','136/PGM','Sacred Heart Church','Palai'),(2014,'Peringuzha','140/PEN','St. Joseph Church','Kothamangalam'),(2015,'Periya Anaikaraipatty','211/PEA','St Sebastian Church','Tiruchirappalli'),(2016,'Periyakanal','141/PER','Holy Trinity Church','Idukki'),(2017,'Periyakulam','208/PER','St. Patrick Church','Madurai'),(2018,'Periya Kulathupatty','211/PEK','Our Lady of Good Health Church','Tiruchirappalli'),(2019,'Periya Milaguparai','211/PEM','St James Church','Tiruchirappalli'),(2020,'Periyapalayam','203/PEY','Our Lady of Assumption Church','Madras-Mylapore'),(2021,'Periyarmugham','139/PGM','St. Andrew Church','Ernakulam-Angamaly'),(2022,'Periyar Vallakadavu','137/PER','St. Joseph Church','Kanjirapally'),(2023,'Periyavarseeli','217/PEI','Our Lady of Refuge Church','Kumbakonam'),(2024,'Peroor','142/PRO','St. Sebastian Church','Kottayam'),(2025,'Peroorkada','135/PER','Lourdes Hill Church','Changanacherry'),(2026,'Perumalmalai','208/PEI','St. Thomas Church','Madurai'),(2027,'Perumalpalayam','217/PEU','St. Sebastian Church','Kumbakonam'),(2028,'Perumanal','209/PEM','Our Lady of Visitation Church','Tuticorin'),(2029,'Perumanam','205/PER','Christ the King Church','Vellore'),(2030,'Perumannoor','140/PEU','St. George Church','Kothamangalam'),(2031,'Perumanoor','139/PMN','Our Lady of Lourdes Church','Ernakulam-Angamaly'),(2032,'Perumathur-Eraiyur','217/PEM','St. Antony of Padua Church','Kumbakonam'),(2033,'Perumballichira','140/PEM','St. Joseph Church','Kothamangalam'),(2034,'Perumballoor','140/PEB','St. Pius X Church','Kothamangalam'),(2035,'Perumbavoor','139/PRB','Mary Immaculate Church','Ernakulam-Angamaly'),(2036,'Perumchilampu','138/PCM','St. Thomas Church','Thuckalay'),(2037,'Perumkavu','135/PEU','St. Thomas Church','Changanacherry'),(2038,'Perumpannaiyur','219/PER','St Joseph Church','Thanjavur'),(2039,'Perumthuruth','136/PER','St. Mathew Church','Palai'),(2040,'Perunadu','137/PEU','St. Jude Church','Kanjirapally'),(2041,'Perundurai','204/PER','Holy Family Church','Coimbatore'),(2042,'Perunduraipattu','205/PEU','Our Lady of Presentation Church','Vellore'),(2043,'Perungalathur','207/PER','Infant Jesus Church','Chingleput'),(2044,'Perungozhi','207/PEU','St. Joseph\'s Church','Chingleput'),(2045,'Perungudi','207/PEN','St. Pius X Church','Chingleput'),(2046,'Perunkurichi','218/PER','Our Lady of Lourdes Church','Salem'),(2047,'Perunna','135/PEN','St. Antony Metropolitan Church','Changanacherry'),(2048,'Perunthenaruvi','137/PEN','St. Joseph Church','Kanjirapally'),(2049,'Perur Udayapatti','211/PEU','St Xavier Church','Tiruchirappalli'),(2050,'Peruvanthanam','137/PEV','St. Joseph Church','Kanjirapally'),(2051,'Peruvazhikkadavu','165/PZK','St. Francis Assisi Church','Marthandom'),(2052,'Pethotty','141/PET','St. Mary\'s Church','Idukki'),(2053,'Pettai','212/PET','St. Antony\'s Church','Palayamkottai'),(2054,'Pettaipalayam','218/PET','St. Cecily Church','Salem'),(2055,'Pettavaithalai','211/PET','Sacred Heart Church','Tiruchirappalli'),(2056,'Pezhumkandam','141/PEZ','St. Joseph\'s Church','Idukki'),(2057,'Pezhumpara','137/PEZ','Sacred Heart Church','Kanjirapally'),(2058,'Philgiri','135/PHI','St. Joseph Church','Changanacherry'),(2059,'Picket','190/PIC','Mother Mary Malankara Catholic Church','Hyderabad'),(2060,'Pilankalai','138/PKL','Little Flower Forane Church','Thuckalay'),(2061,'Pilankalai','165/PKL','Our Lady of Assumption Church','Marthandom'),(2062,'Pilankarai','138/PLK','Loretto Matha Church','Thuckalay'),(2063,'Pilavilai','215/PIL','Church of St. George','Kuzhithurai'),(2064,'Pillaithope','210/PIL','Church of St Joseph','Kottar'),(2065,'Pillavadanthai','219/PIL','St Antony Church','Thanjavur'),(2066,'Piravom','136/PIR','Little Flower Church','Palai'),(2067,'Piravom','142/PIR','Holy King Church','Kottayam'),(2068,'Pius Mount','136/PIU','St. Pius X Church','Palai'),(2069,'Pius Mount','142/PIU','St. Pius X Church','Kottayam'),(2070,'Pius Nagar','142/PSN','St. Stephen Church','Kottayam'),(2071,'Placherry','137/PLA','Fatima Matha Church','Kanjirapally'),(2072,'Plantation VI Block','139/PTN','St. Mary Church','Ernakulam-Angamaly'),(2073,'Plantation X Block','139/PLA','St. Sebastian Church','Ernakulam-Angamaly'),(2074,'Plassanal','136/PLA','St. Mary Church','Palai'),(2075,'Pochampally','220/POC','Sagaya Matha Church','Dharmapuri'),(2076,'Podanur','204/POD','St Joseph Church','Coimbatore'),(2077,'Podanur','146/PDN','St. Clotilda Church','Ramanathapuram'),(2078,'Podimattam','137/POD','St. Mary Church','Kanjirapally'),(2079,'Podippara','135/POD','Holy Family Church','Changanacherry'),(2080,'Pollachi','146/PLC','St. Paul Church','Ramanathapuram'),(2081,'Pollachi','204/POL','Our Lady of Lourdes Church','Coimbatore'),(2082,'Polur','205/POL','Sacred Heart Church','Vellore'),(2083,'Ponga','135/PON','Mar Sleeva Church','Changanacherry'),(2084,'Pongammoodu','135/POG','St. Alphonsa Church','Changanacherry'),(2085,'Ponkunnam','137/PON','Holy Family Church','Kanjirapally'),(2086,'Ponmalai','211/PON','St Joseph Church','Tiruchirappalli'),(2087,'Ponmudy','141/PON','St. Mary\'s Church','Idukki'),(2088,'Ponnamala','141/PML','St. Mary\'s Church','Idukki'),(2089,'Ponnamthanam','140/PON','Ss. Peter & Paul Church','Kothamangalam'),(2090,'Ponnappa Nadar Colony','210/PON','Church of Infant Jesus','Kottar'),(2091,'Ponnedathan','141/PND','St. Thomas Church','Idukki'),(2092,'Ponneri','203/PON','St James Church','Madras-Mylapore'),(2093,'Poochikadu','209/POO','St Antony Church','Tuticorin'),(2094,'Pookkayam','142/POO','St. George Church','Kottayam'),(2095,'Poolapatty','220/POO','St Sebastian Church','Dharmapuri'),(2096,'Poomattam','137/POO','St. Thomas Church','Kanjirapally'),(2097,'Poompozhil Nagar','203/POM','Amalorpava Matha','Madras-Mylapore'),(2098,'Poonamallee','203/POO','Christ the King Church','Madras-Mylapore'),(2099,'Poonamallee-Karayanchavadi','203/KAR','St John the Baptist Church','Madras-Mylapore'),(2100,'Poondi','217/POO','Poondi Matha Basilica','Kumbakonam'),(2101,'Poonithura','139/POO','St. James Church','Ernakulam-Angamaly'),(2102,'Poonjar','136/POO','St. Mary Forane Church','Palai'),(2103,'Poonthope','135/POO','St. Francis Assisi Church','Changanacherry'),(2104,'Poonthoppu','165/POO','St. George\'s Church','Marthandom'),(2105,'Pooppara','141/POO','Vailankanni Matha Church','Idukki'),(2106,'Poothaly','142/PTH','St. James Church','Kottayam'),(2107,'Poottetty','215/POO','Church of St. Antony of Padua','Kuzhithurai'),(2108,'Poovakulam','136/PVK','St. Mary Church','Palai'),(2109,'Poovarany','136/PVR','Sacred Heart Church','Palai'),(2110,'Poovathodu','136/POD','St. Thomas Church','Palai'),(2111,'Pooyamkutty','140/POO','St. George Church','Kothamangalam'),(2112,'Poozhikol','142/PZH','St. Luke Church','Kottayam'),(2113,'Porulur','204/POR','St Joseph Church','Coimbatore'),(2114,'Porur','203/POR','St Joseph Church','Madras-Mylapore'),(2115,'Porur- Nugumbal','207/POR','Sacred Heart Mission','Chingleput'),(2116,'Pothakalanvillai','209/POT','Kalyana Matha Church','Tuticorin'),(2117,'Pothanikad','140/POT','St. Francis Xavier Church','Kothamangalam'),(2118,'Pothiakkara','139/POT','St. Joseph Church','Ernakulam-Angamaly'),(2119,'Pothukuzhy','142/POT','St. Maxmillian Kolbe Church','Kottayam'),(2120,'Pottankadu','141/POT','St. Sebastian\'s Church','Idukki'),(2121,'Pozhichalur (Precious Blood Missionaries)','207/POZ','Our Lady of Health Church','Chingleput'),(2122,'Pozhikarai','210/POZ','Church of St Antony','Kottar'),(2123,'Pragasapuram','209/PRA','Our Lady of Assumption Church','Tuticorin'),(2124,'Prasadagiri','139/PRA','St. Sebastian Church','Ernakulam-Angamaly'),(2125,'Prasannapuram','139/PNP','Holy Family Church','Ernakulam-Angamaly'),(2126,'Pravithanam','136/PRA','St. Augustine Church','Palai'),(2127,'Pucklipalayam','204/PUC','St Francis Xavier Church','Coimbatore'),(2128,'P Udayapatty','211/PUD','Our Lady of Assumption Church','Tiruchirappalli'),(2129,'Pudhuvadavalli','206/PUD','Annai Vailankanni Shrine','Ootacamund'),(2130,'Puducherry','216/PUD','Immaculate Conception Cathedral','Pondicherry-Cuddalore'),(2131,'Pudukkottai','219/PUD','Sacred Heart Church','Thanjavur'),(2132,'Pudukottai','217/PUD','Our Lady of Annunciation Church','Kumbakonam'),(2133,'Pudukottai','209/PUD','St Joseph Church','Tuticorin'),(2134,'Pudukuppam','217/SRI','Our Lady of Lourdes Church','Kumbakonam'),(2135,'Pudupalayam','218/PUD','Assumption Church','Salem'),(2136,'Pudupet','203/PUD','St Antony Church','Madras-Mylapore'),(2137,'Pudur','138/PDR','St. Thomas Church','Thuckalay'),(2138,'Pugailaipatty','214/PUG','St Ignatius Church','Dindigul'),(2139,'Pukkattupady','139/PUK','St. John Church','Ernakulam-Angamaly'),(2140,'Pulavanbadi','205/PUL','Don Bosco Church','Vellore'),(2141,'Puliakulam','204/PUL','St Antony Church','Coimbatore'),(2142,'Puliampatti','212/PUL','St. Antony\'s Shrine','Palayamkottai'),(2143,'Puliangudi','212/PUI','Holy Redeemer Church','Palayamkottai'),(2144,'Pulianmala','137/PUL','St. Antony Church','Kanjirapally'),(2145,'Pulicat','203/PUL','Our Lady of Glory Church','Madras-Mylapore'),(2146,'Pulickakavala','135/PUL','St. Mary Church','Changanacherry'),(2147,'Pulinjal','142/PUL','Christ The King Church','Kottayam'),(2148,'Pulinkatta','137/PKT','St. George Church','Kanjirapally'),(2149,'Pulinkunnu','135/PUI','St. Mary Forane Church','Changanacherry'),(2150,'Pulivanandal','205/PUV','St Dominic Savio Church','Vellore'),(2151,'Puliyal','213/PUL','Our Lady of Assumption Church','Sivagangai'),(2152,'Puliyanpara','140/PUL','St. Sebastian Church','Kothamangalam'),(2153,'Puliyarai','138/PUL','Little Flower Church','Thuckalay'),(2154,'Puliyoorkurichy Shrine','215/PUI','Shrine of St. Michael','Kuzhithurai'),(2155,'Puliyoorsalai','165/PUL','St. Paul\'s Church','Marthandom'),(2156,'Puliyur','204/PUI','Infant Jesus Shrine','Coimbatore'),(2157,'Pullambadi','217/PUL','St. Anne\'s Church','Kumbakonam'),(2158,'Pullangady','135/PUA','Holy Family Church','Changanacherry'),(2159,'Pullani','215/PUL','Church of St. Antony','Kuzhithurai'),(2160,'Pullikkanam','137/PKN','St. Thomas Church','Kanjirapally'),(2161,'Pulluvazhy','139/PUL','St. Thomas Church','Ernakulam-Angamaly'),(2162,'Punaloor','142/PUN','St. Mary\'s Church','Kottayam'),(2163,'Punalur','135/PLR','Sacred Heart Church','Changanacherry'),(2164,'Punalvasal','217/PUN','St. John Church','Kumbakonam'),(2165,'Punalvasal','219/PUN','St Francis Xavier Church','Thanjavur'),(2166,'Punchavayal','137/PUN','St. Sebastian Church','Kanjirapally'),(2167,'Pungavadi','218/PUN','Our Lady of Health Church','Salem'),(2168,'Punkarai','165/PUN','St. Antony\'s Church','Marthandom'),(2169,'Punnaikayal','209/PUN','St Xavier Church','Tuticorin'),(2170,'Punnai Nagar','210/PUI','Church of Our Lady of Lourdes','Kottar'),(2171,'Punnakunnathussery','135/PSR','St. Joseph Church','Changanacherry'),(2172,'Punnamada','135/PMD','St. Mary Church','Changanacherry'),(2173,'Punnamattam','140/PUN','St. Sebastian Church','Kothamangalam'),(2174,'Punnapra','135/PNP','St. Gregory Church','Changanacherry'),(2175,'Punnathura','135/PNT','St. Thomas Church','Changanacherry'),(2176,'Punnathura','142/PNA','St. Thomas Old Church','Kottayam'),(2177,'Punnavely','135/PUN','Little Flower Church','Changanacherry'),(2178,'Punnayar','141/PUN','Vel Matha','Idukki'),(2179,'Purakkad','135/PUR','Holy Cross Church','Changanacherry'),(2180,'Purakkayam','137/PUR','St. Joseph Church','Kanjirapally'),(2181,'Purapuzha','140/PUR','St. Sebastian Church','Kothamangalam'),(2182,'Purathakudi','217/PUR','St. Xavier Church','Kumbakonam'),(2183,'Pushpagiri','139/PUS','Fathima Matha Church','Ernakulam-Angamaly'),(2184,'Pushpagiri','165/PUS','Little Flower Church','Marthandom'),(2185,'Pushpakandam','141/PUS','St. Mary\'s Church','Idukki'),(2186,'Pushpavanam','209/PUS','St Theresa of Child Jesus Church','Tuticorin'),(2187,'Pushpavanam','213/PUS','St. Theresa Church','Sivagangai'),(2188,'Puthenangady','135/PUT','St. George Church','Changanacherry'),(2189,'Puthencruz','139/PUT','Little Flower Church','Ernakulam-Angamaly'),(2190,'Puthenkadai','215/PUT','Church of St. James','Kuzhithurai'),(2191,'Puthenpally','139/PLY','St. George Church','Ernakulam-Angamaly'),(2192,'Puthenthurai','210/PUN','Church of Our Lady of Rosary','Kottar'),(2193,'Puthiamputhur','209/PUT','St Antony Church','Tuticorin'),(2194,'Puthiyakavu','139/PYK','St. FrancisXavier Church','Ernakulam-Angamaly'),(2195,'Puthiyaroad','139/PYD','St. Joseph Church','Ernakulam-Angamaly'),(2196,'Puthoor','210/PUT','Church of St Lucia','Kottar'),(2197,'Puthugramam','210/PUH','Church of St. Michael\'s','Kottar'),(2198,'Puthukadai','215/PUH','Church of Our Lady of Assumption','Kuzhithurai'),(2199,'Puthukary','135/PHR','St. Xavier Church','Changanacherry'),(2200,'Puthukudiyiruppu','210/PUU','Church of St Roche','Kottar'),(2201,'Puthupally','135/PHP','St. Antony Church','Changanacherry'),(2202,'Puthur','211/PUT','Our Lady of Fatima Church','Tiruchirappalli'),(2203,'Puthussery','135/PRY','Lourdu Matha Church','Changanacherry'),(2204,'Puthussery','142/PUT','St. Thomas Church','Kottayam'),(2205,'Puthuvaipu','139/PVU','St. Antony Church','Ernakulam-Angamaly'),(2206,'Puthuvassery','139/PSR','Little Flower Church','Ernakulam-Angamaly'),(2207,'Puthuvely','142/PTU','St. Joseph Church','Kottayam'),(2208,'Puttady','137/PUT','Vailankanni Matha Church','Kanjirapally'),(2209,'Puzhal','203/PUZ','St Antony Church','Madras-Mylapore'),(2210,'Puzhavathu','135/PUZ','St. Thomas Metropolitan Church','Changanacherry'),(2211,'Radhapuram','209/RAD','Our Lady of Rosary Church','Tuticorin'),(2212,'Railway Colony','208/RAI','Sacred Heart of Jesus Church','Madurai'),(2213,'Rainbow Nagar','216/RAI','St John Mary Vianney Church','Pondicherry-Cuddalore'),(2214,'Raja Annamalaipuram','203/RAJ','Our Lady of Guidance','Madras-Mylapore'),(2215,'Rajagiri','135/RAJ','Christ the King Church','Changanacherry'),(2216,'Rajagiri','139/RAJ','Christ the King Church','Ernakulam-Angamaly'),(2217,'Rajagiri','142/RAJ','St. Stephen Church','Kottayam'),(2218,'Rajagiri','137/RAJ','Christu Raja Church','Kanjirapally'),(2219,'Rajagiri (Vellallu)','140/RAJ','Christuraja Church','Kothamangalam'),(2220,'Rajaji Nagar (Pallottines)','207/RAJ','St. Joseph\'s Church','Chingleput'),(2221,'Rajakad','141/RAJ','Christuraj Church','Idukki'),(2222,'Rajakembiram','213/RAJ','Our Lady of Assumption Church','Sivagangai'),(2223,'Rajakkamangalathurai','210/RAJ','Church of Our Lady of Good Health','Kottar'),(2224,'Rajakoope','135/RJK','Holy Cross Church','Changanacherry'),(2225,'Rajakrishnapuram','209/RAJ','St Anne Church','Tuticorin'),(2226,'Rajakumari','141/RJR','St. Mary\'s Church','Idukki'),(2227,'Rajamala','141/RML','St. Antony\'s Church','Idukki'),(2228,'Rajamattam','135/RTM','Sacred Heart Church','Changanacherry'),(2229,'Rajamudy','141/RDY','Christuraj Church','Idukki'),(2230,'Rajapalayam','208/RAJ','Sahaya Annai Church','Madurai'),(2231,'Rajappara','141/RPR','St. Antony\'s Church','Idukki'),(2232,'Rajapuram','141/RPM','Christuraj Church','Idukki'),(2233,'Rajapuram','142/RJP','Holy Family Church','Kottayam'),(2234,'Raja Shanmugam Nagar','203/RAS','All Saints Church','Madras-Mylapore'),(2235,'Rajasingamangalam','213/RSM','Holy Spirit Church','Sivagangai'),(2236,'Rajavoor','210/RAA','Church of St Michael the Archangel','Kottar'),(2237,'Ramachandrapuram','190/RAM','St. John Church','Hyderabad'),(2238,'Ramakkalmettu','137/RAM','Sacred Heart Church','Kanjirapally'),(2239,'Ramamangalam','142/RAM','St. Thomas Church','Kottayam'),(2240,'Ramamangalamm','142/RGM','St. Mary\'s Church','Kottayam'),(2241,'Ramanathapuram','204/RAM','Resurrection Church','Coimbatore'),(2242,'Ramanathapuram','146/RPM','Holy Trinity Cathedral','Ramanathapuram'),(2243,'Ramanathapuram-Kattur','217/RAM','Our Lady of Lourdes Church','Kumbakonam'),(2244,'Ramanathichenputhoor','210/RAM','Church of St Ignatius of Loyola','Kottar'),(2245,'Ramankary','135/RAM','St. Joseph Church','Changanacherry'),(2246,'Ramanthapur','190/RTP','Christ the King Church','Hyderabad'),(2247,'Ramanthurai','210/RAN','Church of St Barbara','Kottar'),(2248,'Ramapuram','207/RAM','Kristu Jyothi Church','Chingleput'),(2249,'Ramapuram','210/RAP','Church of Our Lady of Mount Carmel','Kottar'),(2250,'Ramapuram','136/RAM','St. Augustine Forane Church','Palai'),(2251,'Ramayanpatty','214/RAM','St Ann Church','Dindigul'),(2252,'Rameswaram','213/RAE','St. Joseph Church','Sivagangai'),(2253,'Ramnad','213/RAM','Our Lady of Rosary Church','Sivagangai'),(2254,'Ramnagar','213/RAN','Holy Redeemer Church','Sivagangai'),(2255,'Ramnagar','190/RGR','St. Francis of Assisi Church','Hyderabad'),(2256,'Randam Korattur','205/RAN','Our Lady of Vailankanni Church','Vellore'),(2257,'Randar','140/RAN','St. Michael Church','Kothamangalam'),(2258,'Ranipet','205/RPT','Our Lady of Good Health Church','Vellore'),(2259,'Ranipuram','142/RAN','St. Mary\'s Church','Kottayam'),(2260,'Ranni','137/RAN','Infant Jesus Forane Church','Kanjirapally'),(2261,'Ranni','142/RNI','St. Theresa Church','Kottayam'),(2262,'Rasipuram','218/RAS','Our Lady of Lourdes Church','Salem'),(2263,'Rathinapuri','204/RAT','St Paul Church','Coimbatore'),(2264,'Rathnapuram','209/RAT','St Xavier Church','Tuticorin'),(2265,'Ratnagiri (Sangli Mission)','136/RAT','St. Thomas Church','Palai'),(2266,'Ravathanallur Kandigai','207/RAV','Immaculate Conception Church','Chingleput'),(2267,'Ravoosapatty','211/RAV','St James Church','Tiruchirappalli'),(2268,'Rayappanpatti','208/RAY','Our Lady of Snows Church','Madurai'),(2269,'Rayapuram','208/RPM','St. Germaine Church','Madurai'),(2270,'R.C. Settipatti','218/SET','Sts. Peter and Paul Church','Salem'),(2271,'Reddipalayam','207/RED','St. Antony\'s Church','Chingleput'),(2272,'Reddiyapalayam','216/RED','St Andrew Church','Pondicherry-Cuddalore'),(2273,'Red Hills','203/RED','St Mary Magdalene Church','Madras-Mylapore'),(2274,'Ritapuram','210/RIT','Church of St Rita','Kottar'),(2275,'Rochmangar','213/ROC','St. James Church','Sivagangai'),(2276,'Roshanagaram','203/ROS','St Ignatius Church','Madras-Mylapore'),(2277,'Royakottai','220/ROY','Our Lady of Lourdes Church','Dharmapuri'),(2278,'Royapettah','203/ROA','Nithya Sahaya Matha Church','Madras-Mylapore'),(2279,'Royapettah','203/ROY','Presentation of Our Lord Church','Madras-Mylapore'),(2280,'Royapuram-1','203/ROP','Mater Dolorosa Church','Madras-Mylapore'),(2281,'Royapuram-2','203/ROU','St Peter Church','Madras-Mylapore'),(2282,'RR Nagar','208/RRN','Our Lady of Vailankanni Church','Madurai'),(2283,'RS Puram','204/RSP','St John de Britto Church','Coimbatore'),(2284,'RS Puram','146/RSP','St. Joseph Church','Ramanathapuram'),(2285,'Sacred Heart','216/SAC','Sacred Heart Church','Pondicherry-Cuddalore'),(2286,'Sadasivpet','190/SAD','St. Thomas Church','Hyderabad'),(2287,'Sadayalputhur','210/SPR','Church of Christ the King','Kottar'),(2288,'Sadayampalayam','218/SAD','St. Sebastian Church','Salem'),(2289,'Sadras','207/SAD','Our Lady Mother of the Church','Chingleput'),(2290,'Sahayagiri','141/SAH','St. Mary\'s Church','Idukki'),(2291,'Sahaya Nagar','215/SAH','Church of Our Lady of Perpetual Succour','Kuzhithurai'),(2292,'Sahayapuram','210/SAH','Church of Our Lady of Perpetual Succour','Kottar'),(2293,'Saibaba Colony','146/SBC','Little Flower Church','Ramanathapuram'),(2294,'Saidapet-Little Mount','203/SAI','Our Lady of Health Shrine','Madras-Mylapore'),(2295,'Salaigrammam','213/SAL','Nativity of Our Lady Church','Sivagangai'),(2296,'Salem Camp','218/SAL','St. Joseph Church','Salem'),(2297,'Samayanallur','208/SAM','St. Joseph Church','Madurai'),(2298,'Samayapuram','217/SAM','St. Mary',' the Mother of God Church'),(2299,'Sambai','213/SAM','St. Sebastian Church','Sivagangai'),(2300,'Sammanasur','219/SAM','St Michael Church','Thanjavur'),(2301,'Samupillai Nagar','216/CDN','Our Lady of Perpetual Succour Church','Pondicherry-Cuddalore'),(2302,'Sanathnagar','190/SAN','St. Theresa Church','Hyderabad'),(2303,'Sanatorium','206/SAN','St Theodore Church','Ootacamund'),(2304,'Sangareddy','190/SDY','Our Lady of Mercy Church','Hyderabad'),(2305,'Sanjai Nagar','219/SAN','St Joseph Church','Thanjavur'),(2306,'Sanjo Nagar','139/SAN','St. Joseph Church','Ernakulam-Angamaly'),(2307,'Sanjopuram','139/SJP','St. Joseph Church','Ernakulam-Angamaly'),(2308,'Sankarankovil','212/SAK','St. Joseph Church','Palayamkottai'),(2309,'Sankari','218/SAK','St. AntonyÃ¢â‚¬â„¢s Church','Salem'),(2310,'Sankar Nagar','212/SAN','St. Joseph Church','Palayamkottai'),(2311,'Sankranthi','142/SAN','Little Flower Church','Kottayam'),(2312,'Santhavasal','205/SAN','St Antony Church','Vellore'),(2313,'Santhigiri','137/SAN','St. George Church','Kanjirapally'),(2314,'Santhigiri','136/SAN','St. Joseph Church','Palai'),(2315,'Santhigram','141/SAN','St. Joseph\'s Church','Idukki'),(2316,'Santhipuram','139/SPR','St. Thomas Church','Ernakulam-Angamaly'),(2317,'Santhipuram','136/SPM','St. Sebastian Church','Palai'),(2318,'Santhome','203/SAN','St Thomas Cathedral (Basilica)','Madras-Mylapore'),(2319,'Santhom Hill','165/SHM','St. Thomas Church','Marthandom'),(2320,'Santhoshnagar','190/SGR','Mary Help of Christians Church','Hyderabad'),(2321,'Santigiri (Nalukettu)','139/STG','St. Joseph Church','Ernakulam-Angamaly'),(2322,'Sanyasigundu','218/SAN','St. Joseph Church','Salem'),(2323,'Sanyasioda','137/SAY','Infant Jesus Church','Kanjirapally'),(2324,'Sappers Lines','190/SAP','St. Anthony Church','Hyderabad'),(2325,'Sarel','210/SAR','Church of Ss Peter & Paul','Kottar'),(2326,'Sarugani','213/SAR','Sacred Heart of Jesus & Mary Church','Sivagangai'),(2327,'Sasthri Nagar','146/STN','St. Antony Church','Ramanathapuram'),(2328,'Sastri Nagar','203/SAS','Our Lady of Health Church','Madras-Mylapore'),(2329,'Sathampatty','211/SAT','St Ignatius of Loyola Church','Tiruchirappalli'),(2330,'Sathankulam','209/SAT','Immaculate Heart of Mary Church','Tuticorin'),(2331,'Satharasanpatty','213/SAT','Our Lady of Snows Church','Sivagangai'),(2332,'Sathipattu','216/SAT','Immaculate Heart of Mary Church','Pondicherry-Cuddalore'),(2333,'Sathiyamangalam','216/SAH','St Antony Church','Pondicherry-Cuddalore'),(2334,'Sathuvachery','205/SAT','St Joseph Church','Vellore'),(2335,'Sathyamangalam','206/SAT','St John de Britto Church','Ootacamund'),(2336,'Sathyamurthi Nagar','203/SAT','St Antony Church','Madras-Mylapore'),(2337,'Sattur','208/SAT','Most Sacred Heart Church','Madurai'),(2338,'Savariarpalayam','214/SAV','St Xavier Church','Dindigul'),(2339,'Savariar Palayam','204/SAV','St Francis Xavier Church','Coimbatore'),(2340,'Savariarpattanam','213/SAV','St. Francis Xavier Church','Sivagangai'),(2341,'Saveriarpuram','209/SAV','St Antony Church','Tuticorin'),(2342,'Saveriarpuram T','209/SAE','St Xavier Church','Tuticorin'),(2343,'Saveriyarpalayam','218/SAV','St. Francis Xavier Church','Salem'),(2344,'Sayalkudi','213/SAY','Annai Vailankanni Church','Sivagangai'),(2345,'Sayathurai','204/SAY','St James Church','Coimbatore'),(2346,'Sebastiarpuram','219/SEB','St Sebastian Church','Thanjavur'),(2347,'Sebipuram','139/SPM','St. Sebastian Church','Ernakulam-Angamaly'),(2348,'Sebiyoor','139/SEB','St. Sebastian Church','Ernakulam-Angamaly'),(2349,'Secunderabad','190/SEC','St. Mary Church','Hyderabad'),(2350,'Seedevi Savariapuram','216/SEE','Our Lady of Lourdes Church','Pondicherry-Cuddalore'),(2351,'Seethapal','210/SEE','Church of St Roche','Kottar'),(2352,'Seethaphalmandi','190/SEE','Our Lady of Perpetual Help Church','Hyderabad'),(2353,'Seethathodu','137/SEE','St. George Church','Kanjirapally'),(2354,'Sehiyonpuram','139/SEH','Holy Ghost Church','Ernakulam-Angamaly'),(2355,'Seithunganallur','209/SEI','St Lucia Church','Tuticorin'),(2356,'Sekkakudi','213/SEK','St. Michael Church','Sivagangai'),(2357,'Sekkalai','213/SEA','Sahaya Matha Church','Sivagangai'),(2358,'Selas','206/SEL','St Theresa Church','Ootacamund'),(2359,'Sellampattidai','207/SEL','Presentation Church','Chingleput'),(2360,'Selvapuram','204/SEL','Our Lady of Vailankanni Church','Coimbatore'),(2361,'Sembattu','211/SEM','Holy Trinity Church','Tiruchirappalli'),(2362,'Sembiam','203/SEM','St Theresa Church','Madras-Mylapore'),(2363,'Sembodai','217/SEM','St. Xavier Church','Kumbakonam'),(2364,'Semmedu','218/SEM','Infact Jesus Church','Salem'),(2365,'Semmiamangalam','205/SEM','Our Lady of Fatima Church','Vellore'),(2366,'Sempatty','214/SEM','Our Lady of Good Health Church','Dindigul'),(2367,'Senapathy','142/SEN','St. Polycarp Church','Kottayam'),(2368,'Sendamangalam','218/SEN','Arockia Matha Church','Salem'),(2369,'Sendamaram','212/SEN','Ss Peter & Paul Church','Palayamkottai'),(2370,'Sendarapatti','218/SED','Sacred Heart Church','Salem'),(2371,'Sendivakkam','207/SEN','Mary help of Christians Church','Chingleput'),(2372,'Sengadu','216/SEN','St Mary Immaculate Church','Pondicherry-Cuddalore'),(2373,'Sengattur','207/SEG','Sacred Heart Church','Chingleput'),(2374,'Sengole Nagar','208/INC','Christ the King Church','Madurai'),(2375,'Sengole Nagar','213/SEN','Infant Jesus Church','Sivagangai'),(2376,'Sengudi','213/SEG','St. Michael the ArchangelChurch','Sivagangai'),(2377,'Sengulam','141/SEN','BVM Perpetual Help Church','Idukki'),(2378,'Senjai','213/SEJ','St. Theresa Church','Sivagangai'),(2379,'Senthurai','214/SEN','St Joseph Church','Dindigul'),(2380,'Sernthapoomangalam','209/SER','St Michael Church','Tuticorin'),(2381,'Sesurajapuram','220/SES','St John de Britto Church','Dharmapuri'),(2382,'Sethukuvaithan','209/SET','St Xavier Church','Tuticorin'),(2383,'Settiapatty','219/SET','Our Lady of Refuge Church','Thanjavur'),(2384,'Sevvapet','203/SEV','Our Lady of Health Church','Madras-Mylapore'),(2385,'Shabad','190/SHA','Arokia Matha Church','Hyderabad'),(2386,'Shamshabad','190/SMB','Our Lady of Vailankanni Shrine','Hyderabad'),(2387,'Shanthi Nagar','212/SHA','Infant Jesus Shrine','Palayamkottai'),(2388,'Shantinagar','190/SNH','St. Francis de Sales Church','Hyderabad'),(2389,'Shapurnagar','190/SPG','St. Agnes Church','Hyderabad'),(2390,'Shenbaganur','208/SHE','St. Xavier Church','Madurai'),(2391,'Shenpakkam','205/SHE','St Joseph Church','Vellore'),(2392,'Shevapet','218/SHE','St. MaryÃ¢â‚¬â„¢s Co-Cathedral','Salem'),(2393,'S.H. Mount','142/SHM','Sacred Heart Church','Kottayam'),(2394,'Sholayar Nagar','204/SHO','St Joseph the Worker Church','Coimbatore'),(2395,'Sholinganallur','207/SHO','Infant Jesus Church','Chingleput'),(2396,'Sholurmattam','206/SHO','St Antony Church','Ootacamund'),(2397,'Shoolagiri','220/SHO','Our Lady of Vailankanni Church','Dharmapuri'),(2398,'Sibigiri (Muttam)','136/SIB','St. Sebastian Church','Palai'),(2399,'Sidco Nagar-Villivakkam ','203/VIS','Annai Velankanni Church','Madras-Mylapore'),(2400,'Siddipet','190/SID','St. Andrew Church','Hyderabad'),(2401,'Sikkalnayakkanpettai','217/SIK','Sacred Heart Church','Kumbakonam'),(2402,'Silameganadu','213/SIL','St. Mark Church','Sivagangai'),(2403,'Silukkuvarpatti','208/SIL','Nativity of Our Lady Church','Madurai'),(2404,'Siluvaigiri','218/SIL','R.C. Church','Salem'),(2405,'Siluvaipatti','217/SIL','Infant Jesus Church','Kumbakonam'),(2406,'Siluvaipuram','219/SIL','Our Lady of Lourdes Church','Thanjavur'),(2407,'Siluvaipuram','215/SIL','Church of St. John of the Cross','Kuzhithurai'),(2408,'Simon Colony','210/SIM','Church of St Jude','Kottar'),(2409,'Singamparai','212/SIN','St. Paul Shrine','Palayamkottai'),(2410,'Singampunari','213/SIN','Arockia Annai Church','Sivagangai'),(2411,'Singanallur','204/SIN','St Joseph the Worker Church','Coimbatore'),(2412,'Sipcot','205/SIP','St Thomas Church','Vellore'),(2413,'Sipcot','220/SIP','St Joseph Church','Dharmapuri'),(2414,'Sippikulam','209/SIP','Our Lady of Dolours Church','Tuticorin'),(2415,'Sirkali','219/SIR','Our Lady of Lourdes Church','Thanjavur'),(2416,'Sirumugai','204/SIR','St Mary Church','Coimbatore'),(2417,'Sirunayakkanpatty','214/SIR','St Antony of Padua Church','Dindigul'),(2418,'Sithalapakkam','207/SIT','St. Antony\'s Church','Chingleput'),(2419,'Sivagangai','213/SIV','Alangara Annai Cathedral','Sivagangai'),(2420,'Sleevamala','141/SLE','St. Benedict\'s Church','Idukki'),(2421,'Sleevapuram','136/SLE','Mar Sleeva Church','Palai'),(2422,'SL Puram','135/SLP','St. Sebastian Church','Changanacherry'),(2423,'SM Puram','209/SMP','St Charles Church','Tuticorin'),(2424,'Snehagiri','141/SNE','St. Sebastian\'s Church','Idukki'),(2425,'Sogandi','207/SOG','St. Theresa of Child Jesus Church','Chingleput'),(2426,'Soganur','205/SOG','St Francis Xavier Church','Vellore'),(2427,'Sokkankudiyiruppu','209/SAN','Ss James & Stanislaus Church','Tuticorin'),(2428,'Solasiramani','218/SOL','Our Lady of Good Health Church','Salem'),(2429,'Somanathaperi','209/SOM','St Antony Church','Tuticorin'),(2430,'Somanur','204/SOM','St Ignatius Church','Coimbatore'),(2431,'Somarasampettai','211/SOM','St Sebastian Church','Tiruchirappalli'),(2432,'Somasipadi','205/SOM','Pudumai Madha Church','Vellore'),(2433,'Sooriacode','165/SOC','St. Little Flower Church','Marthandom'),(2434,'Soosaipuram','206/SOO','St Joseph Church','Ootacamund'),(2435,'Soosaipuram','138/SSP','St. Joseph Forane Church','Thuckalay'),(2436,'Soosaipuram','165/SOP','St. Joseph\'s Church','Marthandom'),(2437,'Soraparai','204/SOR','Christ the King Church','Coimbatore'),(2438,'Sowripalayam','204/SOW','St Francis Xavier Church','Coimbatore'),(2439,'Sozhampattu','216/SOZ','St Antony Church','Pondicherry-Cuddalore'),(2440,'SPB Colony','218/SPB','Holy Trinity Church','Salem'),(2441,'S Pudur','217/SPU','Our Lady of Good Health Church','Kumbakonam'),(2442,'Srampickal','139/SRA','St. Mary Church','Ernakulam-Angamaly'),(2443,'Sreekaryam','135/SRE','St. Joseph Church','Changanacherry'),(2444,'Sreepuram','142/SRE','St. Mary\'s Church','Kottayam'),(2445,'Srinivasa Nagar','203/SRI','Sacred Heart Church','Madras-Mylapore'),(2446,'Sriperumbudur','207/SRI','Annai Velankanni Church','Chingleput'),(2447,'Sriputhur','219/SRI','Our Lady of Lourdes Church','Thanjavur'),(2448,'Srivaikundam','209/SRI','St James Church','Tuticorin'),(2449,'Sriviliputtur','208/SRI','Sacred Heart of Jesus Church','Madurai'),(2450,'State Bank Colony','209/STA','Annai Vailankanni Church','Tuticorin'),(2451,'Steel Plant','218/STE','St. JudeÃ¢â‚¬â„¢s Church','Salem'),(2452,'St. Thomas Mount','207/STH','St. Thomas National Shrine','Chingleput'),(2453,'St. Thomas Mount','207/STM','St. Patrick\'s Church','Chingleput'),(2454,'St Xaviers Colony','212/STX','St. Antony\'s Church','Palayamkottai'),(2455,'Subramaniapuram','211/SUB','St John de Britto Church','Tiruchirappalli'),(2456,'Sukkambar','217/SUK','St. Antony\'s Church','Kumbakonam'),(2457,'Suleswarampatty','146/SPT','St. Elizabeth Church','Ramanathapuram'),(2458,'Sultan Bazar','190/SUL','St. Thomas Church','Hyderabad'),(2459,'Sultanpet','204/SUL','St Sebastian Church','Coimbatore'),(2460,'Sulur','204/SUU','Sagaya Matha Church','Coimbatore'),(2461,'Sulur Aero','146/SLA','St. Thomas Church','Ramanathapuram'),(2462,'Sundampatty','220/SUN','St Antony Shrine','Dharmapuri'),(2463,'Sundaranachiapuram','208/SUN','Our Lady of Lourdes Church','Madurai'),(2464,'Suralacode','210/SUR','Church of Church of St. Antony','Kottar'),(2465,'Suramangalam','218/SUR','Sacred Heart Church','Salem'),(2466,'Suranam','213/SUR','St. James Church','Sivagangai'),(2467,'Surandai','212/SUR','St. Antony\'s Shrine','Palayamkottai'),(2468,'Suraram','190/SUR','Our Lady of Fathima Church','Hyderabad'),(2469,'Susaiapparpattanam','213/SUS','St. Joseph Church','Sivagangai'),(2470,'Susaiapparpattinam','217/SUS','St. Joseph\'s Church','Kumbakonam'),(2471,'Susaipuram','203/SUS','St Joseph the Worker Church','Madras-Mylapore'),(2472,'Swaraj','137/SWA','St. Paul Church','Kanjirapally'),(2473,'Tagore Nagar','216/TAG','Holy Spirit Church','Pondicherry-Cuddalore'),(2474,'Talavadi','206/TAL','St Mary Church','Ootacamund'),(2475,'Tambaram','207/TAM','St. Patrick\'s Church','Chingleput'),(2476,'Tandur','190/TAN','St. Mark Church','Hyderabad'),(2477,'Taramani','203/TAR','St Anthony Church','Madras-Mylapore'),(2478,'Teekoy','136/TEE','St. Mary Forane Church','Palai'),(2479,'Teganare','206/TEG','Annai Vailankanni Church','Ootacamund'),(2480,'Tenkasi','212/TEN','St. Michael Church','Palayamkottai'),(2481,'Teppakulam','211/TEP','Our Lady of Lourdes Church','Tiruchirappalli'),(2482,'Teresa Nagar','141/TER','Bl Mother Teresa Church','Idukki'),(2483,'Test','TEST',' ','Vellore'),(2484,'TG Anna Nagar','203/TGA','St Antony Church','Madras-Mylapore'),(2485,'Thabore','139/TBR','Holy Family Church','Ernakulam-Angamaly'),(2486,'Thachambady','205/THA','Our Lady of Fatima Church','Vellore'),(2487,'Thadeuspuram','139/TDP','St. Jude Church','Ernakulam-Angamaly'),(2488,'Thadikkarakonam','138/TKM','St. Joseph Mission','Thuckalay'),(2489,'Thadikkarankonam','210/THA','Church of Our Lady of Snows','Kottar'),(2490,'Thadiyampad','142/THA','Fatima Matha Church','Kottayam'),(2491,'Thadiyoor','135/THA','St. Antony Church','Changanacherry'),(2492,'Thaikkattukara','139/TKR','Ss. Peter & Paul Church','Ernakulam-Angamaly'),(2493,'Thailapuram','209/THA','Our Lady of Ransom Church','Tuticorin'),(2494,'Thakadi','136/THA','St. Sebastian Church','Palai'),(2495,'Thakalai','165/THK','Amalorpava Annai Church','Marthandom'),(2496,'Thakazhy','135/TKZ','St. Rita Church','Changanacherry'),(2497,'Thakkalivilai','138/THK','Holy Family Church','Thuckalay'),(2498,'Thalaivasal','218/THA','St. Joseph\'s Church','Salem'),(2499,'Thalaiyampallam','205/TPM','Our Lady of Lourdes Church','Vellore'),(2500,'Thalamuthu Nagar','209/THL','Our Lady of Madu Rosary Church','Tuticorin'),(2501,'Thalapara','139/TLP','St. Mary Church','Ernakulam-Angamaly'),(2502,'Thalarkulam','212/THA','St. Francis Xavier Church','Palayamkottai'),(2503,'Thalayanad','140/THA','BVM Lourdes Church','Kothamangalam'),(2504,'Thalayankonam','210/TKM','Church of Our Lady of Assumption','Kottar'),(2505,'Thalayolaparambu','139/TLU','St. George Church','Ernakulam-Angamaly'),(2506,'Thamarachalpuram','139/THA','Sacred Heart Church','Ernakulam-Angamaly'),(2507,'Thamaraikulam','210/THM','Church of Our Lady of Snows','Kottar'),(2508,'Thamarakunnu','137/THA','St. Ephraim Church','Kanjirapally'),(2509,'Thampalackadu','137/THM','St. Thomas Church','Kanjirapally'),(2510,'Thandalam','207/THA','St. Antony\'s Church','Chingleput'),(2511,'Thandalam (Morapakkam)','207/MOR','St. Antony\'s Church','Chingleput'),(2512,'Thandeswaranallur','219/THS','St Antony Church','Thanjavur'),(2513,'Thandrampet','205/TDM','Our Lady of Lourdes Church','Vellore'),(2514,'Thangachimadam','213/THA','St. Theresa of Child JesusChurch','Sivagangai'),(2515,'Thanigachalam Nagar','203/THA','St Paul Church','Madras-Mylapore'),(2516,'Thanikottagam','219/THT','Our Lady of Lourdes Church','Thanjavur'),(2517,'Thanipadi','205/TPD','Christ the King Church','Vellore'),(2518,'Thanjavur','219/THA','Sacred Heart Cathedral','Thanjavur'),(2519,'Thanjavur','219/TJR','Our Lady of Refuge Church','Thanjavur'),(2520,'Thankamany','141/THA','St. Thomas Church','Idukki'),(2521,'Thannikandam','141/TKD','St. Mary\'s Church','Idukki'),(2522,'Thannipuzha','139/TZA','St. Joseph Church','Ernakulam-Angamaly'),(2523,'Thannirmukkom','139/TKM','Precious Blood Church','Ernakulam-Angamaly'),(2524,'Tharakanattukunnu','137/THR','St. Antony Church','Kanjirapally'),(2525,'Tharamangalam','218/THR','St. Charles Boromeo Church','Salem'),(2526,'Tharuvaikulam','209/THR','St Michael Church','Tuticorin'),(2527,'Thatchankurichy','219/THK','Assumption Church','Thanjavur'),(2528,'Thatchoor','207/TAT','Our Lady of Good Health Church','Chingleput'),(2529,'Thathampally','135/TPL','St. Michael Church','Changanacherry'),(2530,'Thathappilly','139/TPL','St. Antony Church','Ernakulam-Angamaly'),(2531,'Thattakuzha','140/THT','St. Sebastian Church','Kothamangalam'),(2532,'Thattanchavadi','216/THA','St Fatima Church','Pondicherry-Cuddalore'),(2533,'Thattarmadam','209/THT','St Anne Church','Tuticorin'),(2534,'Thattekanni','141/TKN','St. George\'s Church','Idukki'),(2535,'Thattupara','139/TPR','St. Thomas Church','Ernakulam-Angamaly'),(2536,'Thavalappara','139/TLR','St. Joseph Church','Ernakulam-Angamaly'),(2537,'Thavasimedai','214/THA','Our Lady of Good Health Church','Dindigul'),(2538,'Thavasimedai','214/THV','St Francis Xavier Church','Dindigul'),(2539,'Thavittupalayam','206/THA','St Jude Church','Ootacamund'),(2540,'Thayamkary','135/TMR','St. Antony Church','Changanacherry'),(2541,'Thazhathangady','135/TZH','Sacred Heart Church','Changanacherry'),(2542,'Thazhathuvadakara','135/TZK','Lourdu Matha Church','Changanacherry'),(2543,'Thazhuvamkunnu','140/THZ','St. George Church','Kothamangalam'),(2544,'Theckalur','203/THE','Our Lady of Fatima Church','Madras-Mylapore'),(2545,'Thekkekara','135/TKA','St. John Church','Changanacherry'),(2546,'Thekkekara','135/THE','St. Sebastian Church','Changanacherry'),(2547,'Thekkemala','137/THE','St. Mary Church','Kanjirapally'),(2548,'Thekkupara','135/TKU','St. Mary Church','Changanacherry'),(2549,'Thellakom','135/TLK','St. Joseph Church','Changanacherry'),(2550,'Thellithodu','142/THE','St. Joseph Church','Kottayam'),(2551,'Thely','216/THE','St Joseph Church','Pondicherry-Cuddalore'),(2552,'Themanoor','215/THE','Church of Our Lady of Assumption','Kuzhithurai'),(2553,'Thendral Nagar','203/THN','Infant Jesus Church','Madras-Mylapore'),(2554,'Thengapattanam','210/THE','Church of St Lawrence','Kottar'),(2555,'Thengely','142/THN','St. Mary\'s Church','Kottayam'),(2556,'Thengode','139/TGD','St. Thomas Church','Ernakulam-Angamaly'),(2557,'Theni','208/THE','Holy Redeemer Church','Madurai'),(2558,'Thenikulam','165/TNK','Devamatha Church','Marthandom'),(2559,'Thenimalai','205/TML','Infant Jesus Shrine','Vellore'),(2560,'Thenkaraikottai','220/THE','Our Lady of Mount Carmel Church','Dharmapuri'),(2561,'Thennangudy','216/THN','Sacred Heart Church','Pondicherry-Cuddalore'),(2562,'Thennathoor','140/THE','BVM Fatima Church','Kothamangalam'),(2563,'Thennur','217/THE','Our Lady of Lourdes Church','Kumbakonam'),(2564,'Theresalpuram','211/THE','St Theresa of Child Jesus Church','Tiruchirappalli'),(2565,'Theresapuram','205/THE','St Theresa of Child Jesus Church','Vellore'),(2566,'Therespuram','209/THE','St Theresa of Child Jesus Church','Tuticorin'),(2567,'Therkunam','216/THR','St Francis Xavier Church','Pondicherry-Cuddalore'),(2568,'Thettamala','142/THT','St. Stephen Church','Kottayam'),(2569,'Thettivilai','138/THT','St. Michael\'s Church','Thuckalay'),(2570,'Thettiyode','138/THY','St. Paul Church','Thuckalay'),(2571,'Thevackal','139/TKL','St. Martin de Porres Church','Ernakulam-Angamaly'),(2572,'Thevara','139/THE','Sacred Heart Church','Ernakulam-Angamaly'),(2573,'Thiagadurugam','216/THG','St Francis Assisi Mission','Pondicherry-Cuddalore'),(2574,'Thickurichy','215/THK','Church of St. Gabriel','Kuzhithurai'),(2575,'Thidanad','136/THI','St. Joseph Church','Palai'),(2576,'Thinkalkadu','141/THI','St. Mathew\'s Church','Idukki'),(2577,'Thirithuvapuram','215/THI','Church of the Most Holy Trinity','Kuzhithurai'),(2578,'Thiroor','142/THI','St. Francis Assisi Church','Kottayam'),(2579,'Thiruchengode','218/THC','St. MaryÃ¢â‚¬â„¢s Church','Salem'),(2580,'Thiruhrudayakunnu','139/THI','Sacred Heart Church','Ernakulam-Angamaly'),(2581,'Thirukalukundram (Salesians)','207/THI','Sahaya Matha Alayam','Chingleput'),(2582,'Thirukanurpatty','219/THN','Our Lady of Good Health Church','Thanjavur'),(2583,'Thirukkavalur','217/TIR','Our Lady of Presentation Church','Kumbakonam'),(2584,'Thirukoilur','216/THK','St Sebastian Church','Pondicherry-Cuddalore'),(2585,'Thirukokarnam','219/THM','St Francis de Sales Church','Thanjavur'),(2586,'Thirumala','135/TML','Holy Family Church','Changanacherry'),(2587,'Thirumalai','205/THI','St Dominic Savio Church','Vellore'),(2588,'Thirumalairayapuram','211/THI','Our Lady of Scepter Church','Tiruchirappalli'),(2589,'Thirumalarayan Pattinam','216/THM','St Francis Xavier Church','Pondicherry-Cuddalore'),(2590,'Thirumangalam','208/THI','Amala Annai Church','Madurai'),(2591,'Thirumanthurai','217/THI','St. Pius X Church','Kumbakonam'),(2592,'Thirumanur','217/THR','St. John de Britto Church','Kumbakonam'),(2593,'Thirumanur','218/THI','St. John the Baptist Church','Salem'),(2594,'Thirumarady','136/THD','Our Lady Mediatrix of All Graces Church','Palai'),(2595,'Thirumayam','219/THY','Our Lady of Refuge Church','Thanjavur'),(2596,'Thirumoola Nagar','209/THU','St. George Church','Tuticorin'),(2597,'Thirumudikunnu','139/TDN','Little Flower Church','Ernakulam-Angamaly'),(2598,'Thirumulaivoyal','203/THM','Holy Eucharist Church','Madras-Mylapore'),(2599,'Thirunagar','208/THR','St. Vincent Pallotti Church','Madurai'),(2600,'Thirunagar','211/THR','Infant Jesus Church','Tiruchirappalli'),(2601,'Thirunainarkurichy','210/THI','Church of St Antony','Kottar'),(2602,'Thirunalloor','139/TNL','St. Joseph Church','Ernakulam-Angamaly'),(2603,'Thiruninravur','203/THI','Good Shepherd Church','Madras-Mylapore'),(2604,'Thirunjicollai','216/THJ','St Sebastian Church','Pondicherry-Cuddalore'),(2605,'Thirunjipoondy','216/THI','Sacred Heart Church','Pondicherry-Cuddalore'),(2606,'Thirupanthuruthi','217/THP','Our Lady of Good Health Church','Kumbakonam'),(2607,'Thirupapuliyur','216/TIR','St Joseph Church','Pondicherry-Cuddalore'),(2608,'Thirupattur','213/THI','Immaculate Conception Church','Sivagangai'),(2609,'Thirupoondi','219/THP','Our Lady of Fatima Church','Thanjavur'),(2610,'Thiruporur','207/THR','Infant Jesus Church','Chingleput'),(2611,'Thiruthangal','208/THT','St. Antony Church','Madurai'),(2612,'Thiruthuraipoondi','219/THI','Our Lady of Lourdes Church','Thanjavur'),(2613,'Thiruvagoundanur','218/SYR','Syrian Catholic Church','Salem'),(2614,'Thiruvaiyaru','217/THV','Immaculate Heart of Mary Church','Kumbakonam'),(2615,'Thiruvalangadu','203/THV','Holy Spirit Church','Madras-Mylapore'),(2616,'Thiruvalanthurai','217/THL','Christ the King Church','Kumbakonam'),(2617,'Thiruvalla','135/TVL','St. Antony Church','Changanacherry'),(2618,'Thiruvallur','203/THL','St Francis de Sales Church','Madras-Mylapore'),(2619,'Thiruvallur-Pinjvakkam','203/THP','Mary Help of Christians Church','Madras-Mylapore'),(2620,'Thiruvamvandoor','142/THV','St. Francis de Sales Church','Kottayam'),(2621,'Thiruvananthapuram','135/THI','Lourdes Forane Church','Changanacherry'),(2622,'Thiruvankulam','139/TVM','St. George Church','Ernakulam-Angamaly'),(2623,'Thiruvarangam','213/THV','Sacred Heart Church','Sivagangai'),(2624,'Thiruvarur','219/THR','Our Lady of Fatima Church','Thanjavur'),(2625,'Thiruvetriyur','213/THE','Virgin of the Poor Church','Sivagangai'),(2626,'Thiruvithancode','215/THR','Church of the Ascension of Our Lord','Kuzhithurai'),(2627,'Thiruvottiyur','203/TUV','St Paul Church','Madras-Mylapore'),(2628,'Thisayanvilai','209/THI','Holy Redeemer Church','Tuticorin'),(2629,'Thodanal','136/THO','Infant Jesus Church','Palai'),(2630,'Thodupuzha','140/THO','St. Sebastian Forane Church','Kothamangalam'),(2631,'Thodupuzha East','140/THD','Vijnana Matha Church','Kothamangalam'),(2632,'Thokkupara','141/THO','St. Sebastian\'s Church','Idukki'),(2633,'Thommankuth','140/THM','St. Thomas Church','Kothamangalam'),(2634,'Thondamandurai','217/THO','St. Michael\'s Church','Kumbakonam'),(2635,'Thondi','213/THO','Our Lady of Voyage Church','Sivagangai'),(2636,'Thookupalam','141/THP','St. Antony\'s Church','Idukki'),(2637,'Thoppil','139/THO','Mary Queen Church','Ernakulam-Angamaly'),(2638,'Thoppuvilai','209/THO','Our Lady of Assumption Church','Tuticorin'),(2639,'Thopramkudy','141/TPK','St. Maria Goretti Church','Idukki'),(2640,'Thottackad','135/THT','St. George Church','Changanacherry'),(2641,'Thottakara','140/THK','Ss. George & Sebastian Church','Kothamangalam'),(2642,'Thottakom','139/THT','St. Gregory Church','Ernakulam-Angamaly'),(2643,'Thottara','142/THO','St. Mary\'s Church','Kottayam'),(2644,'Thottiam','217/THT','Our Lady of Victories Church','Kumbakonam'),(2645,'Thottoor','139/TOR','St. Mary Church','Ernakulam-Angamaly'),(2646,'Thottuva','139/TVA','St. Joseph Church','Ernakulam-Angamaly'),(2647,'Thottuvathala','135/THO','Sacred Heart Church','Changanacherry'),(2648,'Thovarayar','141/TYR','Infant Jesus Church','Idukki'),(2649,'Thozhudavur','203/THO','Fathima Mission','Madras-Mylapore'),(2650,'Thrickodithanam','135/THR','St. Xavier Forane Church','Changanacherry'),(2651,'Thrikariyoor','140/THR','St. Thomas Church','Kothamangalam'),(2652,'Thrikkakara','139/THR','Little Flower Church','Ernakulam-Angamaly'),(2653,'Thrineyamkudom','139/TDM','Sacred Heart Church','Ernakulam-Angamaly'),(2654,'Thripunithura','139/TNR','St. Mary Forane Church','Ernakulam-Angamaly'),(2655,'Thuckalay','138/TCK','St. Mary\'s Church','Thuckalay'),(2656,'Thuckalay','215/THC','Church of St. Elias','Kuzhithurai'),(2657,'Thudanganad','136/THG','St. Thomas Forane Church','Palai'),(2658,'Thumbal','218/THU','St. MaryÃ¢â‚¬â„¢s Church','Salem'),(2659,'Thumbali','215/THM','Church of the Immaculate Heart of Mary','Kuzhithurai'),(2660,'Thummuchinampatti','208/THU','Our Lady of Sorrows Church','Madurai'),(2661,'Thundathumkadavu','139/TKV','St. Mary Church','Ernakulam-Angamaly'),(2662,'Thundathuvilai','215/THU','Church of St. Antony','Kuzhithurai'),(2663,'Thuraikudi','211/THA','St Joseph the Worker Church','Tiruchirappalli'),(2664,'Thuraipakkam','207/THU','Sahaya Madha Alayam','Chingleput'),(2665,'Thuraiyur','217/THU','Ss. Paul & Peter Church','Kumbakonam'),(2666,'Thuravoor North','139/TVN','St. Augustine Church','Ernakulam-Angamaly'),(2667,'Thuravoor South','139/TVS','St. Joseph Church','Ernakulam-Angamaly'),(2668,'Thuravumkara','139/TVR','Little Flower Church','Ernakulam-Angamaly'),(2669,'Thuruthikad','142/THU','Sacred Heart Church','Kottayam'),(2670,'Thuruthipally','136/THU','St. John the Baptist Church','Palai'),(2671,'Thuruthipuram','139/TPM','St. Louis Church','Ernakulam-Angamaly'),(2672,'Thuruthy','135/THU','St. Mary Church','Changanacherry'),(2673,'Thuthiyoor','139/THU','St. Joseph Church','Ernakulam-Angamaly'),(2674,'Thuvarankurichi','211/THU','St Joseph Church','Tiruchirappalli'),(2675,'Thyagaraja Nagar','203/THY','Holy Cross Church','Madras-Mylapore'),(2676,'Thykattussery','139/TSR','St. Antony Church','Ernakulam-Angamaly'),(2677,'Thykkattu','139/THY','St. Mary Church','Ernakulam-Angamaly'),(2678,'Tindivanam','216/TIN','Seven Dolours Church','Pondicherry-Cuddalore'),(2679,'Tiruchirappalli','211/TIR','Jegan Matha Church','Tiruchirappalli'),(2680,'Tirumalpadi','205/TMP','St Antony Church','Vellore'),(2681,'Tirunelveli Town','212/TIR','Adaikala Matha Church','Palayamkottai'),(2682,'Tirupattur','205/TPT','Mary Help of Christians Church','Vellore'),(2683,'Tiruppur','146/TPR','Mount Carmel Church','Ramanathapuram'),(2684,'Tirupur','204/TIR','St Catherine of Sienna Church','Coimbatore'),(2685,'Tiruttani','203/TIR','Christ the Emmanuel Church','Madras-Mylapore'),(2686,'Tiruvannamalai','205/TVN','Regina Mundi Church','Vellore'),(2687,'Tiruvettipuram','205/TIR','Our Lady of Dolours Church','Vellore'),(2688,'Tollgate','217/TOL','Infant Jesus Church','Kumbakonam'),(2689,'Tondiarpet','203/TON','St John the Apostle Church','Madras-Mylapore'),(2690,'Toopran','190/TOO','Fatima Matha Church','Hyderabad'),(2691,'Town Hall Road','208/TOW','Holy Rosary Church','Madurai'),(2692,'Tracopuram','139/TRA','St. Joseph Church','Ernakulam-Angamaly'),(2693,'Tranquebar','219/TRA','Our Lady of Rosary Church','Thanjavur'),(2694,'Trichendur','209/TRI','St Anne Church','Tuticorin'),(2695,'Trimulgherry','190/TRI','Holy Family Church','Hyderabad'),(2696,'Trivandrum','142/TRI','St. Pius X Church','Kottayam'),(2697,'T Sindalachery','208/TSI','Sacred Heart Church','Madurai'),(2698,'T. Susaiapparpattinam','213/TSU','Infant Jesus Church','Sivagangai'),(2699,'Uchakada','135/UCH','St. Cicily Church','Changanacherry'),(2700,'Udangudi','209/UDA','St Joseph Church','Tuticorin'),(2701,'Udayagiri','141/UDA','St. Mary\'s Church','Idukki'),(2702,'Udayagiri','136/UDA','St. Joseph Church','Palai'),(2703,'Udayamperoor (New)','139/UDA','St. Sebastian Church','Ernakulam-Angamaly'),(2704,'Udayamperoor (Old)','139/UDO','Ss. Gervasis & Prothasis Church','Ernakulam-Angamaly'),(2705,'Udayanapuram','139/UDP','St. Joseph Church','Ernakulam-Angamaly'),(2706,'Udayapatti','218/UDA','Our Lady of Good Health Church','Salem'),(2707,'Udayapuram','139/UDR','St. Joseph Church','Ernakulam-Angamaly'),(2708,'Udayendiram','205/UDA','Sacred Heart of Jesus Church','Vellore'),(2709,'Udhagamandalam','206/UDL','St Mary Church','Ootacamund'),(2710,'Udhagamandalam','206/UDH','Sacred Heart Cathedral','Ootacamund'),(2711,'Udhagamandalam','206/UDM','Kandal Cross Shrine','Ootacamund'),(2712,'Udumalpet','204/UDU','Our Lady of Nativity Church','Coimbatore'),(2713,'Udumalpettu','146/UMP','St. Sebastian Church','Ramanathapuram'),(2714,'Udumpannoor','140/UDU','St. Sebastian Church','Kothamangalam'),(2715,'Ugarthe Nagar','208/UGA','Infant Jesus Church','Madurai'),(2716,'Ukkadom','146/UKD','St. Sebastian Church','Ramanathapuram'),(2717,'Ulagampatty','214/ULA','St Antony Church','Dindigul'),(2718,'Ulavaip','139/ULA','St. Martin de Porres Church','Ernakulam-Angamaly'),(2719,'Ullala','139/ULL','Little Flower Church','Ernakulam-Angamaly'),(2720,'Ullanad','136/ULL','Sacred Heart Church','Palai'),(2721,'Ulundurpettai','216/ULU','infant Jesus Church','Pondicherry-Cuddalore'),(2722,'Uluppooni','137/ULU','St. Alphonsa Church','Kanjirapally'),(2723,'Uluthur','216/ULT','St Anne Church','Pondicherry-Cuddalore'),(2724,'Umikuppa','137/UMI','Lourdu Matha Church','Kanjirapally'),(2725,'Uminthal','190/UMI','Annunciation Church','Hyderabad'),(2726,'University Centre','139/UNI','St. John Church','Ernakulam-Angamaly'),(2727,'Unnamalaikadai','165/UMK','St. Joseph\'s Church','Marthandom'),(2728,'Uppalam','216/UPP','St Francis Xavier Church','Pondicherry-Cuddalore'),(2729,'Upper Gudalur','206/UPP','St Mary Church','Ootacamund'),(2730,'Uppukunnu','140/UPP','St. Alphonsa Church','Kothamangalam'),(2731,'Upputhara','137/UPP','St. Mary Forane Church','Kanjirapally'),(2732,'Upputhodu','141/UPP','St. Joseph\'s Church','Idukki'),(2733,'Urachikottai','206/URA','St Antony Church','Ootacamund'),(2734,'Urapakkam','207/URA','St. Antony\'s Church','Chingleput'),(2735,'Uriyurkuppam','205/URI','Mary Help of Christians Church','Vellore'),(2736,'Urulanthanny','140/URU','St. Jude Church','Kothamangalam'),(2737,'Urulikunnam','136/URU','St. George Church','Palai'),(2738,'Urumpukavu (Pizhaku)','136/UPK','St. John the Baptist Church','Palai'),(2739,'Usilampatti','208/USI','Infant Jesus Church','Madurai'),(2740,'Uthamanur-Pudur','217/UTH','Ss. Paul & Peter Church','Kumbakonam'),(2741,'Uthamapalayam','208/UTH','Our Lady Queen of Heaven Church','Madurai'),(2742,'Uthangarai','220/UTH','St Antony Church','Dharmapuri'),(2743,'Uthukottai','203/UTH','Our Lady of Refugee Church','Madras-Mylapore'),(2744,'Uthumalai','212/UTH','St. John the Evangelist Church','Palayamkottai'),(2745,'Uvari','209/UVA','St Antony Church','Tuticorin'),(2746,'Uyyankondan Thirumalai','211/UYY','Periyanayagi Matha Church','Tiruchirappalli'),(2747,'Uzhavoor','142/UZH','St. Stephen Church','Kottayam'),(2748,'Vadagarai','217/VAD','Our Lady of Lourdes Church','Kumbakonam'),(2749,'Vadakara','136/VAD','St. John the Baptist Church','Palai'),(2750,'Vadakkalur','217/VAK','Little Flower Church','Kumbakonam'),(2751,'Vadakkancherry','204/VAD','St Ignatius of Antioch Church','Coimbatore'),(2752,'Vadakkangulam','209/VAD','Holy Family Church','Tuticorin'),(2753,'Vadakke Amichakary','135/VAD','St. George Church','Changanacherry'),(2754,'Vadakkekara','135/VKE','St. Mary Church','Changanacherry'),(2755,'Vadakkemala','137/VAD','St. Sebastian Church','Kanjirapally'),(2756,'Vadakkummury','142/VAD','St. Joseph Church','Kottayam'),(2757,'Vadakode','140/VAD','St. Sebastian Church','Kothamangalam'),(2758,'Vadalur','216/VAD','Sacred Heart Church','Pondicherry-Cuddalore'),(2759,'Vadasery','210/VAD','Church of St James','Kottar'),(2760,'Vadattupara','140/VAA','St. Mary Church','Kothamangalam'),(2761,'Vadavalli','204/VAA','St Antony Church','Coimbatore'),(2762,'Vadavally','146/VDV','Bl Mother Theresa Mission','Ramanathapuram'),(2763,'Vadavathoor','135/VDH','St. Thomas Church','Changanacherry'),(2764,'Vadaveekam','217/VAA','Our Lady of Perpetual Help Church','Kumbakonam'),(2765,'Vadayar','139/VAD','Infant Jesus Church','Ernakulam-Angamaly'),(2766,'Vadipatti','208/VAD','Arockia Annai Shrine','Madurai'),(2767,'Vadiyur','212/VAD','St. John Church','Palayamkottai'),(2768,'Vadugarpet','217/VAV','Our Lady of Good Health Shrine','Kumbakonam'),(2769,'Vaduthala','139/VDH','Sacred Heart Church','Ernakulam-Angamaly'),(2770,'Vagamon','136/VAG','St. Sebastian Church','Palai'),(2771,'Vaikom','139/VAI','St. Joseph Church','Ernakulam-Angamaly'),(2772,'Vaikom Town','139/VKT','Christ the King Church','Ernakulam-Angamaly'),(2773,'Vailankanni','219/VAI','Shrine Basilica of Our Lady of Health','Thanjavur'),(2774,'Vailankanni Nagar (School City)','141/VAI','Vailankanni Matha Church','Idukki'),(2775,'Vaipur New','135/VAN','St. Joseph Church','Changanacherry'),(2776,'Vaipur Old','135/VAO','St. Mary Church','Changanacherry'),(2777,'Vaisyambhagam','135/VBH','St. Antony Church','Changanacherry'),(2778,'Vakakkad','136/VAK','St. Paul Church','Palai'),(2779,'Vakathanam','142/VAK','St. Mathew Church','Kottayam'),(2780,'Vakayar','137/VAK','Infant Jesus Church','Kanjirapally'),(2781,'Vakkad','136/VKD','St. Sebastian Church','Palai'),(2782,'Vakkampatty','214/VAK','St Mary Magdalene Church','Dindigul'),(2783,'Valachira','136/VAL','St. Sebastian Church','Palai'),(2784,'Valamangalam','139/VAL','Sacred Heart Church','Ernakulam-Angamaly'),(2785,'Valangaiman','217/VAL','Holy Redeemer Church','Kumbakonam'),(2786,'Valan Nagar','138/VNG','St. Joseph\'s Church','Thuckalay'),(2787,'Valan Nagar (Carmelites)','207/VAL','Sacred Heart of Jesus Church','Chingleput'),(2788,'Valapaddy','218/VAL','St. Pius X Church','Salem'),(2789,'Valara','141/VAL','St. Joseph\'s Church','Idukki'),(2790,'Valarpuram','207/VAA','Sacred Heart Church','Chingleput'),(2791,'Valasaravakkam','203/VAL','Annai Vailankanni Church','Madras-Mylapore'),(2792,'Valavoor','136/VVR','St. Mary Church','Palai'),(2793,'Valikode','135/VKD','St. George Church','Changanacherry'),(2794,'Valipalayam','204/VAL','St Peter & Paul Church','Coimbatore'),(2795,'Valispet','219/VAL','Our Lady of Presentation Church','Thanjavur'),(2796,'Valiyathovala','137/VAL','Christu Raja Church','Kanjirapally'),(2797,'Valiyattumukham','138/VAM','Mar Siluvai Mission','Thuckalay'),(2798,'Vallakadavu','137/VAV','St. Antony Church','Kanjirapally'),(2799,'Vallakom','139/VKM','St. Mary Church','Ernakulam-Angamaly'),(2800,'Vallam','219/VAM','St Xavier Church','Thanjavur'),(2801,'Vallam','139/VLM','St. Theresa of Avila Forane Church','Ernakulam-Angamaly'),(2802,'Vallam','207/VAR','Infant Jesus Church','Chingleput'),(2803,'Vallamchira','135/VAL','St. Mary Church','Changanacherry'),(2804,'Valliara','139/VLR','St. FrancisXavier Church','Ernakulam-Angamaly'),(2805,'Vallioor','209/VAL','Our Lady of Fatima Church','Tuticorin'),(2806,'Valluvally','139/VLY','St. Antony Church','Ernakulam-Angamaly'),(2807,'Valoor','139/VLO','St. Sebastian Church','Ernakulam-Angamaly'),(2808,'Valparai','204/VAP','Sacred Heart Church','Coimbatore'),(2809,'Valparai','146/VLP','St. Luke Church','Ramanathapuram'),(2810,'Valvachagostam','215/VAL','Church of St. Antony','Kuzhithurai'),(2811,'Vanasthalipuram','190/VAN','Holy Cross Church','Hyderabad'),(2812,'Vanchimala','137/VAM','St. Antony Church','Kanjirapally'),(2813,'Vanchi Nagar','138/VCH','St. Mary\'s Church','Thuckalay'),(2814,'Vandalai','217/VAN','St. Xavier Church','Kumbakonam'),(2815,'Vandamattam','140/VAN','St. George Church','Kothamangalam'),(2816,'Vandanam','212/VAN','St. Francis Xavier Church','Palayamkottai'),(2817,'Vandanmedu','137/VAU','St. Antony Church','Kanjirapally'),(2818,'Vandanpathal','137/VAN','St. Paul Church','Kanjirapally'),(2819,'Vandavasi','205/VDV','Sacred Heart of Jesus Church','Vellore'),(2820,'Vaniakudy','210/VAN','Church of St James','Kottar'),(2821,'Vanibhathadam','139/VAN','Sacred Heart Church','Ernakulam-Angamaly'),(2822,'Vaniyambadi','205/VAN','Mary Help of Christians Church','Vellore'),(2823,'Vannampatty','214/VAN','St Michael Church','Dindigul'),(2824,'Vannappuram','140/VAP','Mar Sleeva Church','Kothamangalam'),(2825,'Vanniyoor (Soosaipuram)','215/SOO','Church of St. Joseph','Kuzhithurai'),(2826,'Vanuvampet','207/VAN','St. Jude\'s Church','Chingleput'),(2827,'Vanuvampet','207VVAN','St. Jude\'s Church','Chingleput'),(2828,'Vappalassery','139/VAP','St. Joseph Church','Ernakulam-Angamaly'),(2829,'Varadarajanpet','217/VAR','Our Lady of Good Health Church','Kumbakonam'),(2830,'Varappetty','142/VAR','St. Mary\'s Church','Kottayam'),(2831,'Varapuzha','139/VPZ','St. Thomas Church','Ernakulam-Angamaly'),(2832,'Varianikkad','136/VAR','St. Joseph Church','Palai'),(2833,'Varthanvilai','215/VAR','Church of St. Antony','Kuzhithurai'),(2834,'Varukulam','139/VUM','St. George Church','Ernakulam-Angamaly'),(2835,'Varuthattu','138/VAR','St. Xavier\'s Church','Thuckalay'),(2836,'Vathakkad','139/VAT','Bharatha Rani Church','Ernakulam-Angamaly'),(2837,'Vathikudy','141/VAT','Lourdu Matha Church','Idukki'),(2838,'Vattakarai','210/VAT','Church of St Joseph','Kottar'),(2839,'Vattakunnu','139/VTN','St. Thomas Church','Ernakulam-Angamaly'),(2840,'Vattam','215/VAT','Church of St. Antony','Kuzhithurai'),(2841,'Vattappara','141/VPR','Infant Jesus Church','Idukki'),(2842,'Vattavada','141/VTV','St. Loretto Matha Church','Idukki'),(2843,'Vattayar','141/VTY','St. Mary\'s Church','Idukki'),(2844,'Vattiyoorkavu','135/VAT','St. Francis Assisi Church','Changanacherry'),(2845,'Vavarai','215/VAV','Church of Our Lady of Mt. Carmel','Kuzhithurai'),(2846,'Vavathurai','210/VAV','Church of St. Roch','Kottar'),(2847,'Vavode','135/VAV','Sacred Heart Church','Changanacherry'),(2848,'Vayala','136/VAY','St. George Church','Palai'),(2849,'Vayalar','139/VAY','Sacred Heart Church','Ernakulam-Angamaly'),(2850,'Vayalinkarai','138/VAK','St. Anthony\'s Church','Thuckalay'),(2851,'Vayalogam','211/VAY','Our Lady of Refuge Church','Tiruchirappalli'),(2852,'Vayalur','219/VAY','Our Lady of Imm. Concep. Church','Thanjavur'),(2853,'Vazhakala','140/VAZ','BVM Rosary Church','Kothamangalam'),(2854,'Vazhakkala','139/VAZ','St. Joseph Church','Ernakulam-Angamaly'),(2855,'Vazhakulam','140/VAH','St. George Forane Church','Kothamangalam'),(2856,'Vazhakulam South','139/VZS','Infant Jesus Church','Ernakulam-Angamaly'),(2857,'Vazhappally West','135/VAZ','St. Mary Church','Changanacherry'),(2858,'Vazhappilly East','140/VAI','St. Ma XmilianKolbe Church','Kothamangalam'),(2859,'Vazhathopu','141/VAZ','St. George\'s Cathedral','Idukki'),(2860,'Vazhavara','141/VVR','St. Mary\'s Church','Idukki'),(2861,'Vazhichal','139/VZC','St. Sebastian Church','Ernakulam-Angamaly'),(2862,'Vazhode','165/VAZ','Holy Cross Church','Marthandom'),(2863,'VC Kurusady','214/VCK','St Paul the Hermit Church','Dindigul'),(2864,'Vechoochira','137/VEC','St. Joseph Church','Kanjirapally'),(2865,'Vechoor','142/VEC','St. George Church','Kottayam'),(2866,'Vedagiri','136/VED','St. Mary Church','Palai'),(2867,'Vedanthangal','207/VED','Sacred Heart Church','Chingleput'),(2868,'Vedasandur','214/VED','Our Lady of Fatima Church','Dindigul'),(2869,'Vedha Nagar','210/VET','Church of St Michael','Kottar'),(2870,'Veerakkurichi-Sukranpatty','219/VEE','St Antony Church','Thanjavur'),(2871,'Veeralur','205/VEE','St Antony Church','Vellore'),(2872,'Veera Pandi Pirivu','204/VEE','Sagaya Annai Church','Coimbatore'),(2873,'Veerareddikuppam','216/VEE','Our Lady of Perpetual Succour Church','Pondicherry-Cuddalore'),(2874,'Veeravanallur','212/VEE','St. James Church','Palayamkottai'),(2875,'Velachery','203/VEL','Our Lady of Perpetual Help Church','Madras-Mylapore'),(2876,'Velanilam','136/VEL','St. Mary Church','Palai'),(2877,'Velanthangal','216/VEL','Assumption Church','Pondicherry-Cuddalore'),(2878,'Velayuthapuram','212/VEL','St. John Berchman Church','Palayamkottai'),(2879,'Velichiyani','137/VCH','St. Thomas Church','Kanjirapally'),(2880,'Velielchal','140/VEL','St. Joseph Church','Kothamangalam'),(2881,'Veliyanad','142/VEL','St. Michael Church','Kottayam'),(2882,'Veliyanad North','135/VEL','St. Gregory Church','Changanacherry'),(2883,'Veliyanad North','135/VDN','St. Joseph Church','Changanacherry'),(2884,'Veliyanad South','135/VDS','St. Xavier Church','Changanacherry'),(2885,'Veliyannoor','142/VEI','St. Mary\'s Church','Kottayam'),(2886,'Vellachipparai','165/VEL','St. Thomas Church','Marthandom'),(2887,'Vellakulam','216/VEA','Our Lady of Fatima Church','Pondicherry-Cuddalore'),(2888,'Vellamadam','210/VEL','Church of St. Martin de Pores','Kottar'),(2889,'Vellambi','138/VEL','St. Michael\'s Mission','Thuckalay'),(2890,'Vellapalayam','218/VEL','St. Mary Magdalene Church','Salem'),(2891,'Vellapatti','209/VEL','Our Lady of Good Counsel Church','Tuticorin'),(2892,'Vellaramkunnu','137/VEL','St. Mary Church','Kanjirapally'),(2893,'Vellarappilly South','139/VEL','St. Joseph Church','Ernakulam-Angamaly'),(2894,'Vellathuval','141/VEL','St. George\'s Church','Idukki'),(2895,'Vellayambalam','215/VEL','Church of St. Antony','Kuzhithurai'),(2896,'Vellayamkudy','141/VKD','St. George\'s Church','Idukki'),(2897,'Vellayani','135/VLN','Little Flower Mission Church','Changanacherry'),(2898,'Velliamattam','136/VMT','St. George Church','Palai'),(2899,'Velliavilai','215/VEI','Church of Good Shepherd','Kuzhithurai'),(2900,'Vellicode','215/VEC','Church of Our Lady of Sorrows','Kuzhithurai'),(2901,'Vellikulam','136/VLM','St. Antony Church','Palai'),(2902,'Velloor','142/VLR','Holy Family Church','Kottayam'),(2903,'Vellore','205/VEL','Our Lady of Assumption Cathedral','Vellore'),(2904,'Vellore (Old Town)','205/VEO','Arockia Madha Church','Vellore'),(2905,'Vembar','209/VEB','St Thomas Church','Tuticorin'),(2906,'Vembar','209/VEM','Holy Ghost Church','Tuticorin'),(2907,'Vembarpatty','214/VEM','Our Lady of Lourdes Church','Dindigul'),(2908,'Vemboor','209/VEO','Infant Jesus Church','Tuticorin'),(2909,'Venchempu','135/VPU','St. George Church','Changanacherry'),(2910,'Vencode','215/VEN','Church of St. Francis Xavier','Kuzhithurai'),(2911,'Vengai Vasal','207/VEN','Arockiya Annai Alayam','Chingleput'),(2912,'Vengoor','139/VEN','St. Joseph Church','Ernakulam-Angamaly'),(2913,'Venjarammood','135/VEN','Amala Pastoral Centre','Changanacherry'),(2914,'Venkatachalapuram','212/VEN','Our Lady of Assumption Church','Palayamkottai'),(2915,'Venkatakulam','219/VEN','Our Lady of Refuge Church','Thanjavur'),(2916,'Venkatapuram','190/VEN','St. Anthony Church','Hyderabad'),(2917,'Venmony','141/VEN','St. George\'s Church','Idukki'),(2918,'Vennala','139/VNL','St. Mathew Church','Ernakulam-Angamaly'),(2919,'Vepery-1','203/VPY','St Andrew Chruch','Madras-Mylapore'),(2920,'Vepery-2','203/VEP','St Joseph Church','Madras-Mylapore'),(2921,'Veppoor','205/VEP','Holy Cross Church','Vellore'),(2922,'Veroor','135/VER','St. Joseph Church','Changanacherry'),(2923,'Vettampara','140/VET','St. Sebastian Church','Kothamangalam'),(2924,'Vettavalam','205/VET','Immaculate Heart of Mary Church','Vellore'),(2925,'Vettickapurayidom','135/VTK','St. Sebastian Church','Changanacherry'),(2926,'Vettikkuzhy','165/VKZ','St. Mary\'s Church','Marthandom'),(2927,'Vettilapara','139/VET','St. Sebastian Church','Ernakulam-Angamaly'),(2928,'Vettimattam','140/VEI','St. Francis de Sales Church','Kothamangalam'),(2929,'Vettimukal','135/VTM','St. Mary Church','Changanacherry'),(2930,'Vettithuruth','135/VET','St. Antony Church','Changanacherry'),(2931,'Vettuvankeni','207/VET','St. Joachim and Anne Church','Chingleput'),(2932,'Vettuvenni Shrine','215/VET','Shrine of St. Antony','Kuzhithurai'),(2933,'Vezhanganam','136/VEZ','St. Joseph Navanazareth Church','Palai'),(2934,'Vezhapra','135/VEZ','St. Paul Church','Changanacherry'),(2935,'Vichoor','219/VIC','Our Lady of Mary Immaculate Church','Thanjavur'),(2936,'Vijopuram','139/VIJ','St. Joseph Church','Ernakulam-Angamaly'),(2937,'Vikarabad','190/VIK','St. Jude Shrine','Hyderabad'),(2938,'Vikravandi','216/VIK','Our Lady of Perpetual Succour Church','Pondicherry-Cuddalore'),(2939,'Vilagam','217/VIL','St. Antony\'s Church','Kumbakonam'),(2940,'Vilakumadam','136/VIL','St. Francis Xavier Church','Palai'),(2941,'Vilangu','139/VIL','St. Mary Church','Ernakulam-Angamaly'),(2942,'Vilathikulam','209/VIL','St Antony Church','Tuticorin'),(2943,'Villianur','216/VIL','Our Lady of Lourdes Shrine','Pondicherry-Cuddalore'),(2944,'Villiavarambal','217/VIA','St. Sebastian Church','Kumbakonam'),(2945,'Villivakam','203/VIL','St John de Britto','Madras-Mylapore'),(2946,'Villupuram','216/VIP','St Francis Xavier Church','Pondicherry-Cuddalore'),(2947,'Villupuram','216/VLP','Christ the King Church','Pondicherry-Cuddalore'),(2948,'Vimalagiri','135/VIM','Queen of Virgins Church','Changanacherry'),(2949,'Vimalagiri','141/VIM','Vimala Matha Church','Idukki'),(2950,'Vimalagiri','136/VIM','St. Mary Church','Palai'),(2951,'Vimalagiri','139/VIM','Mary Immaculate Church','Ernakulam-Angamaly'),(2952,'Vimalapuram','165/VIM','Mary Immaculate Church','Marthandom'),(2953,'Vinoba Nagar','216/VIN','St Joseph Church','Pondicherry-Cuddalore'),(2954,'Vippedu','207/VIP','St. Antony\'s Church','Chingleput'),(2955,'Viragalur','217/VIR','Our Lady of Seven Dolours Church','Kumbakonam'),(2956,'Viralimalai','211/VIR','St Philip Neri Church','Tiruchirappalli'),(2957,'Virapandianpattanam','209/VIR','St Thomas Church','Tuticorin'),(2958,'Viripara','141/VIR','St. Antony\'s Church','Idukki'),(2959,'Viriyur','216/VIR','Our Lady of Refuge Church','Pondicherry-Cuddalore'),(2960,'Virudhunagar','208/VIR','St. Ignatius Church','Madurai'),(2961,'Viruduvilanginan','205/VIR','St Antony Shrine','Vellore'),(2962,'Visuvasampatti','220/VIS','Our Lady of Lourdes Church','Dharmapuri'),(2963,'Viswanathapuram','138/VIS','St. Thomas Church','Thuckalay'),(2964,'Viswasapuram','146/VSP','St. Antony Church','Ramanathapuram'),(2965,'Vithura','135/VIT','All Saints Church','Changanacherry'),(2966,'Vithura','142/VIT','St. Mary\'s Church','Kottayam'),(2967,'Vizhapallam','217/VIZ','St. Sebastian Church','Kumbakonam'),(2968,'Vizhinjam','135/VIZ','St. Peter Church','Changanacherry'),(2969,'Vizhunthayambalam','215/VIZ','Church of St. Antony','Kuzhithurai'),(2970,'Vridachalam','216/VRI','Our Lady of Fatima Church','Pondicherry-Cuddalore'),(2971,'Vyasarpadi','203/VYA','Our Lady of Consolation','Madras-Mylapore'),(2972,'Walajabad','207/WAL','St. Francis of Assisi Church','Chingleput'),(2973,'Walayar','204/WAL','St Stanislaus Church','Coimbatore'),(2974,'Wallardy','137/WAL','Holy Cross Church','Kanjirapally'),(2975,'Washermenpet','203/WAS','St Roque Church','Madras-Mylapore'),(2976,'Wellington','206/WEL','St Joseph Church','Ootacamund'),(2977,'West Marianathapuram','214/WES','Our Lady of Assumption Church','Dindigul'),(2978,'Woraiyur','211/WOR','St Antony of Padua Church','Tiruchirappalli'),(2979,'W Pudupatti','208/WPU','Sacred Heart of Jesus Church','Madurai'),(2980,'Xavierpuram','136/XAV','St. Francis Xavier Church','Palai'),(2981,'Yapral','190/YAP','St. Francis Xavier Church','Hyderabad'),(2982,'Yeddumilarem','190/YED','Our Lady of Perpetual Help Church','Hyderabad'),(2983,'Yelagiri Mission','205/YLG','Our Lady of Lourdes Church','Vellore'),(2984,'Yellareddy','190/YEL','St. Francis of Assisi Church','Hyderabad'),(2985,'Yenthayar','136/YEN','St. Mary Church','Palai'),(2986,'Yercaud','218/YER','Sacred Heart Church','Salem'),(2987,'Yettacode','215/YET','Church of St. Francis Xavier','Kuzhithurai'),(2988,'Yordhanapuram','139/YOR','St. John the Baptist Church','Ernakulam-Angamaly'),(2989,'Yudapuram','135/YUD','St. Jude Church','Changanacherry'),(2990,'Zahirabad','190/ZAH','Arogya Matha Church','Hyderabad'),(2991,'Zamin Gudalore','205/ZAM','St Francis Xavier Church','Vellore');
/*!40000 ALTER TABLE `cristo_master_parish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_master_relationship`
--

DROP TABLE IF EXISTS `cristo_master_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_master_relationship` (
  `RELATIONSHIP_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL DEFAULT '',
  `GENDER` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`RELATIONSHIP_ID`),
  KEY `UNQ_NAME` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_master_relationship`
--

LOCK TABLES `cristo_master_relationship` WRITE;
/*!40000 ALTER TABLE `cristo_master_relationship` DISABLE KEYS */;
INSERT INTO `cristo_master_relationship` VALUES (1,'Husband','1'),(2,'Wife','2'),(3,'Son','1'),(4,'Daughter','2'),(5,'Father','1'),(6,'Mother','2'),(7,'Brother','1'),(8,'Sister','2'),(9,'Grand Father','1'),(10,'Grand Mother','2'),(11,'Mother-in-Law','2'),(12,'Father-in-Law','1'),(13,'Son-in-Law','1'),(14,'Daughter-in-Law','2'),(15,'Aunty','2'),(16,'Uncle','1'),(17,'Other','1'),(18,'Other','2'),(19,'Sister-in-Law','2'),(20,'Brother-in-Law','1');
/*!40000 ALTER TABLE `cristo_master_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_master_religion`
--

DROP TABLE IF EXISTS `cristo_master_religion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_master_religion` (
  `RELIGION_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL DEFAULT '',
  `CODE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`RELIGION_ID`),
  UNIQUE KEY `UNQ_NAME` (`NAME`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_master_religion`
--

LOCK TABLES `cristo_master_religion` WRITE;
/*!40000 ALTER TABLE `cristo_master_religion` DISABLE KEYS */;
INSERT INTO `cristo_master_religion` VALUES (1,'Buddhism','BUD'),(2,'Catholic','CAT'),(3,'Hindu','HIN'),(4,'Jainism','JAI'),(5,'Muslim','MUS'),(6,'Other','OT'),(7,'Pentacost','PEN'),(8,'Protestant','PRO'),(9,'Sikhism','SIK'),(10,'Zoroastrians','ZOR');
/*!40000 ALTER TABLE `cristo_master_religion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_master_rite`
--

DROP TABLE IF EXISTS `cristo_master_rite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_master_rite` (
  `RITE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`RITE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_master_rite`
--

LOCK TABLES `cristo_master_rite` WRITE;
/*!40000 ALTER TABLE `cristo_master_rite` DISABLE KEYS */;
INSERT INTO `cristo_master_rite` VALUES (5,'Latin'),(6,'Syro-Malabar'),(7,'Syro-Malankara');
/*!40000 ALTER TABLE `cristo_master_rite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_master_state`
--

DROP TABLE IF EXISTS `cristo_master_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_master_state` (
  `STATE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `STATE_CODE` varchar(30) DEFAULT NULL,
  `STATE_NAME` varchar(50) NOT NULL DEFAULT '',
  `COUNTRY_ID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`STATE_ID`),
  UNIQUE KEY `UNQ_STATE_NAME` (`STATE_NAME`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_master_state`
--

LOCK TABLES `cristo_master_state` WRITE;
/*!40000 ALTER TABLE `cristo_master_state` DISABLE KEYS */;
INSERT INTO `cristo_master_state` VALUES (3,'ACT','Australian Capital Territory',88),(4,'AK','Alaska',17),(5,'AL','Alabama',17),(6,'AR','Arkansas',17),(7,'AZ','Arizona',17),(8,'CA','California',17),(9,'CO','Colorado',17),(10,'CT','Connecticut',17),(11,'DC','District of Columbia',17),(12,'DE','Delaware',17),(13,'FL','Florida',17),(14,'GA','Georgia',17),(15,'HI','Hawaii',17),(16,'IA','Iowa',17),(17,'ID','Idaho',17),(18,'IL','Illinois',17),(19,'IN','Indiana',17),(20,'IN-','Mizoram',1),(21,'IN-','Nagaland',1),(22,'IN-','Odisha',1),(23,'IN-','Punjab',1),(24,'IN-','Rajasthan',1),(25,'IN-','Sikkim',1),(26,'IN-','Tamil Nadu',1),(27,'IN-','Andhra Pradesh',1),(28,'IN-','Tripura',1),(29,'IN-','Uttarakhand',1),(30,'IN-','Uttar Pradesh',1),(31,'IN-','West Bengal',1),(32,'IN-','Andaman and Nicobar Islands',1),(33,'IN-','Chandigarh',1),(34,'IN-','Dadra and Nagar Haveli',1),(35,'IN-','Daman and Diu',1),(36,'IN-','Delhi',1),(37,'IN-','Lakshadweep',1),(38,'IN-','Pondicherry',1),(39,'IN-','Telangana',1),(40,'IN-','Arunachal Pradesh',1),(41,'IN-','Assam',1),(42,'IN-','Bihar',1),(43,'IN-','Chhattisgarh',1),(44,'IN-','Goa',1),(45,'IN-','Gujarat',1),(46,'IN-','Haryana',1),(47,'IN-','Himachal Pradesh',1),(48,'IN-','Jammu and Kashmir',1),(49,'IN-','Jharkhand',1),(50,'IN-','Karnataka',1),(51,'IN-','Kerala',1),(52,'IN-','Madhya Pradesh',1),(53,'IN-','Maharashtra',1),(54,'IN-','Manipur',1),(55,'IN-','Meghalaya',1),(56,'KS','Kansas',17),(57,'KY','Kentucky',17),(58,'LA','Louisiana',17),(59,'MA','Massachusetts',17),(60,'MD','Maryland',17),(61,'ME','Maine',17),(62,'MI','Michigan',17),(63,'MN','Minnesota',17),(64,'MO','Missouri',17),(65,'MS','Mississippi',17),(66,'MT','Montana',17),(67,'NC','North Carolina',17),(68,'ND','North Dakota',17),(69,'NE','Nebraska',17),(70,'NH','New Hampshire',17),(71,'NJ','New Jersey',17),(72,'NM','New Mexico',17),(73,'NSW','New South Wales',88),(74,'NT','Northern Territory',88),(75,'NV','Nevada',17),(76,'NY','New York',17),(77,'OH','Ohio',17),(78,'OK','Oklahoma',17),(79,'OR','Oregon',17),(80,'OR','Orissa',1),(81,'PA','Pennsylvania',17),(82,'QLD','Queensland',88),(83,'RI','Rhode Island',17),(84,'SA','South Australia',88),(85,'SC','South Carolina',17),(86,'SD','South Dakota',17),(87,'TAS','Tasmania',88),(88,'TN','Tennessee',17),(89,'TX','Texas',17),(90,'UT','Utah',17),(91,'VA','Virginia',17),(92,'VIC','Victoria',88),(93,'VT','Vermont',17),(94,'WA','Western Australia',88),(95,'WA','Washington',17),(96,'WI','Wisconsin',17),(97,'WV','West Virginia',17),(98,'WY','Wyoming',17);
/*!40000 ALTER TABLE `cristo_master_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_master_subscription`
--

DROP TABLE IF EXISTS `cristo_master_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_master_subscription` (
  `SUBSCRIPTION_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SUBSCRIPTION_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `FAMILY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TOTAL_COLLECTION_AMOUNT` decimal(10,0) NOT NULL DEFAULT '0',
  `TOTAL_CONCESSION_AMOUNT` decimal(10,0) DEFAULT NULL,
  `TRANS_FLAG` varchar(2) NOT NULL DEFAULT 'TR' COMMENT 'OP-OPENING BALANCE, TR-TRANSACTION',
  `REF_NO` varchar(20) DEFAULT NULL,
  `USER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CASHBANK_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MATERIALIZED_ON` datetime DEFAULT NULL,
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `COLLECTION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`SUBSCRIPTION_ID`),
  KEY `FK_PROJECT_ID` (`PROJECT_ID`),
  KEY `FK_cristo_master_subscription_1` (`CASHBANK_LEDGER_ID`) USING BTREE,
  CONSTRAINT `FK_cristo_master_subscription_2` FOREIGN KEY (`CASHBANK_LEDGER_ID`) REFERENCES `master_ledger` (`LEDGER_ID`),
  CONSTRAINT `FK_PROJECT_ID` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_master_subscription`
--

LOCK TABLES `cristo_master_subscription` WRITE;
/*!40000 ALTER TABLE `cristo_master_subscription` DISABLE KEYS */;
INSERT INTO `cristo_master_subscription` VALUES (6,'2015-07-04 00:00:00',1,700,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,6),(8,'2015-08-05 00:00:00',7,700,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,8),(9,'2015-06-05 00:00:00',10,200,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,9),(10,'2015-09-04 00:00:00',18,700,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,10),(11,'2015-10-10 00:00:00',19,700,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,11),(12,'2015-06-01 00:00:00',31,700,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,12),(13,'2015-06-05 00:00:00',37,700,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,13),(14,'2015-06-10 00:00:00',42,400,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,14),(15,'2015-08-08 00:00:00',44,700,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,15),(16,'2015-08-16 00:00:00',50,700,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,16),(17,'2015-06-01 00:00:00',11,200,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,17),(18,'2015-06-01 00:00:00',28,700,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,18),(19,'2015-06-01 00:00:00',35,350,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,19),(20,'2015-06-01 00:00:00',36,300,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,20),(21,'2015-06-01 00:00:00',41,700,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,21),(22,'2015-06-01 00:00:00',45,1400,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,22),(23,'2015-09-08 00:00:00',54,14000,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,23),(24,'2015-09-15 00:00:00',29,1000,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,24),(25,'2015-08-01 00:00:00',4,700,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,25),(26,'2015-06-01 00:00:00',43,2000,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,26),(27,'2015-08-10 00:00:00',30,700,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,27),(30,'2016-05-05 00:00:00',4,600,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,30),(31,'2016-02-15 00:00:00',18,200,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,31),(32,'2016-01-05 00:00:00',19,100,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,32),(33,'2016-01-05 00:00:00',28,1000,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,33),(34,'2016-01-05 00:00:00',29,1000,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,34),(35,'2016-06-01 00:00:00',35,700,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,35),(36,'2016-03-25 00:00:00',37,300,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,36),(37,'2016-03-25 00:00:00',41,400,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,37),(38,'2016-03-25 00:00:00',44,300,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,38),(39,'2016-05-05 00:00:00',45,1000,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,39),(40,'2016-09-09 00:00:00',50,1200,0,'TR','',1,1,3,'2015-06-01 00:00:00',1040,40);
/*!40000 ALTER TABLE `cristo_master_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_offering`
--

DROP TABLE IF EXISTS `cristo_offering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_offering` (
  `OFFERING_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `OFFERING_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `IS_PARISHNER` int(10) unsigned NOT NULL DEFAULT '0',
  `BCC_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `FAMILY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NAME` varchar(50) NOT NULL DEFAULT '',
  `PLACE` varchar(45) NOT NULL DEFAULT '',
  `CATEGORY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `FEAST_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PURPOSE` varchar(300) NOT NULL DEFAULT '',
  `AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `CASHBANK_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `REF_NO` varchar(45) DEFAULT NULL,
  `USER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MATERIALIZED_ON` datetime DEFAULT NULL,
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`OFFERING_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_offering`
--

LOCK TABLES `cristo_offering` WRITE;
/*!40000 ALTER TABLE `cristo_offering` DISABLE KEYS */;
INSERT INTO `cristo_offering` VALUES (1,'2016-07-26 00:00:00',0,3,54,'','',11,0,'to be discussed',1000.00,1,'2',1,3,'2016-07-26 00:00:00',1008),(2,'2016-07-26 00:00:00',1,0,0,'Vallapadoss','Tirupattur',11,0,'Parish Feast',200.00,1,'',1,3,'2016-07-26 00:00:00',1010);
/*!40000 ALTER TABLE `cristo_offering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_offering_category`
--

DROP TABLE IF EXISTS `cristo_offering_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_offering_category` (
  `CATEGORY_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CATEGORY_NAME` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`CATEGORY_ID`),
  UNIQUE KEY `CATEGORY_NAME` (`CATEGORY_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_offering_category`
--

LOCK TABLES `cristo_offering_category` WRITE;
/*!40000 ALTER TABLE `cristo_offering_category` DISABLE KEYS */;
INSERT INTO `cristo_offering_category` VALUES (13,'Feasts'),(11,'Offerings');
/*!40000 ALTER TABLE `cristo_offering_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_offering_feasts`
--

DROP TABLE IF EXISTS `cristo_offering_feasts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_offering_feasts` (
  `FEAST_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FEAST_NAME` varchar(45) NOT NULL DEFAULT '',
  `CATEGORY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_MANDATORY` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`FEAST_ID`),
  KEY `FK_cristo_offering_feasts_Category` (`CATEGORY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_offering_feasts`
--

LOCK TABLES `cristo_offering_feasts` WRITE;
/*!40000 ALTER TABLE `cristo_offering_feasts` DISABLE KEYS */;
INSERT INTO `cristo_offering_feasts` VALUES (1,'Thanks giving',2,0);
/*!40000 ALTER TABLE `cristo_offering_feasts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_parish_subscription`
--

DROP TABLE IF EXISTS `cristo_parish_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_parish_subscription` (
  `PARISH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `APPLICABLE_FROM` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `AMOUNT` decimal(10,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_parish_subscription`
--

LOCK TABLES `cristo_parish_subscription` WRITE;
/*!40000 ALTER TABLE `cristo_parish_subscription` DISABLE KEYS */;
INSERT INTO `cristo_parish_subscription` VALUES (1,'2016-01-01 00:00:00',100);
/*!40000 ALTER TABLE `cristo_parish_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristo_subscription_detail`
--

DROP TABLE IF EXISTS `cristo_subscription_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cristo_subscription_detail` (
  `SUBSCRIPTION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MONTH_NAME` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `AMOUNT` decimal(10,0) NOT NULL DEFAULT '0',
  `COLLECTION_AMOUNT` decimal(10,0) NOT NULL DEFAULT '0',
  `CONCESSION_AMOUNT` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristo_subscription_detail`
--

LOCK TABLES `cristo_subscription_detail` WRITE;
/*!40000 ALTER TABLE `cristo_subscription_detail` DISABLE KEYS */;
INSERT INTO `cristo_subscription_detail` VALUES (6,'2015-06-01 00:00:00',100,100,0),(6,'2015-07-01 00:00:00',100,100,0),(6,'2015-08-01 00:00:00',100,100,0),(6,'2015-09-01 00:00:00',100,100,0),(6,'2015-10-01 00:00:00',100,100,0),(6,'2015-11-01 00:00:00',100,100,0),(6,'2015-12-01 00:00:00',100,100,0),(8,'2015-06-01 00:00:00',100,100,0),(8,'2015-07-01 00:00:00',100,100,0),(8,'2015-08-01 00:00:00',100,100,0),(8,'2015-09-01 00:00:00',100,100,0),(8,'2015-10-01 00:00:00',100,100,0),(8,'2015-11-01 00:00:00',100,100,0),(8,'2015-12-01 00:00:00',100,100,0),(9,'2015-06-01 00:00:00',100,100,0),(9,'2015-07-01 00:00:00',100,100,0),(10,'2015-06-01 00:00:00',100,100,0),(10,'2015-07-01 00:00:00',100,100,0),(10,'2015-08-01 00:00:00',100,100,0),(10,'2015-09-01 00:00:00',100,100,0),(10,'2015-10-01 00:00:00',100,100,0),(10,'2015-11-01 00:00:00',100,100,0),(10,'2015-12-01 00:00:00',100,100,0),(11,'2015-06-01 00:00:00',100,100,0),(11,'2015-07-01 00:00:00',100,100,0),(11,'2015-08-01 00:00:00',100,100,0),(11,'2015-09-01 00:00:00',100,100,0),(11,'2015-10-01 00:00:00',100,100,0),(11,'2015-11-01 00:00:00',100,100,0),(11,'2015-12-01 00:00:00',100,100,0),(12,'2015-06-01 00:00:00',100,100,0),(12,'2015-07-01 00:00:00',100,100,0),(12,'2015-08-01 00:00:00',100,100,0),(12,'2015-09-01 00:00:00',100,100,0),(12,'2015-10-01 00:00:00',100,100,0),(12,'2015-11-01 00:00:00',100,100,0),(12,'2015-12-01 00:00:00',100,100,0),(13,'2015-06-01 00:00:00',100,100,0),(13,'2015-07-01 00:00:00',100,100,0),(13,'2015-08-01 00:00:00',100,100,0),(13,'2015-09-01 00:00:00',100,100,0),(13,'2015-10-01 00:00:00',100,100,0),(13,'2015-11-01 00:00:00',100,100,0),(13,'2015-12-01 00:00:00',100,100,0),(14,'2015-06-01 00:00:00',100,100,0),(14,'2015-07-01 00:00:00',100,100,0),(14,'2015-08-01 00:00:00',100,100,0),(14,'2015-09-01 00:00:00',100,100,0),(15,'2015-06-01 00:00:00',100,100,0),(15,'2015-07-01 00:00:00',100,100,0),(15,'2015-08-01 00:00:00',100,100,0),(15,'2015-09-01 00:00:00',100,100,0),(15,'2015-10-01 00:00:00',100,100,0),(15,'2015-11-01 00:00:00',100,100,0),(15,'2015-12-01 00:00:00',100,100,0),(16,'2015-06-01 00:00:00',100,100,0),(16,'2015-07-01 00:00:00',100,100,0),(16,'2015-08-01 00:00:00',100,100,0),(16,'2015-09-01 00:00:00',100,100,0),(16,'2015-10-01 00:00:00',100,100,0),(16,'2015-11-01 00:00:00',100,100,0),(16,'2015-12-01 00:00:00',100,100,0),(17,'2015-06-01 00:00:00',50,50,0),(17,'2015-07-01 00:00:00',50,50,0),(17,'2015-08-01 00:00:00',50,50,0),(17,'2015-09-01 00:00:00',50,50,0),(18,'2015-06-01 00:00:00',100,100,0),(18,'2015-07-01 00:00:00',100,100,0),(18,'2015-08-01 00:00:00',100,100,0),(18,'2015-09-01 00:00:00',100,100,0),(18,'2015-10-01 00:00:00',100,100,0),(18,'2015-11-01 00:00:00',100,100,0),(18,'2015-12-01 00:00:00',100,100,0),(19,'2015-06-01 00:00:00',50,50,0),(19,'2015-07-01 00:00:00',50,50,0),(19,'2015-08-01 00:00:00',50,50,0),(19,'2015-09-01 00:00:00',50,50,0),(19,'2015-10-01 00:00:00',50,50,0),(19,'2015-11-01 00:00:00',50,50,0),(19,'2015-12-01 00:00:00',50,50,0),(21,'2015-06-01 00:00:00',100,100,0),(21,'2015-07-01 00:00:00',100,100,0),(21,'2015-08-01 00:00:00',100,100,0),(21,'2015-09-01 00:00:00',100,100,0),(21,'2015-10-01 00:00:00',100,100,0),(21,'2015-11-01 00:00:00',100,100,0),(21,'2015-12-01 00:00:00',100,100,0),(22,'2015-06-01 00:00:00',200,200,0),(22,'2015-07-01 00:00:00',200,200,0),(22,'2015-08-01 00:00:00',200,200,0),(22,'2015-09-01 00:00:00',200,200,0),(22,'2015-10-01 00:00:00',200,200,0),(22,'2015-11-01 00:00:00',200,200,0),(22,'2015-12-01 00:00:00',200,200,0),(23,'2015-06-01 00:00:00',2000,2000,0),(23,'2015-07-01 00:00:00',2000,2000,0),(23,'2015-08-01 00:00:00',2000,2000,0),(23,'2015-09-01 00:00:00',2000,2000,0),(23,'2015-10-01 00:00:00',2000,2000,0),(23,'2015-11-01 00:00:00',2000,2000,0),(23,'2015-12-01 00:00:00',2000,2000,0),(24,'2015-06-01 00:00:00',1000,1000,0),(25,'2015-06-01 00:00:00',100,100,0),(25,'2015-07-01 00:00:00',100,100,0),(25,'2015-08-01 00:00:00',100,100,0),(25,'2015-09-01 00:00:00',100,100,0),(25,'2015-10-01 00:00:00',100,100,0),(25,'2015-11-01 00:00:00',100,100,0),(25,'2015-12-01 00:00:00',100,100,0),(26,'2015-07-01 00:00:00',500,500,0),(26,'2015-08-01 00:00:00',500,500,0),(26,'2015-09-01 00:00:00',500,500,0),(26,'2015-10-01 00:00:00',500,500,0),(20,'2015-06-01 00:00:00',50,50,0),(20,'2015-07-01 00:00:00',50,50,0),(20,'2015-08-01 00:00:00',50,50,0),(20,'2015-09-01 00:00:00',50,50,0),(20,'2015-10-01 00:00:00',50,50,0),(20,'2015-11-01 00:00:00',50,50,0),(27,'2015-06-01 00:00:00',100,100,0),(27,'2015-07-01 00:00:00',100,100,0),(27,'2015-08-01 00:00:00',100,100,0),(27,'2015-09-01 00:00:00',100,100,0),(27,'2015-10-01 00:00:00',100,100,0),(27,'2015-11-01 00:00:00',100,100,0),(27,'2015-12-01 00:00:00',100,100,0),(30,'2016-01-01 00:00:00',100,100,0),(30,'2016-02-01 00:00:00',100,100,0),(30,'2016-03-01 00:00:00',100,100,0),(30,'2016-04-01 00:00:00',100,100,0),(30,'2016-05-01 00:00:00',100,100,0),(30,'2016-06-01 00:00:00',100,100,0),(31,'2016-01-01 00:00:00',100,100,0),(31,'2016-02-01 00:00:00',100,100,0),(32,'2016-01-01 00:00:00',100,100,0),(33,'2016-01-01 00:00:00',100,100,0),(33,'2016-02-01 00:00:00',100,100,0),(33,'2016-03-01 00:00:00',100,100,0),(33,'2016-04-01 00:00:00',100,100,0),(33,'2016-05-01 00:00:00',100,100,0),(33,'2016-06-01 00:00:00',100,100,0),(33,'2016-07-01 00:00:00',100,100,0),(33,'2016-08-01 00:00:00',100,100,0),(33,'2016-09-01 00:00:00',100,100,0),(33,'2016-10-01 00:00:00',100,100,0),(34,'2016-01-01 00:00:00',1000,1000,0),(35,'2016-01-01 00:00:00',100,100,0),(35,'2016-02-01 00:00:00',100,100,0),(35,'2016-03-01 00:00:00',100,100,0),(35,'2016-04-01 00:00:00',100,100,0),(35,'2016-05-01 00:00:00',100,100,0),(35,'2016-06-01 00:00:00',100,100,0),(35,'2016-07-01 00:00:00',100,100,0),(36,'2016-01-01 00:00:00',100,100,0),(36,'2016-02-01 00:00:00',100,100,0),(36,'2016-03-01 00:00:00',100,100,0),(37,'2016-01-01 00:00:00',100,100,0),(37,'2016-02-01 00:00:00',100,100,0),(37,'2016-03-01 00:00:00',100,100,0),(37,'2016-04-01 00:00:00',100,100,0),(38,'2016-01-01 00:00:00',100,100,0),(38,'2016-02-01 00:00:00',100,100,0),(38,'2016-03-01 00:00:00',100,100,0),(39,'2016-01-01 00:00:00',200,200,0),(39,'2016-02-01 00:00:00',200,200,0),(39,'2016-03-01 00:00:00',200,200,0),(39,'2016-04-01 00:00:00',200,200,0),(39,'2016-05-01 00:00:00',200,200,0),(40,'2016-01-01 00:00:00',100,100,0),(40,'2016-02-01 00:00:00',100,100,0),(40,'2016-03-01 00:00:00',100,100,0),(40,'2016-04-01 00:00:00',100,100,0),(40,'2016-05-01 00:00:00',100,100,0),(40,'2016-06-01 00:00:00',100,100,0),(40,'2016-07-01 00:00:00',100,100,0),(40,'2016-08-01 00:00:00',100,100,0),(40,'2016-09-01 00:00:00',100,100,0),(40,'2016-10-01 00:00:00',100,100,0),(40,'2016-11-01 00:00:00',100,100,0),(40,'2016-12-01 00:00:00',100,100,0);
/*!40000 ALTER TABLE `cristo_subscription_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_report`
--

DROP TABLE IF EXISTS `custom_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_report` (
  `CUSTOM_REPORT_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SERIALIZED_REPORT` longblob,
  `REPORT_NAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CUSTOM_REPORT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_report`
--

LOCK TABLES `custom_report` WRITE;
/*!40000 ALTER TABLE `custom_report` DISABLE KEYS */;
INSERT INTO `custom_report` VALUES (1,0x2F2F2F203C585254797065496E666F3E0D0A2F2F2F2020203C417373656D626C7946756C6C4E616D653E426F73636F2E5265706F72742C2056657273696F6E3D322E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D6E756C6C3C2F417373656D626C7946756C6C4E616D653E0D0A2F2F2F2020203C417373656D626C794C6F636174696F6E3E433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C426F73636F2E5265706F72742E646C6C3C2F417373656D626C794C6F636174696F6E3E0D0A2F2F2F2020203C547970654E616D653E426F73636F2E5265706F72742E5265706F72744F626A6563742E4465617468526567697374657243657274696669636174653C2F547970654E616D653E0D0A2F2F2F2020203C4C6F63616C697A6174696F6E3E656E2D55533C2F4C6F63616C697A6174696F6E3E0D0A2F2F2F2020203C56657273696F6E3E31332E322E373C2F56657273696F6E3E0D0A2F2F2F2020203C5265666572656E6365733E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C426F73636F2E5265706F72742E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E5574696C732E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E57696E646F77732E466F726D735C76342E305F342E302E302E305F5F623737613563353631393334653038395C53797374656D2E57696E646F77732E466F726D732E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E44726177696E675C76342E305F342E302E302E305F5F623033663566376631316435306133615C53797374656D2E44726177696E672E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D5C76342E305F342E302E302E305F5F623737613563353631393334653038395C53797374656D2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E436F6E66696775726174696F6E5C76342E305F342E302E302E305F5F623033663566376631316435306133615C53797374656D2E436F6E66696775726174696F6E2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E586D6C5C76342E305F342E302E302E305F5F623737613563353631393334653038395C53797374656D2E586D6C2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E446174612E53716C586D6C5C76342E305F342E302E302E305F5F623737613563353631393334653038395C53797374656D2E446174612E53716C586D6C2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E53656375726974795C76342E305F342E302E302E305F5F623033663566376631316435306133615C53797374656D2E53656375726974792E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C4163636573736962696C6974795C76342E305F342E302E302E305F5F623033663566376631316435306133615C4163636573736962696C6974792E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E52756E74696D652E53657269616C697A6174696F6E2E466F726D6174746572732E536F61705C76342E305F342E302E302E305F5F623033663566376631316435306133615C53797374656D2E52756E74696D652E53657269616C697A6174696F6E2E466F726D6174746572732E536F61702E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E4465706C6F796D656E745C76342E305F342E302E302E305F5F623033663566376631316435306133615C53797374656D2E4465706C6F796D656E742E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E436F72655C76342E305F342E302E302E305F5F623737613563353631393334653038395C53797374656D2E436F72652E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E4E756D65726963735C76342E305F342E302E302E305F5F623737613563353631393334653038395C53797374656D2E4E756D65726963732E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E52756E74696D652E52656D6F74696E675C76342E305F342E302E302E305F5F623737613563353631393334653038395C53797374656D2E52756E74696D652E52656D6F74696E672E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F33325C53797374656D2E5765625C76342E305F342E302E302E305F5F623033663566376631316435306133615C53797374656D2E5765622E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C4D6963726F736F66742E4275696C642E4672616D65776F726B5C76342E305F342E302E302E305F5F623033663566376631316435306133615C4D6963726F736F66742E4275696C642E4672616D65776F726B2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E58616D6C5C76342E305F342E302E302E305F5F623737613563353631393334653038395C53797374656D2E58616D6C2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E52756E74696D652E43616368696E675C76342E305F342E302E302E305F5F623033663566376631316435306133615C53797374656D2E52756E74696D652E43616368696E672E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F33325C53797374656D2E446174615C76342E305F342E302E302E305F5F623737613563353631393334653038395C53797374656D2E446174612E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C4D6963726F736F66742E56697375616C435C76342E305F31302E302E302E305F5F623033663566376631316435306133615C4D6963726F736F66742E56697375616C432E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F33325C53797374656D2E5472616E73616374696F6E735C76342E305F342E302E302E305F5F623737613563353631393334653038395C53797374656D2E5472616E73616374696F6E732E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F33325C53797374656D2E456E746572707269736553657276696365735C76342E305F342E302E302E305F5F623033663566376631316435306133615C53797374656D2E456E746572707269736553657276696365732E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E4469726563746F727953657276696365735C76342E305F342E302E302E305F5F623033663566376631316435306133615C53797374656D2E4469726563746F727953657276696365732E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E5765622E4170706C69636174696F6E53657276696365735C76342E305F342E302E302E305F5F333162663338353661643336346533355C53797374656D2E5765622E4170706C69636174696F6E53657276696365732E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E5765622E53657276696365735C76342E305F342E302E302E305F5F623033663566376631316435306133615C53797374656D2E5765622E53657276696365732E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E44657369676E5C76342E305F342E302E302E305F5F623033663566376631316435306133615C53797374656D2E44657369676E2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E44726177696E672E44657369676E5C76342E305F342E302E302E305F5F623033663566376631316435306133615C53797374656D2E44726177696E672E44657369676E2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F33325C53797374656D2E446174612E4F7261636C65436C69656E745C76342E305F342E302E302E305F5F623737613563353631393334653038395C53797374656D2E446174612E4F7261636C65436C69656E742E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E5765622E526567756C617245787072657373696F6E735C76342E305F342E302E302E305F5F623033663566376631316435306133615C53797374656D2E5765622E526567756C617245787072657373696F6E732E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C4D6963726F736F66742E4275696C642E5574696C69746965732E76342E305C76342E305F342E302E302E305F5F623033663566376631316435306133615C4D6963726F736F66742E4275696C642E5574696C69746965732E76342E302E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E4469726563746F727953657276696365732E50726F746F636F6C735C76342E305F342E302E302E305F5F623033663566376631316435306133615C53797374656D2E4469726563746F727953657276696365732E50726F746F636F6C732E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C4D6963726F736F66742E4275696C642E5461736B732E76342E305C76342E305F342E302E302E305F5F623033663566376631316435306133615C4D6963726F736F66742E4275696C642E5461736B732E76342E302E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E5365727669636550726F636573735C76342E305F342E302E302E305F5F623033663566376631316435306133615C53797374656D2E5365727669636550726F636573732E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E436F6E66696775726174696F6E2E496E7374616C6C5C76342E305F342E302E302E305F5F623033663566376631316435306133615C53797374656D2E436F6E66696775726174696F6E2E496E7374616C6C2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E52756E74696D652E53657269616C697A6174696F6E5C76342E305F342E302E302E305F5F623737613563353631393334653038395C53797374656D2E52756E74696D652E53657269616C697A6174696F6E2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C534D446961676E6F73746963735C76342E305F342E302E302E305F5F623737613563353631393334653038395C534D446961676E6F73746963732E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E52756E74696D652E44757261626C65496E7374616E63696E675C76342E305F342E302E302E305F5F333162663338353661643336346533355C53797374656D2E52756E74696D652E44757261626C65496E7374616E63696E672E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E586D6C2E4C696E715C76342E305F342E302E302E305F5F623737613563353631393334653038395C53797374656D2E586D6C2E4C696E712E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E58747261456469746F72732E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F33325C53797374656D2E5072696E74696E675C76342E305F342E302E302E305F5F333162663338353661643336346533355C53797374656D2E5072696E74696E672E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C50726573656E746174696F6E4672616D65776F726B5C76342E305F342E302E302E305F5F333162663338353661643336346533355C50726573656E746174696F6E4672616D65776F726B2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F33325C50726573656E746174696F6E436F72655C76342E305F342E302E302E305F5F333162663338353661643336346533355C50726573656E746174696F6E436F72652E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C57696E646F7773426173655C76342E305F342E302E302E305F5F333162663338353661643336346533355C57696E646F7773426173652E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C55494175746F6D6174696F6E50726F76696465725C76342E305F342E302E302E305F5F333162663338353661643336346533355C55494175746F6D6174696F6E50726F76696465722E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C55494175746F6D6174696F6E54797065735C76342E305F342E302E302E305F5F333162663338353661643336346533355C55494175746F6D6174696F6E54797065732E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E57696E646F77732E496E7075742E4D616E6970756C6174696F6E735C76342E305F342E302E302E305F5F623737613563353631393334653038395C53797374656D2E57696E646F77732E496E7075742E4D616E6970756C6174696F6E732E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C50726573656E746174696F6E55495C76342E305F342E302E302E305F5F333162663338353661643336346533355C50726573656E746174696F6E55492E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C52656163684672616D65776F726B5C76342E305F342E302E302E305F5F333162663338353661643336346533355C52656163684672616D65776F726B2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E4D616E6167656D656E745C76342E305F342E302E302E305F5F623033663566376631316435306133615C53797374656D2E4D616E6167656D656E742E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C4D6963726F736F66742E4A5363726970745C76342E305F31302E302E302E305F5F623033663566376631316435306133615C4D6963726F736F66742E4A5363726970742E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E446174612E4C696E715C76342E305F342E302E302E305F5F623737613563353631393334653038395C53797374656D2E446174612E4C696E712E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C426F73636F2E5574696C6974792E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E58747261547265654C6973742E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E446174612E44617461536574457874656E73696F6E735C76342E305F342E302E302E305F5F623737613563353631393334653038395C53797374656D2E446174612E44617461536574457874656E73696F6E732E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E58747261477269642E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E587472614C61796F75742E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E587472615072696E74696E672E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E58747261426172732E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E587472614E61764261722E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C496E7465726F702E457863656C2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C496E7465726F702E4D6963726F736F66742E4F66666963652E436F72652E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C617373656D626C795C4741435C7374646F6C655C372E302E333330302E305F5F623033663566376631316435306133615C7374646F6C652E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C496E7465726F702E56424944452E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C4D6963726F736F66742E4353686172705C76342E305F342E302E302E305F5F623033663566376631316435306133615C4D6963726F736F66742E4353686172702E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E44796E616D69635C76342E305F342E302E302E305F5F623033663566376631316435306133615C53797374656D2E44796E616D69632E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C496E7465726F702E576F72642E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C53696D706C65456E63727970742E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C4D6963726F736F66742E56697375616C42617369635C76342E305F31302E302E302E305F5F623033663566376631316435306133615C4D6963726F736F66742E56697375616C42617369632E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E457870726573734170702E57696E2E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E457870726573734170702E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E536572766963654D6F64656C5C76342E305F342E302E302E305F5F623737613563353631393334653038395C53797374656D2E536572766963654D6F64656C2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E4964656E746974794D6F64656C5C76342E305F342E302E302E305F5F623737613563353631393334653038395C53797374656D2E4964656E746974794D6F64656C2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E4D6573736167696E675C76342E305F342E302E302E305F5F623033663566376631316435306133615C53797374656D2E4D6573736167696E672E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E4964656E746974794D6F64656C2E53656C6563746F72735C76342E305F342E302E302E305F5F623737613563353631393334653038395C53797374656D2E4964656E746974794D6F64656C2E53656C6563746F72732E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C4D6963726F736F66742E5472616E73616374696F6E732E4272696467655C76342E305F342E302E302E305F5F623033663566376631316435306133615C4D6963726F736F66742E5472616E73616374696F6E732E4272696467652E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E536572766963654D6F64656C2E41637469766174696F6E5C76342E305F342E302E302E305F5F333162663338353661643336346533355C53797374656D2E536572766963654D6F64656C2E41637469766174696F6E2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E536572766963654D6F64656C2E416374697669746965735C76342E305F342E302E302E305F5F333162663338353661643336346533355C53797374656D2E536572766963654D6F64656C2E416374697669746965732E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E416374697669746965735C76342E305F342E302E302E305F5F333162663338353661643336346533355C53797374656D2E416374697669746965732E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F33325C4D6963726F736F66742E56697375616C42617369632E416374697669746965732E436F6D70696C65725C76342E305F31302E302E302E305F5F623033663566376631316435306133615C4D6963726F736F66742E56697375616C42617369632E416374697669746965732E436F6D70696C65722E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E416374697669746965732E44757261626C65496E7374616E63696E675C76342E305F342E302E302E305F5F333162663338353661643336346533355C53797374656D2E416374697669746965732E44757261626C65496E7374616E63696E672E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C57696E646F77735C4D6963726F736F66742E4E65745C617373656D626C795C4741435F4D53494C5C53797374656D2E58616D6C2E486F7374696E675C76342E305F342E302E302E305F5F333162663338353661643336346533355C53797374656D2E58616D6C2E486F7374696E672E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E5874726152696368456469742E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E58747261566572746963616C477269642E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E50657273697374656E742E426173652E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E58706F2E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E457870726573734170702E58706F2E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E587472615265706F7274732E7631332E322E457874656E73696F6E732E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E5574696C732E7631332E322E55492E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E587472614368617274732E7631332E322E457874656E73696F6E732E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E587472614368617274732E7631332E322E57697A6172642E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E587472615069766F74477269642E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E436F64655061727365722E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E446174614163636573732E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E446174614163636573732E7631332E322E55492E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E5874726157697A6172642E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C446576457870726573732E426F6E7573536B696E732E7631332E322E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C41634D454453796E632E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C436F6F6B436F6D707574696E672E586D6C5270632E43462E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C426F73636F2E44414F2E536368656D612E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C43726973746F2E44414F2E536368656D612E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C426F73636F2E44414F2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C4D7953716C2E446174612E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C4E6577746F6E736F66742E4A736F6E2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C504159524F4C4C2E65786522202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C506179726F6C6C2E4D6F64656C2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C506179726F6C6C2E44414F2E536368656D612E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C426F73636F2E4D6F64656C2E646C6C22202F3E0D0A2F2F2F20202020203C5265666572656E636520506174683D22433A5C50726F6772616D2046696C65735C426F73636F536F66745C41636D652E6572705C43726973746F2E4D6F64656C2E646C6C22202F3E0D0A2F2F2F2020203C2F5265666572656E6365733E0D0A2F2F2F2020203C5265736F75726365733E0D0A2F2F2F20202020203C5265736F75726365204E616D653D22587472615265706F727453657269616C697A6174696F6E2E446561746852656769737465724365727469666963617465223E0D0A2F2F2F207A73727676674541414143524141414162464E356333526C625335535A584E7664584A6A5A584D75556D567A62335679593256535A57466B5A5849734947317A5932397962476C694C4342575A584A7A61573975505451754D4334774C6A417349454E3162485231636D5539626D563164484A68624377675548566962476C6A53325635564739725A573439596A63335954566A4E5459784F544D305A5441344F534E5465584E305A573075556D567A623356795932567A4C6C4A31626E5270625756535A584E7664584A6A5A564E6C644149414141414241414141414141414146424252464242524641477531412B41414141414230424141426365414279414841416151426A414649415A5142774147384163674230414577416277426E414738415441426C414759416441417541456B4162514268414763415A51416D41464D416551427A414851415A51427441433441524142794147454164774270414734415A77417541456B4162514268414763415A51414141414141494F34474141442F32502F674142424B526B6C4741414542415142674147414141502F684145354665476C6D4141424E5451417141414141434141454177454142514141414145414141412B55524141415141414141454241414141555245414241414141414541414137435552494142414141414145410D0A2F2F2F2041413743414141414141414268714141414C47502F3973415177414942675948426755494277634843516B49436777554451774C4377775A45684D50464230614878346447687763494351754A7941694C434D63484367334B5377774D5451304E42386E4F5430344D6A77754D7A51792F3973415177454A43516B4D43777759445130594D694563495449794D6A49794D6A49794D6A49794D6A49794D6A49794D6A49794D6A49794D6A49794D6A49794D6A49794D6A49794D6A49794D6A49794D6A49794D6A49794D6A49792F3841414551674171674359417745694141495241514D5241662F454142384141414546415145424151454241414141414141414141414241674D454251594843416B4B432F2F45414C55514141494241774D4342414D4642515145414141426651454341774145455155534954464242684E525951636963525179675A476843434E4373634556557448774A444E69636F494A4368595847426B614A53596E4B436B714E4455324E7A67354F6B4E4552555A4853456C4B55315256566C64595756706A5A47566D5A326870616E4E3064585A3365486C3667345346686F6549695971536B3553566C7065596D5A71696F36536C7071656F716171797337533174726534756272437738544678736649796372533039545631746659326472683475506B3565626E0D0A2F2F2F20364F6E7138664C7A39505832392F6A352B762F454142384241414D42415145424151454241514541414141414141414241674D454251594843416B4B432F2F45414C555241414942416751454177514842515145414145436477414241674D52424155684D5159535156454859584554496A4B42434252436B61477877516B6A4D314C7746574A7930516F574A4454684A66455847426B614A69636F4B536F314E6A63344F547044524556475230684A536C4E5556565A5857466C615932526C5A6D646F6157707A6448563264336835656F4B44684957476834694A69704B546C4A57576C35695A6D714B6A704B576D7036697071724B7A744C57327437693575734C44784D584778386A4A79744C54314E585731396A5A32754C6A354F586D352B6A7036764C7A39505832392F6A352B762F61414177444151414345514D5241443841394D6F6F6F72714D676F6F6F6F414B4B4B4B41436969726C707030313051514E7166336A536273425478566D4854376D6647324D674875654257396261626232344243376E2F7647726E5373335537464B4A6878364535584D6B6F552B6747617133397244614D493163744A33397136617358567450646E4E78474D352B384B555A4E765562576D686A5555555673514646464641425252525141555555554146464646414252525251415555564A420D0A2F2F2F20455A35306A4838527851426F615A70766E6B54536A39324F673961336C554B6F565267447453526F49343152526741597031633870585A6F6C594B4B4B4B6B595564614B4B414D62564E4E47445043503935617861374D674545486F6135572F672B7A336B6944706E4972616E4B2B68456B56714B4B4B304A4369696967416F6F6F6F414B4B4B4B41436969696741712F70433772395365774A7168576A6F762F48392F7745314D746D4E626E52555555567A6D675555555541464646464142574472713475493239567265724531332F57526653726838517062475052525257356D4646464641425252525141555555554146464646414257686F357866723767316E3164306F3431434F706C7343334F6D6F6F6F726E4E516F6F6F6F414B4B4B4B4143734C58542B2F69482B7A2F4146726472413177357530396B2F7256772B496D57786C3055555675514646464641425252525141555555554146464646414257336F5155724C783832657674574A57746F54346E6B5831576F6E384934376D3752525257426F4646464641425252525141566D3630462B785A494737634D5670566B36362B496F6C395361714F346E73595646464664426D46464646414252525251415555555541464646464142566D787566737479736D4D6A6F525661696B31634473776367476971396C4C35746E0D0A2F2F2F20452B636E627A56697559314369696967416F6F6F6F414B35765662723752636C514D4B6E4664444B2B794A6D39426D75526474386A4E366B6D744B613175544962525252577841555555554146464646414252525251415555555541464646464147356F6C77436A5145386A6B567231796C6B7A4C655246546737713675734A717A4C6939416F6F6F7143676F6F6F6F417A7458754246616D4D48356E342F437564712F7137453337413941426971466277566B5A79656F5555555659676F6F6F6F414B4B4B4B414369696967416F6F6F6F414B4B4B4B414C576D7276314349652F3841537570724830657A5571747953643253414B324B776D3773754F775555555642515555555541633772533476732B71697336756831577957614A70386B4D672F4F7565726544756A4F53314369696972454646464641425252525141555555554146464646414251426E705679313036653549495861763934317457756D51573243527666314E5135704453624A62474C79624F4E4431787A566969697344514B4B4B4B414369696967426B71655A45362B6F49726B5A454D636A49527944697578717263324546304475584466336856776C596C7135793146583772537037664C4B4E36656F716951516345594E624A70374557456F6F6F70674646464641425367456E41475456327A30795735770D0A2F2F2F207A664A48366D747532302B3374674E7141742F654E5135704455577A4574744C754A38456A597671613137625337653377534E37657256656F724A7A624C55556741774D4369696970474646464641425252525141555555554146464646414256533530364335484B3757395634713352516E59446E626E534A6F636D503841654C3764617A325571634D4344373132565158466E42636A3934677A366A7257697164795845354F69744B38306953484C78664F6E36696974564A4D697A4F6848416F6F6F726D4E516F6F6F6F414B4B4B4B414369696967416F6F6F6F414B4B4B4B414369696967416F6F6F6F414B4B4B4B414369696967442F2F5A3C2F5265736F757263653E0D0A2F2F2F2020203C2F5265736F75726365733E0D0A2F2F2F203C2F585254797065496E666F3E0D0A6E616D65737061636520587472615265706F727453657269616C697A6174696F6E207B0D0A202020200D0A202020207075626C696320636C61737320446561746852656769737465724365727469666963617465203A20446576457870726573732E587472615265706F7274732E55492E587472615265706F7274207B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C2078725461626C6543656C6C373B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078726C626C4275646765746E616D653B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078724461746552616E67653B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078724C6162656C383B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C65526F772078725461626C65526F77323B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C2078725461626C6543656C6C343B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C2078725461626C6543656C6C353B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078724C6162656C313B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E546F704D617267696E42616E6420546F704D617267696E3B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C2078725461626C6543656C6C333B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078724C6162656C31333B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C65207374796C65496E737469747574653B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C2078725461626C6543656C6C31363B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078724C6162656C31303B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E5061676548656164657242616E6420506167654865616465723B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C652078725461626C65323B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C65526F772078725461626C65526F7731343B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C2078725461626C6543656C6C33343B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C65207374796C655265706F72745375625469746C653B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C65526F772078725461626C65526F77333B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C2078725461626C6543656C6C383B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078724C6162656C393B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C20787274506172656E74733B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E44657461696C42616E642044657461696C3B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078724C6162656C31343B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078724C6162656C31323B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078724C6162656C31313B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078724C6162656C373B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078724C6162656C363B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078724C6162656C353B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078724C6162656C343B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078724C6162656C333B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078724C6162656C323B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C652078725461626C65313B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C65526F772078725461626C65526F77313B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C2078725461626C6543656C6C313B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C2078725461626C6543656C6C323B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C65526F772078725461626C65526F77343B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C2078725461626C6543656C6C31303B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C207872744465617468506C6163653B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C65526F772078725461626C65526F77353B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C2078725461626C6543656C6C31333B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C2078727443617374653B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C65526F772078725461626C65526F77363B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C65526F772078725461626C65526F77373B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C2078724465617468446174653B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C207872744465617468446174653B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C65526F772078725461626C65526F77383B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C2078725461626C6543656C6C32323B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C20787274446561746843617573653B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078726C626C436F737443656E7465723B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078726C626C496E737469747574653B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E426F74746F6D4D617267696E42616E6420426F74746F6D4D617267696E3B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E585250616765496E666F20787250616765496E666F3B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C65207374796C655265706F72745469746C653B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E585250696374757265426F782078727069635265706F72744C6F676F4C6566743B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078726C626C5265706F7274446174653B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C65207374796C6550616765496E666F3B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078726C626C5265706F72745469746C653B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C207872496E73746974757465416464726573733B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E50616765466F6F74657242616E642050616765466F6F7465723B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078726C626C50726F6A6563744E616D653B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C696E652078726C6E466F6F7465723B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C65207374796C65546F74616C526F773B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C65207374796C6547726F7570526F773B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C65207374796C654F6464526F773B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C207872496E737469747574654E616D653B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C65207374796C65436F6C756D6E4865616465723B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C65207374796C655469746C65526F773B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C65207374796C6544617465496E666F3B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E58524C6162656C2078726C626C5265706F72745375625469746C653B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E5265706F727448656164657242616E64205265706F72744865616465723B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C65207374796C6547726F7570526F77426173653B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C65207374796C654576656E526F773B0D0A20202020202020207072697661746520446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C65207374796C65526F773B0D0A2020202020202020707269766174652053797374656D2E5265736F75726365732E5265736F757263654D616E61676572205F7265736F75726365733B0D0A20202020202020207072697661746520737472696E67205F7265736F75726365537472696E673B0D0A20202020202020207075626C6963204465617468526567697374657243657274696669636174652829207B0D0A202020202020202020202020746869732E5F7265736F75726365537472696E67203D20446576457870726573732E587472615265706F7274732E53657269616C697A6174696F6E2E58525265736F757263654D616E616765722E4765745265736F75726365466F722822587472615265706F727453657269616C697A6174696F6E2E44656174685265676973746572436572746966696361746522293B0D0A202020202020202020202020746869732E496E697469616C697A65436F6D706F6E656E7428293B0D0A20202020202020207D0D0A2020202020202020707269766174652053797374656D2E5265736F75726365732E5265736F757263654D616E61676572207265736F7572636573207B0D0A202020202020202020202020676574207B0D0A20202020202020202020202020202020696620285F7265736F7572636573203D3D206E756C6C29207B0D0A2020202020202020202020202020202020202020746869732E5F7265736F7572636573203D206E657720446576457870726573732E587472615265706F7274732E53657269616C697A6174696F6E2E58525265736F757263654D616E6167657228746869732E5F7265736F75726365537472696E67293B0D0A202020202020202020202020202020207D0D0A2020202020202020202020202020202072657475726E20746869732E5F7265736F75726365733B0D0A2020202020202020202020207D0D0A20202020202020207D0D0A20202020202020207072697661746520766F696420496E697469616C697A65436F6D706F6E656E742829207B0D0A202020202020202020202020746869732E78725461626C6543656C6C37203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C28293B0D0A202020202020202020202020746869732E78726C626C4275646765746E616D65203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E78724461746552616E6765203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E78724C6162656C38203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E78725461626C65526F7732203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C65526F7728293B0D0A202020202020202020202020746869732E78724C6162656C31203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E546F704D617267696E203D206E657720446576457870726573732E587472615265706F7274732E55492E546F704D617267696E42616E6428293B0D0A202020202020202020202020746869732E78725461626C6543656C6C33203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C28293B0D0A202020202020202020202020746869732E78724C6162656C3133203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E7374796C65496E73746974757465203D206E657720446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C6528293B0D0A202020202020202020202020746869732E78725461626C6543656C6C3136203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C28293B0D0A202020202020202020202020746869732E78724C6162656C3130203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E50616765486561646572203D206E657720446576457870726573732E587472615265706F7274732E55492E5061676548656164657242616E6428293B0D0A202020202020202020202020746869732E7374796C655265706F72745375625469746C65203D206E657720446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C6528293B0D0A202020202020202020202020746869732E78725461626C65526F7733203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C65526F7728293B0D0A202020202020202020202020746869732E78724C6162656C39203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E78725461626C65526F773134203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C65526F7728293B0D0A202020202020202020202020746869732E787274506172656E7473203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C28293B0D0A202020202020202020202020746869732E44657461696C203D206E657720446576457870726573732E587472615265706F7274732E55492E44657461696C42616E6428293B0D0A202020202020202020202020746869732E78726C626C436F737443656E746572203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E78727444656174684361757365203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C28293B0D0A202020202020202020202020746869732E78726C626C496E73746974757465203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E426F74746F6D4D617267696E203D206E657720446576457870726573732E587472615265706F7274732E55492E426F74746F6D4D617267696E42616E6428293B0D0A202020202020202020202020746869732E78725461626C6543656C6C3130203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C28293B0D0A202020202020202020202020746869732E787250616765496E666F203D206E657720446576457870726573732E587472615265706F7274732E55492E585250616765496E666F28293B0D0A202020202020202020202020746869732E78724C6162656C3134203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E7872744465617468506C616365203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C28293B0D0A202020202020202020202020746869732E78725461626C6543656C6C38203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C28293B0D0A202020202020202020202020746869732E7374796C655265706F72745469746C65203D206E657720446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C6528293B0D0A202020202020202020202020746869732E7872446561746844617465203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C28293B0D0A202020202020202020202020746869732E78727069635265706F72744C6F676F4C656674203D206E657720446576457870726573732E587472615265706F7274732E55492E585250696374757265426F7828293B0D0A202020202020202020202020746869732E78725461626C65526F7738203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C65526F7728293B0D0A202020202020202020202020746869732E78726C626C5265706F727444617465203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E78724C6162656C3132203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E78725461626C6543656C6C35203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C28293B0D0A202020202020202020202020746869732E7872744361737465203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C28293B0D0A202020202020202020202020746869732E7374796C6550616765496E666F203D206E657720446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C6528293B0D0A202020202020202020202020746869732E78724C6162656C32203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E78724C6162656C37203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E78725461626C65526F7734203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C65526F7728293B0D0A202020202020202020202020746869732E78726C626C5265706F72745469746C65203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E78725461626C6543656C6C3334203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C28293B0D0A202020202020202020202020746869732E78724C6162656C36203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E7872496E7374697475746541646472657373203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E78724C6162656C35203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E50616765466F6F746572203D206E657720446576457870726573732E587472615265706F7274732E55492E50616765466F6F74657242616E6428293B0D0A202020202020202020202020746869732E7374796C65546F74616C526F77203D206E657720446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C6528293B0D0A202020202020202020202020746869732E7374796C6547726F7570526F77203D206E657720446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C6528293B0D0A202020202020202020202020746869732E78726C626C50726F6A6563744E616D65203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E7374796C654F6464526F77203D206E657720446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C6528293B0D0A202020202020202020202020746869732E7872496E737469747574654E616D65203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E78725461626C6543656C6C3232203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C28293B0D0A202020202020202020202020746869732E78725461626C6543656C6C32203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C28293B0D0A202020202020202020202020746869732E7374796C65436F6C756D6E486561646572203D206E657720446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C6528293B0D0A202020202020202020202020746869732E7374796C655469746C65526F77203D206E657720446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C6528293B0D0A202020202020202020202020746869732E78725461626C6532203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6528293B0D0A202020202020202020202020746869732E78725461626C6543656C6C3133203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C28293B0D0A202020202020202020202020746869732E78725461626C6543656C6C34203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C28293B0D0A202020202020202020202020746869732E78725461626C65526F7736203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C65526F7728293B0D0A202020202020202020202020746869732E78725461626C65526F7731203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C65526F7728293B0D0A202020202020202020202020746869732E7374796C6544617465496E666F203D206E657720446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C6528293B0D0A202020202020202020202020746869732E78726C626C5265706F72745375625469746C65203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E5265706F7274486561646572203D206E657720446576457870726573732E587472615265706F7274732E55492E5265706F727448656164657242616E6428293B0D0A202020202020202020202020746869732E78725461626C65526F7737203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C65526F7728293B0D0A202020202020202020202020746869732E7374796C6547726F7570526F7742617365203D206E657720446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C6528293B0D0A202020202020202020202020746869732E78725461626C6531203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6528293B0D0A202020202020202020202020746869732E7374796C654576656E526F77203D206E657720446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C6528293B0D0A202020202020202020202020746869732E78724C6162656C34203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E78726C6E466F6F746572203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C696E6528293B0D0A202020202020202020202020746869732E78724C6162656C33203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E787274446561746844617465203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C28293B0D0A202020202020202020202020746869732E78725461626C6543656C6C31203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C28293B0D0A202020202020202020202020746869732E78724C6162656C3131203D206E657720446576457870726573732E587472615265706F7274732E55492E58524C6162656C28293B0D0A202020202020202020202020746869732E7374796C65526F77203D206E657720446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C6528293B0D0A202020202020202020202020746869732E78725461626C65526F7735203D206E657720446576457870726573732E587472615265706F7274732E55492E58525461626C65526F7728293B0D0A202020202020202020202020282853797374656D2E436F6D706F6E656E744D6F64656C2E49537570706F7274496E697469616C697A652928746869732E78725461626C653229292E426567696E496E697428293B0D0A202020202020202020202020282853797374656D2E436F6D706F6E656E744D6F64656C2E49537570706F7274496E697469616C697A652928746869732E78725461626C653129292E426567696E496E697428293B0D0A202020202020202020202020282853797374656D2E436F6D706F6E656E744D6F64656C2E49537570706F7274496E697469616C697A6529287468697329292E426567696E496E697428293B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C6543656C6C370D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C6543656C6C372E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78725461626C6543656C6C372E4E616D65203D202278725461626C6543656C6C37223B0D0A202020202020202020202020746869732E78725461626C6543656C6C372E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28342C20342C20342C20342C2031303046293B0D0A202020202020202020202020746869732E78725461626C6543656C6C372E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C372E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C372E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C372E54657874203D2022416765223B0D0A202020202020202020202020746869732E78725461626C6543656C6C372E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A202020202020202020202020746869732E78725461626C6543656C6C372E576569676874203D20302E3537343634333137363431333633363934443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078726C626C4275646765746E616D650D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78726C626C4275646765746E616D652E4261636B436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E5768697465536D6F6B653B0D0A202020202020202020202020746869732E78726C626C4275646765746E616D652E426F72646572436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E53696C7665723B0D0A202020202020202020202020746869732E78726C626C4275646765746E616D652E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E546F703B0D0A202020202020202020202020746869732E78726C626C4275646765746E616D652E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203130462C2053797374656D2E44726177696E672E466F6E745374796C652E426F6C64293B0D0A202020202020202020202020746869732E78726C626C4275646765746E616D652E466F7265436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E44696D477261793B0D0A202020202020202020202020746869732E78726C626C4275646765746E616D652E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F617428312E393939393832462C203137332E36323546293B0D0A202020202020202020202020746869732E78726C626C4275646765746E616D652E4E616D65203D202278726C626C4275646765746E616D65223B0D0A202020202020202020202020746869732E78726C626C4275646765746E616D652E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28332C20302C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78726C626C4275646765746E616D652E50726F636573734E756C6C56616C756573203D20446576457870726573732E587472615265706F7274732E55492E56616C75655375707072657373547970652E5375707072657373416E64536872696E6B3B0D0A202020202020202020202020746869732E78726C626C4275646765746E616D652E53697A6546203D206E65772053797374656D2E44726177696E672E53697A6546283732312E30303031462C20323346293B0D0A202020202020202020202020746869732E78726C626C4275646765746E616D652E5374796C655072696F726974792E5573654261636B436F6C6F72203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C4275646765746E616D652E5374796C655072696F726974792E557365426F72646572436F6C6F72203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C4275646765746E616D652E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C4275646765746E616D652E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C4275646765746E616D652E5374796C655072696F726974792E557365466F7265436F6C6F72203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C4275646765746E616D652E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C4275646765746E616D652E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C4275646765746E616D652E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C654C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078724461746552616E67650D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78724461746552616E67652E4261636B436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E5768697465536D6F6B653B0D0A202020202020202020202020746869732E78724461746552616E67652E426F72646572436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E456D7074793B0D0A202020202020202020202020746869732E78724461746552616E67652E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E4E6F6E653B0D0A202020202020202020202020746869732E78724461746552616E67652E426F726465725769647468203D2031463B0D0A202020202020202020202020746869732E78724461746552616E67652E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C20392E3235462C2053797374656D2E44726177696E672E466F6E745374796C652E426F6C64293B0D0A202020202020202020202020746869732E78724461746552616E67652E466F7265436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E46726F6D41726762282828696E74292828286279746529283634292929292C202828696E74292828286279746529283634292929292C202828696E7429282828627974652928363429292929293B0D0A202020202020202020202020746869732E78724461746552616E67652E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F61742837322E3333333336462C203131362E3931363746293B0D0A202020202020202020202020746869732E78724461746552616E67652E4E616D65203D202278724461746552616E6765223B0D0A202020202020202020202020746869732E78724461746552616E67652E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28332C20302C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78724461746552616E67652E53697A6546203D206E65772053797374656D2E44726177696E672E53697A6546283635322E36363732462C2031372E323931363746293B0D0A202020202020202020202020746869732E78724461746552616E67652E5374796C655072696F726974792E5573654261636B436F6C6F72203D2066616C73653B0D0A202020202020202020202020746869732E78724461746552616E67652E5374796C655072696F726974792E557365426F72646572436F6C6F72203D2066616C73653B0D0A202020202020202020202020746869732E78724461746552616E67652E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E78724461746552616E67652E5374796C655072696F726974792E557365426F726465725769647468203D2066616C73653B0D0A202020202020202020202020746869732E78724461746552616E67652E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78724461746552616E67652E5374796C655072696F726974792E557365466F7265436F6C6F72203D2066616C73653B0D0A202020202020202020202020746869732E78724461746552616E67652E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E78724461746552616E67652E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78724461746552616E67652E54657874203D2022446174652046726F6D223B0D0A202020202020202020202020746869732E78724461746552616E67652E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C654C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078724C6162656C380D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78724C6162656C382E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78724C6162656C382E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F617428392E393939393938462C203339352E3739313746293B0D0A202020202020202020202020746869732E78724C6162656C382E4E616D65203D202278724C6162656C38223B0D0A202020202020202020202020746869732E78724C6162656C382E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28322C20322C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78724C6162656C382E53697A6546203D206E65772053797374656D2E44726177696E672E53697A65462835302E3431363632462C20323346293B0D0A202020202020202020202020746869732E78724C6162656C382E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C382E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C382E54657874203D202244617465223B0D0A202020202020202020202020746869732E78724C6162656C382E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C65526F77320D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C65526F77322E43656C6C732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C5B5D207B0D0A202020202020202020202020202020202020202020202020746869732E78725461626C6543656C6C342C0D0A202020202020202020202020202020202020202020202020746869732E78725461626C6543656C6C357D293B0D0A202020202020202020202020746869732E78725461626C65526F77322E4E616D65203D202278725461626C65526F7732223B0D0A202020202020202020202020746869732E78725461626C65526F77322E576569676874203D2031443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078724C6162656C310D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78724C6162656C312E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E446F743B0D0A202020202020202020202020746869732E78724C6162656C312E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E426F74746F6D3B0D0A202020202020202020202020746869732E78724C6162656C312E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F6174283133362E34353833462C203234322E3538333446293B0D0A202020202020202020202020746869732E78724C6162656C312E4E616D65203D202278724C6162656C31223B0D0A202020202020202020202020746869732E78724C6162656C312E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28322C20322C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78724C6162656C312E53697A6546203D206E65772053797374656D2E44726177696E672E53697A6546283137322E30303031462C2032332E303030303246293B0D0A202020202020202020202020746869732E78724C6162656C312E5374796C655072696F726974792E557365426F72646572446173685374796C65203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C312E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C312E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C312E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F20546F704D617267696E0D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E546F704D617267696E2E48656967687446203D203230463B0D0A202020202020202020202020746869732E546F704D617267696E2E4E616D65203D2022546F704D617267696E223B0D0A202020202020202020202020746869732E546F704D617267696E2E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28302C20302C20302C20302C2031303046293B0D0A202020202020202020202020746869732E546F704D617267696E2E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E546F704C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C6543656C6C330D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C6543656C6C332E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E52696768743B0D0A202020202020202020202020746869732E78725461626C6543656C6C332E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78725461626C6543656C6C332E4E616D65203D202278725461626C6543656C6C33223B0D0A202020202020202020202020746869732E78725461626C6543656C6C332E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28342C20342C20342C20342C2031303046293B0D0A202020202020202020202020746869732E78725461626C6543656C6C332E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C332E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C332E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C332E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C332E54657874203D202276656C6C6F7265205C7444696F63657365223B0D0A202020202020202020202020746869732E78725461626C6543656C6C332E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A202020202020202020202020746869732E78725461626C6543656C6C332E576569676874203D20312E34343839363639313636373731333832443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078724C6162656C31330D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78724C6162656C31332E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C2039462C2053797374656D2E44726177696E672E466F6E745374796C652E426F6C64293B0D0A202020202020202020202020746869732E78724C6162656C31332E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F6174283534362E39383332462C203532382E3435383446293B0D0A202020202020202020202020746869732E78724C6162656C31332E4E616D65203D202278724C6162656C3133223B0D0A202020202020202020202020746869732E78724C6162656C31332E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28322C20322C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78724C6162656C31332E53697A6546203D206E65772053797374656D2E44726177696E672E53697A654628313030462C20323346293B0D0A202020202020202020202020746869732E78724C6162656C31332E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C31332E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C31332E54657874203D202250617269736820507269657374223B0D0A202020202020202020202020746869732E78724C6162656C31332E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F207374796C65496E737469747574650D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E7374796C65496E737469747574652E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C2032302E3235462C2053797374656D2E44726177696E672E466F6E745374796C652E526567756C61722C2053797374656D2E44726177696E672E4772617068696373556E69742E506F696E742C202828627974652928302929293B0D0A202020202020202020202020746869732E7374796C65496E737469747574652E4E616D65203D20227374796C65496E73746974757465223B0D0A202020202020202020202020746869732E7374796C65496E737469747574652E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28302C20302C20302C20302C2031303046293B0D0A202020202020202020202020746869732E7374796C65496E737469747574652E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C6543656E7465723B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C6543656C6C31360D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C6543656C6C31362E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78725461626C6543656C6C31362E4E616D65203D202278725461626C6543656C6C3136223B0D0A202020202020202020202020746869732E78725461626C6543656C6C31362E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28342C20342C20342C20342C2031303046293B0D0A202020202020202020202020746869732E78725461626C6543656C6C31362E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C31362E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C31362E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C31362E54657874203D2022506172656E7473223B0D0A202020202020202020202020746869732E78725461626C6543656C6C31362E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A202020202020202020202020746869732E78725461626C6543656C6C31362E576569676874203D20302E3537343634333332393030313532373932443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078724C6162656C31300D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78724C6162656C31302E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E446F743B0D0A202020202020202020202020746869732E78724C6162656C31302E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E426F74746F6D3B0D0A202020202020202020202020746869732E78724C6162656C31302E4461746142696E64696E67732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E675B5D207B0D0A2020202020202020202020202020202020202020202020206E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E67282254657874222C206E756C6C2C202243726973746F44656174682E44454154485F504C41434522297D293B0D0A202020202020202020202020746869732E78724C6162656C31302E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78724C6162656C31302E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F61742836372E3232393137462C203433302E3132353146293B0D0A202020202020202020202020746869732E78724C6162656C31302E4E616D65203D202278724C6162656C3130223B0D0A202020202020202020202020746869732E78724C6162656C31302E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28322C20322C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78724C6162656C31302E53697A6546203D206E65772053797374656D2E44726177696E672E53697A6546283133302E31303432462C20323346293B0D0A202020202020202020202020746869732E78724C6162656C31302E5374796C655072696F726974792E557365426F72646572446173685374796C65203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C31302E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C31302E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C31302E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C31302E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F20506167654865616465720D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E506167654865616465722E436F6E74726F6C732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5B5D207B0D0A202020202020202020202020202020202020202020202020746869732E78725461626C65327D293B0D0A202020202020202020202020746869732E506167654865616465722E48656967687446203D2032382E313235463B0D0A202020202020202020202020746869732E506167654865616465722E4E616D65203D202250616765486561646572223B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F207374796C655265706F72745375625469746C650D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E7374796C655265706F72745375625469746C652E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C2031352E3735462C2053797374656D2E44726177696E672E466F6E745374796C652E526567756C61722C2053797374656D2E44726177696E672E4772617068696373556E69742E506F696E742C202828627974652928302929293B0D0A202020202020202020202020746869732E7374796C655265706F72745375625469746C652E4E616D65203D20227374796C655265706F72745375625469746C65223B0D0A202020202020202020202020746869732E7374796C655265706F72745375625469746C652E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28302C20302C20302C20302C2031303046293B0D0A202020202020202020202020746869732E7374796C655265706F72745375625469746C652E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C6543656E7465723B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C65526F77330D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C65526F77332E43656C6C732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C5B5D207B0D0A202020202020202020202020202020202020202020202020746869732E78725461626C6543656C6C372C0D0A202020202020202020202020202020202020202020202020746869732E78725461626C6543656C6C387D293B0D0A202020202020202020202020746869732E78725461626C65526F77332E4E616D65203D202278725461626C65526F7733223B0D0A202020202020202020202020746869732E78725461626C65526F77332E576569676874203D2031443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078724C6162656C390D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78724C6162656C392E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E446F743B0D0A202020202020202020202020746869732E78724C6162656C392E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E426F74746F6D3B0D0A202020202020202020202020746869732E78724C6162656C392E4461746142696E64696E67732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E675B5D207B0D0A2020202020202020202020202020202020202020202020206E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E67282254657874222C206E756C6C2C202243726973746F44656174682E42555249414C5F4D494E495354455222297D293B0D0A202020202020202020202020746869732E78724C6162656C392E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78724C6162656C392E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F61742836372E3232393136462C203334392E3935383346293B0D0A202020202020202020202020746869732E78724C6162656C392E4E616D65203D202278724C6162656C39223B0D0A202020202020202020202020746869732E78724C6162656C392E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28322C20322C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78724C6162656C392E53697A6546203D206E65772053797374656D2E44726177696E672E53697A6546283635352E37373038462C20323346293B0D0A202020202020202020202020746869732E78724C6162656C392E5374796C655072696F726974792E557365426F72646572446173685374796C65203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C392E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C392E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C392E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C392E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C65526F7731340D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C65526F7731342E43656C6C732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C5B5D207B0D0A202020202020202020202020202020202020202020202020746869732E78725461626C6543656C6C33347D293B0D0A202020202020202020202020746869732E78725461626C65526F7731342E4E616D65203D202278725461626C65526F773134223B0D0A202020202020202020202020746869732E78725461626C65526F7731342E576569676874203D20302E3639323330373639323330373639323239443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F20787274506172656E74730D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E787274506172656E74732E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E446F743B0D0A202020202020202020202020746869732E787274506172656E74732E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E426F74746F6D3B0D0A202020202020202020202020746869732E787274506172656E74732E4461746142696E64696E67732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E675B5D207B0D0A2020202020202020202020202020202020202020202020206E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E67282254657874222C206E756C6C2C202243726973746F44656174682E504152454E545322297D293B0D0A202020202020202020202020746869732E787274506172656E74732E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E787274506172656E74732E4E616D65203D2022787274506172656E7473223B0D0A202020202020202020202020746869732E787274506172656E74732E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28342C20342C20342C20342C2031303046293B0D0A202020202020202020202020746869732E787274506172656E74732E5374796C655072696F726974792E557365426F72646572446173685374796C65203D2066616C73653B0D0A202020202020202020202020746869732E787274506172656E74732E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E787274506172656E74732E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E787274506172656E74732E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E787274506172656E74732E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E787274506172656E74732E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A202020202020202020202020746869732E787274506172656E74732E576569676874203D20352E37393437303832373133313838313336443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2044657461696C0D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E44657461696C2E436F6E74726F6C732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5B5D207B0D0A202020202020202020202020202020202020202020202020746869732E78724C6162656C31342C0D0A202020202020202020202020202020202020202020202020746869732E78724C6162656C31332C0D0A202020202020202020202020202020202020202020202020746869732E78724C6162656C31302C0D0A202020202020202020202020202020202020202020202020746869732E78724C6162656C31322C0D0A202020202020202020202020202020202020202020202020746869732E78724C6162656C31312C0D0A202020202020202020202020202020202020202020202020746869732E78724C6162656C392C0D0A202020202020202020202020202020202020202020202020746869732E78724C6162656C382C0D0A202020202020202020202020202020202020202020202020746869732E78724C6162656C372C0D0A202020202020202020202020202020202020202020202020746869732E78724C6162656C362C0D0A202020202020202020202020202020202020202020202020746869732E78724C6162656C352C0D0A202020202020202020202020202020202020202020202020746869732E78724C6162656C342C0D0A202020202020202020202020202020202020202020202020746869732E78724C6162656C332C0D0A202020202020202020202020202020202020202020202020746869732E78724C6162656C322C0D0A202020202020202020202020202020202020202020202020746869732E78724C6162656C312C0D0A202020202020202020202020202020202020202020202020746869732E78725461626C65317D293B0D0A202020202020202020202020746869732E44657461696C2E48656967687446203D203539302E36323531463B0D0A202020202020202020202020746869732E44657461696C2E4E616D65203D202244657461696C223B0D0A202020202020202020202020746869732E44657461696C2E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28302C20302C20302C20302C2031303046293B0D0A202020202020202020202020746869732E44657461696C2E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E546F704C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078726C626C436F737443656E7465720D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78726C626C436F737443656E7465722E4261636B436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E5768697465536D6F6B653B0D0A202020202020202020202020746869732E78726C626C436F737443656E7465722E426F72646572436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E53696C7665723B0D0A202020202020202020202020746869732E78726C626C436F737443656E7465722E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E546F703B0D0A202020202020202020202020746869732E78726C626C436F737443656E7465722E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203130462C2053797374656D2E44726177696E672E466F6E745374796C652E426F6C64293B0D0A202020202020202020202020746869732E78726C626C436F737443656E7465722E466F7265436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E46726F6D41726762282828696E74292828286279746529283634292929292C202828696E74292828286279746529283634292929292C202828696E7429282828627974652928363429292929293B0D0A202020202020202020202020746869732E78726C626C436F737443656E7465722E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F617428312E393939393832462C203135332E3931363746293B0D0A202020202020202020202020746869732E78726C626C436F737443656E7465722E4E616D65203D202278726C626C436F737443656E746572223B0D0A202020202020202020202020746869732E78726C626C436F737443656E7465722E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28332C20302C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78726C626C436F737443656E7465722E50726F636573734E756C6C56616C756573203D20446576457870726573732E587472615265706F7274732E55492E56616C75655375707072657373547970652E5375707072657373416E64536872696E6B3B0D0A202020202020202020202020746869732E78726C626C436F737443656E7465722E53697A6546203D206E65772053797374656D2E44726177696E672E53697A6546283732312E30303031462C2031392E373038333346293B0D0A202020202020202020202020746869732E78726C626C436F737443656E7465722E5374796C655072696F726974792E5573654261636B436F6C6F72203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C436F737443656E7465722E5374796C655072696F726974792E557365426F72646572436F6C6F72203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C436F737443656E7465722E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C436F737443656E7465722E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C436F737443656E7465722E5374796C655072696F726974792E557365466F7265436F6C6F72203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C436F737443656E7465722E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C436F737443656E7465722E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C436F737443656E7465722E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C654C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F20787274446561746843617573650D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E787274446561746843617573652E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E446F743B0D0A202020202020202020202020746869732E787274446561746843617573652E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E426F74746F6D3B0D0A202020202020202020202020746869732E787274446561746843617573652E4461746142696E64696E67732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E675B5D207B0D0A2020202020202020202020202020202020202020202020206E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E67282254657874222C206E756C6C2C202243726973746F44656174682E44454154485F434155534522297D293B0D0A202020202020202020202020746869732E787274446561746843617573652E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E787274446561746843617573652E4E616D65203D202278727444656174684361757365223B0D0A202020202020202020202020746869732E787274446561746843617573652E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28342C20342C20342C20342C2031303046293B0D0A202020202020202020202020746869732E787274446561746843617573652E5374796C655072696F726974792E557365426F72646572446173685374796C65203D2066616C73653B0D0A202020202020202020202020746869732E787274446561746843617573652E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E787274446561746843617573652E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E787274446561746843617573652E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E787274446561746843617573652E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E787274446561746843617573652E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A202020202020202020202020746869732E787274446561746843617573652E576569676874203D20352E37393437303831313837333039323238443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078726C626C496E737469747574650D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78726C626C496E737469747574652E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C2031362E373546293B0D0A202020202020202020202020746869732E78726C626C496E737469747574652E466F7265436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E426C61636B3B0D0A202020202020202020202020746869732E78726C626C496E737469747574652E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F61742837322E3333333336462C203046293B0D0A202020202020202020202020746869732E78726C626C496E737469747574652E4E616D65203D202278726C626C496E73746974757465223B0D0A202020202020202020202020746869732E78726C626C496E737469747574652E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28332C20302C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78726C626C496E737469747574652E50726F636573734E756C6C56616C756573203D20446576457870726573732E587472615265706F7274732E55492E56616C75655375707072657373547970652E5375707072657373416E64536872696E6B3B0D0A202020202020202020202020746869732E78726C626C496E737469747574652E53697A6546203D206E65772053797374656D2E44726177696E672E53697A6546283635322E36363732462C2032382E31323546293B0D0A202020202020202020202020746869732E78726C626C496E737469747574652E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C496E737469747574652E5374796C655072696F726974792E557365466F7265436F6C6F72203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C496E737469747574652E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C496E737469747574652E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C496E737469747574652E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C6543656E7465723B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F20426F74746F6D4D617267696E0D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E426F74746F6D4D617267696E2E48656967687446203D203230463B0D0A202020202020202020202020746869732E426F74746F6D4D617267696E2E4E616D65203D2022426F74746F6D4D617267696E223B0D0A202020202020202020202020746869732E426F74746F6D4D617267696E2E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28302C20302C20302C20302C2031303046293B0D0A202020202020202020202020746869732E426F74746F6D4D617267696E2E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E546F704C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C6543656C6C31300D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C6543656C6C31302E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78725461626C6543656C6C31302E4E616D65203D202278725461626C6543656C6C3130223B0D0A202020202020202020202020746869732E78725461626C6543656C6C31302E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28342C20342C20342C20342C2031303046293B0D0A202020202020202020202020746869732E78725461626C6543656C6C31302E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C31302E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C31302E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C31302E54657874203D2022506C616365223B0D0A202020202020202020202020746869732E78725461626C6543656C6C31302E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A202020202020202020202020746869732E78725461626C6543656C6C31302E576569676874203D20302E3537343634333137363431333633363934443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F20787250616765496E666F0D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E787250616765496E666F2E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E742822417269616C222C20382E323546293B0D0A202020202020202020202020746869732E787250616765496E666F2E466F726D6174203D202250616765207B307D206F66207B317D223B0D0A202020202020202020202020746869732E787250616765496E666F2E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F617428392E393939393938462C2031302E303030303146293B0D0A202020202020202020202020746869732E787250616765496E666F2E4E616D65203D2022787250616765496E666F223B0D0A202020202020202020202020746869732E787250616765496E666F2E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28322C20302C20302C20302C2031303046293B0D0A202020202020202020202020746869732E787250616765496E666F2E53697A6546203D206E65772053797374656D2E44726177696E672E53697A65462839392E3530303035462C20323346293B0D0A202020202020202020202020746869732E787250616765496E666F2E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E787250616765496E666F2E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E787250616765496E666F2E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E787250616765496E666F2E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C654C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078724C6162656C31340D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78724C6162656C31342E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C2039462C2053797374656D2E44726177696E672E466F6E745374796C652E426F6C64293B0D0A202020202020202020202020746869732E78724C6162656C31342E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F6174283133362E34353833462C203532382E3435383446293B0D0A202020202020202020202020746869732E78724C6162656C31342E4E616D65203D202278724C6162656C3134223B0D0A202020202020202020202020746869732E78724C6162656C31342E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28322C20322C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78724C6162656C31342E53697A6546203D206E65772053797374656D2E44726177696E672E53697A654628313030462C20323346293B0D0A202020202020202020202020746869732E78724C6162656C31342E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C31342E54657874203D20225365616C223B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F207872744465617468506C6163650D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E7872744465617468506C6163652E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E446F743B0D0A202020202020202020202020746869732E7872744465617468506C6163652E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E426F74746F6D3B0D0A202020202020202020202020746869732E7872744465617468506C6163652E4461746142696E64696E67732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E675B5D207B0D0A2020202020202020202020202020202020202020202020206E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E67282254657874222C206E756C6C2C202243726973746F44656174682E44454154485F504C41434522297D293B0D0A202020202020202020202020746869732E7872744465617468506C6163652E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E7872744465617468506C6163652E4E616D65203D20227872744465617468506C616365223B0D0A202020202020202020202020746869732E7872744465617468506C6163652E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28342C20342C20342C20342C2031303046293B0D0A202020202020202020202020746869732E7872744465617468506C6163652E5374796C655072696F726974792E557365426F72646572446173685374796C65203D2066616C73653B0D0A202020202020202020202020746869732E7872744465617468506C6163652E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E7872744465617468506C6163652E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E7872744465617468506C6163652E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E7872744465617468506C6163652E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E7872744465617468506C6163652E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A202020202020202020202020746869732E7872744465617468506C6163652E576569676874203D20352E37393437303834323339303637303533443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C6543656C6C380D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C6543656C6C382E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E446F743B0D0A202020202020202020202020746869732E78725461626C6543656C6C382E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E426F74746F6D3B0D0A202020202020202020202020746869732E78725461626C6543656C6C382E4461746142696E64696E67732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E675B5D207B0D0A2020202020202020202020202020202020202020202020206E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E67282254657874222C206E756C6C2C202243726973746F44656174682E41474522297D293B0D0A202020202020202020202020746869732E78725461626C6543656C6C382E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78725461626C6543656C6C382E4E616D65203D202278725461626C6543656C6C38223B0D0A202020202020202020202020746869732E78725461626C6543656C6C382E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28342C20342C20342C20342C2031303046293B0D0A202020202020202020202020746869732E78725461626C6543656C6C382E5374796C655072696F726974792E557365426F72646572446173685374796C65203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C382E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C382E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C382E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C382E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C382E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A202020202020202020202020746869732E78725461626C6543656C6C382E576569676874203D20352E37393437303834323339303637303632443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F207374796C655265706F72745469746C650D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E7374796C655265706F72745469746C652E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203138462C2053797374656D2E44726177696E672E466F6E745374796C652E526567756C61722C2053797374656D2E44726177696E672E4772617068696373556E69742E506F696E742C202828627974652928302929293B0D0A202020202020202020202020746869732E7374796C655265706F72745469746C652E4E616D65203D20227374796C655265706F72745469746C65223B0D0A202020202020202020202020746869732E7374796C655265706F72745469746C652E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28302C20302C20302C20302C2031303046293B0D0A202020202020202020202020746869732E7374796C655265706F72745469746C652E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C6543656E7465723B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078724465617468446174650D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78724465617468446174652E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78724465617468446174652E4E616D65203D20227872446561746844617465223B0D0A202020202020202020202020746869732E78724465617468446174652E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28342C20342C20342C20342C2031303046293B0D0A202020202020202020202020746869732E78724465617468446174652E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78724465617468446174652E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E78724465617468446174652E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78724465617468446174652E54657874203D202244617465223B0D0A202020202020202020202020746869732E78724465617468446174652E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A202020202020202020202020746869732E78724465617468446174652E576569676874203D20302E3537343634333430353239353437333432443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078727069635265706F72744C6F676F4C6566740D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78727069635265706F72744C6F676F4C6566742E496D616765203D20282853797374656D2E44726177696E672E496D61676529287265736F75726365732E4765744F626A656374282278727069635265706F72744C6F676F4C6566742E496D616765222929293B0D0A202020202020202020202020746869732E78727069635265706F72744C6F676F4C6566742E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F617428312E393939393832462C20332E31323546293B0D0A202020202020202020202020746869732E78727069635265706F72744C6F676F4C6566742E4E616D65203D202278727069635265706F72744C6F676F4C656674223B0D0A202020202020202020202020746869732E78727069635265706F72744C6F676F4C6566742E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28352C20302C20312C20302C2031303046293B0D0A202020202020202020202020746869732E78727069635265706F72744C6F676F4C6566742E53697A6546203D206E65772053797374656D2E44726177696E672E53697A65462837302E3333333337462C203133312E3038333446293B0D0A202020202020202020202020746869732E78727069635265706F72744C6F676F4C6566742E53697A696E67203D20446576457870726573732E587472615072696E74696E672E496D61676553697A654D6F64652E53747265746368496D6167653B0D0A202020202020202020202020746869732E78727069635265706F72744C6F676F4C6566742E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C65526F77380D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C65526F77382E43656C6C732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C5B5D207B0D0A202020202020202020202020202020202020202020202020746869732E78725461626C6543656C6C32322C0D0A202020202020202020202020202020202020202020202020746869732E787274446561746843617573657D293B0D0A202020202020202020202020746869732E78725461626C65526F77382E4E616D65203D202278725461626C65526F7738223B0D0A202020202020202020202020746869732E78725461626C65526F77382E576569676874203D2031443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078726C626C5265706F7274446174650D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78726C626C5265706F7274446174652E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E742822417269616C222C20382E323546293B0D0A202020202020202020202020746869732E78726C626C5265706F7274446174652E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F6174283536322E37303831462C2031302E303030303146293B0D0A202020202020202020202020746869732E78726C626C5265706F7274446174652E4E616D65203D202278726C626C5265706F727444617465223B0D0A202020202020202020202020746869732E78726C626C5265706F7274446174652E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28322C20322C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78726C626C5265706F7274446174652E53697A6546203D206E65772053797374656D2E44726177696E672E53697A6546283135322E32393139462C20323346293B0D0A202020202020202020202020746869732E78726C626C5265706F7274446174652E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C5265706F7274446174652E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C5265706F7274446174652E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C6552696768743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078724C6162656C31320D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78724C6162656C31322E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E446F743B0D0A202020202020202020202020746869732E78724C6162656C31322E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E426F74746F6D3B0D0A202020202020202020202020746869732E78724C6162656C31322E4461746142696E64696E67732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E675B5D207B0D0A2020202020202020202020202020202020202020202020206E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E67282254657874222C206E756C6C2C202243726973746F44656174682E42555249414C5F4441544522297D293B0D0A202020202020202020202020746869732E78724C6162656C31322E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78724C6162656C31322E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F61742836372E3232393136462C203339352E3739313746293B0D0A202020202020202020202020746869732E78724C6162656C31322E4E616D65203D202278724C6162656C3132223B0D0A202020202020202020202020746869732E78724C6162656C31322E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28322C20322C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78724C6162656C31322E53697A6546203D206E65772053797374656D2E44726177696E672E53697A6546283133302E31303432462C20323346293B0D0A202020202020202020202020746869732E78724C6162656C31322E5374796C655072696F726974792E557365426F72646572446173685374796C65203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C31322E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C31322E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C31322E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C31322E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C6543656C6C350D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C6543656C6C352E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E446F743B0D0A202020202020202020202020746869732E78725461626C6543656C6C352E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E426F74746F6D3B0D0A202020202020202020202020746869732E78725461626C6543656C6C352E4461746142696E64696E67732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E675B5D207B0D0A2020202020202020202020202020202020202020202020206E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E67282254657874222C206E756C6C2C202243726973746F44656174682E4E414D4522297D293B0D0A202020202020202020202020746869732E78725461626C6543656C6C352E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78725461626C6543656C6C352E4E616D65203D202278725461626C6543656C6C35223B0D0A202020202020202020202020746869732E78725461626C6543656C6C352E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28342C20342C20342C20342C2031303046293B0D0A202020202020202020202020746869732E78725461626C6543656C6C352E5374796C655072696F726974792E557365426F72646572446173685374796C65203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C352E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C352E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C352E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C352E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C352E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A202020202020202020202020746869732E78725461626C6543656C6C352E576569676874203D20352E30303933363738353030333931393536443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078727443617374650D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78727443617374652E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E446F743B0D0A202020202020202020202020746869732E78727443617374652E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E426F74746F6D3B0D0A202020202020202020202020746869732E78727443617374652E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78727443617374652E4E616D65203D20227872744361737465223B0D0A202020202020202020202020746869732E78727443617374652E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28342C20342C20342C20342C2031303046293B0D0A202020202020202020202020746869732E78727443617374652E5374796C655072696F726974792E557365426F72646572446173685374796C65203D2066616C73653B0D0A202020202020202020202020746869732E78727443617374652E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E78727443617374652E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78727443617374652E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E78727443617374652E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78727443617374652E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A202020202020202020202020746869732E78727443617374652E576569676874203D20352E3739343730383334373631323736443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F207374796C6550616765496E666F0D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E7374796C6550616765496E666F2E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C20392E3735462C2053797374656D2E44726177696E672E466F6E745374796C652E526567756C61722C2053797374656D2E44726177696E672E4772617068696373556E69742E506F696E742C202828627974652928302929293B0D0A202020202020202020202020746869732E7374796C6550616765496E666F2E4E616D65203D20227374796C6550616765496E666F223B0D0A202020202020202020202020746869732E7374796C6550616765496E666F2E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28302C20302C20302C20302C2031303046293B0D0A202020202020202020202020746869732E7374796C6550616765496E666F2E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C654C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078724C6162656C320D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78724C6162656C322E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E446F743B0D0A202020202020202020202020746869732E78724C6162656C322E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E426F74746F6D3B0D0A202020202020202020202020746869732E78724C6162656C322E4461746142696E64696E67732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E675B5D207B0D0A2020202020202020202020202020202020202020202020206E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E67282254657874222C206E756C6C2C202243726973746F44656174682E42555249414C5F4441544522297D293B0D0A202020202020202020202020746869732E78724C6162656C322E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78724C6162656C322E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F6174283133362E34353833462C203237362E3030303146293B0D0A202020202020202020202020746869732E78724C6162656C322E4E616D65203D202278724C6162656C32223B0D0A202020202020202020202020746869732E78724C6162656C322E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28322C20322C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78724C6162656C322E53697A6546203D206E65772053797374656D2E44726177696E672E53697A6546283137322E30303031462C20323346293B0D0A202020202020202020202020746869732E78724C6162656C322E5374796C655072696F726974792E557365426F72646572446173685374796C65203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C322E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C322E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C322E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C322E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078724C6162656C370D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78724C6162656C372E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78724C6162656C372E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F617428392E393939393938462C203334392E3935383346293B0D0A202020202020202020202020746869732E78724C6162656C372E4E616D65203D202278724C6162656C37223B0D0A202020202020202020202020746869732E78724C6162656C372E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28322C20322C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78724C6162656C372E53697A6546203D206E65772053797374656D2E44726177696E672E53697A65462835302E3431363632462C20323346293B0D0A202020202020202020202020746869732E78724C6162656C372E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C372E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C372E54657874203D20224D696E6973746572223B0D0A202020202020202020202020746869732E78724C6162656C372E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C65526F77340D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C65526F77342E43656C6C732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C5B5D207B0D0A202020202020202020202020202020202020202020202020746869732E78725461626C6543656C6C31302C0D0A202020202020202020202020202020202020202020202020746869732E7872744465617468506C6163657D293B0D0A202020202020202020202020746869732E78725461626C65526F77342E4E616D65203D202278725461626C65526F7734223B0D0A202020202020202020202020746869732E78725461626C65526F77342E576569676874203D2031443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078726C626C5265706F72745469746C650D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78726C626C5265706F72745469746C652E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C20313346293B0D0A202020202020202020202020746869732E78726C626C5265706F72745469746C652E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F61742837322E3333333336462C2038332E353833333646293B0D0A202020202020202020202020746869732E78726C626C5265706F72745469746C652E4E616D65203D202278726C626C5265706F72745469746C65223B0D0A202020202020202020202020746869732E78726C626C5265706F72745469746C652E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28332C20302C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78726C626C5265706F72745469746C652E53697A6546203D206E65772053797374656D2E44726177696E672E53697A6546283635322E36363732462C20323446293B0D0A202020202020202020202020746869732E78726C626C5265706F72745469746C652E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C5265706F72745469746C652E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C5265706F72745469746C652E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C5265706F72745469746C652E54657874203D20225265706F7274205469746C65223B0D0A202020202020202020202020746869732E78726C626C5265706F72745469746C652E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C6543656E7465723B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C6543656C6C33340D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C6543656C6C33342E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E4E6F6E653B0D0A202020202020202020202020746869732E78725461626C6543656C6C33342E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203136462C2053797374656D2E44726177696E672E466F6E745374796C652E426F6C64293B0D0A202020202020202020202020746869732E78725461626C6543656C6C33342E4E616D65203D202278725461626C6543656C6C3334223B0D0A202020202020202020202020746869732E78725461626C6543656C6C33342E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C33342E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C33342E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C33342E54657874203D202245787472616374732066726F6D20746865205265676973746572206F6620446561746873204B657074223B0D0A202020202020202020202020746869732E78725461626C6543656C6C33342E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C6543656E7465723B0D0A202020202020202020202020746869732E78725461626C6543656C6C33342E576569676874203D2033443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078724C6162656C360D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78724C6162656C362E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78724C6162656C362E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F617428392E393939393938462C203237362E3030303146293B0D0A202020202020202020202020746869732E78724C6162656C362E4E616D65203D202278724C6162656C36223B0D0A202020202020202020202020746869732E78724C6162656C362E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28322C20322C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78724C6162656C362E53697A6546203D206E65772053797374656D2E44726177696E672E53697A65462835302E3431363632462C20323346293B0D0A202020202020202020202020746869732E78724C6162656C362E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C362E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C362E54657874203D202242757269616C223B0D0A202020202020202020202020746869732E78724C6162656C362E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F207872496E73746974757465416464726573730D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E7872496E73746974757465416464726573732E43616E536872696E6B203D20747275653B0D0A202020202020202020202020746869732E7872496E73746974757465416464726573732E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C20313046293B0D0A202020202020202020202020746869732E7872496E73746974757465416464726573732E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F61742837322E3333333336462C2035362E31323546293B0D0A202020202020202020202020746869732E7872496E73746974757465416464726573732E4E616D65203D20227872496E7374697475746541646472657373223B0D0A202020202020202020202020746869732E7872496E73746974757465416464726573732E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28332C20302C20302C20302C2031303046293B0D0A202020202020202020202020746869732E7872496E73746974757465416464726573732E53697A6546203D206E65772053797374656D2E44726177696E672E53697A6546283635322E36363732462C20323546293B0D0A202020202020202020202020746869732E7872496E73746974757465416464726573732E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E7872496E73746974757465416464726573732E5374796C655072696F726974792E557365466F7265436F6C6F72203D2066616C73653B0D0A202020202020202020202020746869732E7872496E73746974757465416464726573732E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E7872496E73746974757465416464726573732E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E7872496E73746974757465416464726573732E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C6543656E7465723B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078724C6162656C350D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78724C6162656C352E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78724C6162656C352E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F61742836372E3232393134462C203331302E3734393946293B0D0A202020202020202020202020746869732E78724C6162656C352E4E616D65203D202278724C6162656C35223B0D0A202020202020202020202020746869732E78724C6162656C352E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28322C20322C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78724C6162656C352E53697A6546203D206E65772053797374656D2E44726177696E672E53697A65462836312E30323039462C20323346293B0D0A202020202020202020202020746869732E78724C6162656C352E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C352E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C352E54657874203D2022506172697368223B0D0A202020202020202020202020746869732E78724C6162656C352E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2050616765466F6F7465720D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E50616765466F6F7465722E436F6E74726F6C732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5B5D207B0D0A202020202020202020202020202020202020202020202020746869732E78726C626C50726F6A6563744E616D652C0D0A202020202020202020202020202020202020202020202020746869732E78726C626C5265706F7274446174652C0D0A202020202020202020202020202020202020202020202020746869732E787250616765496E666F2C0D0A202020202020202020202020202020202020202020202020746869732E78726C6E466F6F7465727D293B0D0A202020202020202020202020746869732E50616765466F6F7465722E48656967687446203D2035362E3235463B0D0A202020202020202020202020746869732E50616765466F6F7465722E4E616D65203D202250616765466F6F746572223B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F207374796C65546F74616C526F770D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E7374796C65546F74616C526F772E4261636B436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E46726F6D41726762282828696E7429282828627974652928323333292929292C202828696E7429282828627974652928323333292929292C202828696E742928282862797465292832333329292929293B0D0A202020202020202020202020746869732E7374796C65546F74616C526F772E426F72646572436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E4761696E73626F726F3B0D0A202020202020202020202020746869732E7374796C65546F74616C526F772E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E536F6C69643B0D0A202020202020202020202020746869732E7374796C65546F74616C526F772E426F7264657273203D202828446576457870726573732E587472615072696E74696E672E426F72646572536964652928282828446576457870726573732E587472615072696E74696E672E426F72646572536964652E4C656674207C20446576457870726573732E587472615072696E74696E672E426F72646572536964652E546F7029200D0A2020202020202020202020202020202020202020202020207C20446576457870726573732E587472615072696E74696E672E426F72646572536964652E526967687429200D0A2020202020202020202020202020202020202020202020207C20446576457870726573732E587472615072696E74696E672E426F72646572536964652E426F74746F6D2929293B0D0A202020202020202020202020746869732E7374796C65546F74616C526F772E426F726465725769647468203D2031463B0D0A202020202020202020202020746869732E7374796C65546F74616C526F772E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C2039462C2053797374656D2E44726177696E672E466F6E745374796C652E426F6C642C2053797374656D2E44726177696E672E4772617068696373556E69742E506F696E742C202828627974652928302929293B0D0A202020202020202020202020746869732E7374796C65546F74616C526F772E466F7265436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E426C61636B3B0D0A202020202020202020202020746869732E7374796C65546F74616C526F772E4E616D65203D20227374796C65546F74616C526F77223B0D0A202020202020202020202020746869732E7374796C65546F74616C526F772E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28332C20332C20332C20332C2031303046293B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F207374796C6547726F7570526F770D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E7374796C6547726F7570526F772E4261636B436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E5768697465536D6F6B653B0D0A202020202020202020202020746869732E7374796C6547726F7570526F772E426F72646572436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E4761696E73626F726F3B0D0A202020202020202020202020746869732E7374796C6547726F7570526F772E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E536F6C69643B0D0A202020202020202020202020746869732E7374796C6547726F7570526F772E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E4E6F6E653B0D0A202020202020202020202020746869732E7374796C6547726F7570526F772E426F726465725769647468203D2031463B0D0A202020202020202020202020746869732E7374796C6547726F7570526F772E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C2039462C2053797374656D2E44726177696E672E466F6E745374796C652E426F6C642C2053797374656D2E44726177696E672E4772617068696373556E69742E506F696E742C202828627974652928302929293B0D0A202020202020202020202020746869732E7374796C6547726F7570526F772E4E616D65203D20227374796C6547726F7570526F77223B0D0A202020202020202020202020746869732E7374796C6547726F7570526F772E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28332C20332C20332C20332C2031303046293B0D0A202020202020202020202020746869732E7374796C6547726F7570526F772E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C654C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078726C626C50726F6A6563744E616D650D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78726C626C50726F6A6563744E616D652E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E742822417269616C222C20382E323546293B0D0A202020202020202020202020746869732E78726C626C50726F6A6563744E616D652E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F6174283133362E34353833462C2031302E303030303146293B0D0A202020202020202020202020746869732E78726C626C50726F6A6563744E616D652E4E616D65203D202278726C626C50726F6A6563744E616D65223B0D0A202020202020202020202020746869732E78726C626C50726F6A6563744E616D652E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28322C20322C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78726C626C50726F6A6563744E616D652E53697A6546203D206E65772053797374656D2E44726177696E672E53697A6546283339332E3735462C20323346293B0D0A202020202020202020202020746869732E78726C626C50726F6A6563744E616D652E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C50726F6A6563744E616D652E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C50726F6A6563744E616D652E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E546F7043656E7465723B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F207374796C654F6464526F770D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E7374796C654F6464526F772E4261636B436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E57686974653B0D0A202020202020202020202020746869732E7374796C654F6464526F772E426F72646572436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E4761696E73626F726F3B0D0A202020202020202020202020746869732E7374796C654F6464526F772E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E536F6C69643B0D0A202020202020202020202020746869732E7374796C654F6464526F772E426F7264657273203D202828446576457870726573732E587472615072696E74696E672E426F72646572536964652928282828446576457870726573732E587472615072696E74696E672E426F72646572536964652E4C656674207C20446576457870726573732E587472615072696E74696E672E426F72646572536964652E546F7029200D0A2020202020202020202020202020202020202020202020207C20446576457870726573732E587472615072696E74696E672E426F72646572536964652E526967687429200D0A2020202020202020202020202020202020202020202020207C20446576457870726573732E587472615072696E74696E672E426F72646572536964652E426F74746F6D2929293B0D0A202020202020202020202020746869732E7374796C654F6464526F772E426F726465725769647468203D2031463B0D0A202020202020202020202020746869732E7374796C654F6464526F772E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C2039462C2053797374656D2E44726177696E672E466F6E745374796C652E526567756C61722C2053797374656D2E44726177696E672E4772617068696373556E69742E506F696E742C202828627974652928302929293B0D0A202020202020202020202020746869732E7374796C654F6464526F772E466F7265436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E46726F6D41726762282828696E742928282862797465292830292929292C202828696E742928282862797465292830292929292C202828696E74292828286279746529283029292929293B0D0A202020202020202020202020746869732E7374796C654F6464526F772E4E616D65203D20227374796C654F6464526F77223B0D0A202020202020202020202020746869732E7374796C654F6464526F772E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28332C20332C20332C20332C2031303046293B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F207872496E737469747574654E616D650D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E7872496E737469747574654E616D652E43616E536872696E6B203D20747275653B0D0A202020202020202020202020746869732E7872496E737469747574654E616D652E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C20313346293B0D0A202020202020202020202020746869732E7872496E737469747574654E616D652E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F61742837322E3333333336462C2032382E31323546293B0D0A202020202020202020202020746869732E7872496E737469747574654E616D652E4E616D65203D20227872496E737469747574654E616D65223B0D0A202020202020202020202020746869732E7872496E737469747574654E616D652E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28332C20302C20302C20302C2031303046293B0D0A202020202020202020202020746869732E7872496E737469747574654E616D652E50726F636573734E756C6C56616C756573203D20446576457870726573732E587472615265706F7274732E55492E56616C75655375707072657373547970652E5375707072657373416E64536872696E6B3B0D0A202020202020202020202020746869732E7872496E737469747574654E616D652E53697A6546203D206E65772053797374656D2E44726177696E672E53697A6546283635322E36363732462C20323846293B0D0A202020202020202020202020746869732E7872496E737469747574654E616D652E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E7872496E737469747574654E616D652E5374796C655072696F726974792E557365466F7265436F6C6F72203D2066616C73653B0D0A202020202020202020202020746869732E7872496E737469747574654E616D652E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E7872496E737469747574654E616D652E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E7872496E737469747574654E616D652E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C6543656E7465723B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C6543656C6C32320D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C6543656C6C32322E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78725461626C6543656C6C32322E4E616D65203D202278725461626C6543656C6C3232223B0D0A202020202020202020202020746869732E78725461626C6543656C6C32322E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28342C20342C20342C20342C2031303046293B0D0A202020202020202020202020746869732E78725461626C6543656C6C32322E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C32322E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C32322E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C32322E54657874203D20224361757365223B0D0A202020202020202020202020746869732E78725461626C6543656C6C32322E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A202020202020202020202020746869732E78725461626C6543656C6C32322E576569676874203D20302E3537343634333438313538393431383931443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C6543656C6C320D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C6543656C6C322E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E446F743B0D0A202020202020202020202020746869732E78725461626C6543656C6C322E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E426F74746F6D3B0D0A202020202020202020202020746869732E78725461626C6543656C6C322E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78725461626C6543656C6C322E4E616D65203D202278725461626C6543656C6C32223B0D0A202020202020202020202020746869732E78725461626C6543656C6C322E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28342C20342C20342C20342C2031303046293B0D0A202020202020202020202020746869732E78725461626C6543656C6C322E5374796C655072696F726974792E557365426F72646572446173685374796C65203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C322E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C322E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C322E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C322E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C322E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A202020202020202020202020746869732E78725461626C6543656C6C322E576569676874203D20342E33343537343135303732323935363632443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F207374796C65436F6C756D6E4865616465720D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E7374796C65436F6C756D6E4865616465722E4261636B436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E4761696E73626F726F3B0D0A202020202020202020202020746869732E7374796C65436F6C756D6E4865616465722E426F72646572436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E4461726B477261793B0D0A202020202020202020202020746869732E7374796C65436F6C756D6E4865616465722E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E536F6C69643B0D0A202020202020202020202020746869732E7374796C65436F6C756D6E4865616465722E426F7264657273203D202828446576457870726573732E587472615072696E74696E672E426F72646572536964652928282828446576457870726573732E587472615072696E74696E672E426F72646572536964652E4C656674207C20446576457870726573732E587472615072696E74696E672E426F72646572536964652E546F7029200D0A2020202020202020202020202020202020202020202020207C20446576457870726573732E587472615072696E74696E672E426F72646572536964652E526967687429200D0A2020202020202020202020202020202020202020202020207C20446576457870726573732E587472615072696E74696E672E426F72646572536964652E426F74746F6D2929293B0D0A202020202020202020202020746869732E7374796C65436F6C756D6E4865616465722E426F726465725769647468203D2031463B0D0A202020202020202020202020746869732E7374796C65436F6C756D6E4865616465722E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C2039462C2053797374656D2E44726177696E672E466F6E745374796C652E426F6C642C2053797374656D2E44726177696E672E4772617068696373556E69742E506F696E742C202828627974652928302929293B0D0A202020202020202020202020746869732E7374796C65436F6C756D6E4865616465722E4E616D65203D20227374796C65436F6C756D6E486561646572223B0D0A202020202020202020202020746869732E7374796C65436F6C756D6E4865616465722E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28332C20332C20332C20332C2031303046293B0D0A202020202020202020202020746869732E7374796C65436F6C756D6E4865616465722E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C654C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F207374796C655469746C65526F770D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E7374796C655469746C65526F772E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C2039462C2053797374656D2E44726177696E672E466F6E745374796C652E426F6C642C2053797374656D2E44726177696E672E4772617068696373556E69742E506F696E742C202828627974652928302929293B0D0A202020202020202020202020746869732E7374796C655469746C65526F772E4E616D65203D20227374796C655469746C65526F77223B0D0A202020202020202020202020746869732E7374796C655469746C65526F772E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28332C20332C20332C20332C2031303046293B0D0A202020202020202020202020746869732E7374796C655469746C65526F772E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C654C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C65320D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C65322E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E4E6F6E653B0D0A202020202020202020202020746869732E78725461626C65322E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F617428312E393939393832462C203046293B0D0A202020202020202020202020746869732E78725461626C65322E4E616D65203D202278725461626C6532223B0D0A202020202020202020202020746869732E78725461626C65322E526F77732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E58525461626C65526F775B5D207B0D0A202020202020202020202020202020202020202020202020746869732E78725461626C65526F7731347D293B0D0A202020202020202020202020746869732E78725461626C65322E53697A6546203D206E65772053797374656D2E44726177696E672E53697A654628373139462C2032382E31323546293B0D0A202020202020202020202020746869732E78725461626C65322E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C6543656C6C31330D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C6543656C6C31332E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78725461626C6543656C6C31332E4E616D65203D202278725461626C6543656C6C3133223B0D0A202020202020202020202020746869732E78725461626C6543656C6C31332E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28342C20342C20342C20342C2031303046293B0D0A202020202020202020202020746869732E78725461626C6543656C6C31332E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C31332E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C31332E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C31332E54657874203D20224361737465223B0D0A202020202020202020202020746869732E78725461626C6543656C6C31332E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A202020202020202020202020746869732E78725461626C6543656C6C31332E576569676874203D20302E3537343634333235323730373538323433443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C6543656C6C340D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C6543656C6C342E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78725461626C6543656C6C342E4E616D65203D202278725461626C6543656C6C34223B0D0A202020202020202020202020746869732E78725461626C6543656C6C342E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28342C20342C20342C20342C2031303046293B0D0A202020202020202020202020746869732E78725461626C6543656C6C342E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C342E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C342E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C342E54657874203D20224E616D65206F66207468652044696F636561736564223B0D0A202020202020202020202020746869732E78725461626C6543656C6C342E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A202020202020202020202020746869732E78725461626C6543656C6C342E576569676874203D20312E33353939383337353032383131343633443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C65526F77360D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C65526F77362E43656C6C732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C5B5D207B0D0A202020202020202020202020202020202020202020202020746869732E78725461626C6543656C6C31362C0D0A202020202020202020202020202020202020202020202020746869732E787274506172656E74737D293B0D0A202020202020202020202020746869732E78725461626C65526F77362E4E616D65203D202278725461626C65526F7736223B0D0A202020202020202020202020746869732E78725461626C65526F77362E576569676874203D2031443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C65526F77310D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C65526F77312E43656C6C732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C5B5D207B0D0A202020202020202020202020202020202020202020202020746869732E78725461626C6543656C6C312C0D0A202020202020202020202020202020202020202020202020746869732E78725461626C6543656C6C322C0D0A202020202020202020202020202020202020202020202020746869732E78725461626C6543656C6C337D293B0D0A202020202020202020202020746869732E78725461626C65526F77312E4E616D65203D202278725461626C65526F7731223B0D0A202020202020202020202020746869732E78725461626C65526F77312E576569676874203D2031443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F207374796C6544617465496E666F0D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E7374796C6544617465496E666F2E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C20392E3735462C2053797374656D2E44726177696E672E466F6E745374796C652E526567756C61722C2053797374656D2E44726177696E672E4772617068696373556E69742E506F696E742C202828627974652928302929293B0D0A202020202020202020202020746869732E7374796C6544617465496E666F2E4E616D65203D20227374796C6544617465496E666F223B0D0A202020202020202020202020746869732E7374796C6544617465496E666F2E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28322C20322C20322C20322C2031303046293B0D0A202020202020202020202020746869732E7374796C6544617465496E666F2E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C6552696768743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078726C626C5265706F72745375625469746C650D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78726C626C5265706F72745375625469746C652E4261636B436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E5768697465536D6F6B653B0D0A202020202020202020202020746869732E78726C626C5265706F72745375625469746C652E426F72646572436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E53696C7665723B0D0A202020202020202020202020746869732E78726C626C5265706F72745375625469746C652E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E546F703B0D0A202020202020202020202020746869732E78726C626C5265706F72745375625469746C652E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203130462C2053797374656D2E44726177696E672E466F6E745374796C652E426F6C64293B0D0A202020202020202020202020746869732E78726C626C5265706F72745375625469746C652E466F7265436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E46726F6D41726762282828696E74292828286279746529283634292929292C202828696E74292828286279746529283634292929292C202828696E7429282828627974652928363429292929293B0D0A202020202020202020202020746869732E78726C626C5265706F72745375625469746C652E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F617428312E393939393832462C203133342E3230383446293B0D0A202020202020202020202020746869732E78726C626C5265706F72745375625469746C652E4E616D65203D202278726C626C5265706F72745375625469746C65223B0D0A202020202020202020202020746869732E78726C626C5265706F72745375625469746C652E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28332C20302C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78726C626C5265706F72745375625469746C652E50726F636573734E756C6C56616C756573203D20446576457870726573732E587472615265706F7274732E55492E56616C75655375707072657373547970652E5375707072657373416E64536872696E6B3B0D0A202020202020202020202020746869732E78726C626C5265706F72745375625469746C652E53697A6546203D206E65772053797374656D2E44726177696E672E53697A6546283732332E30303036462C2031392E373038333346293B0D0A202020202020202020202020746869732E78726C626C5265706F72745375625469746C652E5374796C655072696F726974792E5573654261636B436F6C6F72203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C5265706F72745375625469746C652E5374796C655072696F726974792E557365426F72646572436F6C6F72203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C5265706F72745375625469746C652E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C5265706F72745375625469746C652E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C5265706F72745375625469746C652E5374796C655072696F726974792E557365466F7265436F6C6F72203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C5265706F72745375625469746C652E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C5265706F72745375625469746C652E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78726C626C5265706F72745375625469746C652E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C654C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F205265706F72744865616465720D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E5265706F72744865616465722E436F6E74726F6C732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5B5D207B0D0A202020202020202020202020202020202020202020202020746869732E78726C626C4275646765746E616D652C0D0A202020202020202020202020202020202020202020202020746869732E7872496E73746974757465416464726573732C0D0A202020202020202020202020202020202020202020202020746869732E7872496E737469747574654E616D652C0D0A202020202020202020202020202020202020202020202020746869732E78726C626C436F737443656E7465722C0D0A202020202020202020202020202020202020202020202020746869732E78724461746552616E67652C0D0A202020202020202020202020202020202020202020202020746869732E78727069635265706F72744C6F676F4C6566742C0D0A202020202020202020202020202020202020202020202020746869732E78726C626C5265706F72745375625469746C652C0D0A202020202020202020202020202020202020202020202020746869732E78726C626C5265706F72745469746C652C0D0A202020202020202020202020202020202020202020202020746869732E78726C626C496E737469747574657D293B0D0A202020202020202020202020746869732E5265706F72744865616465722E48656967687446203D203139362E363235463B0D0A202020202020202020202020746869732E5265706F72744865616465722E4E616D65203D20225265706F7274486561646572223B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C65526F77370D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C65526F77372E43656C6C732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C5B5D207B0D0A202020202020202020202020202020202020202020202020746869732E78724465617468446174652C0D0A202020202020202020202020202020202020202020202020746869732E7872744465617468446174657D293B0D0A202020202020202020202020746869732E78725461626C65526F77372E4E616D65203D202278725461626C65526F7737223B0D0A202020202020202020202020746869732E78725461626C65526F77372E576569676874203D2031443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F207374796C6547726F7570526F77426173650D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E7374796C6547726F7570526F77426173652E4261636B436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E5768697465536D6F6B653B0D0A202020202020202020202020746869732E7374796C6547726F7570526F77426173652E426F72646572436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E53696C7665723B0D0A202020202020202020202020746869732E7374796C6547726F7570526F77426173652E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E536F6C69643B0D0A202020202020202020202020746869732E7374796C6547726F7570526F77426173652E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E4E6F6E653B0D0A202020202020202020202020746869732E7374796C6547726F7570526F77426173652E426F726465725769647468203D2031463B0D0A202020202020202020202020746869732E7374796C6547726F7570526F77426173652E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C2039462C2053797374656D2E44726177696E672E466F6E745374796C652E426F6C642C2053797374656D2E44726177696E672E4772617068696373556E69742E506F696E742C202828627974652928302929293B0D0A202020202020202020202020746869732E7374796C6547726F7570526F77426173652E4E616D65203D20227374796C6547726F7570526F7742617365223B0D0A202020202020202020202020746869732E7374796C6547726F7570526F77426173652E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28332C20332C20332C20332C2031303046293B0D0A202020202020202020202020746869732E7374796C6547726F7570526F77426173652E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C654C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C65310D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C65312E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F617428312E393939393833462C2031302E303030303146293B0D0A202020202020202020202020746869732E78725461626C65312E4E616D65203D202278725461626C6531223B0D0A202020202020202020202020746869732E78725461626C65312E526F77732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E58525461626C65526F775B5D207B0D0A202020202020202020202020202020202020202020202020746869732E78725461626C65526F77312C0D0A202020202020202020202020202020202020202020202020746869732E78725461626C65526F77322C0D0A202020202020202020202020202020202020202020202020746869732E78725461626C65526F77332C0D0A202020202020202020202020202020202020202020202020746869732E78725461626C65526F77342C0D0A202020202020202020202020202020202020202020202020746869732E78725461626C65526F77352C0D0A202020202020202020202020202020202020202020202020746869732E78725461626C65526F77362C0D0A202020202020202020202020202020202020202020202020746869732E78725461626C65526F77372C0D0A202020202020202020202020202020202020202020202020746869732E78725461626C65526F77387D293B0D0A202020202020202020202020746869732E78725461626C65312E53697A6546203D206E65772053797374656D2E44726177696E672E53697A6546283732332E30303036462C203232322E323546293B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F207374796C654576656E526F770D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E7374796C654576656E526F772E4261636B436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E5768697465536D6F6B653B0D0A202020202020202020202020746869732E7374796C654576656E526F772E426F72646572436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E53696C7665723B0D0A202020202020202020202020746869732E7374796C654576656E526F772E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E536F6C69643B0D0A202020202020202020202020746869732E7374796C654576656E526F772E426F7264657273203D202828446576457870726573732E587472615072696E74696E672E426F72646572536964652928282828446576457870726573732E587472615072696E74696E672E426F72646572536964652E4C656674207C20446576457870726573732E587472615072696E74696E672E426F72646572536964652E546F7029200D0A2020202020202020202020202020202020202020202020207C20446576457870726573732E587472615072696E74696E672E426F72646572536964652E526967687429200D0A2020202020202020202020202020202020202020202020207C20446576457870726573732E587472615072696E74696E672E426F72646572536964652E426F74746F6D2929293B0D0A202020202020202020202020746869732E7374796C654576656E526F772E426F726465725769647468203D2031463B0D0A202020202020202020202020746869732E7374796C654576656E526F772E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C2039462C2053797374656D2E44726177696E672E466F6E745374796C652E526567756C61722C2053797374656D2E44726177696E672E4772617068696373556E69742E506F696E742C202828627974652928302929293B0D0A202020202020202020202020746869732E7374796C654576656E526F772E4E616D65203D20227374796C654576656E526F77223B0D0A202020202020202020202020746869732E7374796C654576656E526F772E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28332C20332C20332C20332C2031303046293B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078724C6162656C340D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78724C6162656C342E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78724C6162656C342E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F61742836372E3232393134462C2032373646293B0D0A202020202020202020202020746869732E78724C6162656C342E4E616D65203D202278724C6162656C34223B0D0A202020202020202020202020746869732E78724C6162656C342E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28322C20322C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78724C6162656C342E53697A6546203D206E65772053797374656D2E44726177696E672E53697A65462836312E3032303932462C2032332E303030303346293B0D0A202020202020202020202020746869732E78724C6162656C342E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C342E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C342E54657874203D202244617465223B0D0A202020202020202020202020746869732E78724C6162656C342E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078726C6E466F6F7465720D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78726C6E466F6F7465722E426F72646572436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E456D7074793B0D0A202020202020202020202020746869732E78726C6E466F6F7465722E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E536F6C69643B0D0A202020202020202020202020746869732E78726C6E466F6F7465722E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E4E6F6E653B0D0A202020202020202020202020746869732E78726C6E466F6F7465722E466F7265436F6C6F72203D2053797374656D2E44726177696E672E436F6C6F722E4461726B477261793B0D0A202020202020202020202020746869732E78726C6E466F6F7465722E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F61742830462C203046293B0D0A202020202020202020202020746869732E78726C6E466F6F7465722E4E616D65203D202278726C6E466F6F746572223B0D0A202020202020202020202020746869732E78726C6E466F6F7465722E53697A6546203D206E65772053797374656D2E44726177696E672E53697A6546283732332E39393938462C203246293B0D0A202020202020202020202020746869732E78726C6E466F6F7465722E5374796C655072696F726974792E557365426F72646572436F6C6F72203D2066616C73653B0D0A202020202020202020202020746869732E78726C6E466F6F7465722E5374796C655072696F726974792E557365426F72646572446173685374796C65203D2066616C73653B0D0A202020202020202020202020746869732E78726C6E466F6F7465722E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E78726C6E466F6F7465722E5374796C655072696F726974792E557365466F7265436F6C6F72203D2066616C73653B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078724C6162656C330D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78724C6162656C332E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E446F743B0D0A202020202020202020202020746869732E78724C6162656C332E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E426F74746F6D3B0D0A202020202020202020202020746869732E78724C6162656C332E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78724C6162656C332E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F6174283133362E34353833462C203331302E3734393946293B0D0A202020202020202020202020746869732E78724C6162656C332E4E616D65203D202278724C6162656C33223B0D0A202020202020202020202020746869732E78724C6162656C332E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28322C20322C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78724C6162656C332E53697A6546203D206E65772053797374656D2E44726177696E672E53697A6546283137322E30303031462C2032332E303030303346293B0D0A202020202020202020202020746869732E78724C6162656C332E5374796C655072696F726974792E557365426F72646572446173685374796C65203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C332E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C332E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C332E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C332E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F207872744465617468446174650D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E7872744465617468446174652E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E446F743B0D0A202020202020202020202020746869732E7872744465617468446174652E426F7264657273203D20446576457870726573732E587472615072696E74696E672E426F72646572536964652E426F74746F6D3B0D0A202020202020202020202020746869732E7872744465617468446174652E4461746142696E64696E67732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E675B5D207B0D0A2020202020202020202020202020202020202020202020206E657720446576457870726573732E587472615265706F7274732E55492E585242696E64696E67282254657874222C206E756C6C2C202243726973746F44656174682E44454154485F4441544522297D293B0D0A202020202020202020202020746869732E7872744465617468446174652E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E7872744465617468446174652E4E616D65203D2022787274446561746844617465223B0D0A202020202020202020202020746869732E7872744465617468446174652E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28342C20342C20342C20342C2031303046293B0D0A202020202020202020202020746869732E7872744465617468446174652E5374796C655072696F726974792E557365426F72646572446173685374796C65203D2066616C73653B0D0A202020202020202020202020746869732E7872744465617468446174652E5374796C655072696F726974792E557365426F7264657273203D2066616C73653B0D0A202020202020202020202020746869732E7872744465617468446174652E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E7872744465617468446174652E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E7872744465617468446174652E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E7872744465617468446174652E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A202020202020202020202020746869732E7872744465617468446174652E576569676874203D20352E37393437303831393530323438363832443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C6543656C6C310D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C6543656C6C312E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78725461626C6543656C6C312E4E616D65203D202278725461626C6543656C6C31223B0D0A202020202020202020202020746869732E78725461626C6543656C6C312E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28342C20342C20342C20342C2031303046293B0D0A202020202020202020202020746869732E78725461626C6543656C6C312E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C312E5374796C655072696F726974792E55736550616464696E67203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C312E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78725461626C6543656C6C312E54657874203D20226174223B0D0A202020202020202020202020746869732E78725461626C6543656C6C312E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A202020202020202020202020746869732E78725461626C6543656C6C312E576569676874203D20302E3537343634333137363431333633363934443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078724C6162656C31310D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78724C6162656C31312E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C203946293B0D0A202020202020202020202020746869732E78724C6162656C31312E4C6F636174696F6E466C6F6174203D206E657720446576457870726573732E5574696C732E506F696E74466C6F617428392E393939393938462C203433302E3132353146293B0D0A202020202020202020202020746869732E78724C6162656C31312E4E616D65203D202278724C6162656C3131223B0D0A202020202020202020202020746869732E78724C6162656C31312E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28322C20322C20302C20302C2031303046293B0D0A202020202020202020202020746869732E78724C6162656C31312E53697A6546203D206E65772053797374656D2E44726177696E672E53697A65462835302E3431363632462C20323346293B0D0A202020202020202020202020746869732E78724C6162656C31312E5374796C655072696F726974792E557365466F6E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C31312E5374796C655072696F726974792E55736554657874416C69676E6D656E74203D2066616C73653B0D0A202020202020202020202020746869732E78724C6162656C31312E54657874203D2022506C616365223B0D0A202020202020202020202020746869732E78724C6162656C31312E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E426F74746F6D4C6566743B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F207374796C65526F770D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E7374796C65526F772E426F72646572446173685374796C65203D20446576457870726573732E587472615072696E74696E672E426F72646572446173685374796C652E536F6C69643B0D0A202020202020202020202020746869732E7374796C65526F772E426F7264657273203D202828446576457870726573732E587472615072696E74696E672E426F726465725369646529282828446576457870726573732E587472615072696E74696E672E426F72646572536964652E4C656674207C20446576457870726573732E587472615072696E74696E672E426F72646572536964652E526967687429200D0A2020202020202020202020202020202020202020202020207C20446576457870726573732E587472615072696E74696E672E426F72646572536964652E426F74746F6D2929293B0D0A202020202020202020202020746869732E7374796C65526F772E426F726465725769647468203D2031463B0D0A202020202020202020202020746869732E7374796C65526F772E466F6E74203D206E65772053797374656D2E44726177696E672E466F6E7428225461686F6D61222C2039462C2053797374656D2E44726177696E672E466F6E745374796C652E526567756C61722C2053797374656D2E44726177696E672E4772617068696373556E69742E506F696E742C202828627974652928302929293B0D0A202020202020202020202020746869732E7374796C65526F772E4E616D65203D20227374796C65526F77223B0D0A202020202020202020202020746869732E7374796C65526F772E50616464696E67203D206E657720446576457870726573732E587472615072696E74696E672E50616464696E67496E666F28332C20332C20332C20332C2031303046293B0D0A202020202020202020202020746869732E7374796C65526F772E54657874416C69676E6D656E74203D20446576457870726573732E587472615072696E74696E672E54657874416C69676E6D656E742E4D6964646C6543656E7465723B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F2078725461626C65526F77350D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E78725461626C65526F77352E43656C6C732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E58525461626C6543656C6C5B5D207B0D0A202020202020202020202020202020202020202020202020746869732E78725461626C6543656C6C31332C0D0A202020202020202020202020202020202020202020202020746869732E78727443617374657D293B0D0A202020202020202020202020746869732E78725461626C65526F77352E4E616D65203D202278725461626C65526F7735223B0D0A202020202020202020202020746869732E78725461626C65526F77352E576569676874203D2031443B0D0A2020202020202020202020202F2F200D0A2020202020202020202020202F2F204465617468526567697374657243657274696669636174650D0A2020202020202020202020202F2F200D0A202020202020202020202020746869732E42616E64732E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E42616E645B5D207B0D0A202020202020202020202020202020202020202020202020746869732E44657461696C2C0D0A202020202020202020202020202020202020202020202020746869732E506167654865616465722C0D0A202020202020202020202020202020202020202020202020746869732E546F704D617267696E2C0D0A202020202020202020202020202020202020202020202020746869732E426F74746F6D4D617267696E2C0D0A202020202020202020202020202020202020202020202020746869732E5265706F72744865616465722C0D0A202020202020202020202020202020202020202020202020746869732E50616765466F6F7465727D293B0D0A202020202020202020202020746869732E446174614D656D626572203D20225265706F727453657474696E67223B0D0A202020202020202020202020746869732E4D617267696E73203D206E65772053797374656D2E44726177696E672E5072696E74696E672E4D617267696E732834392C2035332C2032302C203230293B0D0A202020202020202020202020746869732E4E616D65203D2022446561746852656769737465724365727469666963617465223B0D0A202020202020202020202020746869732E50616765486569676874203D20313136393B0D0A202020202020202020202020746869732E506167655769647468203D203832373B0D0A202020202020202020202020746869732E50617065724B696E64203D2053797374656D2E44726177696E672E5072696E74696E672E50617065724B696E642E41343B0D0A202020202020202020202020746869732E5374796C6553686565742E41646452616E6765286E657720446576457870726573732E587472615265706F7274732E55492E5852436F6E74726F6C5374796C655B5D207B0D0A202020202020202020202020202020202020202020202020746869732E7374796C65496E737469747574652C0D0A202020202020202020202020202020202020202020202020746869732E7374796C655265706F72745469746C652C0D0A202020202020202020202020202020202020202020202020746869732E7374796C655265706F72745375625469746C652C0D0A202020202020202020202020202020202020202020202020746869732E7374796C6544617465496E666F2C0D0A202020202020202020202020202020202020202020202020746869732E7374796C6550616765496E666F2C0D0A202020202020202020202020202020202020202020202020746869732E7374796C654F6464526F772C0D0A202020202020202020202020202020202020202020202020746869732E7374796C654576656E526F772C0D0A202020202020202020202020202020202020202020202020746869732E7374796C6547726F7570526F772C0D0A202020202020202020202020202020202020202020202020746869732E7374796C65526F772C0D0A202020202020202020202020202020202020202020202020746869732E7374796C65436F6C756D6E4865616465722C0D0A202020202020202020202020202020202020202020202020746869732E7374796C65546F74616C526F772C0D0A202020202020202020202020202020202020202020202020746869732E7374796C655469746C65526F772C0D0A202020202020202020202020202020202020202020202020746869732E7374796C6547726F7570526F77426173657D293B0D0A202020202020202020202020746869732E56657273696F6E203D202231332E32223B0D0A202020202020202020202020282853797374656D2E436F6D706F6E656E744D6F64656C2E49537570706F7274496E697469616C697A652928746869732E78725461626C653229292E456E64496E697428293B0D0A202020202020202020202020282853797374656D2E436F6D706F6E656E744D6F64656C2E49537570706F7274496E697469616C697A652928746869732E78725461626C653129292E456E64496E697428293B0D0A202020202020202020202020282853797374656D2E436F6D706F6E656E744D6F64656C2E49537570706F7274496E697469616C697A6529287468697329292E456E64496E697428293B0D0A20202020202020207D0D0A202020207D0D0A7D0D0A,'RPT-119');
/*!40000 ALTER TABLE `custom_report` ENABLE KEYS */;
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
-- Table structure for table `executive_legal_entity`
--

DROP TABLE IF EXISTS `executive_legal_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `executive_legal_entity` (
  `EXE_LEGAL_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CUSTOMERID` int(10) unsigned NOT NULL DEFAULT '0',
  `EXECUTIVE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`EXE_LEGAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `executive_legal_entity`
--

LOCK TABLES `executive_legal_entity` WRITE;
/*!40000 ALTER TABLE `executive_legal_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `executive_legal_entity` ENABLE KEYS */;
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
-- Table structure for table `inventory_stock`
--

DROP TABLE IF EXISTS `inventory_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_stock` (
  `BALANCE_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'ONLY DATE',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'BALANCE_DATE,PROJECT_ID,LEDGER_ID(PK)',
  `LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ITEM_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `QUANTITY` int(11) NOT NULL DEFAULT '0',
  `RATE` decimal(15,2) NOT NULL DEFAULT '0.00',
  `STOCK_TYPE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-In,1-Out',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TRANS_FLAG` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`BALANCE_DATE`,`PROJECT_ID`,`ITEM_ID`,`BRANCH_ID`,`LOCATION_ID`),
  KEY `Index_Ledger_Id` (`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_stock`
--

LOCK TABLES `inventory_stock` WRITE;
/*!40000 ALTER TABLE `inventory_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_stock` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_contribution_head`
--

LOCK TABLES `master_contribution_head` WRITE;
/*!40000 ALTER TABLE `master_contribution_head` DISABLE KEYS */;
INSERT INTO `master_contribution_head` VALUES (1,'1','Celebration of national events (Independence / Republic day) / festivals etc.'),(2,'2','Theatre / Films'),(3,'3','Maintenance of place of historical and cultural importance'),(4,'4','Preservation of ancient / tribal art forms'),(5,'5','Research'),(6,'6','Cultural shows'),(7,'7','Setting up and running handicraft centre / cottage and Khadi industry / social forestry projects'),(8,'8','Animal husbandry projects'),(9,'9','Income generation projects / schemes'),(10,'10','Micro-finance projects, including setting up banking co-operatives and self-help groups'),(11,'11','Agricultural activity'),(12,'12','Rural Development'),(13,'13','Construction and maintenance of school / college'),(14,'14','Construction and running of hostel for poor students'),(15,'15','Grant of stipend / Scholarship / assistance in cash and kind to poor / deserving children'),(16,'16','Purchase and supply of educational material - books, notebooks etc.'),(17,'17','Conducting adult literacy programs'),(18,'18','Education / Schools for the mentally challenged'),(19,'19','Non-formal education projects / coaching classes'),(20,'20','Construction / Repair / Maintenance of places of worship'),(21,'21','Religious schools / education of priests and preachers'),(22,'22','Publication and distribution of religious literature'),(23,'23','Religious functions'),(24,'24','Maintenance of priests / preachers / other religious functionaries'),(25,'25','Construction / Running of hospital / dispensary / clinic'),(26,'26','Construction of community halls etc.'),(27,'27','Construction and Management of old age home'),(28,'28','Welfare of the aged / widows'),(29,'29','Construction and Management of Orphanage'),(30,'30','Welfare of the orphans'),(31,'31','Construction and Management of dharamshala / shelter'),(32,'32','Holding of free medical / health / family welfare / immunisation camps'),(33,'33','Supply of free medicine, and medical aid, including hearing aids, visual aids, family planning aids etc.'),(34,'34','Provision of aids such as Tricycles, calipers etc. to the handicapped'),(35,'35','Treatment / Rehabilitation of persons suffering from leprosy'),(36,'36','Treatment / Rehabilitation of drug addicts'),(37,'37','Welfare / Empowerment of women'),(38,'38','Welfare of children'),(39,'39','Provision of free clothing / food to the poor, needy and destitute'),(40,'40','Relief / Rehabilitation of victims of natural calamities'),(41,'41','Help to the victims of riots / other disturbances'),(42,'42','Digging of bore wells'),(43,'43','Sanitation including community toilets etc.'),(44,'44','Vocational training - tailoring, motor repairs, computers etc.'),(45,'45','Awareness Camp / Seminar / Workshop / Meeting / Conference'),(46,'46','Providing free legal aid / Running legal aid centre'),(47,'47','Holding sports meet'),(48,'48','Awareness about Acquired Immune Deficiency Syndrome (AIDS) / Treatment and rehabilitation of persons affected by AIDS'),(49,'49','Welfare of the physically and mentally challenged'),(50,'50','Welfare of the Scheduled Castes'),(51,'51','Welfare of the Scheduled Tribes'),(52,'52','Welfare of the Other Backward Classes'),(53,'53','Environmental programs'),(54,'54','Survey for socio-economic and other welfare programs'),(55,'55','Establishment expenses'),(56,'56','Activities other than those mentioned above (Furnish details)'),(57,'P56','Agricultural activities'),(58,'P57','Animal Husbandary'),(59,'P58','Care of orphans'),(60,'P59','Const. and Extension of Plces of worship'),(61,'P60','Const./Ext. of school/collge Buildings'),(62,'P61','Construction/extn of other buildings'),(63,'P62','Cultural Programmes'),(64,'P63','Education of preachers/priests'),(65,'P64','Environment'),(66,'P65','Health and family welfare'),(67,'P66','Help for Poor, aged and detitute'),(68,'P67','Housing'),(69,'P68','Maint. and Repairs of places of worship'),(70,'P69','Maintenance of places of Historic and cultural imp'),(71,'P70','Mass Intentions'),(72,'P71','Others'),(73,'P72','Publ. of Religious literature'),(74,'P73','Relief for natural calamity'),(75,'P74','Repair/Maint. of school/collge Buildings'),(76,'P75','Repair/Maintenance of other buildings'),(77,'P76','Sanitation'),(78,'P77','Stiphend/Scholarship'),(79,'P78','Theatre/films'),(80,'P79','purchase of vehicle'),(81,'P80','Education to Children'),(82,'P81','Maintenance of religious');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_cost_centre`
--

LOCK TABLES `master_cost_centre` WRITE;
/*!40000 ALTER TABLE `master_cost_centre` DISABLE KEYS */;
INSERT INTO `master_cost_centre` VALUES (1,'32506','Exposure Exp',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_cost_centre_category`
--

LOCK TABLES `master_cost_centre_category` WRITE;
/*!40000 ALTER TABLE `master_cost_centre_category` DISABLE KEYS */;
INSERT INTO `master_cost_centre_category` VALUES (2,'General');
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_country`
--

LOCK TABLES `master_country` WRITE;
/*!40000 ALTER TABLE `master_country` DISABLE KEYS */;
INSERT INTO `master_country` VALUES (127,'Germany','0',NULL,'',NULL),(128,'Switzerland','1',NULL,'',NULL),(129,'India','IND',NULL,'à¤°',NULL),(130,'USA','3',NULL,'$',NULL),(131,'Spain','4',NULL,'',NULL),(132,'Italy','5',NULL,'',NULL),(133,'Srilanka','6',NULL,'Rs',NULL),(134,'Cameroon','7',NULL,'',NULL),(135,'Swizterland','8',NULL,'',NULL),(136,'Australia','9',NULL,'',NULL);
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
  `ECS_DURATION` int(10) unsigned NOT NULL DEFAULT '0',
  `PLACE` varchar(30) DEFAULT NULL,
  `COMPANY_NAME` varchar(45) DEFAULT NULL,
  `COUNTRY_ID` int(11) DEFAULT NULL,
  `PINCODE` varchar(10) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `TELEPHONE` varchar(50) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
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
-- Table structure for table `master_donor_template_type`
--

DROP TABLE IF EXISTS `master_donor_template_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_donor_template_type` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TEMPLATE_TYPE` varchar(100) NOT NULL DEFAULT '',
  `NAME` varchar(100) NOT NULL DEFAULT '',
  `TITLE` varchar(200) DEFAULT NULL,
  `DESCRIPTION` text,
  `CRITERIA` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_donor_template_type`
--

LOCK TABLES `master_donor_template_type` WRITE;
/*!40000 ALTER TABLE `master_donor_template_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_donor_template_type` ENABLE KEYS */;
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
  `IS_SUBSIDY_LEDGER` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`LEDGER_ID`),
  UNIQUE KEY `LEDGER_NAME` (`LEDGER_NAME`) USING HASH,
  KEY `FK_master_bank_account_id` (`BANK_ACCOUNT_ID`),
  KEY `UNQ_LEDGER` (`LEDGER_NAME`) USING BTREE,
  KEY `FK_master_ledger_group_id` (`GROUP_ID`),
  CONSTRAINT `FK_master_ledger_group_id` FOREIGN KEY (`GROUP_ID`) REFERENCES `master_ledger_group` (`GROUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1721 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_ledger`
--

LOCK TABLES `master_ledger` WRITE;
/*!40000 ALTER TABLE `master_ledger` DISABLE KEYS */;
INSERT INTO `master_ledger` VALUES (1,'CS911','Cash',13,'GN','GN',0,0,0,'',0,1,0,2,0,0,0,0,0,0,0),(2,'FD912','Fixed Deposit',14,'GN','FD',0,0,0,'',0,2,0,2,0,0,0,0,0,0,0),(3,'CF913','Capital Fund',21,'GN','GN',0,0,0,'',0,3,0,2,0,0,0,0,0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_ledger_group`
--

LOCK TABLES `master_ledger_group` WRITE;
/*!40000 ALTER TABLE `master_ledger_group` DISABLE KEYS */;
INSERT INTO `master_ledger_group` VALUES (1,'01','Incomes',1,1,1,0,2,0),(2,'02','Expenses',2,2,2,0,2,0),(3,'03','Assets',3,3,3,0,2,0),(4,'04','Liabilities',4,4,4,0,2,0),(5,'05','Direct Incomes',1,1,1,0,0,0),(6,'06','Indirect Incomes',1,1,1,0,0,0),(7,'07','Sales Accounts',1,1,1,0,0,0),(8,'08','Direct Expenses',2,2,2,0,0,0),(9,'09','Indirect Expenses',2,2,2,0,0,0),(10,'10','Purchase Accounts',2,2,2,0,0,0),(11,'18','Current Assets',3,3,3,0,2,0),(12,'101','Bank Accounts',11,3,11,0,2,0),(13,'100','Cash-in-hand',11,3,11,0,2,0),(14,'102','Fixed Deposits',11,3,11,0,2,0),(15,'16','Loans and Advances (Asset)',11,3,11,0,0,0),(16,'14','Stock-in-hand',11,3,11,0,0,0),(17,'15','Sundry Debtors',11,3,11,0,0,0),(18,'11','Fixed Assets',3,3,3,0,0,0),(19,'12','Investments',3,3,3,0,0,0),(20,'13','Misc. Expenses (Asset)',3,3,3,0,0,0),(21,'21','Capital Fund',4,4,4,0,2,0),(22,'22','Reserves and Surplus (Fixed Assets)',4,4,4,0,0,0),(23,'27','Current Liabilities',4,4,4,0,0,0),(24,'24','Duties & Taxes',23,4,23,0,0,0),(25,'25','Provisions',23,4,23,0,0,0),(26,'26','Sundry Creditors',23,4,23,0,0,0),(27,'23','Loans and Advances (Liability)',4,4,4,0,0,0),(28,'28','Bank OD A/c',27,4,27,0,0,0),(29,'29','Secured Loans',27,4,27,0,0,0),(30,'30','Unsecured Loans',27,4,27,0,0,0),(31,'31','Suspense A/c',4,4,4,0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_project`
--

LOCK TABLES `master_project` WRITE;
/*!40000 ALTER TABLE `master_project` DISABLE KEYS */;
INSERT INTO `master_project` VALUES (1,'01','Local House',1,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(2,'02','College Local',1,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(3,'F3','Project Account',2,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(4,'F0','Foreign-house',2,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(5,'F1','College Foreign',2,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(6,'F2','Main Account',2,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(7,'06','School Fee Account',1,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(8,'07','Bus Fee Account',1,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(9,'08','Computer Fee Account',1,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(10,'02','House',1,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(11,'03','Parish',1,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(12,'05','Savio Kinder Garten',1,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(13,'04','School - Books and Statio',1,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(14,'16','SKILL TRAINING PROGRAMME - MORD PROJ - LOCAL',1,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(15,'10','CFCA - KOTHAGUDEM - POOR CHILDREN MAINTENANCE',1,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(16,'12','Vocational Training Centre',1,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(17,'13','Don Bosco Navajeevan HLK',1,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(18,'11','Farm A/c',1,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(19,'14','Construction Sub A/c',1,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(20,'15','BSK Navajeevan Construction',1,'2003-04-01 00:00:00','2008-06-05 00:00:00',NULL,'',NULL,1,0,0,0),(21,'01','School',1,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(22,'09','Church Construction',2,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'',NULL,1,0,0,0),(23,'Cool','Foreign',2,'2003-04-01 00:00:00','2016-04-01 00:00:00',NULL,'cool drinks, snacks and sweets',NULL,1,0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_project_catogory`
--

LOCK TABLES `master_project_catogory` WRITE;
/*!40000 ALTER TABLE `master_project_catogory` DISABLE KEYS */;
INSERT INTO `master_project_catogory` VALUES (1,'Primary');
/*!40000 ALTER TABLE `master_project_catogory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_report_setting`
--

DROP TABLE IF EXISTS `master_report_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_report_setting` (
  `REPORT_ID` varchar(10) NOT NULL DEFAULT '',
  `SETTING_NAME` varchar(100) NOT NULL DEFAULT '',
  `VALUE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`REPORT_ID`,`SETTING_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_report_setting`
--

LOCK TABLES `master_report_setting` WRITE;
/*!40000 ALTER TABLE `master_report_setting` DISABLE KEYS */;
INSERT INTO `master_report_setting` VALUES ('RPT-024','VoucherPrintCaptionBold','0'),('RPT-024','VoucherPrintSign1Row1','Prepared By'),('RPT-024','VoucherPrintSign1Row2','(Accountant)'),('RPT-024','VoucherPrintSign2Row1','Approved By'),('RPT-024','VoucherPrintSign2Row2','(Authorised  Person)'),('RPT-024','VoucherPrintSign3Row1','(Affix Revenue Stamp)'),('RPT-024','VoucherPrintSign3Row2','Payee\'s Signature'),('RPT-024','VoucherPrintValueBold','0'),('RPT-025','VoucherPrintCaptionBold','0'),('RPT-025','VoucherPrintSign1Row1','Prepared By'),('RPT-025','VoucherPrintSign1Row2','(Accountant)'),('RPT-025','VoucherPrintSign2Row1','Approved By'),('RPT-025','VoucherPrintSign2Row2','(Authorised  Person)'),('RPT-025','VoucherPrintSign3Row1','(Affix Revenue Stamp)'),('RPT-025','VoucherPrintSign3Row2','Receiver\'s Signature'),('RPT-025','VoucherPrintValueBold','0'),('RPT-026','VoucherPrintCaptionBold','0'),('RPT-026','VoucherPrintSign1Row1','Prepared By'),('RPT-026','VoucherPrintSign1Row2','(Accountant)'),('RPT-026','VoucherPrintSign2Row1','Approved By'),('RPT-026','VoucherPrintSign2Row2','(Authorised  Person)'),('RPT-026','VoucherPrintSign3Row1',''),('RPT-026','VoucherPrintSign3Row2',''),('RPT-026','VoucherPrintValueBold','0');
/*!40000 ALTER TABLE `master_report_setting` ENABLE KEYS */;
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
INSERT INTO `master_setting` VALUES ('AccountLedgerId','',1),('AppealSubject','',1),('BirthdaySubject','',1),('Country','1',1),('CreditBalance','',1),('Currency','à¤°',1),('CurrencyCode','',1),('CurrencyCodePosition','',1),('CurrencyNegativePattern','14',1),('CurrencyNegativeSign','( )',1),('CurrencyPosition','Before',1),('CurrencyPositivePattern','2',1),('CustomizationForm','0',1),('DecimalPlaces','2',1),('DecimalSeparator','.',1),('DepreciationLedgerId','',1),('DigitGrouping','3,2,2',1),('DisposalLedgerId','',1),('EnableBookingAtPayment','',1),('EnableTransMode','',1),('GroupingSeparator',',',1),('HighNaturedAmt','',1),('Location','DBC-YLG',1),('Months','',1),('Port','',1),('PrintVoucher','0',1),('SenderId','',1),('ServerName','',1),('ShowAMCRenewalAlert','',1),('ShowInsuranceAlert','',1),('SMSPassKey','',1),('SMSUserName','',1),('SMTPPassword','',1),('SMTPUsername','',1),('TDSBooking','',1),('TDSEnabled','0',1),('ThanksGivingSubject','',1),('TransEntryMethod','',1),('UIDateFormat','dd/MM/yyyy',1),('UIDateSeparator','/',1),('UIDonationVoucherPrint','',1),('UIEnableBookingAtPayment','',1),('UIFilterMode','',1),('UIForeignBankAccount','',1),('UILanguage','en-US',1),('UIProjSelection','1',1),('UITDSEnabled','',1),('UIThemes','Office 2010 Silver',1),('UITransClose','1',1),('UITransMode','',1),('UITransType','',1),('WeddingdaySubject','',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_state`
--

LOCK TABLES `master_state` WRITE;
/*!40000 ALTER TABLE `master_state` DISABLE KEYS */;
INSERT INTO `master_state` VALUES (71,'Tamil Nadu',NULL);
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
INSERT INTO `process_type` VALUES (0,'Salary'),(1,'PF Contribution'),(2,'ESI Contribution'),(3,'Deductions'),(0,'Salary'),(1,'PF Contribution'),(2,'ESI Contribution'),(3,'Deductions'),(0,'Salary'),(0,'Salary'),(1,'PF Contribution'),(1,'PF Contribution'),(2,'ESI Contribution'),(2,'ESI Contribution'),(3,'Deductions'),(3,'Deductions'),(0,'Salary'),(1,'PF Contribution'),(2,'ESI Contribution'),(3,'Deductions');
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
-- Table structure for table `project_category_ledger`
--

DROP TABLE IF EXISTS `project_category_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_category_ledger` (
  `PROJECT_CATEGORY_LEDGER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PROJECT_CATEGORY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`PROJECT_CATEGORY_LEDGER_ID`,`PROJECT_CATEGORY_ID`,`LEDGER_ID`),
  KEY `FK_project_category_ledger_1` (`PROJECT_CATEGORY_ID`),
  KEY `FK_project_category_ledger_2` (`LEDGER_ID`),
  CONSTRAINT `FK_project_category_ledger_1` FOREIGN KEY (`PROJECT_CATEGORY_ID`) REFERENCES `master_project_catogory` (`PROJECT_CATOGORY_ID`),
  CONSTRAINT `FK_project_category_ledger_2` FOREIGN KEY (`LEDGER_ID`) REFERENCES `master_ledger` (`LEDGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_category_ledger`
--

LOCK TABLES `project_category_ledger` WRITE;
/*!40000 ALTER TABLE `project_category_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_category_ledger` ENABLE KEYS */;
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
  CONSTRAINT `FK_project_id_MASTER_PROJECT` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`),
  CONSTRAINT `FK_project_ledger_LEDGER_ID` FOREIGN KEY (`LEDGER_ID`) REFERENCES `master_ledger` (`LEDGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_ledger`
--

LOCK TABLES `project_ledger` WRITE;
/*!40000 ALTER TABLE `project_ledger` DISABLE KEYS */;
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
  CONSTRAINT `FK_MASTER_VOUCHER_VOUCHER_ID` FOREIGN KEY (`VOUCHER_ID`) REFERENCES `master_voucher` (`VOUCHER_ID`),
  CONSTRAINT `FK_project_voucher_PROJECT_ID` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_voucher`
--

LOCK TABLES `project_voucher` WRITE;
/*!40000 ALTER TABLE `project_voucher` DISABLE KEYS */;
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
  `THIRD_PARTY_ID` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`STAFFID`),
  UNIQUE KEY `UNI_EMPNO` (`EMPNO`),
  KEY `UNQ_THIRD_PARTY_ID` (`THIRD_PARTY_ID`)
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
-- Table structure for table `stock_category`
--

DROP TABLE IF EXISTS `stock_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_category` (
  `CATEGORY_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CATEGORY_NAME` varchar(50) NOT NULL DEFAULT '',
  `PARENT_CATEGORY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_category`
--

LOCK TABLES `stock_category` WRITE;
/*!40000 ALTER TABLE `stock_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_group`
--

DROP TABLE IF EXISTS `stock_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_group` (
  `GROUP_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `GROUP_NAME` varchar(50) NOT NULL DEFAULT '',
  `PARENT_GROUP_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`GROUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_group`
--

LOCK TABLES `stock_group` WRITE;
/*!40000 ALTER TABLE `stock_group` DISABLE KEYS */;
INSERT INTO `stock_group` VALUES (1,'Primary',1);
/*!40000 ALTER TABLE `stock_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_item`
--

DROP TABLE IF EXISTS `stock_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_item` (
  `ITEM_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `GROUP_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CATEGORY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `UNIT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `QUANTITY` decimal(10,0) NOT NULL DEFAULT '0',
  `RATE` decimal(10,0) NOT NULL DEFAULT '0',
  `REORDER` int(10) unsigned NOT NULL DEFAULT '0',
  `VALUE` decimal(10,0) NOT NULL DEFAULT '0',
  `NAME` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ITEM_ID`),
  KEY `FK_stock_item_1` (`GROUP_ID`),
  KEY `FK_stock_item_CATEGORY_ID` (`CATEGORY_ID`),
  CONSTRAINT `FK_stock_item_CATEGORY_ID` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `stock_category` (`CATEGORY_ID`),
  CONSTRAINT `FK_stock_item_GROUP_ID` FOREIGN KEY (`GROUP_ID`) REFERENCES `stock_group` (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_item`
--

LOCK TABLES `stock_item` WRITE;
/*!40000 ALTER TABLE `stock_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_item_details`
--

DROP TABLE IF EXISTS `stock_item_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_item_details` (
  `ITEM_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `QUANTITY` int(10) unsigned NOT NULL DEFAULT '0',
  `UNIT_PRICE` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ITEM_ID`,`DATE`,`LOCATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_item_details`
--

LOCK TABLES `stock_item_details` WRITE;
/*!40000 ALTER TABLE `stock_item_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_item_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_item_transfer`
--

DROP TABLE IF EXISTS `stock_item_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_item_transfer` (
  `TRANSFER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TRANSFER_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ITEM_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `QUANTITY` int(11) NOT NULL DEFAULT '0',
  `FROM_LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TO_LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `EDIT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`TRANSFER_ID`),
  KEY `FK_stock_item_transfer_PROJECT_ID` (`PROJECT_ID`),
  CONSTRAINT `FK_stock_item_transfer_PROJECT_ID` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_item_transfer`
--

LOCK TABLES `stock_item_transfer` WRITE;
/*!40000 ALTER TABLE `stock_item_transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_item_transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_ledger`
--

DROP TABLE IF EXISTS `stock_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_ledger` (
  `NAME` varchar(50) NOT NULL DEFAULT '',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_ledger`
--

LOCK TABLES `stock_ledger` WRITE;
/*!40000 ALTER TABLE `stock_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_location`
--

DROP TABLE IF EXISTS `stock_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_location` (
  `LOCATION_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL DEFAULT '',
  `ADDRESS` varchar(100) DEFAULT NULL,
  `LOCATION_TYPE` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`LOCATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_location`
--

LOCK TABLES `stock_location` WRITE;
/*!40000 ALTER TABLE `stock_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_master_purchase`
--

DROP TABLE IF EXISTS `stock_master_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_master_purchase` (
  `PURCHASE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PURCHASE_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `VOUCHER_NO` varchar(10) NOT NULL DEFAULT '',
  `PURCHASE_ORDER_NO` varchar(10) NOT NULL DEFAULT '',
  `VENDOR_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DISCOUNT_PER` decimal(15,2) DEFAULT NULL,
  `DISCOUNT` decimal(15,2) DEFAULT NULL,
  `OTHER_CHARGES` decimal(15,2) DEFAULT NULL,
  `TAX` decimal(15,2) DEFAULT NULL,
  `TAX_AMOUNT` decimal(15,2) DEFAULT NULL,
  `NET_PAY` decimal(15,2) NOT NULL DEFAULT '0.00',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Cash bank ledger ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œ MASTER_LEDGER',
  `TRANS_TYPE` int(10) unsigned NOT NULL DEFAULT '0',
  `NAME_ADDRESS` varchar(500) NOT NULL DEFAULT '',
  `NARRATION` varchar(500) DEFAULT NULL,
  `VOUCHER_ID` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  PRIMARY KEY (`PURCHASE_ID`),
  KEY `FK_asset_stock_vendor` (`VENDOR_ID`),
  CONSTRAINT `FK_asset_stock_vendor` FOREIGN KEY (`VENDOR_ID`) REFERENCES `asset_stock_vendor` (`VENDOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_master_purchase`
--

LOCK TABLES `stock_master_purchase` WRITE;
/*!40000 ALTER TABLE `stock_master_purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_master_purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_master_purchase_returns`
--

DROP TABLE IF EXISTS `stock_master_purchase_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_master_purchase_returns` (
  `RETURN_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RETURN_TYPE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-INWARD,1-OUTWARD',
  `REASON` varchar(500) NOT NULL DEFAULT '',
  `RETURN_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NET_PAY` decimal(15,2) NOT NULL DEFAULT '0.00',
  `VOUCHER_ID` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  PRIMARY KEY (`RETURN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_master_purchase_returns`
--

LOCK TABLES `stock_master_purchase_returns` WRITE;
/*!40000 ALTER TABLE `stock_master_purchase_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_master_purchase_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_master_sold_utilized`
--

DROP TABLE IF EXISTS `stock_master_sold_utilized`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_master_sold_utilized` (
  `SALES_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SALES_REF_NO` varchar(10) NOT NULL DEFAULT '',
  `CUSTOMER_NAME` varchar(100) NOT NULL DEFAULT '',
  `SALES_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DISCOUNT_PER` decimal(15,2) DEFAULT NULL,
  `DISCOUNT` decimal(16,2) DEFAULT NULL,
  `OTHER_CHARGES` decimal(16,2) DEFAULT NULL,
  `TAX` decimal(16,2) DEFAULT NULL,
  `NET_PAY` decimal(16,2) NOT NULL DEFAULT '0.00',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NAME_ADDRESS` varchar(500) NOT NULL DEFAULT '',
  `NARRATION` varchar(500) DEFAULT NULL,
  `TRANS_TYPE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-SOLD,1-UTILIZED,2-DISPOSAL',
  `VOUCHER_NO` varchar(45) NOT NULL DEFAULT '',
  `TAX_AMOUNT` decimal(16,2) DEFAULT NULL,
  `VOUCHER_ID` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  PRIMARY KEY (`SALES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_master_sold_utilized`
--

LOCK TABLES `stock_master_sold_utilized` WRITE;
/*!40000 ALTER TABLE `stock_master_sold_utilized` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_master_sold_utilized` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_purchase_details`
--

DROP TABLE IF EXISTS `stock_purchase_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_purchase_details` (
  `PURCHASE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ITEM_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `UNIT_PRICE` decimal(15,2) NOT NULL DEFAULT '0.00',
  `QUANTITY` int(10) unsigned NOT NULL DEFAULT '0',
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ACCOUNT_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `FK_stock_item` (`ITEM_ID`) USING BTREE,
  KEY `FK_stock_master_purchase` (`PURCHASE_ID`),
  CONSTRAINT `FK_stock_master_purchase` FOREIGN KEY (`PURCHASE_ID`) REFERENCES `stock_master_purchase` (`PURCHASE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_purchase_details`
--

LOCK TABLES `stock_purchase_details` WRITE;
/*!40000 ALTER TABLE `stock_purchase_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_purchase_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_purchase_returns_details`
--

DROP TABLE IF EXISTS `stock_purchase_returns_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_purchase_returns_details` (
  `RETURN_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ITEM_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `UNIT_PRICE` decimal(15,2) NOT NULL DEFAULT '0.00',
  `QUANTITY` int(10) unsigned NOT NULL DEFAULT '0',
  `LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VENDOR_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TOTAL_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ACCOUNT_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `FK_stock_item` (`ITEM_ID`),
  KEY `FK_stock_master_purchase_return` (`RETURN_ID`),
  CONSTRAINT `FK_stock_item` FOREIGN KEY (`ITEM_ID`) REFERENCES `stock_item` (`ITEM_ID`),
  CONSTRAINT `FK_stock_master_purchase_return` FOREIGN KEY (`RETURN_ID`) REFERENCES `stock_master_purchase_returns` (`RETURN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_purchase_returns_details`
--

LOCK TABLES `stock_purchase_returns_details` WRITE;
/*!40000 ALTER TABLE `stock_purchase_returns_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_purchase_returns_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_sold_utilized_details`
--

DROP TABLE IF EXISTS `stock_sold_utilized_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_sold_utilized_details` (
  `SALES_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ITEM_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `QUANTITY` int(10) unsigned NOT NULL DEFAULT '0',
  `UNIT_PRICE` decimal(15,2) NOT NULL DEFAULT '0.00',
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ACCOUNT_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DISPOSAL_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `FK_stock_master_sold_utilized` (`SALES_ID`),
  CONSTRAINT `FK_stock_master_sold_utilized` FOREIGN KEY (`SALES_ID`) REFERENCES `stock_master_sold_utilized` (`SALES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_sold_utilized_details`
--

LOCK TABLES `stock_sold_utilized_details` WRITE;
/*!40000 ALTER TABLE `stock_sold_utilized_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_sold_utilized_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_unitofmeasure`
--

DROP TABLE IF EXISTS `stock_unitofmeasure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_unitofmeasure` (
  `UNIT_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(20) NOT NULL DEFAULT '0',
  `SYMBOL` varchar(20) NOT NULL DEFAULT '',
  `NAME` varchar(50) NOT NULL DEFAULT '',
  `DECIMAL_PLACE` int(11) NOT NULL DEFAULT '0',
  `CONVERSION_OF` int(10) unsigned NOT NULL DEFAULT '0',
  `FIRST_UNIT_ID` varchar(20) NOT NULL DEFAULT '0',
  `SECOND_UNIT_ID` varchar(20) NOT NULL DEFAULT '0',
  `UNITTYPE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`UNIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_unitofmeasure`
--

LOCK TABLES `stock_unitofmeasure` WRITE;
/*!40000 ALTER TABLE `stock_unitofmeasure` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_unitofmeasure` ENABLE KEYS */;
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
-- Table structure for table `tds_booking_payment`
--

DROP TABLE IF EXISTS `tds_booking_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tds_booking_payment` (
  `PAYMENT_VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TDS_VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_booking_payment`
--

LOCK TABLES `tds_booking_payment` WRITE;
/*!40000 ALTER TABLE `tds_booking_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tds_booking_payment` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=41170 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=204486 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_tax_rate`
--

LOCK TABLES `tds_tax_rate` WRITE;
/*!40000 ALTER TABLE `tds_tax_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `tds_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tds_temp`
--

DROP TABLE IF EXISTS `tds_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tds_temp` (
  `Voucher_No` varchar(40) NOT NULL DEFAULT '',
  `Date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TDS_Ledger` varchar(45) NOT NULL DEFAULT '',
  `Nature_of_Payments` varchar(45) NOT NULL DEFAULT '',
  `Party_Name` varchar(45) NOT NULL DEFAULT '',
  `Balance` double NOT NULL DEFAULT '0',
  `Trans_Flag` varchar(45) NOT NULL DEFAULT '',
  `Assess_Value` double NOT NULL DEFAULT '0',
  `TDS_Balance` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_temp`
--

LOCK TABLES `tds_temp` WRITE;
/*!40000 ALTER TABLE `tds_temp` DISABLE KEYS */;
INSERT INTO `tds_temp` VALUES ('J003','2014-06-03 00:00:00','TDS Contructor','Payments to Contributors','Gio Tech',750,'CR',75000,750),('J002','2014-06-02 00:00:00','TDS Contructor','Payments to Contributors','Gio Tech',750,'CR',75000,750),('J002','2014-06-02 00:00:00','TDS Contructor','Payments to Accounts','Gio Tech',1200,'CR',5000,500),('J002','2014-06-03 00:00:00','TDS Contructor','Payments to Contributors','Gio Tech',12500,'CR',75000,750),('J004','2014-06-03 00:00:00','TDS Contructor','Payments to Accounts','Gio Tech',1000,'CR',75000,750),('J003','2014-06-03 00:00:00','TDS Contructor','Payments to Contributors','Gio Tech',750,'CR',75000,750),('J003','2014-06-03 00:00:00','TDS Contructor','Payments to Contributors','Gio Tech',750,'CR',75000,750);
/*!40000 ALTER TABLE `tds_temp` ENABLE KEYS */;
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
-- Table structure for table `uom`
--

DROP TABLE IF EXISTS `uom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uom` (
  `UOM_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TYPE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0- Simple, 1- Compound',
  `SYMBOL` varchar(30) NOT NULL DEFAULT '',
  `NAME` varchar(50) NOT NULL DEFAULT '',
  `FIRST_UOM_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SECOND_UOM_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CONVERSION_OF` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`UOM_ID`),
  UNIQUE KEY `SYMBOL` (`SYMBOL`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uom`
--

LOCK TABLES `uom` WRITE;
/*!40000 ALTER TABLE `uom` DISABLE KEYS */;
INSERT INTO `uom` VALUES (1,0,'Nos','Numbers',0,0,'0'),(3,0,'doz','Dozen',0,0,'');
/*!40000 ALTER TABLE `uom` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'Admin','Admin','admin','1uHL2oMM9bq8iOYovzJfbQ==','Admin',0,NULL,NULL,NULL,NULL,1,1,'','0000-00-00 00:00:00','','0000-00-00 00:00:00',NULL);
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
-- Table structure for table `users1`
--

DROP TABLE IF EXISTS `users1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users1` (
  `usr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usr_code` varchar(70) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `stat` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users1`
--

LOCK TABLES `users1` WRITE;
/*!40000 ALTER TABLE `users1` DISABLE KEYS */;
INSERT INTO `users1` VALUES (1,'admin','admin',1);
/*!40000 ALTER TABLE `users1` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3426 DEFAULT CHARSET=utf8;
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

-- Dump completed on 2016-09-28 12:59:20

