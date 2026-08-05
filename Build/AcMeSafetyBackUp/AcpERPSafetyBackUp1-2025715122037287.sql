-- AcmeerpêboscosêbosaakêPrimaryê69
-- MySQL dump 10.13  Distrib 5.6.10, for Win32 (x86)
--
-- Host: localhost    Database: acperp
-- ------------------------------------------------------
-- Server version	5.6.10

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounting_year`
--

LOCK TABLES `accounting_year` WRITE;
/*!40000 ALTER TABLE `accounting_year` DISABLE KEYS */;
INSERT INTO `accounting_year` VALUES (1,'2019-04-01 00:00:00','2020-03-31 00:00:00','2019-04-01 00:00:00',0,1),(9,'2020-04-01 00:00:00','2021-03-31 00:00:00',NULL,0,0),(10,'2021-04-01 00:00:00','2022-03-31 00:00:00',NULL,1,0);
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
  PRIMARY KEY (`ACTIVITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitiy_rights`
--

LOCK TABLES `activitiy_rights` WRITE;
/*!40000 ALTER TABLE `activitiy_rights` DISABLE KEYS */;
INSERT INTO `activitiy_rights` VALUES (2,205,'Settings','MasterSetting','Settings','Master Settings'),(3,2,'UI Settings','UISettings','Settings','Master Settings'),(4,2,'Global Settings','GlobalSettings','Settings','Master Settings'),(5,89,'Map Accounts','AccountMapping','Settings','Account Mapping'),(6,5,'Map Project','MapProject','Settings','Account Mapping'),(7,5,'Map Ledger','MapLedger','Settings','Account Mapping'),(8,5,'Map Cost Centre','MapCostCentre','Settings','Account Mapping'),(9,5,'Map Donor','MapDonor','Settings','Account Mapping'),(10,5,'Map Vouchers','MapVouchers','Settings','Account Mapping'),(11,205,'Transaction Period','TransactionPeriod','Settings','Transaction Period'),(12,11,'Create Transaction','CreateTransaction','Settings','Transaction Period'),(13,11,'Edit Transaction','EditTransaction','Settings','Transaction Period'),(14,11,'Delete Transaction','DeleteTransaction','Settings','Transaction Period'),(15,11,'Print Transaction','PrintTransaction','Settings','Transaction Period'),(16,272,'Legal Entity','LegalEntity','TDS','TDS'),(17,16,'Create Legal Entity','CreateLegalEntity','TDS','TDS'),(18,16,'Edit Legal Entity','EditLegalEntity','TDS','TDS'),(19,16,'Delete Legal Entity','DeleteLegalEntity','TDS','TDS'),(20,16,'Print Legal Entity','PrintLegalEntity','TDS','TDS'),(22,89,'Project Category','ProjectCategory','Masters','Project Category'),(23,22,'Create Project Category','CreateProjectCategory','Masters','Project Category'),(24,22,'Edit Project Category','EditProjectCategory','Masters','Project Category'),(25,22,'Delete Project Category','DeleteProjectCategory','Masters','Project Category'),(26,22,'Print Project Category','PrintProjectCategory','Masters','Project Category'),(27,89,'Project','Project','Masters','Project'),(28,27,'Create Project','CreateProject','Masters','Project'),(29,27,'Edit Project','EditProject','Masters','Project'),(30,27,'Delete Project','DeleteProject','Masters','Project'),(31,27,'Print Project','PrintProject','Masters','Project'),(32,89,'Ledger Group','LedgerGroup','Masters','Ledger Group'),(33,32,'Create Ledger Group','CreateLedgerGroup','Masters','Ledger Group'),(34,32,'Edit Ledger Group','EditLedgerGroup','Masters','Ledger Group'),(35,32,'Delete Ledger Group','DeleteLedgerGroup','Masters','Ledger Group'),(36,32,'Print Ledger Group','PrintLedgerGroup','Masters','Ledger Group'),(37,89,'Ledger','Ledger','Masters','Ledger'),(38,37,'Create Ledger','CreateLedger','Masters','Ledger'),(39,37,'Edit Ledger','EditLedger','Masters','Ledger'),(40,37,'Delete Ledger','DeleteLedger','Masters','Ledger'),(41,37,'Print Ledger','PrintLedger','Masters','Ledger'),(42,89,'Bank Accounts','BankAccounts','Masters','Bank Accounts'),(43,42,'Create Bank Account','CreateBankAccount','Masters','Bank Accounts'),(44,42,'Edit Bank Account','EditBankAccount','Masters','Bank Accounts'),(45,42,'Delete Bank Account','DeleteBankAccount','Masters','Bank Accounts'),(46,42,'Print Bank Account','PrintBankAccount','Masters','Bank Accounts'),(47,89,'Voucher Number Definition','VoucherNumberDefinition','Masters','Voucher Number Definition'),(48,47,'Create Voucher ','CreateVoucher','Masters','Voucher Number Definition'),(49,47,'Edit Voucher','EditVoucher','Masters','Voucher Number Definition'),(50,47,'Delete Voucher','DeleteVoucher','Masters','Voucher Number Definition'),(51,47,'Print Voucher','PrintVoucher','Masters','Voucher Number Definition'),(52,89,'Cost Centre','CostCentre','Masters','Cost Centre'),(53,52,'Create Cost Centre','CreateCostCentre','Masters','Cost Centre'),(54,52,'Edit Cost Centre','EditCostCentre','Masters','Cost Centre'),(55,52,'Delete Cost Centre','DeleteCostCentre','Masters','Cost Centre'),(56,52,'Print Cost Centre','PrintCostCentre','Masters','Cost Centre'),(57,89,'Bank','Bank','Masters','Bank '),(58,57,'Create Bank','CreateBank','Masters','Bank '),(59,57,'Edit Bank','EditBank','Masters','Bank '),(60,57,'Delete Bank','DeleteBank','Masters','Bank '),(61,57,'Print Bank','PrintBank','Masters','Bank '),(62,89,'Country','Country','Masters','Country'),(63,62,'Create Country','CreateCountry','Masters','Country'),(64,62,'Edit Country','EditCountry','Masters','Country'),(65,62,'Delete Country','DeleteCountry','Masters','Country'),(66,62,'Print Country','PrintCountry','Masters','Country'),(67,272,'Audit Info','Audit Info','TDS','TDS'),(68,67,'Create Audit Info','CreateAuditInfo','TDS','TDS'),(69,67,'Edit Audit Info','EditAuditInfo','TDS','TDS'),(70,67,'Delete Audit Info','DeleteAuditInfo','TDS','TDS'),(71,67,'Print Audit Info','PrintAuditInfo','TDS','TDS'),(72,272,'Governing Bodies','GoverningMembers','TDS','TDS'),(73,72,'Create Governing Bodies','CreateGoverningMember','TDS','TDS'),(74,72,'Edit Governing Bodies','EditGoverningMember','TDS','TDS'),(75,72,'Delete Governing Bodies','DeleteGoverningMember','TDS','TDS'),(76,72,'Print Governing Bodies','PrintGoverningMember','TDS','TDS'),(77,272,'Auditor','Auditor','TDS','TDS'),(78,77,'Create Auditor','CreateAuditor','TDS','TDS'),(79,77,'Edit Auditor','EditAuditor','TDS','TDS'),(80,77,'Delete Auditor','DeleteAuditor','TDS','TDS'),(81,77,'Print Auditor','PrintAuditor','TDS','TDS'),(82,89,'Donor','Donor','Masters','Donor'),(83,82,'Create Donor','CreateDonor','Masters','Donor'),(84,82,'Edit Donor','EditDonor','Masters','Donor'),(85,82,'Delete Donor','DeleteDonor','Masters','Donor'),(86,82,'Print Donor','PrintDonor','Masters','Donor'),(87,89,'Purpose','Purpose','Masters','Purpose'),(88,87,'Print Purpose','PrintPurpose','Masters','Purpose'),(89,0,'Finance','Finance','Finance','Finance'),(90,89,'Receipt','Receipt','Finance','Receipt'),(91,90,'Create Receipt Voucher','CreateReceiptVoucher','Finance','Receipt'),(92,90,'Edit Receipt Voucher','EditReceiptVoucher','Finance','Receipt'),(93,90,'Delete Receipt Voucher','DeleteReceiptVoucher','Finance','Receipt'),(94,90,'View Receipt Voucher','ViewReceiptVoucher','Finance','Receipt'),(95,90,'Print Receipt Voucher','PrintReceiptVoucher','Finance','Receipt'),(97,89,'Payments','Payments','Finance','Payments'),(98,97,'Create Payment Voucher','CreatePaymentVoucher','Finance','Payments'),(99,97,'Edit Payment Voucher','EditPaymentVoucher','Finance','Payments'),(100,97,'Delete Payment Voucher','DeletePaymentVoucher','Finance','Payments'),(101,97,'Move Payment Voucher','MovePaymentVoucher','Finance','Payments'),(102,97,'Print Payment Voucher','PrintPaymentVoucher','Finance','Payments'),(103,89,'Contra','Contra','Finance','Contra'),(104,103,'Create Contra Voucher','CreateContraVoucher','Finance','Contra'),(105,103,'Edit Contra Voucher','EditContraVoucher','Finance','Contra'),(106,103,'Delete Contra Voucher','DeleteContraVoucher','Finance','Contra'),(107,103,'Move Contra Voucher','MoveContraVoucher','Finance','Contra'),(108,103,'Print Contra Voucher','PrintContraVoucher','Finance','Contra'),(109,90,'Move Receipt  Voucher','MoveReceiptVoucher','Finance','Receipt'),(110,89,'Journal','Journal','Finance','Journal'),(111,110,'Create Journal Voucher','CreateJournalVoucher','Finance','Journal'),(112,110,'Edit Journal Voucher','EditJournalVoucher','Finance','Journal'),(113,110,'Delete Journal Voucher','DeleteJournalVoucher','Finance','Journal'),(114,110,'Print Journal Voucher','PrintJournalVoucher','Finance','Journal'),(115,89,'Bank Reconciliation','BankReconciliation','Finance','Bank Reconciliation'),(116,115,'Print Bank Reconciliation','PrintBankReconciliation','Finance','Bank Reconciliation'),(117,115,'Bank Reconciled','BankReconciled','Finance','Bank Reconciliation'),(118,115,'Bank UnReconcilied','BankUnReconcilied','Finance','Bank Reconciliation'),(119,115,'Bank Cleared','BankCleared','Finance','Bank Reconciliation'),(120,115,'Bank UnCleared','BankUnCleared','Finance','Bank Reconciliation'),(121,89,'Budget Period','Budget','Finance','Budget Period'),(122,121,'Create Budget Period','CreateBudget','Finance','Budget Period'),(123,121,'Edit Budget Period','EditBudget','Finance','Budget Period'),(124,121,'Delete Budget Period','DeleteBudget','Finance','Budget Period'),(125,121,'Print Budget Period','PrintBudget','Finance','Budget Period'),(126,89,'Fixed Ledger','FixedDepositLedger','Finance','Fixed Ledger'),(127,126,'Create FD Ledger','CreateFDLedger','Finance','Fixed Ledger'),(128,126,'Edit FD Ledger','EditFDLedger','Finance','Fixed Ledger'),(129,126,'Delete FD Ledger','DeleteFDLedger','Finance','Fixed Ledger'),(130,126,'Print FD Ledger','PrintFDLedger','Finance','Fixed Ledger'),(131,89,'Fixed Deposit','FixedDeposit','Finance','Fixed Deposit'),(132,131,'Create Fixed Deposit','CreateFixedDeposit','Finance','Fixed Deposit'),(133,131,'Edit Fixed Deposit','EditFixedDeposit','Finance','Fixed Deposit'),(134,131,'Delete Fixed Deposit','DeleteFixedDeposit','Finance','Fixed Deposit'),(135,131,'Print Fixed Deposit','PrintFixedDeposit','Finance','Fixed Deposit'),(136,89,'Fixed Investment','FixedInvestment','Finance','Fixed Investment'),(137,136,'Create Fixed Investment','CreateFixedInvestment','Finance','Fixed Investment'),(138,136,'Edit Fixed Investment','EditFixedInvestment','Finance','Fixed Investment'),(139,136,'Delete Fixed Investment','DeleteFixedInvestment','Finance','Fixed Investment'),(140,136,'Print Fixed Investment','PrintFixedInvestment','Finance','Fixed Investment'),(141,89,'Fixed Deposit Renewal','FixedDepositRenewal','Finance','Fixed Deposit Renewal'),(142,141,'Renew Fixed Deposit','RenewFixedDeposit','Finance','Fixed Deposit Renewal'),(143,141,'Modify Fixed Deposit Renewal','ModifyFixedDepostRenewal','Finance','Fixed Deposit Renewal'),(144,141,'Delete Fixed Deposit Renewal','DeleteFixedDepositRenewal','Finance','Fixed Deposit Renewal'),(145,141,'Print Fixed Deposit Renewal','PrintFixedDepositRenewal','Finance','Fixed Deposit Renewal'),(146,89,'FD Withdrawal','FDWithdrawal','Finance','Fixed Deposit Withdraw'),(147,146,' Withdraw Fixed Deposit','WithdrawFixedDeposit','Finance','Fixed Deposit Withdraw'),(148,146,'Print Fixed Deposit Withdraw','PrintFixedDepositWithdraw','Finance','Fixed Deposit Withdraw'),(149,89,'Fixed Deposit Register','FixedDepositRegister','Finance','Fixed Deposit Register'),(150,149,'Print Fixed Deposit Register','PrintFixedDepositRegister','Finance','Fixed Deposit Register'),(152,205,'User','User','User Management','User '),(153,152,'Create User','CreateUser','User Management','User'),(154,152,'Edit User','EditUser','User Management','User'),(155,152,'Delete User','DeleteUser','User Management','User'),(156,152,'Print User','PrintUser','User Management','User'),(157,205,'User Role','UserRole','User Management','User Role'),(158,157,'Create User Role','CreateUserRole','User Management','User Role'),(159,157,'Edit User Role','EditUserRole','User Management','User Role'),(160,157,'Delete User Role','DeleteUserRole','User Management','User Role'),(161,157,'Print User Role','PrintUserRole','User Management','User Role'),(162,205,'User Rights','UserRightsManagement','User Management','User Rights'),(163,162,'Assign User Rights','AssignUserRights','User Management','User Rights'),(164,205,'Manage User Security','ManageSecurity','User Management','Manage Security'),(165,164,'Reset Password','ResetPassword','User Management','Manage Security'),(166,157,'View User Role','ViewUserRole','User Management','User Role'),(167,152,'View User','ViewUser','User Management','User'),(168,11,'View Transaction','ViewTransaction','Settings','Transaction Period'),(169,16,'View Legal Entity','ViewLedgalEntity','TDS','TDS'),(170,22,'View Project Category','ViewProjectCategory','Masters','Project Category'),(171,27,'View Project','ViewProject','Masters','Project'),(172,32,'View Ledger Group','ViewLedgerGroup','Masters','Ledger Group'),(173,37,'View Ledger','ViewLedger','Masters','Ledger'),(174,42,'View Bank Accounts','ViewBankAccounts','Masters','Bank Accounts'),(175,47,'View Voucher','ViewVoucher','Masters','Voucher Number Definition'),(176,52,'View Cost Cetre','ViewCostCentre','Masters','Cost Centre'),(177,57,'View Bank','ViewBank','Masters','Bank '),(178,62,'View Country','ViewCountry','Masters','Country'),(179,67,'View Audit Info','ViewAuditInfo','TDS','TDS'),(180,72,'View Governing Bodies','ViewGoverningMembers','TDS','TDS'),(181,77,'View Auditor','ViewAuditor','TDS','TDS'),(182,82,'View Donor','ViewDonor','Masters','Donor'),(183,87,'View Purpose','ViewPurpose','Masters','Purpose'),(184,97,'View Payment Voucher','ViewPaymentVoucher','Finance','Payments'),(185,103,'View Contra Voucher','ViewContraVoucher','Finance','Contra'),(186,110,'View Journal Voucher','ViewJournalVoucher','Finance','Journal'),(187,115,'View Bank Reconciliation','ViewBankReconciliation','Finance','Bank Reconciliation'),(188,121,'View Budget Period','ViewBudget','Finance','Budget Period'),(189,126,'View FD Ledger','ViewFDLedger','Finance','Fixed Ledger'),(190,131,'View Fixed Deposit','ViewFixedDeposit','Finance','Fixed Deposit'),(191,136,'View Fixed Investment','ViewFixedInvestment','Finance','Fixed Investment'),(192,141,'View Fixed Deposit Renewal','ViewFixedDepositRenewal','Finance','Fixed Deposit Renewal'),(193,146,'View Fixed Deposit Withdraw','ViewFixedDepositWithdraw','Finance','Fixed Deposit Withdraw'),(194,149,'View Fixed Deposit Register','ViewFixedDepositRegister','Finance','Fixed Deposit Register'),(195,164,'View Manage Security','ViewManageSecurity','User Management','Manage Security'),(196,0,'Reports','Reports','Reports','Reports'),(197,196,'Abstract','Abstract','Reports','Activities'),(198,196,'Bank Activities','BankActivities','Reports','Activities'),(199,196,'Book of Accounts','BookofAccounts','Reports','Activities'),(200,196,'Final Accounts','FinalAccounts','Reports','Activities'),(201,196,'Foregin Contribution','ForeginContribution','Reports','Activities'),(202,196,'Cost Centre','CostCentre','Reports','Activities'),(203,196,'Financial Records','FinancialRecords','Reports','Activities'),(204,196,'Budget','Budget','Reports','Activities'),(205,0,'Utilites','DataUtility','Data Utility','Data Utility'),(206,205,'Backup','Backup','Data Utility','Activities'),(207,205,'Restore','Restore','Data Utility','Activities'),(208,89,'Refresh Ledger Balance','RefreshBalance','Data Utility','Activities'),(209,89,'Regenarate Voucher Number','RegenarateVoucher','Data Utility','Activities'),(210,205,'Data Migration','DataMigration','Data Utility','Activities'),(211,205,'Data Export','DataExport','Data Utility','Activities'),(212,205,'Migration','MigrationMapping','Data Utility','Activities'),(213,89,'DashBoard','DashBoard','Finance','Dash Board'),(214,213,'View Receipt and Payments','ViewReceiptPayments','Finance','Dash Board'),(215,213,'Show FD Alert','ShowFDAlert','Finance','Dash Board'),(216,213,'Show Bank Reconciliation','ShowBankReconciliation','Finance','Dash Board'),(217,213,'Show Project Details','ShowProjectDetails','Finance','Dash Board'),(218,205,'Import Masters','ShowImportMasters','Data Utility','Activities'),(219,205,'Export Vouchers','ShowExportVouchers','Data Utility','Activities'),(220,205,'Map Ledgers','ShowMapLedgers','Data Utility','Activities'),(223,205,'Manage Multi Branch','ManageMultiBranch','Data Utility','Activities'),(224,205,'Sub Branch List','SubBranchList','Data Utility','Activities'),(225,205,'Export Master to Sub-Branch','ExportMastertoSubBranch','Data Utility','Activities'),(226,205,'Upload Sub-Branch Vouchers','UploadSubBranchVouchers','Data Utility','Activities'),(227,205,'License Key','LicenseKey','Data Utility','Activities'),(228,205,'Upload Database','UploadDatabase','Data Utility','Activities'),(229,205,'Portal Updates','PortalUpdates','Data Utility','Activities'),(230,89,'Audit Lock Type','AuditLockType','Masters','Audit Lock Type'),(231,230,'Create Lock Type','CreateLockType','Masters','Audit Lock Type'),(232,230,'Edit Lock Type','EditLockType','Masters','Audit Lock Type'),(233,230,'Delete Lock Type','DeleteLockType','Masters','Audit Lock Type'),(234,230,'Print Lock Type','PrintLockType','Masters','Audit Lock Type'),(235,89,'Audit Lock Trans','AuditLockTrans','Masters','Audit Lock Trans'),(236,235,'Create Lock Trans','CreateLockTrans','Masters','Audit Lock Trans'),(237,235,'Edit Lock Trans','EditLockTrans','Masters','Audit Lock Trans'),(238,235,'Delete Lock Trans','DeleteLockTrans','Masters','Audit Lock Trans'),(239,235,'Print Lock Trans','PrintLockTrans','Masters','Audit Lock Trans'),(240,230,'View Lock Type','ViewLockType','Masters','Audit Lock Type'),(241,235,'View Lock Trans','ViewLockTrans','Masters','Audit Lock Trans'),(242,89,'Budget Annual','BudgetAnnual','Finance','Budget Annual'),(243,242,'Create Budget Annual','CreateBudgetAnnual','Finance','Budget Annual'),(244,242,'Edit Budget Annual','EditBudgetAnnual','Finance','Budget Annual'),(245,242,'Delete Budget Annual','DeleteBudgetAnnual','Finance','Budget Annual'),(246,242,'Print Budget Annual','PrintBudgetAnnual','Finance','Budget Annual'),(247,242,'View Budget Annual','ViewBudgetAnnual','Finance','Budget Annual'),(254,89,'State','State','Masters','State'),(255,254,'Create State','CreateState','Masters','State'),(256,254,'Edit State','EditState','Masters','State'),(257,254,'Delete State','DeleteState','Masters','State'),(258,254,'Print State','PrintState','Masters','State'),(259,254,'View State','ViewState','Masters','State'),(260,89,'Cost Centre Category','CostCentreCategory','Masters','Cost Centre Category'),(261,260,'Create Cost Centre Category','CreateCostCentreCategory','Masters','Cost Centre Category'),(262,260,'Edit Cost Centre Category','EditCostCentreCategory','Masters','Cost Centre Category'),(263,260,'Delete Cost Centre Category','DeleteCostCentreCategory','Masters','Cost Centre Category'),(264,260,'Print Cost Centre Category','PrintCostCentreCategory','Masters','Cost Centre Category'),(265,260,'View Cost Centre Category','ViewCostCentreCategory','Masters','Cost Centre Category'),(266,90,'Insert Receipt Voucher','InsertReceiptVoucher','Finance','Receipt'),(267,97,'Insert Payment Voucher','InsertPaymentVoucher','Finance','Payment'),(268,103,'Insert Contra Voucher','InsertContraVoucher','Finance','Contra'),(269,90,'Show Nagative Balance','ShowReceiptNagativeBalance','Finance','Receipt'),(270,97,'Show Nagative Balance','ShowPaymentNagativeBalance','Finance','Payment'),(271,103,'Show Nagative Balance','ShowContraNagativeBalance','Finance','Contra'),(272,0,'Statutory','Statutory','TDS','TDS'),(273,272,'TDS Company Info','TDSCompanyInfo','TDS','TDS'),(274,272,'TDS Section','TDSSection','TDS','TDS'),(275,274,'Create TDS Section','CreateTDSSection','TDS','TDS'),(276,274,'Edit TDS Section','EditTDSSection','TDS','TDS'),(277,274,'Delete TDS Section','DeleteTDSSection','TDS','TDS'),(278,274,'Print TDS Section','PrintTDSSection','TDS ','TDS'),(279,274,'View TDS Section','ViewTDSSection','TDS','TDS'),(280,272,'Audit Type','AuditType','TDS','TDS'),(281,280,'Create Audit Type','CreateAuditType','TDS','TDS'),(282,280,'Edit Audit Type','EditAuditType','TDS','TDS'),(283,280,'Delete Audit Type','DeleteAuditType','TDS','TDS'),(284,280,'Print Audit Type','PrintAuditType','TDS','TDS'),(285,280,'View Audit Type','ViewAuditType','TDS','TDS'),(286,272,'TDS Nature of Payments','TDSNatureofPayments','TDS','TDS'),(287,286,'Create Nature of Payments','CreateNatureofPayments','TDS','TDS'),(288,286,'Edit Nature of Payments','EditNatureofPayments','TDS','TDS'),(289,286,'Delete Nature of Payments','DeleteNatureofPayments','TDS','TDS'),(290,286,'Print Nature of Payments','PrintNatureofPayments','TDS','TDS'),(291,286,'View Nature of Payments','ViewNatureofPayments','TDS','TDS'),(292,272,'TDS Deductee Type','TDSDeducteeType','TDS','TDS'),(293,292,'Create Deductee Type','CreateDeducteeType','TDS','TDS'),(294,292,'Edit Deductee Type','EditDeducteeType','TDS','TDS'),(295,292,'Delete DeducteeType','DeleteDeducteeType','TDS','TDS'),(296,292,'Print Deductee Type','PrintDeducteeType','TDS','TDS'),(297,292,'View Deductee Type','ViewDeducteeType','TDS','TDS'),(298,272,'TDS Policy','TDSPolicy','TDS','TDS'),(299,298,'Edit TDS Policy','EditTDSPolicy','TDS','TDS'),(300,298,'Delete TDS Policy','DeleteTDSPolicy','TDS','TDS'),(301,298,'View TDS Policy','ViewTDSPolicy','TDS','TDS'),(302,272,'TDS Ledger','TDSLedger','TDS','TDS'),(303,302,'Print TDS Ledger','PrintTDSLedger','TDS','TDS'),(304,302,'View TDS Ledger','ViewTDSLedger','TDS','TDS'),(305,272,'TDS Duty Tax','TDSDutyTax','TDS','TDS'),(306,305,'Edit Duty Tax','EditDutyTax','TDS','TDS'),(307,305,'Print Duty Tax','PrintDutyTax','TDS','TDS'),(308,305,'View Duty Tax','ViewDutyTax','TDS','TDS'),(309,272,'TDS Deduction','TDSDeduction','TDS','TDS'),(310,5,'Map FC Purpose','MapFCPurpose','Masters','Account Mapping'),(311,205,'Institute Info','InstituteInfo','Masters','Utilities'),(359,2,'Finnance Setting','FinanceSettings','Settings','Master Settings'),(360,2,'TDS Setting','TDSSetting','Settings','Master Settings'),(361,2,'Asset Setting','AssetSetting','Settings','Master Settings'),(362,89,'Delete Unused Ledgers','UnusedLedger','Data Utility','Activities'),(363,89,'Move/ Delete Multiple Ledger','MoveDeleteMultipleLedgers','Data Utility','Activities'),(370,0,'Asset','Asset','Asset','Asset'),(371,370,'Asset  Item','AssetItem','Asset','Asset'),(372,371,'Create Item','CreateItem','Asset','Asset'),(373,371,'Edit Item','EditItem','Asset','Asset'),(374,371,'Delete Item','DeleteItem','Asset','Asset'),(375,371,'View Item','ViewItem','Asset','Asset'),(376,370,'Vendor','Vendor','Asset','Asset'),(377,376,'Create Vendor','CreateVendor','Asset','Asset'),(378,376,'Edit Vendor','EditVendor','Asset','Asset'),(379,376,'Delete Vendor','DeleteVendor','Asset','Asset'),(380,376,'View Vendor','ViewVendor','Asset','Asset'),(381,370,'Manufacturer','Manufacturer','Asset','Asset'),(382,381,'Create Manufacturer','CreateManufacturer','Asset','Asset'),(383,381,'Edit Manufacturer','EditManufacturer','Asset','Asset'),(384,381,'Delete Manufacturer','DeleteManufacturer','Asset','Asset'),(385,381,'View Manufacturer','ViewManufacturer','Asset','Asset'),(386,370,'Custodian','Custodian','Asset','Asset'),(387,386,'Create Custodian','CreateCustodian','Asset','Asset'),(388,386,'Edit Custodian','EditCustodian','Asset','Asset'),(389,386,'Delete Custodian','DeleteCustodian','Asset','Asset'),(390,386,'View Custodian','ViewCustodian','Asset','Asset'),(391,370,'Block','Block','Asset','Asset'),(392,391,'Create Block','CreateBlock','Asset','Asset'),(393,391,'Edit Block','EditBlock','Asset','Asset'),(394,391,'Delete Block','DeleteBlock','Asset','Asset'),(395,391,'View Block','ViewBlock','Asset','Asset'),(396,370,'Location','Location','Asset','Asset'),(397,396,'Create Location','CreateLocation','Asset','Asset'),(398,396,'Edit Location','EditLocation','Asset','Asset'),(399,396,'Delete Location','DeleteLocation','Asset','Asset'),(400,396,'View Location','ViewLocation','Asset','Asset'),(401,370,'UoM','UoM','Asset','Asset'),(402,401,'Create UoM','CreateUoM','Asset','Asset'),(403,401,'Edit UoM','EditUoM','Asset','Asset'),(404,401,'Delete UoM','DeleteUoM','Asset','Asset'),(405,401,'View UoM','ViewUoM','Asset','Asset'),(406,370,'Opening Asset ','OpeningAsset','Asset','Asset'),(411,370,'Purchase ','Purchase ','Asset','Asset'),(412,411,'Creat Purchase ','CreatePurchase','Asset','Asset'),(413,411,'Edit Purchase ','EditPurchase','Asset','Asset'),(414,411,'Delete Purchase ','DeletePurchase','Asset','Asset'),(415,411,'View Purchase ','ViewPurchase','Asset','Asset'),(416,370,'Receive In-Kind','ReceiveInKind','Asset','Asset'),(417,416,'Create Receive In-Kind','CreateReceiveInKind','Asset','Asset'),(418,416,'Edit Receive In-Kind','EditReceiveInKind','Asset','Asset'),(419,416,'Delete Receive In-Kind','DeleteReceiveInKind','Asset','Asset'),(420,416,'View Receive In-Kind','ViewReceiveInKind','Asset','Asset'),(421,370,'Sales  Disposal  Donation','SalesDisposalDonation','Asset','Asset'),(422,421,'Create Sales  Disposal  Donation','CreateSalesDisposalDonation','Asset','Asset'),(423,421,'Edit Sales  Disposal  Donation','EditSalesDisposalDonation','Asset','Asset'),(424,421,'Delete Sales  Disposal  Donation','DeleteSalesDisposalDonation','Asset','Asset'),(425,421,'View Sales  Disposal  Donation','ViewSalesDisposalDonation','Asset','Asset'),(426,370,'Depreciation','Depreciation','Asset','Asset'),(427,426,'Create Depreciation','CreateDepreciation','Asset','Asset'),(428,426,'Edit Depreciation','EditDepreciation','Asset','Asset'),(429,426,'Delete Depreciation ','DeleteDepreciation','Asset','Asset'),(430,426,'View Depreciation','ViewDepreciation','Asset','Asset'),(431,370,'Update Asset Details','UpdateAssetDetails','Asset','Asset'),(432,370,'Fixed Asset Register','FixedAssetRegister','Asset','Asset'),(433,370,'Map Asset Ledger','MapAssetLedger','Asset','Asset'),(434,370,'Import Opening Asset','ImportOpeningAsset','Asset','Asset'),(435,370,'Configure','Configure','Asset','Asset'),(436,196,'Asset','AssetReports','Asset','Asset'),(437,89,'Fixed Deposit Post Interest','FixedDepositPostInterest','Finance','Fixed Deposit Post Interest'),(438,437,'Create Interest Fixed Deposit','PostInterestFixedDeposit','Finance','Fixed Deposit Post Interest'),(439,437,'Modify Interest Fixed Deposit','ModifyPostInterestFixedDeposit','Finance','Fixed Deposit Post Interest'),(440,437,'Delete Interest Fixed Deposit','DeletePostInterestFixedDeposit','Finance','Fixed Deposit Post Interest'),(441,437,'Print Fixed Deposit Post Interest','PrintFixedDepositPostInterest','Finance','Fixed Deposit Post Interest'),(442,89,'Fixed Deposit ReInvestment','FixedDepositReInvestment','Finance','Fixed Deposit ReInvestment'),(443,442,'Create ReInvestment','ReInvestmentFixedDeposit','Finance','Fixed Deposit ReInvestment'),(444,442,'Modify ReInvestment','ModifyFixedDepostReInvestment','Finance','Fixed Deposit ReInvestment'),(445,442,'Delete ReInvestment','DeleteFixedDepositReInvestment','Finance','Fixed Deposit ReInvestment'),(446,442,'Print ReInvestment','PrintFixedDepositReInvestment','Finance','Fixed Deposit ReInvestment'),(447,0,'Payroll','Payroll','Payroll','Payroll'),(448,447,'CreateNewPayrollMonth','CreateNewPayrollMonth','Payroll','CreateNewPayrollMonth'),(449,447,'Payroll Group','PayrollGroup','Payroll','Payroll Group'),(450,449,'Create Payroll Group','CreatePayrollGroup','Payroll','Payroll Group'),(451,449,'Edit Payroll Group','EditPayrollGroup','Payroll','Payroll Group'),(452,449,'Delete Payroll Group','DeletePayrollGroup','Payroll','Payroll Group'),(453,449,'View Payroll Group','ViewPayrollGroup','Payroll','Payroll Group'),(454,447,'Staff','Staff','Payroll','Staff'),(455,454,'Create Staff','CreateStaff','Payroll','Staff'),(456,454,'Edit Staff','EditStaff','Payroll','Staff'),(457,454,'Delete Staff','DeleteStaff','Payroll','Staff'),(458,454,'View Staff','ViewStaff','Payroll','Staff'),(459,447,'Payroll Component','PayrollComponent','Payroll','Payroll Component'),(460,459,'Create Payroll Component','CreatePayrollComponent','Payroll','Payroll Component'),(461,459,'Edit Payroll Component','EditPayrollComponent','Payroll','Payroll Component'),(462,459,'Delete Payroll Component','DeletePayrollComponent','Payroll','Payroll Component'),(463,459,'View Payroll Component','ViewPayrollComponent','Payroll','Payroll Component'),(464,447,'Loan','Loan','Payroll','Loan'),(465,464,'Create Loan','CreateLoan','Payroll','Loan'),(466,464,'Edit Loan','EditLoan','Payroll','Loan'),(467,464,'Delete Loan','DeleteLoan','Payroll','Loan'),(468,464,'View Loan','ViewLoan','Payroll','Loan'),(469,447,'Issues Loan','IssuesLoan','Payroll','Issues Loan'),(470,469,'Create Issues Loan','CreateIssuesLoan','Payroll','Issues Loan'),(471,469,'Edit Issues Loan','EditIssuesLoan','Payroll','Issues Loan'),(472,469,'DeleteI ssues Loan','DeleteIssuesLoan','Payroll','Issues Loan'),(473,469,'View Issues Loan','ViewIssuesLoan','Payroll','Issues Loan'),(474,447,'Open Payroll Month','OpenPayrollMonth','Payroll','Open Payroll Month'),(475,447,'Delete Payroll Month','DeletePayrollMonth','Payroll','Delete Payroll Month'),(476,447,'component Allocation','componentAllocation','Payroll','component Allocation'),(477,447,'View Payroll','ViewPayroll','Payroll','View Payroll'),(478,447,'PostPayroll voucherto Finance Transaction','PostPayrollvouchertoFinanceTransaction','Payroll','PostPayroll voucherto Finance Transaction'),(479,196,'Payroll','PayrollReports','Payroll','Payroll'),(480,0,'Stock','Stock','Stock','Stock'),(481,480,'Stock Group','StockGroup','Stock','Stock Group'),(482,481,'Create Stock Group','CreateStockGroup','Stock','Stock Group'),(483,481,'Edit Stock Group','EditStockGroup','Stock','Stock Group'),(484,481,'Delete Stock Group','DeleteStockGroup','Stock','Stock Group'),(485,481,'View Stock Group','ViewStockGroup','Stock','Stock Group'),(486,480,'Stock Item','StockItem','Stock','Stock Item'),(487,486,'Create Stock Item','CreateStockItem','Stock','Stock Item'),(488,486,'Edit Stock Item','EditStockItem','Stock','Stock Item'),(489,486,'Delete Stock Item','DeleteStockItem','Stock','Stock Item'),(490,486,'View Stock Item','ViewStockItem','Stock','Stock Item'),(491,480,'Stock Vendor','StockVendor','Stock','Vendor'),(492,491,'Create Stock Vendor','CreateStockVendor','Stock','Vendor'),(493,491,'Edit Stock Vendor','EditStockVendor','Stock','Vendor'),(494,491,'Delete Stock Vendor','DeleteStockVendor','Stock','Vendor'),(495,491,'ViewStock Vendor','ViewStockVendor','Stock','Vendor'),(496,480,'Stock Custodian','StockCustodian','Stock','Custodian'),(497,496,'Create Stock Custodian','CreateStockCustodian','Stock','Custodian'),(498,496,'Edit Stock Custodian','EditStockCustodian','Stock','Custodian'),(499,496,'Delete Stock Custodian','DeleteStockCustodian','Stock','Custodian'),(500,496,'View Stock Custodian','ViewStockCustodian','Stock','Custodian'),(501,480,'Stock Block Area','StockBlockArea','Stock','Block  Area'),(502,501,'Create StockBlock Area','CreateStockBlockArea','Stock','Block  Area'),(503,501,'Edit StockBlock Area','EditStockBlockArea','Stock','Block  Area'),(504,501,'Delete StockBlock Area','DeleteStockBlockArea','Stock','Block  Area'),(505,501,'ViewStockBlock Area','ViewStockBlockArea','Stock','Block  Area'),(506,480,'StockLocation','StockLocation','Stock','Location'),(507,506,'Create Stock Location','CreateStockLocation','Stock','Location'),(508,506,'Edit Stock Location','EditStockLocation','Stock','Location'),(509,506,'Delete Stock Location','DeleteStockLocation','Stock','Location'),(510,506,'View Stock Location','ViewStockLocation','Stock','Location'),(511,480,'StockUOM','StockUOM','Stock','UOM'),(512,511,'Create Stock UOM','CreateStockUOM','Stock','UOM'),(513,511,'Edit Stock UOM','EditStockUOM','Stock','UOM'),(514,511,'Delete Stock UOM','DeleteStockUOM','Stock','UOM'),(515,511,'ViewStock UOM','ViewStockUOM','Stock','UOM'),(516,480,'Opening Balance','OpeningBalance','Stock','Opening Balance'),(517,480,'Import Master','StockImportMaster','Stock','Import Master'),(518,480,'Stock Register','StockRegister','Stock','Stock Register'),(519,480,'Stock Purchase','StockPurchase','Stock','Purchase'),(520,519,'Create Stock Purchase','CreateStockPurchase','Stock','Purchase'),(521,519,'Edit Stock Purchase','EditStockPurchase','Stock','Purchase'),(522,519,'Delete Stock Purchase','DeleteStockPurchase','Stock','Purchase'),(523,519,'View Stock Purchase','ViewStockPurchase','Stock','Purchase'),(524,480,'Stock Receive Inkind','StockReceiveInkind','Stock','Receive In kind'),(525,524,'Create StockReceive Inkind','CreateStockReceiveInkind','Stock','Receive In kind'),(526,524,'Edit StockReceive Inkind','EditStockReceiveInkind','Stock','Receive In kind'),(527,524,'Delete StockReceive Inkind','DeleteStockReceiveInkind','Stock','Receive In kind'),(528,524,'ViewStockReceive Inkind','ViewStockReceiveInkind','Stock','Receive In kind'),(529,480,'Stock Stock Sales','StockStockSales','Stock','Sales'),(530,529,'Create Stock Sales','CreateStockSales','Stock','Sales'),(531,529,'Edit Stock Sales','EditStockSales','Stock','Sales'),(532,529,'Delete Stock Sales','DeleteStockSales','Stock','Sales'),(533,529,'View Stock Sales','ViewStockSales','Stock','Sales'),(534,480,'Stock Utilize','StockUtilize','Stock','Utilize'),(535,534,'Create Stock Utilize','CreateStockUtilize','Stock','Utilize'),(536,534,'Edit Stock Utilize','EditStockUtilize','Stock','Utilize'),(537,534,'Delete Stock Utilize','DeleteStockUtilize','Stock','Utilize'),(538,534,'View Stock Utilize','ViewStockUtilize','Stock','Utilize'),(539,480,'Stock Dispose','StockDispose','Stock','Dispose'),(540,539,'Create Stock Dispose','CreateStockDispose','Stock','Dispose'),(541,539,'Edit Stock Dispose','EditStockDispose','Stock','Dispose'),(542,539,'Delete Stock Dispose','DeleteStockDispose','Stock','Dispose'),(543,539,'View Stock  Dispose','ViewStockDispose','Stock','Dispose'),(544,480,'StockItem Transfer','StockItemTransfer','Stock','Item Transfer'),(545,544,'CreateStockItem Transfer','CreateStockItemTransfer','Stock','Item Transfer'),(546,544,'EditStockItem Transfer','EditStockItemTransfer','Stock','Item Transfer'),(547,544,'DeleteStockItem Transfer','DeleteStockItemTransfer','Stock','Item Transfer'),(548,544,'ViewStockItem Transfer','ViewStockItemTransfer','Stock','Item Transfer'),(549,480,'Stock Purchase Return','StockPurchaseReturn','Stock','Purchase Return'),(550,549,'Create StockPurchase Return','CreateStockPurchaseReturn','Stock','Purchase Return'),(551,549,'EditStockPurchase Return','EditStockPurchaseReturn','Stock','Purchase Return'),(552,549,'Delete StockPurchase Return','DeleteStockPurchaseReturn','Stock','Purchase Return'),(553,549,'View StockPurchase Return','ViewStockPurchaseReturn','Stock','Purchase Return'),(554,196,'Stock','StockReports','Stock','Stock'),(560,89,'Sundry Creditors and Debtors','Sundry Creditors and Debtors','Masters','Sundry Creditors and Debtors'),(561,560,'Create Sundry Creditors and Debtors','CreateSundryCreditorsDebtorsLedgers','SundryCreditorsDebtors','Sundry Creditors and Debtors'),(562,560,'Edit Sundry Creditors and Debtors','EditSundryCreditorsDebtorsLedgers','StocSundryCreditorsDebtorsk','Sundry Creditors and Debtors'),(563,560,'Delete Sundry Creditors and Debtors','DeleteSundryCreditorsDebtorsLedgers','SundryCreditorsDebtors','Sundry Creditors and Debtors'),(564,560,'View Sundry Creditors and Debtors','ViewSundryCreditorsDebtorsLedgers','SundryCreditorsDebtors','Sundry Creditors and Debtors');
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
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MONTH_YEAR` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PROPOSED_AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `APPROVED_AMOUNT` varchar(45) NOT NULL DEFAULT '0.00',
  KEY `FK_BUDGET_ID` (`BUDGET_ID`),
  KEY `FK_LEDGER_ID` (`LEDGER_ID`),
  KEY `FK_PROJECT_ID` (`PROJECT_ID`)
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
-- Table structure for table `asset_block`
--

DROP TABLE IF EXISTS `asset_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_block` (
  `BLOCK_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BLOCK` varchar(100) NOT NULL DEFAULT '',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`BLOCK_ID`,`BRANCH_ID`),
  UNIQUE KEY `BLOCK` (`BLOCK`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_block`
--

LOCK TABLES `asset_block` WRITE;
/*!40000 ALTER TABLE `asset_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_block` ENABLE KEYS */;
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
  `ACCESS_FLAG` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ASSET_CLASS_ID`),
  UNIQUE KEY `ASSET_CLASS` (`ASSET_CLASS`),
  KEY `FK_CLASS_METHOD_ID` (`METHOD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_class`
--

LOCK TABLES `asset_class` WRITE;
/*!40000 ALTER TABLE `asset_class` DISABLE KEYS */;
INSERT INTO `asset_class` VALUES (1,'Primary',1,0.00,0,2,2),(2,'Land',1,0.00,0,2,2),(3,'Buildings',1,0.00,0,2,2),(4,'Vehicles',1,0.00,0,2,2),(5,'Fixtures & Fittings',1,0.00,0,2,2),(6,'Plant & Machinery',1,0.00,0,2,2),(7,'Office Equipments',1,0.00,0,2,2),(8,'Home Appliances',1,0.00,0,2,2),(9,'Software - Programs - licences',1,0.00,0,2,2),(10,'Other Tangible Assets',1,0.00,0,2,2),(11,'Other Intangible Assets',1,0.00,0,2,2);
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
  UNIQUE KEY `CUSTODIAN` (`CUSTODIAN`,`ROLE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_custodian`
--

LOCK TABLES `asset_custodian` WRITE;
/*!40000 ALTER TABLE `asset_custodian` DISABLE KEYS */;
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
  `DEPRECIATION_AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BALANCE_OP_DATE` datetime DEFAULT NULL,
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
  `TOT_DEP_AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
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
  `ASSET_ITEM` varchar(100) NOT NULL DEFAULT '',
  `RETENTION_YRS` int(10) unsigned NOT NULL DEFAULT '0',
  `DEPRECIATION_YRS` int(10) unsigned NOT NULL DEFAULT '0',
  `PREFIX` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `SUFFIX` varchar(10) NOT NULL DEFAULT '',
  `STARTING_NO` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_INSURANCE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 - No, 1- Yes',
  `IS_AMC` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 - No, 1- Yes',
  `ACCOUNT_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DEPRECIATION_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DISPOSAL_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ASSET_CLASS_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `UOM_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ASSET_MODE` int(10) unsigned NOT NULL DEFAULT '1',
  `IS_ASSET_DEPRECIATION` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 - No, 1- Yes',
  `WIDTH` int(10) unsigned NOT NULL DEFAULT '0',
  `DEPRECIATION_NO` varchar(5) DEFAULT NULL,
  `ASSET_ACCESS_FLAG` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-Accessable, 1-Editable, 2-Readonly',
  PRIMARY KEY (`ITEM_ID`,`BRANCH_ID`),
  UNIQUE KEY `ASSET_ITEM` (`ASSET_ITEM`),
  KEY `FK_ASSET_ITEM_CLASS_ID` (`ASSET_CLASS_ID`),
  KEY `FK_ASSET_ITEM_UOM_ID` (`UOM_ID`),
  CONSTRAINT `FK_ASSET_ITEM_CLASS_ID` FOREIGN KEY (`ASSET_CLASS_ID`) REFERENCES `asset_class` (`ASSET_CLASS_ID`),
  CONSTRAINT `FK_ASSET_ITEM_UOM_ID` FOREIGN KEY (`UOM_ID`) REFERENCES `uom` (`UOM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_item`
--

LOCK TABLES `asset_item` WRITE;
/*!40000 ALTER TABLE `asset_item` DISABLE KEYS */;
INSERT INTO `asset_item` VALUES (1,'Monitor',0,0,'Moni','',0,0,0,0,0,1,7,1,0,1,1,0,'40',2),(2,'Computer',0,0,'Comp','',0,0,0,0,0,1,7,1,0,1,1,0,'40',2),(3,'Scanner',0,0,'Scan','',0,0,0,0,0,1,7,1,0,1,1,0,'40',2),(4,'Printer',0,0,'Prin','',0,0,0,0,0,1,7,1,0,1,1,0,'40',2),(5,'Laptop',0,0,'Lap','',0,0,0,0,0,1,7,1,0,1,1,0,'40',2),(6,'Three Wheeler',0,0,'Thre','',0,0,0,506,0,1,4,1,0,1,1,0,'15',2),(7,'Two Wheelers',0,0,'Two','',0,0,0,506,0,1,4,1,0,1,1,0,'15',2),(8,'Cycle',0,0,'Cyc','',0,0,0,506,0,1,4,1,0,1,1,0,'15',2),(9,'Bus',0,0,'Bus','',0,0,0,506,0,1,4,1,0,1,1,0,'15',2),(10,'Car',0,0,'Car','',0,0,0,506,0,1,4,1,0,1,1,0,'15',2),(11,'Jeep',0,0,'Jeep','',0,0,0,506,0,1,4,1,0,1,1,0,'15',2),(12,'Borewell',0,0,'Bore','',0,0,0,0,0,1,10,1,0,1,1,0,'10',2),(13,'Well',0,0,'Well','',0,0,0,0,0,1,10,1,0,1,1,0,'10',2),(14,'Motot Pumbset',0,0,'Moto','',0,0,0,0,0,1,10,1,0,1,1,0,'10',2),(15,'Table',0,0,'Tab','',0,0,0,0,0,1,5,1,0,1,1,0,'10',2),(16,'Library Books and Journal',0,0,'Lib','',0,0,0,0,0,1,5,1,0,1,1,0,'10',2),(17,'Buero',0,0,'Buer','',0,0,0,0,0,1,5,1,0,1,1,0,'10',2),(18,'Smart Board',0,0,'Samt','',0,0,0,0,0,1,5,1,0,1,1,0,'10',2),(19,'Rack',0,0,'Rack','',0,0,0,0,0,1,5,1,0,1,1,0,'10',2),(20,'Writing Board',0,0,'Writ','',0,0,0,0,0,1,5,1,0,1,1,0,'10',2),(21,'Chair',0,0,'Cha','',0,0,0,0,0,1,5,1,0,1,1,0,'10',2),(22,'Bench',0,0,'Ben','',0,0,0,0,0,1,5,1,0,1,1,0,'10',2),(23,'Desk',0,0,'Desk','',0,0,0,0,0,1,5,1,0,1,1,0,'10',2),(24,'Cupboard',0,0,'Cub','',0,0,0,0,0,1,5,1,0,1,1,0,'10',2),(25,'Sewing Machine',0,0,'Sew','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(26,'Laboratory Equipment',0,0,'Lab','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(27,'Micro Ovan',0,0,'Mic','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(28,'Air Cooler / Tower Fan',0,0,'Air','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(29,'Washing Machine',0,0,'Wash','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(30,'Musicial Instruments',0,0,'Mus','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(31,'Water Dispenser',0,0,'W.dis','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(32,'Water Heater',0,0,'W.He','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(33,'Vacc. Cleaner',0,0,'Vacc','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(34,'Ro Water System',0,0,'Ro','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(35,'Solar System',0,0,'Sola','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(36,'Generator',0,0,'Gen','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(37,'Cctv',0,0,'Cub','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(38,'Invertor',0,0,'Inve','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(39,'Ups / Battery',0,0,'Ups','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(40,'Fridge',0,0,'Fri','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(41,'Mobile Phone',0,0,'Mob','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(42,'Airconditionar',0,0,'Airc','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(43,'Television',0,0,'Tel','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(44,'Projector',0,0,'Proj','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(45,'Projector Screen',0,0,'P.Sc','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(46,'Biometric Machine',0,0,'Bio','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(47,'Speaker',0,0,'Spea','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(48,'Gym Equipment',0,0,'Gym','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(49,'Head Phone',0,0,'H.PH','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(50,'Home Theater',0,0,'H.Th','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(51,'Microphone',0,0,'Micr','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(52,'Photo Copier',0,0,'P.Co','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(53,'Amplifier',0,0,'Amp','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(54,'Camera',0,0,'Cam','',0,0,0,0,0,1,7,1,0,1,1,0,'15',2),(55,'Software',0,0,'Soft','',0,0,0,0,0,1,9,1,0,1,1,0,'40',2),(56,'Machinery',0,0,'Mach','',0,0,0,0,0,1,6,1,0,1,1,0,'15',2),(57,'Fan',0,0,'Fan','',0,0,0,0,0,1,5,1,0,1,1,0,'15',2),(58,'Buildings',0,0,'Buil','',0,0,0,0,0,1,3,1,0,1,1,0,'10',2),(59,'Land',0,0,'Land','',0,0,0,488,0,1,2,1,0,1,1,0,'0',2);
/*!40000 ALTER TABLE `asset_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_item_detail`
--

DROP TABLE IF EXISTS `asset_item_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_item_detail` (
  `ITEM_DETAIL_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ITEM_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ASSET_ID` varchar(30) NOT NULL DEFAULT '',
  `DEPRECIATION_AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MANUFACTURER_ID` int(10) unsigned DEFAULT NULL,
  `LOCATION_ID` int(10) unsigned DEFAULT NULL,
  `CUSTODIAN_ID` int(10) unsigned DEFAULT NULL,
  `AMC_MONTHS` int(10) unsigned DEFAULT NULL,
  `STATUS` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '0 - Inactive, 1- Active',
  `CONDITIONS` varchar(50) NOT NULL DEFAULT '',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SALVAGE_VALUE` decimal(13,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ITEM_DETAIL_ID`),
  KEY `FK_ITEM_DETAIL_CUSTODIAN` (`CUSTODIAN_ID`),
  KEY `FK_ITEM_DETAIL_MANUFACTURER_ID` (`MANUFACTURER_ID`),
  KEY `FK_ITEM_DETAIL_LOCATION` (`LOCATION_ID`),
  KEY `FK_ITEM_DETAIL_ITEM_ID` (`ITEM_ID`,`BRANCH_ID`),
  CONSTRAINT `FK_ITEM_DETAIL_ITEM_ID` FOREIGN KEY (`ITEM_ID`, `BRANCH_ID`) REFERENCES `asset_item` (`ITEM_ID`, `BRANCH_ID`)
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
  `LOCATION` varchar(100) NOT NULL DEFAULT '',
  `BLOCK_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CUSTODIAN_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `RESPONSIBLE_FROM` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LOCATION_TYPE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1- Own , 2 - Third Party',
  `BRANCH_ID` varchar(45) NOT NULL DEFAULT '0',
  `RESPONSIBLE_TO` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`LOCATION_ID`,`BRANCH_ID`),
  KEY `FK_LOCATION_CUSTODIAN_ID` (`CUSTODIAN_ID`),
  KEY `FK_LOCATION_BLOCK_ID` (`BLOCK_ID`),
  CONSTRAINT `FK_LOCATION_BLOCK_ID` FOREIGN KEY (`BLOCK_ID`) REFERENCES `asset_block` (`BLOCK_ID`),
  CONSTRAINT `FK_LOCATION_CUSTODIAN_ID` FOREIGN KEY (`CUSTODIAN_ID`) REFERENCES `asset_custodian` (`CUSTODIAN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  CONSTRAINT `FK_PROJECT_ID` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`),
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
  PRIMARY KEY (`LOCATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_stock_location`
--

LOCK TABLES `asset_stock_location` WRITE;
/*!40000 ALTER TABLE `asset_stock_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_stock_location` ENABLE KEYS */;
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
  `PAN_NO` varchar(15) NOT NULL DEFAULT '',
  `GST_NO` varchar(25) NOT NULL DEFAULT '',
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
  `VENDOR` varchar(50) NOT NULL DEFAULT '',
  `PAN_NO` varchar(10) NOT NULL DEFAULT '',
  `GST_NO` varchar(25) NOT NULL DEFAULT '',
  `ADDRESS` varchar(200) DEFAULT NULL,
  `STATE_ID` int(10) unsigned DEFAULT NULL,
  `COUNTRY_ID` int(11) DEFAULT NULL,
  `CONTACT_NO` varchar(15) NOT NULL DEFAULT '',
  `EMAIL_ID` varchar(50) NOT NULL DEFAULT '',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`VENDOR_ID`),
  UNIQUE KEY `VENDOR` (`VENDOR`),
  UNIQUE KEY `Vendore_Index` (`VENDOR`),
  KEY `FK_asset_stock_State` (`STATE_ID`),
  KEY `FK_asset_stock_Country` (`COUNTRY_ID`),
  CONSTRAINT `FK_asset_stock_Country` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `master_country` (`COUNTRY_ID`),
  CONSTRAINT `FK_asset_stock_State` FOREIGN KEY (`STATE_ID`) REFERENCES `master_state` (`STATE_ID`)
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
  `DEPRECIATION_AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
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
-- Table structure for table `branch_congregation_fixedasset_details`
--

DROP TABLE IF EXISTS `branch_congregation_fixedasset_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch_congregation_fixedasset_details` (
  `CON_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VOUCHER_DATE_FROM` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `VOUCHER_DATE_TO` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DEBIT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `CREDIT` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`CON_LEDGER_ID`,`LEDGER_ID`,`VOUCHER_DATE_FROM`,`VOUCHER_DATE_TO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_congregation_fixedasset_details`
--

LOCK TABLES `branch_congregation_fixedasset_details` WRITE;
/*!40000 ALTER TABLE `branch_congregation_fixedasset_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `branch_congregation_fixedasset_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch_congregation_ledger`
--

DROP TABLE IF EXISTS `branch_congregation_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch_congregation_ledger` (
  `CON_LEDGER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CON_LEDGER_CODE` varchar(10) NOT NULL DEFAULT '',
  `CON_LEDGER_NAME` varchar(100) NOT NULL DEFAULT '',
  `CON_PARENT_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CON_MAIN_PARENT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CON_NATURE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`CON_LEDGER_ID`),
  UNIQUE KEY `CON_LEDGER_CODE` (`CON_LEDGER_CODE`,`CON_LEDGER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_congregation_ledger`
--

LOCK TABLES `branch_congregation_ledger` WRITE;
/*!40000 ALTER TABLE `branch_congregation_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `branch_congregation_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch_congregation_ledger_map`
--

DROP TABLE IF EXISTS `branch_congregation_ledger_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch_congregation_ledger_map` (
  `CON_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PROJECT_CATOGORY_GROUP_ID` int(10) NOT NULL,
  `CON_OP_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `CON_OP_TRANS_MODE` varchar(2) NOT NULL DEFAULT '' COMMENT 'CR-CREDIT, DR-DEBIT',
  PRIMARY KEY (`CON_LEDGER_ID`,`LEDGER_ID`,`PROJECT_CATOGORY_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_congregation_ledger_map`
--

LOCK TABLES `branch_congregation_ledger_map` WRITE;
/*!40000 ALTER TABLE `branch_congregation_ledger_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `branch_congregation_ledger_map` ENABLE KEYS */;
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
  `PROPOSED_AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `APPROVED_AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `TRANS_MODE` varchar(2) NOT NULL DEFAULT '',
  KEY `FK_BCC` (`COST_CENTRE_ID`),
  CONSTRAINT `FK_BCC` FOREIGN KEY (`COST_CENTRE_ID`) REFERENCES `master_cost_centre` (`COST_CENTRE_ID`)
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
-- Table structure for table `budget_group`
--

DROP TABLE IF EXISTS `budget_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_group` (
  `BUDGET_GROUP_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BUDGET_GROUP` varchar(100) NOT NULL DEFAULT '',
  `BUDGET_GROUP_SORT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`BUDGET_GROUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_group`
--

LOCK TABLES `budget_group` WRITE;
/*!40000 ALTER TABLE `budget_group` DISABLE KEYS */;
INSERT INTO `budget_group` VALUES (1,'Recurring Expenses',0),(2,'Non-Recurring Expenses',0);
/*!40000 ALTER TABLE `budget_group` ENABLE KEYS */;
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
  `PROPOSED_AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `APPROVED_AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `TRANS_MODE` varchar(2) NOT NULL DEFAULT '',
  `NARRATION` varchar(500) DEFAULT NULL,
  `HO_NARRATION` varchar(150) DEFAULT NULL,
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
-- Table structure for table `budget_level`
--

DROP TABLE IF EXISTS `budget_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_level` (
  `BUDGET_LEVEL_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BUDGET_LEVEL_NAME` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`BUDGET_LEVEL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_level`
--

LOCK TABLES `budget_level` WRITE;
/*!40000 ALTER TABLE `budget_level` DISABLE KEYS */;
INSERT INTO `budget_level` VALUES (1,'Singular'),(2,'Composite');
/*!40000 ALTER TABLE `budget_level` ENABLE KEYS */;
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
  `DATE_FROM` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DATE_TO` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `IS_MONTH_WISE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0- No distribution, 1 - distributions',
  `BUDGET_LEVEL_ID` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1-Singular 2 - Composite',
  `REMARKS` varchar(500) DEFAULT NULL COMMENT 'Comments on the budget',
  `IS_ACTIVE` int(11) NOT NULL DEFAULT '1' COMMENT '1- Active  0 - Inactive',
  `BUDGET_ACTION` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0- Created  1 - Recommended 2- Approved',
  `HO_HELP_PROPOSED_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Head Office Help Propsed',
  `HO_HELP_APPROVED_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Head Office Help Approved',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`BUDGET_ID`)
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
-- Table structure for table `budget_month_distribution`
--

DROP TABLE IF EXISTS `budget_month_distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_month_distribution` (
  `BUDGET_ID` int(11) NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MONTH` datetime DEFAULT NULL COMMENT 'Start date of month',
  `PROPOSED_AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `APPROVED_AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `TRANS_MODE` varchar(2) NOT NULL DEFAULT '',
  `NARRATION` varchar(500) DEFAULT NULL,
  `HO_NARRATION` varchar(150) DEFAULT NULL,
  KEY `FK_BMD_BUDGET_ID` (`BUDGET_ID`),
  KEY `FK_BMD_MASTER_LEDGER_ID` (`LEDGER_ID`),
  CONSTRAINT `FK_BMD_MASTER_LEDGER_ID` FOREIGN KEY (`LEDGER_ID`) REFERENCES `master_ledger` (`LEDGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_month_distribution`
--

LOCK TABLES `budget_month_distribution` WRITE;
/*!40000 ALTER TABLE `budget_month_distribution` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget_month_distribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_project`
--

DROP TABLE IF EXISTS `budget_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_project` (
  `BUDGET_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`BUDGET_ID`,`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_project`
--

LOCK TABLES `budget_project` WRITE;
/*!40000 ALTER TABLE `budget_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_statistics_detail`
--

DROP TABLE IF EXISTS `budget_statistics_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_statistics_detail` (
  `BUDGET_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `STATISTICS_TYPE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TOTAL_COUNT` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`BUDGET_ID`,`STATISTICS_TYPE_ID`),
  KEY `FK_budget_statistics_detail_Type` (`STATISTICS_TYPE_ID`),
  CONSTRAINT `FK_budget_statistics_detail_Type` FOREIGN KEY (`STATISTICS_TYPE_ID`) REFERENCES `master_statistics_type` (`STATISTICS_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_statistics_detail`
--

LOCK TABLES `budget_statistics_detail` WRITE;
/*!40000 ALTER TABLE `budget_statistics_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget_statistics_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_strength_detail`
--

DROP TABLE IF EXISTS `budget_strength_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_strength_detail` (
  `BUDGET_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `COST_CENTRE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NEW_COUNT` int(10) unsigned NOT NULL DEFAULT '0',
  `PRESENT_COUNT` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`BUDGET_ID`,`COST_CENTRE_ID`),
  KEY `FK_BSD_CC` (`COST_CENTRE_ID`),
  CONSTRAINT `FK_BSD_CC` FOREIGN KEY (`COST_CENTRE_ID`) REFERENCES `master_cost_centre` (`COST_CENTRE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_strength_detail`
--

LOCK TABLES `budget_strength_detail` WRITE;
/*!40000 ALTER TABLE `budget_strength_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget_strength_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_sub_group`
--

DROP TABLE IF EXISTS `budget_sub_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_sub_group` (
  `BUDGET_SUB_GROUP_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BUDGET_SUB_GROUP` varchar(100) NOT NULL DEFAULT '',
  `BUDGET_SUB_GROUP_SORT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`BUDGET_SUB_GROUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_sub_group`
--

LOCK TABLES `budget_sub_group` WRITE;
/*!40000 ALTER TABLE `budget_sub_group` DISABLE KEYS */;
INSERT INTO `budget_sub_group` VALUES (1,'Regular Expenses',0),(2,'Non-Regular Expenses',0);
/*!40000 ALTER TABLE `budget_sub_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_sub_ledger`
--

DROP TABLE IF EXISTS `budget_sub_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_sub_ledger` (
  `BUDGET_ID` int(11) NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SUB_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PROPOSED_AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `APPROVED_AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `TRANS_MODE` varchar(2) NOT NULL DEFAULT '',
  `NARRATION` varchar(500) DEFAULT NULL,
  `HO_NARRATION` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`BUDGET_ID`,`LEDGER_ID`,`SUB_LEDGER_ID`),
  KEY `FK_budget_sub_ledger_LEDGER_ID` (`LEDGER_ID`),
  KEY `FK_budget_sub_ledger_SUB_LEDGER_ID` (`SUB_LEDGER_ID`),
  CONSTRAINT `FK_budget_sub_ledger_BUDGET_ID` FOREIGN KEY (`BUDGET_ID`) REFERENCES `budget_master` (`BUDGET_ID`),
  CONSTRAINT `FK_budget_sub_ledger_LEDGER_ID` FOREIGN KEY (`LEDGER_ID`) REFERENCES `master_ledger` (`LEDGER_ID`),
  CONSTRAINT `FK_budget_sub_ledger_SUB_LEDGER_ID` FOREIGN KEY (`SUB_LEDGER_ID`) REFERENCES `master_sub_ledger` (`SUB_LEDGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_sub_ledger`
--

LOCK TABLES `budget_sub_ledger` WRITE;
/*!40000 ALTER TABLE `budget_sub_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget_sub_ledger` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_type`
--

LOCK TABLES `budget_type` WRITE;
/*!40000 ALTER TABLE `budget_type` DISABLE KEYS */;
INSERT INTO `budget_type` VALUES (1,'Accounting Year'),(2,'Period'),(3,'Financial Year'),(4,'Calendar Year'),(5,'Month'),(6,'Academic Year');
/*!40000 ALTER TABLE `budget_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_user_defined_amount`
--

DROP TABLE IF EXISTS `budget_user_defined_amount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budget_user_defined_amount` (
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `GROUP_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(11) unsigned NOT NULL DEFAULT '0',
  `DATE_FROM` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DATE_TO` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ACTUAL_AMOUNT` decimal(13,2) NOT NULL DEFAULT '0.00',
  `TRANS_MODE` varchar(2) NOT NULL DEFAULT '' COMMENT 'CR-CREDIT, DR-DEBIT'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_user_defined_amount`
--

LOCK TABLES `budget_user_defined_amount` WRITE;
/*!40000 ALTER TABLE `budget_user_defined_amount` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget_user_defined_amount` ENABLE KEYS */;
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
-- Table structure for table `fd_account`
--

DROP TABLE IF EXISTS `fd_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fd_account` (
  `FD_ACCOUNT_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FD_ACCOUNT_NUMBER` varchar(100) NOT NULL DEFAULT '',
  `FD_SCHEME` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-Normal,1-Flexi',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BANK_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BANK_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `FD_VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `TRANS_MODE` varchar(2) NOT NULL DEFAULT 'DR',
  `TRANS_TYPE` varchar(2) NOT NULL DEFAULT '' COMMENT 'OP/IN (Opening / Investment)',
  `IS_MULTI_CURRENCY` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Is multi currency mode',
  `CURRENCY_COUNTRY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CONTRIBUTION_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `EXCHANGE_RATE` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ACTUAL_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
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
  `EXPECTED_MATURITY_VALUE` decimal(15,2) NOT NULL DEFAULT '0.00',
  `EXPECTED_INTEREST_VALUE` double NOT NULL DEFAULT '0',
  `MF_FOLIO_NO` varchar(100) NOT NULL DEFAULT '',
  `MF_SCHEME_NAME` varchar(150) NOT NULL DEFAULT '',
  `MF_NAV_PER_UNIT` double NOT NULL DEFAULT '0',
  `MF_NO_OF_UNITS` double NOT NULL DEFAULT '0',
  `MF_MODE_OF_HOLDING` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 - Single 1- Joint',
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fd_account`
--

LOCK TABLES `fd_account` WRITE;
/*!40000 ALTER TABLE `fd_account` DISABLE KEYS */;
INSERT INTO `fd_account` VALUES (1,'101',0,1,2,603,1,74,50000.00,'DR','IN',0,0,0.00,0.00,0.00,'','','2020-05-01 00:00:00','2020-08-10 00:00:00',0,0,'0',1,1,'FD-I','',0.00,0,'','',0,0,0,'0',0);
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
  `REINVESTED_AMOUNT` double NOT NULL DEFAULT '0',
  `FD_TRANS_MODE` varchar(2) NOT NULL DEFAULT 'DR',
  `TDS_AMOUNT` double NOT NULL DEFAULT '0',
  `CHARGE_MODE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-None, 1-Deduct from Interest 2- Deduct from Principal 3-Both',
  `CHARGE_AMOUNT` double NOT NULL DEFAULT '0',
  `CHARGE_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `EXPECTED_MATURITY_VALUE` double NOT NULL DEFAULT '0',
  `EXPECTED_INTEREST_VALUE` double NOT NULL DEFAULT '0',
  `INTEREST_RATE` double NOT NULL DEFAULT '0',
  `INTEREST_TYPE` int(10) unsigned NOT NULL DEFAULT '0',
  `RECEIPT_NO` varchar(50) DEFAULT NULL,
  `RENEWAL_TYPE` varchar(4) NOT NULL DEFAULT '' COMMENT 'IRI=INTEREST RECEIVED\r\nACI=ACCUMULATED iNTEREST\r\nWDI=WITHDRAWAL INTEREST\r\nPWD=PARTIAL WITHDRAW INTEREST',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1-ACTIVE, 0-CANCELLED',
  `IS_DELETED` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1-ACTIVE, 0-DELETED',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `FD_TYPE` varchar(45) NOT NULL DEFAULT '',
  `CLOSED_DATE` datetime DEFAULT NULL,
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
-- Table structure for table `gst_invoice_master`
--

DROP TABLE IF EXISTS `gst_invoice_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gst_invoice_master` (
  `GST_INVOICE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BOOKING_VOUCHER_ID` int(10) unsigned DEFAULT NULL,
  `BOOKING_VOUCHER_TYPE` varchar(2) DEFAULT NULL COMMENT 'RC -Receipts,PY -Payments,CN -Contra ,JR -Journal',
  `GST_VENDOR_INVOICE_NO` varchar(25) DEFAULT NULL COMMENT 'Vendor GST invoice no',
  `GST_VENDOR_INVOICE_DATE` datetime DEFAULT NULL COMMENT 'Vendor GST invoice Date',
  `GST_VENDOR_INVOICE_TYPE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 - Regular, 1- Composition',
  `GST_VENDOR_ID` int(10) unsigned DEFAULT NULL COMMENT 'Vendor Name',
  `IS_REVERSE_CHARGE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 - No, 1 - Yes',
  `REVERSE_CHARGE_AMOUNT` decimal(15,2) DEFAULT NULL,
  `TRANSPORT_MODE` varchar(100) DEFAULT NULL,
  `VEHICLE_NUMBER` varchar(100) DEFAULT NULL,
  `SUPPLY_DATE` datetime DEFAULT NULL,
  `DUE_DATE` datetime DEFAULT NULL,
  `SUPPLY_PLACE` varchar(100) DEFAULT NULL,
  `BILLING_NAME` varchar(100) DEFAULT NULL,
  `BILLING_GST_NO` varchar(25) DEFAULT NULL,
  `BILLING_ADDRESS` varchar(200) DEFAULT NULL,
  `BILLING_STATE_ID` int(10) unsigned DEFAULT NULL,
  `BILLING_COUNTRY_ID` int(10) unsigned DEFAULT NULL,
  `SHIPPING_NAME` varchar(100) DEFAULT NULL,
  `SHIPPING_GST_NO` varchar(25) DEFAULT NULL,
  `SHIPPING_ADDRESS` varchar(200) DEFAULT NULL,
  `SHIPPING_STATE_ID` int(10) unsigned DEFAULT NULL,
  `SHIPPING_COUNTRY_ID` int(10) unsigned DEFAULT NULL,
  `CHEQUE_IN_FAVOUR` varchar(100) DEFAULT NULL,
  `TOTAL_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `TOTAL_CGST_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `TOTAL_SGST_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `TOTAL_IGST_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '0 - Cancelled, 1- Active 2 - Closed, ',
  PRIMARY KEY (`GST_INVOICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gst_invoice_master`
--

LOCK TABLES `gst_invoice_master` WRITE;
/*!40000 ALTER TABLE `gst_invoice_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `gst_invoice_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gst_invoice_master_details`
--

DROP TABLE IF EXISTS `gst_invoice_master_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gst_invoice_master_details` (
  `GST_INVOICE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ITEM_NAME` varchar(150) NOT NULL DEFAULT '',
  `ITEM_DESCRIPTION` varchar(200) NOT NULL DEFAULT '',
  `LEDGER_GST_CLASS_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `QUANTITY` decimal(15,2) NOT NULL DEFAULT '0.00',
  `UNIT_MEASUREMENT` varchar(50) NOT NULL DEFAULT '',
  `UNIT_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `DISCOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `TRANS_MODE` varchar(5) NOT NULL DEFAULT '' COMMENT 'CR- CREDIT, DR-DEBIT',
  `GST_HSN_SAC_CODE` varchar(25) NOT NULL DEFAULT '',
  `CGST` decimal(15,2) NOT NULL DEFAULT '0.00',
  `SGST` decimal(15,2) NOT NULL DEFAULT '0.00',
  `IGST` decimal(15,2) NOT NULL DEFAULT '0.00',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `FK_gst_invoice_master_details` (`GST_INVOICE_ID`),
  KEY `FK_gst_invoice_master_details_GST_CLASS` (`LEDGER_GST_CLASS_ID`),
  CONSTRAINT `FK_gst_invoice_master_details` FOREIGN KEY (`GST_INVOICE_ID`) REFERENCES `gst_invoice_master` (`GST_INVOICE_ID`),
  CONSTRAINT `FK_gst_invoice_master_details_GST_CLASS` FOREIGN KEY (`LEDGER_GST_CLASS_ID`) REFERENCES `master_gst_class` (`GST_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gst_invoice_master_details`
--

LOCK TABLES `gst_invoice_master_details` WRITE;
/*!40000 ALTER TABLE `gst_invoice_master_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `gst_invoice_master_details` ENABLE KEYS */;
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
INSERT INTO `inventory_stock` VALUES ('2012-04-01 00:00:00',3,1,1,20,120.00,0,0,'OP'),('2015-06-24 00:00:00',1,1,1,0,250.00,0,0,'TR');
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
  `AMOUNT_FC` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Cash, Bank Balance in their currency',
  `TRANS_MODE` varchar(2) NOT NULL DEFAULT '' COMMENT 'CR-CREDIT, DR-DEBIT\r\n',
  `TRANS_FC_MODE` varchar(2) NOT NULL DEFAULT '' COMMENT 'CR-CREDIT, DR-DEBIT',
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
INSERT INTO `ledger_balance` VALUES ('2019-03-31 00:00:00',1,1,250.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,2,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,4,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,17,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,18,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,20,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,30,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,38,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,50,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,64,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,72,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,78,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,80,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,96,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,102,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,108,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,114,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,132,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,134,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,142,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,144,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,156,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,158,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,160,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,162,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,166,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,178,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,188,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,202,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,222,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,224,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,228,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,234,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,236,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,304,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,308,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,330,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,332,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,338,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,340,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,358,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,362,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,368,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,392,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,396,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,448,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,452,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,462,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,470,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,488,2000000.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,490,100000.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,492,25000.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,494,10000.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,496,60000.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,498,100000.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,500,500000.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,502,50000.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,504,600150.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,506,100000.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,508,85000.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,510,100000.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,512,40000.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,518,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,536,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,574,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,582,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,584,0.00,0.00,'CR','CR','OP',0),('2019-03-31 00:00:00',1,603,250000.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,604,0.00,0.00,'DR','DR','OP',0),('2019-03-31 00:00:00',1,606,0.00,0.00,'DR','DR','OP',0),('2021-03-31 00:00:00',1,1,59960.00,0.00,'DR','DR','TR',0),('2021-03-31 00:00:00',1,202,10000.00,0.00,'CR','CR','TR',0),('2021-04-01 00:00:00',1,1,111820.00,0.00,'DR','DR','TR',0),('2021-04-01 00:00:00',1,17,10000.00,0.00,'CR','CR','TR',0),('2021-04-01 00:00:00',1,38,3000.00,0.00,'CR','CR','TR',0),('2021-04-01 00:00:00',1,72,5000.00,0.00,'CR','CR','TR',0),('2021-04-01 00:00:00',1,78,20000.00,0.00,'CR','CR','TR',0),('2021-04-01 00:00:00',1,108,1000.00,0.00,'CR','CR','TR',0),('2021-04-01 00:00:00',1,114,750.00,0.00,'CR','CR','TR',0),('2021-04-01 00:00:00',1,132,2000.00,0.00,'CR','CR','TR',0),('2021-04-01 00:00:00',1,134,5000.00,0.00,'CR','CR','TR',0),('2021-04-01 00:00:00',1,142,5000.00,0.00,'CR','CR','TR',0),('2021-04-01 00:00:00',1,158,5000.00,0.00,'CR','CR','TR',0),('2021-04-01 00:00:00',1,160,300.00,0.00,'CR','CR','TR',0),('2021-04-01 00:00:00',1,162,4500.00,0.00,'CR','CR','TR',0),('2021-04-01 00:00:00',1,166,5000.00,0.00,'CR','CR','TR',0),('2021-04-01 00:00:00',1,202,20000.00,0.00,'CR','CR','TR',0),('2021-04-01 00:00:00',1,222,1500.00,0.00,'DR','DR','TR',0),('2021-04-01 00:00:00',1,224,1000.00,0.00,'DR','DR','TR',0),('2021-04-01 00:00:00',1,234,30.00,0.00,'DR','DR','TR',0),('2021-04-01 00:00:00',1,236,150.00,0.00,'DR','DR','TR',0),('2021-04-01 00:00:00',1,304,2500.00,0.00,'DR','DR','TR',0),('2021-04-01 00:00:00',1,332,50000.00,0.00,'DR','DR','TR',0),('2021-04-01 00:00:00',1,338,1500.00,0.00,'DR','DR','TR',0),('2021-04-01 00:00:00',1,358,360.00,0.00,'DR','DR','TR',0),('2021-04-01 00:00:00',1,396,350.00,0.00,'DR','DR','TR',0),('2021-04-01 00:00:00',1,452,300.00,0.00,'DR','DR','TR',0),('2021-04-01 00:00:00',1,488,2010000.00,0.00,'DR','DR','TR',0),('2021-04-01 00:00:00',1,518,5000.00,0.00,'DR','DR','TR',0),('2021-04-01 00:00:00',1,574,5000.00,0.00,'CR','CR','TR',0),('2021-04-01 00:00:00',1,584,15000.00,0.00,'CR','CR','TR',0),('2021-04-01 00:00:00',1,603,222000.00,0.00,'DR','DR','TR',0),('2021-04-10 00:00:00',1,1,91820.00,0.00,'DR','DR','TR',0),('2021-04-10 00:00:00',1,603,242000.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,1,109670.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,2,50000.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,20,3000.00,0.00,'CR','CR','TR',0),('2021-05-01 00:00:00',1,50,5000.00,0.00,'CR','CR','TR',0),('2021-05-01 00:00:00',1,64,12500.00,0.00,'CR','CR','TR',0),('2021-05-01 00:00:00',1,80,12000.00,0.00,'CR','CR','TR',0),('2021-05-01 00:00:00',1,96,2000.00,0.00,'CR','CR','TR',0),('2021-05-01 00:00:00',1,144,2300.00,0.00,'CR','CR','TR',0),('2021-05-01 00:00:00',1,156,1500.00,0.00,'CR','CR','TR',0),('2021-05-01 00:00:00',1,178,3600.00,0.00,'CR','CR','TR',0),('2021-05-01 00:00:00',1,188,10000.00,0.00,'CR','CR','TR',0),('2021-05-01 00:00:00',1,224,1350.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,228,250.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,308,5000.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,330,32000.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,340,1100.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,362,2000.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,392,500.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,448,250.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,462,700.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,490,101000.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,492,26000.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,494,11000.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,496,60500.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,500,500500.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,502,50500.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,506,101000.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,510,101000.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,512,40100.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,536,3500.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,574,10000.00,0.00,'DR','DR','TR',0),('2021-05-01 00:00:00',1,584,0.00,0.00,'CR','CR','TR',0),('2021-05-01 00:00:00',1,603,143800.00,0.00,'DR','DR','TR',0),('2021-05-05 00:00:00',1,1,219870.00,0.00,'DR','DR','TR',0),('2021-05-05 00:00:00',1,18,2000.00,0.00,'DR','DR','TR',0),('2021-05-05 00:00:00',1,30,2000.00,0.00,'CR','CR','TR',0),('2021-05-05 00:00:00',1,38,5988.00,0.00,'DR','CR','TR',0),('2021-05-05 00:00:00',1,102,123.00,0.00,'CR','CR','TR',0),('2021-05-05 00:00:00',1,368,8988.00,0.00,'CR','CR','TR',0),('2021-05-05 00:00:00',1,470,200.00,0.00,'CR','CR','TR',0),('2021-05-05 00:00:00',1,472,0.00,0.00,'CR','CR','TR',0),('2021-05-05 00:00:00',1,582,100000.00,0.00,'CR','CR','TR',0),('2021-05-05 00:00:00',1,603,133923.00,0.00,'DR','DR','TR',0);
/*!40000 ALTER TABLE `ledger_balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ledger_sub_ledger`
--

DROP TABLE IF EXISTS `ledger_sub_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ledger_sub_ledger` (
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SUB_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `UK_LEDGER_SUB_LEDGER` (`LEDGER_ID`,`SUB_LEDGER_ID`),
  KEY `FK_SUB_LEDGER_ID` (`SUB_LEDGER_ID`),
  CONSTRAINT `FK_LEDGER_ID_SUB` FOREIGN KEY (`LEDGER_ID`) REFERENCES `master_ledger` (`LEDGER_ID`),
  CONSTRAINT `FK_SUB_LEDGER_ID` FOREIGN KEY (`SUB_LEDGER_ID`) REFERENCES `master_sub_ledger` (`SUB_LEDGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ledger_sub_ledger`
--

LOCK TABLES `ledger_sub_ledger` WRITE;
/*!40000 ALTER TABLE `ledger_sub_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `ledger_sub_ledger` ENABLE KEYS */;
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
-- Table structure for table `master_auditor_sign_note`
--

DROP TABLE IF EXISTS `master_auditor_sign_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_auditor_sign_note` (
  `ACC_YEAR_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AUDITOR_NOTE_SETTING` varchar(100) NOT NULL DEFAULT '',
  `AUDITOR_NOTE_SETTING_VALUE` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ACC_YEAR_ID`,`AUDITOR_NOTE_SETTING`),
  CONSTRAINT `FK_AC_AUDITOR_SIGN_NOTE` FOREIGN KEY (`ACC_YEAR_ID`) REFERENCES `accounting_year` (`ACC_YEAR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_auditor_sign_note`
--

LOCK TABLES `master_auditor_sign_note` WRITE;
/*!40000 ALTER TABLE `master_auditor_sign_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_auditor_sign_note` ENABLE KEYS */;
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
  `BSRCODE` varchar(25) DEFAULT NULL,
  `IFSCCODE` varchar(25) DEFAULT NULL,
  `MICRCODE` varchar(25) DEFAULT NULL,
  `CONTACTNUMBER` varchar(15) DEFAULT NULL,
  `ACCOUNTNAME` varchar(50) DEFAULT NULL,
  `SWIFTCODE` varchar(25) DEFAULT NULL,
  `NOTES` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`BANK_ID`),
  UNIQUE KEY `UNQ_BANK_BRANCH` (`BANK`,`BRANCH`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_bank`
--

LOCK TABLES `master_bank` WRITE;
/*!40000 ALTER TABLE `master_bank` DISABLE KEYS */;
INSERT INTO `master_bank` VALUES (1,'','State Bank Of India','Tirupattur','',NULL,'','','',NULL,'','');
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
  `TYPE_ID` int(10) unsigned DEFAULT NULL COMMENT 'Saving Account, Current Account',
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_bank_account`
--

LOCK TABLES `master_bank_account` WRITE;
/*!40000 ALTER TABLE `master_bank_account` DISABLE KEYS */;
INSERT INTO `master_bank_account` VALUES (1,603,'','100.1000001','',1,NULL,1,'2020-03-31 00:00:00',NULL,'',0,0,0,0.00,NULL,NULL,0.00,0,0);
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
  `COST_CENTRE_NAME` varchar(100) NOT NULL DEFAULT '',
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
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
INSERT INTO `master_country` VALUES (1,'India','IND',NULL,'à¤°',NULL),(9,'Saudi Arabia','SAU','SAR','SAU','Saudi Riyal'),(10,'Bulgaria','BGR','BGN','BGR','Bulgarian Lev'),(11,'Spain','ESP','EUR','ESP','Euro'),(12,'Taiwan','TWN','TWD','NT$','New Taiwan Dollar'),(13,'Czech Republic','CZE','CZK','CZE','Czech Koruna'),(14,'Denmark','DNK','DKK','kr.','Danish Krone'),(15,'Germany','DEU','EUR','DEU','Euro'),(16,'Greece','GRC','EUR','GRC','Euro'),(17,'United States','USA','USD','$','US Dollar'),(18,'Finland','FIN','EUR','FIN','Euro'),(19,'France','FRA','EUR','FRA','Euro'),(20,'Israel','ISR','ILS','ISR','Israeli New Shekel'),(21,'Hungary','HUN','HUF','Ft','Hungarian Forint'),(22,'Iceland','ISL','ISK','kr.','Icelandic Krona'),(23,'Italy','ITA','EUR','ITA','Euro'),(24,'Japan','JPN','JPY','JPN','Japanese Yen'),(25,'Korea','KOR','KRW','KOR','Korean Won'),(26,'Netherlands','NLD','EUR','NLD','Euro'),(27,'Norway','NOR','NOK','kr','Norwegian Krone'),(28,'Poland','POL','PLN','POL','Polish Zloty'),(29,'Brazil','BRA','BRL','R$','Real'),(30,'Switzerland','CHE','CHF','fr.','Swiss Franc'),(31,'Romania','ROU','RON','lei','Romanian Leu'),(32,'Russia','RUS','RUB','RUS','Russian Ruble'),(33,'Croatia','HRV','HRK','kn','Croatian Kuna'),(34,'Slovakia','SVK','EUR','SVK','Euro'),(35,'Albania','ALB','ALL','Lek','Albanian Lek'),(36,'Sweden','SWE','SEK','kr','Swedish Krona'),(37,'Thailand','THA','THB','THA','Thai Baht'),(38,'Turkey','TUR','TRY','TL','Turkish Lira'),(39,'Islamic Republic of Pakistan','PAK','PKR','Rs','Pakistan Rupee'),(40,'Indonesia','IDN','IDR','Rp','Indonesian Rupiah'),(41,'Ukraine','UKR','UAH','UKR','Ukrainian Grivna'),(42,'Belarus','BLR','BYR','BLR','Belarusian Ruble'),(43,'Slovenia','SVN','EUR','SVN','Euro'),(44,'Estonia','EST','EEK','kr','Estonian Kroon'),(45,'Latvia','LVA','LVL','Ls','Latvian Lats'),(46,'Lithuania','LTU','LTL','Lt','Lithuanian Litas'),(47,'Tajikistan','TAJ','TJS','TAJ','Ruble'),(48,'Iran','IRN','IRR','IRN','Iranian Rial'),(49,'Vietnam','VNM','VND','VNM','Vietnamese Dong'),(50,'Armenia','ARM','AMD','ARM','Armenian Dram'),(51,'Azerbaijan','AZE','AZN','man.','Azerbaijanian Manat'),(52,'Macedonia (FYROM)','MKD','MKD','MKD','Macedonian Denar'),(53,'South Africa','ZAF','ZAR','R','South African Rand'),(54,'Georgia','GEO','GEL','Lari','Lari'),(55,'Faroe Islands','FRO','DKK','kr.','Danish Krone'),(56,'Puerto Rico','PRI','USD','$','US Dollar'),(57,'Malta','MLT','EUR','MLT','Euro'),(58,'Malaysia','MYS','MYR','RM','Malaysian Ringgit'),(59,'Kazakhstan','KAZ','KZT','KAZ','Tenge'),(60,'Kyrgyzstan','KGZ','KGS','KGZ','som'),(61,'Kenya','KEN','KES','S','Kenyan Shilling'),(62,'Turkmenistan','TKM','TMT','m.','Turkmen manat'),(63,'United Kingdom','GBR','GBP','GBR','UK Pound Sterling'),(64,'Cambodia','KHM','KHR','KHM','Riel'),(65,'Lao P.D.R.','LAO','LAK','LAO','Kip'),(66,'Syria','SYR','SYP','SYR','Syrian Pound'),(67,'Sri Lanka','LKA','LKR','LKA','Sri Lanka Rupee'),(68,'Canada','CAN','CAD','$','Canadian Dollar'),(69,'Ethiopia','ETH','ETB','ETB','Ethiopian Birr'),(70,'Nepal','NPL','NPR','NPL','Nepalese Rupees'),(71,'Afghanistan','AFG','AFN','AFG','Afghani'),(72,'Philippines','PHL','PHP','PhP','Philippine Peso'),(73,'Maldives','MDV','MVR','MDV','Rufiyaa'),(74,'Nigeria','NGA','NIO','N','Nigerian Naira'),(75,'Bolivia','BOL','BOB','$b','Boliviano'),(76,'Luxembourg','LUX','EUR','LUX','Euro'),(77,'Greenland','GRL','DKK','kr.','Danish Krone'),(78,'New Zealand','NZL','NZD','$','New Zealand Dollar'),(79,'Guatemala','GTM','GTQ','Q','Guatemalan Quetzal'),(80,'Rwanda','RWA','RWF','RWF','Rwandan Franc'),(81,'Senegal','SEN','XOF','XOF','XOF Senegal'),(82,'Iraq','IRQ','IQD','IRQ','Iraqi Dinar'),(83,'Algeria','DZA','DZD','DZD','Algerian Dinar'),(84,'Ecuador','ECU','USD','$','US Dollar'),(85,'Egypt','EGY','EGP','EGY','Egyptian Pound'),(86,'Hong Kong S.A.R.','HKG','HKD','HK$','Hong Kong Dollar'),(87,'Austria','AUT','EUR','AUT','Euro'),(88,'Australia','AUS','AUD','$','Australian Dollar'),(89,'Serbia and Montenegro (Former)','SCG','CSD','SCG','Serbian Dinar'),(90,'Peru','PER','PEN','S/.','Peruvian Nuevo Sol'),(91,'Libya','LBY','LYD','LBY','Libyan Dinar'),(92,'Singapore','SGP','SGD','$','Singapore Dollar'),(93,'Bosnia and Herzegovina','BIH','BAM','KM','Convertible Marks'),(94,'Macao S.A.R.','MAC','MOP','MOP','Macao Pataca'),(95,'Liechtenstein','LIE','CHF','CHF','Swiss Franc'),(96,'Costa Rica','CRI','CRC','CRI','Costa Rican Colon'),(97,'Morocco','MAR','MAD','MAR','Moroccan Dirham'),(98,'Ireland','IRL','EUR','IRL','Euro'),(99,'Panama','PAN','PAB','B/.','Panamanian Balboa'),(100,'Principality of Monaco','MCO','EUR','MCO','Euro'),(101,'Tunisia','TUN','TND','TUN','Tunisian Dinar'),(102,'Dominican Republic','DOM','DOP','RD$','Dominican Peso'),(103,'Oman','OMN','OMR','OMN','Omani Rial'),(104,'Jamaica','JAM','JMD','J$','Jamaican Dollar'),(105,'Bolivarian Republic of Venezuela','VEN','VEF','Bs. F.','Venezuelan Bolivar'),(106,'Yemen','YEM','YER','YEM','Yemeni Rial'),(107,'Caribbean','CR','USD','$','US Dollar'),(108,'Colombia','COL','COP','$','Colombian Peso'),(109,'Serbia','SRB','RSD','Din.','Serbian Dinar'),(110,'Belize','BLZ','BZD','BZ$','Belize Dollar'),(111,'Jordan','JOR','JOD','JOR','Jordanian Dinar'),(112,'Trinidad and Tobago','TTO','TTD','TT$','Trinidad Dollar'),(113,'Argentina','ARG','ARS','$','Argentine Peso'),(114,'Montenegro','MNE','EUR','MNE','Euro'),(115,'Lebanon','LBN','LBP','LBN','Lebanese Pound'),(116,'Zimbabwe','ZWE','ZWL','Z$','Zimbabwe Dollar'),(117,'Kuwait','KWT','KWD','KWT','Kuwaiti Dinar'),(118,'Chile','CHL','CLP','$','Chilean Peso'),(119,'U.A.E.','ARE','AED','ARE','UAE Dirham'),(120,'Uruguay','URY','UYU','$U','Peso Uruguayo'),(121,'Bahrain','BHR','BHD','BHR','Bahraini Dinar'),(122,'Paraguay','PRY','PYG','Gs','Paraguay Guarani'),(123,'Qatar','QAT','QAR','QAT','Qatari Rial'),(124,'El Salvador','SLV','USD','$','US Dollar'),(125,'Honduras','HND','HNL','L.','Honduran Lempira'),(126,'Nicaragua','NIC','NIO','C$','Nicaraguan Cordoba Oro');
/*!40000 ALTER TABLE `master_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_country_currency_exchange_rate`
--

DROP TABLE IF EXISTS `master_country_currency_exchange_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_country_currency_exchange_rate` (
  `COUNTRY_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `APPLICABLE_FROM` datetime DEFAULT NULL COMMENT 'Exchange Rate Applicalbe from',
  `APPLICABLE_TO` datetime DEFAULT NULL COMMENT 'Exchange Range Rate Applicalbe to',
  `EXCHANGE_RATE` decimal(15,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_country_currency_exchange_rate`
--

LOCK TABLES `master_country_currency_exchange_rate` WRITE;
/*!40000 ALTER TABLE `master_country_currency_exchange_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_country_currency_exchange_rate` ENABLE KEYS */;
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
  `REGISTER_NO` varchar(30) DEFAULT NULL,
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
  `DATE_OF_JOIN` datetime DEFAULT NULL,
  `DATE_OF_EXIT` datetime DEFAULT NULL,
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
  `REGISTER_NO` varchar(30) DEFAULT NULL,
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
  `TELEPHONE` varchar(50) DEFAULT NULL,
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
  `NATIONALITY` varchar(25) DEFAULT NULL,
  `OCCUPATION` varchar(25) DEFAULT NULL,
  `ASSOCIATION` varchar(50) DEFAULT NULL,
  `OFFICE_BEARER` varchar(50) DEFAULT NULL,
  `PLACE` varchar(30) DEFAULT NULL,
  `STATE` varchar(30) DEFAULT NULL,
  `COUNTRY_ID` int(11) DEFAULT NULL,
  `ADDRESS` varchar(150) DEFAULT NULL,
  `PIN_CODE` varchar(10) DEFAULT NULL,
  `PAN_SSN` varchar(10) DEFAULT NULL,
  `AADHAR_NO` varchar(12) NOT NULL DEFAULT '',
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
-- Table structure for table `master_fund_transfer_type`
--

DROP TABLE IF EXISTS `master_fund_transfer_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_fund_transfer_type` (
  `FUND_TRANSFER_TYPE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FUND_TRANSFER_TYPE_NAME` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`FUND_TRANSFER_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_fund_transfer_type`
--

LOCK TABLES `master_fund_transfer_type` WRITE;
/*!40000 ALTER TABLE `master_fund_transfer_type` DISABLE KEYS */;
INSERT INTO `master_fund_transfer_type` VALUES (1,'Cheque'),(2,'DD'),(3,'NEFT'),(4,'RTGS'),(5,'IMPS'),(6,'GOOGLE PAY'),(7,'PHONE PAY'),(8,'PAYTM'),(9,'ATM'),(10,'Debit Card/Credit Card'),(11,'Prepaid Card/Electronic Card'),(12,'ECS'),(13,'PO'),(14,'Same Bank/Inter Bank'),(15,'Others');
/*!40000 ALTER TABLE `master_fund_transfer_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_gst_class`
--

DROP TABLE IF EXISTS `master_gst_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_gst_class` (
  `GST_Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SLAB` varchar(30) DEFAULT NULL,
  `GST` decimal(15,2) NOT NULL DEFAULT '0.00',
  `CGST` decimal(15,2) DEFAULT NULL,
  `SGST` decimal(15,2) DEFAULT NULL,
  `IGST` decimal(15,2) DEFAULT NULL,
  `APPLICABLE_FROM` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '0',
  `SORT_ORDER` int(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`GST_Id`),
  UNIQUE KEY `Slab` (`SLAB`),
  KEY `GST_APPLICABLE_FROM` (`GST`,`APPLICABLE_FROM`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_gst_class`
--

LOCK TABLES `master_gst_class` WRITE;
/*!40000 ALTER TABLE `master_gst_class` DISABLE KEYS */;
INSERT INTO `master_gst_class` VALUES (10,'GST05',5.00,2.50,2.50,NULL,'2017-07-01 00:00:00',1,2),(11,'GST12',12.00,6.00,6.00,NULL,'2017-07-01 00:00:00',1,3),(12,'GST0',0.00,0.00,0.00,NULL,'2017-07-01 00:00:00',1,1),(13,'GST18',18.00,9.00,9.00,NULL,'2017-07-01 00:00:00',1,4),(14,'GST28',28.00,14.00,14.00,NULL,'2017-07-01 00:00:00',1,5);
/*!40000 ALTER TABLE `master_gst_class` ENABLE KEYS */;
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
  `CUR_COUNTRY_ID` int(10) unsigned DEFAULT NULL COMMENT 'Cash Bank Country Currency',
  `OP_EXCHANGE_RATE` decimal(15,2) NOT NULL DEFAULT '0.00',
  `IS_COST_CENTER` int(1) unsigned NOT NULL DEFAULT '0',
  `NOTES` varchar(500) DEFAULT NULL,
  `IS_BANK_INTEREST_LEDGER` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-No,1-Yes',
  `IS_BANK_FD_PENALTY_LEDGER` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-No,1-Yes',
  `IS_BANK_SB_INTEREST_LEDGER` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-No,1-Yes',
  `IS_BANK_COMMISSION_LEDGER` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-No,1-Yes',
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
  `EIGHTY_GNO_REG_DATE` datetime DEFAULT NULL,
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `STATE_ID` int(10) unsigned DEFAULT NULL,
  `GST_NO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMERID`),
  KEY `FK_COUNTRY_ID` (`COUNTRY_ID`),
  CONSTRAINT `FK_COUNTRY_ID` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `master_country` (`COUNTRY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_insti_perference`
--

LOCK TABLES `master_insti_perference` WRITE;
/*!40000 ALTER TABLE `master_insti_perference` DISABLE KEYS */;
INSERT INTO `master_insti_perference` VALUES (1,NULL,'The Congregation of Sisters of St.Ann Of Providence','','Eluru, West Godavari, A.P- 534003','',NULL,1,'','','','','','0901','0001-01-01 00:00:00','','0001-01-01 00:00:00','','','','','2,3',3,NULL,NULL,'','0001-01-01 00:00:00','',NULL,0,NULL,''),(2,NULL,'Ft.Guezou SDB','','','',NULL,1,'','','','','','0111/111','2025-07-01 00:00:00','','2025-07-09 00:00:00','','','','','0',-1,NULL,NULL,'',NULL,'',NULL,0,24,'');
/*!40000 ALTER TABLE `master_insti_perference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_investment_type`
--

DROP TABLE IF EXISTS `master_investment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_investment_type` (
  `INVESTMENT_TYPE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `INVESTMENT_TYPE` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`INVESTMENT_TYPE_ID`),
  UNIQUE KEY `uqi_investment_type` (`INVESTMENT_TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_investment_type`
--

LOCK TABLES `master_investment_type` WRITE;
/*!40000 ALTER TABLE `master_investment_type` DISABLE KEYS */;
INSERT INTO `master_investment_type` VALUES (1,'FD'),(8,'Investments'),(6,'Money Market'),(4,'Mutual Fund'),(3,'RD - Bank'),(2,'RD - Post Office'),(5,'Tresery Bills and Bonds'),(7,'Unit Trust');
/*!40000 ALTER TABLE `master_investment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_ledger`
--

DROP TABLE IF EXISTS `master_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_ledger` (
  `LEDGER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LEDGER_CODE` varchar(100) DEFAULT NULL,
  `ALIAS_LEDGER` varchar(100) DEFAULT NULL,
  `LEDGER_NAME` varchar(100) NOT NULL DEFAULT '',
  `GROUP_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_TYPE` varchar(3) NOT NULL DEFAULT 'GN' COMMENT '''CA'',''BK'',''FD'',''GN'',''IK''',
  `LEDGER_SUB_TYPE` varchar(3) NOT NULL DEFAULT 'GN' COMMENT '''LQ'',GN LQ(CA,BK,FD)',
  `FD_INVESTMENT_TYPE_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-None',
  `BANK_ACCOUNT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CUR_COUNTRY_ID` int(10) unsigned DEFAULT NULL COMMENT 'Cash Bank Country Currency',
  `OP_EXCHANGE_RATE` decimal(15,2) NOT NULL DEFAULT '0.00',
  `IS_COST_CENTER` int(1) unsigned NOT NULL DEFAULT '0',
  `IS_TDS_LEDGER` int(10) unsigned NOT NULL DEFAULT '0',
  `NOTES` varchar(500) DEFAULT NULL,
  `IS_BANK_INTEREST_LEDGER` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-No,1-Yes',
  `IS_BANK_FD_PENALTY_LEDGER` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-No,1-Yes',
  `IS_BANK_SB_INTEREST_LEDGER` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-No,1-Yes',
  `IS_BANK_COMMISSION_LEDGER` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-No,1-Yes',
  `SORT_ID` int(10) unsigned NOT NULL DEFAULT '255',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-Active,1-InActive',
  `ACCESS_FLAG` int(10) unsigned NOT NULL DEFAULT '0',
  `DATE_CLOSED` datetime DEFAULT NULL,
  `CLOSED_BY` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 - Closed By Branch Office  1-Closed by Head Office',
  `IS_BRANCH_LEDGER` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_INKIND_LEDGER` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_DEPRECIATION_LEDGER` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_ASSET_GAIN_LEDGER` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_ASSET_LOSS_LEDGER` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_DISPOSAL_LEDGER` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_SUBSIDY_LEDGER` int(10) unsigned NOT NULL DEFAULT '0',
  `IS_GST_LEDGERS` int(10) unsigned NOT NULL DEFAULT '0',
  `GST_SERVICE_TYPE` int(10) unsigned NOT NULL DEFAULT '0',
  `GST_HSN_SAC_CODE` varchar(25) NOT NULL DEFAULT '',
  `BUDGET_GROUP_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-Default 1-Recurring Expenses  2-NON - Recurring Expenses',
  `BUDGET_SUB_GROUP_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-Default 1-Regular Expenses  2-Non Regular Expenses',
  PRIMARY KEY (`LEDGER_ID`),
  UNIQUE KEY `LEDGER_NAME` (`LEDGER_NAME`) USING HASH,
  KEY `FK_master_bank_account_id` (`BANK_ACCOUNT_ID`),
  KEY `UNQ_LEDGER` (`LEDGER_NAME`) USING BTREE,
  KEY `FK_master_ledger_group_id` (`GROUP_ID`),
  CONSTRAINT `FK_master_ledger_group_id` FOREIGN KEY (`GROUP_ID`) REFERENCES `master_ledger_group` (`GROUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=607 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_ledger`
--

LOCK TABLES `master_ledger` WRITE;
/*!40000 ALTER TABLE `master_ledger` DISABLE KEYS */;
INSERT INTO `master_ledger` VALUES (1,'CS911',NULL,'Cash',13,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,1,0,2,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(2,'FD912',NULL,'Fixed Deposit',14,'GN','FD',1,0,NULL,0.00,0,0,'',0,0,0,0,2,0,2,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(3,'CF913',NULL,'Capital Fund',21,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,3,0,2,NULL,0,0,0,0,0,0,0,0,0,0,'',2,0),(4,'1001',NULL,'Staff Loan given / Recovered',11,'GN','GN',0,0,NULL,1.00,0,0,'',0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(5,'1002',NULL,'Staff Contribution',5,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(6,'FA001',NULL,'Fixed Asset Ledger',11,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,2,0,2,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(7,'G001',NULL,'Gain Ledger',5,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,2,0,2,NULL,0,0,0,0,1,0,0,0,0,0,'',0,0),(8,'L001',NULL,'Loss Ledger',8,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,2,0,2,NULL,0,0,0,0,0,1,0,0,0,0,'',0,0),(9,'IK001',NULL,'In-Kind Ledger',5,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,2,0,2,NULL,0,0,1,0,0,0,0,0,0,0,'',0,0),(10,'DI001',NULL,'Disposal Ledger',8,'GN','GN',0,0,NULL,0.00,0,0,'',1,0,0,0,2,0,0,NULL,0,0,0,0,0,0,1,0,0,0,'',0,0),(11,'DP001',NULL,'Depreciation Ledger',8,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,2,0,2,NULL,0,0,0,1,0,0,0,0,0,0,'',0,0),(12,'',NULL,'Central Goods & Service Tax (CGST)',24,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,255,0,2,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(13,'',NULL,'State Goods & Service Tax (SGST)',24,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,255,0,2,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(14,'',NULL,'Integrated Good & Service Tax (IGST)',24,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,255,0,2,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(15,'',NULL,'TDS on FD Interest',11,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,255,0,2,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(16,'IK001',NULL,'In-Kind Donation Ledger',5,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,2,0,0,NULL,0,0,1,0,0,0,0,0,0,0,'',0,0),(17,'10000','065.001.001','TUITION FEES',41,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(18,'10001','065.001.001','ADMISSION FEES',41,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(20,'10002','065.001.001','EXAMINATION FEES',41,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(22,'10003','065.001.001','MAINTENANCE FEES',41,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(24,'10004','065.001.001','SPECIAL FEES',41,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(26,'10005','065.001.001','BUILDING FEES',41,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(28,'10006','065.001.001','STAFF RETIREMENT FUND',41,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(30,'10007','065.001.001','D.A. ARREARS ',41,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(32,'10008','065.001.001','COMPUTER FEES',41,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(34,'10009','065.001.001','VAN/BUS FEES',41,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(36,'10020','065.001.002','TUITION FEES - PRIMARY',42,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(38,'10021','065.001.002','ADMISSION FEES - PRIMARY',42,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(40,'10022','065.001.002','EXAMINATION FEES - PRIMARY',42,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(42,'10023','065.001.002','MAINTENANCE FEES  - PRIMARY',42,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(44,'10024','065.001.002','SPECIAL FEES - PRIMARY',42,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(46,'10025','065.001.002','BUILDING FEES - PRIMARY',42,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(48,'10026','065.001.002','STAFF RETIREMENT FUND - PRIMARY',42,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(50,'10027','065.001.002','D.A. ARREARS  - PRIMARY',42,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(52,'10028','065.001.002','COMPUTER FEES - PRIMARY',42,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(54,'10029','065.001.002','VAN/BUS FEES - PRIMARY',42,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(56,'10040','065.001.003','TUITION FEES - SECONDARY',45,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(58,'10041','065.001.003','ADMISSION FEES- SECONDARY',45,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(60,'10042','065.001.003','EXAMINATION FEES- SECONDARY',45,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(62,'10043','065.001.003','MAINTENANCE FEES- SECONDARY',45,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(64,'10044','065.001.003','SPECIAL FEES- SECONDARY',45,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(66,'10045','065.001.003','BUILDING FEES- SECONDARY',45,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(68,'10046','065.001.003','STAFF RETIREMENT FUND- SECONDARY',45,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(70,'10047','065.001.003','D.A. ARREARS - SECONDARY',45,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(72,'10048','065.001.003','COMPUTER FEES- SECONDARY',45,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(74,'10049','065.001.003','VAN/BUS FEES- SECONDARY',45,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(76,'10060','065.001.004','TUITION FEES -COLLEGE',35,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(78,'10061','065.001.004','ADMISSION FEES-COLLEGE',35,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(80,'10062','065.001.004','EXAMINATION FEES-COLLEGE',35,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(82,'10063','065.001.004','MAINTENANCE FEES-COLLEGE',35,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(84,'10064','065.001.004','SPECIAL FEES-COLLEGE',35,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(86,'10065','065.001.004','BUILDING FEES-COLLEGE',35,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(88,'10066','065.001.004','STAFF RETIREMENT FUND-COLLEGE',35,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(90,'10100','065.001.014','OUT PATIENT CONSULTANCY FEE',38,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(92,'10102','065.001.014','SALE OF MEDICIN E',38,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(94,'10103','065.001.014','MATERNITY FEE',38,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(96,'10104','065.001.014','OPERATION FEE',38,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(98,'10105','065.001.014','PATHOLOGICAL FEE',38,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(100,'10106','065.001.014','X-RAY FEE',38,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(102,'10109','065.001.014',' INPATIENT FEE',38,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(104,'10110','065.001.014','SCANING FEE',38,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(106,'10113','065.001.014','REGISTRATIOIN FEE',38,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(108,'10114','065.001.014','NURSING  CHARGES',38,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(110,'10200','065.001.013','MESS FEES',33,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(112,'10201','065.001.013','MAINTENANCE FEES - BOARDING',33,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(114,'10202','065.001.013',' HOSTEL FEE',33,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(116,'10203','065.001.013','DHOBI CHARGES',33,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(118,'10204','065.001.013','PRIVATE TUITION FEE',33,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(120,'10205','065.001.013','MEDICAL',33,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(122,'10206','065.001.013','SCHOLARSHIP',33,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(124,'11000','067.001.003','SISTERS SALARIES',44,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(126,'11002','067.001.014','REMUNERATION FOR PAPER CORRECTION',44,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(128,'11004','067.001.013','SISTERS PENSION',44,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(130,'11005','067.001.010','GIFT RECEIVED FROM FAMILY',44,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(132,'11007','067.001.004','RETREAT/SEMINAR FEE',44,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(134,'11008','067.001.004','DOMESTIC WORKERS MEES FEE',44,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(136,'11010','067.001.004','ALLOWANCEHOSPITALITY(BOARD & Lodege)',44,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(138,'12000','065.001.008','GRANT IN AID',37,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(140,'12001','065.001.008','MAINTEANCE GRANT',37,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(142,'12002','065.001.008','SCHOLARSHIPS',37,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(144,'12008','065.001.008','GRANT FROM U G C',37,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(146,'12501','067.001.001','CANTEEN /STATIONERY RENT BELOW 10000/-',37,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(148,'12502','067.001.001','LAND LEASE',37,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(150,'12551','067.001.001','CANTEEN/BANK RENT ABOVE 10000/-',37,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(152,'13003','065.001.011','DONATIONS FROM BENEFACTORS',36,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(154,'13006','065.001.010','CONT. FROM THE DIOCESE',36,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(156,'14000','071.001.001','INTEREST ON SAVINGS',39,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(158,'14001','071.001.003','INTEREST ON F.D/TERM DEPOSITS',39,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(160,'15000','065.001.012','SALE OF TIE/BELT/BADGES/UNIFORM',34,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(162,'15001','065.001.012','SALE OF BOOKS/STATIONERY',34,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(164,'16000','065.001.012','COLLECTION FROMM ISSUE OF T.C',40,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(166,'16001','065.001.012','SALE OF APPLICATIONS',40,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(168,'16002','065.001.012','FINES',40,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(170,'16008','065.001.008','SALE OF SCRAPS',40,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(172,'16013','065.001.016','INCOME FROM PICNIC/EXCURSION',40,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(174,'16016','065.001.014','MITE BOX COLLECTIONS',40,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(176,'16018','065.001.016','EXTRA CURRICULAR ACTIVITIES/PTA FUND',40,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(178,'16020','065.001.009','SALE OF STATIONERY',40,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(180,'16021','065.001.016','COLLECTION FROM FETE/FOOD FESTIVAL',40,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(182,'16023','065.001.012','SALE OF I.D CARDS',40,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(184,'16099','065.001.012','MISCELLANEOUS COLLECTIONS',40,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(186,'16102','066.001.001','SALE OF MANURE',32,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(188,'16103','066.001.001','SALE OF COCONUTS',32,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(190,'16104','066.001.001','SALE OF FRUITS',32,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(192,'16105','066.001.001','SALE OF FLOWERS',32,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(194,'16106','066.001.001','SALE OF HAY/HUSK/GRASS',32,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(196,'16107','067.001.014','SALE OF GHEE',32,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(198,'16110','067.001.014','SALE OF MILK',32,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(200,'16111','066.001.001','SALE OF PADDY',32,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(202,'16112','067.001.014','SALE OF EGGS',32,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(204,'16113','067.001.014','SALE OF PIGGERY',32,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(206,'16114','066.001.001','SALE OF CATTLE',32,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(208,'19999','075.001.001','PROFIT ON SALE OF FIXED ASSETS',43,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(210,'20000','047.001.001','SALARIES & ALLOWANCES',51,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(212,'20001','047.001.001','SALARIES & ALLOWANCES OF TEACHING STAFF',51,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(214,'20002','047.001.001','SALARIES & ALLOWANCES OF NON TEACHING STAFF',51,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(216,'20003','047.001.001','SALARIES OF CONTINGENT STAFF',51,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(218,'20004','047.001.001','SALARIES OF DOMESTIC WORKERS',51,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(220,'20005','047.001.001','PENSIONS',51,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(222,'20031','047.001.001','EPF MANAGEMENT SHARE',51,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(224,'20032','047.001.001','EPF ADMINISTRATIVE CHARGES',51,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(226,'20033','047.001.001','ESI MANAGEMENT  SHARE',51,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(228,'20035','047.001.001','GRATITUITY',51,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(230,'20100','045.001.027','PRINTING & STATIONERY/XEROX',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(232,'20101','045.001.009','TELEPHONE & TELEX',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(234,'20102','045.001.012','POSTAGE & TELEGRAM',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(236,'20103','045.001.002','ELECTRICITY CHARGES',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(238,'20104','045.001.030','RATES & TAXES/GREEN TAX',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(240,'20105','045.001.001','RENT PAID',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(242,'20106','045.001.017','NEWS PAPERS & PERIODICALS/CBLE T.V',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(244,'20107','045.001.019','ADVERTISEMENT',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(246,'20108','045.001.013','LEGAL /PREOFESIONAL CHARGES',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(248,'20109','045.001.020','OFFICE EXPENSES',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(250,'20111','045.001.010','TRANSPORTATION/PETROL USED TO GO TO OFFICE USE',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(252,'20112','045.001.003','WATER CHARGES',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(254,'20113','045.001.013','AUDITORS FEES',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(256,'20114','045.001.005','CLEANLINESS & HYGIENE',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(258,'20117','045.001.008','PURCHASE OF SMALL EQUIPMENT',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(260,'20121','045.001.028','VEHICLE WRONG PARKING',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(262,'20122','045.001.039','CONCESSION',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(264,'20123','045.001.042','REFUND OF FEES',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(266,'20124','045.001.043','HEALTH & MEDICINE',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(268,'20125','045.001.038','GIVEN IN CHARITY (MEDICAL/EDU)',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(270,'20126','045.001.006','PURCHASE OF UNIFORM, BELT, TIE, BADGES',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(272,'20127','045.001.026','VEHICLE INSURANCE',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(274,'20128','045.001.020','GARDEN EXPENSES',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(276,'20129','045.001.041','EXTRA CURRICULAR ACTIVITIES',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(278,'20130','045.001.004','COMBUSTIBLE/GAS',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(280,'20131','045.001.016','FUEL FOR VEHICLE',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(282,'20133','045.001.033','INTEREST, FINES ON TDS - LATE PAYMENT',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(284,'20135','047.001.035','STAFF WELFARE (TEA, SNACKS, PARTY ETC)',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(286,'20139','047.001.001','CGST 9% TAX (CENTRAL)',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(288,'20140','047.001.001','SGST 9% TAX  (STATE)',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(290,'21100','055.001.005','BANK CHARGES',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(292,'21099','','MISC. EXPENSES',46,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(294,'22000','045.001.038','CONTRIBUTION TO DIOCESE/CHURCH',49,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(296,'22003','045.001.038','CONTRIBUTION TO C.R.I',49,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(298,'23000','045.001.010','FOREIGN TRAVEL',57,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(300,'23201','045.001.042','AFFILIATION FEE',54,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(302,'23202','045.001.042','EXAMINATION FEE',54,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(304,'23203','045.001.042','EXPENSES FOR THE RECOGNITION',54,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(306,'23205','045.001.042','PRACTICAL EXAM FEE',54,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(308,'23216','045.001.042','INSPECTION FEE',54,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(310,'24000','049.001.001','R &  M OF BUILDINGS - BELOW',56,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(312,'24001','049.001.003','R & M OF MACHINERY - BELOW',56,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(314,'24002','049.001.004','REPAIRS & MAINTENANCE OF VEHICLES - BELOW',56,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(316,'24003','049.001.003','REPAIRS & MAINTENANCE OF ELECTRICALS - BELOW',56,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(318,'24004','049.001.002','REPAIRS & MAINTENANCE OF FURNITURE -BELOW',56,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(320,'24005','049.001.003','REPAIRS & MAINTENANCE OF GENERATOR - BELOW',56,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(322,'24006','049.001.003','REPAIRS & MAINTENANCE OF COMPUTER - BELOW',56,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(324,'24100','049.001.001','R &  M OF BUILDINGS',55,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(326,'24101','049.001.003','R & M OF MACHINERY',55,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(328,'24102','049.001.004','REPAIRS & MAINTENANCE OF VEHICLES',55,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(330,'24103','049.001.003','REPAIRS & MAINTENANCE OF ELECTRICALS',55,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(332,'24104','049.001.002','REPAIRS & MAINTENANCE OF FURNITURE',55,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(334,'24105','049.001.003','REPAIRS & MAINTENANCE OF GENERATOR',55,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(336,'24106','049.001.003','REPAIRS & MAINTENANCE OF COMPUTER',55,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(338,'24401','045.001.025','AUDIO VISUAL EXPENSES',50,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(340,'24402','045.001.025','GAMES & SPORTS',50,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(342,'24403','045.001.025','SCIENCE LAB EXPENSES',50,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(344,'24404','045.001.025','EXPENSES ON EXAMINATION STATIONERY',50,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(346,'24405','045.001.040','EXP. ON FUNCTIONS/SEMINAR/VALUE EDU',50,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(348,'24406','045.001.025','EXPENSES ON EXCURSIONS & PICNICS/I.D',50,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(350,'24407','045.001.038','GIFTS & PRIZES',50,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(352,'24410','045.001.025','SCOUTS & JRC',50,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(354,'24412','045.001.025','PRINTING OF PROG. CARDS & CALENDERS',50,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(356,'24900','045.001.043','MEDICINES PURCHASED',52,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(358,'24901','045.001.043','LINEN & CLOTH',52,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(360,'24902','045.001.043','X-RAY',52,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(362,'24903','045.001.043','MEDICAL & SURGICAL ITEMS',52,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(364,'24904','045.001.043','POTHOLOGICAL LABORATORY EXPENSES',52,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(366,'24906','045.001.043','CLEANLINESS & HYGIENE - HOSPITAL',52,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(368,'26900','062.001.001','AGRICULTURAL EXPENSES',47,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(370,'26901','062.001.001','PESTICIDES PURCHASED',47,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(372,'26902','062.001.022','CATTLE FIELD',47,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(374,'26903','062.001.001','PURCHASE OF HAY/HUSK/GRASS',47,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(376,'26904','062.001.001','FERTILIZER',47,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(378,'26908','062.001.022','POULTRY EXPENSES/BIRDS FEED/DOGS',47,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(380,'27100','061.001.024','FOOD & PROVISION',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(382,'27101','061.001.024','NEWS PAPERS/CABLE T.V, INTERNET',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(384,'27102','061.001.029','FUEL/GAS - COMMUNITY',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(386,'27104','061.001.032','CLEANLINESS &M HYGIENE',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(388,'27105','061.001.001','MEDICAL EXPENSES',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(390,'27106','061.001.022','CONVENT MAINT (CURTAIN, BED SHEET, MATRESS ETC)',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(392,'27107','061.001.027','EDUCATION OF MEMBERS',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(394,'27108','061.001.035','TELEPHONE CHARGES/COMMTY MOBILE RECHARGE',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(396,'27109','061.001.019','COMMUNITY OUTING',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(398,'27110','061.001.021','TRAVELLING - COMMUNITY',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(400,'27111','061.001.030','POSTAGE',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(402,'27112','061.001.031','STATIONERY - COMMUNITY',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(404,'27113','061.001.005','RETREATS & SEMINAR',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(406,'27114','061.001.007','RELIGIOUS EXPENSES ( Host, wine, candles, vestments, recollection, confession',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(408,'27116','061.001.011','GIFTS',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(410,'27118','061.001.019','FUNCTIONS & CELEBRATIONS - COMMUNITY',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(412,'27119','061.001.027','ELECTRICITY CHARGES -COMMUNITY',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(414,'27120','061.001.028','WATER CHARGES - COMMUNITY',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(416,'27121','061.001.022','AUDITOR/LEGAL CHARGES',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(418,'27122','061.001.038','GARDENING EXPENSES',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(420,'27123','061.001.040','CRI, IPCI MEMBERSHIP',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(422,'27124','061.001.033','TO ATTEND  AND OTHER FUNERAL EXP. ONLY SISTERS',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(424,'27126','061.001.041','DIESER/PETROL',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(426,'27132','061.001.034','POCKET MONEY, ALSO GIFT SAREES, HABITS',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(428,'27133','061.001.039','PURCHASE OF SMALL EQUIPMENT - COMMUNITY',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(430,'27134','061.001.040','FORMEES/1ST YEAR PROFESSED',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(432,'27136','061.001.018','CHARITY (MEDICAL/EDUCATION)',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(434,'27137','061.001.037','STAFF FUND',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(436,'27139','061.001.008','WORSHIP, SUFFRAGES, PREACHERS',48,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(438,'27600','045.001.001','FOOD/PROVISION',53,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(440,'27601','045.001.004','FUEL/GAS',53,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(442,'27602','045.001.001','RICE/PADDY',53,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(444,'27604','045.001.005','CLEANLINESS & HYGIENE - MAINTENANCE',53,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(446,'27605','045.001.025','MEDICAL EXPENSE',53,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(448,'27606','045.001.025','BOARDING MAINTENANCE',53,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(450,'27607','045.001.025','EDUCATIONAL EXPENSES',53,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(452,'27608','045.001.025','BARBER CHARGES',53,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(454,'27609','045.001.025','DHOBJY CHARGES',53,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(456,'27612','045.001.025','FUNCTIONS & CELEBRATIONS',53,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(458,'27613','045.001.002','ELECTRICITY',53,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(460,'27614','045.001.026','SUBSCRIPTION FOR MAGAZINE, NEWS PAPER, T.V RECHARGE',53,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(462,'27615','045.001.006','TELEPHONE',53,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(464,'27616','045.001.010','TRAVELLING',53,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(466,'27617','045.001.027','STATIONERY',53,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(470,'30001','033.001.002','EXCESS OF INCOME OVER EXPENDITURE',21,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(472,'30002','033.001.003','EXCESS OF EXPENDITRE OVER INCOME',21,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(474,'32500','019.001.001','EXPLOYEES PROVIDENT FUND RECOVERY/REMITTANCE',23,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(476,'32502','019.001.001','TEACHERS PROVIDENT FUND RECOVERY/REMITTANCE',23,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(478,'32503','019.001.001','GROUP INSURANCE RECOVERY/REMITTANCE',23,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(480,'32504','019.001.001','LIC RECOVERY/REMITTANCE',23,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(482,'32505','019.001.001','E.S.I. RECOVERY/REMITTANCE',23,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(484,'32506','019.001.001','T.D.S RECOVERY/REMITTANCE',23,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(486,'32507','019.001.001','PROF. TAX RECOVEY/REMITTANCE',23,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(488,'35400','013.001.001','LAND',18,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(490,'35402','013.001.002','BUILDINGS',18,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(492,'35403','013.001.009','FURNITURE',18,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(494,'35404','013.001.010','ELECTRICAL & ELECTRONIC EQUIPMENT',18,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(496,'35405','013.001.006','OFFICE EQUIPMENT',18,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(498,'35406','013.001.006','DOMESTIC EQUIPMENT',18,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(500,'35407','013.001.006','LAB EQUIPMENT',18,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(502,'35408','013.001.006','HOSPITAL EQUIPMENT',18,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(504,'35409','013.001.001','LAND DEVELOPMENT',18,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(506,'35421','013.001.008','VEHICLE',18,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(508,'35422','013.001.015','LIBRARY',18,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(510,'35424','013.001.003','ROAD CONSTRUCTION',18,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(512,'35425','013.001.006','GAMES EQUIPMENT',18,'GN','GN',0,0,NULL,0.00,0,0,'',0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(514,'35501','013.001.002','CEMENT',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(516,'35502','013.001.002','STEEL',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(518,'35503','013.001.002','BRICKS',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(520,'35504','013.001.002','SAND',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(522,'35505','013.001.002','METAL',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(524,'35506','013.001.002','WOOD',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(526,'35507','013.001.002','STATIONERY MATERIAL',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(528,'35508','013.001.002','ELECTRICAL MATERIAL',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(530,'35509','013.001.002','HARDWARE',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(532,'35510','013.001.002','SAND, ',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(534,'35512','013.001.002','LABOUR CHARGES',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(536,'35513','013.001.002','EVACUATION',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(538,'35514','013.001.002','PAINTS',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(540,'35516','013.001.002','STONES',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(542,'35517','013.001.002','TITLES',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(544,'35518','013.001.002','GLASS',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(546,'35519','013.001.002','CARPENTER CHARGES',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(548,'35520','013.001.002','TRANSPORT CHARGES',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(550,'35521','013.001.002','ENGINEERS FEE',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(552,'35522','013.001.002','CENTERING CHARGES',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(554,'35523','013.001.002','DIGGING',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(556,'35524','013.001.002','GRAVEL',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(558,'35525','013.001.002','WATERING CHARGES',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(560,'35526','013.001.002','LIME',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(562,'35527','013.001.002','ARCHITEC FEE',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(564,'35530','013.001.002','MUD',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(566,'35531','013.001.002','PIPES',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(568,'35532','013.001.002','PLUMBER CHARGES',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(570,'35533','013.001.002','ROOFING SHEETS',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(572,'35536','013.001.002','CONTRACTORS PAYMENT',60,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(574,'50000','068.001.001','CONTRIBUTION FROM PROVINCIALATE',59,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(576,'79999','075.001.001','EXCESS OF EXPENDITURE OVER INCOME',59,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(578,'81000','001.001.001','CASH ACCOUNT',59,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(580,'89000-89999','','FIXED DEPOSITS',59,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(582,'32500','','EPF Recovered / Remitted',59,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(584,'32500','','ESI Recovered / Remitted',59,'GN','GN',0,0,NULL,0.00,0,0,NULL,0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(603,'',NULL,'100.1000001',12,'GN','BK',0,0,NULL,0.00,0,0,'',0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(604,'',NULL,'tryttuyu',17,'GN','GN',0,0,NULL,1.00,0,0,'',0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',1,0),(605,'',NULL,'Chief Salaery',61,'GN','GN',0,0,NULL,1.00,0,0,'',0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0),(606,'',NULL,'test543',46,'GN','GN',0,0,NULL,1.00,0,0,'',0,0,0,0,255,0,0,NULL,0,0,0,0,0,0,0,0,0,0,'',0,0);
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
  `GROUP_CODE` varchar(100) DEFAULT NULL,
  `ALIAS_GROUP` varchar(100) NOT NULL DEFAULT '',
  `LEDGER_GROUP` varchar(100) NOT NULL DEFAULT '',
  `PARENT_GROUP_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NATURE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MAIN_GROUP_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `IMAGE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ACCESS_FLAG` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-Access,1-Editable,2-Readonly',
  `SORT_ORDER` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`GROUP_ID`),
  UNIQUE KEY `UNQ_GRP` (`LEDGER_GROUP`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_ledger_group`
--

LOCK TABLES `master_ledger_group` WRITE;
/*!40000 ALTER TABLE `master_ledger_group` DISABLE KEYS */;
INSERT INTO `master_ledger_group` VALUES (1,'01','','Incomes',1,1,1,0,2,0),(2,'02','','Expenses',2,2,2,0,2,0),(3,'03','','Assets',3,3,3,0,2,0),(4,'04','','Liabilities',4,4,4,0,2,0),(5,'05','','Direct Incomes',1,1,1,0,0,0),(6,'06','','Indirect Incomes',1,1,1,0,0,0),(7,'07','','Sales Accounts',1,1,1,0,0,0),(8,'08','','Direct Expenses',2,2,2,0,0,0),(9,'09','','Indirect Expenses',2,2,2,0,0,0),(10,'10','','Purchase Accounts',2,2,2,0,0,0),(11,'18','','Current Assets',3,3,3,0,2,0),(12,'101','','Bank Accounts',11,3,11,0,2,0),(13,'100','','Cash-in-hand',11,3,11,0,2,0),(14,'102','','Fixed Deposits',11,3,11,0,2,0),(15,'16','','Loans and Advances (Asset)',11,3,11,0,0,0),(16,'14','','Stock-in-hand',11,3,11,0,0,0),(17,'15','','Sundry Debtors',11,3,11,0,0,0),(18,'35400-35499','','Fixed Assets',3,3,3,0,0,0),(19,'12','','Investments',3,3,3,0,0,0),(20,'13','','Misc. Expenses (Asset)',3,3,3,0,0,0),(21,'30000-30999','','Capital Fund',4,4,4,0,2,0),(22,'22','','Reserves and Surplus (Fixed Assets)',4,4,4,0,0,0),(23,'32500-32999','','Current Liabilities',4,4,4,0,0,0),(24,'24','','Duties & Taxes',23,4,23,0,2,0),(25,'25','','Provisions',23,4,23,0,0,0),(26,'26','','Sundry Creditors',23,4,23,0,0,0),(27,'23','','Loans and Advances (Liability)',4,4,4,0,0,0),(28,'28','','Bank OD A/c',27,4,27,0,0,0),(29,'29','','Secured Loans',27,4,27,0,0,0),(30,'30','','Unsecured Loans',27,4,27,0,0,0),(31,'31','','Suspense A/c',4,4,4,0,0,0),(32,'16100-16199','','AGRICULTURAL/DAIRY/POULTRY INCOME',5,1,5,1,0,0),(33,'10200-10250','065.001.013','BOARDING FEE COLLECTION',5,1,5,1,0,0),(34,'15000-15999','','COLLECTION ON MATERIAL SUPPLIED',5,1,5,1,0,0),(35,'10060-10079','065.001.004','COLLEGE FEE COLLECTION',5,1,5,1,0,0),(36,'13000-13999','','DONATIONS/CONTRIBUTIONS',5,1,5,1,0,0),(37,'12000-12499','065.001.008','GRANTS FROM STATE/CENTRAL GOVERNMENT',5,1,5,1,0,0),(38,'10100-10150','065.001.014','HOSPITAL/DISP.FEE COLLECTION',5,1,5,1,0,0),(39,'14000-14099','','INTEREST &  DIVIDENDS',5,1,5,1,0,0),(40,'16000-16099','','MISCELLANEOUS INCOME',5,1,5,1,0,0),(41,'10000-10009','065.001.001','NURSERY  FEE COLLECTION',5,1,5,1,0,0),(42,'10020-10039','065.001.002','PRIMARY  SCHOOL FEE COLLECTION',5,1,5,1,0,0),(43,'19950-19999','','PROFIT ON SALE OF FIXED ASSETS',5,1,5,1,0,0),(44,'11000-11099','067.001.003','SALARIES AND EARNING OF MEMBERS',5,1,5,1,0,0),(45,'10040-10059','065.001.003','SECONDARY SCHOOL FEE COLLECTION',5,1,5,1,0,0),(46,'20100-21199','','ADMINISTRATION EXPENSES',8,2,8,1,0,1),(47,'26900-26999','','AGRICULTURAL , DAIRY & POULTRY EXPENSES',8,2,8,1,0,2),(48,'27100-27499','','COMMUNITY LIVING',8,2,8,1,0,3),(49,'22000-22999','','CONTRIBUTIONS',8,2,8,1,0,4),(50,'24400-24499','045.001.025','EDUCATIONAL EXPENSES',8,2,8,1,0,5),(51,'20000-20099','','EMPLOYEES REMUNERATION AND BENEFITS',8,2,8,1,0,6),(52,'24900-25399','','HOSPITAL EXPENSES',8,2,8,1,0,7),(53,'27600-27699','','MAINTENANCE OF BOARDS',8,2,8,1,0,8),(54,'23200-23299','','REMITTANCES TO GOVERNMENT/UNIVERSITY',8,2,8,1,0,9),(55,'24100-24299','','REPAIRS & MAINTENANCE OF FIXED ASSETS ABOVE 15,00,000/-',8,2,8,1,0,10),(56,'24000-24099','','REPAIRS & MAINTENANCE OF FIXED ASSETS BELOW 1,00,000/-',8,2,8,1,0,11),(57,'23000-23199','','TRAVELLING & CONVEYANCE',8,2,8,1,0,12),(59,'40000','064.002.001','CONTRIBUTION TO PROVINCIALATE',23,4,23,1,0,1),(60,'35500-35599','','CONSTRUCTIOIN EXPENDITURE',18,3,18,1,0,1),(61,'1111','','Hostel Food',2,2,2,1,0,0),(62,'','','Project X',8,2,8,1,0,13);
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
  `LOCK_BY_PORTAL` int(10) unsigned NOT NULL DEFAULT '0',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
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
  `CLOSED_BY` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 - Closed By Branch Office  1-Closed by Head Office',
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_project`
--

LOCK TABLES `master_project` WRITE;
/*!40000 ALTER TABLE `master_project` DISABLE KEYS */;
INSERT INTO `master_project` VALUES (1,'','St.Anne\'s Convent, Eluru',1,NULL,'2000-04-01 00:00:00','2025-07-02 00:00:00',0,'','',1,0,1,0),(2,'','Test01',1,NULL,'2025-07-10 00:00:00',NULL,0,'','',2,0,2,0);
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
  `PROJECT_CATOGORY_GROUP_ID` int(50) unsigned DEFAULT NULL,
  `PROJECT_CATOGORY_ITRGROUP_ID` int(50) DEFAULT '1',
  PRIMARY KEY (`PROJECT_CATOGORY_ID`),
  UNIQUE KEY `UNQ_PROJECT_CATOGORY_NAME` (`PROJECT_CATOGORY_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_project_catogory`
--

LOCK TABLES `master_project_catogory` WRITE;
/*!40000 ALTER TABLE `master_project_catogory` DISABLE KEYS */;
INSERT INTO `master_project_catogory` VALUES (1,'School',NULL,1),(2,'Public',NULL,0);
/*!40000 ALTER TABLE `master_project_catogory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_project_catogory_itrgroup`
--

DROP TABLE IF EXISTS `master_project_catogory_itrgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_project_catogory_itrgroup` (
  `PROJECT_CATOGORY_ITRGROUP_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PROJECT_CATOGORY_ITRGROUP` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`PROJECT_CATOGORY_ITRGROUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_project_catogory_itrgroup`
--

LOCK TABLES `master_project_catogory_itrgroup` WRITE;
/*!40000 ALTER TABLE `master_project_catogory_itrgroup` DISABLE KEYS */;
INSERT INTO `master_project_catogory_itrgroup` VALUES (1,'Primary'),(2,'Religious'),(3,'Relief of the poor'),(4,'Education'),(5,'Medical Relief'),(6,'Yoga');
/*!40000 ALTER TABLE `master_project_catogory_itrgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_report_budget_new_projects`
--

DROP TABLE IF EXISTS `master_report_budget_new_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_report_budget_new_projects` (
  `ACC_YEAR_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BUDGET_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-With Report',
  `SEQUENCE_NO` int(10) unsigned NOT NULL DEFAULT '1',
  `NEW_PROJECT` varchar(100) NOT NULL DEFAULT '',
  `PROPOSED_INCOME_AMOUNT` double(15,2) NOT NULL DEFAULT '0.00',
  `PROPOSED_EXPENSE_AMOUNT` double(15,2) NOT NULL DEFAULT '0.00',
  `HO_HELP_PROPOSED_AMOUNT` double(15,2) NOT NULL DEFAULT '0.00',
  `HO_HELP_APPROVED_AMOUNT` double(15,2) NOT NULL DEFAULT '0.00',
  `GN_HELP_PROPOSED_AMOUNT` double(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Proposed Government Fund',
  `GN_HELP_APPROVED_AMOUNT` double(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Approved Government Fund',
  `INCLUDE_REPORTS` int(11) NOT NULL DEFAULT '1' COMMENT 'To include to the reports',
  `REMARKS` varchar(100) NOT NULL DEFAULT ' ',
  UNIQUE KEY `UQ_NEW_PROJECT` (`NEW_PROJECT`,`BUDGET_ID`) USING BTREE,
  KEY `FK_master_report_budget_new_projects` (`ACC_YEAR_ID`),
  CONSTRAINT `FK_master_report_budget_new_projects` FOREIGN KEY (`ACC_YEAR_ID`) REFERENCES `accounting_year` (`ACC_YEAR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_report_budget_new_projects`
--

LOCK TABLES `master_report_budget_new_projects` WRITE;
/*!40000 ALTER TABLE `master_report_budget_new_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_report_budget_new_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_report_budget_new_projects_details`
--

DROP TABLE IF EXISTS `master_report_budget_new_projects_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_report_budget_new_projects_details` (
  `ACC_YEAR_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BUDGET_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-With Report',
  `DEVELOPMENTAL_PROJECT_SEQUENCE_NO` int(10) unsigned NOT NULL DEFAULT '1',
  `COST_CENTRE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PROPOSED_EXPENSE_AMOUNT` double(15,2) NOT NULL DEFAULT '0.00',
  KEY `FK_BDEV_AC` (`ACC_YEAR_ID`),
  KEY `FK_BDEV_CC` (`COST_CENTRE_ID`),
  CONSTRAINT `FK_BDEV_AC` FOREIGN KEY (`ACC_YEAR_ID`) REFERENCES `accounting_year` (`ACC_YEAR_ID`),
  CONSTRAINT `FK_BDEV_CC` FOREIGN KEY (`COST_CENTRE_ID`) REFERENCES `master_cost_centre` (`COST_CENTRE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_report_budget_new_projects_details`
--

LOCK TABLES `master_report_budget_new_projects_details` WRITE;
/*!40000 ALTER TABLE `master_report_budget_new_projects_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_report_budget_new_projects_details` ENABLE KEYS */;
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
-- Table structure for table `master_report_sign_detail`
--

DROP TABLE IF EXISTS `master_report_sign_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_report_sign_detail` (
  `ACC_YEAR_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ROLE_NAME` varchar(75) NOT NULL DEFAULT '',
  `ROLE` varchar(75) NOT NULL DEFAULT '',
  `SIGN_IMAGE` longblob,
  `HIDE_REQUIRE_SIGN_NOTE` int(10) unsigned NOT NULL DEFAULT '0',
  `SIGN_NOTE` varchar(250) NOT NULL DEFAULT '',
  `SIGN_NOTE_ALIGNMENT` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '0-Left,1-Centre,2-Right',
  `SIGN_NOTE_LOCATION` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-Above Signature,1-Below Signature',
  `SIGN_ORDER` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ACC_YEAR_ID`,`SIGN_ORDER`,`PROJECT_ID`),
  CONSTRAINT `FK_AC_REPORT_SIGN_DETAIL` FOREIGN KEY (`ACC_YEAR_ID`) REFERENCES `accounting_year` (`ACC_YEAR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_report_sign_detail`
--

LOCK TABLES `master_report_sign_detail` WRITE;
/*!40000 ALTER TABLE `master_report_sign_detail` DISABLE KEYS */;
INSERT INTO `master_report_sign_detail` VALUES (9,0,'Fr. Pius Thuruthiyil cmf','Major Superior',0xFFD8FFE000104A46494600010101006000600000FFDB0043000201010201010202020202020202030503030303030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080103032003012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFB6385A4DFC7E34ADF76931C7E340085FE5A5DDCD047CB4B8E680137F028DFCD00702803E6A0003F3481FE5A5039A00F968002FCD217C5291CD0C39A000BF346FE68239A08F9A800DFC1A37F1F8D047068C71F8D00217F96977F1F8D047CB4638FC68002D46FE6948E6900F9A8000FCD1BFE5A00E68C7C9F850005F9A42FF2D291CD047CB40017E68DDCD04734B8E6801A1FE5A5DFC7E3401F2D18E3F1A0037FCB46FE3F1A31F27E14638FC6800DFCD1BF9A08F9A803E6A0003F3485FE5A5039A08F96800DFC7E3485FE5A5C71F8D047CB4006EE68DDCD2E39A31CD00343FCB4A1A803E5A5038A00687F9694BF3401F2D04734006FE68DFCD047CD401F350001A8DFF2D281C5263E4FC2800DFC7E3485FE5A5C71F8D047CB4006EE680FCD2E39A4039A0040FF002D287E6803E5A00E6800DFF2D05F9A31F27E1411CD001BF9A37F3411F35007CD40006A40FF002D380E2900F96800DFC7E346FE0518E3F1A00E05001BB9A03F34B8E6900E680103E6943F3428E68039A0042FF2D297E6823E5A08E6800DFCD01A823E6A503AD0026EE6903FCB5F3E7ED2DFF0554FD9FBF642F881A3785BE217C50F0E787B5FD72E96D20B29256965898F4698206F253381BE4DABCF5AFA02D274BCB44962759239543A3AB6430232083E940126FE3F1A37F028C71F8D00702800DFCD26FE6940F9A8039A0037F3406A00F9A940E2801A5FE5A52FCD047CB411CD001BF9A3773411F352E39A0040FCD207F96940E6803E5A0037F1F8D05A8C71F8D291CD00377F34BBF9A08E6823E6A0037F346FE3F1A00F9A8C71F8D00217F9694BF3411F2D047340016A37734A4734639A0040FCD207F96940E6803E5A0037F1F8D1BF9A31C7E3411F350005F9A42FCD796FED5FFB65FC3CFD8B3E1C5CF89FE207882DF48B1B75263841F32EAE9BB24510F99D8E3B57E297EDDBFF00071D7C6DF8E5A85E786BE15F8564F875A15E49F66B7BB92533EAF7EAD8DA418C6622411858C3373F7A8F31C62E4EC8FDAEFDA4BF6DCF84DFB20787DB53F895E3FF000D7842D8745BEBB5133FFBB10CBB7E0B5F2AE8DFF07377EC75AF7C5083C2D07C4C9567B994451EA1369173169C58F4CCECA1573D32703DEBF293F674FF008216FED09FB7E78AA4F1278AB41D5B4BD3E76FB43EABF10B52B856BD66C1DD1C2D1C970DD4E3CC0A31C66BDB7F6CDFF8223FC2AFF8278FECEF0DE7893ED1F1235ED4F79304D0AD8E93698FBAB1C71E64C0381969327AF19C0B8A4C1AB6ECFDD7F0978D34CF1E68169AAE8D7F69A9E9B7D1ACB05CDB48248A64232195870456AD7C35FF0006FCFC5C1F173FE09E7E1AB88F40B3F0E5AE9B35CE9D6D656A5CC70C505C490A8CB12D9C264E4F535F72D4269EC2D7A88DF76933C7E34ADCA9A6EDE3F1A0009F96973CD215F96976F340003C0A01F9A902F0280BF3500283CD203F2D0179A02FCB400A4F348C79A0AF3432F3400A4F3413F35215E682BF3500293C1A0B607E354F59D6AD740D3E6B9BB952182252CCCC78000C9AFCB1FF008296FF00C1C2565A5E9F7BE05FD98EE74FF1A78F56F9F4FBED526D3E6974DD27603BCA3E0472C9BB0A304A839CE682A30727647E887ED37FB5E7C3AFD8F7E1C5CF8A7E22F8AB49F0CE8D6AA4996EA601E4207DD441F33B1F4504D7E5EFC64FF83AA6EFC7DACFD83F677F827ADF8EE0DE633ACEBF29D3ECF3BF00A46B9765239C92BF4AF17FD93FFE08B7F18BFE0A3FF13ED7E25FED03E25D47C4515C6E2EFAB6E36F10C8205BC580BC76C285F7AFD78FD9A3FE09B1F097F65BD060B7D0BC29A6DCDEC782F7D770ACB33B7A804617E8A2835FDDC7496A7C3BFB2BFF00C16F7F68ABFF001B695FF0BABE107C2FF0978475498C7F6F8BC631E9B790A96F95D60B963E6000F232A4FB74AFD4DF0B78B74EF1AE8B06A5A55EDAEA16374A1E39EDE512A3020742B915F9B5FF0005B9FF00821F7C31F8F3FB39789FE21F817C09A4E9BF143C281FC42A6CA374FF008481210649AD2445383E6283B4E38603D4D78F7FC1B4BF1E75ABAD5D342B3291F827C496735E259823FD0AF1429F5FEEAB2E001CF5A4B57614A1170E689FB2E0F3467E4FC291568DBF27E14CC45279A427E5A0AF3415F9680149E68CF348579A5DBCD00203F2D2E78FC6902FCB46DE3F1A005CFC9F8519E3F1A4DBF27E146DE3F1A00527E6A01F9AA9DA6B9637FA8CD6B05E5A4D756C409A14955A484E33F328E47041E7D455B0BF3500283CD213F2D0179A0AFCB400B9E3F1A427E5A36F1F8D057E5A005CF34679A36F346DE680101F96941E2902FCB4A178A00407E5A5279A40BF2D0579A00527E6A01F9A90AFCD405F9A80141E28CFC9F850178A4DBF27E1400B9E3F1A427E5A36F1F8D057E5A005CF3403CD1B79A40BCD0000FCB4A0F34817E5A02F3400B9F93F0A09E6936FC9F850579A00527E6A01F9A90AFCD405F9A80141E2901F96942F14817E5A005CF1F8D26FC01515F5EC3A659CB3DC491C1040A64924760AA8A392493D0015F8E9FF00055AFF008394BFB1758D4BE187ECC6965E26F10246F6FAAF8CE53FF12ED11C12ACB00200964183F36768E3AD05C2129BB44FD09FDBF3FE0A8BF08BFE09C3F0EDB5DF885E204FB648E21B3D134E2B73AA5FC84642A4208238FE26C01EB5F9D5E30FF83C074AB5F1A5ADAF87FF00671F887A968F72F1A09AFB5186CEFA4DC79F2EDD524DC71D06FE7DABE6FF00D93FFE083DF1BBF6D1F86D7DF185FC45A236BDE2864B9B4D4FC6335C5DDE6B1D9A7053FD5C67185047E98AFB93F65AFD91FE247FC1313C136F6FF157C19F0A7C77E02D7EE7EC9E20F14F8796E22D6FC3A2722349E55994892DD49018C6559061B040341D6E8D182F79DDF91F59FF00C13CFF00E0A67E1FFF00828269BAC8B2F0478FFE1F6AFA1EC6974DF15E9A2D25B889C712C2CACCAEBD8E0E471C735F4B03CD7F339FB3E5F78B7F63BFDAEEC7E365AFC40BDD62D3C2BF13EFB42D434EBFD72597ED1A23DF1B3901563B5B62BAC99E980A6BFA618C6E5CFB5073D6A6A0FDDD8527E5A5279A42BF2D784FEDFF00FF00050EF875FF0004E6F82D73E30F1EEA3B09564D374C83E6BBD56718C451AE3A9C8C93C0A0C926DD91ECDE2CF16E9BE07F0F5E6ADAC5F5A699A669F0B4F757573288A1B78D412CCCC78000AFC5AFF8280FFC1C71E25FDA77E27DA7C15FD8DACEF757D53599E4D3F50F16B69CF234793B3FD093F1FF005AE31C8C0E735E7DA66A1FB597FC1CCBE34D2E79907C1CFD99E29E413C76D72CDFDA68ADB1D5CF06E1CE080301179AFD2BF837FB367ECE1FF0432F8350BD8C763E1E9BC49762C06AB7EC24BED66EC42F2AC5BF1F2AED8988518518141BC63086B3DFB1F811E07FD95F4BFDA13E3958784FC51AB5DDD78BFC57ADC3A6EADAE6AD13DDEA571746E111C2063CB9208001C7E15FD5C683A5C7A168569630FF00AAB381204E31F2AA851FCABF9F1FF820E780EEFF006F9FF82A24DF11B57862B7B6F05EA5AB78EEE2D618B6476F3DE5C4D0D8C23391B42B48E0751E5A9AFE85D530946C5E2EA733487678FC68078149B78FC680BC0A0E4141F9A901E680BF350179A00507E6A01E2902FCD4A178A00427E5A5279A42BF2D0579A00527E6A33CD215F9A976F340003CD203F2D0179AF9BBFE0A7FFF000504D33FE09E5FB34EA5E2AF26DB54F13DC016FA269526E6FB64EC4282CA9F36C04F38A126F603E92CF1F8D04F35F0FF00FC10E3FE0A6BE2BFF82947C11F18DE78EF46D1B47F16F8235D1A55E2E94AEB69323C2932150E59832862AC33D56BEE02BCD01B084F34A4FCD48579A0AFCD400A0FCD4678FC6902FCD46DE3F1A0009F96949E690AFCB415E680149E68CF3415E68DBCD0000F3480FCB405E6993CC9696CF2CAC91C71A966762005007249A007B4811327000E493DABF3A7FE0A99FF0005E0F0A7EC9965A8F85BC0B77A7EB1E3440D0CD75316FB2696F9DBCE07CEE0F38E95E73FF0592FF82BE49A1DB6A9E01F867E29834B8ECB6A6ADAE585CABCAFB8956822E386E40DCA4F3C5705FF0004ACFF008227EADF1DF54D0BE2D7C6F9AE6E346B674BFD07409DF74D752125BED576C472C7A04C900568E3CB1E6EA34AFB9F22FECD5FB1CFC74FF82D278F3FE121D47C47AD6B16AD74E6F3C57AD4134761126E2765BC6C0060BF7404E3D6BF6BFF00606FF8246FC20FD80F45826F0EF876CB52F173C4A2F3C437D179D7733E3E6D85891129FEEA607AE6BE97D03C3763E14D261B1D36CED6C2CEDC6D8E0B78C471A0F60062AE95F9AB329CDB565B0280B9E315F941FF00070F7C6A8BFB7349F097D92E5FECD62D349702E1122899FA12B9DCD818278EDDEBF5764E14F1935F831FF05B6F02699F17FF0069CD1BC130EBD77AAFC49F887AAAE9AD140AED1E990C8762E02E388E3CB1EFC5690D13910936F43EECFF00836A7E1DDD781BFE0959E08B9BB657935EB8BDD4B852A47997731E87B7423D88AFD00AE2FF0067CF855A77C10F829E17F09690B22E99E1DD360B0B6F3061CA47185048F538C9F726BB4ACC043D28EDF8D0FF0074D373C7E3400A7EED2F7A613F2D2E79A0070E8281F7A9A0F02807E6A0070EB483EED203CD203F2D003CF5A46EB484F348C79A0079EB589F107E20E91F0BFC297BAE6B97F6BA6E97A74466B8B8B8902471A8049249AA9F16FE2CE81F047C01A9789FC4FAB59E8BA2E93035C5CDDDD481238954649249FD3BD7E197ED2FFB50F8AFFE0BD7F19AD3C37A1E9FACE9DF0734CD425834BB052D14BE289D0A85BA9D57FE582E0B2A9C839C9E98A0B84398DAFDB37FE0B3DF10BFE0A59E30BAF017C0217BE1CF014D39B43AD8B73FDA5ACFDE49022863E5C0DD0311B9B9E9C67EB7FF008262FF00C114B43F849A1DB7893C7FA55ACF7B7312BC5A6B2E36B120EE940EA78E9F9D7BF7FC13D3FE0995E0CFD8A3C0B62F16976727897C8549A7541B2DFF00D94038FC6BEA2CF1F8D3D3A152A9A72C7622B1B08B4CB28A08238E18214091C68B8545030001E952AA90CC4B6413C0C74A427E5A5CF1F8D23229F89DF6681784AEF1E44991EBF29AFC24FF0083605C5EFC67884C43B0BED6651193F718BCB838FC38FAD7EB9FFC149FF686BFFD97BF62CF1EF8C348B23A9EB765A6BDBE9366393757B3910DBA7D0C8EB9F606BE1BFF00837A3F60AD6FF669D5752BAF12DAD9AEA9A3E9E12EDE393252F6EF133A8E3B296079E3755456ED9AABA83F33F56875A3F83F0A6A9E68CFC9F854990E3D690FDDA4279A427E5A0079EB477A693CD19E680147DDA5EDF8D301F96973C7E3400EFE0FC2BCD3F6C7F8E03F66DFD957E20F8EF1BE5F0BE87757D6F18C6669D636F26319E373485140EE5857A4E7E4FC2BF3CFFE0E62F8EBADFC22FF008273C5A2683666FEEFE2478AB4EF0CCB0A20794C2ECF3BEC078DC7ECE067FDAA0A82BC923F243FE095F77E35F869FB6CFC2DF8957D7DE2D9FC71E34F1758C1E28375A94BB2E21BC9F1319533829B483CF002815FD3E29CB57F391F15FC0FFF000AEFF681FD9B3C1B68DAA4B178E359D3A4371673C688F3477D1C72D8EF46CEE86364DE33904E3E9FD1A42362819E831D6837C4A8A92E5241D690FDDA4079A427E5A0E61FDBF1A43F76933C7E3484FCB400FEF477A6E79A33CD0028FBB4A3A5301F96941E280147DDA53D6980FCB4A4F3400E3F7A81F7A9A4FCD403F35003874A3F83F0A683C519F93F0A00776FC690FDDA4CF1F8D213F2D003FBD03AD373CD00F3400A3EED28EB4C07E5A5079A0077F07E141EB4DCFC9F8504F3400E3F7A81F7A9A4FCD403F35003874A8E69D6DE167760A8AA59989C050075A76EC0FC6BF24BFE0E2BFF0082A8DFFC2FD12C7E08FC3DBBBE8B5FF12B236ABAB69D29325A441C06B6408092EC0F38391C50694A93A925147927FC1763FE0B2BAF7ED07F10EEBF66DF80175717714CDF62F136B9A6B132DC4ACC50D85BE3193FDE6E8335F4CFFC11F7FE0DF3F067EC6DF0CA0D53E27E9DA4F8D7C6D7CE2E7CAB9844D69A6068D41408C30CFD72DCF359DFF042FF00F8229E8DFB327817C3FF0015BC6F14D79F10B5986E6E8DB5DC41859C770CA577EFCB1942A824F1CB1AFD401C0141D152AA847D9D27EAC874BD2ADF44B186D2CE086D6D6DD047143120448D47401470051A969B06B1A7CF6B750C7716D728D14B148BB92446C82A477041A9B3CD00F341C67F2B7FF050AD2ADFE05FED15F157E18CD6F344DE1AF8B126A76BE4C654DE69F7B25B4A200A33C15240C75E2BFAA1B3977DA46D8C6501C1ED5FCE97EDBDE1ED43E28FFC16FBC23E16B992D2EEEFC53F136CAEA636AA4B8B35BC0511C753B638793D07D00AFD58FF0082CB7FC15DBC3FFF0004C5F817B6C00D6FE26F8A164B2F0C68D0A79ACF7006049228FE052CB91D4F414753A6B45DA3DCE9BFE0AB1FF0560F05FF00C1337E119B9BF9AD754F1D6B50BC7E1DD0049FBEBF9F184CA8E766E2067BF4AFCD3FD8B7FE091DF1BBFE0B1BF1BADBE3B7ED73A8EB7A4F8485DFDA74DF08CC6483CD8D58910C70313E4DBE42E58FCCE3A601AF52FF008242FF00C1243C77FB557C669FF6A7FDB22D2EB5CF1D4F3A4DE13F0DEA6805BE9518FDE2DC34192170E498E3E8396232463F62C288C00A000380076A08E6F67A2DFB983F0CBE157877E0AF81F4FF000CF84F45D37C3DE1FD263F2AD34FB0816182DD7938551C75249F526BF1C3FE0E78F8CD65F13FE3B7C36F87CE3C9D13E17C5278CFC41A9AB65609240D0C56D81FC450337FC0857EB77ED51FB46F87FF0064AF801E29F887E279FC8D1BC3164D752E325A67FBB1C4A06496772AA001D5ABF9FF003F07BC5BFB7A7ED51E02F85FAEDD93E29F8DDE2997C61E3D9E32649B48D2E2733F918E7CB58D1238549E092BEB54968146C9F3B57B1FAABFF0408FD862E3F64BFD94AFBC51AF580B1F187C59BC5D7EF212C19ACECF605B2B738E01111DEC0701A56F4AFBB07DDA834CB08F49D3E0B5846D86DA358907A2A8C0FD054A0FCB526729393BB1FDBF1A07414DCF1F8D00F0282470FBD483AD203F35203CD003C7DEA074A683F3500F1400A7EED29EB4C27E5A5279A0071FBD477A693F3519E680333C67E33D3BE1FF0086AEF57D5AEA2B3D3EC937CD34870AA3381FA915F865FB787ED8DE36FDBEBC3FE2DF1BFF00C23B07873E14DACE74BF0C5F4CD8BED50413112B85391F3EF523A10335F59FEDE9F1C7C59FF0516FDAEACBF665F843ACD8C3E1FD12E2DAF7E246AA236F3B4EB459833A44E7E52CE02A2E3BB31FE1AE1BFE0E2EF0D784BE057EC3FA469C9716B61A5F8725B5B7D134F85364ED75E61692438C291E50FEEF539AD609A7A762A3CBD4EE3FE0D68F0BE9F65FB0678BB5EB38A5493C45E3ED4DA6691797F256185707B8F94FEB5FA607AD7CA1FF000446F80D79FB3A7FC12F7E12E83A9C0D6DABDDE9675BBF4660CDE75ECAF74771EE409547AF15F5693CD6412DC53D694FDEA613CD7CCBFB7E7FC15ABE0EFF00C13AFC36D71E37D78CFACC88FF0064D134F5F3AFAEDC701553B65B8C938A093E9D1F7A8EDF8D7F3FFF00B357FC15C7F6A5FF00829A7FC15A7E189F03C9ACF843E1BDBEA7E7EA1E1E8616F24E8F93E75C5E93942768C2E71F3631CD7EFE459589416DC7B9F5A06E2D6E3CFDDA53D6984FCB4A4F340871EB477A693CD19E6801738CD7E5AFFC16F7FE0B056BF0B7C03AD7C32F0469D7FA96A97C5B4FD5752C3DBDB5B0231B2394100B16C0E0D7A77FC1673FE0A93A07ECAFE09BAF01E91E2BBBD0FC6DAA401E6B9B345DDA740C4AE4C8C18239FA138F4AF8CBFE08C1FF0004B3BFFDB03E2EBFC6AF8B51EA5AB783747D44DDF8761BF9CB8F10DEAB1DD772A939291B8C27CA031F9BD2AB6571C5753BBFF8249FFC105AFEEFC6F65F167E3745A75CE9DE58B9D07C2AD199C44EC772CF73E66EFDE2E06D51F77EB5FB0FA5E956DA1D8C56B690456F6F08DA91C6BB5507B0152451AC110550155780074029C4FCD53D6E21C7AD07EF5349E6AA6BBACC1E1ED2AE2F6EA4115BDB21924727A019A00F28FDB7FF00695B1FD9A3E08EA9AACB756F0EA13C4D0D9AC8F8DAECA4073DF683D4D7E537FC11DBE153FED7FF00F0518D57E29DFDDDA78862F03C13C13EA8859E09351B92A4A44C46088E1520E0F05C7AD791FF00C154FF0069BF19FEDF5FB46E9DF0F3C2FA2C9AD6B9E28D424D3B49B2B7BF9E058E34976892545C808AA3733123201FA57EC7FF00C1313F620D3FF609FD91FC39E05B78A0FED0B64F3F519A3FF978B97C191C9E32723AFA015AC9A51F66BE6547DDF7BA9F450E8296980F4A7D64488DF76931C7E34ADF74D373C7E3400A47CB4B8E69A4FCB4B9E68000381401F35203C0A01F9A80140E6803E5A4079A01F9680148E6A1BDBC8ACADA49657548E352CCCC70140EE4D4A4F35F9BFF00F07007ED5DADF86BC03E11F839E08D54D9F897E27EA1F66BB96D65FDFDA5846374CCC14EE5563B57771D48CD171A573E71FF008298FC78F167FC15BFF69E93E067804ADF7C27F0DDEA0D6A68CB01E20D42390836AAE3AC316D566238278ED5FA4DFB05FF00C13DFC2BFB197822CD6D6CEDE5F107D9D6296E4200B6EBB7063880FBA38E7D6BCF3FE0927FF04E8D17F644F85161ABC96CA75AD4ADD648F72F36EAC01663FEDB124927D6BECB27E6A168AC54DF44291C1A31C7E3484F068CF1F8D040A47CB4638FC6909F96B37C63E2BB4F03F84F53D67509560B1D26D65BCB895CE1638E352ECC7D8004D007CBDFF051FD1F44F8B1E21F046897B7FF006883C21AB7FC2477DA6C33637C896F32DA9997BA2BB1703BB2A9ED5EB1FB13FC299FE177C10B76BEB8B9B9D57C49732EBB7AF39F9E37B821962E8388E3D883FDDAF9CBF62FD34FEDC1AA4BF15EE2DE1B0B6F185F26AAC8257F35EC62216D6329221FBD1247B80C0CBBE0D7DD0A36703803803D282DCB4E54281CD18F93F0A4079A33F27E1410291CD047CB484F3413F2D00291CD2E39A693CD2E79A0000F968C71F8D203F2D19E3F1A005C7C9F8560F8E3C1D6FE2D934A37561A56A16FA7DD9B974BDB6598A62375568F20ED70CC39F4DC3BD6EE7E4FC2BC87F6F5FDA16C3F659FD8F7E2078E3509DEDD747D2655B7655DCCD732FEE60555E324CAE83AF7A06B567E1B6AED7FE2DFF82A1FECAFE1382C64D36D74EF8ADAD78A65B329E6490C97BABB5C6D2ABD1446BD7EEE067A57F45017E6AFC1BFF8256FC1FF00F8597FF05AAF090B655BF4F835E1333EAD2CECE6549DED442A7E6EADBEE14FE35FBC60FCD495FA9AE21253B2140E6823E5A4079A09F969988B8E3F1A08F96933C7E3413F2D003B1CD18E6933CD19E680003E5A5038A683F2D283C500007CB411CD203F2D04F3400A47CD463E6AF2BFDA6FF6A1B2FD9C6FBC09632E977BAD6A7E3FF1145E1FB1B6B5754316629679AE5C9E91C50C2ECC7E83BD7C1FFF000492FF0082847ED35FF0508FDB9FC6FA8EBD1785F4CF803E146D46D2D52C6C479F7537DA5A3B58DE62EC4CAB1C6CED8C0C30C8E4506B1A527173E88FD4551C5263E4FC29149DB467E4FC2832171C7E3411F2D2678FC6827E5A007639A4039A33CD203CD00281F2D0073480FCB403CD002E3E4FC28239A4CFC9F8504F3400A47CD463E6A427E6AADAC6AF0683A5DCDEDDCAB05ADA44D34B239C2A2A8C924FD05007C91FF059CFF828E5B7FC13E3F66412E9B3447C77E349FF00B27C3B0B7CDE5C8DFEB2E19473B234DCDF5C57C25FF0419FF826841FB4DFC50D57F69AF892DAA6AC96FAC31F0A5BDEAB04BB9232C25BD911C7CC19C9DBF4CD7CD5F142FB5EFF0082E87FC15EF4B82F22BC4F09CDAD4BA2F87D60BBCC36BA1D8B97BDBE4E7EFCB80A1877900F6AFE8AFC05E08D37E1AF8334ED0746B486C34AD22D92D6D6DE15DA9146A00000A94DDF53B1CBD953E55BBFC8D7440A98A50381499E3F1A01E0551C63B1CD66F8B75B87C31E18D4751B8CF91616D25C49DFE5452C7F415A39E6BF3DFF00E0BBFF00F0561D2FF60EF879A4F80F4FB39759F1C7C48B7B986DAD216C1B5B7084191F8E8CCC147E3E942D5D8A8A6DD91F921A27ED77158FFC1616FBE377D91F535F065E5E9B0B68E10B2CA7ECB244A02609660CFC66BF51FF00E0953FF04DDF12FC5EF88F7DFB4BFED2962FAC78E3C4371F6EF06681A9BF9F17846C655560FE59E16E1C6320F28063A935F23FFC1B2DFF0004FB7F8E3F16FC63F19BE205879B0F853558E1D1C46E44175A814679D9BFBEB1AC88B83C6F1ED8AFDE75E28D3A1D55EAD97247B6A1B7083E94AC39A427E5AF2EFDB53F6A0D1FF633FD96BC71F1335D9152CBC25A4CD7A88C466E660B88A151DD9E42AA07BD0719F98DFF0005E7FDB3E3F8C5FB53E8FF0002B4EBC8C7837E13430F8EFE2216FBB712C7896C6C8E78233B6561FEED7A5FFC1BB3FB2DEA5AED9F8D7F6A3F165AADBEADF18596DBC336AE9FBCD3B4485CEC39CF1E73FCD8C748D7D6BF323F641F851E3AFDBF3E27C5E19F116B37517C41FDA6B5A9752F156B1043F689F4ED1615324C49E8881523850640F9D4735FD2F7C3CF02E9BF0BBC07A3F86F46B74B4D2741B2874FB385170B1451204518FA0141D352F4E3ECCDAC734807CB4679A407E5A0E6171C7E3401C0A4CF1F8D00F0280140F9A8039A407E6A01E680140F9A940E29A0FCD4A0F140011F2D0473484FCB413CD00291F357CDDFF0549FDBAF46FD837F658D6FC493DEA0F12DE426D340D3D6233CFA85DBE1551230413C9EBD057D01E2BF14D87827C397DABEAB7515969BA6C0D73737129C2431A825989F402BF2A3F652B19BFE0B87FB7EDD7C63D6E35BCF81FF00086F6E748D074E7DC60D57501C09F9E19506D271C6E6F6AA85AFA8ED73EA8FF82377EC7CBFB33FEC9BA7F89B598E4B8F889F12ACE0D7BC49753A324C2478F7C569873955855B6ED3D0EE3DEBF327FE0B7FE3EF167EDD9FF0509F859FB3CDAFD8E76D7756B58268AD61595ECE33286B8904B9F976C08C49C1CD7ED97ED352DA699F00BC451DC4C96701B428A45C7D9F18E400C0823A76AFC5BFF820B786B50FDAFBFE0B59F12BE2CEAB6909B5F86FA0CD676B241299228A7B8B86B78FE639058C314EDEDC5277E5B8D2BBB9FBBDA168D0F87B44B4B0B70441650A5BC60FF750051FA0A4D7F5FB1F0B69171A86A37505958D9C6659E799F647120192493C01547C75E3CD37E1C784AFB5AD5EE05B5869F134F2B1E490A09214773C70075AFC5BFDBEFF00E0AFFE3FFDBD3E29AFC08F805A1B6BFAEEAC6E0F97A78632E9F0AA9092DCBBFEE94E769656E1338CB1A2DD44A2D9F4A7FC1477FE0BC307C20D7B4AF879F027464F89FF0014FC5B88B49B0B3CCE21DD91E74814E428E0E0E3EB5F96DFB56FECDBE21F829AE5DFC40F8FBE2D1E24F8C5A879D7175636CBBA1D2A162196201C9CBE49E14F19C739AFD25FD967FE09FF00F0EBFE0841FB31789BE38FC44D40F8AFE33EB36222BAD41B68637931023B1B253D332300CFDF04F0062BC13F60DFF8267E87FB7E7ED8BA9F8BFE20F8E7C4FE34BFF0CDFDB7883C4D0978FF00B38DCBC9E75B69C3E4C9450A19867254267AD3E66958D2364EFD8FBABFE084FF00B0FB7ECAFF00B20E97E22D7ACE4B6F1D7C4481756D5E3955775946ECCF05B0C740A8EB91EA4D7DBD8E3F1A643108102200A8A30AA06001E829D9E3F1A933726DDD8A47CB411CD213F2D04F3408711CD78EFEDC7FB61E87FB11FC04D53C69AC41717F2DB26CB2B0B71996F266202A8F604824F619AF5BD42FE2D2ECE4B8B8952182043249239C2A2819249F415F849FF0542FDA3FC45FF0524FDBD344F87FF0D7C40352D0E28DED34FB4B27DE0CA3892E1BF871D79F41C55452F8A5B21C5734B94E77F623D07C57FF000570FF0082905EDCF8BB4585745FB1C9ACEBB752D9B3C4D10982DBC41586D567CBFCA790AA0F7AFDEFF05F8374EF007852C746D2AD20B1D3F4E84416F042811235038000E057887FC137BF61ED33F618FD9DB49F0D44DF6DD7A48565D5F507E64BA9C81BB9EBB41E809E2BE8207E5A4DDF51C9F442E38FC6823E6A4CF1F8D04FCD48909381F87AD7E4CFFC171FFE0A6563612EA9E00F0EEA39B1F0E44B36AF3DB5D1533DC367CB846C39DA08E7FF00AD5FA05FB7BFC766FD9FBF65FF0014EB36A637D61AC64834E85A7585A59997030C7A6339AFC18FD92BF6777FDBEBF6C0F0E7C39D12D4DC6996F74BAFF8D7519BCCB846823972D0B484618C8C0C6013D039C62AD691E6EA1CB7DCFB7BFE0DC4FD8675A99350FDA43C699FED2F19DB1B2D12CA588FFA2DA2C84F9E0B7CC0C8413FEEE3D6BF5BB1C7E3595E09F08D9780BC2D63A3E9B6F0DAD8E9F0AC104512044455180001C0AD4CF1F8D66AF6D4A93BB140E053A980F4A7D32447FBA69B8E3B75A73FDD34DCF1F8D00211F2F6A5C73DA909F96973CD0000703A5007CDDA80781403F35000073DA900F97B5283CD203F2D00731F1A3E29695F057E17EB9E29D6AF6DB4FD3744B392EA79E76DA91AAA93C9C7B57E557FC122FF00671D7FF6DAFDA53C43FB417C55D3E0BAD4B59B9924B75685C4105A2B1FB3C1187E400BCF404F27BD773FF05DFF00DA2E7F8B3F133C0BFB38783B54BB3ADEAF7706BFE2882DC00B16968CC238E46247FAD9820DBCE551ABEF2FD8FF00E05C3FB3F7C0DD234411471DDF9425B9DBFDF23A75ED42BA7CDD0BD1474DCF50489618D5102AAA80001D00A711F376AE0BF68BFDA87C01FB267C3F7F14FC46F15E91E11D06395203777F388D5A4760155475627D002783E95BDF0D7E29F86FE32784EDF5FF0009EBBA5788F45BBC886FB4EBA4B882423A80CA48C8EE2820DF2383D28C71DBAD04F068CF1F8D00211F2F6AF927FE0AA7E3D9FC57E18F0C7C15D06F1975FF008A7A8A5B6A3042332AE8A87376D93C00FF002439CE7F7A71C8AFA8BC6DE34D33E1D784351D775ABEB6D3748D22DA4BBBCBAB8904715BC48A5999989C00003C9AF913FE09F9E043FB4CFC6CF1A7ED1FAC49A94B6BE27B88EC7C1F677736F8AC74C8102078D4FDD32486473EEDED537BBB1A42CBDE67D65F0D7C0D65F0EBC13A6693656F0DBC3656E9085440A06140C607F8D6F01F376A3A62807E6AA330039ED463E4EDD28079A33F27E140011CF6A423E5ED4A4F3484FCB400A473DA8C73DA8279A33CD00201F2F6A5C71DBAD203F2D2E78FC6800C7C9DBA57E77FFC1C4FE33B8BCF81BF0A3E1CDBC7E6C1F107C7F62754C004A585806BE95B27A61A28CE7DBDEBF4433F27E15F857FF05DCFDA427F1D7EDF93ADAB3C3A6FC1ED326D0A1919888EE2FAF2DA39A7F976E49559AD93233D5BD0D4CAFD0DA82BCD23DCBFE0D9EF87A7E20F8ABE3D7C6CD462C6A1AFF880786EC9C93916B0013640207DF592DC9FF707A57EB101F376AF947FE08BBFB1F5CFEC5DFB067863C3FAADBC36DE24D76493C41ADAC531955AEAE003F78E0E446B183EE0D7D5C0FCD4D5FA9136DCAEC00E7B5211F2F6A5079A427E5A640B8E3B75A423E5ED4B9E3F1A427E5A005C73DA8C73DA8CF34679A00403E5ED4A071DA901F96941E280100F97B5121C7A500FCB4ADC9A00F817FE0A03E386F0C7FC154FE0649ADDFF0093E1DD2FC1BE23BAD2AC95413A86AB2A25B940719DDE4B71FEF1AF57FF008239FECB371FB24FEC0BE0FF000E6A7A7C1A6F882FDAE359D5E28DB77FA45CCCD200CDDCAC6635FF0080D7CE5FF05A7F89FA77ECEBFB5EFC1DF114169E0AD23C5BE33B1B9D034BF16F8AA693FB3F4A5865599ED8AAB615A5F3787E3EEE09E95F7EFECF3E2AD5BC69F067C3DA9EBB168D06AD7568AD709A4DD9BAB2C8E018A421495200238E338ED41B49FB8923B351C76A31F276E9403C519F93F0A0C431C76EB4847CBDA973C7E3484FCB400B8E7B50073DA8CF3403CD00201F2F6A5039ED480FCB4A0F340063E4EDD28239ED467E4FC28279A0008F9BB57C3BFF00070B7ED49ABFECBDFF0004D6F15CBE1AB8B9B6F1478BE683C3BA53416A67264B870AE09E0265377CC7A1ED5F7113F357E7C7FC1C7DF043C63F1ABF62CD03FE115D22FB5AB5F0DF8AACF59D6EDEC61F3AE859421D99A341CB1DC1460027E6A0BA6AF2499CD7FC1BABFB09786BE14FECD7E19F89F3E9EEBE2FB8D2A5D06079AEBCFF00B25B09F74A060EDDD248A0938CE140ED5FA5607CBDABE40FF8236F8D34DF0BFEC91E0CF86DAC5CE99A3FC48D2B4A7D6353F0C89556FB4FB7B9B879227962CEE1949133C75E2BEBF07E5A0AAFF1B171C76EB401C0E94678FC6B88FDA0BE3D681FB39FC31D47C4BE20BE86CAD2C61690191BEF900F18A0C8E3FF006F5FDB83C1FF00F04FDFD9DB57F885E309646B5B0022B5B3B71BAE350B8721638A35EE59881ED5FCF0FC78F893E31FDA0BC5BF13BF68BF8BF05CDBEA9F656B1F0AE853BEF6D22DE57FDDC785FE23F2F6AFACBC35AAF8B7FE0B73F1C6F3E3E78C3ED1A77ECD1F0552EAF74BB6BA5090788F52B7525308DCB22B6D25BDB1D49AF37FF827F7C38D4BFE0A59FB6D780743D4E39BFE11CB7D467F889E298BCB2233656F3A8D3ED5B1C0F31CC791DC2BD07753A6A09BEA8FD78FF8233FECC127EC9DFF0004E7F86DE1DBF865B7D7F52B0FEDFD716639717F7A7ED1329EB8DA5C281E8B5F5181CF6A6C4A2350AA00006001DA9C0F341C527777108F97B57E277FC1D1BFB52DB7C5EF8B9F0C3F673D0B57561A6DDFFC257E34815C8862854016B14A57BFFAC7DA7FD83DC57ECBFC4AF883A5FC26F875AE78A35CBA5B2D1BC39A7CFA9DFDC374860863692463F45526BF985D2753D77FE0A5FF00B6AEB1AE8B6BA8BC53FB4578B62D3EC1028DDA768EA79653E91D921393FC40D07461609CEEF647EB67FC1B8BFB36C1A57C0BD7FE335F5808AF7E20DC8B0D019C7FA9D16CCB4713479E556694CD27B8D86BF4A40E7B561FC34F879A4FC23F87DA1F85F42B54B2D1BC3D630E9D650270228624088BF9015F247FC1517FE0B7FF0009BFE09B3E16D5AC2E755B4F12FC4982DC3D97866D26DD2991BEE09D973E503C9E79C0A0CA72739DCFB07C5DE32D23C01A05D6ADAE6A7A7E8FA5D94665B8BBBDB848208107566762001F535CD7C14FDA4FE1F7ED1FA3DC5F7807C6BE17F195A5ABF973CBA3EA50DE2C2DE8DB09C743D7D2BF9CF5F85DFB4BFF00C17B7C41E20F88BE2FB9D6F45F873A544FA8BDBDDC8F65A0585AC4AF26C0E760B8902F7504003939AF5AFF00821BF83FE1FF00EC69FF00054CF87FE14F0B4D36B5E23F1BE8FA9E9DA95CD85D6DD392DD6DC5DC6E41CF98DFBBC29047DE341ABC3DA37BEBD8FE8371C76EB401C0E94678FC6BE57FF82A47FC15AFE1EFFC12BBE1E68DA8F8AACF56F11F88BC4F2BC3A2787B49556BCBFD8019243B8E1235C8CB1F5000341CDB9F5401F376A4039ED5F307FC1293FE0A8DE15FF82AB7C01BEF19F87749D47C3B7DA1EA4FA4EAFA4DF3ABCB67385571865E19191810703B8C715F4F83CD01B6E281F376A6F9C8B2042E81DB24293C9C57C69FF057CFF82B9691FF0004D6F879A7E9FA2E9D6FE30F8B1E2C0EBE1FF0EF9FB76A28F9EEEE307724098EBC6E3C03C1AFC0CF8EFF001EBE3CFED59F1934EF89F7FF00133C4D75F146DDD5F49B7D26F0D9E9D665240CB05BC51E17CAE0024E4B9C962682E1072D8FEAFC8F97B52B7E15CDFC20D6F52F127C23F0BEA3AC88D757BFD22D6E2F8478D8277855A4DB824637138AF25FF82957ED8B69FB167EC9DE29F14C772BFF00093359496FE1FB35512CD797CE36C4163246E0AC433760AA49A16AEC41F25FFC1C01FB5D789AEB42B2FD9CFE19E9DFDB5E36F883A7C975790C45BCC86D54E405DBD1891FC581C8E700D7D93FF04F2FD9734FFD8E3F638F017802C74DB6D2E4D1B4A8BEDF0C2770376EA1A762DFC44C85B27BD7E78FFC10C7F645D6FE3FFED39AFF00ED3FE39D575AD5E7859ED34D96FEE1A717DA83C262BA962661836D02B3431F967696321EC2BF5DFA1A3CBB172B25647E797FC1C19FB465B7C17F815A3D8CD0DCDCC77E97935C0B7970D0A084AA332632C0B1E391CA9AF08FF8370FC53E0EFD8DBFE09D5AE7C4CF1AEAF6BA75D7C56F165DBE9F6ED084BCBA82CF16A88AA3EF80C92B96E803124F5AF0AFF82FBFC7AD5FE21FEDB3A9686F73E1DD43C2FA5D847A7DABD9CB1CB32190EE78E5EA7703131ED81263D6A4FD85FF00629F18FF00C140B4BF0AF81F41B948FE0F783A63A7F89F5E6B8F9618B0934BA55920EB248CE0CB20E064824918AA969646897B9A96BE3A7ED77FB40FFC169BF6A0D7FE197C02D522B7F0C5A33DB6A9ABCD0347A7F87ED998213E601F3CAC06E18F98E78000AFD55FF826B7FC12FF00E1C7FC132FE0E2685E13B3FB66BB7E167D73C417C44B7DA9CE554393211911E572A9D066BD5FF672FD973C01FB24FC3A83C2BF0EFC2DA4785B458304C36502C6666E9BE461CBB1F535F3BFFC16DBF6ECB8FD8AFF00645BA83C3CB25C78F7C7CCFA1787608E3326D95D7E795806040553D7D48A356EC8CAF77647E66FFC163FFE0A2FAAFED73FB4CEABA2F86748B5BCF097C20BF6D2F41CC9BFFB7B5B98AC42507EE85472A8075C9CE466BF5FFF00E09C9FB1769BFB0EFECBFA1784A0FDF6B73C6B7FAFDEBC86492FEFE450659198F279181E800AFCA0FF008214FEC376DFB42FED44FACEBB27F68784FE0535BCEF1CB0B15D63C4332BB17666E19601F39193F3BA67EED7EDBFC4BF89FA57C28F0CCBAA6AB36D48D0B47021066B82064AC6A48DC71CFB0E4D0DDF61BD34474407CDDA8C71DBAD7E2DFEDF7FF072FF00C49F835F14AE74BF851E03F0DF88ACF4FBD482586EC4B73732A9EAA3C99305CF6DA48C8C0CD7EB57ECCFF1B07ED17F017C2DE361A56A1A0B788EC22BC7D3AF9365CD93B0F9A39173C303918A4D35B89C5ADCEE48F97B5291CF6A427E5AADAEEB10F87F45BBBFB87096F6503DC4AC4E02AA0DC4FE429127C5FF00F05A3FDAF63F845F06ADFC01A36A705B788FC6CC61B965946FB2B155DD33B0CE46E51B7278C135F3D7FC1047F605B8D4BC6AFF00B44F8974DB5D312FF4F363E14B0440C12D1D89FB496C0F99D71C6DC8E79E4D7CD90698FF00F0531FF8288DEDEC11453DA7C53D7459ACEC0B35AE83A7ED173229046D5964431023BE0D7EEF7833C25A7F80FC3363A36956B0D969BA6C0B6F6D044BB5224518000AA6DAF70D15946EB766A28C7A5201F2F6A5079A407E5A933171C76EB41E1BB519E3F1AE4FE3A7C50B5F82FF00083C47E2ABD602DF43B096EC82C06F2AA4AA8C9C649C01F5A04DD95CFC8EFF0083887F6B8BDBCF193785ED6EE05D07C3298B981A13E65C4E54E5559BE539E06307A7515F607FC10CFF00606B9FD8DBF654B4D47C4F6965178FBC68E755D5E48063CA57C986027B88E32ABE99CFAD7E542FC3FF00127FC14CBFE0A4DF0F3C0F7168DE21D317573E29F1535D5D064B6B1471B91B681C1255557D4E2BFA2BD234E8F47D3ADED610162B78D63403B00302AA724DD96D6293F76C59039ED4638EDD68079A33C7E352201DBA53E980F4A7D0021E9476FC686FBA69B9E3F1A0053F7697BD349F96973CD0028E8281F7A9A0F02807E6A0070EB515C4A22B6727B2E69E0F35E19FF0524FDA06EBF660FD88FE2378D6C604BAD4346D12E24B485F389253195407009FBC476A5276438ABBB1F03FEC61A04BFB4BFF00C15FFE2CF8FB587D1B59B29F5A1A369ADA7A09A3B7B2B08CAA2C8E33F3190C9924FDE5C7B57EB5EDD8800E80002BE17FF820F7ECA6BFB3B7EC93673CDE4CB7DAB22CB3DC08D84934AD9799893C9DD23935F72DC49E4C2C49C051D684ACAC549DD9F0FF00FC15EFE14F823F68BF13FC32F05F8EEE7C0074387547D6A6B3D7B53682EA77890AC5E4458DB264B302188FA1AFA87F658D17C31A0FC12D1ADFC1D676B61E1E087ECB15B44238BA904A8007520D7E0EFC7361FF000511FF0082E27C4DD4EF669EF6C3C1BA9C3E17D0A3766786D92DC0491D01E8CD2F99903D8D7F409F0A7C096DF0BFE1CE8BE1FB23235B691691DB233FDE6C2F53818C934A1B153D228E88F43476FC69A4F068CF1F8D5191E65FB5A7ECFF000FED45F08A7F03EA211B40D76448B588CC8E866B6077B460A9190C554107820907AD773E06F05E9BF0EBC2161A1E8F670D8699A642B6F6D6F12ED4891460002B509F968CF1F8D2B6B72B99DAC38F5A07DEA4279A407E6A648E1D68FE0FC29A0F3467E4FC2801C7AD21FBB484F3413F2D0038F5A3BD349E6973CD0003EED2F6FC69A0FCB4678FC68028F8ABC456DE10F0B6A1AADE491C369A6DAC97533C8DB511114B1249E00C0EB5FCE4E9FA5EBDFF000506FF008291FC39D27545B6D32FFC657A9E2AD6E2899A6B7492EAE7ED222280B0CC76490A7CDC1DBE8715FAEFFF0005CFF8C2DE11FD8B4F8074FD4CE9FE23F8C7AADB784EC8A4A23905ABB097509013F742D9473E5BB6E1EB5F217FC1B9FF000160F8E9FB42FC55FDA21EC27B0F0FC7AADC68DE1381D1763A9C472CCAC07CC047144A3B0DED80293573AB0F2E48B9B3F61ECAD52C6D628635091C4A11140C05006001528FBD4D2D86AF16F8E3FF00051DF80DFB356BD2E97E3CF8BDF0FF00C2FAA40A5E4B1BED6A14BA403D62CEFF00C314CE53DAC75A43F76B96F843F1B7C23F1F7C1D0F887C13E25D17C57A1DCFFABBED2EF12EA12719C6E42707047079AEA09F96801DDBF1A43F76933C7E3413F2D003BBD1DE933CD19E68001F769474A683F2D283C50003EED29EB4D07E5A09E6803E07FF00838A7FE09E1AA7FC141BF619B6B0F0DD90BEF12F8275EB6D7ADA08E2DF73756E3747710C47A8631BEEC7426315E8BFF046BFD9D7C63FB2BFECB377E0CF15F9D1DAE9DAC4A743B798EF96DACDA38C8567EADF3EF3CF40703802BEB33C9A07DEA5657B9A7B47C9C83874A3F83F0A4078A4CFC9F853331DDBF1A43F76933C7E3413F2D003BBD03AD2679A4079A0051F769475A683F2D00F3400EFE0FC283D69B9F93F0A09E6801C7EF53648C4A0AB0047A11413F3500FCD401C9F87FE03F84BC2FF0015357F1B58685A7DB78A75D823B6BFD4921027B88E3FBAA5BAE07A575A3EED00F14D2FB56806FB99FE31F15DA781FC2D7FAB5F3F9769A7C2D3CADECA335F8DBF1A3E2F7C46FF0082DA7EDC365F06BC1F7BFD87F0CB44B7377E3AD6F4EFDE369B6CDB847688E7E517120F638C93FC35EF5FF05ABFDBB75CD7B42D0FE077C10817C67F123E26ABDBD9A69B3EF4B08F779725C4ECBC246992496E322BE8DFF826D7EC3DE16FF825CFEC5963E1E927B54D42DAD5B5AF17EBB31F9AFAF0A6FB89E473CEC5C10B9E8AB41D31B538F33DD9F0CFFC171FC47A07EC8BFB2FFC3CFD997E19CD2F83BC39158F9F7D15B7C82E6CD01410C8F8F9DA42257727925549EBCFB7FF00C1B8FF00B23D9FC2FF00D92E4F8B57D650A7893E2D38BAB49060FD974588F97630263A2B22F9A47F7A53E95F961FB5BF8F7C79FF000533FDAC6C348B1D4BED7ACFC59F114B6BE1AB2FB3166D234995B624C483F2AC7688656F727D6BFA32FD9F3E0C693FB39FC0FF0009F80B41574D1BC1FA4DB6916618E5BCB86308093EA7193F5A0AABEED351EE762BD69475A6A9E691E4F291989C051924F6141C87E707FC1C7FFB536A5E0EFD9AB45F823E15771E29F8D3349677B22A9C5968916DFB648482305CBC510CF5123FA57817FC1B9DFB1736BDFB45F893E2FDD69FE4F84BC0162FE14F09C84FC9737AE717D3A0FF00615562CFABB8AF9FBF6E1FDABB58FDA5BF68DF11FC4B86DA5D4EE7C7BACB7C3DF8576304E1B36F05C35AC52F3C2ADC5D192524FF000AA7602BEB1FDACBF6923FF049BFD82BC2BFB3DF83B56B7D2FC43A378645DF8D7C5AA547F6334F969A48720AC979733B4A2353F7465C8C28A0EC516A1CB1EA77BFF05C3FF82E4C5FB117856EFC09F0BDADB53F895A86DB597537025B4F0F8901F9801C4B7001076744CA96EA01F87BFE092FFF000440D5FF006F7F8BBA97C5BF8BD7FAD6A3E09D5993506BFB88C2CBE2D99CE59119F2C21186DEE00249014802BD97FE0899FF000458D23F6809B47F8FBF18FC339D0DAD9C7837C27AA89667F2DDF71D4AE99CE5E490E59411CEEDC4F415FB49A368F6DE1FD321B3B2B786D2D2D90471430A0448D40C00001800504C9AA4B963BF73E4FF00F82CAF8EF4AFD9AFFE0933F17A2D365B0D04BF84EEB48D22DD635556778590451AF4CECDD8FA57E537FC1B5DF09DBE2E7FC149AC7C5179A7B4F17C35F013CE272088ECEE6EBCBB68147BF92B70307D49AFAB3FE0E42F8BF3F88D747F8779BB874286C5A7D527421E17336F919645C83948AD8007B7DB17839AE3BFE0975F1EB4BFF8271FFC1336C3E2059785FF00B77E25FED11E2096EBC2FA02CA217B9B48156DE29A77E7CAB58A38DE776E8164E39340A29AA6DF567DDBFF00054FFF0082AA785FFE0993F0BF4CBDBAD1EEBC63E31F12DC9B5D17C396570914D704025A6958F31C0B81B9F69E481DEBF00BE2F78A7C73FF000506F8AE7E2FFC54BA0FAA5FEA92D85A2B48E2CF40B72C445671290026D07A7572DB9B2718F7AF825F05BE277FC1717F6FCF126A56DA85D2F862C26FB278AFC7E965BECEDF67CCB61A6472B7CB1A901514649CB4AFF782D6E7FC177BC33A27ECDFF103E057C1BF87BA43697F0C7E1F6A33F88B5ED487CFFDA9A9C621CFDA641F79F03249E85F0071C1AEE553B42DA5D9FA07FF0006DDFC09F0EFC20FD90FC67A96877D71A85C7897C657726A133C6638849047142A9183C90AA304FF007B77A57B2FFC14DBFE0A91E11FF827EFC3EB8B38EE2CB5FF008A9ABD9BCBE19F0924B8B9D49F3B7CC7C7FAB8549CB3B60615B06BC4FF00667FDA674AFF00826AFF00C11D3E196BF7BA54FACF8EFE22A0BED1BC356D21FB56BBACEAD3BDCA4281802B1AF9A0B31184443ED5F983E15F81BF123FE0AA9FB7D78A7E1EA6ACBAEFC442437C4EF1F5ACF9B3F0D5AF9D83A669E48C08625668C2AF32386FE1563425A5CCE5EFCDC9EC6AFECF7FB2C7C5AFF82DBFED73AE6B3AAEB512DE453DB278D7C5871E568FA792E534BD2D467042EFF9B8C9F99B8C0AE6FF00E0B569A07ECEFF00B6D41F06FE1AF8760D27C3BF043C04B691CB15CB1B9BDB9B9804AAF337F1B7EF792C4927D3A57F405FB3AFECDDE03FF82797ECBB0785BC19A5A69BE1BF08E9D25D4CC06E9EF5910BCB3CADD5E4720924F738181C57F3EDAB7C0CFF0085FF00FF000553F833FF00095E9FAE6A3E27F8D9E22B6D53566B8B9DDF6CD361BBF310CAA3EE29B6B7FB981F2B629E962B9EF2BAD11FD0BFC1EF16B7C28FD8DBC27AC78A524B59742F08D95C6A71C50967478ED10C88A8392D904051DF02BF29BE2DFC36F147FC1637F6F8B6D2EF34ED67C2DF67B481F57B392F73FF00088F875A49769922236AEA378370DB8F910F5F9483ED1FF0518FF82800F1B7ED7371F0E7C11A95BF88357F8656D17F63F852CAE879DE30F15DDA48B6B6EEAAD936B651FF00A44C48DAAC53774AFA9BFE0977FB095E7EC5FF0004EEEE7C5DAA0F137C59F1FDD0D77C6DAF3A82F777AEA00B7461FF002C201FBB41D38271F353BDB631BB8BBB3E82F86BF0E344F843E04D27C33E1BD36D748D0B44B64B4B2B3B68C24704483014015E3BFF00051EFDB97C1FFB0A7ECD9AE788FC49ADD9699A95DDA4D6BA2DBCA199EEEED90AA008BF36D0C4163D00EF5EE1E22D7EDBC29A0DEEA77D32C165A75BBDCDC4ADC08E3452CCC7E80135FCEE7FC144BE3D6BDFF0501D62FF00C75A90BAD3349D72E631A146F3811E9FA3C7318E15552843C93E5E693D014E7814E16DE5B0A31BB3E73FD8A3F65EF11FFC14DBF6C683C0167358E95FF091DCDC6A9A9EA56AD262DB4B8552392E10312C1DF08ABFED4B93DEBFA88FD9F3F67EF09FECC1F09749F05F82B47B4D1340D1A11143040806F6C7CD239EACEC792C7924D7E677FC1B11FB29DA68FA17C4BF8CED6C862F10DF2F85BC3D3E07CD6366499DD48CF0F72CCA7D7C815FAC80FCB52DDDDC73EC85270BF8D7F3CBFF00058FFDAF57E387EDCFE3BF1A47AB4BA8681F0418F857C2DA64523086EB5763B276208197121DB9E71B063D6BF67BFE0A6BFB51BFEC83FB15F8DBC6368276D652D0D8690B085690DECFFBB84A86201DACDBB1E8B5F8B3FF0004F2F82DAA7C6DFDB83E1C787E68ACDB49F86375FF0009FF00C40D53548525858B176656278F3649D805E4E0063DA9ECAE286F73F643FE09E5FB3D43FB00FEC09E10F0EEA865BDD6AD2CFF00B435B9D21DD3DEEA375279B283B33BB124BE583FDD45F4AFCF0FF829E7ED7BE3CFDA93F68593E09FC1AD2EEBC77F116E6D26B7D61F4C8D7ECFE1BB695BCA3179C48F295720C921E58AE07A57D11FB52FEDBFF143C4BE11D56EBE1F683A8EADAA7C40BA4D13E1DE8E967F30B4DE239B5794804AA1258873F2AA05E326BDC3FE0979FF0004C8F0EFFC13EFE179B8B84B6D67E2978A516EBC5FE24C319352B9625D91377DD851890AA31EA793576518DFA8697BB3E38D43FE0939E0FF00F826E7ECC1A36AB34CDAEFC49B7D3AFF0050BFD62E17CE885D0810ED895B848E3E42E79E4FAD7B57FC1B35E34F157C41FF00826543AC78AEF6F75092F7C5DAD49A7DC5CC8642F6BF6A38DA4FF007F3001ED5E21FF07156B77D79A77FC25D6DE253FD83E13D3AE3445F0FC72CB0CBA85FCEDB4FCB950F9055063D6BDCBE19FC6FD07FE08FDFF04A8F861E0DD58D8E9FE35D3BC2F131D323899FC9BC913CE999D412789246CF3F3352F67F0A455DB56EA7D67FB51FED83E06FD90BC0926B9E32D505A44118C50468659A62173808B93F8E3BD7E1E7ED69FF000716FED0DF11AF7C63A5786746F03695F0FB5DD364B5B1F3ECAE3FB46349430DE25DE0676727E5E0B63DEADFC1BF837F187FE0BABF1FD6C756835BD1FE16F8751E0D5BC577CC249E6671B8AC23E50F231551851B51475E715E61FF00051AD3FC15FB36FC40FF008567E10D0F6C1E19BD6B386FAFD4F9FABCFB820CB1CF1920703B9A5CD18AD17CCA8C16CCFD1FFF008377BF660B31F0AE3F8B5A8D82AEA17364342D198C6D1886D636DD33842061A49CB963D7E515FA73D0D78E7EC05F08EF7E05FEC71F0EFC31A925A47A9E99A342B7AB6A1FCAF3D977C98DFF0031F998E49EA7278E95EC59E6A37D4CE6F51475A41F76901E6807E5A091DDBF1AF8FBFE0B51F120F83FF64BBAD2FCB12C5AE4A12E17CEF28F971E1CE0F4EA075AFAFF003C7E35F16FFC172FE0878BBE317EC833FF00C213A25D7893C416937956DA6DB47BE4B8698796BC7A06209ED81CD5C1DA570B27A33E66FF008364FF0066CB8D62C7E227C7ED6D4497BE38BB3A2E8FB4EE486C2DA5719563CFCEE327B7CA2BF5B7A1AF03FF008266FECBD73FB1D7EC49F0FBE1FDF4690EA5A0E951C77AA8FB809CFCD273D3EF13D2BDE89F9AA1EAEE36EE3875A3B7E3480F3499E3F1A04387414B4C07A53E8011B9534DDBC7E34E63F2D26EE3F1A0042BF2D2EDE682DF2D2EEE6801A1781405F9A94370280DF3500205E6BE26FF0082E3FDBBC51FB3D782FC1561A9258378EBC69A6695708C9B8DCC1BCCB2201F48C67D89AFB683735F137EDFA25F1BFF00C1423F66DF0D9D44C767A75CEA3E2292CF1B927685238D188F506538FA1A89BE854373EB8F857E0883E1DFC3DD2346B78D634B0B6488803AB00327F3AF24FF00829BFED5F67FB157EC4BE3FF001FDC4A22BAD274B9174D063DE24BD907976CA40EC6678C1AF7B2C001DABF143FE0BDBFB7BFFC358FC7093F65FF0008C3789A5F84751B2D43C5FAAF02296752B343669CF38F95D8E320A81D8D39DED64386AEE749FF0006EFFEC996F6B3DA6BDAF59CDA96BB3452789350D4E48BFD6DDCF27CBBD88F989CB3802BF62F6FCD5F32FF00C129BE0ACFF08BF65FD3A4BD804175ABE264040DCB005023071F89FC6BE9B2DF35504DDD88578346DE3F1A52DC1A3771F8D040857E5A36F1F8D296F968DDC7E340015E6902FCD4E2DCD206F9A80102F346DF93F0A50DCD1BBE4FC28010AF3415F9694B73416F968010AF34BB79A0B734BBB9A00685F968DBC7E34A1BE5AC6F88BE38B1F867F0F75CF11EA72A43A76816171A8DD48CDB42450C6D23927B6154D007E2D7FC1C41F1C0788BF6B99B4D86F849FF000AFBC336FA06951C01676B4D67597779E568CE3052CADE3E46789EBEC1FD85BE287C3BFF008244FF00C11C7C0BAEFC4CD76FBC39A4C168F7D37F6ADBAC57D7573712BC8228A05E49618D8BD76E338AFC71F8F9F1FD3E3AFED1BA4789755B0D3ED3C41E21D4AEFE226A104D2191ECD75064FB0DB4A78DDE5D8C308C74CE7039AFA23E09FF00C135BE2EFF00C1763F6B7D73E2AFC4CD73C49E10F84FA65CC36DA1C52C3FBA30C5104F2EC607628A09C93298FA9E3341DAD2F6493D8C2FDA8BFE0BCBFB457FC14EBC4177E04F827A36A5F0F3C25AB4FE4D9A6890CD73E2CD6611903F78BF2DBAC99032A01191F375AD7F87BFF06D25E7C2EF81DE37F8A5F1E2EF4BB6D2745D0AE75EBAD26CE47D475CBF78E1699C4F77280B139C107606E7F8ABF6CBF648FD8B3E1DFEC4BF0C2C7C2BE01D02CF4CB5B44C4D76D1AB5EDFB9C96926971B9D89F5F603A57947FC170BE2D45F06BFE094DF1B753333C5757DE1D9746B21130123DC5E15B58C2E7FDA9413EC0D066AB25EED356FCCF81BFE0D73FDAF740D73E2878C7E14F83BE19E93E00F085EE891F8AAC8C37D35E5F5D4AB225BB35C3BB15C952B8DA07D2BF698AFCB5F843FF06A2FC36B9D23F68EF115DDCADCC72689E00B7B39507DC8E496F01024F462236DBECA6BF779CFEEE833AEAD369011B57F1A0AFCA2BF277FE0B29FF05DCBAF84BE20D67E107C1558F52D6DA1B8D235EF15DB5C8FF8A7AF6489D6386D769F9AE632373B1F963C0EADC0F44FF836AFE347C5CF8CBFB29F8C9FE2AF8D759F1F7F62788534ED2357D5416B89105AC4F347E69F9A55491B018927AE4D04723B731FA3FB79A36F35E65FB5F7ED79E07FD87FE046B5F10FC7FAB47A6685A3445B68399EF653F720853ABC8E78007F215F803FB6C7FC164BF6A4FDAB7C4F71A8691E3DBEF815E0EFB4A0D2346F0FB94D498499F296EAE07CED2BAE0EC53B4127038A0BA546553E13FA4A0BF2D285E2BE57FF008230FC5CF1FF00C64FF8275F80F54F8A1A9596ADE35B5866D3F51BD86E8DC4B726091A3579D88189CA052E3D4FBD617FC1407FE0BA9FB3FF00FC139B57B5D23C61E20BCD73C47781CA68FE1C81750BB8F6F5F34060B1FD1883411C8EF647D8817E5A0AF35E0DFF0004EFFF00828D7C38FF00829AFC063E3DF871757DF62B7BB7B0BFD3F5184437DA6CEA01D92A066032A558104820F5E081EF45B9A09DB46215F9A80BF35296F9A80DF35000178AE7FE22FC53F0CFC21F0E4BAB78ABC41A378734C810BC975A95E476B1280324EE72057C13FF00059FFF0082EC68BFF04FDF0E4BE14F8772F877C5BF17279046FA65D5C3795A446C0FEF65DBF79BD1320FAF15F92DE06FD8AFF69CFF0082E57C70D3FC4FE3AD635DF100BC02E1CDEC73DAF86B42B5FBA56319DACC48E123193824FAD075D1C24A71E77A2F33F7FF00E097FC1543F675FDA3BE23C9E11F047C62F02788BC4719E2C6D7524F326F68F38121E3F809AF7F2BF28AFE69FF00E0A55FB017C3CFF8237FC6AF853A3693F0E13E22788FC4162FACDBEB17F7CF6364B776B265E1448F0DC7CA793C8615FB7BFF000493FF008284C1FF000527FD8F34BF1ECBA57FC23FAFDADDCDA46B9A5EFDC2CAEE13860A4F3B594AB0CFF7A832A947963CF1D51F4E6DE6902F34EDDCD206E6831102FCB405E69437CB406E680136FC9F850579A5DDF27E1416E68010AFCD405F9A94B7CD406F9A8000BC57CABFF0550FDA62F3E0A7C1B3A4E97A845A449AAC32DC6B1AB34BB7FB1B4C89733483077091C6513DF773C57BEFC72F8CBA37C02F859ABF8B35C91974FD222F319131E64EE4ED48D01232ECC4281EA6BF2335BF0FCDFF00056BFF008299C7E00F23505F0AE86B0EBDF14DC4E7C931478FB0E8D90718271BC0EBB5F3D4D06B496BCCFA1EF1FF000426FD8BFED5A86B3FB4E6BD6B6F6D75F1134E8F4DF0669C88E8DA2E808E59378603F7B3101CF07E5DBC9C9AEF3FE0B9DFB598F859F02B4DF85DA45D327897E28BBDBDCF958DF65A447837731F40F948467A994FA57DB19D27E1BF8338FB2693A268769ED1C3690449F905555FC00AFE74FF006CCF89BE20FDBAFF0068EF10F88B4CFB75F6BDF1C3C470F82BC0712CC563B2D12298C715C46BE92E24B9247665341A52FDE54BCB63EAAFF83713F65F97E2EFED05E3AF8FFACDA44BA6785DA7F07F84C643664254DE5C2F6002AC712E3FDBAFD9554C1AF30FD8DFF654F0B7EC4FFB3AF863E1B783AD3EC9A2F876DBCB05CEE96E65625A59A46FE27772C49F7F6AF500DCD063527CD2BA11579AF903FE0B61FB4A6B5F01BF6399741F07DE7D8BC79F153518BC21A14C937952599B80C6E2E94E33FB9B7595F23A102BEC056E6BF153FE0B89FB63587883F6A0F1A5FD8CF1DDD8FECDFE1D6D3638DB847D6F5445798A93C6E86D511723BDC30A050577A9F2DFEC77A449F113FE0A27E1BD17C2D61777F2FC37D064D3FC2F73BD45AE85204F23FB4E7C8215A34F364DCC33BB07935F61FEC1BFF04E4F0BFF00C1467E2D5D78ABC4D2EABE24F81DF0DB5B68B4992F2E4CBFF0B435C8494BAD5EEA427749024AA5234FBA42FA0C571FFF0004D5FD807C61A47FC13EB48D26C2F6E74BF8A7FB5621BBD5F5D4B5690F85FC3646F958C8B8D924911F2D013CBCF9FE135FB35F097E15681F03FE1AE87E12F0CE9D6BA4E83E1EB38EC6CAD6DE311C71468A147038CF1927B924D074D6AAB686C6E5969F169B6B15BC11A430428238E340155140C0000E800ED595F127C7DA5FC27F879AEF8A35CBA4B0D17C3B613EA57F70C32208218CC92363BE1549ADB2DF357E777FC16E7E395EF8D3E247C28FD9D347BF3696BE3ABA93C4BE36788FCC9A0D81563049CE3CAB89F646C3F89430E84D072AD59F057FC1433E38FF00C3687C5AF02785218EF22F107C5FBE867934DDE239ADEDB11C8D1BE31B9BC948E3E39241F4AEB3E3C7C0BF127ED31F1D742FD963E1558A5978AD2C60B6F893E31B04924D3FE1E68F8DF1E8F6AD9C46EF1A8DEA369663CE7271C57EC6BE2FB5D67F696F8FFF00B4D5969F69AD37C3944F87FF0009748525DB58D7AE18A47E54783BBE723041E016E78AFD77FF00825AFEC0569FB03FECF5369F7F7DFDBFF107C657D27883C67AF3A90FAB6A5312CC70492A880EC55CF001F5A6F56744E768A47A8FECB9FB2F782BF62FF80DA2F80BC0DA55B68BE1DF0FDB2C636801E77006F9E56FE29188DCCC6BF073FE0B43E2BB7F11F88FC3BE1186F23962F12DFEB7E2BBF9A36FDE86BEBC9BECF1C6795E56600727EE835FB41FF055FF008CE9F043FE09FF00F11AF924D9A8EBBA77FC233A600E559AEF5171651608E7E569B79C720213DABF023C69AAF83FE287FC1583C0DA5F88358D9F0CBE1FE9916A9E23B688B3476F65A7C3E64368842E59E531449B7F8B7006974B061EC9F348FB5FE30FC2DF899E3BF19FC3F48F52B6D4BF685F8A5A4B787FE1EE9B228367F0ABC369122EA1ABE08044CF10081DB92CF8535FA3DFF04D6FF8268F80FF00E099DF02D3C29E1185EF758D4596EBC43AFDD0CDEEBD778C34D2124E075DA80E067D49272FFE09E1FB3DEA90C9ADFC6EF885696BFF000B2FE28C714D1446DFCB7F0BE8814359690808CAF96A774B8FBD2B367A0AFA8037347918CE57679EFED3DF1474CF843F04F5DD535688DC42F6D25B456CB1EF3752BA10B1E30473DC9E00EB5FCEA7EC39FB473E99FF000519F117C6AF1BDF6C9BF67EF064BB2DA67D9035DCAAF68B0B71C3796F231DBDD78F4AFD41FF00838135EF18E83A7689AB69725FDBE81E1BD16F67B7896E122B6D53559D952046C91931A46E7078FDF03D6BE25FF820DFFC1216C7F6EDF04F8A3C7BF166F357BBD12FB5F8DF53B0865100D52FED5D59A19B03E7881C8653C10C467BD53B28A2E9E8AECFAE3FE0DFCFF827858DC4FAAFED69E2FF000E49A1F8E7E2A4D7D77A469331322695633CFBD6E14C83CC124CAA3A9E108C7DEAFD4D2B8A8AC2C2DF49D3E1B6B5861B6B6B7411C51448112350301540E00006001533B54993773E1BFF008283FEDA5ACF89BC4FF11FE07781ACACE6D4AC7C3B0C5ACEA0F2FEF6D24BF042451C78C13E49DCC49E37AE057E367ED5DE2AD63C7F35D784FC391CF737B617A9E11D22DA02BB2E6EB7AD94662F50F317231D80AFAF7F6DCF8D3A77FC13CFFE0ABFFB46F8E3C45737B747C4DE1ED2756D011273FBDBC36725BC700523AABA06C838002D78EFFC1047F66DD77F690FDBE3C1DAAEB8AB7DA57C2BB37F15EB92CA4CA1F5298491D8A12DD5C17965F6F2F3D715A376563A2968AECFDC9FD893F66DD3BF644FD943C05F0E74C82DE18BC2BA35BD9CED0A6D17172101B898FAB49297727B9635EA417E5A5438A4DDF21FA566731F985FF05FFF00DA12D13C59E08F86739B23656D6B3F8AF528E473E6CBE5931DBA22823ABEEC93EA00EF5F177EC3FE28B0F01FEC0BF15BC79AEEBB1688DF133529FED93EA522E0DA5A3148ADBD54195A5F947538F4AF42FF008386FC762E3E38F8DEF6CE0D32F25B4B7D27C28A67D914B14855EE64C498DDB544C84007925BD2B7BFE0905FF04FB9FF006B9D07C1F2F8F13ED9F0C3C10F0EAD1E94D086B6D5B514259048483B90336F2BDC819AD2F668D23F09FA6DFB04F85B51D77E017837C5FE2DF0C693A0F8AEE7474B7B58AD8EF6B1D35887B7873FC27CBD8580EFD49C577FFB47FC6CB0FD9E3E0FEADE2AD4966786C4471451C49BDE59A5916289401EAEEB5DB5B4496B02471AAA24602AAA8C0503180057887FC1416EE5B5F80391B0DB0D4ADE5BA5783CD468A3DD29C82081CA0E7D40C106A56B2333F1DBE2978BE0F8CFFF00051AF0B69BF127C553DDF823E1D34BE32F109BABB16F6F2DFC64C9670138C30594C4427A28CE49AE9F42F106B7FF0005DCFDB0F57D33C0D6FE34F0EF82F4D5583C51AEDE22A5AC3160ED8E3539CC928036A803E5E4E0633E07FB057ECADE23FF0082A77ED99F10B4E8B59B9B5D19B539351D5F5487F7A20B4791D608C06E030D8768C1FBBCD7EEDFFC13D7FE09FDE0DFF82727C07FF841FC233EA1A92DD5EC9A96A3AA6A2CAF7BA9DCBE034923280380AAA001801401473BBB35765B1BBF0D7E0EF84FF613FD9453C3DE11D2DED7C3FE0CD26478A18DF74F70C88599D9D8E5A476C9249EA6BF9E8F0C7C37F1C7ED7FFF000553F07F84B5B5BFD42F753F158D46F24B954905BD8C33A5C3ACAEA01E3684E80658726BFA18FDB5F4AD6B5BFD9BFC436BA0DB4B77753443CD8625DEF2423E675001049206300F7AFC89FF0083727C0D0FC5FF00F82A37C6CF88A6D9EEEDBC2BA5AE8F04D323A0B0B89A725E3553C6EDB11CFA702A649F27A8A3DD9FB97042218115400AA3007A0A7EDE697346EE68466342F3405F9694373406F9680136F1F8D057E6A5DDC7E3416F9A8010AF3415F9A94B73416F9A8000BCD26DE3F1A706E693771F8D00205E94FA683C0A750023FDD34DCF1F8D39BEED2638FC6801A4FCB4B9E6948F96971CD00341E0500FCD4A0702803E6A006F535F26E81F09F5BF1B7FC15CFC47E36D4D2DE4F0DF84FC1369A368FB82975B99A679AE1948391C08C1CFA0C57D6678AF30F00788A5F11FC78F135A9915574A8233245E646CC85C90B951F32E42123775CD44B468B8BB2654FDB7BF6AFF000E7EC4BFB2EF8B7E2578A659D349F0DD99959608CC92CD231091A281DD9D9573DB35F8E9FF000443FD95AFFF0069FF00DA1B53F883E328A5B9BBF166AB378B358174CACCEF31DE2307392AA0AA8CFA1AF61FF839FBF6858FE226B9F0AFF678D0AF1AF6F757D553C45E28B0B7525E3B1848F23CC6E811A5DC76F53B07A57D87FF000470FD9CDBE0DFECEB1EA7750431DCEAEA89015218885011D7031939E3FD914D3B9A6B185FB9F5E5A5A47A7DAC5042891450A844441855038000A949F9A948E6823E6AA30109E0D19E3F1A523834638FC6801A4FCB4B9E3F1A523E5A31C7E340084F3403F35388E6900F9A80101E68CFC9F85281CD18F93F0A004279A427E5A711CD047CB4008DCD32DE330C7B4BB391FC4C7935211CD2E39A00603F2D7E5C7FC1CEDFF0514B2F80FF00B30C7F03BC397CCFF117E2E98ED9EDE227367A3F99FE952B91D9D50C58C8C8763DABEBAFF829F7FC141744FF008277FECCBA8F8AEEE3FED1F11DF8365E1FD2A390096F6E9870C73D238FEFBB63803DC57F39DADF82BE20FC5CF1EDD7C61F895AF6A1E3BF1878DF5D87C35A479A0C9389652D27970A8F95214DC0617804EDA5ADCDE9526D73F43ECEFF0082317FC13CB53FDB8FF69BD67E27F8F2DD2E7C15A5CCAB2471C1E443732C68162B44EFB235C679E06077E3F7A74AD32DF44D32DECED224B7B6B5458A2890616355E0003D80AF39FD8DBE01D8FECD3FB35F85BC25656FF6736364B25D0C0DCF7120DF2B363A9DE4FE42BD3F1C7E34CCE526F4109F9ABF233FE0E5BF1BDEFC5EF127817E0CDBBC89A60583C457D102105F4B24D2C56E049FC3E48B79E56CF5056BF5BEFEF21D36D25B8B895208204324923B6D545009249EC00AFC53FF008299DFA7ED33FB5DF85EEB40B6B8F11EA3F13755B4F0EF856C1A40D1496C5956EAE3E5F9D614B78AE2427A0F398F7A4EE6987F8F99F43EEAFF00822E7EC67E1FFD963F657835EB0315D6B1F11238357D4351CE5AEA2098B704FA0424FF00C0CD7CB9FF0005B0FF0082E07FC221A7CDF083E03788E4B8F19EAD2FF66DF6B7A4D84D7ED6EEEC6236B672460A7DA77E016C9DBCE06E149FF05ADFF82C50F83DA52FECD5FB3D5DDAEA5F1235189341D4E4D2616BA974257558E3B3B58D0156BA7048C1E225C93F360527EC25FF0004A8F09FFC128FF657BCFDA5BE305BB6B7F14BC19E149AFA1D2D252DA7681B632D1DBDBC44026E1D885676C9DF236DA6CDA2927ED2A75D91F9A5F127F65EBBF817168167A8B6A92FC5FF0015DEADBDCE9B7368239D6E2E1956081B9C990B491B36EC9C96DC49AFE85FE127873C39FF0004C9FF008279D8A6AA91C1A67C35F0C7DB75792D9543DE4D143BE771C80D248E1B92792C2BF1D3FE093BFB377897F6ACFDBB3E1AF8DFC7366F7776352BEF893E2B96E6760F04AACED68DB1BEEC7F69750A0718848ED5DA7FC1697F6F23FF00052AFDA0BC21F05FE0F41ACF8B3C33A0EB8F69336993EDB7F166AE54016E149025B7B601DE4620AE47B66836AD4E539A876D59F3D78A3C57F157FE0E0DFF008287D83C9657FA4694FE58D23C3E75137161E1BD3632565D5255C04F30AB9DA30599DC00D8AFA53FE0BEFF00B3E781FF0060EFD9FBF679F85BF0F6D7ECBA87883C771EBDAADEDC1F3EFF00575B18D3CC9E695B2C79954ED1851D8015FA67FF0004C9FF00826EF86BFE09E1F0624D32C649756F167885C5EF88359BA5433DCCD818854AA8C411F2117B64FAD7E3C7FC17BFF6A4B5FDB3BFE0A157BE14D192E3FB2FE01C326972EA501D812F2E021B98D893C83B150607F0352BA5A19C27CF3508FC2BF13234FF00DBD7E210FD977C67E02F0CEB4DE07F86167E28D496EB59B31BF52F1A4B7B8F2F4FB525730AEF2433A7CFCF0451E0BFF8216EA5F0BFF633F885FB437C566D5FE16C9A5DBB6AFF00D8C9629AB6A735B65599DD9A51E5021BEEFDE01493CF15F5F7FC1103FE099D6DF193C13E09F8BFE3B5865F0D786E599FC21E1E6B2D91CD324981A9CEC7FD63120ECE3A00727A57B57FC1CF7E3E97C25FF0498F14E85672EDD47C75AC699A05BC2A7E7B8125CAC8EA0647F044D9F6CD0DEBE46B3AC94B929EEF73E5EFF820A7ED99E11FD9D7C53F186C354B5D3BC25F0E2D3C2F078CE6D5E4896207CA71116623E792474917E5C672A00049AE6BFE0A3FFF00070D7C55F8AA9FF0897C11D2E5F86F6BADC9E459EADAAAEED6AEA060A5674B703FD189FE05259C860485EDF1EFC10F8716769A16B1F17F5FB1BED734ED02E2D3C25E12F0ADB1693FE126F10B6C78524807FAD862251C8E4653DABF5CFF00E093FF00F04541F057591F177E3BC561E2DF8C7A8CED796EACE27B3D0C38EA8A540F370C4679083853C669735FE10AAA8C66E73FB8FCE1FF0082767ED95FB48FC0BFDB6FC1BAC7C44F8EBE2A97C1B75AA45A7F8A6CFC70D3182E1259846C9142C374528DD956C000E33C57E827FC15F3FE0AD7AFF837C51AC7C2EF833E23D1B459FC35A70D4BC75E349089D3C3913E7CAB3806769BC9769C673B179C66BF283FE0A9DF1D358F8C1FF0529FDA134DBCBD69EC7C3DE296D1349B4781123B62BB518921412048A4E49ED9AFB4FF00E09DBFF04D3F0E7EDC9E3587C29AACB73A9FC29F87A62D4BC6D77146638FC75E26961460865CEE68EDD58E40E32CA2A6F2D8728526FDA3564721FF000479FF00824BDDFF00C144FC749F1A3E2B689E478421BD9A7B696E1DA4B8F1633B1CB658EE5404659FAB16C0E39AFDE3F08F8474DF01F86ACF48D1ECADF4ED334F8560B7B681424712018000152784FC29A7F823C3765A4E936905869BA742B6F6B6D026C8E08D4615540E800AD0C7C9F856871623112AB2D763F0DBFE0ED7D4ECF58FDA53F664D2215965D5AC8EABA848AA700DB130039EDC98DBF2AFA8FF00E0D90D12EAC7F62CF1B5FC9198ACB55F1C5EC9669B40015228637C1079F9D5B9AF8FFF00E0E24F17B7893FE0A12BE24D474F98F82FE10F823FB3C6A325BE2DDF55BD99DBC80E7EF308C2F03A6EAFD25FF82137C03D43E007FC131FE1ED86AF05CDA6ABAFC53788AEE09E6F31A17BD91A70A3818015978ED41A4B4A163EC007A7D28079A76DC1A4039A0E31A0FCB4A0F34A07CB401CD00267E4FC28279A5C7C9F85047340084FCD49BB069C47CD59BE2FBFFECAF0D5F4FE745014858AC92B6154E38CD007E71FFC157FF6DB9746B3F185E49E1AFED3F0D7C31BCB7D3F41B79A407FE12DF13DC22FD9E18A3192C90F9AA4E47DF1ED5EFBFF000484FD851FF62FFD9ADAF7C44BF68F8A1F11E7FF00848FC697ADF7A4BD972C205E784855BCB5FA13DEBE67FD9BFC08FF00F0504FF829C4B35EE9B7137C28FD9AE6F3EDAE9661F66D67C552842CCC06449E4464FD188CF35FA0DFB52FED25E18FD8FF00F67DF147C45F175DA59E83E16B17BC9D89C19481F246BFED3B6147B9A0DA7A7B88F8B7FE0BCDFB5BD88F879A6FC00F0D7893ECDE2FF1EDC47378962B2988B8D2FC3A997BB7908FF562601615C904F9848E0578C7FC1063F655B7FDA1BE3EEBBFB41EAB692AF853C0CEDE16F8716E5B100D8863BBBB45CF20710A9E980F5F265AC5F10FFE0A35F1F6EF57B6D2920F8ABFB48BAB1B52E7CBF07F85A3D881DDF83F242E18F5DD24AB5FBFFF00003E07787BF66DF831E19F02F856C61D3740F0BD845A7D9C112E02A228193EAC4E493DC92682E5EE42CB7675F9E68079A7639A4039A0E6303E277C41B1F851F0E35DF136A722C5A7E81A7CFA85C3B36D01228CB9E7F0AFE54BC35E20F157FC142BE233F859ED21BCB4F89BF110F8B75C7D3E73233DB5C4E923C79C0E638BF77824FDDE2BF6B3FE0E1EF8C3A8EA5F0DFC05F0334BBF9B4DB5F8B37B71378A2E62E1E2D0AC9164B840DFC265768A3F7DC6BE34FF008374BF66ED37C61FB5FF0088AF7C3765A75BF837C0E8361690CD3E4B92B8EBB43B83C93C88CE3A5075518A517367EE1FC32F02E97E10F0CE9BF60D3974E3169B6D631C5BB26DE089311C5F4504F4EF9AE9C9E6809B52948E683946BB840493800649CD7F3ABFF053CFDA26C7E38BFC6BF8B7A86A9ADC12F8D75A5F04782E3D3AE84739D274E9DA0508C0644771742E257C1E542F35FB8FFF00050CF88BE2BF851FB157C48D73C0B6173A9F8CADF46921D16DE0B7370E6EA52218DB60EA15A40C7D0293DABF9EE83E0EDFFED4BFB65FC25FD9C7C0DAAC6F6DA3DDA596A578B1897ECF05BAFF00A65D3851F23FCAE41231BE5514F4EA7450837792E87E9E7FC1BF9FB2B58C9FB3AE8BA8EB1E1C2344F015E98BC2D2EA36E04D777843BDC6A1CF24869DE24639E15883D2BF4E1784ACBF01F82EC3E1DF8434DD0B4B8841A7E936B1DADBC63F8511428CFA9E3935AA7E54FF00EBD2329CF9A573F227FE0BF1FB5C278C3F6A1F02FC1CD33CEB8B1F87769278EFC4B843E48BA747834D858E7A8DF34D8E795435F297FC1157F63F93F6D6FF0082826A5AEDDDB5BDA7847C237569E24D636C648D6823482CA06620AB0F3625919723E58C0C73547FE0A43E22D4FE1EEBDF1FBE2B789F4CB9D335AF88FE36BBB2D3FED3132E34CD3DDAC2C82AB80584BE54928C7504638AFD79FF00821EFECB93FECB7FF04DFF00871A7EB1A7A5978B35ED31359D6F302C53ACB71995217C727CA8DD6319E8169E86F750A77EE7D6E836F1403CD380F9A8039A4729E6DFB55FEC9DE04FDB53E0E6A5E02F88BA2AEB9E1BD536F9D079CF0C8A54860C92210C84103906A4FD95BF657F047EC61F0574CF87FF000F7493A3786749695E081AE1EE246791CBBBBC8E4BBB3331C9627B7A57A281F35281C50177B0C27E5A5634A47CB432D007F379FF000704F88F57F11FFC167FC43A35F9BEB4D274ED074DB9B68E51FB8B98D2DC1F315BD034936467820D7E9B7FC1B91FB31DFF00C2AFD90F58F895AFDB496BE21F8D1AA7F6DF932C5E5C96DA7C20C366847BAEF947B4C2BE8DFDB07FE097BF04BF6EDD52C6FF00E2578320D6B54D38225BDF457535ADC2C6AE1FCB2D1B2EE438C10D9E091DEBDDB43D0ED7C37A3DA69F630476B67630ADBC10C6BB5228D4055503B000014DBB9A732E4E5459079A407E534E039A00F969199F969FF05BCFF8226F8DBF6DEF1369FACFC279B4386FF5CD5D2FBC48BABDF3C11031C090C52A00ADBB684E9C77F5AFD09FD967F67BD1BF657F803E15F0268712C765E1CD3A1B32E3EF5C48A803C8C7BB330249F7AF42DBC7E34A47340EFA58613CD53F11F87ACBC59A2DD69BA95B4379637B13433432AEE5911810411F435788E6823E6A047E7BFF00C138359F845FB14FEDBFF143F66AF01FC1FF001CF812E9E61E235D76FB75F586BD1B00BBA39F93144A784476FEF60735FA0F9E3F1A410279A5B68DDD338E69D8E3F1A006B8DC983D31C8F5ACED07C1DA4784DA6FECBD2F4DD37ED2FE64DF65B6487CD6FEF36D0327DCD6991F2D047340084F34679A711CD18E6801A0F3480FCB4E039A00F9680133C7E3413F352E38FC6823E6A004279A09F9A948E6823E6A004079A33C7E34E039A4C71F8D00203D29F4D03814EA0047FBA69B8E3F1A73FDD34CCF1F8D00047CB4B8E6909F96973CD0000702803E6A40781403F350001735CFF8AB54D0BE16787B5EF13DF2D9E9B6F6D6CD7BA95E796AACF1C484E5DB193850719AE801E6BF34BFE0E63FDAB2FF00E1D7EC83A6FC27F0B5E1B6F14FC65D4D34191D01DD6D618F32E5C11D09550BFF000338E6A65B1515767C3BF0235AD6BFE0AD1FF053CD77E2AAE85358F87FC5375158E851152B249A6DB6E11C9212C7697059C803038F7AFDFAF047842D3C05E10D3B46B08C4569A75BA411A8F4518E7D4D7C05FF00042AFD87AC7E0FFC20D3BC4970CF24D691ADAD942E72602102962DDFE5238F7AFD1263CD38AB22EABD6C85239A08F9A909E6827E6A664291C1A31C7E3485BAD19E3F1A0008F96971C7E3484FCB4678FC680148E6803E6A09E6901F9A80140E68C7C9F85203CD19F93F0A005239A423E5A09E6827E5A005239AE57E377C66D03F67BF859ADF8C7C4F79F61D0F41B56BABA9421760A3B2A804B31380001C935D448E1064E001D6BF1A7FE0AB5FB4B78C3FE0A35FB7EE99FB337C28D5E29FC35A3C7B3599ED5FF727513C933BE08D9028C84E7730EA2937635A34F9DEBB1F287ED39FB5049FF052EFDAFB5AF8B3AF41ABC9E08F0138D3741D044C156FD5CB08E355C37EF59CA337032140238CD7D2DFF04C7FD9D7FE1AA7FE0A076B04B6FE67817E007917B7CBE52B5A5FEB72096400123E6F2E475C15E3FD187AD7967FC149BC01E17FD8C3C67E13F83DE0211369DF043C3A9AEEAB344ACF71E22F15EA9BADED5676196CAA079B69E02BAF1C57EAD7FC11F3F63293F633FD8F349B1D592393C63E2973ADF882E4677CD712F2AAC4F744217B739A68EBA95D287BABC8FAA57EED2E38FC6933F27E1547C4FE25B1F07F872FB55D4AE61B2D3F4E81EE6E6795C2A431A02CCC49E00001A0F3CF847FE0B5BFB606ADA77FC223FB35FC3F9613E3EF8E5E6DA6A574B380FE1ED0547FA6DD11D433C5E62213819DDDF15F9C1E2EFDA2A4D0FF006C2F146BDE1E9ACB40D1FE1378526F06E8FA943B8DC69F3DC26D9058463EF5D18C2C698E41C9A8BE31FEDA0FAD7C4BF88DFB455E4D9F1BFC6BBC97C27F0BEDEF23F9743F0D5AB9537AEA3A2B90F273F7803CF35F657FC111FF00E09AED7F7D67F167C6D610DCF86F4EDD3F82AD2EFF007926A7792E0DD6BD3A1C812CADB9625FE08F91F7A83B62BD9C2F2458FF0082187FC125BC41F0C7C573FC7AF8C5A6476BE2FD5E26FF008467449DC5C4FA35B49F31B9B9908DCF77203C9249018E7E635DB7FC15ABE2C47FB407ED1DE0DF80B6E7CDF0BF85638BC79F105C49FBA30A175D3EC645C7CDE64CBE7953DADD7D6BF427C4DE23B2F06F86EFF55D42E21B3D3F4CB692EAE679582A431A2966627B000135FCEDFED0FF00B4CEABE30FD9DBE2578DDE46B3F891FB50F889D74A856429259E9E3FD1AD228C91BB02D63DFD39320C75A0CE9CB9A7CD23D4751FDACAE3C0BF04FC7973E0D3FD95E27F8CB657579E20F115C46F0FFC213E10B377B6B25B6542009A64134CB923E69F90702BEC0FF82127FC13C749F00F8034BF8D1AC787D34CBCD6B4F58FC1DA55DDB0FB4787F4E70774E588DDE75C8C3B6790BB41E49AF9BFFE09B1FF0004C0D4FE33F8AB43F0B6BCB35A7847C1D2D86ABF112592677B8D7EF63803D8E8458923CB810A4B3AF426554EB9AFDAF8A24B6B74445544450AAA318500702834AF5D7C30EBB9E49FB7A7ED67A6FEC33FB25F8CFE27EA76B3DF43E19B2DF05AC4B96B9B8919628233E81A57404F61935FCEDFECF1FB396BDFB737ED5B67F0D74DBD375AB78F7C4337887C6FABD96FF2A50D3F9DA84CA71F2C6BBBC98F3FDE5C57DEBFF07457ED9B77AAE97E0BFD9DFC29AAAC5AA78A6F935AF112DB2891E0D2A00DC39FE1DF2EDC7AEC35EADFF06D1FEC8B69E05FD9D35BF8CD7D62135BF89378F69A5C8DD60D1ED5CC51051DBCC956490FA8D9E9537D76221EE53E7EACFD1FF87BE00D27E16F8174AF0E68365169DA3689691D9595B44B84862450AAA07D057E31FF00C1CD7FB43DF7C4BFDA4BE1AFC1FD21F4FBAD07C396B3789B5EBA85C3CBA55C9DF0C4AF8FB84A16C67FBD9E315FAFDFB477C78D07F660F80FE2BF883E27B8169A0F8474C9B52BC93FD945C85181D58E147BB0AFE69BC51F0F3C51FB4AFC5BD0EE62B796D3E2E7ED4BE2393ED76525C4930D36DAE656955DC1C9D905BB28278FBB542C32F7B99F43F44FFE0DB8FD8A2DF5FD1AEFE346ACB34BA5585CDCE99E17B29A22213392A2EB51504618BED48D5C723CB93D6BF567E307C46D3BE0F7C2CF1078A756BAB6B2D3BC3FA7CD7F3CD71208E3458D0B72C7819C01F8D41F047E13693F027E11F87FC21A25A5B59699E1EB08ACA18E08C227C8A016C7AB1C93EE4D7E67FF00C1C91FB5FDA789F40D0BF65CF0E6A3A945E27F1F08F59D7A4D3D4482CF4A8240C619C750272A71839FDD8C8C351A221BF6952E7E536B3E07D53E37FC58B6F16DA69DAAEA7F11BF680F124FABC7A7F5FB21BBB8DB046FC6EC843BC93D81AFE9B3F64DFD9B344FD943E04685E0AD0E12B069D0EFB8919B73DCDCBE1A5958E392CE4FE18AFC95FF00837B7F64CBDF8DBFB5E78ABE34EBF6AB3F877E1EA3685E1C9496026D4194ACD200783E5427667B339F4AFDB15EB4ADADCD712ECF916C2A8E2B90F8DFF1B741FD9FBE1EDC788FC4370D0D94324702246BBE5B896460A91A2F56624F41D813DAB9AFDA3BF6D9F859FB234FA445F11FC63A67855B5DF30D9FDAD5C89163DBBD895521146E5059B032C39AFC85FDB67FE0A5B77FF0507FDB85ECFC27771FFC33FF00C13999BFB5E06263F126AEF1F97BE3603E658C3BA201C1273DC5331A549CE56E8717FF000556F1F7887FE0AB3FB7D7833E0C7854DD43A35FEB8218A0E5629955819EFDC701963895829F52077AFDF1F09F8760F0878534DD26D46DB5D2ED63B48463A2468117F415F0CFFC124BFE09A177F017C6FE2AF8C1F1034BB38FC73E2598DAE81079BE73E83A3E176C79E8B2CA46F7C0E3819EB5F7A8FBB492B3B9B626A26A34E3D07639A00E68CF3480F34CE4003E5A5039A407E5A01E680171F27E1411CD267E4FC28279A00523E6AFCEBFF82B47FC1427E1DE83FB4D7C37FD9E2F2EB5CD4FC5BE26BE86F469DA367314A4916E2E48E3CB639623D813C57E8993CD7F3CBF0CBF675F1BF883FE0E39F1CDD6A77371E21D4347F88D6FA83EB52B6C8F4CD3951A5D9920851E5BAC41075C76A0DA8C6ECFDC5FD8FBF661F0D7EC89F04E0F0E787AC574E8A79E6D5350776CBCF753B192591DBB9C9C64F602BF247FE0A9FF00B69CBFF0538FDA72EBE16F87375D7C0FF849ABC3FDB52DAB799FF09C6B5C79365163878D1F82BCE588F5AF5AFF0082C8FF00C155759F8CFE33FF00865BFD9DB5198F8CF5F9041E2BF13DBA6EB7F0FD893892346EF2B7DDE3D481C9AF55FF0082627FC11B349FD9FF004AF086A7E20B18AD6C3C1AC2F346D2872F777D8E751BB273BA4249644CE14904F20602E0947F7933D5FF00E0995FF04F387F6766B8F89BE2AB50BF12BC5DA641672DBE13CBF0ED90DAE2C22DA31C3005DBB951D80AFAF80E0520E17F1A01E05073CA4E4EEC5C73401CD19E6901E6811F8F7FF05FDF86FE2CF0F7897E257C54D574AD51F4387C33A7F843C2AF643ED12334B234B72EA89964679A4893A027CACD7D25FF0006F2FEC1B2FEC63FB07E93A9F883469B46F1F7C4609ACEBB6F719F3ACE31B96D2D883CAF970904A9E8D23E6BEEDB9B286FD15678629955838122860186083CF7152AD06B2AADC391011F2D291CD213F2D04F341903A09010464118208EB5E47F053F60DF843FB3B7C5AF13F8EBC19E02D0740F16F8C1B3AAEA76D0627B80704A83FC0A480C557009E4E4D7AE13F35283CD03526B600B83498CAD2E79A407E5A047937ED0FF00B0C7C2AFDAB75BF0EEA1F103C1BA6F8967F0BEA31EA9602E4BF96278C108D22290B285DC48570CB9E715EAF0C0B0448A8A155400001C01E829D9E3F1A01E050176281F35201CD00FCD403CD00281F350071480FCD4A0F1400847CB4A473484FCB413CD00291F3518E6909F9A973CD0000734807CB403CD00FCB400B8E3F1A08E6933C7E34A4F340084734A47CD484F3413F3500281F3518E3F1A407E6A33C7E340011F2D291CD213F2D04F3400A4734639A09E68CF340001CD201F2D00F3403F2D002E38FC6823E6A4CF1F8D04FCD400A473411F35213CD04FCD400A0734638FC68079A4CF1F8D0028ED4FA60ED4FA0047FBA69B9E3F1A71E9476FC680184FCB4B9E694FDDA5EF400D07814679ACEF17F8CB4AF00786AEF58D6F50B3D274AD3A269EEAF2EE65861B78D4659999880001DCD7E3FF00FC1473FE0E6087C57757DF0DBF65213EBBE2769BECF71E35934FFB46976838DDF654218DC49C90095D83AFCD41518B93B23F5B3E27FC63F0AFC13F0C4FAD78BFC47A1F8674AB75DD25DEA97D1DA42A3FDE7602BF9DCF8FDFB6F785FF006FBFF82ADF8C7C71A8F8A5AE3E1EF82A78B44F0D7CCC6C4429C4D76848DBFBC7DDC8C9DB8ED5C07C75FD82BE2178B2CF43F88FFB44789BC65E20D7BC5F7320D2EC3C5378C24BE62A1E5782CC92228864606D51C2F15F6EFF00C13AFF00E08FDAAFC49F84979AA6907C3DE0A9618B1A75C5FE8C9A97EF07281A266504773F854DB5B9D0A9F26ECFD4BFD8735DF0AEB7FB35F87A5F086AF65AEE982321EF2D576A4B29396F4E9903F0AF5E635FCFFF00857F6F0FDB37FE09C7FB575F782BE265B45AB9B585A4D3E08AD162D1F59B5563896DCA639C7057820D7ED77EC7DFB5169BFB5A7C18D3FC516510B3B995765E5996CB5ACA3A8F5C7719AA30941AD4F53279AE2FF681FDA1FC19FB2DFC2ED4FC67E3DF10E9BE1AF0E69319927BBBD9C46A4E0E11727E673D028C935D85FDDA585ABCD23048E252EEC7A281C935FCF67FC1527F6CCD4FFE0AD1FB6FC9E10F0DDC9BCF82FF00093555B4B7B4109787C4BAC0DE924F91F7923E553B704F7A57D6C108DD9F63FECF3FF0743784BE3DFC688F48FF008551E2FD0FC1B7D7C2D2CBC41793A06910B05495A0DBC062CB801C9C1F5E2BF532D2ED2F6D239A33BA39543A9F507915F10FEC35FF000478F873E03F875A3788FC73E19B3D6BC793182FD6E2E037FC4ADA3E6248D33B415CE4F1C9FA57DADE1AD0C786BC3F69602E6EAEC5A4622135CBEF964C71963C64D30A9CB7B44B64FCB4B9E3F1A53F7697B7E3410349E6807E6A71EB40FBD400D079A33F27E14E1D68FE0FC2801A4F3484FCB4F3D6B13E237C43D17E13781354F12F88F52B3D1F42D12D9EEEF6F6EA511C36F120CB3331E00A00F8CBFE0B6FFF000530B4FD8B7E0E43E0DF0FCD6975F12FE205BCD0E9D632872B0DA0DA93CCEC9F70E1F0849196CE3A1AF0BFF8279FC2DD1FFE0941FF0004FDF18FED2DF16742B1D33C537BA62DE2DBD8C824B8BB84A816C9F3633713338C8C9EBD7AD7CF1FB14FC2DD6BFE0B39FF000549F1C7C52F155AEABA9F80B4CD59920927B709A7AE9304CC2CAD5564EA65552EDB01CE7271915EB5FF00070A7ED1B0EB9F1FFC05F07238E09FE1F7C2FD25BE23F8CEC20B6594CED01F2B4CB229D30F21E17BE476145ACEE75FC3154D7CCF0AFF008275FECEDABFEDAFFF000512F0B47E385B9BFD574C924F899F11AE238F6C126AF74ADF67B17EA156088C48A99F972DDFAFEFD469E54600C00380076AF8D7FE0877FB37DF7C19FD8F878A3C436563078B3E28DF49E29D45E38B130171868E3918F2768270060007A75AFB3BB7E3492B18D66B9AC86E7E4FC2BF237FE0E6FF00DBDEFB48D37C29FB307836E9D75BF89C05DF8A9E15264834656398430E14CCC854E7F841FEF57E977ED6BFB49E87FB207ECD9E33F897E2370BA3F8374A9B5199370533945F92253FDE76DAA3DD857F33DF0967F88BFB6A7ED1ADF132FEF9EEFE31FED09AEAD8683692A34B0E8B64CD98CE71F245142A4E3A623FAD31D18DE5767D8BFF0004E2FD88754FF8287FED7D05EF8A6C22B2F863F0BAC6D6CAEECE0880B5BB2813C9D3578FB9B5433E0F2383D6BF7674DD3E1D26CA1B5B68A2B7B6B741145146A152350000A00E0003B57997EC5BFB28E89FB187ECF3A0781345DD3FF674464BEBD93066D46EE425A69E46C0CB3393F4181DABD587DEA09A93E67A6C7C41FF0005E6F8BA740FD8E20F86D637AD65ADFC67D5E0F0C44E037EEEC4309F5090B0FBA16D239793D7701DEBF243E1378DE4F8DBFB4F6A5F11B43D06F75E3F0E9BFE114F859A3DA81241ACF896E0058C85619F2ADA15F3188F9408FAD7D49FF071E7ED3ED6BFB4669BA7F87AE126D57E1AF862E6D6339F312DF53D5DE241841CF991DA42E7E938AF4BFF008373BFE09EF6BE13F85DA67C55F115879CF6AB2C3E148E56DE90B484ADD5F6DED3B9063DC4642A9038341AC6D185CFBEFF00611FD9720FD90BF669D0FC28D752EA7AF4C5F55F116A931CCDABEAB707CCBBB9739E4B48481E8AAA3A0AD3FDAC7F6A5D0BF64BF84B7BE2AD744935AD880F2C7130DF1C5901E66C9E1101CB1EC2BD409C2D7E077FC162FE33DEFC7AFF00829DFC56F85FE1FBCD662D7EF743D17C1D6EF25C1163656120375A94AA84801CAB85C8EBB6832A71729687CCDAB6A1E27FF8288FED73E3AF8AA23B85D53E35F8A2D3C15E05B3DE6536D66F208CCCBD711C502C929ED904D7F4D1F09BE1AE95F06BE19E81E13D0ED61B2D1FC3BA7C1A75A431285548E2408381F4C9F726BF21FF00E0833FB28E8BF157F6CBF10FC44D374FB987C03F042DDFC31E16769B74179A8CC805C4C17A1314242641E0CC7D2BF669B81F9505E21FBDCBD8FC80FF0083943F6C6BEF167C51F861FB2B786752F2FF00E135906BBE338A152D2BE9F13AB5BDB1EDB257472C3D107AD5CFF8211FECF107C73FDB0BE237C75BD8525D23E1DEFF0000784C38242CE151EF6E133C700A4408FF006C533F6EEFF8249FED05E3BFF8293FC44F8E3E195F0BF8CB4DD73C3D1DA786EDA6BB16B73A35C430A43144CB20C14DCF24B956E70720122BF44BFE09FDFB2558FEC43FB24783BE1CDA3417173A2D9EFD4EF238C27F68DF484C97139E392F2331E7B6281B6A34ECBA9DA7C7BF8D9A17ECE1F053C51E3CF13DDAD8E81E12D366D4EFA63FC31C4858803BB1C600EE4815FCDB7C29F1178C7F6B9F8B5E26F8BB3A85F897FB44F89E2D1FC302E3322E9B6F3CA52DD028C111C502EF38EC9CD7EC37FC1C6DF05BE297ED0BFF0004D4D5FC25F0B74DD4359B9D5359B15D7EC74F88497775A52B33CCB18CE490EB0920724022BC53FE08FDFF0004C7F167847F692F0EF8E3C77E15BBF0B787BE14F87974FF000C585FC69E66A3A85D4789AF88049531439886403991A82E845C69CAAE87E817EC33FB25E8FF00B0EFECB7E12F867A2CBF6A87C3B69B6E6F5976BEA374EC649EE1867EF3C8CCDD78C81DABD6C1F9A9DFC540FBD41CADDDDCF9FF00FE0A3FFB09DA7FC1427F664D6FE1E4BAFBF84A6D655606D5EDEC63BAB88A0DC0C912872301C0C1208C707B5617EC83FF0004A0F851FB1F7C3FD2B41D27498F5687498D1626BD850A97503F78500C1624672735F4E8E947F07E140D4E4959318A36AE2827E5A7F6FC690FDDA09133CD00F34EEF40EB400C07E5A5079A51F769475A006E7E4FC28279A77F07E141EB400D27E6AFCE9FF829A7EC69F1D3C7DF15AE344FD9EBC3BA07872D7E2991378D3E205E6A318B9D276811158603F396318182B91EE2BF460FDEA4DBF375A0A8CDC5DD1F21FF00C1397FE08EBF0CFF00E09F9E125FB05A9D77C5776E2E753D6AF9FCEB8BEB9E732B31EA724E3B0AFAE9784A78E9483EED0129B96E2678FC6807814EEDF8D03A0A091B9E68079A777A075A00629E6941E6957AD28EB400C27E5A5279A53F7694F5A00693F3500F34E3F7A8CE0FE3400DCF3480FCB4E691539240E3BD7897ED71FF000517F82FFB0D78367D67E25FC40F0FF87E38B684B4372B35F4E490008EDD3323FE0BC5007B6678FC6807815E31FB17FF00C141FE11FF00C141BC17A8EBDF097C6367E2CB0D1EE16DAFC471490CB67232EE5578E4556191D0E307079E2BDA4741400D07E6A4079A78FBD483AD00203F3500F14E1F7A81D280184FCB4A4F34A7EED29EB400D27E6A33CD6078EBE2CF863E18DDE930F88BC41A3E8736BD762C74D4BEBB4B737F70412228B711BDC81F74735BF0C9E6C6ADB59370CED6EA2800079A407E5A78EB483EED002678FC68279A776FC683D680184F34A4FCD4A7AD29FBD400D07E6A33C7E35CCD87C65F0CEA5F15EFFC1116AD0378AB4CB28B50B8D3CAB2C890484AA38246D604A9E8491DF1915D476FC680184FCB4A4F34A7EED29EB400D279A33CD38F5A3BD00341E6901F969E3AD20FBB40099E3F1A09F9A9DDBF1A0FDEA00693CD04FCD4E3D683F7A801A0F34678FC69C3AD1DBF1A00683D29F483A0A5A0046FBA69B9E3F1A7372A69BB78FC680027E5AF39FDAAFF006A5F0A7EC75F05359F1E78CAEE5B6D1B4581A6710C6649A623A2228EA49C0F4E7935D0FC5CF8BBE1BF815F0F752F1478B759D3B40D074984CD757B7D3AC30C4BEECD81CD7E237C72F1B7C4EFF83893F6B36F0DFC34967D17F67CF0FDCC6B7D7F75BE3FEDB0BCB385FF009E39C6071BB8352DEB646908A7ABD8F1CF8F7FB4EFED0BFF0007007C7F6D0340FF00849FC1DF0B3779565E19D3EE0A25EC7C9F32EA45004A4F19FE15C903A66BF58FFE09B5FF00046DF007EC11E0F8B58D5ED34BD5BC4F0DBEF799A01F65D380193B37649381CB93F80AF73FD88FF612F057EC35F0BED741F0BD9446EBCB0B777EF1812DC1C73F45CF415F34FF00C1C4BFB735CFECA1FB14CDE17F0CCD6B2F8FFE2B4CDE1BD1ED1893288A45C5CCEAAA41CC7113824800B0CFA53BD916E77F763B1F03EB7E38B9FF0082B5FF00C15CB55F18FF00684F73E05F06CE7C37E16B059F7C12468E04F70BD002F203EE401E95FBB9F0DBC1369F0EBC0DA768F650A410D940B1ED418C90064F4AFCD4FF00837FBF618B3F84DF0FB4BD57ECD07D9749B6510B3265DE66192C4E3AF25BF115FA9017E5A168AC4549743E2BFF0082F47ECDB73F1D3FE09F1E30D57424B94F17F81AD9B5FD226B503CFDD061E540704E1E2575238CE6BE7FFF00837C7E2ADC7C4F93FB6EC6F3FE255ADE8E9F68B777DA1E55C3091571CB7241F6AFD43F17F8762F167862FF004C9D23920D42DE4B691644DCACAEA54823B8209AFC11FF008272FC581FF04ACFDAA7C65F0D35B95B51B3F00F886F208FC86D8D3D93C9218D88200FBB9E807238A9BDA5665D34E51B23F40FFE0BD1FB735E7C13F81B6DF083C09A904F8AFF00172392C2CC5BCC04FA2E9D822E6FDC755555DCA84E32DD3A1AF9BFFE082DFF0004FED1F55BB83C402C9E2F09F838082D5D86D7D56F839DD33F7EAA4FFF00AEBCDEFB4AF12FFC1427F6B8B6F8837F609A7F88FE346ABFF08F7866DDB89B44F0C69FE6C8F21C9FBF312492BC7CDED5FB3FFB3DFC0AD13F672F855A5F85340B54B6B2B04CB63ACB2372EEC7B92734D6AEE135C91B753B5E80D19E3F1A0AF068DBC7E3546004FCB4678FC682BF2D1B78FC680149E6901F9A94AF34817E6A0001E68CFC9F850179A36FC9F85000CD8AFCB2FF008385BF6F2CE9B61FB32F8474ED3F5FF1178EA28EEFC48F70DBA2D1AC15F7460807226792352A08E83383915FA31FB45FC79F0EFECC3F043C4DE3FF0015DEC761E1FF000AD849A85E4CE40F9506428F56638503B922BF17BFE08AFF00B365E7FC145FF6DAF15FED11E36B4B9BC5D4758975FBE69E12B6E5998AD8D92E490C21891091DBE5EE050ACDD99B5256F7DEC7E847ECEBA0F85FFE093BFF0004C6D63C6FAC88208F47D05FC49A90DFE59B897C9DD1400B60EF662A83FDA7AFC94FD953E1778D3FE0A11FB5E7876C3C49FDA1FDB7F1C35C1F117C72C267B8FEC6D0A373269FA5166C958C019504AFDE5E2BEB3FF83823F6ABD1BF699F8CFE1EFD97B4B9E7874BF05DD5BF8FBE256ABE76CB2B2D36DA39245B27DA72F249953B0F1931D7D01FF0404FD9F2FAD3E0AEBBF1C3C416FF0063D77E325D1BFB5B3F9BFD034D46296D110C063E455E07000145EFA957B7BEF73F402C2C62D2EC22B7B78D61820458E38D0615140C0007A0153678FC680BF2D7CBDFF0580FDBD21FF8277FEC3DE28F1ADB1B79FC597AA348F0C58B3AF997BA8CE7644150905F667790BCE14D060B567E6E7FC1C27FB6D58FED4FFB47C7FB3FDACB249F0BFE132AF88FE24DE5B4C556F2ED549B6D3770EE0ED2C064EE6C632B5F507FC10BFF00E09D775E0BF0DC1F1F3E22E96967E36F165A6CF0FE86F0AF97E12D2CE44491F1912C89CB1E0857DBEB5F9D5FF04CFF00D84B5AFDA27F6B5F077C36BDB84D68E917517C4AF8C1AADF48C65BDBE9242F159A9C6261BF6A9C9C7CAE7AE2BFA368E116D0224680226142A800281E941D153DC8F22DC793F3551F12F88ECFC23A05EEA9A8DD416361A7C2F7171713C8238A18D46E66663800000E49ABC57E6AFCF0FF0083907E21F8917F64BF08FC2DF0C5D496537C66F1443A06AD71167CC87498E27B8BC230380523556391C37BD073A57763F26FC5DE22F107EDBBF1D6C218F483A978E7E3878B2F759D3EC226F28C093B18EDD9A423E58A2B48E37C9ED9C7515FD15FEC8BFB3CD8FECA5FB34782FE1EE9F27DA21F0AE991D9BDC15C1B99402D2CA47ABC8CCDF8D7E567FC1BBFFB3668DF173F6D0F8B1F19C7DB6E74BF87A61F07785E29DBF73652187FD24C63186C45E526ECE46E6F5AFD9B2BF2D06B5649FBA8CCF1A78A2DFC13E0ED5759BC9162B4D26D25BC99D8E02A4685D89FC01AFE637E14FC40F12FED57F19BE267C77D3B497D57E20FC65F10C9E1DF01E94158B451B49E52C81BB205EADD142B735FD3CF88FC3B67E2DF0F5EE97A8DBC777A7EA50496B730483E59A2752AEA7D88247E35E1BF077FE098FF0006BE017C4BF0F78ABC29E138F49BFF000A69B2697A3C31DC39B5D3E2936EF68E2276F9842805CE4E09E79340519A8B6D97FF00E09D3FB1ED87EC2FFB23784BE1EDAF9536A1616E6EB59BB45C7DBF5198F997331C0E7323103FD9551DABDC3A9A36F346DE68326EEEEC681F2D385205F96942F1408681F2D29183405F9682BCD0004FCD403F35057E6A02FCD400A0F1499F93F0A50BC526DF93F0A0033C7E3413F2D1B78FC682BF2D002E79A4079A5DBCD205E680007E5A01E680BF2D0179A0033F27E1413CD1B7E4FC282BCD0004FCD403F35057E6A40DF3500381E2901F96803151CF711DA42CF2BA468064B31000A00933C7E3403C0AF04F8C1FF054AFD9CBE02A4E3C59F1B3E1A69135B9915EDDF5FB792E0327DE41123172C3FBB8CE78C57C2FFB467FC1DF5FB3BFC34BE8ACFE1E683E34F8AD72DC34D6569FD9D688DD86F9C0624F3D13B503B37A1FAC99E6901C1AFC03F10FFC1D2FFB547ED0704FFF000A7BF678D0B4EB75B9F2D2EAF4DD6ACE10E400553CA50DC649E40C1FAD79FF00C4AFF8299FFC145FE268BA5D7FE227C37F835A6C881093269FA64A01EA63F38C92E473922835F613B5EC7F47325C2C1197770AAA32598E001F5AF1EF8CDFF050EF817FB3D46C7C69F173E1F7879C004C375AE5B89B04E33E5862FD7DABF9B2D2BE0AFC5DF8CF713CDE25FDACBE24F8FEE754536F258781975BF1235CEE3F3445A35108FA6715E91F057FE08137BAF6B568FA6FECFDF1D7C5AE58B493F8A64B2F0A5A107A026691A5E9D488DB93415EC3F999FAC3F187FE0E80FD8F3E12B5C4307C45BDF17DDDBE4793E1FD1EE2EC4840CFCB21558CFD7762BE69F1AFFC1E81F0AA0D4A7B6F0A7C18F89DE2320ECB79269ADAD1666EC0A83230E7DAB07E19FF00C1B81E3D82F04F63F0CBF674F87F0DE40CB2BEADA96A9E27BD89587313A2AC10B13D0957C71DEBEA6F853FF040BFF844F47786EFE28C5E15796045F2BE1FF8374DD1163900C16F3674B995F9C632474F7A09E582DD9F1678F3FE0E90FDA8FE2F69AA3E157ECB92E86CAE525BAD596EB51073F776A88E019FC48AE07C5FFF00052DFF008298FC59091EA7AFF80FE10D8790D2CB3BDB69F63819EAE6E1A475C7FB2457EA5781FF00E082DF09B4C3BBC61E2CF8BFF12A4751E6AEBFE31BA4B791F39DE21B630A2F418006063A57ADFC36FF008252FECE9F09BC40DAB68DF07BC0FF00DACCC58DF5E69EB7F7209E78927DEC3D803C5009D347F3E1E35F0E7C77FDA9D1748F895FB70CFA8C92C8524D2744BBBCD59771E8852C70A73D8115DCFC1BFF00820B68DE2DD4E3B9B6D13F688F8B1A8DC5BB7FA6DC7859740B0F314F18B8D45E37033DF6B6474CD7F47BE11F86BE1EF014974743D0747D19AF5C4B706CACA3B7370E06033EC51B8E00193DAB6C2FCB40BDA24FDD47C8BFF049DFF82557823FE09B9F0E751B9D13459B4BF1878CE381FC42EFAABDFA9688308E356215380C725506493D78AFAE81E051B78FC680BC0A0CE527277600FCD403CD017E6A02F340801F9A941E2902FCD4A178A00427E5A09E682BF2D0579A00F0BFF82837EC29A17EDFFF000317C1FAB5F49A2DED9EA965AC699AC43009AE34BB8B69D6512461B03715564CFA377C57B858DBB59D9C3117690C51842E7AB60019A90AFCD4BB79A004079A01F9680BCD017E5A0033C7E34A4F349B78FC694AF340084F3413F350579A0AFCD4011B59C525D898C4866518572BF301F5C5499E3F1A02FCD46DE3F1A0009F968279A0AFCB415E680149E68CF3415E68DBCD00203CD00FCB405E680BF2D0019E3F1A09F9A8DBC7E3415F9A800279A09F9A82BCD057E6A005079A4CF1F8D285E6936F1F8D0078FF00C28FDA33C61E38FDA1FC5DE0CD67E14F897C35A0F87F61D37C533DD432D86B81BA8451874618E7208F7AF63A8D23DA7EA7352525A008C7E5AE6BE2FF00C5CF0FFC09F867ACF8BBC53A9DAE91E1FD06D9EEEF6EEE240890C6BC9E4F7EC07726BA57FBA6BF11BFE0E6FF00DADB5FF8BFFB467C3CFD94744BB7D3BC35AF5BA788FC5732C596BE89253E4C0A73F74189D881D4EDA771A388FDA43C1DF16BFE0E05FDA7740D4E2B6D7342F80B6FB62D27469E59238AF3E73FE9971129C6E65E577741F5AFD9BFD8F7F649F0B7EC67F0634AF07F862CE1821B38112799570D70EA00C9F6F415C47FC132FE03DB7C13FD98343F25E7DFAA5B472B45226CF24282A001D7A7BF4C57D159E6A527BB2A53BAB2D88EF6F63B0B369A5709144BBDD89C0502BF9E8F8CFF00156F3FE0ADFF00F0576D5BC49661EFFC07E04793C2DE1B575F97746E04F731F500C8D95CE338503B57E9D7FC1797FE0A0B73FB0D7EC7135A787A2175E3DF89171FF08CF86A3C8FDD5CCC8D99981046D4504F3ED5F3D7FC1BF7FF0004F93E10F87DA6789F5DB78A28F4C08EB079617ED171F7BCC6F5F9F2D9F5C50B595CA8592BB3F4BFF676F83D63F033E14695E1FB28A2885B440CA5463739EB9F5C703F0AEE037CB4D5E2807E5AA321C5B9AFE7EBFE0BB2FA67C16FF82BED8A0B69A49BE206850DE3C71C6BB6431C863E5BEF1FB8FF009D7F4084F35F817FF0579F09DFFC54FF0082D243AB3CA9709E15D32CF4FB7B5DBE618D2532B67246149909CE3B62B39DEEAC7461EF776FEB53F47FFE096BF01EE7C4320F8B5AFC304264D320D13C31A7AC01574BB28D02BB82403BA46C938E31F535F6B16F9AB87FD9BFC1927C3DF811E13D1E67124D65A6C2B230000DC5431E9EE6BB727E6AB57B6A633936EEC52DC1AF8D7F698FF82C6F85BE15FED23FF0A53C0FE1DD4FC7FF00152E625FB359C122436093B7DD8E59B25971C166D9B40E376EE2BD9BF6F8F8C5AE7C0AFD93FC63E23F0E59DC5E6B16B65225BB43B49B42CA57CF39E311FDEC77C62BF3EFFE0DFF00FF00826A41F087C73A8FC5DF156AF6FE34F12F8B6D1B51B4D66FDF7DFCCF2B82EEA09388C020641EAFDA95D737297187B9CECFD5CF0FDDDD5EF87AC66BF812D6FA5B747B9851F72C321505941EE01C8CFB55CDDC7E34D27E5A5CF1F8D5190E2DCD206F9A909E6807E6A0050DCD1BBE4FC2901E6B84FDA63E3C693FB32FC04F15F8EF5BB8B5B7D3FC33A64D7CE6E6710A4AC884A47BCF00BB00A3DD87149B495D8D26DD91F96FFF000711FEDC6DF187C51A7FECB5E01B5BFBED76EEF2CEE7C47A9003FB3AC379CC16929FE267C82571C7CBCE4D7DCDF0F744F05FFC121BFE09D9717FAFDEC56FA3F817487D4B58BB8E154375384E42A0C02CCDB515475E2BF353FE081DFB2FEA1FB5CFED35E23F8C9E3DB692EAFECB5F9BC45A938B847B69B509897B788607CFE4A90DDB040E38C57A77FC1C77FB46D87C65F885E01FD9CEC3C4B6D6DA2D94ADE34F89B1C319924B2D2AD156582294FDD0257E8B9C93B38F54B45A9B3FE447C6DFB0AFC01D4BF6EAF8EA22D6D6493C5BFB49F8A5BC6FE30965CC8F63E15867F392CD8641412908BFEE9502BFA31F05F8434DF87DE14D3B43D22D63B1D2F49B64B4B4B78FEEC3120DAAA3E800AF843FE082FF00B305F785FE0F6BDF18BC55A1FF0063789BE285E19F4BB29A3C4BA2E869B56CED57FBA9B406C0E3A57E80E79AA26AC93765D06CF7296B6CF248CA888A59998E02803249AFE767FE0A5BFB6DCDFB737EDF7E26F1E42C35CF84BF00EFA3F0DF82AC6DDB29AFF88A565432AA9C877129215BA0544F535FA0DFF070E7FC143758F805F07745F81DF0E24964F8B9F1C8B693A798705B4BB16212E2E5BB8F958AA9FF0078F6AF12FF008224FF00C1317C3DAA7C53D275E9EC63D4BE1EFC138DB4FD30DE5B7CBAFF008964DAF73A8004FCCB6E088D18E7E676C72B493B846365CCCFB17FE08A9FF04ECB8FD83FF6637B9F16882F3E2A78F6E5F5BF14DF894CCCB2484B476CAE79D912903038DDB8D7D97BB8FC69AA36A7E14B9E3F1A6672936EEC52DF3570FF00B407ECEFE14FDA67E1F5FF0086FC57602E6D2FED66B41710BF93796892A8590C130F9E262382548E95DB93F3500FCD40BD0F33FD92BF642F007EC43F07ED7C0BF0DF451A1F876D6692E7CA6B892E259A690E5E592490967663D4935E9A5BE5A4079A427E5A0076EE3F1A0B7CB499E3F1A427E5A007EEE68DDCD373CD19E6801437CB4A1B8A603F2D283C500286F9682DCD341F96949E68014B7CD406F9A909F9A807E6A00706E29377C9F85203C519F93F0A005DDC7E3416F96933C7E3484FCB400FDDCD206E6933CD00F3400A1BE5A03734D07E5A5079A005DDF27E1416E6933F27E1413CD0055D7EDAE2FB44BC86D2616F77340E904A467CA72A42B7E0707F0AFE78BFE09E5FB777ED59FB187FC14FFC77F07BE27FC42D4BC67F67BABC8A4D375F9A5B98269372345736AED860A54F0AA76F5E38AFE89C9F9AB87F8A5FB36780FE355DDBDC789FC2BA26AD7D66DBEDAF65B54FB5DB36301A3987CEA704F43DE834A6E29FBDB1FCEFFF00C145FF00E0AF7FB4EFC54FDA0BC6BE0A83E34DB7C3AF0F7872E156DE1F0B46B6B3C88CA7724B30632EE53C7DE039E95F3E7863F66FFDA3BF6AEB367B2BEFDA7FE27E9573884CE2E3519F4F9C12432AC9211130F5C1C57F553E1AFD9E7C0BE12B411587847C3B07F7A4FECF89A590FABB90598FB924D7596B67159DB88E2448A35180A80281F402A3DE35F6B4D6D13F9B4FD973FE0DAFF8D9E2FD5ED752D5BE0DF84349D36226554F177891A192E723A4896E93480FB1C77E95FA0BFB3DFF00C1BC979E0AD3F4C6D4AFFE0C7831A32EF710F867C0A351BB88B03811DDEA1348A1813F78DBF6E82BF52C0C2F5EF4A0F02AC875E4F6D0F8FB4FFF0082267C28BCB5FB3F89BC45F153C5D6A635436977E2DB8B0B45C75DB0D8FD9D003CE4608E7A57A8FC25FF0082687ECFDF03AEADAE7C2FF083E1FE9B7D66498AF7FB1A09AED49EADE748AD213EFBB35EE19E68079A0CDCE4F764163A741A6C423B78608100E16340A3F2153AA806914F34A0F3412296F9682DCD349F96949E68014B7CD4A1B9A693F3500F3400EDDCD206F96933CD203F2D003B771F8D01B81499E3F1A01E0500286F9A80DCD203F35203CD003837CD4A1B8A683F3500F1400A5BE5A0B734D27E5A5279A0052DF352EEE69A4FCD4679A0050DCD01BE5A4079A407E5A0076EE3F1A52DCD373C7E3413CD00296E682DF35349E6949F9A801437CD46EE3F1A407E6A33C7E3400A5BE5A0B734D27E5A5279A00716E68DDCD349E68CF3400A1B9A037CB480F3480FCB400EDDC7E3416F9A933C7E3413F3500296E682DF35213CD04FCD400E0DCD26EE3F1A4079A33C7E3400A0F029D4C07A53E8010F4AF803FE0A9FFF0004607FDB57E39E85F18FC1DE2A7F0EFC40F09691369B1D9496EAF69AE47B8C91C3239E62F98B0DE15B86E9C57DFEFF0074D371C7E349AB8D3B1F9FFF00B317FC353FECFF00F123C15A078DE31AA78244C20D4E5B4B537821561B5023A02C114951920772702BEFDD42F63D3ACE59E5758E3890BB331C0000CD39B84AF8A3FE0BBBFB702FEC77FB16DD5A6952093C6FF10AE93C3BE1FB443FBD7966043CA0641DB1AE589FA54BD0AD64F43F357F685F8B57FF00F055AFF828F78ABC5164757D43C21F0DAFD7C25E0CD3430F2350D4158ACF70149C2B6E246EFEE8EB5FB85FB2E7C1D8FE067C11D07C3BE584B9B5B656BAC36EFDEB72C33DC03C0FA57E6DFF00C1063F63EB3D12F6CEEA2D3241A57C3C88235EDC264EABA9DC279934D93F7882C3E6EC78AFD641F7A9C6296C55493F8470EB483EED201CD201F2D5191C87ED0BF1025F859F04BC53E21B7F2FED5A469771756E2438532AC64A027B0DC057F3EFFB18F8EFC67FB57786745F1B78A1EF357F1AF8875E8E0BCBBDBB9E60D727014F65507007B57EF17EDBBF0B7C41F1A7F656F1CF85BC2C6D97C41AE69335A5835C12B12CCCA42EE23A0CE39E6BE47FF82467FC126359FD9BFE0EF846E3E28DBDB5B78A741B8FB59D3AD2E44F009D37047675E1872580F5C67A566EF737834A373EFF00F0969ADA3F8574CB47C97B5B58E2624E492AA01CFE55A27EF5348E6823E6AD0C0ABE20D02CFC51A25DE9DA85B4379637D13417104ABB92546186523B8209AF3CFD9E7F64AF067ECC3A259E9BE12B4BBB4B2D3A192D6CE19AE9E54B481DC398A35270AA0A8C0EC0015E9A47068C71F8D01776B0A7EED2F6FC69847CB4B8E3F1A0071EB40FBD4D239A00F9A801C0F35F8C7FF0717FED352FED0FFB4B7C3FFD993C3CF637FA769A53C51E2DB795F625C4D9D963665BA1C96672B8CFDCAFD47FDB4BF6A7D0BF62CFD98FC5FF00127C42F1FD8FC3562F345034811AF6E0FCB0C084FF0013B95503DEBF2B7FE087DFB2EF893F6B3FDA67C43F1B3E2C4316ABAB4B7AFAE5D0BA8D64F2EEA42BF64B75206364310C8CE4F0B41AD38E8E4CFB97C29A8F84BFE08BFF00F04AFBCF106BBA6D969963E08D2E4D4EFACF4F001BABB95F2B0A9246E767754CE6BF1CBF630F823E2CFDB77E32E99A3F8BBED7ADF8D7F692D723F1878F269A7C4BA4F872DE61241685B1B955C260018C04402BE91FF83897F6A11FB5C7ED5DE1AFD9B348D46DDFC01F0F615F187C489E26C84923DC61B3723F8B6E0EDF5957D2BEC2FF0082177ECA52F83BE17EB5F197C43A52E9FE23F8A2637D36CE58B12E89A443B92DAD94F60576B103DBAD052F763CC7DE3A268F6FE1FD22D6C6D22482D6CE258218D060222801401EC055BEF4D239A31CD0607E57FED4FF00F045BF8A7F18BF6F2F89BF192DB5FD1353BFF1AFD8B41F0BDD5CDE48B2781F4AF2234BA9D2329B5A6044BB150F593248C9AFD23F80DF06346FD9EFE10E83E0DF0FC1E4695A05A25A423AB4847DE918F7666CB13DC935D601F2D2E38FC6925629CAEAC3BF83F0A3B7E34DC7C9F8518E3F1A648E3F7A81F7A9A47CD401F35003875A43F76900E6908F96801FDBF1A43F76931C7E34847CB400FEF477A6E39A31CD0028FBB4A3A5300F96940E280147DDA53D69807CB4A473400E3F7A81F7A9A47CD401F35003874A3F83F0A681C518F93F0A00776FC690FDDA4C71F8D211F2D003FBD03AD371CD0073400A3EED28EB4C03E5A5039A0077F07E141EB4DC7C9F850473400E3F7A81F7A9A47CD401F35003874A41F76900E2900F96801FDBF1A07414DC71F8D00702801DDE81D69B8E68039A0055EB4A3AD314734A073400A7EED29EB4C23E5A5239A0071FBD40EB4D23E6A00E6801DDE907DDA4C734807CB400FEDF8D03A0A6E38FC680381400E1F7A9075A403E6A4039A0078FBD40E94D03E6A00E28014FDDA53D69847CB4A473400E3F7A8EF4D23E6A31CD003875A41F76900E6900F96801FDBF1A0F5A6E38FC68239A0053D694FDEA611CD291F3500387DEA3B7E34D03E6A31C7E3400A7EED29EB4C23E5A5239A0071EB477A691CD18E6801C3AD20FBB480734807CB400FEDF8D07EF5371C7E3411F350038F5A0FDEA691CD047CD400E1D68EDF8D340E68C71F8D00387414B4C1DA9F4008FF74D37B7E3ED4E7FBA6984FCB4010EA37F0E97A7CB733BAC50C086491D8801540C926BF9EAF8B3F1B35EFF0082AFFF00C147B59F1FE8971ADDEF80BC273BF877C196574736D2DD83B25B98A351D09C9DC4E703F0AFD1CFF8386BF6C8BDFD9FBF632FF8413C2B752AFC45F8BF771F86B448EDE629710A4AC167B81B79C2464F3C0CB0AF35FF00820F7EC4D17806086EA6D3DBFB13E1F44DA7594F21052FAFE401E6953A93B4B119C8E49A95ACAE6F4DF2AE667DF9FB207ECFD69FB357C07D0FC35065EEA2844B7B3331669A7619724939EBC0FA57A70FBDFF00EAA45E00A507E6AA316EEEEC075FFF005520FBBFFEAA5079A407E5A0429EBFFEAA46EBFF00EAA5279A463CD0029EBFFEAA0FDEFF00F5504F3413F350007A1FFEB51DBF1F6A09E0D19E3F1A0043F77FFD54BDBF1F6A427E5A5CF1F8D0007AFF00FAA81F7BFF00D5413CD6578E3C67A77C3BF086A7AF6AF751D9697A3DB4979777121F96189177331FA01401F979FF0005D7F18EA5FB58FED33F0F3F672D374AB9B9F0BF87922F885E32BD019630B1BCB1D8DAEE040CBCA8E70739E3D2BE91F18FC54D07FE08F9FF0004BCD77C6DE2A9ADC5EE9162F7CD0A22A7DB7529C620B541DFE6D88393854273C57CFDFB317C29F127C67FDB9ADAEBC55702FB55F1EDC37C44F16FEECE34BD2ADD82685A463F8064895B38DCD04BD726BC13FE0B6DFB5468FF00B7DFEDB9A4FC19B2B979FE157ECF53BF893E215C16C5A6A3A8A6121B01CE1997714E7F8A46F4ACED2DCEAE4BB50478CFFC135BF62EF10FED69F12B45F0F78AAE2E27F15FC5ED4CFC49F89DAC46EDF68B7D2849BED34F66CFCBE7B3138FEEAF423A7F43DA1E8969E1AD0ED34FB1823B6B2B185608218C00B122AED5503D0002BE4BFF0082447EC7775FB3EFC31F1078E7C47B5BC65F156F1357B940081A658AA04B3B2504F023882838E335F5F13F2D686555FBD6429EBFFEAA3BFF00FAA8279A33CD06420FBBFF00EAA5EDF8FB5203F2D2E78FC6800FE0FC3DA8EDF8FB519F93F0A33C7E34001FBDFF00EAA07DEFFF005504FCD403F350003AFF00FAA90FDDFF00F55283CD213F2D002F6FC7DA90FDDFFF00552E78FC6909F968017BFF00FAA8EFFF00EAA33CD19E680107DDFF00F5528E9FFEAA407E5A5078A0041F77FF00D54A7AFF00FAA901F96949E68003F7BFFD540FBDFF00EAA09F9A807E6A00074FFF00551FC1F87B500F1467E4FC2800EDF8FB521FBBFF00EAA5CF1F8D213F2D002F7FFF005503AFFF00AA8CF3403CD0020FBBFF00EAA51D7FFD5480FCB4A0F34007F07E1ED41EBFFEAA33F27E1413CD0007EF7FFAA81F7BFF00D5413F3500FCD4000E9FFEAA41F77FFD54A0F1480FCB400BDBF1F6A0741FFD6A33C7E3403C0A003BFF00FAA81D7FFD54679A01E680117AFF00FAA9475FFF0055229E6941E68010FDDFFF005529EBFF00EAA427E5A5279A000FDEFF00F5503AFF00FAA827E6A01E6800EFFF00EAA41F77FF00D54B9E6901F968017B7E3ED40E83FF00AD4678FC6807814000FBDFFEAA41D7FF00D54A0FCD480F3400A3EF7FFAA81D3FFD5403F3500F140087EEFF00FAA94F5FFF0055213F2D293CD0007EF7FF00AA8EFF00FEAA09F9A8CF34000EBFFEAA41F77FFD54A0F3480FCB400BDBF1F6A0F5FF00F5519E3F1A09E68010F5FF00F5529FBDFF00EAA4279A527E6A0007DEFF00F551DBF1F6A01F9A8CF1F8D0021FBBFF00EAA53D7FFD5484FCB4A4F34001EBFF00EAA3BFFF00AA8279A33CD0003AFF00FAA907DDFF00F55283CD203F2D002F6FC7DA83F7BFFD54678FC6827E6A000F5FFF005507EF7FFAA8279A09F9A8001D7FFD5476FC7DA8079A33C7E34000ED4FA603D29F40087A521E5695BEE9A6E78FC6803F3BFF00E0A87FF04A9F1E7ED43FB54F87FE2D7846FF004DD6350D03409344D2B48D52E9AD2DB49B896652F7A1D41DDFBADCA5719276E3D6BECDFD94BE072FECE9F02F41F0A79C2EAE74F801BBB80389E76E6461C0E33D3DB15E864FCB4B9E6A546DA94E57561474140FBD4D0781403F355123875A41F76901E6807E5A0071EB48DD6909E6863CD0038F5A0FDEA693CD04FCD400E3D0D1DBF1A693C1A33C7E3400A7EED2F6FC69A4FCB4678FC6801CDD2BE6FF00F8280DDD8F8DFC3D67E06D52E24B4F0D4F049E21F145C2C8D1AA69B64C92185C8E8B2C8154E48F955F9AFA3657D8849E001926BE0BF1FF00ED2F17EDDDE3FF001FFC2AD1FC3939D026D5ACBC39A9EBB13E3ED3A6EE26F9490432AE04899F4933532D5599B515AF33E87CF5F04FF6CDD67F646FF82797C77FDAEBC676BF62F147C5FD53ECDE00D21CBB19A048CDBE950C71B64852C5E4DABC6D0CDDEBCABFE08E5FB07DFF00C56F1BE91A478D6096FF0056BDBAFF00858FF14B5000F99777D3B89AC34C9DC8E8C59E6745EA10038046786FDBBBF680D3FF00E0A39FB79BE99E1F824BAFD9F3F667920D2341B0D393367E23F103BA41144880618094AC6A4021510B7435FB33FB027EC9307EC8BF02934EB810CDE2BF11CE75AF13DE459DB77A8CAABE66DCF3B170114765514B96FA9A4A6946FDCF6F8E2582354450AAA02A80300014A7EED213CD04FCB56728E3D68EF4D279A5CF34000FBB4BDBF1A683F2D19E3F1A0077F07E1476FC69B9F93F0A33C7E3400E3F7A81F7A9A4FCD403F35003875A43F76901E6827E5A00776FC690FDDA4CF1F8D04FCB400EEF477A4CF34679A0007DDA51D29A0FCB4A0F14000FBB4A7AD341F968279A0071FBD40FBD4D27E6A01F9A801C3A51FC1F85203C5267E4FC2801DDBF1A43F76933C7E3413F2D003BBD03AD2679A4079A0051F769475A683F2D00F3400EFE0FC283D69B9F93F0A09E6801C7EF503EF5349F9A807E6A0070E9483EED00F1480FCB400EEDF8D03A0A6E78FC680781400EEF40EB499E6901E680157AD28EB4D53CD00F3400A7EED29EB4D27E5A09E6801C7EF503AD349F9A941E68017BD20FBB4679A407E5A00776FC681D05373C7E3403C0A0070FBD483AD203F3500F3400E1F7A81D29A0FCD4A0F14001FBB4A7AD349F968279A0071FBD477A693F352E79A0051D6907DDA4079A01F96801DDBF1A0F5A6E78FC6949E68003D694FDEA693CD04FCD400E1F7A8EDF8D341F9A8CF1F8D0029FBB4A7AD349F968279A0071EB477A4279A33CD0028EB483EED203CD00FCB400EEDF8D07EF5373C7E3413F350038F5A0FDEA693CD04FCD400E1D68EDF8D203CD2678FC6801C3A0A5A603D29F4008DCAD26DE3F1A563F2D26EE3F1A0042BF2D2EDE682DF2D2EEE680102F0280BF3501B81406F9A8000BCD205F9694373406F968002BCD232F34A5B9A19B9A000AF3415F9A82DCD05BE6A000AF068DBC7E3416E0D1BB8FC68010AFCB4BB78FC682DF2D1BB8FC6803E78FF82AE7ED017BFB31FF00C13FBE2678B34AB98ED75A834892D34B91DC291773E218B6F2096DCE30073915F92BF1E3F6ABF147ECC1F032EBE187833541E23F8EDF1474CB7D30DFC717972DA43310B2CED83856D85B2DDCE49AFB63FE0E4AF8A163F0BFF658F066A3ADDC5B2F87EC7C536FA85D5AC98DD7D2C28CD022039C9126D6DA064EDFAD7CBBFF0004A0FF008272788BF689F11DD7C4EF1CC1709ADF8EE459EE259B789744D23E6FDCC6FDA599708B8C145DCDE998DEE7543DD8DCF7AFF821BFEC0D65F0E744D2A74D226FF8427E1FA32E8FA95D71FF00095EB1296FB5EA023EA628481144CDD48761C60D7EA0EDF93F0AA7E1CD06CBC29A1DA69BA75BC367616312C16F044BB52245180A07A62AE6EF93F0ABD8E79CB99DC0AF34857E5A52DCD05BE5A0902BCD1B79A0B734BBB9A00685F96976F1F8D01BE5A3771F8D001B7E4FC28DBC7E346EF93F0A3771F8D00057E6A02FCD416F9A80DF35000179A42BF2D286E682DF2D001B78FC690AFCB4BBB8FC682DF2D001B79A36F34BBB9A3773400D0BF2D285E280DF2D286E2801A17E5A52BCD01BE5A0B7340015F9A80BF3505BE6A037CD40005E28DBF27E14A1B8A4DDF27E14006DE3F1A42BF2D2EEE3F1A0B7CB4006DE680BCD2EEE690373400817E5A50BCD01BE5A03734006DF93F0A0AF346EF93F0A0B7340015F9A80BF3505BE6A037CD40005E2902FCB4E0DC5206F96800DBC7E3405E051BB8FC680DC0A0036F3405E697773481B9A00455E6942F342B73406E68010AFCB4A579A0B7CB416E68002BF350179A0B7CD4A1B9A004DBCD205F969DBB9A40DF2D001B78FC680BC0A3771F8D01B8140005F9A902F34A1BE6A037340005F9A80BC501BE6A50DC50034AFCB4A579A0B7CB416E68002BF351B79A0B7CD4BBB9A0040BCD205F9694373406F96800DBC7E3415E68DDC7E34A5B9A00695E694AFCD416E682DF3500017E6A36F1F8D01BE6A3771F8D00215F9694AF3416F9682DCD000579A36F34A5B9A37734008179A40BF2D286E680DF2D0053B28EF86AB7A6E1AD4D8929F6411A9122F1F3EF2783CF4C76AB857E6A3771F8D05BE6A000AF3415F9A82DCD05BE6A0002F346DE3F1A50DCD26EE3F1A0002F4A75341E053A8003C8A4DBFE734514006DE3FFAF46DA28A0036FF009CD1B7FCE68A2800DBFE7346DE3FFAF4514006DFF39A36E7FF00D74514006DFF0039A36FF9CD145001B7FCE68DBFE734514006DE3FFAF46DFF0039A28A00F3CFDA1BF64BF86FFB58E89A769BF11FC21A4F8C2C348BD8F51B3B7D4519E382E2339490004723DF82090720D773A3E8767E1FB08ED6C6D60B3B68861228502220F603814514592D82ECB417146DE3FF00AF4514006DFF0039A36F1FFD7A28A0036FF9CD1B68A2800DBC7FF5E8DBFE734514006DE3FF00AF46DFF39A28A0036FF9CD1B7FCE68A2800DBFE7346DE3FF00AF4514006DFF0039A36F1FFD7A28A0036D1B68A2800DBC7FF5E8DB4514006DE3FF00AF46DFF39A28A0036FF9CD1B7FCE68A2800DB46DE3FF00AF4514006DFF0039A36F1FFD7A28A0036D1B7FCE68A2800DBC7FF5E8DBFE734514006DE3FF00AF46DFF39A28A0036FF9CD1B7FCE68A2800DB46DE3FF00AF4514006DFF0039A36FF9CD145001B68DBFE734514006DC7FFAE8DBFE734514006DE3FF00AF46DFF39A28A0036FF9CD1B68A2800DB46DE3FF00AF4514006DFF0039A36FF9CD145001B7FCE68DBFE734514006DFF39A36D145001B78FF00EBD1B7FCE68A2800DBFE7346DA28A0036FF9CD1B78FF00EBD145001B7FCE68DB4514006DFF0039A36FF9CD145001B7FCE68DBFE734514006DE3FFAF46DFF0039A28A0036D1B68A2800DBFE7346DE3FFAF4514006DFF39A36FF009CD145001B7FCE68DBFE734514006DA36FF9CD145001B6968A2803FFD9,0,'',1,0,4),(9,0,'Fr. John Arackaparampil cmf','Delegation Econome',0xFFD8FFE000104A46494600010101006000600000FFDB0043000201010201010202020202020202030503030303030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080103032003012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFCA28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A29370A370A005A29370A370A005A29370A370A005A29370A370A005A29370A370A005A28A2800A28A4DC280168A4DC28DC280168AF23F13FEDE5F07FC19FB5368BF04F53F1F68769F153C436CD7761E1D66737334611A4C9214A21288ECAAEC0B053806BD6F70A005A29370A370A005A29370A370A005A29370A370A005A29370A370A005A29370A370A005A29370A370A005A29370A036680168A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00290F4A5A43D280194514500145145001451450014514500145145004945145001519EB525467AD00145145007F205FF05C4D164BDFF82D97C78B8B6F8817526AFA7F89ACC69B34EF32DDB492ADB2FD9A1947C912DA87640CEE836C000E4D7F5E3E1EB1934CD02C6DA69DAE66B7B78E29266EB2B2A8058FD48CFE35FC79FF00C1443515F1AFEDCBFB57EB9A94D7B7B26B5F12B53D234B48AD9658AE9EDF54240F388774DB0AA2AAA633BD72C000ADFD82F82E2B983C1DA4A5E284BB4B3856755070AE106E033CF5CD0069D1451400514514005145140051451400514514005145140052AF5A4A54FBD4001DC5A9771CFB7F3A751400D524E734EA28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00290F4A5A43D28019451450014514500145737F177E30F85BE017C39D53C5DE35F10693E16F0C68B1896FB53D4AE56DEDAD54B045DCEC4019665503A92C00E4D7C993FFC1C4FFB1B27817C4DAFC5F1BFC39736FE15216E2D520B85BDBC66DDB05AC0F1ABDCEE2A7988305E0B15073401F6BD15E2DFB04FEDF5F0E7FE0A47FB3FC1F127E185FDEDEF87E4BE9F4D9A3BDB6FB3DD59DC4446E8E58F2769DAC8E304E56453DEBDA6800A28A28024A28AF8F3FE0B77FF00053C8BFE095DFB185D78D6CA2D3750F186B5789A478774DBB7917ED770EA4B38D88C0F9480B90DB54EDC6EC900807D87519EB5FCE0FC0BFF0083933F6B7F873A9E81F10FE26DC783B5FF0086379ADC6DAA6870595ADBEAD169F23C2D23408A03809149FBBDCE4E7717C81C7F459E0EF1869BF10BC23A56BFA35DC3A8691ADD9C5A858DD44731DCC12A0923914F70CAC08FAD0069553F106BB6BE16D06F753BE944165A75BC97571211C471A29666FC0026AE5783FF00C1513E29C7F057FE09C3F1CFC4F275D2BC0DABBC43246E95AD244887E2ECA3F1A00FE62FF626F0D697FB657ED21E18F0F3DDE9B2CDF123E30DB6A5783CA7F3E5825D42379D376429C42D238DD920371B4935FD760E057F353FF0695FECD5E0CF8D7FB7FCBE38D2ED6F960F84BE105B9B94BE45984FAD5E3BC1E6A9DA551562126CC36ECA96000660BFD2B50014514500145145001451450014514500145145001451450014A9F7A92953EF5003E8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00290F4A5A43D2803E27FF0082D67FC165B45FF8239FC21F096BB77E109BC77AE78D75296C34ED223D5069DF243187967690C529DAA5E25C04E4C83915F27E83FF00077AF81BC6DE18D364D1BE0FF88975FD4A37923D3752D723810ED9163044B0C1370CC481BD15B2BF770CAC7EEDFF0082ABFF00C1363C09FF000537FD96B55F0878BF4E966D5B4A827BFF000CEA36F3986E34AD43CA611C8A7952AC70ACAE181527804023F97FFF0082277EC4763FF0537FF828BE8BF0CFC6DAF6B1E1FD2E0D16EE7BF96C1B65FCA96A981046EFB82B12472CA42AAB60642D007DD1FB46FF00C1E3FF001C34AF13EB1A4786FE14F813C18F6A585BFF006B457FA95CC8030D8E3735AFCAC371F9A1040C719E9E2FA67FC1757FE0A41FB6D33A78026F175C5BDFA3436B0780BC050CF134A086606736F34836A06CED941071EF5FB7BFB3DFFC1BB1FB20FECE5AB5B6A761F08B4CF136B16CC1D6FBC55773EB6CCC063718A7768339E788C73C8C6063ECBF0B784F4AF036836FA5689A669FA3E9968BB60B3B1B74B78211D70A8802A8FA0A00FE63F48FF82137FC148FFE0A422DEF3E2D78935AD334C91D258C7C44F19CB322770459C46778C8C0E1A34393EC71F547C18FF83233C296DA6DBBFC44F8E1AF6A178C43CF17873458ACD178E51649DE5C807A37963E9E9FBB14500788FF00C13FFF00E09FDF0EFF00E09ADFB3CDA7C37F86D67790E9115C3DEDDDDDF4AB2DEEA974EA88D3CECAA8A5CA471AFCAAA30838CE49F6EA28A0028A28A008B57D5ED7C3FA4DCDFDFDCDBD958D944D3DC5C4F208E282350599DD8E02A800924F000AFE587FE0B0DFF0519F157FC1727FE0A65F0FFE147C38BB8EDFC0563E258BC3FE1186581D1A6BC9EE05BCBA95C8DBBC0380CA01F921553F2BB4807EAB7FC1D77FB75E99FB3F7EC316BF09217D4A6F12FC69B836AF0E9D70219E0D26D5A396EE42C55861CF950ED23E612C9D76915F04FF00C1A0FF00F04F293E317ED63E2AF8F7E27D1E58B44F85E5F4CF0FF9A09493589D0AC8431C96305B93919E1AE50F51400BFF0007187FC127348FF8271FC08F827E2DF09F8ABC55A8CD25DCDE19D7B5AD4248FCE9EE1ACD0453031AA98F31412A7563855DCCC725BF4FFF00E0D88F8CBAEFC61FF823FF008057C40B78F77E12BCBFF0EC173725CB5DDBC13931302C33845904400CE3C9DBD4103E40FF0083DCFC7D75A77ECFBF02BC328D1B59EADE22D47529A2DF8777B7B68A38CE31D07DA5FBF5C707B7D89FF06C7FC25BBF855FF0476F86F2DF451C577E2A9EFF005F919673334E27BA90472BB16237346919214E3A77CD007DFD5F957FF07717ED931FC01FF826E47F0EB4FB994789BE316A91E9D1C1049B641A75B324F77211B4E509F22123233F68EA70457EA76A3A8C1A469F3DDDD4D1DBDB5B46D2CD2C8C152245196624F00000926BF91BFF0082CB7ED9D7DFF0545FDBDFC4BF12348FEDCFF854FA408FC33E1F90DBDE496B25944C3F7B2AC63286EA725954004931EEE572403F68BFE0D26FD93AC7E05FFC13123F1E369AD63AF7C5DD5A6D4EE1DE37476B3B567B4B55C1620825279830033F69381B42D7EA4579FF00ECA1F0734FFD9EBF662F87DE06D2AD5ECB4FF097876C74A86077DEF18860443B9B032D907270324938AF40A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002953EF5252A7DEA007D14514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400521E94B487A50032BF968FF00837A7C3DA8786BFE0E14D1E3522C6C6D358F17696F1B5C8266F2ED2ED8C58032C54EC258E01C0C7DDAFEA5EBF958FF008379C2DF7FC1C4DE1CBD8835CA5D6ABE2E904C158295FB0DE10FBB76181CE318E3773D46003FAA7A28A2800A28A2800A28A2800A28A2803F974FF83BAFE36EA9F10FFE0AA571E167B96B4D23C11E19D3B4B89637C0965910DFBB38041271768A377CA36F51CD7EF87FC11A7F64AD2FF62AFF00826AFC28F04E9A6CE79FFB162D5B52BCB61F2DF5EDD8FB44D2672777326C073F75140E0015F85BFF000766FC30D7BE097FC14EB50F17430343A5FC4FF07C1710EA28DE53379110B0B9B54723390A91348A872C93AA9C02D9FB83FE0DC6FF0082FC681F1FFE13F82BE047C48B683C35E2FF000AE8D1E95A4EB52DD2A59EBF0DB6C8A2421B1E5CC23312F521D81C60902803E59FF83CEFE21C1A8FEDAFF097C2D7D245756BA6F8326BCB7B7B790FDA6DA7BABC92367605B66C65B74C646498CF20723F6CBFE0945E13FF00841FFE0995F00B4BF216DCDAF803450D1A9C80C6CA2663F524927DC9AFE797FE0E79D5350F8D7FF05E6BBF0BE9F7ECD7BA7693A1787EC888CC4B64D346B3957624657FD29DCB02387C7635FD167C7CF8FF00E1BFF82797ECA3A6DCEB37905CCDA369F6FA168966F2085F5BBD4836450AE49DA0F965DDC92238D5DD8E109A00F867FE0EA0FDBCB50F81BFB2F68DF05FC29AE5868FE22F8BFE7AEBB712DE4703D8F87E15C5D7DECB033B3AC40AA9255660066BE3CF845F0DFE19EABF153E157C366F155A47A878CA5F0ED83C1A6590B49C89A78668C342C10C81AD06FF003B1F7A50E576EDCFC63F0CFF00672F8E5FF07087FC150F59FB67896D75B6BF956E7C49E22B591C691A06928C8CB0C087E611AE4470C45433B82CDCF98EBEFDFF0004C6F0559FC7DFF839E92CBC1FA49B8F027C24D7352164E23444B0D3F4DB396C2077014EEDD32DBED391CB2F18C0001FD3451457E77F83FF00E0E66FD9E3C7DFB7E69FFB3FE93078D6E358D475E7F0BC5AEBE9D1C5A5B6A22510A4637482628D26E40FE5819038C1DD401FA214563F8F3E20687F0B7C237DAFF89758D3340D0F4C88CF777FA85CA5BDB5B20E4B3BB90A07D4D70FFB37FEDADF093F6BFD327BBF861F11BC21E398ED029B94D23538EE25B6DC32BE6460EF4CFF00B40743401EA14579BFED49FB5EFC34FD8A7E184BE32F8A7E31D23C19E1D8A4108B9BE73BA790F48E28D43492BF7DA8AC7009C601A77ECBDFB5B7C3AFDB43E125978E7E1978A6C3C57E18BFDC23BB815E2642AC5595E3915648D8153C3A83C7A500777ADEBB65E19D22E350D4AF2D74FB0B4432CF73732AC514283AB33310001EA4D73BE04F8F7E05F8A3ABB69FE19F19F853C457EB6A97ED6DA66AF6F7732DBBE0A4C523727CB6DCB86C60EE183CD7E047FC1C4FFF00053A8FFE0A7DF14748FD9DFE08EB8BAA780BC2F7D25EF8A358B50E6D75BBC8A362228645521E2806541FBB24B32632A9BEB82FF82687C13F83BFF04BFF00DA93E1A7C5DD7FC6D716D7FA5CB7D7D7AAFA8AF969A6C96F259B4724402B7981E492555CBEE5823E01916803FA61AF3BFDA63F6B5F86BFB1BFC3A93C57F143C6BA078274142512E353BA111B97033E5C31F2F2C9807E48D598FA57E3D7ED4BFF000746FC4DFDA6E6D6FC2FFB1CFC26BFBF5B265B6B8F18788E38C35A891C4697115A9711C51E4E7CDB872AA194BA2D7E66CBFB13FED0FF00F0546F8DFA3DD4DE2FD53E3DFC50BCD5E7B4D71639A6D4347F0C5AC410E2E6F8F976B0A990BA88EDDCA600DADB881401F7DFEDF5FF00074178FF00F6EAD5FF00E14E7EC5DE12F18D8EBDA8DDB11E272910D52FA084962B696C430884981F33B798410A1159ABEDCFF836AB5AFDA8FC4BFB36F8EEF7F695BEF1F5C22EBA96BE138BC69A63596B22D9118CF349E60F39A37678C2EF2C0189C2922AF7FC1067FE08503FE0925E12D6F55F13F89745F1878EBC55142D3B5A68D1C71E8442FEF6082EDC1B89918E324F96A76E7CB04E6BF45A800A28A2800A54FBD494A9F7A801F451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001487A52D21E940197E30F102784FC25AA6A92AB345A6DA4B76EABD4AC685881F957F2A9FF06C549AAFC42FF82DA7C2ABE9A1B7FB2E97A6F886F633222BBAC125A5E0E39041F3A76F988CE091D3007F4C7FB7A7C4AFF8537FB10FC5EF15F94F31F0F783756BF5449842CC63B395800E7EEF2073D7D013815FCFA7FC19CDA4CFF14FFE0A49AEEADADDE5E6A0FF000F7E1B5C5BE91BDCB25A2CD7F02ECCFA059A7C0EDB8FA5007F4C945145001451450014514500145145007CBFFF000567FF0082627877FE0A87FB363785EF27B5D17C63A048FA878535F96D56E3FB2AECAED64910F125BCCBF24B19C8236B60B22D7F325F18FF00664F8B5FF04D8F8CEBF0CBE24F846F74FD59B535D4B46834D96516D7FE529956F2C6E06239E3473FEAB3E60385215B20FF006235C57C78FD9CBC07FB4FF8127F0CFC43F08E81E31D06E396B3D56CD2E2346C637A6E19471D994861D8D007E147ECD7FB2AE93F1BBE1FA7ED09F11FE205BB6B1A1788E6B24D43519ACEE1EF3EC703168DDDD49CBC513C619DD86635013E6563EABFF0515FD9DBE34FFC146F47F0E7C44D5ACB558EDBC37A7DD69A74382542BA68F2C79B74B84DAD24C14319ED8AB18E54895A2E37FC5BFF0004E9D12C2C7F691F8A3AC26BDA9F87FE0CF833C53AB3DB5924D2EA51E91A4DBC8F242618251279AD279B6B1C79E5D9F218706AC5B7FC161FC4DA5F853C5BE02F117C4783C632F8E745B8BF79EEE695974B9194CE2CCF991AF262B789370563BA5006496C007D4DFF0006F07ECC5F12FE0CFC6CF8E5FB41CC351B3F85F6BE0F974FD2AC21B877B6F14DD438943C6599849F67103A79A413BEE59431C48B5F01FEC7BE2CF167EC9FF0575BF8E5F0DFC6DE23F07FC51F1969B7ADABDC8D3E0D4560B796F63F2C80F11506597660EE4605BF8C12B5FAB3FF0004B4F17F8CFE0F7FC1AEFF0010BC67AD6BD75379BE18F15EAFE1369608BCDD2ED0C53A4116012ADFE9292BA83DA40300002BF36FFE0DE2F8053FFC146FF6D0D13C0BE2C8BED1F0CFC05A54DE23F15E916B8B5B6D52E12611DB417099C49199591991000D86CFAD007D8BFF00045BFF008383FC65FB4FFECFDF1ABE1F7C78D7AD753F16683E0CD6BC4FA07886178EC2EF53820B799EE2D596DC2E258971246D1202235627EEA93F94BFB33FC04BEB1F87FE0EF8B1E0ED52DFC2DE37F07EA8BAE596A53DD4922DDDD457DFB9758DA20A4A6C421559BEEB17186C2FB7FF00C1C01FB23DA7EC47FF000587F11689F0CA24F0F587C45D3A0F10D8E9FA785823852F965B7BBB28E3CAA149658E6FDD709B250806062BDD75BFF820DFC42F8FBFF043CF04FC54F02477575F14EDAEE6D75FC3BA66D8FF00B534918411C688155EE52485A74C7CCEB26CF99C25007D03FF00074EFEDC5A47C66FF824CFC07D3AC2EBCDD57E2DEA90788658ED94AC51C16568EB76AEA496509717280641C189B9F96BF1D3C0BF02FC57F0ABC0973F18BE1DCBE33D1ED3C111E9F79A87887C3F7B209FC3CD75347145E6DC810AC7E6979153683CC67390722EE8DFB50F8A3E2C6BFA0E85E35D6EDB53B0D0AD53C20DA66A3E5DDDC2C53DD7992BC0E6301183A64B86CF62E430CFF561FB16FF00C139BC0DF05FFE09FD6BF08B5EF0A69377A778B34ACF8B74E922DF0DE4D3C2AB2C4C4F2446A16246CE408948C1E6803F9C2FDB7BFE0AA1ABFF00C156FF0063BF83BE09F8BF7834FF001DF8435CB89DFC430DAAB26A76935AAC70968C14DB2B3C6771E437518FBB547F65DFDB1EF3FE09A1E21F1E7C37F863E2CD634AD43C6DA7DADA789AE03A2FD967865323C703BED11B2C4D2445FF0079F79F6360066FA93F64EFF83573C7BE10FF0082C42683E3AD225BEF801E11BD7F125AEBE1B7DBEBD671CBBAD34F6247FAF625166423844948241527F523FE0A05FF0006E0FECE9FF0501F1FF8A7C6FAAE9BAC7853E2078A2C56DE4D6746B9091A4EBE5EDB96B660626936C7B18E06E57739DFB5D403F2DFFE0D91FD8ADFE367ED03AFC9F61D5EC3C25E1861AA6A5A97EED86A5E69290D989E39430C95949210AB2C4F9DBB80AFA2FE27FF00C19B5A2FC4FF00DAA3C4BE2DFF0085D3AA689E06D6FC4B71AADBE8569A479B79676930321852E2494A06594EC52626063504E5B8AFD19FF8248FFC132BC3FF00F04A7FD91EC3E1BE95A99F116AD35D49A96B9AE340606D52E9F0A0AC659BCB8D2354454DC70149EAC49FA7E803E10FD9B7FE0DF3F831F05BC11A2E93E27D43C59F11BFB21C4CF1EA17EDA7E9D7D28D855E6B3B431C5295F2D7FD6EFCFF0016EAFB53E1EFC36F0F7C24F0A5AE83E15D0B47F0DE896436DBE9FA5D9C7696D00FF6638C051F80AA5F177E367843E00F81350F13F8DBC4BA2F857C3FA54467BBD4353BB4B682141DCB311EA06072490075AFCECFDA4BFE0ED8FD923E09D95D47E19D6BC4FF0014355891FCA8342D22482D9E55E8AD3DD0880527F8915C601E0F1900FD3BA8EEAEA3B2B779A691228A252EEEEC15514724927802BF9BAF891FF07427ED95FF000504F195C785FF00668F859FF08CE1C301A0E8D2789F598A32DB434B2C919823439193E42E3FBD57DFFE0DEAFF0082877FC143B506D5FE3BFC608741B6D4D0493D96BFE279F50688139D8B65681AD900CFDD56503D2803F597F6B9FF008384BF64DFD8D6EFEC3AFF00C54D2FC47ACFCF9D37C283FB6E78CA8276C8D093146C48C0123A9C91DB247E677ED41FF079FF0089BC7FA98F0F7ECEFF00069D2FAFC882D2FF00C4ECD7B7924ACC0011D8DA9C16F4FDEBE491F2F1CFB4FECC7FF065C7C15F87B79657DF13FE21F8CBE225C5B4A92CB6361147A2E9F700104C6E019262A70412B2A1C1E306BF4B3F662FF826AFC08FD8D6C6E21F86BF0B7C1FE1692EE236F3DDDB58235ECF11E7CB7B8706675F6673D2803F976F8EDFF053CFDBF3F694FDADF46F076BDE3EF8A7E0FF0088F77756D69A6F84F4E925F0A149A50AF021B44F272F20652BE68667DEA013902BFAC3FD9974FF001AE93FB3DF822D7E245D58DF78FEDB43B387C457564DBA0BABF58544F227C89C34819B014019C0E057877ECC1FF0477F831FB2BFED61F10BE35E93A55EEB7F10BE216A3717D25FEB2D15C2E86933977B7B1458D4431F3B73F33ED50BBB6E41FAA231B4803803A0A00928A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00290F4A5ACBF16F8DB46F01E9A2F35CD5F4CD1AD1DFCB59EFAE92DE3662090A19C819C03C7B1A00F863FE0E69F8B96FF09BFE08BFF177CD9608EE7C4D1D9683689239533493DE43B9571D5844B2B63D10E6BE07FF008324BE054D1D87C78F8A1716BE5DB5CCBA6F85EC255CEC2D1ACB7172A39C1387B427EBEF547FE0EB6FF829AFC20FDAEFE00F86FE127C33F158F1C6A5E16F16C7ACEBF7BA1DB3DCE9FA7797677912446EF2212EC5E438566C08D8F6C57E57FC19FDA37F688F117C229BE00FC30F1478CF50F02EB5AA9D66E34AF0758DC24D7F3DCC6AB22CC2DE313387DB1A797213182AA47CBF3100FE9E3E227FC1C21FB297C28FDAE2EFE0D7883E25DAE9FE22B0992D2EB536819F43B5B961936F25EAE63474E0396C2231DACC19580F01FDAB3FE0ECCF80DF0AAFFC55E1DF85BA378A7E30F8BF423E55A7F665BF97A35F32EFF3655BA1B99A18B6825D6221B70DA48CB0FCC9FD8A3FE0D1FF00DA03E2FEA5A76B7F15ADB4AF86BE158C34F79672EA0977AEDD26DDEBE5411878958E42ED9A48C82A4102B8EFF8224FC57F86DAEFED21E1BD2758F0EE810F8874ABB960B137D631A44D6F3644BE6CBB8233AE70A6552ABFBB5C3633401FA39FF047FF00F83A1BC6BFB77FEDABA37C1DF885F0B743D167F18492FF0064EA3A1DCC91AD924704B31F3D2776326ED8A032152093F29EDFB3A5C060323279033D6BF95AFDA57F6D0F887FF0493FDB7FC51E3BF01F84FE1F8D63C4D1CD6FA7EADAA5A3DFCB62C5E4132DBA89621946660CD2C4C43A15603273F1F7C75FDB2BE3DFC5DF8856BF173C49F13FC6373E32BC912E22BEB5D4A4B47B7316E1FBB48BCB587CB5541B5170724E4F3800FED9E8AF01FF0082597ED4177FB66FFC13BBE107C4CD4599F56F14786EDE4D4DDA3D9E6DEC40C172E076569E2908F622BE5DFDB3BFE0E7CF803FB10FED89AAFC1CF12E8FE3AD5352F0FCF05A6ABAAE976B6D258D8CD22AB329F326473E5AB8DC42F5C819C5007E905155F4AD52DB5CD2EDAF6CE78AEAD2F2259E09A270F1CD1B00CACAC3820820823AE6AC500495F3FF00FC14C3F6F1F06FFC13C7F64AF1378EFC59AE5A693766CE7B3F0FDBC8A5E5D5753686436F6F1A2FCCC4B2E4F40AA0924019AE8FF6E1FDB67C07FF0004FDFD9C7C41F12FE20EAB058693A2DBBB5BDAF9A8B75ABDCED263B4B646237CD211800700658E15491F829FB29F8B63FF0082EFFEDC5AE7C73FDA36CB5083E17785F58B6D2741D3206B81A7DAC121291D80011D0BBF9B1C933EE57386C327C82802E7FC139BE1978CFE05FECB7A27C44799B59B27D2DF58B7D3A5D09859C524D1B2BDD5C100208902CCCE7E6476F2C3AB10C528FF00C146FF00614F0FFEC57FF0412B3F1F78C34E4BDF8B9F18FC7F61793EAF0E21B882CDA0BD36F6E80332888DA2C8C5401F35CFCC32831F5A7FC17F3E3D7C32F875FB3A5B7847453AF5BCD63646CEEF428B4F9679DED64883A3E5DC12440EF29DCF9558937942BB4FE777C49FDA23E31FFC1D19FF000528F87BF0ECE8B7FE0DF863A25C2C89A65889278BC39A570F3EA173211B1EE5E2DA88E55109689140DC4B007B97ED97FB456A7F0CBFE0D02F807E18D924371F12F525D21CC38554B3B7D42F2EC0604863B8DBC3D01072727079F46FF832634AB36BDFDA36F208DD24B78BC3762C4A850C557512E703BE40E735FA87FB577FC11D7E0C7ED71FB0AF877F67DD674CD4346F05F8363B34F0F5CE952A47A868CD6CBB1648A4911D4BBC65D5CB2B6E12313F3608D3FF0082717FC127FE10FF00C12C3C39E24D37E1458EB96C9E2D92DA6D525D4F526BC92E1EDD1D63232005FF0058E4E00E5BD000003F25BFE0EA6FF8254FC77FDA27F6CFD03E307C3DF87DAA7C40F0A45E1AB5D16E22D147DA6FACE78A69987996F92E5099C10C88470DBB1D6BF57FFE08C9F003C7DFB2CFFC132BE137C3FF0089B6363A6F8CBC31A5C96D796B6B72B70B6C86E259228D9D46D2EB13A2B6D2CBB94E18F5AFA7E8A00F8E7F68CFF82137ECF1FB4B7ED5BE15F8C7AAF8626D1BC5BE19BB86EE65D11E3B2B3D6DA295E65377108CEF632B866914AC8DB02962B907EC6AC1F1EFC51F0E7C2DD027D53C47AEE95A269D6BFEB6E2F6E52144E9DC9EBC8E3DC57C57F12FFE0E0FF80DE01D13C612DD78BFC2BA6CFA1051A5A4BAF59EA171AD062544D0DB59CB2C8C990309912107954009A00FBCAB88F8F1FB457843F66AF015C7897C63ABC5A4E916C76BCCCA58039C738E1467AB310A3B915FCFE7ED43FF0007207C77F8A303685F047FE122D575AD6EE12DECB51B9D3116E54B248AA961616DF33B33C72E1AE15C8D8802927751F023FE0DAEFDAB3FE0A3DAA5FF008DBF697F1EEA9E12BBD54235BCBAF5F1D53524CCAAE5858C6C238D4A6E023696328CD9D9401F797ED71FF0758FECF1F05EDEE2CFC0BAE47F10358FB3968A3D32CE7BAD93860763022281D0A6EF9D2EB20FF09AF85FC77FF072EFED8DFB73D82F84FF0067EF842BA5CFABBC965F6ED36C26D73584639CC89B02C7046A1D30ED1B0050E646E6BF44FF00648FF835BFF65CFD9825B1D4751D23C41F103C4769672DA1D4357D49EDA3C4B1B472ED86D4C4BCABB806432300D8DDC0C7DE7F08FE067833E0178623D17C13E15F0FF8534B8D540B6D2AC23B546C0C02DB00DCD81F79B24F73401FCE1FC1CFF835A3F6B8FDB97C7773E25F8EFE328BC14FAA5EBDD6A17FADEA075AD4E673B83BADBC4E5599884C16963E33D7815FA69FB18FFC1A8FFB2CFECB5259EA3E25D2355F8BFE20B704B4FE28954E9FBCAED3B6CA30B115E49025329079CD7E9951401CCFC2EF82FE0FF81FA09D2FC17E14F0DF8474D241369A2E990D842C40C025225504E3BE2BA6A28A0028A28A002953EF5252A7DEA007D1451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140057E087FC1E9FFB3A7C54F1D5DFC21F1C68F69AAEB3F0CB45B7B8D26EADAD099574ED526937ACAF128DDFBD890207E4030EDF94B0DDFBDF48DF76803F8BBF895F02750FF827FF00C344D07E296857FA178DBE23F80FFB6F4FB18EED16E2D6DEE67920B75BA8B1BA290AAC929889CF978DC379F93FAB1FF8252FEC5FE14FD89BF61CF871E1BD07C37A4E8DAD4BE1AD366F115E5BDB2ADCEABA81B64334B349F79CF98CF8C92141C2E0002BF9BEFF0082E2FC45B0FF00828AFF00C1C09A8786FC39791EA5A6DC788745F87D653452EF8E5915A1B69B6B74C0B99261E9C57F59B696A9636914112EC8A14088A3F84018028024AFE737FE0EA1F8BDF0CBF62BFDA0FC23E08F825E02F01F82FE22EA08DE2BF166BDA2E996F0DD379A278A0B795157692FE64D336E193FB93D2BF72BF6FDFDBA7C13FF0004E7FD983C43F147C7772EBA5E8D184B5B2848FB56AD76FC456B083D5DDBBF4550CC70149AFE5BBF611FD97BC7DFF070DFFC157FC43ADF89A4BF8ECB5DBF9BC47E2ED5ADDF6C7A1D9676C30C6CCAC32311431478CB2A1E542B3A807E837FC1AE7FF04D1BCFDA7BC4A3F6ABF8B705AEB3A66951C9A2F82347BC804B07DA13E4B8D40C6C360DA772A601CBBC8E4EE504F35FF07B87C47B08FC6FFB3FF802CE08229B4AD3755D65D228D17CB8E796DA0880C72066DA6E38078EB8E3F7DBE12FC29F0FFC0BF865A0F83BC29A65BE8BE1BF0CD8C5A769B63003B2DA08D42AAE4E49381C92492724924935FCC3FF00C1753F684D03FE0A35FF000705F83BC2FE177B3F10E83E1FD4B42F87B1CF6B279916A32FDB8BDCE187042CD752C591C1F2B3CE6803FA2DFF00826E7C0EFF00866CFD823E10F818D8DB69B3F873C29616D73040BB5567F255A663C0CBB48CECC71CB331EF5F9DBFB6A7FC1A6DE1AFDAB3F6F7F11FC59D37E273F867C2DE3AD4D754F11F86DF4317934D23C8B25D8B7B9698795E73296076131B39C6570B5FAFC8BB1001C003000ED4B40147C31E1CB4F07F86F4FD274F8BC8B0D2EDA3B4B68B716F2E28D4222E4E49C2803279AE5BF690FDA13C2FFB28FC08F157C47F1A5FAE9BE18F0769D2EA57F3F058A20E110123748EDB511739666503935DBD7F3FFF00F0775FFC14A6EBE2378AAD7F653F022DC6A4BA3DBAF89BC6CF66DBB6BC5135CC56AE361F962857ED2E43778C1FB845007E767ED49FB6BFC47FF82EEFEDF318F10DD6AEBA1DE5DCCBE1CF0D595C5BA269164AAC5523FB44B140650A033C9248A0FEF0E40E2BED1FF82B6F86354FF826AFFC1367E08F85EEA76B8F1478FF00599B5B874977B84B3D22CECEC23B68ED218525206D92F44A5F791334619B20AA2FD71FF06C4FFC10DACBF663F84F6DF1CFE28F86E683E22F8BEDA37D0B4BD448793C3F605083295C0DB2DC8624A302D1C5B509CBC8B5F2AFFC1E7FF1B2FECFF6CEF855E1AB01222681E0E6D41EEA3E1ADE4BBBF72151FAA3E34F53952188CF6CD007B6FF00C11CFF00E08F3E1FFF0082A47EC47A07C60F8D3E25F8816F1F8B6FAEA25F0EE89AAFF67E9D7F636D71E4AA4C42B48C8F25B9270CADF20C3018AFD81FD993F644F867FB197C3B8BC29F0BBC15A0F82F428B96834FB70AF70DFDF9A5399267FF006E4666F7AF1FFF00821E7C291F063FE091BFB3F689BE491A4F075A6AB219170CAF7C0DEBAE303A35C11F857BEFC68F8DFE10FD9DBE1E6A3E2DF1DF89746F09F86B4A5DF75A96A974B6F6F17A0DCC46589E028C9278009A00EA6B86FDA0FF00699F87FF00B28FC3D9BC55F123C61A0782FC3D030437BAADDAC08EE7A2203CBB1FEEA827DABF1C3FE0A3BFF0791785FC0173A9F867F672F0AFFC2617B1892DC78BB5C0F6FA6C526080F6F6B8124E01C106468C71F7581AFCB5F177857F6D2FF82DFF008B62F1A6BBE18F8A9F1660B2F2E3B19E2D2DADB45B58DB21D61D8896F1E48C9318C9C1CE4F3401FAB5FB6D7FC1E1FA368BAFEAFE1DFD9B3E1A5E7C479EC07CBE26D6527874E386019D2CE302778F90033BC272C3E5C633E05E1AFDA5BFE0AE7FF050C8B5BD3BC2E35CF0B687AD5FBDBBCF6BA15B78720D363FBA4417F2C624D8B8CE639E493DCD7DADFF000459FF0083731BF620F13378B7E33DCF82FC71A9DAE9D6D6FA0E890D9B5EDAE87718496E2EDA5994079CCB955C2108B1A90E7E50BFABCAA114003007000ED401FCE3FC30FF008355FF006AFF00DA86F46B1F1C7E26D8E937B79768F7B2EB3E22BAD7F513170641B236689F240C7FA429E06718C1FB43F67EFF00833BBF66BF875069B3F8EB5AF1C7C45D46CE467B856BDFECAB0BC076E11A28B32AA8218FCB30CEF39ED5FAD34500798FECE1FB17FC26FD907401A6FC31F877E11F04DBF962377D2B4D8E19EE00E9E6CD8F3253EEECC7DEBD3A8A2800A28A2800A28A2800A28A2800A28A2800A54FBD494A9F7A801F45145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500154BC47AD59F86FC3D7FA8EA53C76BA7D85BC973753487090C48A59D89F40A093F4ABB5F2D7FC168FF675F89BFB587FC1353E26F807E10DF8B1F1C7886CE186DD0DE7D93EDD6EB711BDCDA89780BE740B2C7F310A77ED620124007E167FC1BA3FF0492D07FE0A33FB5FF8BFE3ACFE21D53C35E0DF849E3CB4D5742D3AC9374FAA4E2E24BC8A27998E6348D520DC40666DE4657AD7F4D9AB6AD6BA0E95737D7D73059D95944D3DC5C4F208E282350599DD8E02A800924F000AFCA2FF00834DFF00603F8BDFB0FF00ECE5F14E6F8AFA1DE78464F17F882DCE9DA0DFDB986F2DCDB4524735C30FBBB253246136E4110939C115FAAFE26F0DD8F8CBC39A8691AA5B457BA66AB6D259DDDBCA329710C8A51D187A15241FAD007F25DFF0576FDBABE25FFC1727FE0A7169F0DFC20F6DAAF86B4DF135C7853E1F699A7CA7EC9788D72621A848C782D32AAC8D210024600E8A49FE93BFE096BFF04D0F03FF00C12D7F65BD27E1FF0084ADE1B8D5248D2E7C47AE1882DC6BD7FB7E795CF511824AC699F91001C9DCC7E75FD81FFE0D9DF829FF0004F6FDB547C68F0A788BC6DA9DF69A2EBFB0B48D46785AD748FB447244FF003AA0925C47232AEE3C75258F35FA3740057E2EEA5FF06B56ABF0A3FE0B15E05F8E1F0B7C4DE1DD3FE1669BE2E83C577FA26A4D7125F694D0B24CD0C079F3D65983ED2CEA630C33BF1CFED15140051451401F3F7FC1523F6DFD3FFE09DBFB09FC41F8AD79B24BDD074F30E8F6EEBB85DEA531F2AD6323FBBE6B296F44563DABF9F2FF00836C7FE09D779FF055AFDBBFC5DF1B3E2B6A571AE683E04D522D73598EE555FF00E128D5AE649268E298640F295E332BAED2ADB55318638FD43FF83BB7F68CF0FF00C29FF8250EA3E09D463173AEFC50D66C6C7498C4815A0169730DE4F7046725556258CE01E6E17353FF00C1A19E0FF0E683FF00047ED2F52D1EDD5358D73C4FAACDAF4BB30D2DCC7288A319EE05B2418EC096EF9A00FD4751B171D857F2ABFF00074D45AAF8E7FE0B25E21FED296F64F0EC763A46976705AA3094AA5B0380ACAAA73712CE15C161F330CE55947F5575FC82FF00C1482EA2F8A3FF0005D3F2EEE5D4CE87E23F8890CD13497054496D73ABB12F102711AE0ED04100F961B8CD007F5C7E00F0D5B782FC09A2E8F670FD9ECF49B082CE08B007951C71AA2AE07030001C57C73FF05E5FF82535F7FC15A7F63687C1BE1FD72DB41F18F867564D734296F64916C2E6511BC4F05C6C0C42B24870E158AB28E30581FB76A33D6803F333FE0903FF0006F27C3EFD93BF63FBEF0B7C74F87DF0EFE2078E75ED4E5BAD526981D674E8E35CADBFD985C4486061193B8AAEF249CB90142FE91784BC25A5F80BC2DA7E89A269F67A4E8FA4DBA5A59595A42B0C1690A28548D11400AAA00000F4AD1A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A54FBD494A9F7A801F451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001487A52D21E9400CA28A2800A28A2800A28A2800A28A2803F99FF00F83C4BE2DDD7C65FF828CF83BE1F69B72B7907807C336911D384A43CBA8EA33C921545FEF1852D493C718E7902BF5A7FE0DA0FD9F354FD9D3FE08FDF0E34FD6A2BBB5D4F5DB8D435C9ED2E6D1ADA5B3F3AEA4091956019BE44560D8C3060465704FE187FC164FE1A37ED61FF0007327893C01713A98BC5DE38F0EF865A581B98A29ADB4FB7619F550C73C7041EB5FD5CF86FC3B65E10F0ED8693A6DB4767A76976D1DA5ADBC63090451A844451E814003E940107C42F175B7C3FF00EB7AF5ECB1DBD9E8BA7CF7F3CB21C2C71C51B3B31F60149AFE52F5AF87B1FC6AFF8389BE1DFC37B18E79B45B0F16F8674A9ADEE4344AD69650DA4D7316CF98AA878EE0ED3CE5B0769CE3FA4CFF82A37C49B2F863FB0978FEE3509CDBDB6B56B0F879A40E10A0D42E23B22DB88206D59D989C1E14D7F3EBFF06C2D85C7ED25FF0005DABEF1F7D927BE4D2B4FD73C4335C4CEF3C9682E03DBA17908009FF4A099C0CF18039A00FEA2AA33D6A4A8CF5A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002953EF5252A7DEA007D14514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400521E94B487A500328A28A0028A28A0028A28A0028A28A00FE73754F86167F1BBFE0F569AC6EAF7ECD1E95E24B7D691962DE65974FD022BA48F07819680027B0C91CE0D7F4655FCD3FF00C14D7E215F7FC1327FE0EBDD17E2E6A96F1FF606B7A9693AD0724E0E9B7762BA5DE3F240DE9B6E8819C65573C57F4AE8E1D4107208C823BD007E6DFF00C1CEFF00B5EFFC32C7EC63E1C8E3B6B4BDB8F106AF747C99482D1F91A6DD79132A9EBE5DF4B6049208C7B906BE25FF0083213E0A5B4FABFC7CF88EF15C2CD047A67872C9981D82391A6B89C6EE8CD98EDB3C71C7F7AB8CFF0083D6BF697D4AE7F69FF85BF0B2CEEDE1D3B4BF08CDAC5EA44C57ED06F6F8288E4E70C01D3217031C1C1FA7EA37FC1B6BFB27FF00C327FF00C123BE1A5ADF7865FC33E29F18473F8975D8E7FF008F8BA96E26736F2C83F84FD8D6D804E0A80011BB75007DE1519EB525467AD00145145001451450014514500145145001451450014514500145145001451450014A9F7A92953EF5003E8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00290F4A5A43D2801945145001451450014514500145145007E477FC1D77FF049CF11FEDB9F003C3DF16BE1DE9D36ADE37F8510CE97FA65BAEEB9D534972247310EAD240EA5C20E595E5C6582A9F1FF00F821C7FC1D49E1BF12783346F853FB4CEA7178775BD1ED22B0D2BC6F364D9EA71451B0FF00898B962639F0883CD00AC8CC4B6C3CB7EE83287520804118208EB5FCA97FC1C19FF0437F1B7FC13EFE3B788FC7FF000F342BCD57E0778D6FDF5289F4DB47987856427CC6B4BAC29F2E00ECC626276150AA4EE4E4032AD2E47FC17B3FE0E38DD7B15F6A1E09F13789A48D4D8C4AC20F0FE9D132C4E778645578A042C48C169CE064815FD61DA5AC761691410A2C7142823445180AA06001F857E247FC19ABFB0249F0EFE0AF8C7F681D7AD1C6A5E3763E1DF0FBCC36BC56104A5AE5D57A8596658C67209FB39F940C337EDDD001519EB525467AD00145145001451450014514500145145001451450014514500145145001451450014A9F7A92953EF5003E8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A004D828D82968A004D828D82968A004D828D82968A004D828D82968A004D8291E15950AB2865618208C8229D45003638D6240AAA140E00030053A8A2800A4DA2968A004D828D82968A004D828D82968A004D828D82968A004D828D82968A004D828D82968A004D828D82968A004D828D82968A004D828D82968A004D8280B8A5A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803FFD9,0,'',1,0,5),(10,0,'Fr. Pius Thuruthiyil cmf','Major Superior',0xFFD8FFE000104A46494600010101006000600000FFDB0043000201010201010202020202020202030503030303030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080103032003012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFB6385A4DFC7E34ADF76931C7E340085FE5A5DDCD047CB4B8E680137F028DFCD00702803E6A0003F3481FE5A5039A00F968002FCD217C5291CD0C39A000BF346FE68239A08F9A800DFC1A37F1F8D047068C71F8D00217F96977F1F8D047CB4638FC68002D46FE6948E6900F9A8000FCD1BFE5A00E68C7C9F850005F9A42FF2D291CD047CB40017E68DDCD04734B8E6801A1FE5A5DFC7E3401F2D18E3F1A0037FCB46FE3F1A31F27E14638FC6800DFCD1BF9A08F9A803E6A0003F3485FE5A5039A08F96800DFC7E3485FE5A5C71F8D047CB4006EE68DDCD2E39A31CD00343FCB4A1A803E5A5038A00687F9694BF3401F2D04734006FE68DFCD047CD401F350001A8DFF2D281C5263E4FC2800DFC7E3485FE5A5C71F8D047CB4006EE680FCD2E39A4039A0040FF002D287E6803E5A00E6800DFF2D05F9A31F27E1411CD001BF9A37F3411F35007CD40006A40FF002D380E2900F96800DFC7E346FE0518E3F1A00E05001BB9A03F34B8E6900E680103E6943F3428E68039A0042FF2D297E6823E5A08E6800DFCD01A823E6A503AD0026EE6903FCB5F3E7ED2DFF0554FD9FBF642F881A3785BE217C50F0E787B5FD72E96D20B29256965898F4698206F253381BE4DABCF5AFA02D274BCB44962759239543A3AB6430232083E940126FE3F1A37F028C71F8D00702800DFCD26FE6940F9A8039A0037F3406A00F9A940E2801A5FE5A52FCD047CB411CD001BF9A3773411F352E39A0040FCD207F96940E6803E5A0037F1F8D05A8C71F8D291CD00377F34BBF9A08E6823E6A0037F346FE3F1A00F9A8C71F8D00217F9694BF3411F2D047340016A37734A4734639A0040FCD207F96940E6803E5A0037F1F8D1BF9A31C7E3411F350005F9A42FCD796FED5FFB65FC3CFD8B3E1C5CF89FE207882DF48B1B75263841F32EAE9BB24510F99D8E3B57E297EDDBFF00071D7C6DF8E5A85E786BE15F8564F875A15E49F66B7BB92533EAF7EAD8DA418C6622411858C3373F7A8F31C62E4EC8FDAEFDA4BF6DCF84DFB20787DB53F895E3FF000D7842D8745BEBB5133FFBB10CBB7E0B5F2AE8DFF07377EC75AF7C5083C2D07C4C9567B994451EA1369173169C58F4CCECA1573D32703DEBF293F674FF008216FED09FB7E78AA4F1278AB41D5B4BD3E76FB43EABF10B52B856BD66C1DD1C2D1C970DD4E3CC0A31C66BDB7F6CDFF8223FC2AFF8278FECEF0DE7893ED1F1235ED4F79304D0AD8E93698FBAB1C71E64C0381969327AF19C0B8A4C1AB6ECFDD7F0978D34CF1E68169AAE8D7F69A9E9B7D1ACB05CDB48248A64232195870456AD7C35FF0006FCFC5C1F173FE09E7E1AB88F40B3F0E5AE9B35CE9D6D656A5CC70C505C490A8CB12D9C264E4F535F72D4269EC2D7A88DF76933C7E34ADCA9A6EDE3F1A0009F96973CD215F96976F340003C0A01F9A902F0280BF3500283CD203F2D0179A02FCB400A4F348C79A0AF3432F3400A4F3413F35215E682BF3500293C1A0B607E354F59D6AD740D3E6B9BB952182252CCCC78000C9AFCB1FF008296FF00C1C2565A5E9F7BE05FD98EE74FF1A78F56F9F4FBED526D3E6974DD27603BCA3E0472C9BB0A304A839CE682A30727647E887ED37FB5E7C3AFD8F7E1C5CF8A7E22F8AB49F0CE8D6AA4996EA601E4207DD441F33B1F4504D7E5EFC64FF83AA6EFC7DACFD83F677F827ADF8EE0DE633ACEBF29D3ECF3BF00A46B9765239C92BF4AF17FD93FFE08B7F18BFE0A3FF13ED7E25FED03E25D47C4515C6E2EFAB6E36F10C8205BC580BC76C285F7AFD78FD9A3FE09B1F097F65BD060B7D0BC29A6DCDEC782F7D770ACB33B7A804617E8A2835FDDC7496A7C3BFB2BFF00C16F7F68ABFF001B695FF0BABE107C2FF0978475498C7F6F8BC631E9B790A96F95D60B963E6000F232A4FB74AFD4DF0B78B74EF1AE8B06A5A55EDAEA16374A1E39EDE512A3020742B915F9B5FF0005B9FF00821F7C31F8F3FB39789FE21F817C09A4E9BF143C281FC42A6CA374FF008481210649AD2445383E6283B4E38603D4D78F7FC1B4BF1E75ABAD5D342B3291F827C496735E259823FD0AF1429F5FEEAB2E001CF5A4B57614A1170E689FB2E0F3467E4FC291568DBF27E14CC45279A427E5A0AF3415F9680149E68CF348579A5DBCD00203F2D2E78FC6902FCB46DE3F1A005CFC9F8519E3F1A4DBF27E146DE3F1A00527E6A01F9AA9DA6B9637FA8CD6B05E5A4D756C409A14955A484E33F328E47041E7D455B0BF3500283CD213F2D0179A0AFCB400B9E3F1A427E5A36F1F8D057E5A005CF34679A36F346DE680101F96941E2902FCB4A178A00407E5A5279A40BF2D0579A00527E6A01F9A90AFCD405F9A80141E28CFC9F850178A4DBF27E1400B9E3F1A427E5A36F1F8D057E5A005CF3403CD1B79A40BCD0000FCB4A0F34817E5A02F3400B9F93F0A09E6936FC9F850579A00527E6A01F9A90AFCD405F9A80141E2901F96942F14817E5A005CF1F8D26FC01515F5EC3A659CB3DC491C1040A64924760AA8A392493D0015F8E9FF00055AFF008394BFB1758D4BE187ECC6965E26F10246F6FAAF8CE53FF12ED11C12ACB00200964183F36768E3AD05C2129BB44FD09FDBF3FE0A8BF08BFE09C3F0EDB5DF885E204FB648E21B3D134E2B73AA5FC84642A4208238FE26C01EB5F9D5E30FF83C074AB5F1A5ADAF87FF00671F887A968F72F1A09AFB5186CEFA4DC79F2EDD524DC71D06FE7DABE6FF00D93FFE083DF1BBF6D1F86D7DF185FC45A236BDE2864B9B4D4FC6335C5DDE6B1D9A7053FD5C67185047E98AFB93F65AFD91FE247FC1313C136F6FF157C19F0A7C77E02D7EE7EC9E20F14F8796E22D6FC3A2722349E55994892DD49018C6559061B040341D6E8D182F79DDF91F59FF00C13CFF00E0A67E1FFF00828269BAC8B2F0478FFE1F6AFA1EC6974DF15E9A2D25B889C712C2CACCAEBD8E0E471C735F4B03CD7F339FB3E5F78B7F63BFDAEEC7E365AFC40BDD62D3C2BF13EFB42D434EBFD72597ED1A23DF1B3901563B5B62BAC99E980A6BFA618C6E5CFB5073D6A6A0FDDD8527E5A5279A42BF2D784FEDFF00FF00050EF875FF0004E6F82D73E30F1EEA3B09564D374C83E6BBD56718C451AE3A9C8C93C0A0C926DD91ECDE2CF16E9BE07F0F5E6ADAC5F5A699A669F0B4F757573288A1B78D412CCCC78000AFC5AFF8280FFC1C71E25FDA77E27DA7C15FD8DACEF757D53599E4D3F50F16B69CF234793B3FD093F1FF005AE31C8C0E735E7DA66A1FB597FC1CCBE34D2E79907C1CFD99E29E413C76D72CDFDA68ADB1D5CF06E1CE080301179AFD2BF837FB367ECE1FF0432F8350BD8C763E1E9BC49762C06AB7EC24BED66EC42F2AC5BF1F2AED8988518518141BC63086B3DFB1F811E07FD95F4BFDA13E3958784FC51AB5DDD78BFC57ADC3A6EADAE6AD13DDEA571746E111C2063CB9208001C7E15FD5C683A5C7A168569630FF00AAB381204E31F2AA851FCABF9F1FF820E780EEFF006F9FF82A24DF11B57862B7B6F05EA5AB78EEE2D618B6476F3DE5C4D0D8C23391B42B48E0751E5A9AFE85D530946C5E2EA733487678FC68078149B78FC680BC0A0E4141F9A901E680BF350179A00507E6A01E2902FCD4A178A00427E5A5279A42BF2D0579A00527E6A33CD215F9A976F340003CD203F2D0179AF9BBFE0A7FFF000504D33FE09E5FB34EA5E2AF26DB54F13DC016FA269526E6FB64EC4282CA9F36C04F38A126F603E92CF1F8D04F35F0FF00FC10E3FE0A6BE2BFF82947C11F18DE78EF46D1B47F16F8235D1A55E2E94AEB69323C2932150E59832862AC33D56BEE02BCD01B084F34A4FCD48579A0AFCD400A0FCD4678FC6902FCD46DE3F1A0009F96949E690AFCB415E680149E68CF3415E68DBCD0000F3480FCB405E6993CC9696CF2CAC91C71A966762005007249A007B4811327000E493DABF3A7FE0A99FF0005E0F0A7EC9965A8F85BC0B77A7EB1E3440D0CD75316FB2696F9DBCE07CEE0F38E95E73FF0592FF82BE49A1DB6A9E01F867E29834B8ECB6A6ADAE585CABCAFB8956822E386E40DCA4F3C5705FF0004ACFF008227EADF1DF54D0BE2D7C6F9AE6E346B674BFD07409DF74D752125BED576C472C7A04C900568E3CB1E6EA34AFB9F22FECD5FB1CFC74FF82D278F3FE121D47C47AD6B16AD74E6F3C57AD4134761126E2765BC6C0060BF7404E3D6BF6BFF00606FF8246FC20FD80F45826F0EF876CB52F173C4A2F3C437D179D7733E3E6D85891129FEEA607AE6BE97D03C3763E14D261B1D36CED6C2CEDC6D8E0B78C471A0F60062AE95F9AB329CDB565B0280B9E315F941FF00070F7C6A8BFB7349F097D92E5FECD62D349702E1122899FA12B9DCD818278EDDEBF5764E14F1935F831FF05B6F02699F17FF0069CD1BC130EBD77AAFC49F887AAAE9AD140AED1E990C8762E02E388E3CB1EFC5690D13910936F43EECFF00836A7E1DDD781BFE0959E08B9BB657935EB8BDD4B852A47997731E87B7423D88AFD00AE2FF0067CF855A77C10F829E17F09690B22E99E1DD360B0B6F3061CA47185048F538C9F726BB4ACC043D28EDF8D0FF0074D373C7E3400A7EED2F7A613F2D2E79A0070E8281F7A9A0F02807E6A0070EB483EED203CD203F2D003CF5A46EB484F348C79A0079EB589F107E20E91F0BFC297BAE6B97F6BA6E97A74466B8B8B8902471A8049249AA9F16FE2CE81F047C01A9789FC4FAB59E8BA2E93035C5CDDDD481238954649249FD3BD7E197ED2FFB50F8AFFE0BD7F19AD3C37A1E9FACE9DF0734CD425834BB052D14BE289D0A85BA9D57FE582E0B2A9C839C9E98A0B84398DAFDB37FE0B3DF10BFE0A59E30BAF017C0217BE1CF014D39B43AD8B73FDA5ACFDE49022863E5C0DD0311B9B9E9C67EB7FF008262FF00C114B43F849A1DB7893C7FA55ACF7B7312BC5A6B2E36B120EE940EA78E9F9D7BF7FC13D3FE0995E0CFD8A3C0B62F16976727897C8549A7541B2DFF00D94038FC6BEA2CF1F8D3D3A152A9A72C7622B1B08B4CB28A08238E18214091C68B8545030001E952AA90CC4B6413C0C74A427E5A5CF1F8D23229F89DF6681784AEF1E44991EBF29AFC24FF0083605C5EFC67884C43B0BED6651193F718BCB838FC38FAD7EB9FFC149FF686BFFD97BF62CF1EF8C348B23A9EB765A6BDBE9366393757B3910DBA7D0C8EB9F606BE1BFF00837A3F60AD6FF669D5752BAF12DAD9AEA9A3E9E12EDE393252F6EF133A8E3B296079E3755456ED9AABA83F33F56875A3F83F0A6A9E68CFC9F854990E3D690FDDA4279A427E5A0079EB477A693CD19E680147DDA5EDF8D301F96973C7E3400EFE0FC2BCD3F6C7F8E03F66DFD957E20F8EF1BE5F0BE87757D6F18C6669D636F26319E373485140EE5857A4E7E4FC2BF3CFFE0E62F8EBADFC22FF008273C5A2683666FEEFE2478AB4EF0CCB0A20794C2ECF3BEC078DC7ECE067FDAA0A82BC923F243FE095F77E35F869FB6CFC2DF8957D7DE2D9FC71E34F1758C1E28375A94BB2E21BC9F1319533829B483CF002815FD3E29CB57F391F15FC0FFF000AEFF681FD9B3C1B68DAA4B178E359D3A4371673C688F3477D1C72D8EF46CEE86364DE33904E3E9FD1A42362819E831D6837C4A8A92E5241D690FDDA4079A427E5A0E61FDBF1A43F76933C7E3484FCB400FEF477A6E79A33CD0028FBB4A3A5301F96941E280147DDA53D6980FCB4A4F3400E3F7A81F7A9A4FCD403F35003874A3F83F0A683C519F93F0A00776FC690FDDA4CF1F8D213F2D003FBD03AD373CD00F3400A3EED28EB4C07E5A5079A0077F07E141EB4DCFC9F8504F3400E3F7A81F7A9A4FCD403F35003874A8E69D6DE167760A8AA59989C050075A76EC0FC6BF24BFE0E2BFF0082A8DFFC2FD12C7E08FC3DBBBE8B5FF12B236ABAB69D29325A441C06B6408092EC0F38391C50694A93A925147927FC1763FE0B2BAF7ED07F10EEBF66DF80175717714CDF62F136B9A6B132DC4ACC50D85BE3193FDE6E8335F4CFFC11F7FE0DF3F067EC6DF0CA0D53E27E9DA4F8D7C6D7CE2E7CAB9844D69A6068D41408C30CFD72DCF359DFF042FF00F8229E8DFB327817C3FF0015BC6F14D79F10B5986E6E8DB5DC41859C770CA577EFCB1942A824F1CB1AFD401C0141D152AA847D9D27EAC874BD2ADF44B186D2CE086D6D6DD047143120448D47401470051A969B06B1A7CF6B750C7716D728D14B148BB92446C82A477041A9B3CD00F341C67F2B7FF050AD2ADFE05FED15F157E18CD6F344DE1AF8B126A76BE4C654DE69F7B25B4A200A33C15240C75E2BFAA1B3977DA46D8C6501C1ED5FCE97EDBDE1ED43E28FFC16FBC23E16B992D2EEEFC53F136CAEA636AA4B8B35BC0511C753B638793D07D00AFD58FF0082CB7FC15DBC3FFF0004C5F817B6C00D6FE26F8A164B2F0C68D0A79ACF7006049228FE052CB91D4F414753A6B45DA3DCE9BFE0AB1FF0560F05FF00C1337E119B9BF9AD754F1D6B50BC7E1DD0049FBEBF9F184CA8E766E2067BF4AFCD3FD8B7FE091DF1BBFE0B1BF1BADBE3B7ED73A8EB7A4F8485DFDA74DF08CC6483CD8D58910C70313E4DBE42E58FCCE3A601AF52FF008242FF00C1243C77FB557C669FF6A7FDB22D2EB5CF1D4F3A4DE13F0DEA6805BE9518FDE2DC34192170E498E3E8396232463F62C288C00A000380076A08E6F67A2DFB983F0CBE157877E0AF81F4FF000CF84F45D37C3DE1FD263F2AD34FB0816182DD7938551C75249F526BF1C3FE0E78F8CD65F13FE3B7C36F87CE3C9D13E17C5278CFC41A9AB65609240D0C56D81FC450337FC0857EB77ED51FB46F87FF0064AF801E29F887E279FC8D1BC3164D752E325A67FBB1C4A06496772AA001D5ABF9FF003F07BC5BFB7A7ED51E02F85FAEDD93E29F8DDE2997C61E3D9E32649B48D2E2733F918E7CB58D1238549E092BEB54968146C9F3B57B1FAABFF0408FD862E3F64BFD94AFBC51AF580B1F187C59BC5D7EF212C19ACECF605B2B738E01111DEC0701A56F4AFBB07DDA834CB08F49D3E0B5846D86DA358907A2A8C0FD054A0FCB526729393BB1FDBF1A07414DCF1F8D00F0282470FBD483AD203F35203CD003C7DEA074A683F3500F1400A7EED29EB4C27E5A5279A0071FBD477A693F3519E680333C67E33D3BE1FF0086AEF57D5AEA2B3D3EC937CD34870AA3381FA915F865FB787ED8DE36FDBEBC3FE2DF1BFF00C23B07873E14DACE74BF0C5F4CD8BED50413112B85391F3EF523A10335F59FEDE9F1C7C59FF0516FDAEACBF665F843ACD8C3E1FD12E2DAF7E246AA236F3B4EB459833A44E7E52CE02A2E3BB31FE1AE1BFE0E2EF0D784BE057EC3FA469C9716B61A5F8725B5B7D134F85364ED75E61692438C291E50FEEF539AD609A7A762A3CBD4EE3FE0D68F0BE9F65FB0678BB5EB38A5493C45E3ED4DA6691797F256185707B8F94FEB5FA607AD7CA1FF000446F80D79FB3A7FC12F7E12E83A9C0D6DABDDE9675BBF4660CDE75ECAF74771EE409547AF15F5693CD6412DC53D694FDEA613CD7CCBFB7E7FC15ABE0EFF00C13AFC36D71E37D78CFACC88FF0064D134F5F3AFAEDC701553B65B8C938A093E9D1F7A8EDF8D7F3FFF00B357FC15C7F6A5FF00829A7FC15A7E189F03C9ACF843E1BDBEA7E7EA1E1E8616F24E8F93E75C5E93942768C2E71F3631CD7EFE459589416DC7B9F5A06E2D6E3CFDDA53D6984FCB4A4F340871EB477A693CD19E6801738CD7E5AFFC16F7FE0B056BF0B7C03AD7C32F0469D7FA96A97C5B4FD5752C3DBDB5B0231B2394100B16C0E0D7A77FC1673FE0A93A07ECAFE09BAF01E91E2BBBD0FC6DAA401E6B9B345DDA740C4AE4C8C18239FA138F4AF8CBFE08C1FF0004B3BFFDB03E2EBFC6AF8B51EA5AB783747D44DDF8761BF9CB8F10DEAB1DD772A939291B8C27CA031F9BD2AB6571C5753BBFF8249FFC105AFEEFC6F65F167E3745A75CE9DE58B9D07C2AD199C44EC772CF73E66EFDE2E06D51F77EB5FB0FA5E956DA1D8C56B690456F6F08DA91C6BB5507B0152451AC110550155780074029C4FCD53D6E21C7AD07EF5349E6AA6BBACC1E1ED2AE2F6EA4115BDB21924727A019A00F28FDB7FF00695B1FD9A3E08EA9AACB756F0EA13C4D0D9AC8F8DAECA4073DF683D4D7E537FC11DBE153FED7FF00F0518D57E29DFDDDA78862F03C13C13EA8859E09351B92A4A44C46088E1520E0F05C7AD791FF00C154FF0069BF19FEDF5FB46E9DF0F3C2FA2C9AD6B9E28D424D3B49B2B7BF9E058E34976892545C808AA3733123201FA57EC7FF00C1313F620D3FF609FD91FC39E05B78A0FED0B64F3F519A3FF978B97C191C9E32723AFA015AC9A51F66BE6547DDF7BA9F450E8296980F4A7D64488DF76931C7E34ADF74D373C7E3400A47CB4B8E69A4FCB4B9E68000381401F35203C0A01F9A80140E6803E5A4079A01F9680148E6A1BDBC8ACADA49657548E352CCCC70140EE4D4A4F35F9BFF00F07007ED5DADF86BC03E11F839E08D54D9F897E27EA1F66BB96D65FDFDA5846374CCC14EE5563B57771D48CD171A573E71FF008298FC78F167FC15BFF69E93E067804ADF7C27F0DDEA0D6A68CB01E20D42390836AAE3AC316D566238278ED5FA4DFB05FF00C13DFC2BFB197822CD6D6CEDE5F107D9D6296E4200B6EBB7063880FBA38E7D6BCF3FE0927FF04E8D17F644F85161ABC96CA75AD4ADD648F72F36EAC01663FEDB124927D6BECB27E6A168AC54DF44291C1A31C7E3484F068CF1F8D040A47CB4638FC6909F96B37C63E2BB4F03F84F53D67509560B1D26D65BCB895CE1638E352ECC7D8004D007CBDFF051FD1F44F8B1E21F046897B7FF006883C21AB7FC2477DA6C33637C896F32DA9997BA2BB1703BB2A9ED5EB1FB13FC299FE177C10B76BEB8B9B9D57C49732EBB7AF39F9E37B821962E8388E3D883FDDAF9CBF62FD34FEDC1AA4BF15EE2DE1B0B6F185F26AAC8257F35EC62216D6329221FBD1247B80C0CBBE0D7DD0A36703803803D282DCB4E54281CD18F93F0A4079A33F27E1410291CD047CB484F3413F2D00291CD2E39A693CD2E79A0000F968C71F8D203F2D19E3F1A005C7C9F8560F8E3C1D6FE2D934A37561A56A16FA7DD9B974BDB6598A62375568F20ED70CC39F4DC3BD6EE7E4FC2BC87F6F5FDA16C3F659FD8F7E2078E3509DEDD747D2655B7655DCCD732FEE60555E324CAE83AF7A06B567E1B6AED7FE2DFF82A1FECAFE1382C64D36D74EF8ADAD78A65B329E6490C97BABB5C6D2ABD1446BD7EEE067A57F45017E6AFC1BFF8256FC1FF00F8597FF05AAF090B655BF4F835E1333EAD2CECE6549DED442A7E6EADBEE14FE35FBC60FCD495FA9AE21253B2140E6823E5A4079A09F969988B8E3F1A08F96933C7E3413F2D003B1CD18E6933CD19E680003E5A5038A683F2D283C500007CB411CD203F2D04F3400A47CD463E6AF2BFDA6FF6A1B2FD9C6FBC09632E977BAD6A7E3FF1145E1FB1B6B5754316629679AE5C9E91C50C2ECC7E83BD7C1FFF000492FF0082847ED35FF0508FDB9FC6FA8EBD1785F4CF803E146D46D2D52C6C479F7537DA5A3B58DE62EC4CAB1C6CED8C0C30C8E4506B1A527173E88FD4551C5263E4FC29149DB467E4FC2832171C7E3411F2D2678FC6827E5A007639A4039A33CD203CD00281F2D0073480FCB403CD002E3E4FC28239A4CFC9F8504F3400A47CD463E6A427E6AADAC6AF0683A5DCDEDDCAB05ADA44D34B239C2A2A8C924FD05007C91FF059CFF828E5B7FC13E3F66412E9B3447C77E349FF00B27C3B0B7CDE5C8DFEB2E19473B234DCDF5C57C25FF0419FF826841FB4DFC50D57F69AF892DAA6AC96FAC31F0A5BDEAB04BB9232C25BD911C7CC19C9DBF4CD7CD5F142FB5EFF0082E87FC15EF4B82F22BC4F09CDAD4BA2F87D60BBCC36BA1D8B97BDBE4E7EFCB80A1877900F6AFE8AFC05E08D37E1AF8334ED0746B486C34AD22D92D6D6DE15DA9146A00000A94DDF53B1CBD953E55BBFC8D7440A98A50381499E3F1A01E0551C63B1CD66F8B75B87C31E18D4751B8CF91616D25C49DFE5452C7F415A39E6BF3DFF00E0BBFF00F0561D2FF60EF879A4F80F4FB39759F1C7C48B7B986DAD216C1B5B7084191F8E8CCC147E3E942D5D8A8A6DD91F921A27ED77158FFC1616FBE377D91F535F065E5E9B0B68E10B2CA7ECB244A02609660CFC66BF51FF00E0953FF04DDF12FC5EF88F7DFB4BFED2962FAC78E3C4371F6EF06681A9BF9F17846C655560FE59E16E1C6320F28063A935F23FFC1B2DFF0004FB7F8E3F16FC63F19BE205879B0F853558E1D1C46E44175A814679D9BFBEB1AC88B83C6F1ED8AFDE75E28D3A1D55EAD97247B6A1B7083E94AC39A427E5AF2EFDB53F6A0D1FF633FD96BC71F1335D9152CBC25A4CD7A88C466E660B88A151DD9E42AA07BD0719F98DFF0005E7FDB3E3F8C5FB53E8FF0002B4EBC8C7837E13430F8EFE2216FBB712C7896C6C8E78233B6561FEED7A5FFC1BB3FB2DEA5AED9F8D7F6A3F165AADBEADF18596DBC336AE9FBCD3B4485CEC39CF1E73FCD8C748D7D6BF323F641F851E3AFDBF3E27C5E19F116B37517C41FDA6B5A9752F156B1043F689F4ED1615324C49E8881523850640F9D4735FD2F7C3CF02E9BF0BBC07A3F86F46B74B4D2741B2874FB385170B1451204518FA0141D352F4E3ECCDAC734807CB4679A407E5A0E6171C7E3401C0A4CF1F8D00F0280140F9A8039A407E6A01E680140F9A940E29A0FCD4A0F140011F2D0473484FCB413CD00291F357CDDFF0549FDBAF46FD837F658D6FC493DEA0F12DE426D340D3D6233CFA85DBE1551230413C9EBD057D01E2BF14D87827C397DABEAB7515969BA6C0D73737129C2431A825989F402BF2A3F652B19BFE0B87FB7EDD7C63D6E35BCF81FF00086F6E748D074E7DC60D57501C09F9E19506D271C6E6F6AA85AFA8ED73EA8FF82377EC7CBFB33FEC9BA7F89B598E4B8F889F12ACE0D7BC49753A324C2478F7C569873955855B6ED3D0EE3DEBF327FE0B7FE3EF167EDD9FF0509F859FB3CDAFD8E76D7756B58268AD61595ECE33286B8904B9F976C08C49C1CD7ED97ED352DA699F00BC451DC4C96701B428A45C7D9F18E400C0823A76AFC5BFF820B786B50FDAFBFE0B59F12BE2CEAB6909B5F86FA0CD676B241299228A7B8B86B78FE639058C314EDEDC5277E5B8D2BBB9FBBDA168D0F87B44B4B0B70441650A5BC60FF750051FA0A4D7F5FB1F0B69171A86A37505958D9C6659E799F647120192493C01547C75E3CD37E1C784AFB5AD5EE05B5869F134F2B1E490A09214773C70075AFC5BFDBEFF00E0AFFE3FFDBD3E29AFC08F805A1B6BFAEEAC6E0F97A78632E9F0AA9092DCBBFEE94E769656E1338CB1A2DD44A2D9F4A7FC1477FE0BC307C20D7B4AF879F027464F89FF0014FC5B88B49B0B3CCE21DD91E74814E428E0E0E3EB5F96DFB56FECDBE21F829AE5DFC40F8FBE2D1E24F8C5A879D7175636CBBA1D2A162196201C9CBE49E14F19C739AFD25FD967FE09FF00F0EBFE0841FB31789BE38FC44D40F8AFE33EB36222BAD41B68637931023B1B253D332300CFDF04F0062BC13F60DFF8267E87FB7E7ED8BA9F8BFE20F8E7C4FE34BFF0CDFDB7883C4D0978FF00B38DCBC9E75B69C3E4C9450A19867254267AD3E66958D2364EFD8FBABFE084FF00B0FB7ECAFF00B20E97E22D7ACE4B6F1D7C4481756D5E3955775946ECCF05B0C740A8EB91EA4D7DBD8E3F1A643108102200A8A30AA06001E829D9E3F1A933726DDD8A47CB411CD213F2D04F3408711CD78EFEDC7FB61E87FB11FC04D53C69AC41717F2DB26CB2B0B71996F266202A8F604824F619AF5BD42FE2D2ECE4B8B8952182043249239C2A2819249F415F849FF0542FDA3FC45FF0524FDBD344F87FF0D7C40352D0E28DED34FB4B27DE0CA3892E1BF871D79F41C55452F8A5B21C5734B94E77F623D07C57FF000570FF0082905EDCF8BB4585745FB1C9ACEBB752D9B3C4D10982DBC41586D567CBFCA790AA0F7AFDEFF05F8374EF007852C746D2AD20B1D3F4E84416F042811235038000E057887FC137BF61ED33F618FD9DB49F0D44DF6DD7A48565D5F507E64BA9C81BB9EBB41E809E2BE8207E5A4DDF51C9F442E38FC6823E6A4CF1F8D04FCD48909381F87AD7E4CFFC171FFE0A6563612EA9E00F0EEA39B1F0E44B36AF3DB5D1533DC367CB846C39DA08E7FF00AD5FA05FB7BFC766FD9FBF65FF0014EB36A637D61AC64834E85A7585A59997030C7A6339AFC18FD92BF6777FDBEBF6C0F0E7C39D12D4DC6996F74BAFF8D7519BCCB846823972D0B484618C8C0C6013D039C62AD691E6EA1CB7DCFB7BFE0DC4FD8675A99350FDA43C699FED2F19DB1B2D12CA588FFA2DA2C84F9E0B7CC0C8413FEEE3D6BF5BB1C7E3595E09F08D9780BC2D63A3E9B6F0DAD8E9F0AC104512044455180001C0AD4CF1F8D66AF6D4A93BB140E053A980F4A7D32447FBA69B8E3B75A73FDD34DCF1F8D00211F2F6A5C73DA909F96973CD0000703A5007CDDA80781403F35000073DA900F97B5283CD203F2D00731F1A3E29695F057E17EB9E29D6AF6DB4FD3744B392EA79E76DA91AAA93C9C7B57E557FC122FF00671D7FF6DAFDA53C43FB417C55D3E0BAD4B59B9924B75685C4105A2B1FB3C1187E400BCF404F27BD773FF05DFF00DA2E7F8B3F133C0BFB38783B54BB3ADEAF7706BFE2882DC00B16968CC238E46247FAD9820DBCE551ABEF2FD8FF00E05C3FB3F7C0DD234411471DDF9425B9DBFDF23A75ED42BA7CDD0BD1474DCF50489618D5102AAA80001D00A711F376AE0BF68BFDA87C01FB267C3F7F14FC46F15E91E11D06395203777F388D5A4760155475627D002783E95BDF0D7E29F86FE32784EDF5FF0009EBBA5788F45BBC886FB4EBA4B882423A80CA48C8EE2820DF2383D28C71DBAD04F068CF1F8D00211F2F6AF927FE0AA7E3D9FC57E18F0C7C15D06F1975FF008A7A8A5B6A3042332AE8A87376D93C00FF002439CE7F7A71C8AFA8BC6DE34D33E1D784351D775ABEB6D3748D22DA4BBBCBAB8904715BC48A5999989C00003C9AF913FE09F9E043FB4CFC6CF1A7ED1FAC49A94B6BE27B88EC7C1F677736F8AC74C8102078D4FDD32486473EEDED537BBB1A42CBDE67D65F0D7C0D65F0EBC13A6693656F0DBC3656E9085440A06140C607F8D6F01F376A3A62807E6AA330039ED463E4EDD28079A33F27E140011CF6A423E5ED4A4F3484FCB400A473DA8C73DA8279A33CD00201F2F6A5C71DBAD203F2D2E78FC6800C7C9DBA57E77FFC1C4FE33B8BCF81BF0A3E1CDBC7E6C1F107C7F62754C004A585806BE95B27A61A28CE7DBDEBF4433F27E15F857FF05DCFDA427F1D7EDF93ADAB3C3A6FC1ED326D0A1919888EE2FAF2DA39A7F976E49559AD93233D5BD0D4CAFD0DA82BCD23DCBFE0D9EF87A7E20F8ABE3D7C6CD462C6A1AFF880786EC9C93916B0013640207DF592DC9FF707A57EB101F376AF947FE08BBFB1F5CFEC5DFB067863C3FAADBC36DE24D76493C41ADAC531955AEAE003F78E0E446B183EE0D7D5C0FCD4D5FA9136DCAEC00E7B5211F2F6A5079A427E5A640B8E3B75A423E5ED4B9E3F1A427E5A005C73DA8C73DA8CF34679A00403E5ED4A071DA901F96941E280100F97B5121C7A500FCB4ADC9A00F817FE0A03E386F0C7FC154FE0649ADDFF0093E1DD2FC1BE23BAD2AC95413A86AB2A25B940719DDE4B71FEF1AF57FF008239FECB371FB24FEC0BE0FF000E6A7A7C1A6F882FDAE359D5E28DB77FA45CCCD200CDDCAC6635FF0080D7CE5FF05A7F89FA77ECEBFB5EFC1DF114169E0AD23C5BE33B1B9D034BF16F8AA693FB3F4A5865599ED8AAB615A5F3787E3EEE09E95F7EFECF3E2AD5BC69F067C3DA9EBB168D06AD7568AD709A4DD9BAB2C8E018A421495200238E338ED41B49FB8923B351C76A31F276E9403C519F93F0A0C431C76EB4847CBDA973C7E3484FCB400B8E7B50073DA8CF3403CD00201F2F6A5039ED480FCB4A0F340063E4EDD28239ED467E4FC28279A0008F9BB57C3BFF00070B7ED49ABFECBDFF0004D6F15CBE1AB8B9B6F1478BE683C3BA53416A67264B870AE09E0265377CC7A1ED5F7113F357E7C7FC1C7DF043C63F1ABF62CD03FE115D22FB5AB5F0DF8AACF59D6EDEC61F3AE859421D99A341CB1DC1460027E6A0BA6AF2499CD7FC1BABFB09786BE14FECD7E19F89F3E9EEBE2FB8D2A5D06079AEBCFF00B25B09F74A060EDDD248A0938CE140ED5FA5607CBDABE40FF8236F8D34DF0BFEC91E0CF86DAC5CE99A3FC48D2B4A7D6353F0C89556FB4FB7B9B879227962CEE1949133C75E2BEBF07E5A0AAFF1B171C76EB401C0E94678FC6B88FDA0BE3D681FB39FC31D47C4BE20BE86CAD2C61690191BEF900F18A0C8E3FF006F5FDB83C1FF00F04FDFD9DB57F885E309646B5B0022B5B3B71BAE350B8721638A35EE59881ED5FCF0FC78F893E31FDA0BC5BF13BF68BF8BF05CDBEA9F656B1F0AE853BEF6D22DE57FDDC785FE23F2F6AFACBC35AAF8B7FE0B73F1C6F3E3E78C3ED1A77ECD1F0552EAF74BB6BA5090788F52B7525308DCB22B6D25BDB1D49AF37FF827F7C38D4BFE0A59FB6D780743D4E39BFE11CB7D467F889E298BCB2233656F3A8D3ED5B1C0F31CC791DC2BD07753A6A09BEA8FD78FF8233FECC127EC9DFF0004E7F86DE1DBF865B7D7F52B0FEDFD716639717F7A7ED1329EB8DA5C281E8B5F5181CF6A6C4A2350AA00006001DA9C0F341C527777108F97B57E277FC1D1BFB52DB7C5EF8B9F0C3F673D0B57561A6DDFFC257E34815C8862854016B14A57BFFAC7DA7FD83DC57ECBFC4AF883A5FC26F875AE78A35CBA5B2D1BC39A7CFA9DFDC374860863692463F45526BF985D2753D77FE0A5FF00B6AEB1AE8B6BA8BC53FB4578B62D3EC1028DDA768EA79653E91D921393FC40D07461609CEEF647EB67FC1B8BFB36C1A57C0BD7FE335F5808AF7E20DC8B0D019C7FA9D16CCB4713479E556694CD27B8D86BF4A40E7B561FC34F879A4FC23F87DA1F85F42B54B2D1BC3D630E9D650270228624088BF9015F247FC1517FE0B7FF0009BFE09B3E16D5AC2E755B4F12FC4982DC3D97866D26DD2991BEE09D973E503C9E79C0A0CA72739DCFB07C5DE32D23C01A05D6ADAE6A7A7E8FA5D94665B8BBBDB848208107566762001F535CD7C14FDA4FE1F7ED1FA3DC5F7807C6BE17F195A5ABF973CBA3EA50DE2C2DE8DB09C743D7D2BF9CF5F85DFB4BFF00C17B7C41E20F88BE2FB9D6F45F873A544FA8BDBDDC8F65A0585AC4AF26C0E760B8902F7504003939AF5AFF00821BF83FE1FF00EC69FF00054CF87FE14F0B4D36B5E23F1BE8FA9E9DA95CD85D6DD392DD6DC5DC6E41CF98DFBBC29047DE341ABC3DA37BEBD8FE8371C76EB401C0E94678FC6BE57FF82A47FC15AFE1EFFC12BBE1E68DA8F8AACF56F11F88BC4F2BC3A2787B49556BCBFD8019243B8E1235C8CB1F5000341CDB9F5401F376A4039ED5F307FC1293FE0A8DE15FF82AB7C01BEF19F87749D47C3B7DA1EA4FA4EAFA4DF3ABCB67385571865E19191810703B8C715F4F83CD01B6E281F376A6F9C8B2042E81DB24293C9C57C69FF057CFF82B9691FF0004D6F879A7E9FA2E9D6FE30F8B1E2C0EBE1FF0EF9FB76A28F9EEEE307724098EBC6E3C03C1AFC0CF8EFF001EBE3CFED59F1934EF89F7FF00133C4D75F146DDD5F49B7D26F0D9E9D665240CB05BC51E17CAE0024E4B9C962682E1072D8FEAFC8F97B52B7E15CDFC20D6F52F127C23F0BEA3AC88D757BFD22D6E2F8478D8277855A4DB824637138AF25FF82957ED8B69FB167EC9DE29F14C772BFF00093359496FE1FB35512CD797CE36C4163246E0AC433760AA49A16AEC41F25FFC1C01FB5D789AEB42B2FD9CFE19E9DFDB5E36F883A7C975790C45BCC86D54E405DBD1891FC581C8E700D7D93FF04F2FD9734FFD8E3F638F017802C74DB6D2E4D1B4A8BEDF0C2770376EA1A762DFC44C85B27BD7E78FFC10C7F645D6FE3FFED39AFF00ED3FE39D575AD5E7859ED34D96FEE1A717DA83C262BA962661836D02B3431F967696321EC2BF5DFA1A3CBB172B25647E797FC1C19FB465B7C17F815A3D8CD0DCDCC77E97935C0B7970D0A084AA332632C0B1E391CA9AF08FF8370FC53E0EFD8DBFE09D5AE7C4CF1AEAF6BA75D7C56F165DBE9F6ED084BCBA82CF16A88AA3EF80C92B96E803124F5AF0AFF82FBFC7AD5FE21FEDB3A9686F73E1DD43C2FA5D847A7DABD9CB1CB32190EE78E5EA7703131ED81263D6A4FD85FF00629F18FF00C140B4BF0AF81F41B948FE0F783A63A7F89F5E6B8F9618B0934BA55920EB248CE0CB20E064824918AA969646897B9A96BE3A7ED77FB40FFC169BF6A0D7FE197C02D522B7F0C5A33DB6A9ABCD0347A7F87ED998213E601F3CAC06E18F98E78000AFD55FF826B7FC12FF00E1C7FC132FE0E2685E13B3FB66BB7E167D73C417C44B7DA9CE554393211911E572A9D066BD5FF672FD973C01FB24FC3A83C2BF0EFC2DA4785B458304C36502C6666E9BE461CBB1F535F3BFFC16DBF6ECB8FD8AFF00645BA83C3CB25C78F7C7CCFA1787608E3326D95D7E795806040553D7D48A356EC8CAF77647E66FFC163FFE0A2FAAFED73FB4CEABA2F86748B5BCF097C20BF6D2F41CC9BFFB7B5B98AC42507EE85472A8075C9CE466BF5FFF00E09C9FB1769BFB0EFECBFA1784A0FDF6B73C6B7FAFDEBC86492FEFE450659198F279181E800AFCA0FF008214FEC376DFB42FED44FACEBB27F68784FE0535BCEF1CB0B15D63C4332BB17666E19601F39193F3BA67EED7EDBFC4BF89FA57C28F0CCBAA6AB36D48D0B47021066B82064AC6A48DC71CFB0E4D0DDF61BD34474407CDDA8C71DBAD7E2DFEDF7FF072FF00C49F835F14AE74BF851E03F0DF88ACF4FBD482586EC4B73732A9EAA3C99305CF6DA48C8C0CD7EB57ECCFF1B07ED17F017C2DE361A56A1A0B788EC22BC7D3AF9365CD93B0F9A39173C303918A4D35B89C5ADCEE48F97B5291CF6A427E5AADAEEB10F87F45BBBFB87096F6503DC4AC4E02AA0DC4FE429127C5FF00F05A3FDAF63F845F06ADFC01A36A705B788FC6CC61B965946FB2B155DD33B0CE46E51B7278C135F3D7FC1047F605B8D4BC6AFF00B44F8974DB5D312FF4F363E14B0440C12D1D89FB496C0F99D71C6DC8E79E4D7CD90698FF00F0531FF8288DEDEC11453DA7C53D7459ACEC0B35AE83A7ED173229046D5964431023BE0D7EEF7833C25A7F80FC3363A36956B0D969BA6C0B6F6D044BB5224518000AA6DAF70D15946EB766A28C7A5201F2F6A5079A407E5A933171C76EB41E1BB519E3F1AE4FE3A7C50B5F82FF00083C47E2ABD602DF43B096EC82C06F2AA4AA8C9C649C01F5A04DD95CFC8EFF0083887F6B8BDBCF193785ED6EE05D07C3298B981A13E65C4E54E5559BE539E06307A7515F607FC10CFF00606B9FD8DBF654B4D47C4F6965178FBC68E755D5E48063CA57C986027B88E32ABE99CFAD7E542FC3FF00127FC14CBFE0A4DF0F3C0F7168DE21D317573E29F1535D5D064B6B1471B91B681C1255557D4E2BFA2BD234E8F47D3ADED610162B78D63403B00302AA724DD96D6293F76C59039ED4638EDD68079A33C7E352201DBA53E980F4A7D0021E9476FC686FBA69B9E3F1A0053F7697BD349F96973CD0028E8281F7A9A0F02807E6A0070EB515C4A22B6727B2E69E0F35E19FF0524FDA06EBF660FD88FE2378D6C604BAD4346D12E24B485F389253195407009FBC476A5276438ABBB1F03FEC61A04BFB4BFF00C15FFE2CF8FB587D1B59B29F5A1A369ADA7A09A3B7B2B08CAA2C8E33F3190C9924FDE5C7B57EB5EDD8800E80002BE17FF820F7ECA6BFB3B7EC93673CDE4CB7DAB22CB3DC08D84934AD9799893C9DD23935F72DC49E4C2C49C051D684ACAC549DD9F0FF00FC15EFE14F823F68BF13FC32F05F8EEE7C0074387547D6A6B3D7B53682EA77890AC5E4458DB264B302188FA1AFA87F658D17C31A0FC12D1ADFC1D676B61E1E087ECB15B44238BA904A8007520D7E0EFC7361FF000511FF0082E27C4DD4EF669EF6C3C1BA9C3E17D0A3766786D92DC0491D01E8CD2F99903D8D7F409F0A7C096DF0BFE1CE8BE1FB23235B691691DB233FDE6C2F53818C934A1B153D228E88F43476FC69A4F068CF1F8D5191E65FB5A7ECFF000FED45F08A7F03EA211B40D76448B588CC8E866B6077B460A9190C554107820907AD773E06F05E9BF0EBC2161A1E8F670D8699A642B6F6D6F12ED4891460002B509F968CF1F8D2B6B72B99DAC38F5A07DEA4279A407E6A648E1D68FE0FC29A0F3467E4FC2801C7AD21FBB484F3413F2D0038F5A3BD349E6973CD0003EED2F6FC69A0FCB4678FC68028F8ABC456DE10F0B6A1AADE491C369A6DAC97533C8DB511114B1249E00C0EB5FCE4E9FA5EBDFF000506FF008291FC39D27545B6D32FFC657A9E2AD6E2899A6B7492EAE7ED222280B0CC76490A7CDC1DBE8715FAEFFF0005CFF8C2DE11FD8B4F8074FD4CE9FE23F8C7AADB784EC8A4A23905ABB097509013F742D9473E5BB6E1EB5F217FC1B9FF000160F8E9FB42FC55FDA21EC27B0F0FC7AADC68DE1381D1763A9C472CCAC07CC047144A3B0DED80293573AB0F2E48B9B3F61ECAD52C6D628635091C4A11140C05006001528FBD4D2D86AF16F8E3FF00051DF80DFB356BD2E97E3CF8BDF0FF00C2FAA40A5E4B1BED6A14BA403D62CEFF00C314CE53DAC75A43F76B96F843F1B7C23F1F7C1D0F887C13E25D17C57A1DCFFABBED2EF12EA12719C6E42707047079AEA09F96801DDBF1A43F76933C7E3413F2D003BBD1DE933CD19E68001F769474A683F2D283C50003EED29EB4D07E5A09E6803E07FF00838A7FE09E1AA7FC141BF619B6B0F0DD90BEF12F8275EB6D7ADA08E2DF73756E3747710C47A8631BEEC7426315E8BFF046BFD9D7C63FB2BFECB377E0CF15F9D1DAE9DAC4A743B798EF96DACDA38C8567EADF3EF3CF40703802BEB33C9A07DEA5657B9A7B47C9C83874A3F83F0A4078A4CFC9F853331DDBF1A43F76933C7E3413F2D003BBD03AD2679A4079A0051F769475A683F2D00F3400EFE0FC283D69B9F93F0A09E6801C7EF53648C4A0AB0047A11413F3500FCD401C9F87FE03F84BC2FF0015357F1B58685A7DB78A75D823B6BFD4921027B88E3FBAA5BAE07A575A3EED00F14D2FB56806FB99FE31F15DA781FC2D7FAB5F3F9769A7C2D3CADECA335F8DBF1A3E2F7C46FF0082DA7EDC365F06BC1F7BFD87F0CB44B7377E3AD6F4EFDE369B6CDB847688E7E517120F638C93FC35EF5FF05ABFDBB75CD7B42D0FE077C10817C67F123E26ABDBD9A69B3EF4B08F779725C4ECBC246992496E322BE8DFF826D7EC3DE16FF825CFEC5963E1E927B54D42DAD5B5AF17EBB31F9AFAF0A6FB89E473CEC5C10B9E8AB41D31B538F33DD9F0CFFC171FC47A07EC8BFB2FFC3CFD997E19CD2F83BC39158F9F7D15B7C82E6CD01410C8F8F9DA42257727925549EBCFB7FF00C1B8FF00B23D9FC2FF00D92E4F8B57D650A7893E2D38BAB49060FD974588F97630263A2B22F9A47F7A53E95F961FB5BF8F7C79FF000533FDAC6C348B1D4BED7ACFC59F114B6BE1AB2FB3166D234995B624C483F2AC7688656F727D6BFA32FD9F3E0C693FB39FC0FF0009F80B41574D1BC1FA4DB6916618E5BCB86308093EA7193F5A0AABEED351EE762BD69475A6A9E691E4F291989C051924F6141C87E707FC1C7FFB536A5E0EFD9AB45F823E15771E29F8D3349677B22A9C5968916DFB648482305CBC510CF5123FA57817FC1B9DFB1736BDFB45F893E2FDD69FE4F84BC0162FE14F09C84FC9737AE717D3A0FF00615562CFABB8AF9FBF6E1FDABB58FDA5BF68DF11FC4B86DA5D4EE7C7BACB7C3DF8576304E1B36F05C35AC52F3C2ADC5D192524FF000AA7602BEB1FDACBF6923FF049BFD82BC2BFB3DF83B56B7D2FC43A378645DF8D7C5AA547F6334F969A48720AC979733B4A2353F7465C8C28A0EC516A1CB1EA77BFF05C3FF82E4C5FB117856EFC09F0BDADB53F895A86DB597537025B4F0F8901F9801C4B7001076744CA96EA01F87BFE092FFF000440D5FF006F7F8BBA97C5BF8BD7FAD6A3E09D5993506BFB88C2CBE2D99CE59119F2C21186DEE00249014802BD97FE0899FF000458D23F6809B47F8FBF18FC339D0DAD9C7837C27AA89667F2DDF71D4AE99CE5E490E59411CEEDC4F415FB49A368F6DE1FD321B3B2B786D2D2D90471430A0448D40C00001800504C9AA4B963BF73E4FF00F82CAF8EF4AFD9AFFE0933F17A2D365B0D04BF84EEB48D22DD635556778590451AF4CECDD8FA57E537FC1B5DF09DBE2E7FC149AC7C5179A7B4F17C35F013CE272088ECEE6EBCBB68147BF92B70307D49AFAB3FE0E42F8BF3F88D747F8779BB874286C5A7D527421E17336F919645C83948AD8007B7DB17839AE3BFE0975F1EB4BFF8271FFC1336C3E2059785FF00B77E25FED11E2096EBC2FA02CA217B9B48156DE29A77E7CAB58A38DE776E8164E39340A29AA6DF567DDBFF00054FFF0082AA785FFE0993F0BF4CBDBAD1EEBC63E31F12DC9B5D17C396570914D704025A6958F31C0B81B9F69E481DEBF00BE2F78A7C73FF000506F8AE7E2FFC54BA0FAA5FEA92D85A2B48E2CF40B72C445671290026D07A7572DB9B2718F7AF825F05BE277FC1717F6FCF126A56DA85D2F862C26FB278AFC7E965BECEDF67CCB61A6472B7CB1A901514649CB4AFF782D6E7FC177BC33A27ECDFF103E057C1BF87BA43697F0C7E1F6A33F88B5ED487CFFDA9A9C621CFDA641F79F03249E85F0071C1AEE553B42DA5D9FA07FF0006DDFC09F0EFC20FD90FC67A96877D71A85C7897C657726A133C6638849047142A9183C90AA304FF007B77A57B2FFC14DBFE0A91E11FF827EFC3EB8B38EE2CB5FF008A9ABD9BCBE19F0924B8B9D49F3B7CC7C7FAB8549CB3B60615B06BC4FF00667FDA674AFF00826AFF00C11D3E196BF7BA54FACF8EFE22A0BED1BC356D21FB56BBACEAD3BDCA4281802B1AF9A0B31184443ED5F983E15F81BF123FE0AA9FB7D78A7E1EA6ACBAEFC442437C4EF1F5ACF9B3F0D5AF9D83A669E48C08625668C2AF32386FE1563425A5CCE5EFCDC9EC6AFECF7FB2C7C5AFF82DBFED73AE6B3AAEB512DE453DB278D7C5871E568FA792E534BD2D467042EFF9B8C9F99B8C0AE6FF00E0B569A07ECEFF00B6D41F06FE1AF8760D27C3BF043C04B691CB15CB1B9BDB9B9804AAF337F1B7EF792C4927D3A57F405FB3AFECDDE03FF82797ECBB0785BC19A5A69BE1BF08E9D25D4CC06E9EF5910BCB3CADD5E4720924F738181C57F3EDAB7C0CFF0085FF00FF000553F833FF00095E9FAE6A3E27F8D9E22B6D53566B8B9DDF6CD361BBF310CAA3EE29B6B7FB981F2B629E962B9EF2BAD11FD0BFC1EF16B7C28FD8DBC27AC78A524B59742F08D95C6A71C50967478ED10C88A8392D904051DF02BF29BE2DFC36F147FC1637F6F8B6D2EF34ED67C2DF67B481F57B392F73FF00088F875A49769922236AEA378370DB8F910F5F9483ED1FF0518FF82800F1B7ED7371F0E7C11A95BF88357F8656D17F63F852CAE879DE30F15DDA48B6B6EEAAD936B651FF00A44C48DAAC53774AFA9BFE0977FB095E7EC5FF0004EEEE7C5DAA0F137C59F1FDD0D77C6DAF3A82F777AEA00B7461FF002C201FBB41D38271F353BDB631BB8BBB3E82F86BF0E344F843E04D27C33E1BD36D748D0B44B64B4B2B3B68C24704483014015E3BFF00051EFDB97C1FFB0A7ECD9AE788FC49ADD9699A95DDA4D6BA2DBCA199EEEED90AA008BF36D0C4163D00EF5EE1E22D7EDBC29A0DEEA77D32C165A75BBDCDC4ADC08E3452CCC7E80135FCEE7FC144BE3D6BDFF0501D62FF00C75A90BAD3349D72E631A146F3811E9FA3C7318E15552843C93E5E693D014E7814E16DE5B0A31BB3E73FD8A3F65EF11FFC14DBF6C683C0167358E95FF091DCDC6A9A9EA56AD262DB4B8552392E10312C1DF08ABFED4B93DEBFA88FD9F3F67EF09FECC1F09749F05F82B47B4D1340D1A11143040806F6C7CD239EACEC792C7924D7E677FC1B11FB29DA68FA17C4BF8CED6C862F10DF2F85BC3D3E07CD6366499DD48CF0F72CCA7D7C815FAC80FCB52DDDDC73EC85270BF8D7F3CBFF00058FFDAF57E387EDCFE3BF1A47AB4BA8681F0418F857C2DA64523086EB5763B276208197121DB9E71B063D6BF67BFE0A6BFB51BFEC83FB15F8DBC6368276D652D0D8690B085690DECFFBB84A86201DACDBB1E8B5F8B3FF0004F2F82DAA7C6DFDB83E1C787E68ACDB49F86375FF0009FF00C40D53548525858B176656278F3649D805E4E0063DA9ECAE286F73F643FE09E5FB3D43FB00FEC09E10F0EEA865BDD6AD2CFF00B435B9D21DD3DEEA375279B283B33BB124BE583FDD45F4AFCF0FF829E7ED7BE3CFDA93F68593E09FC1AD2EEBC77F116E6D26B7D61F4C8D7ECFE1BB695BCA3179C48F295720C921E58AE07A57D11FB52FEDBFF143C4BE11D56EBE1F683A8EADAA7C40BA4D13E1DE8E967F30B4DE239B5794804AA1258873F2AA05E326BDC3FE0979FF0004C8F0EFFC13EFE179B8B84B6D67E2978A516EBC5FE24C319352B9625D91377DD851890AA31EA793576518DFA8697BB3E38D43FE0939E0FF00F826E7ECC1A36AB34CDAEFC49B7D3AFF0050BFD62E17CE885D0810ED895B848E3E42E79E4FAD7B57FC1B35E34F157C41FF00826543AC78AEF6F75092F7C5DAD49A7DC5CC8642F6BF6A38DA4FF007F3001ED5E21FF07156B77D79A77FC25D6DE253FD83E13D3AE3445F0FC72CB0CBA85FCEDB4FCB950F9055063D6BDCBE19FC6FD07FE08FDFF04A8F861E0DD58D8E9FE35D3BC2F131D323899FC9BC913CE999D412789246CF3F3352F67F0A455DB56EA7D67FB51FED83E06FD90BC0926B9E32D505A44118C50468659A62173808B93F8E3BD7E1E7ED69FF000716FED0DF11AF7C63A5786746F03695F0FB5DD364B5B1F3ECAE3FB46349430DE25DE0676727E5E0B63DEADFC1BF837F187FE0BABF1FD6C756835BD1FE16F8751E0D5BC577CC249E6671B8AC23E50F231551851B51475E715E61FF00051AD3FC15FB36FC40FF008567E10D0F6C1E19BD6B386FAFD4F9FABCFB820CB1CF1920703B9A5CD18AD17CCA8C16CCFD1FFF008377BF660B31F0AE3F8B5A8D82AEA17364342D198C6D1886D636DD33842061A49CB963D7E515FA73D0D78E7EC05F08EF7E05FEC71F0EFC31A925A47A9E99A342B7AB6A1FCAF3D977C98DFF0031F998E49EA7278E95EC59E6A37D4CE6F51475A41F76901E6807E5A091DDBF1AF8FBFE0B51F120F83FF64BBAD2FCB12C5AE4A12E17CEF28F971E1CE0F4EA075AFAFF003C7E35F16FFC172FE0878BBE317EC833FF00C213A25D7893C416937956DA6DB47BE4B8698796BC7A06209ED81CD5C1DA570B27A33E66FF008364FF0066CB8D62C7E227C7ED6D4497BE38BB3A2E8FB4EE486C2DA5719563CFCEE327B7CA2BF5B7A1AF03FF008266FECBD73FB1D7EC49F0FBE1FDF4690EA5A0E951C77AA8FB809CFCD273D3EF13D2BDE89F9AA1EAEE36EE3875A3B7E3480F3499E3F1A04387414B4C07A53E8011B9534DDBC7E34E63F2D26EE3F1A0042BF2D2EDE682DF2D2EEE6801A1781405F9A94370280DF3500205E6BE26FF0082E3FDBBC51FB3D782FC1561A9258378EBC69A6695708C9B8DCC1BCCB2201F48C67D89AFB683735F137EDFA25F1BFF00C1423F66DF0D9D44C767A75CEA3E2292CF1B927685238D188F506538FA1A89BE854373EB8F857E0883E1DFC3DD2346B78D634B0B6488803AB00327F3AF24FF00829BFED5F67FB157EC4BE3FF001FDC4A22BAD274B9174D063DE24BD907976CA40EC6678C1AF7B2C001DABF143FE0BDBFB7BFFC358FC7093F65FF0008C3789A5F84751B2D43C5FAAF02296752B343669CF38F95D8E320A81D8D39DED64386AEE749FF0006EFFEC996F6B3DA6BDAF59CDA96BB3452789350D4E48BFD6DDCF27CBBD88F989CB3802BF62F6FCD5F32FF00C129BE0ACFF08BF65FD3A4BD804175ABE264040DCB005023071F89FC6BE9B2DF35504DDD88578346DE3F1A52DC1A3771F8D040857E5A36F1F8D296F968DDC7E340015E6902FCD4E2DCD206F9A80102F346DF93F0A50DCD1BBE4FC28010AF3415F9694B73416F968010AF34BB79A0B734BBB9A00685F968DBC7E34A1BE5AC6F88BE38B1F867F0F75CF11EA72A43A76816171A8DD48CDB42450C6D23927B6154D007E2D7FC1C41F1C0788BF6B99B4D86F849FF000AFBC336FA06951C01676B4D67597779E568CE3052CADE3E46789EBEC1FD85BE287C3BFF008244FF00C11C7C0BAEFC4CD76FBC39A4C168F7D37F6ADBAC57D7573712BC8228A05E49618D8BD76E338AFC71F8F9F1FD3E3AFED1BA4789755B0D3ED3C41E21D4AEFE226A104D2191ECD75064FB0DB4A78DDE5D8C308C74CE7039AFA23E09FF00C135BE2EFF00C1763F6B7D73E2AFC4CD73C49E10F84FA65CC36DA1C52C3FBA30C5104F2EC607628A09C93298FA9E3341DAD2F6493D8C2FDA8BFE0BCBFB457FC14EBC4177E04F827A36A5F0F3C25AB4FE4D9A6890CD73E2CD6611903F78BF2DBAC99032A01191F375AD7F87BFF06D25E7C2EF81DE37F8A5F1E2EF4BB6D2745D0AE75EBAD26CE47D475CBF78E1699C4F77280B139C107606E7F8ABF6CBF648FD8B3E1DFEC4BF0C2C7C2BE01D02CF4CB5B44C4D76D1AB5EDFB9C96926971B9D89F5F603A57947FC170BE2D45F06BFE094DF1B753333C5757DE1D9746B21130123DC5E15B58C2E7FDA9413EC0D066AB25EED356FCCF81BFE0D73FDAF740D73E2878C7E14F83BE19E93E00F085EE891F8AAC8C37D35E5F5D4AB225BB35C3BB15C952B8DA07D2BF698AFCB5F843FF06A2FC36B9D23F68EF115DDCADCC72689E00B7B39507DC8E496F01024F462236DBECA6BF779CFEEE833AEAD369011B57F1A0AFCA2BF277FE0B29FF05DCBAF84BE20D67E107C1558F52D6DA1B8D235EF15DB5C8FF8A7AF6489D6386D769F9AE632373B1F963C0EADC0F44FF836AFE347C5CF8CBFB29F8C9FE2AF8D759F1F7F62788534ED2357D5416B89105AC4F347E69F9A55491B018927AE4D04723B731FA3FB79A36F35E65FB5F7ED79E07FD87FE046B5F10FC7FAB47A6685A3445B68399EF653F720853ABC8E78007F215F803FB6C7FC164BF6A4FDAB7C4F71A8691E3DBEF815E0EFB4A0D2346F0FB94D498499F296EAE07CED2BAE0EC53B4127038A0BA546553E13FA4A0BF2D285E2BE57FF008230FC5CF1FF00C64FF8275F80F54F8A1A9596ADE35B5866D3F51BD86E8DC4B726091A3579D88189CA052E3D4FBD617FC1407FE0BA9FB3FF00FC139B57B5D23C61E20BCD73C47781CA68FE1C81750BB8F6F5F34060B1FD1883411C8EF647D8817E5A0AF35E0DFF0004EFFF00828D7C38FF00829AFC063E3DF871757DF62B7BB7B0BFD3F5184437DA6CEA01D92A066032A558104820F5E081EF45B9A09DB46215F9A80BF35296F9A80DF35000178AE7FE22FC53F0CFC21F0E4BAB78ABC41A378734C810BC975A95E476B1280324EE72057C13FF00059FFF0082EC68BFF04FDF0E4BE14F8772F877C5BF17279046FA65D5C3795A446C0FEF65DBF79BD1320FAF15F92DE06FD8AFF69CFF0082E57C70D3FC4FE3AD635DF100BC02E1CDEC73DAF86B42B5FBA56319DACC48E123193824FAD075D1C24A71E77A2F33F7FF00E097FC1543F675FDA3BE23C9E11F047C62F02788BC4719E2C6D7524F326F68F38121E3F809AF7F2BF28AFE69FF00E0A55FB017C3CFF8237FC6AF853A3693F0E13E22788FC4162FACDBEB17F7CF6364B776B265E1448F0DC7CA793C8615FB7BFF000493FF008284C1FF000527FD8F34BF1ECBA57FC23FAFDADDCDA46B9A5EFDC2CAEE13860A4F3B594AB0CFF7A832A947963CF1D51F4E6DE6902F34EDDCD206E6831102FCB405E69437CB406E680136FC9F850579A5DDF27E1416E68010AFCD405F9A94B7CD406F9A8000BC57CABFF0550FDA62F3E0A7C1B3A4E97A845A449AAC32DC6B1AB34BB7FB1B4C89733483077091C6513DF773C57BEFC72F8CBA37C02F859ABF8B35C91974FD222F319131E64EE4ED48D01232ECC4281EA6BF2335BF0FCDFF00056BFF008299C7E00F23505F0AE86B0EBDF14DC4E7C931478FB0E8D90718271BC0EBB5F3D4D06B496BCCFA1EF1FF000426FD8BFED5A86B3FB4E6BD6B6F6D75F1134E8F4DF0669C88E8DA2E808E59378603F7B3101CF07E5DBC9C9AEF3FE0B9DFB598F859F02B4DF85DA45D327897E28BBDBDCF958DF65A447837731F40F948467A994FA57DB19D27E1BF8338FB2693A268769ED1C3690449F905555FC00AFE74FF006CCF89BE20FDBAFF0068EF10F88B4CFB75F6BDF1C3C470F82BC0712CC563B2D12298C715C46BE92E24B9247665341A52FDE54BCB63EAAFF83713F65F97E2EFED05E3AF8FFACDA44BA6785DA7F07F84C643664254DE5C2F6002AC712E3FDBAFD9554C1AF30FD8DFF654F0B7EC4FFB3AF863E1B783AD3EC9A2F876DBCB05CEE96E65625A59A46FE27772C49F7F6AF500DCD063527CD2BA11579AF903FE0B61FB4A6B5F01BF6399741F07DE7D8BC79F153518BC21A14C937952599B80C6E2E94E33FB9B7595F23A102BEC056E6BF153FE0B89FB63587883F6A0F1A5FD8CF1DDD8FECDFE1D6D3638DB847D6F5445798A93C6E86D511723BDC30A050577A9F2DFEC77A449F113FE0A27E1BD17C2D61777F2FC37D064D3FC2F73BD45AE85204F23FB4E7C8215A34F364DCC33BB07935F61FEC1BFF04E4F0BFF00C1467E2D5D78ABC4D2EABE24F81DF0DB5B68B4992F2E4CBFF0B435C8494BAD5EEA427749024AA5234FBA42FA0C571FFF0004D5FD807C61A47FC13EB48D26C2F6E74BF8A7FB5621BBD5F5D4B5690F85FC3646F958C8B8D924911F2D013CBCF9FE135FB35F097E15681F03FE1AE87E12F0CE9D6BA4E83E1EB38EC6CAD6DE311C71468A147038CF1927B924D074D6AAB686C6E5969F169B6B15BC11A430428238E340155140C0000E800ED595F127C7DA5FC27F879AEF8A35CBA4B0D17C3B613EA57F70C32208218CC92363BE1549ADB2DF357E777FC16E7E395EF8D3E247C28FD9D347BF3696BE3ABA93C4BE36788FCC9A0D81563049CE3CAB89F646C3F89430E84D072AD59F057FC1433E38FF00C3687C5AF02785218EF22F107C5FBE867934DDE239ADEDB11C8D1BE31B9BC948E3E39241F4AEB3E3C7C0BF127ED31F1D742FD963E1558A5978AD2C60B6F893E31B04924D3FE1E68F8DF1E8F6AD9C46EF1A8DEA369663CE7271C57EC6BE2FB5D67F696F8FFF00B4D5969F69AD37C3944F87FF0009748525DB58D7AE18A47E54783BBE723041E016E78AFD77FF00825AFEC0569FB03FECF5369F7F7DFDBFF107C657D27883C67AF3A90FAB6A5312CC70492A880EC55CF001F5A6F56744E768A47A8FECB9FB2F782BF62FF80DA2F80BC0DA55B68BE1DF0FDB2C636801E77006F9E56FE29188DCCC6BF073FE0B43E2BB7F11F88FC3BE1186F23962F12DFEB7E2BBF9A36FDE86BEBC9BECF1C6795E56600727EE835FB41FF055FF008CE9F043FE09FF00F11AF924D9A8EBBA77FC233A600E559AEF5171651608E7E569B79C720213DABF023C69AAF83FE287FC1583C0DA5F88358D9F0CBE1FE9916A9E23B688B3476F65A7C3E64368842E59E531449B7F8B7006974B061EC9F348FB5FE30FC2DF899E3BF19FC3F48F52B6D4BF685F8A5A4B787FE1EE9B228367F0ABC369122EA1ABE08044CF10081DB92CF8535FA3DFF04D6FF8268F80FF00E099DF02D3C29E1185EF758D4596EBC43AFDD0CDEEBD778C34D2124E075DA80E067D49272FFE09E1FB3DEA90C9ADFC6EF885696BFF000B2FE28C714D1446DFCB7F0BE8814359690808CAF96A774B8FBD2B367A0AFA8037347918CE57679EFED3DF1474CF843F04F5DD535688DC42F6D25B456CB1EF3752BA10B1E30473DC9E00EB5FCEA7EC39FB473E99FF000519F117C6AF1BDF6C9BF67EF064BB2DA67D9035DCAAF68B0B71C3796F231DBDD78F4AFD41FF00838135EF18E83A7689AB69725FDBE81E1BD16F67B7896E122B6D53559D952046C91931A46E7078FDF03D6BE25FF820DFFC1216C7F6EDF04F8A3C7BF166F357BBD12FB5F8DF53B0865100D52FED5D59A19B03E7881C8653C10C467BD53B28A2E9E8AECFAE3FE0DFCFF827858DC4FAAFED69E2FF000E49A1F8E7E2A4D7D77A469331322695633CFBD6E14C83CC124CAA3A9E108C7DEAFD4D2B8A8AC2C2DF49D3E1B6B5861B6B6B7411C51448112350301540E00006001533B54993773E1BFF008283FEDA5ACF89BC4FF11FE07781ACACE6D4AC7C3B0C5ACEA0F2FEF6D24BF042451C78C13E49DCC49E37AE057E367ED5DE2AD63C7F35D784FC391CF737B617A9E11D22DA02BB2E6EB7AD94662F50F317231D80AFAF7F6DCF8D3A77FC13CFFE0ABFFB46F8E3C45737B747C4DE1ED2756D011273FBDBC36725BC700523AABA06C838002D78EFFC1047F66DD77F690FDBE3C1DAAEB8AB7DA57C2BB37F15EB92CA4CA1F5298491D8A12DD5C17965F6F2F3D715A376563A2968AECFDC9FD893F66DD3BF644FD943C05F0E74C82DE18BC2BA35BD9CED0A6D17172101B898FAB49297727B9635EA417E5A5438A4DDF21FA566731F985FF05FFF00DA12D13C59E08F86739B23656D6B3F8AF528E473E6CBE5931DBA22823ABEEC93EA00EF5F177EC3FE28B0F01FEC0BF15BC79AEEBB1688DF133529FED93EA522E0DA5A3148ADBD54195A5F947538F4AF42FF008386FC762E3E38F8DEF6CE0D32F25B4B7D27C28A67D914B14855EE64C498DDB544C84007925BD2B7BFE0905FF04FB9FF006B9D07C1F2F8F13ED9F0C3C10F0EAD1E94D086B6D5B514259048483B90336F2BDC819AD2F668D23F09FA6DFB04F85B51D77E017837C5FE2DF0C693A0F8AEE7474B7B58AD8EF6B1D35887B7873FC27CBD8580EFD49C577FFB47FC6CB0FD9E3E0FEADE2AD4966786C4471451C49BDE59A5916289401EAEEB5DB5B4496B02471AAA24602AAA8C0503180057887FC1416EE5B5F80391B0DB0D4ADE5BA5783CD468A3DD29C82081CA0E7D40C106A56B2333F1DBE2978BE0F8CFFF00051AF0B69BF127C553DDF823E1D34BE32F109BABB16F6F2DFC64C9670138C30594C4427A28CE49AE9F42F106B7FF0005DCFDB0F57D33C0D6FE34F0EF82F4D5583C51AEDE22A5AC3160ED8E3539CC928036A803E5E4E0633E07FB057ECADE23FF0082A77ED99F10B4E8B59B9B5D19B539351D5F5487F7A20B4791D608C06E030D8768C1FBBCD7EEDFFC13D7FE09FDE0DFF82727C07FF841FC233EA1A92DD5EC9A96A3AA6A2CAF7BA9DCBE034923280380AAA001801401473BBB35765B1BBF0D7E0EF84FF613FD9453C3DE11D2DED7C3FE0CD26478A18DF74F70C88599D9D8E5A476C9249EA6BF9E8F0C7C37F1C7ED7FFF000553F07F84B5B5BFD42F753F158D46F24B954905BD8C33A5C3ACAEA01E3684E80658726BFA18FDB5F4AD6B5BFD9BFC436BA0DB4B77753443CD8625DEF2423E675001049206300F7AFC89FF0083727C0D0FC5FF00F82A37C6CF88A6D9EEEDBC2BA5AE8F04D323A0B0B89A725E3553C6EDB11CFA702A649F27A8A3DD9FB97042218115400AA3007A0A7EDE697346EE68466342F3405F9694373406F9680136F1F8D057E6A5DDC7E3416F9A8010AF3415F9A94B73416F9A8000BCD26DE3F1A706E693771F8D00205E94FA683C0A750023FDD34DCF1F8D39BEED2638FC6801A4FCB4B9E6948F96971CD00341E0500FCD4A0702803E6A006F535F26E81F09F5BF1B7FC15CFC47E36D4D2DE4F0DF84FC1369A368FB82975B99A679AE1948391C08C1CFA0C57D6678AF30F00788A5F11FC78F135A9915574A8233245E646CC85C90B951F32E42123775CD44B468B8BB2654FDB7BF6AFF000E7EC4BFB2EF8B7E2578A659D349F0DD99959608CC92CD231091A281DD9D9573DB35F8E9FF000443FD95AFFF0069FF00DA1B53F883E328A5B9BBF166AB378B358174CACCEF31DE2307392AA0AA8CFA1AF61FF839FBF6858FE226B9F0AFF678D0AF1AF6F757D553C45E28B0B7525E3B1848F23CC6E811A5DC76F53B07A57D87FF000470FD9CDBE0DFECEB1EA7750431DCEAEA89015218885011D7031939E3FD914D3B9A6B185FB9F5E5A5A47A7DAC5042891450A844441855038000A949F9A948E6823E6AA30109E0D19E3F1A523834638FC6801A4FCB4B9E3F1A523E5A31C7E340084F3403F35388E6900F9A80101E68CFC9F85281CD18F93F0A004279A427E5A711CD047CB4008DCD32DE330C7B4BB391FC4C7935211CD2E39A00603F2D7E5C7FC1CEDFF0514B2F80FF00B30C7F03BC397CCFF117E2E98ED9EDE227367A3F99FE952B91D9D50C58C8C8763DABEBAFF829F7FC141744FF008277FECCBA8F8AEEE3FED1F11DF8365E1FD2A390096F6E9870C73D238FEFBB63803DC57F39DADF82BE20FC5CF1EDD7C61F895AF6A1E3BF1878DF5D87C35A479A0C9389652D27970A8F95214DC0617804EDA5ADCDE9526D73F43ECEFF0082317FC13CB53FDB8FF69BD67E27F8F2DD2E7C15A5CCAB2471C1E443732C68162B44EFB235C679E06077E3F7A74AD32DF44D32DECED224B7B6B5458A2890616355E0003D80AF39FD8DBE01D8FECD3FB35F85BC25656FF6736364B25D0C0DCF7120DF2B363A9DE4FE42BD3F1C7E34CCE526F4109F9ABF233FE0E5BF1BDEFC5EF127817E0CDBBC89A60583C457D102105F4B24D2C56E049FC3E48B79E56CF5056BF5BEFEF21D36D25B8B895208204324923B6D545009249EC00AFC53FF008299DFA7ED33FB5DF85EEB40B6B8F11EA3F13755B4F0EF856C1A40D1496C5956EAE3E5F9D614B78AE2427A0F398F7A4EE6987F8F99F43EEAFF00822E7EC67E1FFD963F657835EB0315D6B1F11238357D4351CE5AEA2098B704FA0424FF00C0CD7CB9FF0005B0FF0082E07FC221A7CDF083E03788E4B8F19EAD2FF66DF6B7A4D84D7ED6EEEC6236B672460A7DA77E016C9DBCE06E149FF05ADFF82C50F83DA52FECD5FB3D5DDAEA5F1235189341D4E4D2616BA974257558E3B3B58D0156BA7048C1E225C93F360527EC25FF0004A8F09FFC128FF657BCFDA5BE305BB6B7F14BC19E149AFA1D2D252DA7681B632D1DBDBC44026E1D885676C9DF236DA6CDA2927ED2A75D91F9A5F127F65EBBF817168167A8B6A92FC5FF0015DEADBDCE9B7368239D6E2E1956081B9C990B491B36EC9C96DC49AFE85FE127873C39FF0004C9FF008279D8A6AA91C1A67C35F0C7DB75792D9543DE4D143BE771C80D248E1B92792C2BF1D3FE093BFB377897F6ACFDBB3E1AF8DFC7366F7776352BEF893E2B96E6760F04AACED68DB1BEEC7F69750A0718848ED5DA7FC1697F6F23FF00052AFDA0BC21F05FE0F41ACF8B3C33A0EB8F69336993EDB7F166AE54016E149025B7B601DE4620AE47B66836AD4E539A876D59F3D78A3C57F157FE0E0DFF008287D83C9657FA4694FE58D23C3E75137161E1BD3632565D5255C04F30AB9DA30599DC00D8AFA53FE0BEFF00B3E781FF0060EFD9FBF679F85BF0F6D7ECBA87883C771EBDAADEDC1F3EFF00575B18D3CC9E695B2C79954ED1851D8015FA67FF0004C9FF00826EF86BFE09E1F0624D32C649756F167885C5EF88359BA5433DCCD818854AA8C411F2117B64FAD7E3C7FC17BFF6A4B5FDB3BFE0A157BE14D192E3FB2FE01C326972EA501D812F2E021B98D893C83B150607F0352BA5A19C27CF3508FC2BF13234FF00DBD7E210FD977C67E02F0CEB4DE07F86167E28D496EB59B31BF52F1A4B7B8F2F4FB525730AEF2433A7CFCF0451E0BFF8216EA5F0BFF633F885FB437C566D5FE16C9A5DBB6AFF00D8C9629AB6A735B65599DD9A51E5021BEEFDE01493CF15F5F7FC1103FE099D6DF193C13E09F8BFE3B5865F0D786E599FC21E1E6B2D91CD324981A9CEC7FD63120ECE3A00727A57B57FC1CF7E3E97C25FF0498F14E85672EDD47C75AC699A05BC2A7E7B8125CAC8EA0647F044D9F6CD0DEBE46B3AC94B929EEF73E5EFF820A7ED99E11FD9D7C53F186C354B5D3BC25F0E2D3C2F078CE6D5E4896207CA71116623E792474917E5C672A00049AE6BFE0A3FFF00070D7C55F8AA9FF0897C11D2E5F86F6BADC9E459EADAAAEED6AEA060A5674B703FD189FE05259C860485EDF1EFC10F8716769A16B1F17F5FB1BED734ED02E2D3C25E12F0ADB1693FE126F10B6C78524807FAD862251C8E4653DABF5CFF00E093FF00F04541F057591F177E3BC561E2DF8C7A8CED796EACE27B3D0C38EA8A540F370C4679083853C669735FE10AAA8C66E73FB8FCE1FF0082767ED95FB48FC0BFDB6FC1BAC7C44F8EBE2A97C1B75AA45A7F8A6CFC70D3182E1259846C9142C374528DD956C000E33C57E827FC15F3FE0AD7AFF837C51AC7C2EF833E23D1B459FC35A70D4BC75E349089D3C3913E7CAB3806769BC9769C673B179C66BF283FE0A9DF1D358F8C1FF0529FDA134DBCBD69EC7C3DE296D1349B4781123B62BB518921412048A4E49ED9AFB4FF00E09DBFF04D3F0E7EDC9E3587C29AACB73A9FC29F87A62D4BC6D77146638FC75E26961460865CEE68EDD58E40E32CA2A6F2D8728526FDA3564721FF000479FF00824BDDFF00C144FC749F1A3E2B689E478421BD9A7B696E1DA4B8F1633B1CB658EE5404659FAB16C0E39AFDE3F08F8474DF01F86ACF48D1ECADF4ED334F8560B7B681424712018000152784FC29A7F823C3765A4E936905869BA742B6F6B6D026C8E08D4615540E800AD0C7C9F856871623112AB2D763F0DBFE0ED7D4ECF58FDA53F664D2215965D5AC8EABA848AA700DB130039EDC98DBF2AFA8FF00E0D90D12EAC7F62CF1B5FC9198ACB55F1C5EC9669B40015228637C1079F9D5B9AF8FFF00E0E24F17B7893FE0A12BE24D474F98F82FE10F823FB3C6A325BE2DDF55BD99DBC80E7EF308C2F03A6EAFD25FF82137C03D43E007FC131FE1ED86AF05CDA6ABAFC53788AEE09E6F31A17BD91A70A3818015978ED41A4B4A163EC007A7D28079A76DC1A4039A0E31A0FCB4A0F34A07CB401CD00267E4FC28279A5C7C9F85047340084FCD49BB069C47CD59BE2FBFFECAF0D5F4FE745014858AC92B6154E38CD007E71FFC157FF6DB9746B3F185E49E1AFED3F0D7C31BCB7D3F41B79A407FE12DF13DC22FD9E18A3192C90F9AA4E47DF1ED5EFBFF000484FD851FF62FFD9ADAF7C44BF68F8A1F11E7FF00848FC697ADF7A4BD972C205E784855BCB5FA13DEBE67FD9BFC08FF00F0504FF829C4B35EE9B7137C28FD9AE6F3EDAE9661F66D67C552842CCC06449E4464FD188CF35FA0DFB52FED25E18FD8FF00F67DF147C45F175DA59E83E16B17BC9D89C19481F246BFED3B6147B9A0DA7A7B88F8B7FE0BCDFB5BD88F879A6FC00F0D7893ECDE2FF1EDC47378962B2988B8D2FC3A997BB7908FF562601615C904F9848E0578C7FC1063F655B7FDA1BE3EEBBFB41EAB692AF853C0CEDE16F8716E5B100D8863BBBB45CF20710A9E980F5F265AC5F10FFE0A35F1F6EF57B6D2920F8ABFB48BAB1B52E7CBF07F85A3D881DDF83F242E18F5DD24AB5FBFFF00003E07787BF66DF831E19F02F856C61D3740F0BD845A7D9C112E02A228193EAC4E493DC92682E5EE42CB7675F9E68079A7639A4039A0E6303E277C41B1F851F0E35DF136A722C5A7E81A7CFA85C3B36D01228CB9E7F0AFE54BC35E20F157FC142BE233F859ED21BCB4F89BF110F8B75C7D3E73233DB5C4E923C79C0E638BF77824FDDE2BF6B3FE0E1EF8C3A8EA5F0DFC05F0334BBF9B4DB5F8B37B71378A2E62E1E2D0AC9164B840DFC265768A3F7DC6BE34FF008374BF66ED37C61FB5FF0088AF7C3765A75BF837C0E8361690CD3E4B92B8EBB43B83C93C88CE3A5075518A517367EE1FC32F02E97E10F0CE9BF60D3974E3169B6D631C5BB26DE089311C5F4504F4EF9AE9C9E6809B52948E683946BB840493800649CD7F3ABFF053CFDA26C7E38BFC6BF8B7A86A9ADC12F8D75A5F04782E3D3AE84739D274E9DA0508C0644771742E257C1E542F35FB8FFF00050CF88BE2BF851FB157C48D73C0B6173A9F8CADF46921D16DE0B7370E6EA52218DB60EA15A40C7D0293DABF9EE83E0EDFFED4BFB65FC25FD9C7C0DAAC6F6DA3DDA596A578B1897ECF05BAFF00A65D3851F23FCAE41231BE5514F4EA7450837792E87E9E7FC1BF9FB2B58C9FB3AE8BA8EB1E1C2344F015E98BC2D2EA36E04D777843BDC6A1CF24869DE24639E15883D2BF4E1784ACBF01F82EC3E1DF8434DD0B4B8841A7E936B1DADBC63F8511428CFA9E3935AA7E54FF00EBD2329CF9A573F227FE0BF1FB5C278C3F6A1F02FC1CD33CEB8B1F87769278EFC4B843E48BA747834D858E7A8DF34D8E795435F297FC1157F63F93F6D6FF0082826A5AEDDDB5BDA7847C237569E24D636C648D6823482CA06620AB0F3625919723E58C0C73547FE0A43E22D4FE1EEBDF1FBE2B789F4CB9D335AF88FE36BBB2D3FED3132E34CD3DDAC2C82AB80584BE54928C7504638AFD79FF00821EFECB93FECB7FF04DFF00871A7EB1A7A5978B35ED31359D6F302C53ACB71995217C727CA8DD6319E8169E86F750A77EE7D6E836F1403CD380F9A8039A4729E6DFB55FEC9DE04FDB53E0E6A5E02F88BA2AEB9E1BD536F9D079CF0C8A54860C92210C84103906A4FD95BF657F047EC61F0574CF87FF000F7493A3786749695E081AE1EE246791CBBBBC8E4BBB3331C9627B7A57A281F35281C50177B0C27E5A5634A47CB432D007F379FF000704F88F57F11FFC167FC43A35F9BEB4D274ED074DB9B68E51FB8B98D2DC1F315BD034936467820D7E9B7FC1B91FB31DFF00C2AFD90F58F895AFDB496BE21F8D1AA7F6DF932C5E5C96DA7C20C366847BAEF947B4C2BE8DFDB07FE097BF04BF6EDD52C6FF00E2578320D6B54D38225BDF457535ADC2C6AE1FCB2D1B2EE438C10D9E091DEBDDB43D0ED7C37A3DA69F630476B67630ADBC10C6BB5228D4055503B000014DBB9A732E4E5459079A407E534E039A00F969199F969FF05BCFF8226F8DBF6DEF1369FACFC279B4386FF5CD5D2FBC48BABDF3C11031C090C52A00ADBB684E9C77F5AFD09FD967F67BD1BF657F803E15F0268712C765E1CD3A1B32E3EF5C48A803C8C7BB330249F7AF42DBC7E34A47340EFA58613CD53F11F87ACBC59A2DD69BA95B4379637B13433432AEE5911810411F435788E6823E6A047E7BFF00C138359F845FB14FEDBFF143F66AF01FC1FF001CF812E9E61E235D76FB75F586BD1B00BBA39F93144A784476FEF60735FA0F9E3F1A410279A5B68DDD338E69D8E3F1A006B8DC983D31C8F5ACED07C1DA4784DA6FECBD2F4DD37ED2FE64DF65B6487CD6FEF36D0327DCD6991F2D047340084F34679A711CD18E6801A0F3480FCB4E039A00F9680133C7E3413F352E38FC6823E6A004279A09F9A948E6823E6A004079A33C7E34E039A4C71F8D00203D29F4D03814EA0047FBA69B8E3F1A73FDD34CCF1F8D00047CB4B8E6909F96973CD0000702803E6A40781403F350001735CFF8AB54D0BE16787B5EF13DF2D9E9B6F6D6CD7BA95E796AACF1C484E5DB193850719AE801E6BF34BFE0E63FDAB2FF00E1D7EC83A6FC27F0B5E1B6F14FC65D4D34191D01DD6D618F32E5C11D09550BFF000338E6A65B1515767C3BF0235AD6BFE0AD1FF053CD77E2AAE85358F87FC5375158E851152B249A6DB6E11C9212C7697059C803038F7AFDFAF047842D3C05E10D3B46B08C4569A75BA411A8F4518E7D4D7C05FF00042AFD87AC7E0FFC20D3BC4970CF24D691ADAD942E72602102962DDFE5238F7AFD1263CD38AB22EABD6C85239A08F9A909E6827E6A664291C1A31C7E3485BAD19E3F1A0008F96971C7E3484FCB4678FC680148E6803E6A09E6901F9A80140E68C7C9F85203CD19F93F0A005239A423E5A09E6827E5A005239AE57E377C66D03F67BF859ADF8C7C4F79F61D0F41B56BABA9421760A3B2A804B31380001C935D448E1064E001D6BF1A7FE0AB5FB4B78C3FE0A35FB7EE99FB337C28D5E29FC35A3C7B3599ED5FF727513C933BE08D9028C84E7730EA2937635A34F9DEBB1F287ED39FB5049FF052EFDAFB5AF8B3AF41ABC9E08F0138D3741D044C156FD5CB08E355C37EF59CA337032140238CD7D2DFF04C7FD9D7FE1AA7FE0A076B04B6FE67817E007917B7CBE52B5A5FEB72096400123E6F2E475C15E3FD187AD7967FC149BC01E17FD8C3C67E13F83DE0211369DF043C3A9AEEAB344ACF71E22F15EA9BADED5676196CAA079B69E02BAF1C57EAD7FC11F3F63293F633FD8F349B1D592393C63E2973ADF882E4677CD712F2AAC4F744217B739A68EBA95D287BABC8FAA57EED2E38FC6933F27E1547C4FE25B1F07F872FB55D4AE61B2D3F4E81EE6E6795C2A431A02CCC49E00001A0F3CF847FE0B5BFB606ADA77FC223FB35FC3F9613E3EF8E5E6DA6A574B380FE1ED0547FA6DD11D433C5E62213819DDDF15F9C1E2EFDA2A4D0FF006C2F146BDE1E9ACB40D1FE1378526F06E8FA943B8DC69F3DC26D9058463EF5D18C2C698E41C9A8BE31FEDA0FAD7C4BF88DFB455E4D9F1BFC6BBC97C27F0BEDEF23F9743F0D5AB9537AEA3A2B90F273F7803CF35F657FC111FF00E09AED7F7D67F167C6D610DCF86F4EDD3F82AD2EFF007926A7792E0DD6BD3A1C812CADB9625FE08F91F7A83B62BD9C2F2458FF0082187FC125BC41F0C7C573FC7AF8C5A6476BE2FD5E26FF008467449DC5C4FA35B49F31B9B9908DCF77203C9249018E7E635DB7FC15ABE2C47FB407ED1DE0DF80B6E7CDF0BF85638BC79F105C49FBA30A175D3EC645C7CDE64CBE7953DADD7D6BF427C4DE23B2F06F86EFF55D42E21B3D3F4CB692EAE679582A431A2966627B000135FCEDFED0FF00B4CEABE30FD9DBE2578DDE46B3F891FB50F889D74A856429259E9E3FD1AD228C91BB02D63DFD39320C75A0CE9CB9A7CD23D4751FDACAE3C0BF04FC7973E0D3FD95E27F8CB657579E20F115C46F0FFC213E10B377B6B25B6542009A64134CB923E69F90702BEC0FF82127FC13C749F00F8034BF8D1AC787D34CBCD6B4F58FC1DA55DDB0FB4787F4E70774E588DDE75C8C3B6790BB41E49AF9BFFE09B1FF0004C0D4FE33F8AB43F0B6BCB35A7847C1D2D86ABF112592677B8D7EF63803D8E8458923CB810A4B3AF426554EB9AFDAF8A24B6B74445544450AAA318500702834AF5D7C30EBB9E49FB7A7ED67A6FEC33FB25F8CFE27EA76B3DF43E19B2DF05AC4B96B9B8919628233E81A57404F61935FCEDFECF1FB396BDFB737ED5B67F0D74DBD375AB78F7C4337887C6FABD96FF2A50D3F9DA84CA71F2C6BBBC98F3FDE5C57DEBFF07457ED9B77AAE97E0BFD9DFC29AAAC5AA78A6F935AF112DB2891E0D2A00DC39FE1DF2EDC7AEC35EADFF06D1FEC8B69E05FD9D35BF8CD7D62135BF89378F69A5C8DD60D1ED5CC51051DBCC956490FA8D9E9537D76221EE53E7EACFD1FF87BE00D27E16F8174AF0E68365169DA3689691D9595B44B84862450AAA07D057E31FF00C1CD7FB43DF7C4BFDA4BE1AFC1FD21F4FBAD07C396B3789B5EBA85C3CBA55C9DF0C4AF8FB84A16C67FBD9E315FAFDFB477C78D07F660F80FE2BF883E27B8169A0F8474C9B52BC93FD945C85181D58E147BB0AFE69BC51F0F3C51FB4AFC5BD0EE62B796D3E2E7ED4BE2393ED76525C4930D36DAE656955DC1C9D905BB28278FBB542C32F7B99F43F44FFE0DB8FD8A2DF5FD1AEFE346ACB34BA5585CDCE99E17B29A22213392A2EB51504618BED48D5C723CB93D6BF567E307C46D3BE0F7C2CF1078A756BAB6B2D3BC3FA7CD7F3CD71208E3458D0B72C7819C01F8D41F047E13693F027E11F87FC21A25A5B59699E1EB08ACA18E08C227C8A016C7AB1C93EE4D7E67FF00C1C91FB5FDA789F40D0BF65CF0E6A3A945E27F1F08F59D7A4D3D4482CF4A8240C619C750272A71839FDD8C8C351A221BF6952E7E536B3E07D53E37FC58B6F16DA69DAAEA7F11BF680F124FABC7A7F5FB21BBB8DB046FC6EC843BC93D81AFE9B3F64DFD9B344FD943E04685E0AD0E12B069D0EFB8919B73DCDCBE1A5958E392CE4FE18AFC95FF00837B7F64CBDF8DBFB5E78ABE34EBF6AB3F877E1EA3685E1C9496026D4194ACD200783E5427667B339F4AFDB15EB4ADADCD712ECF916C2A8E2B90F8DFF1B741FD9FBE1EDC788FC4370D0D94324702246BBE5B896460A91A2F56624F41D813DAB9AFDA3BF6D9F859FB234FA445F11FC63A67855B5DF30D9FDAD5C89163DBBD895521146E5059B032C39AFC85FDB67FE0A5B77FF0507FDB85ECFC27771FFC33FF00C13999BFB5E06263F126AEF1F97BE3603E658C3BA201C1273DC5331A549CE56E8717FF000556F1F7887FE0AB3FB7D7833E0C7854DD43A35FEB8218A0E5629955819EFDC701963895829F52077AFDF1F09F8760F0878534DD26D46DB5D2ED63B48463A2468117F415F0CFFC124BFE09A177F017C6FE2AF8C1F1034BB38FC73E2598DAE81079BE73E83A3E176C79E8B2CA46F7C0E3819EB5F7A8FBB492B3B9B626A26A34E3D07639A00E68CF3480F34CE4003E5A5039A407E5A01E680171F27E1411CD267E4FC28279A00523E6AFCEBFF82B47FC1427E1DE83FB4D7C37FD9E2F2EB5CD4FC5BE26BE86F469DA367314A4916E2E48E3CB639623D813C57E8993CD7F3CBF0CBF675F1BF883FE0E39F1CDD6A77371E21D4347F88D6FA83EB52B6C8F4CD3951A5D9920851E5BAC41075C76A0DA8C6ECFDC5FD8FBF661F0D7EC89F04E0F0E787AC574E8A79E6D5350776CBCF753B192591DBB9C9C64F602BF247FE0A9FF00B69CBFF0538FDA72EBE16F87375D7C0FF849ABC3FDB52DAB799FF09C6B5C79365163878D1F82BCE588F5AF5AFF0082C8FF00C155759F8CFE33FF00865BFD9DB5198F8CF5F9041E2BF13DBA6EB7F0FD893892346EF2B7DDE3D481C9AF55FF0082627FC11B349FD9FF004AF086A7E20B18AD6C3C1AC2F346D2872F777D8E751BB273BA4249644CE14904F20602E0947F7933D5FF00E0995FF04F387F6766B8F89BE2AB50BF12BC5DA641672DBE13CBF0ED90DAE2C22DA31C3005DBB951D80AFAF80E0520E17F1A01E05073CA4E4EEC5C73401CD19E6901E6811F8F7FF05FDF86FE2CF0F7897E257C54D574AD51F4387C33A7F843C2AF643ED12334B234B72EA89964679A4893A027CACD7D25FF0006F2FEC1B2FEC63FB07E93A9F883469B46F1F7C4609ACEBB6F719F3ACE31B96D2D883CAF970904A9E8D23E6BEEDB9B286FD15678629955838122860186083CF7152AD06B2AADC391011F2D291CD213F2D04F341903A09010464118208EB5E47F053F60DF843FB3B7C5AF13F8EBC19E02D0740F16F8C1B3AAEA76D0627B80704A83FC0A480C557009E4E4D7AE13F35283CD03526B600B83498CAD2E79A407E5A047937ED0FF00B0C7C2AFDAB75BF0EEA1F103C1BA6F8967F0BEA31EA9602E4BF96278C108D22290B285DC48570CB9E715EAF0C0B0448A8A155400001C01E829D9E3F1A01E050176281F35201CD00FCD403CD00281F350071480FCD4A0F1400847CB4A473484FCB413CD00291F3518E6909F9A973CD0000734807CB403CD00FCB400B8E3F1A08E6933C7E34A4F340084734A47CD484F3413F3500281F3518E3F1A407E6A33C7E340011F2D291CD213F2D04F3400A4734639A09E68CF340001CD201F2D00F3403F2D002E38FC6823E6A4CF1F8D04FCD400A473411F35213CD04FCD400A0734638FC68079A4CF1F8D0028ED4FA60ED4FA0047FBA69B9E3F1A71E9476FC680184FCB4B9E694FDDA5EF400D07814679ACEF17F8CB4AF00786AEF58D6F50B3D274AD3A269EEAF2EE65861B78D4659999880001DCD7E3FF00FC1473FE0E6087C57757DF0DBF65213EBBE2769BECF71E35934FFB46976838DDF654218DC49C90095D83AFCD41518B93B23F5B3E27FC63F0AFC13F0C4FAD78BFC47A1F8674AB75DD25DEA97D1DA42A3FDE7602BF9DCF8FDFB6F785FF006FBFF82ADF8C7C71A8F8A5AE3E1EF82A78B44F0D7CCC6C4429C4D76848DBFBC7DDC8C9DB8ED5C07C75FD82BE2178B2CF43F88FFB44789BC65E20D7BC5F7320D2EC3C5378C24BE62A1E5782CC92228864606D51C2F15F6EFF00C13AFF00E08FDAAFC49F84979AA6907C3DE0A9618B1A75C5FE8C9A97EF07281A266504773F854DB5B9D0A9F26ECFD4BFD8735DF0AEB7FB35F87A5F086AF65AEE982321EF2D576A4B29396F4E9903F0AF5E635FCFFF00857F6F0FDB37FE09C7FB575F782BE265B45AB9B585A4D3E08AD162D1F59B5563896DCA639C7057820D7ED77EC7DFB5169BFB5A7C18D3FC516510B3B995765E5996CB5ACA3A8F5C7719AA30941AD4F53279AE2FF681FDA1FC19FB2DFC2ED4FC67E3DF10E9BE1AF0E69319927BBBD9C46A4E0E11727E673D028C935D85FDDA585ABCD23048E252EEC7A281C935FCF67FC1527F6CCD4FFE0AD1FB6FC9E10F0DDC9BCF82FF00093555B4B7B4109787C4BAC0DE924F91F7923E553B704F7A57D6C108DD9F63FECF3FF0743784BE3DFC688F48FF008551E2FD0FC1B7D7C2D2CBC41793A06910B05495A0DBC062CB801C9C1F5E2BF532D2ED2F6D239A33BA39543A9F507915F10FEC35FF000478F873E03F875A3788FC73E19B3D6BC793182FD6E2E037FC4ADA3E6248D33B415CE4F1C9FA57DADE1AD0C786BC3F69602E6EAEC5A4622135CBEF964C71963C64D30A9CB7B44B64FCB4B9E3F1A53F7697B7E3410349E6807E6A71EB40FBD400D079A33F27E14E1D68FE0FC2801A4F3484FCB4F3D6B13E237C43D17E13781354F12F88F52B3D1F42D12D9EEEF6F6EA511C36F120CB3331E00A00F8CBFE0B6FFF000530B4FD8B7E0E43E0DF0FCD6975F12FE205BCD0E9D632872B0DA0DA93CCEC9F70E1F0849196CE3A1AF0BFF8279FC2DD1FFE0941FF0004FDF18FED2DF16742B1D33C537BA62DE2DBD8C824B8BB84A816C9F3633713338C8C9EBD7AD7CF1FB14FC2DD6BFE0B39FF000549F1C7C52F155AEABA9F80B4CD59920927B709A7AE9304CC2CAD5564EA65552EDB01CE7271915EB5FF00070A7ED1B0EB9F1FFC05F07238E09FE1F7C2FD25BE23F8CEC20B6594CED01F2B4CB229D30F21E17BE476145ACEE75FC3154D7CCF0AFF008275FECEDABFEDAFFF000512F0B47E385B9BFD574C924F899F11AE238F6C126AF74ADF67B17EA156088C48A99F972DDFAFEFD469E54600C00380076AF8D7FE0877FB37DF7C19FD8F878A3C436563078B3E28DF49E29D45E38B130171868E3918F2768270060007A75AFB3BB7E3492B18D66B9AC86E7E4FC2BF237FE0E6FF00DBDEFB48D37C29FB307836E9D75BF89C05DF8A9E15264834656398430E14CCC854E7F841FEF57E977ED6BFB49E87FB207ECD9E33F897E2370BA3F8374A9B5199370533945F92253FDE76DAA3DD857F33DF0967F88BFB6A7ED1ADF132FEF9EEFE31FED09AEAD8683692A34B0E8B64CD98CE71F245142A4E3A623FAD31D18DE5767D8BFF0004E2FD88754FF8287FED7D05EF8A6C22B2F863F0BAC6D6CAEECE0880B5BB2813C9D3578FB9B5433E0F2383D6BF7674DD3E1D26CA1B5B68A2B7B6B741145146A152350000A00E0003B57997EC5BFB28E89FB187ECF3A0781345DD3FF674464BEBD93066D46EE425A69E46C0CB3393F4181DABD587DEA09A93E67A6C7C41FF0005E6F8BA740FD8E20F86D637AD65ADFC67D5E0F0C44E037EEEC4309F5090B0FBA16D239793D7701DEBF243E1378DE4F8DBFB4F6A5F11B43D06F75E3F0E9BFE114F859A3DA81241ACF896E0058C85619F2ADA15F3188F9408FAD7D49FF071E7ED3ED6BFB4669BA7F87AE126D57E1AF862E6D6339F312DF53D5DE241841CF991DA42E7E938AF4BFF008373BFE09EF6BE13F85DA67C55F115879CF6AB2C3E148E56DE90B484ADD5F6DED3B9063DC4642A9038341AC6D185CFBEFF00611FD9720FD90BF669D0FC28D752EA7AF4C5F55F116A931CCDABEAB707CCBBB9739E4B48481E8AAA3A0AD3FDAC7F6A5D0BF64BF84B7BE2AD744935AD880F2C7130DF1C5901E66C9E1101CB1EC2BD409C2D7E077FC162FE33DEFC7AFF00829DFC56F85FE1FBCD662D7EF743D17C1D6EF25C1163656120375A94AA84801CAB85C8EBB6832A71729687CCDAB6A1E27FF8288FED73E3AF8AA23B85D53E35F8A2D3C15E05B3DE6536D66F208CCCBD711C502C929ED904D7F4D1F09BE1AE95F06BE19E81E13D0ED61B2D1FC3BA7C1A75A431285548E2408381F4C9F726BF21FF00E0833FB28E8BF157F6CBF10FC44D374FB987C03F042DDFC31E16769B74179A8CC805C4C17A1314242641E0CC7D2BF669B81F9505E21FBDCBD8FC80FF0083943F6C6BEF167C51F861FB2B786752F2FF00E135906BBE338A152D2BE9F13AB5BDB1EDB257472C3D107AD5CFF8211FECF107C73FDB0BE237C75BD8525D23E1DEFF0000784C38242CE151EF6E133C700A4408FF006C533F6EEFF8249FED05E3BFF8293FC44F8E3E195F0BF8CB4DD73C3D1DA786EDA6BB16B73A35C430A43144CB20C14DCF24B956E70720122BF44BFE09FDFB2558FEC43FB24783BE1CDA3417173A2D9EFD4EF238C27F68DF484C97139E392F2331E7B6281B6A34ECBA9DA7C7BF8D9A17ECE1F053C51E3CF13DDAD8E81E12D366D4EFA63FC31C4858803BB1C600EE4815FCDB7C29F1178C7F6B9F8B5E26F8BB3A85F897FB44F89E2D1FC302E3322E9B6F3CA52DD028C111C502EF38EC9CD7EC37FC1C6DF05BE297ED0BFF0004D4D5FC25F0B74DD4359B9D5359B15D7EC74F88497775A52B33CCB18CE490EB0920724022BC53FE08FDFF0004C7F167847F692F0EF8E3C77E15BBF0B787BE14F87974FF000C585FC69E66A3A85D4789AF88049531439886403991A82E845C69CAAE87E817EC33FB25E8FF00B0EFECB7E12F867A2CBF6A87C3B69B6E6F5976BEA374EC649EE1867EF3C8CCDD78C81DABD6C1F9A9DFC540FBD41CADDDDCF9FF00FE0A3FFB09DA7FC1427F664D6FE1E4BAFBF84A6D655606D5EDEC63BAB88A0DC0C912872301C0C1208C707B5617EC83FF0004A0F851FB1F7C3FD2B41D27498F5687498D1626BD850A97503F78500C1624672735F4E8E947F07E140D4E4959318A36AE2827E5A7F6FC690FDDA09133CD00F34EEF40EB400C07E5A5079A51F769475A006E7E4FC28279A77F07E141EB400D27E6AFCE9FF829A7EC69F1D3C7DF15AE344FD9EBC3BA07872D7E2991378D3E205E6A318B9D276811158603F396318182B91EE2BF460FDEA4DBF375A0A8CDC5DD1F21FF00C1397FE08EBF0CFF00E09F9E125FB05A9D77C5776E2E753D6AF9FCEB8BEB9E732B31EA724E3B0AFAE9784A78E9483EED0129B96E2678FC6807814EEDF8D03A0A091B9E68079A777A075A00629E6941E6957AD28EB400C27E5A5279A53F7694F5A00693F3500F34E3F7A8CE0FE3400DCF3480FCB4E691539240E3BD7897ED71FF000517F82FFB0D78367D67E25FC40F0FF87E38B684B4372B35F4E490008EDD3323FE0BC5007B6678FC6807815E31FB17FF00C141FE11FF00C141BC17A8EBDF097C6367E2CB0D1EE16DAFC471490CB67232EE5578E4556191D0E307079E2BDA4741400D07E6A4079A78FBD483AD00203F3500F14E1F7A81D280184FCB4A4F34A7EED29EB400D27E6A33CD6078EBE2CF863E18DDE930F88BC41A3E8736BD762C74D4BEBB4B737F70412228B711BDC81F74735BF0C9E6C6ADB59370CED6EA2800079A407E5A78EB483EED002678FC68279A776FC683D680184F34A4FCD4A7AD29FBD400D07E6A33C7E35CCD87C65F0CEA5F15EFFC1116AD0378AB4CB28B50B8D3CAB2C890484AA38246D604A9E8491DF1915D476FC680184FCB4A4F34A7EED29EB400D279A33CD38F5A3BD00341E6901F969E3AD20FBB40099E3F1A09F9A9DDBF1A0FDEA00693CD04FCD4E3D683F7A801A0F34678FC69C3AD1DBF1A00683D29F483A0A5A0046FBA69B9E3F1A7372A69BB78FC680027E5AF39FDAAFF006A5F0A7EC75F05359F1E78CAEE5B6D1B4581A6710C6649A623A2228EA49C0F4E7935D0FC5CF8BBE1BF815F0F752F1478B759D3B40D074984CD757B7D3AC30C4BEECD81CD7E237C72F1B7C4EFF83893F6B36F0DFC34967D17F67CF0FDCC6B7D7F75BE3FEDB0BCB385FF009E39C6071BB8352DEB646908A7ABD8F1CF8F7FB4EFED0BFF0007007C7F6D0340FF00849FC1DF0B3779565E19D3EE0A25EC7C9F32EA45004A4F19FE15C903A66BF58FFE09B5FF00046DF007EC11E0F8B58D5ED34BD5BC4F0DBEF799A01F65D380193B37649381CB93F80AF73FD88FF612F057EC35F0BED741F0BD9446EBCB0B777EF1812DC1C73F45CF415F34FF00C1C4BFB735CFECA1FB14CDE17F0CCD6B2F8FFE2B4CDE1BD1ED1893288A45C5CCEAAA41CC7113824800B0CFA53BD916E77F763B1F03EB7E38B9FF0082B5FF00C15CB55F18FF00684F73E05F06CE7C37E16B059F7C12468E04F70BD002F203EE401E95FBB9F0DBC1369F0EBC0DA768F650A410D940B1ED418C90064F4AFCD4FF00837FBF618B3F84DF0FB4BD57ECD07D9749B6510B3265DE66192C4E3AF25BF115FA9017E5A168AC4549743E2BFF0082F47ECDB73F1D3FE09F1E30D57424B94F17F81AD9B5FD226B503CFDD061E540704E1E2575238CE6BE7FFF00837C7E2ADC7C4F93FB6EC6F3FE255ADE8E9F68B777DA1E55C3091571CB7241F6AFD43F17F8762F167862FF004C9D23920D42DE4B691644DCACAEA54823B8209AFC11FF008272FC581FF04ACFDAA7C65F0D35B95B51B3F00F886F208FC86D8D3D93C9218D88200FBB9E807238A9BDA5665D34E51B23F40FFE0BD1FB735E7C13F81B6DF083C09A904F8AFF00172392C2CC5BCC04FA2E9D822E6FDC755555DCA84E32DD3A1AF9BFFE082DFF0004FED1F55BB83C402C9E2F09F838082D5D86D7D56F839DD33F7EAA4FFF00AEBCDEFB4AF12FFC1427F6B8B6F8837F609A7F88FE346ABFF08F7866DDB89B44F0C69FE6C8F21C9FBF312492BC7CDED5FB3FFB3DFC0AD13F672F855A5F85340B54B6B2B04CB63ACB2372EEC7B92734D6AEE135C91B753B5E80D19E3F1A0AF068DBC7E3546004FCB4678FC682BF2D1B78FC680149E6901F9A94AF34817E6A0001E68CFC9F850179A36FC9F85000CD8AFCB2FF008385BF6F2CE9B61FB32F8474ED3F5FF1178EA28EEFC48F70DBA2D1AC15F7460807226792352A08E83383915FA31FB45FC79F0EFECC3F043C4DE3FF0015DEC761E1FF000AD849A85E4CE40F9506428F56638503B922BF17BFE08AFF00B365E7FC145FF6DAF15FED11E36B4B9BC5D4758975FBE69E12B6E5998AD8D92E490C21891091DBE5EE050ACDD99B5256F7DEC7E847ECEBA0F85FFE093BFF0004C6D63C6FAC88208F47D05FC49A90DFE59B897C9DD1400B60EF662A83FDA7AFC94FD953E1778D3FE0A11FB5E7876C3C49FDA1FDB7F1C35C1F117C72C267B8FEC6D0A373269FA5166C958C019504AFDE5E2BEB3FF83823F6ABD1BF699F8CFE1EFD97B4B9E7874BF05DD5BF8FBE256ABE76CB2B2D36DA39245B27DA72F249953B0F1931D7D01FF0404FD9F2FAD3E0AEBBF1C3C416FF0063D77E325D1BFB5B3F9BFD034D46296D110C063E455E07000145EFA957B7BEF73F402C2C62D2EC22B7B78D61820458E38D0615140C0007A0153678FC680BF2D7CBDFF0580FDBD21FF8277FEC3DE28F1ADB1B79FC597AA348F0C58B3AF997BA8CE7644150905F667790BCE14D060B567E6E7FC1C27FB6D58FED4FFB47C7FB3FDACB249F0BFE132AF88FE24DE5B4C556F2ED549B6D3770EE0ED2C064EE6C632B5F507FC10BFF00E09D775E0BF0DC1F1F3E22E96967E36F165A6CF0FE86F0AF97E12D2CE44491F1912C89CB1E0857DBEB5F9D5FF04CFF00D84B5AFDA27F6B5F077C36BDB84D68E917517C4AF8C1AADF48C65BDBE9242F159A9C6261BF6A9C9C7CAE7AE2BFA368E116D0224680226142A800281E941D153DC8F22DC793F3551F12F88ECFC23A05EEA9A8DD416361A7C2F7171713C8238A18D46E66663800000E49ABC57E6AFCF0FF0083907E21F8917F64BF08FC2DF0C5D496537C66F1443A06AD71167CC87498E27B8BC230380523556391C37BD073A57763F26FC5DE22F107EDBBF1D6C218F483A978E7E3878B2F759D3EC226F28C093B18EDD9A423E58A2B48E37C9ED9C7515FD15FEC8BFB3CD8FECA5FB34782FE1EE9F27DA21F0AE991D9BDC15C1B99402D2CA47ABC8CCDF8D7E567FC1BBFFB3668DF173F6D0F8B1F19C7DB6E74BF87A61F07785E29DBF73652187FD24C63186C45E526ECE46E6F5AFD9B2BF2D06B5649FBA8CCF1A78A2DFC13E0ED5759BC9162B4D26D25BC99D8E02A4685D89FC01AFE637E14FC40F12FED57F19BE267C77D3B497D57E20FC65F10C9E1DF01E94158B451B49E52C81BB205EADD142B735FD3CF88FC3B67E2DF0F5EE97A8DBC777A7EA50496B730483E59A2752AEA7D88247E35E1BF077FE098FF0006BE017C4BF0F78ABC29E138F49BFF000A69B2697A3C31DC39B5D3E2936EF68E2276F9842805CE4E09E79340519A8B6D97FF00E09D3FB1ED87EC2FFB23784BE1EDAF9536A1616E6EB59BB45C7DBF5198F997331C0E7323103FD9551DABDC3A9A36F346DE68326EEEEC681F2D385205F96942F1408681F2D29183405F9682BCD0004FCD403F35057E6A02FCD400A0F1499F93F0A50BC526DF93F0A0033C7E3413F2D1B78FC682BF2D002E79A4079A5DBCD205E680007E5A01E680BF2D0179A0033F27E1413CD1B7E4FC282BCD0004FCD403F35057E6A40DF3500381E2901F96803151CF711DA42CF2BA468064B31000A00933C7E3403C0AF04F8C1FF054AFD9CBE02A4E3C59F1B3E1A69135B9915EDDF5FB792E0327DE41123172C3FBB8CE78C57C2FFB467FC1DF5FB3BFC34BE8ACFE1E683E34F8AD72DC34D6569FD9D688DD86F9C0624F3D13B503B37A1FAC99E6901C1AFC03F10FFC1D2FFB547ED0704FFF000A7BF678D0B4EB75B9F2D2EAF4DD6ACE10E400553CA50DC649E40C1FAD79FF00C4AFF8299FFC145FE268BA5D7FE227C37F835A6C881093269FA64A01EA63F38C92E473922835F613B5EC7F47325C2C1197770AAA32598E001F5AF1EF8CDFF050EF817FB3D46C7C69F173E1F7879C004C375AE5B89B04E33E5862FD7DABF9B2D2BE0AFC5DF8CF713CDE25FDACBE24F8FEE754536F258781975BF1235CEE3F3445A35108FA6715E91F057FE08137BAF6B568FA6FECFDF1D7C5AE58B493F8A64B2F0A5A107A026691A5E9D488DB93415EC3F999FAC3F187FE0E80FD8F3E12B5C4307C45BDF17DDDBE4793E1FD1EE2EC4840CFCB21558CFD7762BE69F1AFFC1E81F0AA0D4A7B6F0A7C18F89DE2320ECB79269ADAD1666EC0A83230E7DAB07E19FF00C1B81E3D82F04F63F0CBF674F87F0DE40CB2BEADA96A9E27BD89587313A2AC10B13D0957C71DEBEA6F853FF040BFF844F47786EFE28C5E15796045F2BE1FF8374DD1163900C16F3674B995F9C632474F7A09E582DD9F1678F3FE0E90FDA8FE2F69AA3E157ECB92E86CAE525BAD596EB51073F776A88E019FC48AE07C5FFF00052DFF008298FC59091EA7AFF80FE10D8790D2CB3BDB69F63819EAE6E1A475C7FB2457EA5781FF00E082DF09B4C3BBC61E2CF8BFF12A4751E6AEBFE31BA4B791F39DE21B630A2F418006063A57ADFC36FF008252FECE9F09BC40DAB68DF07BC0FF00DACCC58DF5E69EB7F7209E78927DEC3D803C5009D347F3E1E35F0E7C77FDA9D1748F895FB70CFA8C92C8524D2744BBBCD59771E8852C70A73D8115DCFC1BFF00820B68DE2DD4E3B9B6D13F688F8B1A8DC5BB7FA6DC7859740B0F314F18B8D45E37033DF6B6474CD7F47BE11F86BE1EF014974743D0747D19AF5C4B706CACA3B7370E06033EC51B8E00193DAB6C2FCB40BDA24FDD47C8BFF049DFF82557823FE09B9F0E751B9D13459B4BF1878CE381FC42EFAABDFA9688308E356215380C725506493D78AFAE81E051B78FC680BC0A0CE527277600FCD403CD017E6A02F340801F9A941E2902FCD4A178A00427E5A09E682BF2D0579A00F0BFF82837EC29A17EDFFF000317C1FAB5F49A2DED9EA965AC699AC43009AE34BB8B69D6512461B03715564CFA377C57B858DBB59D9C3117690C51842E7AB60019A90AFCD4BB79A004079A01F9680BCD017E5A0033C7E34A4F349B78FC694AF340084F3413F350579A0AFCD4011B59C525D898C4866518572BF301F5C5499E3F1A02FCD46DE3F1A0009F968279A0AFCB415E680149E68CF3415E68DBCD00203CD00FCB405E680BF2D0019E3F1A09F9A8DBC7E3415F9A800279A09F9A82BCD057E6A005079A4CF1F8D285E6936F1F8D0078FF00C28FDA33C61E38FDA1FC5DE0CD67E14F897C35A0F87F61D37C533DD432D86B81BA8451874618E7208F7AF63A8D23DA7EA7352525A008C7E5AE6BE2FF00C5CF0FFC09F867ACF8BBC53A9DAE91E1FD06D9EEEF6EEE240890C6BC9E4F7EC07726BA57FBA6BF11BFE0E6FF00DADB5FF8BFFB467C3CFD94744BB7D3BC35AF5BA788FC5732C596BE89253E4C0A73F74189D881D4EDA771A388FDA43C1DF16BFE0E05FDA7740D4E2B6D7342F80B6FB62D27469E59238AF3E73FE9971129C6E65E577741F5AFD9BFD8F7F649F0B7EC67F0634AF07F862CE1821B38112799570D70EA00C9F6F415C47FC132FE03DB7C13FD98343F25E7DFAA5B472B45226CF24282A001D7A7BF4C57D159E6A527BB2A53BAB2D88EF6F63B0B369A5709144BBDD89C0502BF9E8F8CFF00156F3FE0ADFF00F0576D5BC49661EFFC07E04793C2DE1B575F97746E04F731F500C8D95CE338503B57E9D7FC1797FE0A0B73FB0D7EC7135A787A2175E3DF89171FF08CF86A3C8FDD5CCC8D99981046D4504F3ED5F3D7FC1BF7FF0004F93E10F87DA6789F5DB78A28F4C08EB079617ED171F7BCC6F5F9F2D9F5C50B595CA8592BB3F4BFF676F83D63F033E14695E1FB28A2885B440CA5463739EB9F5C703F0AEE037CB4D5E2807E5AA321C5B9AFE7EBFE0BB2FA67C16FF82BED8A0B69A49BE206850DE3C71C6BB6431C863E5BEF1FB8FF009D7F4084F35F817FF0579F09DFFC54FF0082D243AB3CA9709E15D32CF4FB7B5DBE618D2532B67246149909CE3B62B39DEEAC7461EF776FEB53F47FFE096BF01EE7C4320F8B5AFC304264D320D13C31A7AC01574BB28D02BB82403BA46C938E31F535F6B16F9AB87FD9BFC1927C3DF811E13D1E67124D65A6C2B230000DC5431E9EE6BB727E6AB57B6A633936EEC52DC1AF8D7F698FF82C6F85BE15FED23FF0A53C0FE1DD4FC7FF00152E625FB359C122436093B7DD8E59B25971C166D9B40E376EE2BD9BF6F8F8C5AE7C0AFD93FC63E23F0E59DC5E6B16B65225BB43B49B42CA57CF39E311FDEC77C62BF3EFFE0DFF00FF00826A41F087C73A8FC5DF156AF6FE34F12F8B6D1B51B4D66FDF7DFCCF2B82EEA09388C020641EAFDA95D737297187B9CECFD5CF0FDDDD5EF87AC66BF812D6FA5B747B9851F72C321505941EE01C8CFB55CDDC7E34D27E5A5CF1F8D5190E2DCD206F9A909E6807E6A0050DCD1BBE4FC2901E6B84FDA63E3C693FB32FC04F15F8EF5BB8B5B7D3FC33A64D7CE6E6710A4AC884A47BCF00BB00A3DD87149B495D8D26DD91F96FFF000711FEDC6DF187C51A7FECB5E01B5BFBED76EEF2CEE7C47A9003FB3AC379CC16929FE267C82571C7CBCE4D7DCDF0F744F05FFC121BFE09D9717FAFDEC56FA3F817487D4B58BB8E154375384E42A0C02CCDB515475E2BF353FE081DFB2FEA1FB5CFED35E23F8C9E3DB692EAFECB5F9BC45A938B847B69B509897B788607CFE4A90DDB040E38C57A77FC1C77FB46D87C65F885E01FD9CEC3C4B6D6DA2D94ADE34F89B1C319924B2D2AD156582294FDD0257E8B9C93B38F54B45A9B3FE447C6DFB0AFC01D4BF6EAF8EA22D6D6493C5BFB49F8A5BC6FE30965CC8F63E15867F392CD8641412908BFEE9502BFA31F05F8434DF87DE14D3B43D22D63B1D2F49B64B4B4B78FEEC3120DAAA3E800AF843FE082FF00B305F785FE0F6BDF18BC55A1FF0063789BE285E19F4BB29A3C4BA2E869B56CED57FBA9B406C0E3A57E80E79AA26AC93765D06CF7296B6CF248CA888A59998E02803249AFE767FE0A5BFB6DCDFB737EDF7E26F1E42C35CF84BF00EFA3F0DF82AC6DDB29AFF88A565432AA9C877129215BA0544F535FA0DFF070E7FC143758F805F07745F81DF0E24964F8B9F1C8B693A798705B4BB16212E2E5BB8F958AA9FF0078F6AF12FF008224FF00C1317C3DAA7C53D275E9EC63D4BE1EFC138DB4FD30DE5B7CBAFF008964DAF73A8004FCCB6E088D18E7E676C72B493B846365CCCFB17FE08A9FF04ECB8FD83FF6637B9F16882F3E2A78F6E5F5BF14DF894CCCB2484B476CAE79D912903038DDB8D7D97BB8FC69AA36A7E14B9E3F1A6672936EEC52DF3570FF00B407ECEFE14FDA67E1F5FF0086FC57602E6D2FED66B41710BF93796892A8590C130F9E262382548E95DB93F3500FCD40BD0F33FD92BF642F007EC43F07ED7C0BF0DF451A1F876D6692E7CA6B892E259A690E5E592490967663D4935E9A5BE5A4079A427E5A0076EE3F1A0B7CB499E3F1A427E5A007EEE68DDCD373CD19E6801437CB4A1B8A603F2D283C500286F9682DCD341F96949E68014B7CD406F9A909F9A807E6A00706E29377C9F85203C519F93F0A005DDC7E3416F96933C7E3484FCB400FDDCD206E6933CD00F3400A1BE5A03734D07E5A5079A005DDF27E1416E6933F27E1413CD0055D7EDAE2FB44BC86D2616F77340E904A467CA72A42B7E0707F0AFE78BFE09E5FB777ED59FB187FC14FFC77F07BE27FC42D4BC67F67BABC8A4D375F9A5B98269372345736AED860A54F0AA76F5E38AFE89C9F9AB87F8A5FB36780FE355DDBDC789FC2BA26AD7D66DBEDAF65B54FB5DB36301A3987CEA704F43DE834A6E29FBDB1FCEFFF00C145FF00E0AF7FB4EFC54FDA0BC6BE0A83E34DB7C3AF0F7872E156DE1F0B46B6B3C88CA7724B30632EE53C7DE039E95F3E7863F66FFDA3BF6AEB367B2BEFDA7FE27E9573884CE2E3519F4F9C12432AC9211130F5C1C57F553E1AFD9E7C0BE12B411587847C3B07F7A4FECF89A590FABB90598FB924D7596B67159DB88E2448A35180A80281F402A3DE35F6B4D6D13F9B4FD973FE0DAFF8D9E2FD5ED752D5BE0DF84349D36226554F177891A192E723A4896E93480FB1C77E95FA0BFB3DFF00C1BC979E0AD3F4C6D4AFFE0C7831A32EF710F867C0A351BB88B03811DDEA1348A1813F78DBF6E82BF52C0C2F5EF4A0F02AC875E4F6D0F8FB4FFF0082267C28BCB5FB3F89BC45F153C5D6A635436977E2DB8B0B45C75DB0D8FD9D003CE4608E7A57A8FC25FF0082687ECFDF03AEADAE7C2FF083E1FE9B7D66498AF7FB1A09AED49EADE748AD213EFBB35EE19E68079A0CDCE4F764163A741A6C423B78608100E16340A3F2153AA806914F34A0F3412296F9682DCD349F96949E68014B7CD4A1B9A693F3500F3400EDDCD206F96933CD203F2D003B771F8D01B81499E3F1A01E0500286F9A80DCD203F35203CD003837CD4A1B8A683F3500F1400A5BE5A0B734D27E5A5279A0052DF352EEE69A4FCD4679A0050DCD01BE5A4079A407E5A0076EE3F1A52DCD373C7E3413CD00296E682DF35349E6949F9A801437CD46EE3F1A407E6A33C7E3400A5BE5A0B734D27E5A5279A00716E68DDCD349E68CF3400A1B9A037CB480F3480FCB400EDDC7E3416F9A933C7E3413F3500296E682DF35213CD04FCD400E0DCD26EE3F1A4079A33C7E3400A0F029D4C07A53E8010F4AF803FE0A9FFF0004607FDB57E39E85F18FC1DE2A7F0EFC40F09691369B1D9496EAF69AE47B8C91C3239E62F98B0DE15B86E9C57DFEFF0074D371C7E349AB8D3B1F9FFF00B317FC353FECFF00F123C15A078DE31AA78244C20D4E5B4B537821561B5023A02C114951920772702BEFDD42F63D3ACE59E5758E3890BB331C0000CD39B84AF8A3FE0BBBFB702FEC77FB16DD5A6952093C6FF10AE93C3BE1FB443FBD7966043CA0641DB1AE589FA54BD0AD64F43F357F685F8B57FF00F055AFF828F78ABC5164757D43C21F0DAFD7C25E0CD3430F2350D4158ACF70149C2B6E246EFEE8EB5FB85FB2E7C1D8FE067C11D07C3BE584B9B5B656BAC36EFDEB72C33DC03C0FA57E6DFF00C1063F63EB3D12F6CEEA2D3241A57C3C88235EDC264EABA9DC279934D93F7882C3E6EC78AFD641F7A9C6296C55493F8470EB483EED201CD201F2D5191C87ED0BF1025F859F04BC53E21B7F2FED5A469771756E2438532AC64A027B0DC057F3EFFB18F8EFC67FB57786745F1B78A1EF357F1AF8875E8E0BCBBDBB9E60D727014F65507007B57EF17EDBBF0B7C41F1A7F656F1CF85BC2C6D97C41AE69335A5835C12B12CCCA42EE23A0CE39E6BE47FF82467FC126359FD9BFE0EF846E3E28DBDB5B78A741B8FB59D3AD2E44F009D37047675E1872580F5C67A566EF737834A373EFF00F0969ADA3F8574CB47C97B5B58E2624E492AA01CFE55A27EF5348E6823E6AD0C0ABE20D02CFC51A25DE9DA85B4379637D13417104ABB92546186523B8209AF3CFD9E7F64AF067ECC3A259E9BE12B4BBB4B2D3A192D6CE19AE9E54B481DC398A35270AA0A8C0EC0015E9A47068C71F8D01776B0A7EED2F6FC69847CB4B8E3F1A0071EB40FBD4D239A00F9A801C0F35F8C7FF0717FED352FED0FFB4B7C3FFD993C3CF637FA769A53C51E2DB795F625C4D9D963665BA1C96672B8CFDCAFD47FDB4BF6A7D0BF62CFD98FC5FF00127C42F1FD8FC3562F345034811AF6E0FCB0C084FF0013B95503DEBF2B7FE087DFB2EF893F6B3FDA67C43F1B3E2C4316ABAB4B7AFAE5D0BA8D64F2EEA42BF64B75206364310C8CE4F0B41AD38E8E4CFB97C29A8F84BFE08BFF00F04AFBCF106BBA6D969963E08D2E4D4EFACF4F001BABB95F2B0A9246E767754CE6BF1CBF630F823E2CFDB77E32E99A3F8BBED7ADF8D7F692D723F1878F269A7C4BA4F872DE61241685B1B955C260018C04402BE91FF83897F6A11FB5C7ED5DE1AFD9B348D46DDFC01F0F615F187C489E26C84923DC61B3723F8B6E0EDF5957D2BEC2FF0082177ECA52F83BE17EB5F197C43A52E9FE23F8A2637D36CE58B12E89A443B92DAD94F60576B103DBAD052F763CC7DE3A268F6FE1FD22D6C6D22482D6CE258218D060222801401EC055BEF4D239A31CD0607E57FED4FF00F045BF8A7F18BF6F2F89BF192DB5FD1353BFF1AFD8B41F0BDD5CDE48B2781F4AF2234BA9D2329B5A6044BB150F593248C9AFD23F80DF06346FD9EFE10E83E0DF0FC1E4695A05A25A423AB4847DE918F7666CB13DC935D601F2D2E38FC6925629CAEAC3BF83F0A3B7E34DC7C9F8518E3F1A648E3F7A81F7A9A47CD401F35003875A43F76900E6908F96801FDBF1A43F76931C7E34847CB400FEF477A6E39A31CD0028FBB4A3A5300F96940E280147DDA53D69807CB4A473400E3F7A81F7A9A47CD401F35003874A3F83F0A681C518F93F0A00776FC690FDDA4C71F8D211F2D003FBD03AD371CD0073400A3EED28EB4C03E5A5039A0077F07E141EB4DC7C9F850473400E3F7A81F7A9A47CD401F35003874A41F76900E2900F96801FDBF1A07414DC71F8D00702801DDE81D69B8E68039A0055EB4A3AD314734A073400A7EED29EB4C23E5A5239A0071FBD40EB4D23E6A00E6801DDE907DDA4C734807CB400FEDF8D03A0A6E38FC680381400E1F7A9075A403E6A4039A0078FBD40E94D03E6A00E28014FDDA53D69847CB4A473400E3F7A8EF4D23E6A31CD003875A41F76900E6900F96801FDBF1A0F5A6E38FC68239A0053D694FDEA611CD291F3500387DEA3B7E34D03E6A31C7E3400A7EED29EB4C23E5A5239A0071EB477A691CD18E6801C3AD20FBB480734807CB400FEDF8D07EF5371C7E3411F350038F5A0FDEA691CD047CD400E1D68EDF8D340E68C71F8D00387414B4C1DA9F4008FF74D37B7E3ED4E7FBA6984FCB4010EA37F0E97A7CB733BAC50C086491D8801540C926BF9EAF8B3F1B35EFF0082AFFF00C147B59F1FE8971ADDEF80BC273BF877C196574736D2DD83B25B98A351D09C9DC4E703F0AFD1CFF8386BF6C8BDFD9FBF632FF8413C2B752AFC45F8BF771F86B448EDE629710A4AC167B81B79C2464F3C0CB0AF35FF00820F7EC4D17806086EA6D3DBFB13E1F44DA7594F21052FAFE401E6953A93B4B119C8E49A95ACAE6F4DF2AE667DF9FB207ECFD69FB357C07D0FC35065EEA2844B7B3331669A7619724939EBC0FA57A70FBDFF00EAA45E00A507E6AA316EEEEC075FFF005520FBBFFEAA5079A407E5A0429EBFFEAA46EBFF00EAA5279A463CD0029EBFFEAA0FDEFF00F5504F3413F350007A1FFEB51DBF1F6A09E0D19E3F1A0043F77FFD54BDBF1F6A427E5A5CF1F8D0007AFF00FAA81F7BFF00D5413CD6578E3C67A77C3BF086A7AF6AF751D9697A3DB4979777121F96189177331FA01401F979FF0005D7F18EA5FB58FED33F0F3F672D374AB9B9F0BF87922F885E32BD019630B1BCB1D8DAEE040CBCA8E70739E3D2BE91F18FC54D07FE08F9FF0004BCD77C6DE2A9ADC5EE9162F7CD0A22A7DB7529C620B541DFE6D88393854273C57CFDFB317C29F127C67FDB9ADAEBC55702FB55F1EDC37C44F16FEECE34BD2ADD82685A463F8064895B38DCD04BD726BC13FE0B6DFB5468FF00B7DFEDB9A4FC19B2B979FE157ECF53BF893E215C16C5A6A3A8A6121B01CE1997714E7F8A46F4ACED2DCEAE4BB50478CFFC135BF62EF10FED69F12B45F0F78AAE2E27F15FC5ED4CFC49F89DAC46EDF68B7D2849BED34F66CFCBE7B3138FEEAF423A7F43DA1E8969E1AD0ED34FB1823B6B2B185608218C00B122AED5503D0002BE4BFF0082447EC7775FB3EFC31F1078E7C47B5BC65F156F1357B940081A658AA04B3B2504F023882838E335F5F13F2D686555FBD6429EBFFEAA3BFF00FAA8279A33CD06420FBBFF00EAA5EDF8FB5203F2D2E78FC6800FE0FC3DA8EDF8FB519F93F0A33C7E34001FBDFF00EAA07DEFFF005504FCD403F350003AFF00FAA90FDDFF00F55283CD213F2D002F6FC7DA90FDDFFF00552E78FC6909F968017BFF00FAA8EFFF00EAA33CD19E680107DDFF00F5528E9FFEAA407E5A5078A0041F77FF00D54A7AFF00FAA901F96949E68003F7BFFD540FBDFF00EAA09F9A807E6A00074FFF00551FC1F87B500F1467E4FC2800EDF8FB521FBBFF00EAA5CF1F8D213F2D002F7FFF005503AFFF00AA8CF3403CD0020FBBFF00EAA51D7FFD5480FCB4A0F34007F07E1ED41EBFFEAA33F27E1413CD0007EF7FFAA81F7BFF00D5413F3500FCD4000E9FFEAA41F77FFD54A0F1480FCB400BDBF1F6A0741FFD6A33C7E3403C0A003BFF00FAA81D7FFD54679A01E680117AFF00FAA9475FFF0055229E6941E68010FDDFFF005529EBFF00EAA427E5A5279A000FDEFF00F5503AFF00FAA827E6A01E6800EFFF00EAA41F77FF00D54B9E6901F968017B7E3ED40E83FF00AD4678FC6807814000FBDFFEAA41D7FF00D54A0FCD480F3400A3EF7FFAA81D3FFD5403F3500F140087EEFF00FAA94F5FFF0055213F2D293CD0007EF7FF00AA8EFF00FEAA09F9A8CF34000EBFFEAA41F77FFD54A0F3480FCB400BDBF1F6A0F5FF00F5519E3F1A09E68010F5FF00F5529FBDFF00EAA4279A527E6A0007DEFF00F551DBF1F6A01F9A8CF1F8D0021FBBFF00EAA53D7FFD5484FCB4A4F34001EBFF00EAA3BFFF00AA8279A33CD0003AFF00FAA907DDFF00F55283CD203F2D002F6FC7DA83F7BFFD54678FC6827E6A000F5FFF005507EF7FFAA8279A09F9A8001D7FFD5476FC7DA8079A33C7E34000ED4FA603D29F40087A521E5695BEE9A6E78FC6803F3BFF00E0A87FF04A9F1E7ED43FB54F87FE2D7846FF004DD6350D03409344D2B48D52E9AD2DB49B896652F7A1D41DDFBADCA5719276E3D6BECDFD94BE072FECE9F02F41F0A79C2EAE74F801BBB80389E76E6461C0E33D3DB15E864FCB4B9E6A546DA94E57561474140FBD4D0781403F355123875A41F76901E6807E5A0071EB48DD6909E6863CD0038F5A0FDEA693CD04FCD400E3D0D1DBF1A693C1A33C7E3400A7EED2F6FC69A4FCB4678FC6801CDD2BE6FF00F8280DDD8F8DFC3D67E06D52E24B4F0D4F049E21F145C2C8D1AA69B64C92185C8E8B2C8154E48F955F9AFA3657D8849E001926BE0BF1FF00ED2F17EDDDE3FF001FFC2AD1FC3939D026D5ACBC39A9EBB13E3ED3A6EE26F9490432AE04899F4933532D5599B515AF33E87CF5F04FF6CDD67F646FF82797C77FDAEBC676BF62F147C5FD53ECDE00D21CBB19A048CDBE950C71B64852C5E4DABC6D0CDDEBCABFE08E5FB07DFF00C56F1BE91A478D6096FF0056BDBAFF00858FF14B5000F99777D3B89AC34C9DC8E8C59E6745EA10038046786FDBBBF680D3FF00E0A39FB79BE99E1F824BAFD9F3F667920D2341B0D393367E23F103BA41144880618094AC6A4021510B7435FB33FB027EC9307EC8BF02934EB810CDE2BF11CE75AF13DE459DB77A8CAABE66DCF3B170114765514B96FA9A4A6946FDCF6F8E2582354450AAA02A80300014A7EED213CD04FCB56728E3D68EF4D279A5CF34000FBB4BDBF1A683F2D19E3F1A0077F07E1476FC69B9F93F0A33C7E3400E3F7A81F7A9A4FCD403F35003875A43F76901E6827E5A00776FC690FDDA4CF1F8D04FCB400EEF477A4CF34679A0007DDA51D29A0FCB4A0F14000FBB4A7AD341F968279A0071FBD40FBD4D27E6A01F9A801C3A51FC1F85203C5267E4FC2801DDBF1A43F76933C7E3413F2D003BBD03AD2679A4079A0051F769475A683F2D00F3400EFE0FC283D69B9F93F0A09E6801C7EF503EF5349F9A807E6A0070E9483EED00F1480FCB400EEDF8D03A0A6E78FC680781400EEF40EB499E6901E680157AD28EB4D53CD00F3400A7EED29EB4D27E5A09E6801C7EF503AD349F9A941E68017BD20FBB4679A407E5A00776FC681D05373C7E3403C0A0070FBD483AD203F3500F3400E1F7A81D29A0FCD4A0F14001FBB4A7AD349F968279A0071FBD477A693F352E79A0051D6907DDA4079A01F96801DDBF1A0F5A6E78FC6949E68003D694FDEA693CD04FCD400E1F7A8EDF8D341F9A8CF1F8D0029FBB4A7AD349F968279A0071EB477A4279A33CD0028EB483EED203CD00FCB400EEDF8D07EF5373C7E3413F350038F5A0FDEA693CD04FCD400E1D68EDF8D203CD2678FC6801C3A0A5A603D29F4008DCAD26DE3F1A563F2D26EE3F1A0042BF2D2EDE682DF2D2EEE680102F0280BF3501B81406F9A8000BCD205F9694373406F968002BCD232F34A5B9A19B9A000AF3415F9A82DCD05BE6A000AF068DBC7E3416E0D1BB8FC68010AFCB4BB78FC682DF2D1BB8FC6803E78FF82AE7ED017BFB31FF00C13FBE2678B34AB98ED75A834892D34B91DC291773E218B6F2096DCE30073915F92BF1E3F6ABF147ECC1F032EBE187833541E23F8EDF1474CB7D30DFC717972DA43310B2CED83856D85B2DDCE49AFB63FE0E4AF8A163F0BFF658F066A3ADDC5B2F87EC7C536FA85D5AC98DD7D2C28CD022039C9126D6DA064EDFAD7CBBFF0004A0FF008272788BF689F11DD7C4EF1CC1709ADF8EE459EE259B789744D23E6FDCC6FDA599708B8C145DCDE998DEE7543DD8DCF7AFF821BFEC0D65F0E744D2A74D226FF8427E1FA32E8FA95D71FF00095EB1296FB5EA023EA628481144CDD48761C60D7EA0EDF93F0AA7E1CD06CBC29A1DA69BA75BC367616312C16F044BB52245180A07A62AE6EF93F0ABD8E79CB99DC0AF34857E5A52DCD05BE5A0902BCD1B79A0B734BBB9A00685F96976F1F8D01BE5A3771F8D001B7E4FC28DBC7E346EF93F0A3771F8D00057E6A02FCD416F9A80DF35000179A42BF2D286E682DF2D001B78FC690AFCB4BBB8FC682DF2D001B79A36F34BBB9A3773400D0BF2D285E280DF2D286E2801A17E5A52BCD01BE5A0B7340015F9A80BF3505BE6A037CD40005E28DBF27E14A1B8A4DDF27E14006DE3F1A42BF2D2EEE3F1A0B7CB4006DE680BCD2EEE690373400817E5A50BCD01BE5A03734006DF93F0A0AF346EF93F0A0B7340015F9A80BF3505BE6A037CD40005E2902FCB4E0DC5206F96800DBC7E3405E051BB8FC680DC0A0036F3405E697773481B9A00455E6942F342B73406E68010AFCB4A579A0B7CB416E68002BF350179A0B7CD4A1B9A004DBCD205F969DBB9A40DF2D001B78FC680BC0A3771F8D01B8140005F9A902F34A1BE6A037340005F9A80BC501BE6A50DC50034AFCB4A579A0B7CB416E68002BF351B79A0B7CD4BBB9A0040BCD205F9694373406F96800DBC7E3415E68DDC7E34A5B9A00695E694AFCD416E682DF3500017E6A36F1F8D01BE6A3771F8D00215F9694AF3416F9682DCD000579A36F34A5B9A37734008179A40BF2D286E680DF2D0053B28EF86AB7A6E1AD4D8929F6411A9122F1F3EF2783CF4C76AB857E6A3771F8D05BE6A000AF3415F9A82DCD05BE6A0002F346DE3F1A50DCD26EE3F1A0002F4A75341E053A8003C8A4DBFE734514006DE3FFAF46DA28A0036FF009CD1B7FCE68A2800DBFE7346DE3FFAF4514006DFF39A36E7FF00D74514006DFF0039A36FF9CD145001B7FCE68DBFE734514006DE3FFAF46DFF0039A28A00F3CFDA1BF64BF86FFB58E89A769BF11FC21A4F8C2C348BD8F51B3B7D4519E382E2339490004723DF82090720D773A3E8767E1FB08ED6C6D60B3B68861228502220F603814514592D82ECB417146DE3FF00AF4514006DFF0039A36F1FFD7A28A0036FF9CD1B68A2800DBC7FF5E8DBFE734514006DE3FF00AF46DFF39A28A0036FF9CD1B7FCE68A2800DBFE7346DE3FF00AF4514006DFF0039A36F1FFD7A28A0036D1B68A2800DBC7FF5E8DB4514006DE3FF00AF46DFF39A28A0036FF9CD1B7FCE68A2800DB46DE3FF00AF4514006DFF0039A36F1FFD7A28A0036D1B7FCE68A2800DBC7FF5E8DBFE734514006DE3FF00AF46DFF39A28A0036FF9CD1B7FCE68A2800DB46DE3FF00AF4514006DFF0039A36FF9CD145001B68DBFE734514006DC7FFAE8DBFE734514006DE3FF00AF46DFF39A28A0036FF9CD1B68A2800DB46DE3FF00AF4514006DFF0039A36FF9CD145001B7FCE68DBFE734514006DFF39A36D145001B78FF00EBD1B7FCE68A2800DBFE7346DA28A0036FF9CD1B78FF00EBD145001B7FCE68DB4514006DFF0039A36FF9CD145001B7FCE68DBFE734514006DE3FFAF46DFF0039A28A0036D1B68A2800DBFE7346DE3FFAF4514006DFF39A36FF009CD145001B7FCE68DBFE734514006DA36FF9CD145001B6968A2803FFD9,0,'',1,0,4),(10,0,'Fr. John Arackaparampil cmf','Delegation Econome',0xFFD8FFE000104A46494600010101006000600000FFDB0043000201010201010202020202020202030503030303030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080103032003012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFCA28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A29370A370A005A29370A370A005A29370A370A005A29370A370A005A29370A370A005A28A2800A28A4DC280168A4DC28DC280168AF23F13FEDE5F07FC19FB5368BF04F53F1F68769F153C436CD7761E1D66737334611A4C9214A21288ECAAEC0B053806BD6F70A005A29370A370A005A29370A370A005A29370A370A005A29370A370A005A29370A370A005A29370A370A005A29370A036680168A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00290F4A5A43D280194514500145145001451450014514500145145004945145001519EB525467AD00145145007F205FF05C4D164BDFF82D97C78B8B6F8817526AFA7F89ACC69B34EF32DDB492ADB2FD9A1947C912DA87640CEE836C000E4D7F5E3E1EB1934CD02C6DA69DAE66B7B78E29266EB2B2A8058FD48CFE35FC79FF00C1443515F1AFEDCBFB57EB9A94D7B7B26B5F12B53D234B48AD9658AE9EDF54240F388774DB0AA2AAA633BD72C000ADFD82F82E2B983C1DA4A5E284BB4B3856755070AE106E033CF5CD0069D1451400514514005145140051451400514514005145140052AF5A4A54FBD4001DC5A9771CFB7F3A751400D524E734EA28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00290F4A5A43D28019451450014514500145737F177E30F85BE017C39D53C5DE35F10693E16F0C68B1896FB53D4AE56DEDAD54B045DCEC4019665503A92C00E4D7C993FFC1C4FFB1B27817C4DAFC5F1BFC39736FE15216E2D520B85BDBC66DDB05AC0F1ABDCEE2A7988305E0B15073401F6BD15E2DFB04FEDF5F0E7FE0A47FB3FC1F127E185FDEDEF87E4BE9F4D9A3BDB6FB3DD59DC4446E8E58F2769DAC8E304E56453DEBDA6800A28A28024A28AF8F3FE0B77FF00053C8BFE095DFB185D78D6CA2D3750F186B5789A478774DBB7917ED770EA4B38D88C0F9480B90DB54EDC6EC900807D87519EB5FCE0FC0BFF0083933F6B7F873A9E81F10FE26DC783B5FF0086379ADC6DAA6870595ADBEAD169F23C2D23408A03809149FBBDCE4E7717C81C7F459E0EF1869BF10BC23A56BFA35DC3A8691ADD9C5A858DD44731DCC12A0923914F70CAC08FAD0069553F106BB6BE16D06F753BE944165A75BC97571211C471A29666FC0026AE5783FF00C1513E29C7F057FE09C3F1CFC4F275D2BC0DABBC43246E95AD244887E2ECA3F1A00FE62FF626F0D697FB657ED21E18F0F3DDE9B2CDF123E30DB6A5783CA7F3E5825D42379D376429C42D238DD920371B4935FD760E057F353FF0695FECD5E0CF8D7FB7FCBE38D2ED6F960F84BE105B9B94BE45984FAD5E3BC1E6A9DA551562126CC36ECA96000660BFD2B50014514500145145001451450014514500145145001451450014A9F7A92953EF5003E8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00290F4A5A43D2803E27FF0082D67FC165B45FF8239FC21F096BB77E109BC77AE78D75296C34ED223D5069DF243187967690C529DAA5E25C04E4C83915F27E83FF00077AF81BC6DE18D364D1BE0FF88975FD4A37923D3752D723810ED9163044B0C1370CC481BD15B2BF770CAC7EEDFF0082ABFF00C1363C09FF000537FD96B55F0878BF4E966D5B4A827BFF000CEA36F3986E34AD43CA611C8A7952AC70ACAE181527804023F97FFF0082277EC4763FF0537FF828BE8BF0CFC6DAF6B1E1FD2E0D16EE7BF96C1B65FCA96A981046EFB82B12472CA42AAB60642D007DD1FB46FF00C1E3FF001C34AF13EB1A4786FE14F813C18F6A585BFF006B457FA95CC8030D8E3735AFCAC371F9A1040C719E9E2FA67FC1757FE0A41FB6D33A78026F175C5BDFA3436B0780BC050CF134A086606736F34836A06CED941071EF5FB7BFB3DFFC1BB1FB20FECE5AB5B6A761F08B4CF136B16CC1D6FBC55773EB6CCC063718A7768339E788C73C8C6063ECBF0B784F4AF036836FA5689A669FA3E9968BB60B3B1B74B78211D70A8802A8FA0A00FE63F48FF82137FC148FFE0A422DEF3E2D78935AD334C91D258C7C44F19CB322770459C46778C8C0E1A34393EC71F547C18FF83233C296DA6DBBFC44F8E1AF6A178C43CF17873458ACD178E51649DE5C807A37963E9E9FBB14500788FF00C13FFF00E09FDF0EFF00E09ADFB3CDA7C37F86D67790E9115C3DEDDDDDF4AB2DEEA974EA88D3CECAA8A5CA471AFCAAA30838CE49F6EA28A0028A28A008B57D5ED7C3FA4DCDFDFDCDBD958D944D3DC5C4F208E282350599DD8E02A800924F000AFE587FE0B0DFF0519F157FC1727FE0A65F0FFE147C38BB8EDFC0563E258BC3FE1186581D1A6BC9EE05BCBA95C8DBBC0380CA01F921553F2BB4807EAB7FC1D77FB75E99FB3F7EC316BF09217D4A6F12FC69B836AF0E9D70219E0D26D5A396EE42C55861CF950ED23E612C9D76915F04FF00C1A0FF00F04F293E317ED63E2AF8F7E27D1E58B44F85E5F4CF0FF9A09493589D0AC8431C96305B93919E1AE50F51400BFF0007187FC127348FF8271FC08F827E2DF09F8ABC55A8CD25DCDE19D7B5AD4248FCE9EE1ACD0453031AA98F31412A7563855DCCC725BF4FFF00E0D88F8CBAEFC61FF823FF008057C40B78F77E12BCBFF0EC173725CB5DDBC13931302C33845904400CE3C9DBD4103E40FF0083DCFC7D75A77ECFBF02BC328D1B59EADE22D47529A2DF8777B7B68A38CE31D07DA5FBF5C707B7D89FF06C7FC25BBF855FF0476F86F2DF451C577E2A9EFF005F919673334E27BA90472BB16237346919214E3A77CD007DFD5F957FF07717ED931FC01FF826E47F0EB4FB994789BE316A91E9D1C1049B641A75B324F77211B4E509F22123233F68EA70457EA76A3A8C1A469F3DDDD4D1DBDB5B46D2CD2C8C152245196624F00000926BF91BFF0082CB7ED9D7DFF0545FDBDFC4BF12348FEDCFF854FA408FC33E1F90DBDE496B25944C3F7B2AC63286EA725954004931EEE572403F68BFE0D26FD93AC7E05FFC13123F1E369AD63AF7C5DD5A6D4EE1DE37476B3B567B4B55C1620825279830033F69381B42D7EA4579FF00ECA1F0734FFD9EBF662F87DE06D2AD5ECB4FF097876C74A86077DEF18860443B9B032D907270324938AF40A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002953EF5252A7DEA007D14514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400521E94B487A50032BF968FF00837A7C3DA8786BFE0E14D1E3522C6C6D358F17696F1B5C8266F2ED2ED8C58032C54EC258E01C0C7DDAFEA5EBF958FF008379C2DF7FC1C4DE1CBD8835CA5D6ABE2E904C158295FB0DE10FBB76181CE318E3773D46003FAA7A28A2800A28A2800A28A2800A28A2803F974FF83BAFE36EA9F10FFE0AA571E167B96B4D23C11E19D3B4B89637C0965910DFBB38041271768A377CA36F51CD7EF87FC11A7F64AD2FF62AFF00826AFC28F04E9A6CE79FFB162D5B52BCB61F2DF5EDD8FB44D2672777326C073F75140E0015F85BFF000766FC30D7BE097FC14EB50F17430343A5FC4FF07C1710EA28DE53379110B0B9B54723390A91348A872C93AA9C02D9FB83FE0DC6FF0082FC681F1FFE13F82BE047C48B683C35E2FF000AE8D1E95A4EB52DD2A59EBF0DB6C8A2421B1E5CC23312F521D81C60902803E59FF83CEFE21C1A8FEDAFF097C2D7D245756BA6F8326BCB7B7B790FDA6DA7BABC92367605B66C65B74C646498CF20723F6CBFE0945E13FF00841FFE0995F00B4BF216DCDAF803450D1A9C80C6CA2663F524927DC9AFE797FE0E79D5350F8D7FF05E6BBF0BE9F7ECD7BA7693A1787EC888CC4B64D346B3957624657FD29DCB02387C7635FD167C7CF8FF00E1BFF82797ECA3A6DCEB37905CCDA369F6FA168966F2085F5BBD4836450AE49DA0F965DDC92238D5DD8E109A00F867FE0EA0FDBCB50F81BFB2F68DF05FC29AE5868FE22F8BFE7AEBB712DE4703D8F87E15C5D7DECB033B3AC40AA9255660066BE3CF845F0DFE19EABF153E157C366F155A47A878CA5F0ED83C1A6590B49C89A78668C342C10C81AD06FF003B1F7A50E576EDCFC63F0CFF00672F8E5FF07087FC150F59FB67896D75B6BF956E7C49E22B591C691A06928C8CB0C087E611AE4470C45433B82CDCF98EBEFDFF0004C6F0559FC7DFF839E92CBC1FA49B8F027C24D7352164E23444B0D3F4DB396C2077014EEDD32DBED391CB2F18C0001FD3451457E77F83FF00E0E66FD9E3C7DFB7E69FFB3FE93078D6E358D475E7F0BC5AEBE9D1C5A5B6A22510A4637482628D26E40FE5819038C1DD401FA214563F8F3E20687F0B7C237DAFF89758D3340D0F4C88CF777FA85CA5BDB5B20E4B3BB90A07D4D70FFB37FEDADF093F6BFD327BBF861F11BC21E398ED029B94D23538EE25B6DC32BE6460EF4CFF00B40743401EA14579BFED49FB5EFC34FD8A7E184BE32F8A7E31D23C19E1D8A4108B9BE73BA790F48E28D43492BF7DA8AC7009C601A77ECBDFB5B7C3AFDB43E125978E7E1978A6C3C57E18BFDC23BB815E2642AC5595E3915648D8153C3A83C7A500777ADEBB65E19D22E350D4AF2D74FB0B4432CF73732AC514283AB33310001EA4D73BE04F8F7E05F8A3ABB69FE19F19F853C457EB6A97ED6DA66AF6F7732DBBE0A4C523727CB6DCB86C60EE183CD7E047FC1C4FFF00053A8FFE0A7DF14748FD9DFE08EB8BAA780BC2F7D25EF8A358B50E6D75BBC8A362228645521E2806541FBB24B32632A9BEB82FF82687C13F83BFF04BFF00DA93E1A7C5DD7FC6D716D7FA5CB7D7D7AAFA8AF969A6C96F259B4724402B7981E492555CBEE5823E01916803FA61AF3BFDA63F6B5F86BFB1BFC3A93C57F143C6BA078274142512E353BA111B97033E5C31F2F2C9807E48D598FA57E3D7ED4BFF000746FC4DFDA6E6D6FC2FFB1CFC26BFBF5B265B6B8F18788E38C35A891C4697115A9711C51E4E7CDB872AA194BA2D7E66CBFB13FED0FF00F0546F8DFA3DD4DE2FD53E3DFC50BCD5E7B4D71639A6D4347F0C5AC410E2E6F8F976B0A990BA88EDDCA600DADB881401F7DFEDF5FF00074178FF00F6EAD5FF00E14E7EC5DE12F18D8EBDA8DDB11E272910D52FA084962B696C430884981F33B798410A1159ABEDCFF836AB5AFDA8FC4BFB36F8EEF7F695BEF1F5C22EBA96BE138BC69A63596B22D9118CF349E60F39A37678C2EF2C0189C2922AF7FC1067FE08503FE0925E12D6F55F13F89745F1878EBC55142D3B5A68D1C71E8442FEF6082EDC1B89918E324F96A76E7CB04E6BF45A800A28A2800A54FBD494A9F7A801F451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001487A52D21E940197E30F102784FC25AA6A92AB345A6DA4B76EABD4AC685881F957F2A9FF06C549AAFC42FF82DA7C2ABE9A1B7FB2E97A6F886F633222BBAC125A5E0E39041F3A76F988CE091D3007F4C7FB7A7C4AFF8537FB10FC5EF15F94F31F0F783756BF5449842CC63B395800E7EEF2073D7D013815FCFA7FC19CDA4CFF14FFE0A49AEEADADDE5E6A0FF000F7E1B5C5BE91BDCB25A2CD7F02ECCFA059A7C0EDB8FA5007F4C945145001451450014514500145145007CBFFF000567FF0082627877FE0A87FB363785EF27B5D17C63A048FA878535F96D56E3FB2AECAED64910F125BCCBF24B19C8236B60B22D7F325F18FF00664F8B5FF04D8F8CEBF0CBE24F846F74FD59B535D4B46834D96516D7FE529956F2C6E06239E3473FEAB3E60385215B20FF006235C57C78FD9CBC07FB4FF8127F0CFC43F08E81E31D06E396B3D56CD2E2346C637A6E19471D994861D8D007E147ECD7FB2AE93F1BBE1FA7ED09F11FE205BB6B1A1788E6B24D43519ACEE1EF3EC703168DDDD49CBC513C619DD86635013E6563EABFF0515FD9DBE34FFC146F47F0E7C44D5ACB558EDBC37A7DD69A74382542BA68F2C79B74B84DAD24C14319ED8AB18E54895A2E37FC5BFF0004E9D12C2C7F691F8A3AC26BDA9F87FE0CF833C53AB3DB5924D2EA51E91A4DBC8F242618251279AD279B6B1C79E5D9F218706AC5B7FC161FC4DA5F853C5BE02F117C4783C632F8E745B8BF79EEE695974B9194CE2CCF991AF262B789370563BA5006496C007D4DFF0006F07ECC5F12FE0CFC6CF8E5FB41CC351B3F85F6BE0F974FD2AC21B877B6F14DD438943C6599849F67103A79A413BEE59431C48B5F01FEC7BE2CF167EC9FF0575BF8E5F0DFC6DE23F07FC51F1969B7ADABDC8D3E0D4560B796F63F2C80F11506597660EE4605BF8C12B5FAB3FF0004B4F17F8CFE0F7FC1AEFF0010BC67AD6BD75379BE18F15EAFE1369608BCDD2ED0C53A4116012ADFE9292BA83DA40300002BF36FFE0DE2F8053FFC146FF6D0D13C0BE2C8BED1F0CFC05A54DE23F15E916B8B5B6D52E12611DB417099C49199591991000D86CFAD007D8BFF00045BFF008383FC65FB4FFECFDF1ABE1F7C78D7AD753F16683E0CD6BC4FA07886178EC2EF53820B799EE2D596DC2E258971246D1202235627EEA93F94BFB33FC04BEB1F87FE0EF8B1E0ED52DFC2DE37F07EA8BAE596A53DD4922DDDD457DFB9758DA20A4A6C421559BEEB17186C2FB7FF00C1C01FB23DA7EC47FF000587F11689F0CA24F0F587C45D3A0F10D8E9FA785823852F965B7BBB28E3CAA149658E6FDD709B250806062BDD75BFF820DFC42F8FBFF043CF04FC54F02477575F14EDAEE6D75FC3BA66D8FF00B534918411C688155EE52485A74C7CCEB26CF99C25007D03FF00074EFEDC5A47C66FF824CFC07D3AC2EBCDD57E2DEA90788658ED94AC51C16568EB76AEA496509717280641C189B9F96BF1D3C0BF02FC57F0ABC0973F18BE1DCBE33D1ED3C111E9F79A87887C3F7B209FC3CD75347145E6DC810AC7E6979153683CC67390722EE8DFB50F8A3E2C6BFA0E85E35D6EDB53B0D0AD53C20DA66A3E5DDDC2C53DD7992BC0E6301183A64B86CF62E430CFF561FB16FF00C139BC0DF05FFE09FD6BF08B5EF0A69377A778B34ACF8B74E922DF0DE4D3C2AB2C4C4F2446A16246CE408948C1E6803F9C2FDB7BFE0AA1ABFF00C156FF0063BF83BE09F8BF7834FF001DF8435CB89DFC430DAAB26A76935AAC70968C14DB2B3C6771E437518FBB547F65DFDB1EF3FE09A1E21F1E7C37F863E2CD634AD43C6DA7DADA789AE03A2FD967865323C703BED11B2C4D2445FF0079F79F6360066FA93F64EFF83573C7BE10FF0082C42683E3AD225BEF801E11BD7F125AEBE1B7DBEBD671CBBAD34F6247FAF625166423844948241527F523FE0A05FF0006E0FECE9FF0501F1FF8A7C6FAAE9BAC7853E2078A2C56DE4D6746B9091A4EBE5EDB96B660626936C7B18E06E57739DFB5D403F2DFFE0D91FD8ADFE367ED03AFC9F61D5EC3C25E1861AA6A5A97EED86A5E69290D989E39430C95949210AB2C4F9DBB80AFA2FE27FF00C19B5A2FC4FF00DAA3C4BE2DFF0085D3AA689E06D6FC4B71AADBE8569A479B79676930321852E2494A06594EC52626063504E5B8AFD19FF8248FFC132BC3FF00F04A7FD91EC3E1BE95A99F116AD35D49A96B9AE340606D52E9F0A0AC659BCB8D2354454DC70149EAC49FA7E803E10FD9B7FE0DF3F831F05BC11A2E93E27D43C59F11BFB21C4CF1EA17EDA7E9D7D28D855E6B3B431C5295F2D7FD6EFCFF0016EAFB53E1EFC36F0F7C24F0A5AE83E15D0B47F0DE896436DBE9FA5D9C7696D00FF6638C051F80AA5F177E367843E00F81350F13F8DBC4BA2F857C3FA54467BBD4353BB4B682141DCB311EA06072490075AFCECFDA4BFE0ED8FD923E09D95D47E19D6BC4FF0014355891FCA8342D22482D9E55E8AD3DD0880527F8915C601E0F1900FD3BA8EEAEA3B2B779A691228A252EEEEC15514724927802BF9BAF891FF07427ED95FF000504F195C785FF00668F859FF08CE1C301A0E8D2789F598A32DB434B2C919823439193E42E3FBD57DFFE0DEAFF0082877FC143B506D5FE3BFC608741B6D4D0493D96BFE279F50688139D8B65681AD900CFDD56503D2803F597F6B9FF008384BF64DFD8D6EFEC3AFF00C54D2FC47ACFCF9D37C283FB6E78CA8276C8D093146C48C0123A9C91DB247E677ED41FF079FF0089BC7FA98F0F7ECEFF00069D2FAFC882D2FF00C4ECD7B7924ACC0011D8DA9C16F4FDEBE491F2F1CFB4FECC7FF065C7C15F87B79657DF13FE21F8CBE225C5B4A92CB6361147A2E9F700104C6E019262A70412B2A1C1E306BF4B3F662FF826AFC08FD8D6C6E21F86BF0B7C1FE1692EE236F3DDDB58235ECF11E7CB7B8706675F6673D2803F976F8EDFF053CFDBF3F694FDADF46F076BDE3EF8A7E0FF0088F77756D69A6F84F4E925F0A149A50AF021B44F272F20652BE68667DEA013902BFAC3FD9974FF001AE93FB3DF822D7E245D58DF78FEDB43B387C457564DBA0BABF58544F227C89C34819B014019C0E057877ECC1FF0477F831FB2BFED61F10BE35E93A55EEB7F10BE216A3717D25FEB2D15C2E86933977B7B1458D4431F3B73F33ED50BBB6E41FAA231B4803803A0A00928A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00290F4A5ACBF16F8DB46F01E9A2F35CD5F4CD1AD1DFCB59EFAE92DE3662090A19C819C03C7B1A00F863FE0E69F8B96FF09BFE08BFF177CD9608EE7C4D1D9683689239533493DE43B9571D5844B2B63D10E6BE07FF008324BE054D1D87C78F8A1716BE5DB5CCBA6F85EC255CEC2D1ACB7172A39C1387B427EBEF547FE0EB6FF829AFC20FDAEFE00F86FE127C33F158F1C6A5E16F16C7ACEBF7BA1DB3DCE9FA7797677912446EF2212EC5E438566C08D8F6C57E57FC19FDA37F688F117C229BE00FC30F1478CF50F02EB5AA9D66E34AF0758DC24D7F3DCC6AB22CC2DE313387DB1A797213182AA47CBF3100FE9E3E227FC1C21FB297C28FDAE2EFE0D7883E25DAE9FE22B0992D2EB536819F43B5B961936F25EAE63474E0396C2231DACC19580F01FDAB3FE0ECCF80DF0AAFFC55E1DF85BA378A7E30F8BF423E55A7F665BF97A35F32EFF3655BA1B99A18B6825D6221B70DA48CB0FCC9FD8A3FE0D1FF00DA03E2FEA5A76B7F15ADB4AF86BE158C34F79672EA0977AEDD26DDEBE5411878958E42ED9A48C82A4102B8EFF8224FC57F86DAEFED21E1BD2758F0EE810F8874ABB960B137D631A44D6F3644BE6CBB8233AE70A6552ABFBB5C3633401FA39FF047FF00F83A1BC6BFB77FEDABA37C1DF885F0B743D167F18492FF0064EA3A1DCC91AD924704B31F3D2776326ED8A032152093F29EDFB3A5C060323279033D6BF95AFDA57F6D0F887FF0493FDB7FC51E3BF01F84FE1F8D63C4D1CD6FA7EADAA5A3DFCB62C5E4132DBA89621946660CD2C4C43A15603273F1F7C75FDB2BE3DFC5DF8856BF173C49F13FC6373E32BC912E22BEB5D4A4B47B7316E1FBB48BCB587CB5541B5170724E4F3800FED9E8AF01FF0082597ED4177FB66FFC13BBE107C4CD4599F56F14786EDE4D4DDA3D9E6DEC40C172E076569E2908F622BE5DFDB3BFE0E7CF803FB10FED89AAFC1CF12E8FE3AD5352F0FCF05A6ABAAE976B6D258D8CD22AB329F326473E5AB8DC42F5C819C5007E905155F4AD52DB5CD2EDAF6CE78AEAD2F2259E09A270F1CD1B00CACAC3820820823AE6AC500495F3FF00FC14C3F6F1F06FFC13C7F64AF1378EFC59AE5A693766CE7B3F0FDBC8A5E5D5753686436F6F1A2FCCC4B2E4F40AA0924019AE8FF6E1FDB67C07FF0004FDFD9C7C41F12FE20EAB058693A2DBBB5BDAF9A8B75ABDCED263B4B646237CD211800700658E15491F829FB29F8B63FF0082EFFEDC5AE7C73FDA36CB5083E17785F58B6D2741D3206B81A7DAC121291D80011D0BBF9B1C933EE57386C327C82802E7FC139BE1978CFE05FECB7A27C44799B59B27D2DF58B7D3A5D09859C524D1B2BDD5C100208902CCCE7E6476F2C3AB10C528FF00C146FF00614F0FFEC57FF0412B3F1F78C34E4BDF8B9F18FC7F61793EAF0E21B882CDA0BD36F6E80332888DA2C8C5401F35CFCC32831F5A7FC17F3E3D7C32F875FB3A5B7847453AF5BCD63646CEEF428B4F9679DED64883A3E5DC12440EF29DCF9558937942BB4FE777C49FDA23E31FFC1D19FF000528F87BF0ECE8B7FE0DF863A25C2C89A65889278BC39A570F3EA173211B1EE5E2DA88E55109689140DC4B007B97ED97FB456A7F0CBFE0D02F807E18D924371F12F525D21CC38554B3B7D42F2EC0604863B8DBC3D01072727079F46FF832634AB36BDFDA36F208DD24B78BC3762C4A850C557512E703BE40E735FA87FB577FC11D7E0C7ED71FB0AF877F67DD674CD4346F05F8363B34F0F5CE952A47A868CD6CBB1648A4911D4BBC65D5CB2B6E12313F3608D3FF0082717FC127FE10FF00C12C3C39E24D37E1458EB96C9E2D92DA6D525D4F526BC92E1EDD1D63232005FF0058E4E00E5BD000003F25BFE0EA6FF8254FC77FDA27F6CFD03E307C3DF87DAA7C40F0A45E1AB5D16E22D147DA6FACE78A69987996F92E5099C10C88470DBB1D6BF57FFE08C9F003C7DFB2CFFC132BE137C3FF0089B6363A6F8CBC31A5C96D796B6B72B70B6C86E259228D9D46D2EB13A2B6D2CBB94E18F5AFA7E8A00F8E7F68CFF82137ECF1FB4B7ED5BE15F8C7AAF8626D1BC5BE19BB86EE65D11E3B2B3D6DA295E65377108CEF632B866914AC8DB02962B907EC6AC1F1EFC51F0E7C2DD027D53C47AEE95A269D6BFEB6E2F6E52144E9DC9EBC8E3DC57C57F12FFE0E0FF80DE01D13C612DD78BFC2BA6CFA1051A5A4BAF59EA171AD062544D0DB59CB2C8C990309912107954009A00FBCAB88F8F1FB457843F66AF015C7897C63ABC5A4E916C76BCCCA58039C738E1467AB310A3B915FCFE7ED43FF0007207C77F8A303685F047FE122D575AD6EE12DECB51B9D3116E54B248AA961616DF33B33C72E1AE15C8D8802927751F023FE0DAEFDAB3FE0A3DAA5FF008DBF697F1EEA9E12BBD54235BCBAF5F1D53524CCAAE5858C6C238D4A6E023696328CD9D9401F797ED71FF0758FECF1F05EDEE2CFC0BAE47F10358FB3968A3D32CE7BAD93860763022281D0A6EF9D2EB20FF09AF85FC77FF072EFED8DFB73D82F84FF0067EF842BA5CFABBC965F6ED36C26D73584639CC89B02C7046A1D30ED1B0050E646E6BF44FF00648FF835BFF65CFD9825B1D4751D23C41F103C4769672DA1D4357D49EDA3C4B1B472ED86D4C4BCABB806432300D8DDC0C7DE7F08FE067833E0178623D17C13E15F0FF8534B8D540B6D2AC23B546C0C02DB00DCD81F79B24F73401FCE1FC1CFF835A3F6B8FDB97C7773E25F8EFE328BC14FAA5EBDD6A17FADEA075AD4E673B83BADBC4E5599884C16963E33D7815FA69FB18FFC1A8FFB2CFECB5259EA3E25D2355F8BFE20B704B4FE28954E9FBCAED3B6CA30B115E49025329079CD7E9951401CCFC2EF82FE0FF81FA09D2FC17E14F0DF8474D241369A2E990D842C40C025225504E3BE2BA6A28A0028A28A002953EF5252A7DEA007D1451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140057E087FC1E9FFB3A7C54F1D5DFC21F1C68F69AAEB3F0CB45B7B8D26EADAD099574ED526937ACAF128DDFBD890207E4030EDF94B0DDFBDF48DF76803F8BBF895F02750FF827FF00C344D07E296857FA178DBE23F80FFB6F4FB18EED16E2D6DEE67920B75BA8B1BA290AAC929889CF978DC379F93FAB1FF8252FEC5FE14FD89BF61CF871E1BD07C37A4E8DAD4BE1AD366F115E5BDB2ADCEABA81B64334B349F79CF98CF8C92141C2E0002BF9BEFF0082E2FC45B0FF00828AFF00C1C09A8786FC39791EA5A6DC788745F87D653452EF8E5915A1B69B6B74C0B99261E9C57F59B696A9636914112EC8A14088A3F84018028024AFE737FE0EA1F8BDF0CBF62BFDA0FC23E08F825E02F01F82FE22EA08DE2BF166BDA2E996F0DD379A278A0B795157692FE64D336E193FB93D2BF72BF6FDFDBA7C13FF0004E7FD983C43F147C7772EBA5E8D184B5B2848FB56AD76FC456B083D5DDBBF4550CC70149AFE5BBF611FD97BC7DFF070DFFC157FC43ADF89A4BF8ECB5DBF9BC47E2ED5ADDF6C7A1D9676C30C6CCAC32311431478CB2A1E542B3A807E837FC1AE7FF04D1BCFDA7BC4A3F6ABF8B705AEB3A66951C9A2F82347BC804B07DA13E4B8D40C6C360DA772A601CBBC8E4EE504F35FF07B87C47B08FC6FFB3FF802CE08229B4AD3755D65D228D17CB8E796DA0880C72066DA6E38078EB8E3F7DBE12FC29F0FFC0BF865A0F83BC29A65BE8BE1BF0CD8C5A769B63003B2DA08D42AAE4E49381C92492724924935FCC3FF00C1753F684D03FE0A35FF000705F83BC2FE177B3F10E83E1FD4B42F87B1CF6B279916A32FDB8BDCE187042CD752C591C1F2B3CE6803FA2DFF00826E7C0EFF00866CFD823E10F818D8DB69B3F873C29616D73040BB5567F255A663C0CBB48CECC71CB331EF5F9DBFB6A7FC1A6DE1AFDAB3F6F7F11FC59D37E273F867C2DE3AD4D754F11F86DF4317934D23C8B25D8B7B9698795E73296076131B39C6570B5FAFC8BB1001C003000ED4B40147C31E1CB4F07F86F4FD274F8BC8B0D2EDA3B4B68B716F2E28D4222E4E49C2803279AE5BF690FDA13C2FFB28FC08F157C47F1A5FAE9BE18F0769D2EA57F3F058A20E110123748EDB511739666503935DBD7F3FFF00F0775FFC14A6EBE2378AAD7F653F022DC6A4BA3DBAF89BC6CF66DBB6BC5135CC56AE361F962857ED2E43778C1FB845007E767ED49FB6BFC47FF82EEFEDF318F10DD6AEBA1DE5DCCBE1CF0D595C5BA269164AAC5523FB44B140650A033C9248A0FEF0E40E2BED1FF82B6F86354FF826AFFC1367E08F85EEA76B8F1478FF00599B5B874977B84B3D22CECEC23B68ED218525206D92F44A5F791334619B20AA2FD71FF06C4FFC10DACBF663F84F6DF1CFE28F86E683E22F8BEDA37D0B4BD448793C3F605083295C0DB2DC8624A302D1C5B509CBC8B5F2AFFC1E7FF1B2FECFF6CEF855E1AB01222681E0E6D41EEA3E1ADE4BBBF72151FAA3E34F53952188CF6CD007B6FF00C11CFF00E08F3E1FFF0082A47EC47A07C60F8D3E25F8816F1F8B6FAEA25F0EE89AAFF67E9D7F636D71E4AA4C42B48C8F25B9270CADF20C3018AFD81FD993F644F867FB197C3B8BC29F0BBC15A0F82F428B96834FB70AF70DFDF9A5399267FF006E4666F7AF1FFF00821E7C291F063FE091BFB3F689BE491A4F075A6AB219170CAF7C0DEBAE303A35C11F857BEFC68F8DFE10FD9DBE1E6A3E2DF1DF89746F09F86B4A5DF75A96A974B6F6F17A0DCC46589E028C9278009A00EA6B86FDA0FF00699F87FF00B28FC3D9BC55F123C61A0782FC3D030437BAADDAC08EE7A2203CBB1FEEA827DABF1C3FE0A3BFF0791785FC0173A9F867F672F0AFFC2617B1892DC78BB5C0F6FA6C526080F6F6B8124E01C106468C71F7581AFCB5F177857F6D2FF82DFF008B62F1A6BBE18F8A9F1660B2F2E3B19E2D2DADB45B58DB21D61D8896F1E48C9318C9C1CE4F3401FAB5FB6D7FC1E1FA368BAFEAFE1DFD9B3E1A5E7C479EC07CBE26D6527874E386019D2CE302778F90033BC272C3E5C633E05E1AFDA5BFE0AE7FF050C8B5BD3BC2E35CF0B687AD5FBDBBCF6BA15B78720D363FBA4417F2C624D8B8CE639E493DCD7DADFF000459FF0083731BF620F13378B7E33DCF82FC71A9DAE9D6D6FA0E890D9B5EDAE87718496E2EDA5994079CCB955C2108B1A90E7E50BFABCAA114003007000ED401FCE3FC30FF008355FF006AFF00DA86F46B1F1C7E26D8E937B79768F7B2EB3E22BAD7F513170641B236689F240C7FA429E06718C1FB43F67EFF00833BBF66BF875069B3F8EB5AF1C7C45D46CE467B856BDFECAB0BC076E11A28B32AA8218FCB30CEF39ED5FAD34500798FECE1FB17FC26FD907401A6FC31F877E11F04DBF962377D2B4D8E19EE00E9E6CD8F3253EEECC7DEBD3A8A2800A28A2800A28A2800A28A2800A28A2800A54FBD494A9F7A801F45145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500154BC47AD59F86FC3D7FA8EA53C76BA7D85BC973753487090C48A59D89F40A093F4ABB5F2D7FC168FF675F89BFB587FC1353E26F807E10DF8B1F1C7886CE186DD0DE7D93EDD6EB711BDCDA89780BE740B2C7F310A77ED620124007E167FC1BA3FF0492D07FE0A33FB5FF8BFE3ACFE21D53C35E0DF849E3CB4D5742D3AC9374FAA4E2E24BC8A27998E6348D520DC40666DE4657AD7F4D9AB6AD6BA0E95737D7D73059D95944D3DC5C4F208E282350599DD8E02A800924F000AFCA2FF00834DFF00603F8BDFB0FF00ECE5F14E6F8AFA1DE78464F17F882DCE9DA0DFDB986F2DCDB4524735C30FBBB253246136E4110939C115FAAFE26F0DD8F8CBC39A8691AA5B457BA66AB6D259DDDBCA329710C8A51D187A15241FAD007F25DFF0576FDBABE25FFC1727FE0A7169F0DFC20F6DAAF86B4DF135C7853E1F699A7CA7EC9788D72621A848C782D32AAC8D210024600E8A49FE93BFE096BFF04D0F03FF00C12D7F65BD27E1FF0084ADE1B8D5248D2E7C47AE1882DC6BD7FB7E795CF511824AC699F91001C9DCC7E75FD81FFE0D9DF829FF0004F6FDB547C68F0A788BC6DA9DF69A2EBFB0B48D46785AD748FB447244FF003AA0925C47232AEE3C75258F35FA3740057E2EEA5FF06B56ABF0A3FE0B15E05F8E1F0B7C4DE1DD3FE1669BE2E83C577FA26A4D7125F694D0B24CD0C079F3D65983ED2CEA630C33BF1CFED15140051451401F3F7FC1523F6DFD3FFE09DBFB09FC41F8AD79B24BDD074F30E8F6EEBB85DEA531F2AD6323FBBE6B296F44563DABF9F2FF00836C7FE09D779FF055AFDBBFC5DF1B3E2B6A571AE683E04D522D73598EE555FF00E128D5AE649268E298640F295E332BAED2ADB55318638FD43FF83BB7F68CF0FF00C29FF8250EA3E09D463173AEFC50D66C6C7498C4815A0169730DE4F7046725556258CE01E6E17353FF00C1A19E0FF0E683FF00047ED2F52D1EDD5358D73C4FAACDAF4BB30D2DCC7288A319EE05B2418EC096EF9A00FD4751B171D857F2ABFF00074D45AAF8E7FE0B25E21FED296F64F0EC763A46976705AA3094AA5B0380ACAAA73712CE15C161F330CE55947F5575FC82FF00C1482EA2F8A3FF0005D3F2EEE5D4CE87E23F8890CD13497054496D73ABB12F102711AE0ED04100F961B8CD007F5C7E00F0D5B782FC09A2E8F670FD9ECF49B082CE08B007951C71AA2AE07030001C57C73FF05E5FF82535F7FC15A7F63687C1BE1FD72DB41F18F867564D734296F64916C2E6511BC4F05C6C0C42B24870E158AB28E30581FB76A33D6803F333FE0903FF0006F27C3EFD93BF63FBEF0B7C74F87DF0EFE2078E75ED4E5BAD526981D674E8E35CADBFD985C4486061193B8AAEF249CB90142FE91784BC25A5F80BC2DA7E89A269F67A4E8FA4DBA5A59595A42B0C1690A28548D11400AAA00000F4AD1A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A54FBD494A9F7A801F451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001487A52D21E9400CA28A2800A28A2800A28A2800A28A2803F99FF00F83C4BE2DDD7C65FF828CF83BE1F69B72B7907807C336911D384A43CBA8EA33C921545FEF1852D493C718E7902BF5A7FE0DA0FD9F354FD9D3FE08FDF0E34FD6A2BBB5D4F5DB8D435C9ED2E6D1ADA5B3F3AEA4091956019BE44560D8C3060465704FE187FC164FE1A37ED61FF0007327893C01713A98BC5DE38F0EF865A581B98A29ADB4FB7619F550C73C7041EB5FD5CF86FC3B65E10F0ED8693A6DB4767A76976D1DA5ADBC63090451A844451E814003E940107C42F175B7C3FF00EB7AF5ECB1DBD9E8BA7CF7F3CB21C2C71C51B3B31F60149AFE52F5AF87B1FC6AFF8389BE1DFC37B18E79B45B0F16F8674A9ADEE4344AD69650DA4D7316CF98AA878EE0ED3CE5B0769CE3FA4CFF82A37C49B2F863FB0978FEE3509CDBDB6B56B0F879A40E10A0D42E23B22DB88206D59D989C1E14D7F3EBFF06C2D85C7ED25FF0005DABEF1F7D927BE4D2B4FD73C4335C4CEF3C9682E03DBA17908009FF4A099C0CF18039A00FEA2AA33D6A4A8CF5A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002953EF5252A7DEA007D14514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400521E94B487A500328A28A0028A28A0028A28A0028A28A00FE73754F86167F1BBFE0F569AC6EAF7ECD1E95E24B7D691962DE65974FD022BA48F07819680027B0C91CE0D7F4655FCD3FF00C14D7E215F7FC1327FE0EBDD17E2E6A96F1FF606B7A9693AD0724E0E9B7762BA5DE3F240DE9B6E8819C65573C57F4AE8E1D4107208C823BD007E6DFF00C1CEFF00B5EFFC32C7EC63E1C8E3B6B4BDB8F106AF747C99482D1F91A6DD79132A9EBE5DF4B6049208C7B906BE25FF0083213E0A5B4FABFC7CF88EF15C2CD047A67872C9981D82391A6B89C6EE8CD98EDB3C71C7F7AB8CFF0083D6BF697D4AE7F69FF85BF0B2CEEDE1D3B4BF08CDAC5EA44C57ED06F6F8288E4E70C01D3217031C1C1FA7EA37FC1B6BFB27FF00C327FF00C123BE1A5ADF7865FC33E29F18473F8975D8E7FF008F8BA96E26736F2C83F84FD8D6D804E0A80011BB75007DE1519EB525467AD00145145001451450014514500145145001451450014514500145145001451450014A9F7A92953EF5003E8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00290F4A5A43D2801945145001451450014514500145145007E477FC1D77FF049CF11FEDB9F003C3DF16BE1DE9D36ADE37F8510CE97FA65BAEEB9D534972247310EAD240EA5C20E595E5C6582A9F1FF00F821C7FC1D49E1BF12783346F853FB4CEA7178775BD1ED22B0D2BC6F364D9EA71451B0FF00898B962639F0883CD00AC8CC4B6C3CB7EE83287520804118208EB5FCA97FC1C19FF0437F1B7FC13EFE3B788FC7FF000F342BCD57E0778D6FDF5289F4DB47987856427CC6B4BAC29F2E00ECC626276150AA4EE4E4032AD2E47FC17B3FE0E38DD7B15F6A1E09F13789A48D4D8C4AC20F0FE9D132C4E778645578A042C48C169CE064815FD61DA5AC761691410A2C7142823445180AA06001F857E247FC19ABFB0249F0EFE0AF8C7F681D7AD1C6A5E3763E1DF0FBCC36BC56104A5AE5D57A8596658C67209FB39F940C337EDDD001519EB525467AD00145145001451450014514500145145001451450014514500145145001451450014A9F7A92953EF5003E8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A004D828D82968A004D828D82968A004D828D82968A004D828D82968A004D8291E15950AB2865618208C8229D45003638D6240AAA140E00030053A8A2800A4DA2968A004D828D82968A004D828D82968A004D828D82968A004D828D82968A004D828D82968A004D828D82968A004D828D82968A004D828D82968A004D8280B8A5A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803FFD9,0,'',1,0,5);
/*!40000 ALTER TABLE `master_report_sign_detail` ENABLE KEYS */;
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
  `VALUE` varchar(250) NOT NULL DEFAULT '',
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
INSERT INTO `master_setting` VALUES ('AccountLedgerId','',1),('AlertHighValuePayment','0',1),('AlertLocalDonations','0',1),('AllocateCCAmountWithGST','0',1),('AllowZeroValuedCashBankVoucherEntry','0',1),('AppealSubject','',1),('AttachVoucherFiles','',1),('BirthdaySubject','',1),('BranchReceiptModuleStatus','',1),('ConfirmAuthorizationVoucherEntry','0',1),('ConsiderBudgetNewProject','0',1),('ContributionFromLedgers','',1),('ContributionToLedgers','',1),('CostCeterMapping','0',1),('Country','1',1),('CreateBudgetDevNewProjects','0',1),('CreditBalance','',1),('Currency','à¤°',1),('CurrencyCode','',1),('CurrencyCodePosition','',1),('CurrencyName','',1),('CurrencyNegativePattern','8',1),('CurrencyNegativeSign','( )',1),('CurrencyPosition','Before',1),('CurrencyPositivePattern','3',1),('CustomizationForm','1',1),('DBRestoredOn','',1),('DBRestoredRemarks','',1),('DBUploadedOn','',1),('DecimalPlaces','2',1),('DecimalSeparator','.',1),('DepreciationLedgerId','',1),('DigitGrouping','3,2,2',1),('DisposalLedgerId','',1),('DonotAllowDuplicateChequeNumberInVoucherEntry','0',1),('DontAlertTakeBackupBeforeClose','0',1),('DuplicateCopyVoucherPrint','0',1),('EnableBookingAtPayment','0',1),('EnableCashBankJournal','0',1),('EnableCCMode','0',1),('EnableChequePrinting','0',1),('EnableCostCentreBudget','0',1),('EnableFDAdjustmentEntry','0',1),('EnableFlexiFD','0',1),('EnableGST','0',1),('EnableNegativeBalance','0',1),('EnableRefWiseRecPayment','0',1),('EnableSubLedgerBudget','',1),('EnableSubLedgerVouchers','',1),('EnableTransMode','',1),('EnableVoucherRegenerationDeletion','0',1),('EnableVoucherRegenerationInsert','0',1),('ExportVouchersBeforeClose','0',1),('GeneralateOpeningIEBalance','0',1),('GeneralateOpeningIEBalanceMode','0',1),('GroupingSeparator',',',1),('GSTEnabled','',1),('HighNaturedAmt','',1),('IncludeBudgetCCStrengthDetails','0',1),('IncludeBudgetStatistics','0',1),('IncludeGSTVendorInvoiceDetails','0',1),('IncludeIncomeLedgersInBudget','1',1),('InterAccountFromLedgers','',1),('InterAccountToLedgers','',1),('LCRef1','0',1),('LCRef2','',1),('LCRef3','',1),('LCRef4','',1),('LCRef5','',1),('LCRef6','',1),('LCRef7','',1),('Location','Primary',1),('MandatoryChequeNumberInVoucherEntry','0',1),('MaxCashLedgerAmountInReceiptsPayments','10000',1),('Months','',1),('NatuersInPaymentVoucherEntry','0',1),('NatuersInReceiptVoucherEntry','0',1),('PayrollPassword','',1),('Port','',1),('PrintVoucher','0',1),('ProductVersion','6.52.0.0',1),('ProxyAddress','',1),('ProxyAuthenticationUse','0',1),('ProxyPassword','',1),('ProxyPort','',1),('ProxyUse','0',1),('ProxyUserName','',1),('SenderId','',1),('ServerName','',1),('ShowAMCRenewalAlert','',1),('ShowBudgetApprovedAmountInMonthlyReport','0',1),('ShowBudgetLedgerActualBalance','2',1),('ShowBudgetLedgerSeparateReceiptPaymentActualBalance','',1),('ShowCashBankFDDetailLedgerInBudgetProposed','0',1),('ShowCCOpeningBalanceInReports','0',1),('ShowCr_DrAmountDrillingLedgerInAbstract','0',1),('ShowDepr','',1),('ShowInsuranceAlert','',1),('ShowMonthlySummaryDrillingReport','0',1),('ShowResetLedgerOpeningBalance','0',1),('SMSPassKey','',1),('SMSUserName','',1),('SMTPPassword','',1),('SMTPUsername','',1),('TDSBooking','',1),('TDSEnabled','0',1),('ThanksGivingSubject','',1),('ThirdParty','',1),('ThirdPartyMode','',1),('ThirdPartyURL','',1),('TransEntryMethod','',1),('TwoVouchersInOnePageVoucherPrint','',1),('UIDateFormat','dd/MM/yyyy',1),('UIDateSeparator','/',1),('UIDonationVoucherPrint','',1),('UIEnableBookingAtPayment','',1),('UIFilterMode','',1),('UIForeignBankAccount','',1),('UILanguage','en-US',1),('UIProjSelection','1',1),('UITDSEnabled','',1),('UIThemes','Office 2010 Silver',1),('UITransClose','1',1),('UITransGSTPan','',1),('UITransMode','',1),('UITransType','',1),('UpdaterDownloadBy','1',1),('VoucherEnforceGraceMode','',1),('VoucherGraceDays','',1),('VoucherGraceTmpDateFrom','',1),('VoucherGraceTmpDateTo','',1),('VoucherGraceTmpValidUpTo','',1),('WeddingdaySubject','',1),('IncludeIncomeLedgersInBudget','1',2),('IncludeIncomeLedgersInBudget','1',3);
/*!40000 ALTER TABLE `master_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_setting_cheque_printing`
--

DROP TABLE IF EXISTS `master_setting_cheque_printing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_setting_cheque_printing` (
  `BANK_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SETTING_NAME` varchar(50) NOT NULL DEFAULT '',
  `SETTING_VALUE` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`BANK_ID`,`SETTING_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_setting_cheque_printing`
--

LOCK TABLES `master_setting_cheque_printing` WRITE;
/*!40000 ALTER TABLE `master_setting_cheque_printing` DISABLE KEYS */;
INSERT INTO `master_setting_cheque_printing` VALUES (0,'AmountLeft','6.7'),(0,'AmountTop','1.5'),(0,'AmountWordsLeft','1.7'),(0,'AmountWordsTop','1.2'),(0,'DateDigitWidth','0.3'),(0,'DateLeft','6.5'),(0,'DateTop','0.3'),(0,'Height','3.10'),(0,'PartyNameLeft','0.15'),(0,'PartyNameTop','0.13'),(0,'Width','8');
/*!40000 ALTER TABLE `master_setting_cheque_printing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_state`
--

DROP TABLE IF EXISTS `master_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_state` (
  `STATE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `STATE_CODE` varchar(5) DEFAULT NULL,
  `STATE_NAME` varchar(100) NOT NULL DEFAULT '',
  `COUNTRY_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`STATE_ID`),
  UNIQUE KEY `UNQ_STATE_NAME` (`STATE_NAME`),
  KEY `FK_master_state_Country` (`COUNTRY_ID`),
  CONSTRAINT `FK_master_state_Country` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `master_country` (`COUNTRY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_state`
--

LOCK TABLES `master_state` WRITE;
/*!40000 ALTER TABLE `master_state` DISABLE KEYS */;
INSERT INTO `master_state` VALUES (1,NULL,' Andhra Pradesh ',1),(2,NULL,'Arunachal Pradesh AR ',1),(3,NULL,'Assam AS ',1),(4,NULL,' Bihar BR ',1),(5,NULL,' Chhattisgarh CT ',1),(6,NULL,' Goa GA ',1),(7,NULL,' Gujarat GJ ',1),(8,NULL,'Haryana HR ',1),(9,NULL,'Himachal Pradesh HP ',1),(10,NULL,' Jammu and Kashmir JK ',1),(11,NULL,' Jharkhand JH ',1),(12,NULL,'Karnataka KA ',1),(13,NULL,' Kerala KL ',1),(14,NULL,' Madhya Pradesh MP ',1),(15,NULL,'Maharashtra MH ',1),(16,NULL,' Manipur MN ',1),(17,NULL,' Meghalaya ML ',1),(18,NULL,'Mizoram MZ ',1),(19,NULL,' Nagaland NL ',1),(20,NULL,' Orissa OR ',1),(21,NULL,'Punjab PB ',1),(22,NULL,' Rajasthan RJ ',1),(23,NULL,' Sikkim SK ',1),(24,NULL,'Tamil Nadu TN ',1),(25,NULL,' Tripura TR ',1),(26,NULL,' Uttarakhand UT ',1),(27,NULL,'Uttar Pradesh UP ',1),(28,NULL,' West Bengal WB ',1),(29,NULL,'Andaman and Nicobar Islands AN ',1),(30,NULL,'Chandigarh CH ',1),(31,NULL,' Dadra and Nagar Haveli DN ',1),(32,NULL,'Daman and Diu DD ',1),(33,NULL,' Delhi DL ',1),(34,NULL,' Lakshadweep LD ',1),(35,NULL,' Puducherry PY ',1);
/*!40000 ALTER TABLE `master_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_statistics_type`
--

DROP TABLE IF EXISTS `master_statistics_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_statistics_type` (
  `STATISTICS_TYPE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `STATISTICS_TYPE` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`STATISTICS_TYPE_ID`),
  UNIQUE KEY `UNQ_STATISTICS_TYPE` (`STATISTICS_TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_statistics_type`
--

LOCK TABLES `master_statistics_type` WRITE;
/*!40000 ALTER TABLE `master_statistics_type` DISABLE KEYS */;
INSERT INTO `master_statistics_type` VALUES (5,'Boarding Boys'),(6,'Boarding Girls'),(2,'Brothers'),(11,'Bus Driver & Cleaner'),(14,'Catechists'),(9,'Domestic Staff'),(17,'Driver'),(18,'Guests'),(16,'Hostel Warden'),(8,'Non - Teaching Staff'),(13,'Office Staff'),(12,'Paying Guests'),(1,'Priest'),(3,'Sisters'),(4,'Students'),(10,'Support Staff'),(7,'Teaching Staff'),(15,'Touring Sisters');
/*!40000 ALTER TABLE `master_statistics_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_sub_ledger`
--

DROP TABLE IF EXISTS `master_sub_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_sub_ledger` (
  `SUB_LEDGER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SUB_LEDGER_NAME` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`SUB_LEDGER_ID`),
  UNIQUE KEY `UQ_SUB_LEDGER_NAME` (`SUB_LEDGER_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_sub_ledger`
--

LOCK TABLES `master_sub_ledger` WRITE;
/*!40000 ALTER TABLE `master_sub_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_sub_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_usermanual_feature`
--

DROP TABLE IF EXISTS `master_usermanual_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_usermanual_feature` (
  `FEATURE_CODE` varchar(25) NOT NULL DEFAULT '',
  `FEATURE_GROUP_CODE` varchar(25) NOT NULL DEFAULT '',
  `FEATURE_GROUP` varchar(50) NOT NULL DEFAULT '',
  `FEATURE` varchar(150) NOT NULL DEFAULT '',
  `LINK_FILENAME` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`FEATURE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_usermanual_feature`
--

LOCK TABLES `master_usermanual_feature` WRITE;
/*!40000 ALTER TABLE `master_usermanual_feature` DISABLE KEYS */;
INSERT INTO `master_usermanual_feature` VALUES ('PF001','PF','Pay & Get the Feature','Automatic Community Bakcup',''),('PF002','PF','Pay & Get the Feature','Audit Reports',''),('PF003','PF','Pay & Get the Feature','Online Budget Approval',''),('PF004','PF','Pay & Get the Feature','Attach Vouchers Files (Images and Pdf)',''),('UM001','UM','User Manual','Installation Procedure','Deployment Procedure.pdf'),('UM002','UM','User Manual','Finance','Finance.pdf'),('UM003','UM','User Manual','Finance - Multi Currency','Multi-Currency.pdf'),('UM004','UM','User Manual','Cost Centre','Cost Centre.pdf'),('UM005','UM','User Manual','Budget','Budget.pdf'),('UM006','UM','User Manual','Asset','Fixed Asset.pdf'),('UM007','UM','User Manual','Payroll','Payroll.pdf'),('UM008','UM','User Manual','Utilities','Utilities.pdf'),('UM009','UM','User Manual','Rendiconto Reports','Rendiconto.pdf'),('UM010','UM','User Manual','Training Manual','Training Manual.pdf');
/*!40000 ALTER TABLE `master_usermanual_feature` ENABLE KEYS */;
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
-- Table structure for table `multi_db_xml_configuration`
--

DROP TABLE IF EXISTS `multi_db_xml_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multi_db_xml_configuration` (
  `MULTI_DB_XML` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multi_db_xml_configuration`
--

LOCK TABLES `multi_db_xml_configuration` WRITE;
/*!40000 ALTER TABLE `multi_db_xml_configuration` DISABLE KEYS */;
INSERT INTO `multi_db_xml_configuration` VALUES ('<?xml version=\"1.0\" standalone=\"yes\"?>\r\n<MultiBranch>\r\n  <xs:schema id=\"MultiBranch\" xmlns=\"\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:msdata=\"urn:schemas-microsoft-com:xml-msdata\">\r\n    <xs:element name=\"MultiBranch\" msdata:IsDataSet=\"true\" msdata:UseCurrentLocale=\"true\">\r\n      <xs:complexType>\r\n        <xs:choice minOccurs=\"0\" maxOccurs=\"unbounded\">\r\n          <xs:element name=\"MultiBranch\" msdata:CaseSensitive=\"False\" msdata:Locale=\"en-GB\">\r\n            <xs:complexType>\r\n              <xs:sequence>\r\n                <xs:element name=\"Restore_Db\" type=\"xs:string\" minOccurs=\"0\" />\r\n                <xs:element name=\"MultipleLicenseKey\" type=\"xs:string\" minOccurs=\"0\" />\r\n                <xs:element name=\"RestoreDBName\" type=\"xs:string\" minOccurs=\"0\" />\r\n              </xs:sequence>\r\n            </xs:complexType>\r\n          </xs:element>\r\n        </xs:choice>\r\n      </xs:complexType>\r\n    </xs:element>\r\n  </xs:schema>\r\n  <MultiBranch>\r\n    <Restore_Db>acperp</Restore_Db>\r\n    <MultipleLicenseKey>AcMEERPLicense.xml</MultipleLicenseKey>\r\n    <RestoreDBName>acperp</RestoreDBName>\r\n  </MultiBranch>\r\n  <MultiBranch>\r\n    <Restore_Db>acperpgeneralatecor</Restore_Db>\r\n    <MultipleLicenseKey>AcMEERP638750525468547504.xml</MultipleLicenseKey>\r\n    <RestoreDBName>acperpgeneralatecor</RestoreDBName>\r\n  </MultiBranch>\r\n</MultiBranch>');
/*!40000 ALTER TABLE `multi_db_xml_configuration` ENABLE KEYS */;
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
-- Table structure for table `payroll_voucher`
--

DROP TABLE IF EXISTS `payroll_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payroll_voucher` (
  `PAYROLL_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SALARY_GROUP_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `COMPONENT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `FK_payroll_voucher_PayRollId` (`PAYROLL_ID`),
  KEY `FK_payroll_voucher_Component` (`COMPONENT_ID`),
  KEY `FK_payroll_voucher_ledger` (`LEDGER_ID`),
  KEY `FK_payroll_voucher` (`VOUCHER_ID`),
  CONSTRAINT `FK_payroll_voucher_Component` FOREIGN KEY (`COMPONENT_ID`) REFERENCES `prcomponent` (`COMPONENTID`),
  CONSTRAINT `FK_payroll_voucher_ledger` FOREIGN KEY (`LEDGER_ID`) REFERENCES `master_ledger` (`LEDGER_ID`),
  CONSTRAINT `FK_payroll_voucher_master` FOREIGN KEY (`VOUCHER_ID`) REFERENCES `voucher_master_trans` (`VOUCHER_ID`),
  CONSTRAINT `FK_payroll_voucher_PayRollId` FOREIGN KEY (`PAYROLL_ID`) REFERENCES `prcreate` (`PAYROLLID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_voucher`
--

LOCK TABLES `payroll_voucher` WRITE;
/*!40000 ALTER TABLE `payroll_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll_voucher` ENABLE KEYS */;
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
-- Table structure for table `portal_congregation_ledger`
--

DROP TABLE IF EXISTS `portal_congregation_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_congregation_ledger` (
  `CON_LEDGER_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CON_LEDGER_CODE` varchar(100) NOT NULL DEFAULT '',
  `CON_LEDGER_NAME` varchar(100) NOT NULL DEFAULT '',
  `CON_PARENT_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CON_MAIN_PARENT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`CON_LEDGER_ID`),
  UNIQUE KEY `CON_LEDGER_NAME` (`CON_LEDGER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_congregation_ledger`
--

LOCK TABLES `portal_congregation_ledger` WRITE;
/*!40000 ALTER TABLE `portal_congregation_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal_congregation_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_congregation_ledger_map`
--

DROP TABLE IF EXISTS `portal_congregation_ledger_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_congregation_ledger_map` (
  `CON_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`CON_LEDGER_ID`,`LEDGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_congregation_ledger_map`
--

LOCK TABLES `portal_congregation_ledger_map` WRITE;
/*!40000 ALTER TABLE `portal_congregation_ledger_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal_congregation_ledger_map` ENABLE KEYS */;
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
-- Table structure for table `pr_department`
--

DROP TABLE IF EXISTS `pr_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_department` (
  `DEPARTMENT_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DEPARTMENT` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`DEPARTMENT_ID`),
  UNIQUE KEY `UQ_DEPARTMENT` (`DEPARTMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_department`
--

LOCK TABLES `pr_department` WRITE;
/*!40000 ALTER TABLE `pr_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_name_title`
--

DROP TABLE IF EXISTS `pr_name_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_name_title` (
  `NAME_TITLE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME_TITLE` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`NAME_TITLE_ID`),
  UNIQUE KEY `UQ_NAME_TITLE` (`NAME_TITLE`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_name_title`
--

LOCK TABLES `pr_name_title` WRITE;
/*!40000 ALTER TABLE `pr_name_title` DISABLE KEYS */;
INSERT INTO `pr_name_title` VALUES (10,'Br'),(7,'Dr'),(8,'Fr'),(3,'Miss'),(1,'Mr'),(2,'Mrs'),(6,'Ms'),(4,'Shri'),(5,'Smt'),(9,'Sr');
/*!40000 ALTER TABLE `pr_name_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_payment_mode`
--

DROP TABLE IF EXISTS `pr_payment_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_payment_mode` (
  `PAYMENT_MODE_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PAYMENT_MODE` varchar(100) NOT NULL DEFAULT '',
  `IS_BANK` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`PAYMENT_MODE_ID`),
  UNIQUE KEY `uq_prpaymentmode` (`PAYMENT_MODE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_payment_mode`
--

LOCK TABLES `pr_payment_mode` WRITE;
/*!40000 ALTER TABLE `pr_payment_mode` DISABLE KEYS */;
INSERT INTO `pr_payment_mode` VALUES (1,'Cash',0),(2,'Bank',1),(3,'Cheque',1),(4,'Society',1),(5,'NEFT',1);
/*!40000 ALTER TABLE `pr_payment_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_staff_performance`
--

DROP TABLE IF EXISTS `pr_staff_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_staff_performance` (
  `STAFFID` int(10) unsigned NOT NULL DEFAULT '0',
  `ACCOUNT_YEAR_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `COMMENT_ON_PERFORMANCE` varchar(250) NOT NULL DEFAULT '',
  KEY `FK_pr_staff_performance_1` (`STAFFID`),
  KEY `FK_pr_staff_performance_2` (`ACCOUNT_YEAR_ID`),
  CONSTRAINT `FK_pr_staff_performance_1` FOREIGN KEY (`STAFFID`) REFERENCES `stfpersonal` (`STAFFID`),
  CONSTRAINT `FK_pr_staff_performance_2` FOREIGN KEY (`ACCOUNT_YEAR_ID`) REFERENCES `accounting_year` (`ACC_YEAR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_staff_performance`
--

LOCK TABLES `pr_staff_performance` WRITE;
/*!40000 ALTER TABLE `pr_staff_performance` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_staff_performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_work_location`
--

DROP TABLE IF EXISTS `pr_work_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_work_location` (
  `WORK_LOCATION_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `WORK_LOCATION` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`WORK_LOCATION_ID`),
  UNIQUE KEY `UQ_DEPARTMENT` (`WORK_LOCATION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_work_location`
--

LOCK TABLES `pr_work_location` WRITE;
/*!40000 ALTER TABLE `pr_work_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_work_location` ENABLE KEYS */;
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
  CONSTRAINT `FK_PRCOMPMONTH_1` FOREIGN KEY (`COMPONENTID`) REFERENCES `prcomponent` (`COMPONENTID`)
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
  `DONT_SHOWINBROWSE` int(10) unsigned DEFAULT NULL,
  `RELATEDCOMPONENTS` varchar(40) DEFAULT NULL,
  `ISEDITABLE` int(10) unsigned NOT NULL DEFAULT '0',
  `DONT_IMPORT_MODIFIED_VALUE_PREV_PR` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0- Import from previous PR 1- Donot Import modified value form previous PR',
  `ACCESS_FLAG` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PROCESS_TYPE_ID` int(10) unsigned DEFAULT NULL,
  `PROCESS_DATE` datetime DEFAULT NULL,
  `PAYABLE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1-Payable,0-not payable',
  `PROCESS_COMPONENT_TYPE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'None=0, NetPay=1, GrossWages=2, Deductions=3',
  PRIMARY KEY (`COMPONENTID`),
  UNIQUE KEY `unq_component` (`COMPONENT`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prcomponent`
--

LOCK TABLES `prcomponent` WRITE;
/*!40000 ALTER TABLE `prcomponent` DISABLE KEYS */;
INSERT INTO `prcomponent` VALUES (1,'BASIC','Basic Pay','0','0','Basicpay','','',0.00,1.00,'0',0,'0.00',0,0,1,0,0,NULL,0,0),(2,'DA','Dearness Allowance','0','0','','<BASIC>*30/100','<1>*30/100~0~0',0.00,1.00,'1',0,'Ãª1Ãª',1,1,1,0,0,NULL,0,0),(3,'HRA','House Rent Allowance','0','0','','<BASIC>*40/100','<1>*40/100~0~0',0.00,1.00,'1',0,'Ãª1Ãª',1,1,1,0,0,NULL,0,0),(4,'EPF','Employees Provident Fund','1','0','','(<BASIC>+<DA>)*12/100','(<1>+<2>)*12/100~0~0',0.00,1.00,'1',0,'Ãª1Ãª2Ãª',1,1,1,0,0,NULL,0,0),(5,'GROSS WAGES','GROSS SALARY','0','0','','<BASIC>+<DA>+<HRA>','<1>+<2>+<3>~0~0',0.00,1.00,'1',0,'Ãª1Ãª2Ãª3Ãª',1,1,1,0,0,NULL,0,2),(6,'DEDUCTIONS','DEDUCTIONS','1','0','','<EPF>','<4>~0~0',0.00,1.00,'1',0,'Ãª4Ãª',1,1,1,0,0,NULL,0,3),(7,'NETPAY','Net Payable Amount to the Employee','0','0','','<GROSS WAGES>-<DEDUCTIONS>','<5>-<6>~0~0',0.00,1.00,'1',0,'Ãª5Ãª6Ãª',1,1,1,0,0,NULL,0,1),(8,'NAME','Name of the Employee','2','0','Name','','',0.00,1.00,'0',0,'0.00',1,1,1,0,0,NULL,0,0),(9,'DESIGNATION','DESIGNATION','2','0','Designation','','',0.00,1.00,'0',0,'0.00',1,1,1,0,0,NULL,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `princome`
--

LOCK TABLES `princome` WRITE;
/*!40000 ALTER TABLE `princome` DISABLE KEYS */;
INSERT INTO `princome` VALUES (1,'Basicpay'),(3,'Earning1'),(4,'Earning2'),(5,'Earning3'),(2,'YOS');
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
  `IS_EXPENSE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Loan component or Expense component',
  PRIMARY KEY (`LOANID`),
  UNIQUE KEY `UK_LOAN_LOAN_NAME_1` (`LOANNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prloan`
--

LOCK TABLES `prloan` WRITE;
/*!40000 ALTER TABLE `prloan` DISABLE KEYS */;
INSERT INTO `prloan` VALUES (7,'Deduction1','Ded1',1),(8,'Deduction2','Ded2',1);
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
-- Table structure for table `project_budget_ledger`
--

DROP TABLE IF EXISTS `project_budget_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_budget_ledger` (
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`PROJECT_ID`,`LEDGER_ID`),
  KEY `FK_PBL_ledger_id` (`LEDGER_ID`),
  CONSTRAINT `FK_PBL_ledger_id` FOREIGN KEY (`LEDGER_ID`) REFERENCES `master_ledger` (`LEDGER_ID`),
  CONSTRAINT `FK_PBL_project_id` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_budget_ledger`
--

LOCK TABLES `project_budget_ledger` WRITE;
/*!40000 ALTER TABLE `project_budget_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_budget_ledger` ENABLE KEYS */;
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
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 - Costcentre for all Ledgers',
  `COST_CENTRE_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `TRANS_MODE` varchar(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`PROJECT_ID`,`LEDGER_ID`,`COST_CENTRE_ID`),
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
-- Table structure for table `project_import_mapped_ledger`
--

DROP TABLE IF EXISTS `project_import_mapped_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_import_mapped_ledger` (
  `IMPORT_LEDGER_NAME` varchar(100) NOT NULL DEFAULT '',
  `MAP_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`IMPORT_LEDGER_NAME`,`MAP_LEDGER_ID`),
  UNIQUE KEY `UNQ_IMPORT_LEDGER` (`IMPORT_LEDGER_NAME`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_import_mapped_ledger`
--

LOCK TABLES `project_import_mapped_ledger` WRITE;
/*!40000 ALTER TABLE `project_import_mapped_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_import_mapped_ledger` ENABLE KEYS */;
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
INSERT INTO `project_ledger` VALUES (1,1),(2,1),(1,2),(2,2),(1,3),(2,3),(1,4),(1,5),(1,6),(2,6),(1,7),(2,7),(1,8),(2,8),(1,9),(2,9),(1,10),(1,11),(2,11),(1,12),(2,12),(1,13),(2,13),(1,14),(2,14),(1,15),(2,15),(1,16),(1,17),(1,18),(1,20),(1,22),(1,24),(1,26),(1,28),(1,30),(1,32),(1,34),(1,36),(1,38),(1,40),(1,42),(1,44),(1,46),(1,48),(1,50),(1,52),(1,54),(1,56),(1,58),(1,60),(1,62),(1,64),(1,66),(1,68),(1,70),(1,72),(1,74),(1,76),(1,78),(1,80),(1,82),(1,84),(1,86),(1,88),(1,90),(1,92),(1,94),(1,96),(1,98),(1,100),(1,102),(1,104),(1,106),(1,108),(1,110),(1,112),(1,114),(1,116),(1,118),(1,120),(1,122),(1,124),(1,126),(1,128),(1,130),(1,132),(1,134),(1,136),(1,138),(1,140),(1,142),(1,144),(1,146),(1,148),(1,150),(1,152),(1,154),(1,156),(1,158),(1,160),(1,162),(1,164),(1,166),(1,168),(1,170),(1,172),(1,174),(1,176),(1,178),(1,180),(1,182),(1,184),(1,186),(1,188),(1,190),(1,192),(1,194),(1,196),(1,198),(1,200),(1,202),(1,204),(1,206),(1,208),(1,210),(1,212),(1,214),(1,216),(1,218),(1,220),(1,222),(1,224),(1,226),(1,228),(1,230),(1,232),(1,234),(1,236),(1,238),(1,240),(1,242),(1,244),(1,246),(1,248),(1,250),(1,252),(1,254),(1,256),(1,258),(1,260),(1,262),(1,264),(1,266),(1,268),(1,270),(1,272),(1,274),(1,276),(1,278),(1,280),(1,282),(1,284),(1,286),(1,288),(1,290),(1,292),(1,294),(1,296),(1,298),(1,300),(1,302),(1,304),(1,306),(1,308),(1,310),(1,312),(1,314),(1,316),(1,318),(1,320),(1,322),(1,324),(1,326),(1,328),(1,330),(1,332),(1,334),(1,336),(1,338),(1,340),(1,342),(1,344),(1,346),(1,348),(1,350),(1,352),(1,354),(1,356),(1,358),(1,360),(1,362),(1,364),(1,366),(1,368),(1,370),(1,372),(1,374),(1,376),(1,378),(1,380),(1,382),(1,384),(1,386),(1,388),(1,390),(1,392),(1,394),(1,396),(1,398),(1,400),(1,402),(1,404),(1,406),(1,408),(1,410),(1,412),(1,414),(1,416),(1,418),(1,420),(1,422),(1,424),(1,426),(1,428),(1,430),(1,432),(1,434),(1,436),(1,438),(1,440),(1,442),(1,444),(1,446),(1,448),(1,450),(1,452),(1,454),(1,456),(1,458),(1,460),(1,462),(1,464),(1,466),(1,470),(1,472),(1,474),(1,476),(1,478),(1,480),(1,482),(1,484),(1,486),(1,488),(1,490),(1,492),(1,494),(1,496),(1,498),(1,500),(1,502),(1,504),(1,506),(1,508),(1,510),(1,512),(1,514),(1,516),(1,518),(1,520),(1,522),(1,524),(1,526),(1,528),(1,530),(1,532),(1,534),(1,536),(1,538),(1,540),(1,542),(1,544),(1,546),(1,548),(1,550),(1,552),(1,554),(1,556),(1,558),(1,560),(1,562),(1,564),(1,566),(1,568),(1,570),(1,572),(1,574),(1,576),(1,578),(1,580),(1,582),(1,584),(1,603),(1,604),(1,606);
/*!40000 ALTER TABLE `project_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_ledger_applicable`
--

DROP TABLE IF EXISTS `project_ledger_applicable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_ledger_applicable` (
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `APPLICABLE_FROM` datetime DEFAULT NULL COMMENT 'Ledger Applicalbe from',
  `APPLICABLE_TO` datetime DEFAULT NULL COMMENT 'Ledger Applicalbe to'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_ledger_applicable`
--

LOCK TABLES `project_ledger_applicable` WRITE;
/*!40000 ALTER TABLE `project_ledger_applicable` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_ledger_applicable` ENABLE KEYS */;
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
-- Table structure for table `project_purpose_costcentre`
--

DROP TABLE IF EXISTS `project_purpose_costcentre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_purpose_costcentre` (
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CONTRIBUTION_ID` int(11) NOT NULL DEFAULT '0',
  `COST_CENTRE_ID` int(11) NOT NULL DEFAULT '0',
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `TRANS_MODE` varchar(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`PROJECT_ID`,`CONTRIBUTION_ID`,`COST_CENTRE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_purpose_costcentre`
--

LOCK TABLES `project_purpose_costcentre` WRITE;
/*!40000 ALTER TABLE `project_purpose_costcentre` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_purpose_costcentre` ENABLE KEYS */;
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
INSERT INTO `project_voucher` VALUES (1,1),(1,2),(1,3),(1,4),(2,1),(2,2),(2,3),(2,4);
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
  `COMPVALUE` varchar(350) NOT NULL DEFAULT '',
  `ACTUAL_COMPVALUE` varchar(350) NOT NULL DEFAULT '',
  `COMPORDER` int(10) unsigned DEFAULT NULL,
  `COMPONENTID` int(10) unsigned DEFAULT NULL,
  `TRANSACTIONDATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
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
-- Table structure for table `prstaff_statutory_compliance`
--

DROP TABLE IF EXISTS `prstaff_statutory_compliance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prstaff_statutory_compliance` (
  `STAFF_ID` int(10) unsigned DEFAULT NULL,
  `PAYROLL_ID` int(10) unsigned DEFAULT NULL,
  `STATUTORY_COMPLIANCE` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `UQ_PR_STAFF_ST` (`STAFF_ID`,`PAYROLL_ID`,`STATUTORY_COMPLIANCE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prstaff_statutory_compliance`
--

LOCK TABLES `prstaff_statutory_compliance` WRITE;
/*!40000 ALTER TABLE `prstaff_statutory_compliance` DISABLE KEYS */;
/*!40000 ALTER TABLE `prstaff_statutory_compliance` ENABLE KEYS */;
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
  `DEPARTMENT_ID` int(10) unsigned DEFAULT NULL,
  `WORK_LOCATION_ID` int(10) unsigned DEFAULT NULL,
  `STAFFORDER` int(10) unsigned DEFAULT NULL,
  `ACCOUNT_NUMBER` varchar(50) DEFAULT NULL,
  `ACCOUNT_IFSC_CODE` varchar(50) DEFAULT NULL,
  `ACCOUNT_BANK_BRANCH` varchar(150) DEFAULT NULL,
  `PAYMENT_MODE_ID` int(10) unsigned DEFAULT NULL,
  `PAYROLLID` int(10) unsigned DEFAULT NULL,
  `STAFFID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_GRP_Department` (`DEPARTMENT_ID`),
  KEY `FK_GRP_WorkLocation` (`WORK_LOCATION_ID`),
  CONSTRAINT `FK_GRP_Department` FOREIGN KEY (`DEPARTMENT_ID`) REFERENCES `pr_department` (`DEPARTMENT_ID`),
  CONSTRAINT `FK_GRP_WorkLocation` FOREIGN KEY (`WORK_LOCATION_ID`) REFERENCES `pr_work_location` (`WORK_LOCATION_ID`)
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
  `COMPVALUE` varchar(350) NOT NULL DEFAULT ''
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prtext`
--

LOCK TABLES `prtext` WRITE;
/*!40000 ALTER TABLE `prtext` DISABLE KEYS */;
INSERT INTO `prtext` VALUES (16,'Account_Number'),(7,'DateofAppointment'),(5,'DateofBirth'),(6,'DateofJoin'),(19,'Department/Unit'),(8,'Designation'),(1,'EmployeeNo'),(4,'Gender'),(15,'Increment Date'),(3,'KnownAs'),(12,'MAXWAGESBASIC'),(13,'MAXWAGESHRA'),(2,'Name'),(17,'PayingSalaryDays'),(9,'RetirementDate'),(11,'ScaleofPay'),(18,'TotalDaysInPayMonth'),(14,'UAN'),(20,'Work/Job Location');
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
INSERT INTO `restore_db` VALUES (1,'DBEMPTY');
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
  `NAME_TITLE_ID` int(10) unsigned DEFAULT NULL,
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
  `MIDDLE_NAME` varchar(100) DEFAULT NULL,
  `FATHER_HUSBAND_NAME` varchar(100) DEFAULT NULL,
  `MOTHER_NAME` varchar(100) DEFAULT NULL,
  `NO_OF_CHILDREN` varchar(10) DEFAULT NULL,
  `BLOOD_GROUP` varchar(10) DEFAULT NULL,
  `DEPARTMENT` varchar(100) DEFAULT NULL,
  `DEPARTMENT_ID` int(10) unsigned DEFAULT NULL,
  `WORK_LOCATION_ID` int(10) unsigned DEFAULT NULL,
  `PAYINCM1` int(10) unsigned zerofill DEFAULT NULL,
  `PAYINCM2` int(10) unsigned zerofill DEFAULT NULL,
  `ACCOUNT_NUMBER` varchar(45) DEFAULT NULL,
  `ACCOUNT_IFSC_CODE` varchar(50) DEFAULT NULL,
  `ACCOUNT_BANK_BRANCH` varchar(150) DEFAULT NULL,
  `YOS` float DEFAULT NULL,
  `THIRD_PARTY_ID` varchar(30) DEFAULT NULL,
  `LAST_DATE_OF_CONTRACT` datetime DEFAULT NULL,
  `ADDRESS` varchar(150) DEFAULT NULL,
  `TELEPHONE_NO` varchar(50) DEFAULT NULL,
  `MOBILE_NO` varchar(10) DEFAULT NULL,
  `EMERGENCY_CONTACT_NO` varchar(10) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `DEPENDENT1` varchar(150) DEFAULT NULL,
  `DEPENDENT2` varchar(150) DEFAULT NULL,
  `DEPENDENT3` varchar(150) DEFAULT NULL,
  `WORK_EXPERIENCE` varchar(150) DEFAULT NULL,
  `PAN_NO` varchar(20) DEFAULT NULL,
  `AADHAR_NO` varchar(20) DEFAULT NULL,
  `ESI_IP_NO` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`STAFFID`),
  UNIQUE KEY `UNI_EMPNO` (`EMPNO`),
  KEY `UNQ_THIRD_PARTY_ID` (`THIRD_PARTY_ID`),
  KEY `FK_Department` (`DEPARTMENT_ID`),
  KEY `FK_WorkLocation` (`WORK_LOCATION_ID`),
  KEY `FK_NameTitle` (`NAME_TITLE_ID`),
  CONSTRAINT `FK_Department` FOREIGN KEY (`DEPARTMENT_ID`) REFERENCES `pr_department` (`DEPARTMENT_ID`),
  CONSTRAINT `FK_NameTitle` FOREIGN KEY (`NAME_TITLE_ID`) REFERENCES `pr_name_title` (`NAME_TITLE_ID`),
  CONSTRAINT `FK_WorkLocation` FOREIGN KEY (`WORK_LOCATION_ID`) REFERENCES `pr_work_location` (`WORK_LOCATION_ID`)
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
  `UAN` varchar(50) DEFAULT NULL,
  `MAXWAGESHRA` decimal(15,2) DEFAULT NULL,
  `EARNING1` decimal(15,2) NOT NULL DEFAULT '0.00',
  `EARNING2` decimal(15,2) NOT NULL DEFAULT '0.00',
  `EARNING3` decimal(15,2) NOT NULL DEFAULT '0.00',
  `DEDUCTION1` decimal(15,2) NOT NULL DEFAULT '0.00',
  `DEDUCTION2` decimal(15,2) NOT NULL DEFAULT '0.00',
  `PAYING_SALARY_DAYS` decimal(15,2) NOT NULL DEFAULT '0.00',
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_category`
--

LOCK TABLES `stock_category` WRITE;
/*!40000 ALTER TABLE `stock_category` DISABLE KEYS */;
INSERT INTO `stock_category` VALUES (1,'Primary',1);
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
  `INCOME_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `EXPENSE_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
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
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Cash bank ledger',
  `TRANS_TYPE` int(10) unsigned NOT NULL DEFAULT '0',
  `NAME_ADDRESS` varchar(100) DEFAULT NULL,
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
  `DISPOSAL_LEDGER_ID` varchar(45) NOT NULL DEFAULT '0',
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
  `EMAIL` varchar(300) DEFAULT NULL,
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
  `GST_Id` int(10) unsigned NOT NULL DEFAULT '0',
  `GST_NO` varchar(50) DEFAULT NULL,
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
INSERT INTO `tds_nature_payment` VALUES (1,'Any other income',NULL,NULL,'195','',15,1),(13,'Income by Way of Long-Term Capital Gains Referred to in Section 115E',NULL,NULL,'195','',15,1),(14,'Income From Foreign Currency Bonds Or Shares of...',NULL,NULL,'196C','',22,1),(15,'Income From Foreign Currency,Bonds or Shares of Indian Company',NULL,NULL,'194LC','',23,1),(16,'Income From Foreign Exchange Assets Payable to an Indian Citizen',NULL,NULL,'195','',15,1),(19,'Insurance Commission',NULL,NULL,'194D',' ',25,1),(20,'Interest on 8% Savings(Taxable) Bonds, 2003',NULL,NULL,'193','',16,1),(21,'Interest on Infrastructure Debt Fund',NULL,NULL,'194LD','',26,1),(22,'Interest on Securites',NULL,NULL,'193','',16,1),(23,'Interest other than Interest on Securites',NULL,NULL,'194A','',27,1),(24,'Interest Payable by Government or Indian concern in Foreign Currency',NULL,NULL,'195','',15,1),(25,'Long-Term Capital Gains[Not Being Covered by Sec 10(33)(36)(38)]',NULL,NULL,'195','',15,1),(27,'Payment of Compensation on Acquisition of Immovable Property',NULL,NULL,'194LA','',28,1),(28,'Payment of Transfer of Certain Immovable property other than Agricultural Land',NULL,NULL,'194IA','',29,1),(29,'Payments in Respect of Deposits Under NSS',NULL,NULL,'194EE','',30,1),(30,'Payments in Respect of Units to an Offshore Fund',NULL,NULL,'196B','',31,1),(31,'Payments on account of repurchase of units of MF or UTI to a resident / non-resident',NULL,NULL,'194F','',32,1),(32,'Payments to Contractors(Other than Advertisements)',NULL,NULL,'94C','',33,1),(38,'Payment \\Royalty on Acquisition of Software U/s 194J',NULL,NULL,'194J',' ',26,1),(39,'Rent of Land, Building Or Furniture',NULL,NULL,'194I','',35,1),(40,'Rent of Plant, Machinery Or Equipment',NULL,NULL,'194I','',35,1),(41,'Royalty(F) Agreement is Made After May 31, 1997 Before June 1, 2005',NULL,NULL,'195','',15,1),(42,'Royalty(F) Agreement is Made Before June 1, 1997',NULL,NULL,'195','',15,1),(43,'Royalty(F) Agreement is Made on Or After June 1, 2005',NULL,NULL,'195','',15,1),(44,'Royalty(G) Agreement is Made After March 31, 1961 Before April 1, 1976',NULL,NULL,'195','',15,1),(45,'Royalty(G) Agreement is Made After March 31, 1976 Before June 1,1997',NULL,NULL,'195','',15,1),(46,'Royalty(G) Agreement is Made After March 31, 1997 Before April 1, 2005',NULL,NULL,'195','',15,1),(47,'Royalty(G) Agreement is Made on Or After June 1,2005',NULL,NULL,'195','',15,1),(48,'Short-Term Capital Gains U/s 111A',NULL,NULL,'195','',15,1),(49,'Winnings From Horse Race',NULL,NULL,'194BB','',36,1),(50,'Winnings From Lotteries and CrossWord Puzzles',NULL,NULL,'194B','',37,1),(51,'horse race in Bankgalore',NULL,NULL,'0908','',26,0),(52,'Horse Race in Bangalore',NULL,NULL,'456','',25,0),(53,'Any Other Interest on Securities As Per Sec.193',NULL,NULL,'193','',16,1),(54,'Any Remuneration Or Commission Paid to Director of the Company',NULL,NULL,'194J','',17,1),(55,'Commission on Sale of Lottery Tickets',NULL,NULL,'194G','',18,1),(56,'Commission or Brokerage',NULL,NULL,'194H','',19,1),(57,'Deemed Dividend  U/s  2(22)(E)',NULL,NULL,'194','',20,1),(58,'Fees for Prfessional Or Technical Services',NULL,NULL,'194J',' ',17,1),(59,'Fees for Tech. Services Agreement Is Made After Feb 29, 1964 Before April 1, 1976',NULL,NULL,'195','',15,1),(60,'Fees for Tech. Services Agreement Is Made After Mar 31, 1976 Before Jun 1, 1997',NULL,NULL,'195','',15,1),(61,'Fees for Tech Services Agreement Is Made After May 31, 1997 Before June 1, 2005',NULL,NULL,'195','',15,1),(62,'Fees for Tech Services Agreement Is Made on Or After June 1, 2005',NULL,NULL,'195','',15,1),(63,'Income by Way of Interest on Certain Bonds and Government Securities',NULL,NULL,'194LD','',21,1),(64,'Income of Foreign Institutional Investors From....',NULL,NULL,'196D','',24,1),(65,'Payments to Non-Resident Sportsmen/Sports Assoc...',NULL,NULL,'194E','',34,1),(66,'Payments to Contractors(Advertisement Contractors)',NULL,NULL,'194C','',33,1),(67,'Payments to Sub-Contractors',NULL,NULL,'194C','',33,1),(68,'Payments to Transporters',NULL,NULL,'194C','',33,1),(69,'Payments to Transporters (Sub-Contractors)',NULL,NULL,'194C','',33,1),(70,'Other Sums Payable to A Non-Resident',NULL,NULL,'195','',15,1),(71,'Income in Respect of Units of Non-Residents',NULL,NULL,'196','',38,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=40649 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_policy`
--

LOCK TABLES `tds_policy` WRITE;
/*!40000 ALTER TABLE `tds_policy` DISABLE KEYS */;
INSERT INTO `tds_policy` VALUES (4340,3,19,'2004-04-01 00:00:00'),(4341,3,19,'2007-04-01 00:00:00'),(4342,3,19,'2009-04-01 00:00:00'),(4343,3,19,'2010-07-01 00:00:00'),(4344,3,20,'2008-04-01 00:00:00'),(4345,3,20,'2009-04-01 00:00:00'),(4346,3,22,'2004-04-01 00:00:00'),(4347,3,22,'2007-04-01 00:00:00'),(4348,3,22,'2009-04-01 00:00:00'),(4349,3,22,'2012-07-01 00:00:00'),(4350,3,23,'2004-04-01 00:00:00'),(4351,3,23,'2007-04-01 00:00:00'),(4352,3,23,'2009-04-01 00:00:00'),(4353,3,27,'2004-10-01 00:00:00'),(4354,3,27,'2007-04-01 00:00:00'),(4355,3,27,'2009-04-01 00:00:00'),(4356,3,27,'2012-07-01 00:00:00'),(4357,3,28,'2013-06-01 00:00:00'),(4358,3,29,'2004-04-01 00:00:00'),(4359,3,29,'2007-04-01 00:00:00'),(4360,3,29,'2009-04-01 00:00:00'),(4361,3,31,'2004-04-01 00:00:00'),(4362,3,31,'2007-04-01 00:00:00'),(4363,3,31,'2009-04-01 00:00:00'),(4364,3,32,'2004-04-01 00:00:00'),(4365,3,32,'2007-04-01 00:00:00'),(4366,3,32,'2009-04-01 00:00:00'),(4367,3,32,'2009-10-01 00:00:00'),(4368,3,32,'2010-07-01 00:00:00'),(4369,3,38,'2012-07-01 00:00:00'),(4370,3,39,'2004-04-01 00:00:00'),(4371,3,39,'2007-04-01 00:00:00'),(4372,3,39,'2007-06-01 00:00:00'),(4373,3,39,'2009-04-01 00:00:00'),(4374,3,39,'2009-10-01 00:00:00'),(4375,3,39,'2010-07-01 00:00:00'),(4376,3,40,'2007-06-01 00:00:00'),(4377,3,40,'2009-04-01 00:00:00'),(4378,3,40,'2009-10-01 00:00:00'),(4379,3,40,'2010-07-01 00:00:00'),(4380,3,49,'2004-04-01 00:00:00'),(4381,3,49,'2007-04-01 00:00:00'),(4382,3,49,'2009-04-01 00:00:00'),(4383,3,49,'2010-07-01 00:00:00'),(4384,3,50,'2004-04-01 00:00:00'),(4385,3,50,'2007-04-01 00:00:00'),(4386,3,50,'2009-04-01 00:00:00'),(4387,3,50,'2010-07-01 00:00:00'),(4388,3,53,'2004-04-01 00:00:00'),(4389,3,53,'2007-04-01 00:00:00'),(4390,3,53,'2008-04-01 00:00:00'),(4391,3,53,'2009-04-01 00:00:00'),(4392,3,53,'2012-04-01 00:00:00'),(4393,3,54,'2012-07-01 00:00:00'),(4394,3,55,'2007-04-01 00:00:00'),(4395,3,55,'2009-04-01 00:00:00'),(4396,3,56,'2004-04-01 00:00:00'),(4397,3,56,'2007-04-01 00:00:00'),(4398,3,56,'2007-06-01 00:00:00'),(4399,3,56,'2009-04-01 00:00:00'),(4400,3,56,'2010-07-01 00:00:00'),(4401,3,57,'2007-04-01 00:00:00'),(4402,3,57,'2009-04-01 00:00:00'),(4403,3,58,'2004-04-01 00:00:00'),(4404,3,58,'2007-04-01 00:00:00'),(4405,3,58,'2007-06-01 00:00:00'),(4406,3,58,'2009-04-01 00:00:00'),(4407,3,58,'2010-07-01 00:00:00'),(4408,3,66,'2004-04-01 00:00:00'),(4409,3,66,'2007-04-01 00:00:00'),(4410,3,66,'2009-04-01 00:00:00'),(4411,3,66,'2009-10-01 00:00:00'),(4412,3,66,'2010-07-01 00:00:00'),(4413,3,67,'2004-04-01 00:00:00'),(4414,3,67,'2007-04-01 00:00:00'),(4415,3,67,'2009-04-01 00:00:00'),(4416,3,67,'2009-10-01 00:00:00'),(4417,3,67,'2010-07-01 00:00:00'),(4418,3,68,'2009-10-01 00:00:00'),(4419,3,68,'2010-04-01 00:00:00'),(4420,3,68,'2010-07-01 00:00:00'),(4421,3,69,'2009-10-01 00:00:00'),(4422,3,69,'2010-04-01 00:00:00'),(4423,3,69,'2010-07-01 00:00:00'),(8120,4,13,'2009-04-01 00:00:00'),(8121,4,19,'2004-04-01 00:00:00'),(8122,4,19,'2007-04-01 00:00:00'),(8123,4,19,'2010-07-01 00:00:00'),(8124,4,20,'2008-04-01 00:00:00'),(8125,4,20,'2010-07-01 00:00:00'),(8126,4,22,'2004-04-01 00:00:00'),(8127,4,22,'2007-04-01 00:00:00'),(8128,4,22,'2009-04-01 00:00:00'),(8129,4,22,'2012-07-01 00:00:00'),(8130,4,23,'2004-04-01 00:00:00'),(8131,4,23,'2007-04-01 00:00:00'),(8132,4,23,'2009-04-01 00:00:00'),(8133,4,27,'2004-10-01 00:00:00'),(8134,4,27,'2007-04-01 00:00:00'),(8135,4,27,'2009-04-01 00:00:00'),(8136,4,27,'2012-07-01 00:00:00'),(8137,4,28,'2013-06-01 00:00:00'),(8138,4,29,'2004-04-01 00:00:00'),(8139,4,29,'2007-04-01 00:00:00'),(8140,4,29,'2009-04-01 00:00:00'),(8141,4,31,'2004-04-01 00:00:00'),(8142,4,31,'2007-04-01 00:00:00'),(8143,4,31,'2009-04-01 00:00:00'),(8144,4,32,'2004-04-01 00:00:00'),(8145,4,32,'2007-04-01 00:00:00'),(8146,4,32,'2009-04-01 00:00:00'),(8147,4,32,'2009-10-01 00:00:00'),(8148,4,32,'2010-07-01 00:00:00'),(8149,4,38,'2012-07-01 00:00:00'),(8150,4,39,'2004-04-01 00:00:00'),(8151,4,39,'2007-04-01 00:00:00'),(8152,4,39,'2007-06-01 00:00:00'),(8153,4,39,'2009-04-01 00:00:00'),(8154,4,39,'2009-10-01 00:00:00'),(8155,4,39,'2010-07-01 00:00:00'),(8156,4,40,'2007-06-01 00:00:00'),(8157,4,40,'2009-04-01 00:00:00'),(8158,4,40,'2009-10-01 00:00:00'),(8159,4,40,'2010-07-01 00:00:00'),(8160,4,49,'2004-04-01 00:00:00'),(8161,4,49,'2004-07-01 00:00:00'),(8162,4,49,'2007-04-01 00:00:00'),(8163,4,49,'2009-04-01 00:00:00'),(8164,4,50,'2004-04-01 00:00:00'),(8165,4,50,'2007-04-01 00:00:00'),(8166,4,50,'2010-07-01 00:00:00'),(8167,4,53,'2004-04-01 00:00:00'),(8168,4,53,'2007-04-01 00:00:00'),(8169,4,53,'2008-04-01 00:00:00'),(8170,4,53,'2009-04-01 00:00:00'),(8171,4,54,'2012-07-01 00:00:00'),(8172,4,55,'2004-04-01 00:00:00'),(8173,4,55,'2007-04-01 00:00:00'),(8174,4,55,'2009-04-01 00:00:00'),(8175,4,56,'2004-04-01 00:00:00'),(8176,4,56,'2007-04-01 00:00:00'),(8177,4,56,'2007-06-01 00:00:00'),(8178,4,56,'2009-04-01 00:00:00'),(8179,4,56,'2010-07-01 00:00:00'),(8180,4,57,'2007-04-01 00:00:00'),(8181,4,57,'2009-04-01 00:00:00'),(8182,4,58,'2004-04-01 00:00:00'),(8183,4,58,'2007-04-01 00:00:00'),(8184,4,58,'2007-06-01 00:00:00'),(8185,4,58,'2009-04-01 00:00:00'),(8186,4,58,'2010-07-01 00:00:00'),(8187,4,66,'2004-04-01 00:00:00'),(8188,4,66,'2007-04-01 00:00:00'),(8189,4,66,'2009-04-01 00:00:00'),(8190,4,66,'2009-10-01 00:00:00'),(8191,4,66,'2010-07-01 00:00:00'),(8192,4,67,'2004-04-01 00:00:00'),(8193,4,67,'2007-04-01 00:00:00'),(8194,4,67,'2009-04-01 00:00:00'),(8195,4,67,'2009-10-01 00:00:00'),(8196,4,68,'2009-10-01 00:00:00'),(8197,4,68,'2010-04-01 00:00:00'),(8198,4,68,'2010-07-01 00:00:00'),(8199,4,69,'2009-10-01 00:00:00'),(8200,4,69,'2010-07-01 00:00:00'),(13627,5,1,'2008-04-01 00:00:00'),(13628,5,1,'2011-04-01 00:00:00'),(13629,5,1,'2012-04-01 00:00:00'),(13630,5,1,'2013-04-01 00:00:00'),(13631,5,13,'2008-04-01 00:00:00'),(13632,5,13,'2011-04-01 00:00:00'),(13633,5,13,'2012-04-01 00:00:00'),(13634,5,13,'2013-04-01 00:00:00'),(13635,5,14,'2004-04-01 00:00:00'),(13636,5,14,'2007-04-01 00:00:00'),(13637,5,15,'2012-07-01 00:00:00'),(13638,5,16,'2008-04-01 00:00:00'),(13639,5,16,'2011-04-01 00:00:00'),(13640,5,16,'2012-04-01 00:00:00'),(13641,5,16,'2013-04-01 00:00:00'),(13642,5,21,'2011-06-01 00:00:00'),(13643,5,24,'2008-04-01 00:00:00'),(13644,5,24,'2011-04-01 00:00:00'),(13645,5,24,'2012-04-01 00:00:00'),(13646,5,24,'2013-04-01 00:00:00'),(13647,5,25,'2008-04-01 00:00:00'),(13648,5,25,'2011-04-01 00:00:00'),(13649,5,25,'2012-04-01 00:00:00'),(13650,5,25,'2013-04-01 00:00:00'),(13651,5,29,'2011-04-01 00:00:00'),(13652,5,29,'2013-04-01 00:00:00'),(13653,5,30,'2004-04-01 00:00:00'),(13654,5,30,'2007-04-01 00:00:00'),(13655,5,30,'2012-04-01 00:00:00'),(13656,5,41,'2008-04-01 00:00:00'),(13657,5,41,'2011-04-01 00:00:00'),(13658,5,41,'2012-04-01 00:00:00'),(13659,5,42,'2008-04-01 00:00:00'),(13660,5,42,'2011-04-01 00:00:00'),(13661,5,42,'2012-04-01 00:00:00'),(13662,5,43,'0511-04-01 00:00:00'),(13663,5,43,'2008-04-01 00:00:00'),(13664,5,43,'2011-04-01 00:00:00'),(13665,5,43,'2012-04-01 00:00:00'),(13666,5,44,'2008-04-01 00:00:00'),(13667,5,44,'2011-04-01 00:00:00'),(13668,5,44,'2012-04-01 00:00:00'),(13669,5,44,'2013-04-01 00:00:00'),(13670,5,45,'2008-04-01 00:00:00'),(13671,5,45,'2011-04-01 00:00:00'),(13672,5,45,'2012-04-01 00:00:00'),(13673,5,45,'2013-04-01 00:00:00'),(13674,5,46,'2008-04-01 00:00:00'),(13675,5,46,'2011-04-01 00:00:00'),(13676,5,46,'2012-04-01 00:00:00'),(13677,5,47,'2008-04-01 00:00:00'),(13678,5,47,'2012-04-01 00:00:00'),(13679,5,48,'2008-04-01 00:00:00'),(13680,5,48,'2011-04-01 00:00:00'),(13681,5,48,'2012-04-01 00:00:00'),(13682,5,48,'2013-04-01 00:00:00'),(13683,5,49,'2007-04-01 00:00:00'),(13684,5,49,'2011-04-01 00:00:00'),(13685,5,49,'2012-04-01 00:00:00'),(13686,5,49,'2013-04-01 00:00:00'),(13687,5,50,'2007-04-01 00:00:00'),(13688,5,50,'2011-04-01 00:00:00'),(13689,5,50,'2012-04-01 00:00:00'),(13690,5,50,'2013-04-01 00:00:00'),(13691,5,55,'2007-04-01 00:00:00'),(13692,5,55,'2011-04-01 00:00:00'),(13693,5,55,'2012-04-01 00:00:00'),(13694,5,55,'2013-04-01 00:00:00'),(13695,5,59,'2008-04-01 00:00:00'),(13696,5,59,'2011-04-01 00:00:00'),(13697,5,59,'2012-04-01 00:00:00'),(13698,5,59,'2013-04-01 00:00:00'),(13699,5,60,'2008-04-01 00:00:00'),(13700,5,60,'2011-04-01 00:00:00'),(13701,5,60,'2012-04-01 00:00:00'),(13702,5,60,'2013-04-01 00:00:00'),(13703,5,61,'2008-04-01 00:00:00'),(13704,5,61,'2011-04-01 00:00:00'),(13705,5,61,'2012-04-01 00:00:00'),(13706,5,62,'2008-04-01 00:00:00'),(13707,5,62,'2011-04-01 00:00:00'),(13708,5,62,'2012-04-01 00:00:00'),(13709,5,63,'2013-06-01 00:00:00'),(13710,5,65,'2004-04-01 00:00:00'),(13711,5,65,'2007-04-01 00:00:00'),(13712,5,65,'2011-04-01 00:00:00'),(13713,5,65,'2012-04-01 00:00:00'),(13714,5,65,'2012-07-01 00:00:00'),(13715,5,65,'2013-04-01 00:00:00'),(13716,5,70,'2004-04-01 00:00:00'),(13717,5,70,'2007-04-01 00:00:00'),(13718,5,70,'2011-04-01 00:00:00'),(13719,5,70,'2012-04-01 00:00:00'),(13720,5,71,'2004-04-01 00:00:00'),(13721,5,71,'2007-04-01 00:00:00'),(13722,5,71,'2011-04-01 00:00:00'),(13723,5,71,'2012-04-01 00:00:00'),(17135,6,19,'2004-04-01 00:00:00'),(17136,6,19,'2007-04-01 00:00:00'),(17137,6,19,'2009-04-01 00:00:00'),(17138,6,19,'2010-07-01 00:00:00'),(17139,6,20,'2008-04-01 00:00:00'),(17140,6,20,'2009-04-01 00:00:00'),(17141,6,22,'2004-04-01 00:00:00'),(17142,6,22,'2007-04-01 00:00:00'),(17143,6,22,'2009-04-01 00:00:00'),(17144,6,22,'2012-07-01 00:00:00'),(17145,6,23,'2004-04-01 00:00:00'),(17146,6,23,'2007-04-01 00:00:00'),(17147,6,23,'2009-04-01 00:00:00'),(17148,6,27,'2004-10-01 00:00:00'),(17149,6,27,'2007-04-01 00:00:00'),(17150,6,27,'2009-04-01 00:00:00'),(17151,6,27,'2012-07-01 00:00:00'),(17152,6,28,'2013-06-01 00:00:00'),(17153,6,29,'2007-04-01 00:00:00'),(17154,6,29,'2009-04-01 00:00:00'),(17155,6,31,'2004-04-01 00:00:00'),(17156,6,31,'2007-04-01 00:00:00'),(17157,6,31,'2009-04-01 00:00:00'),(17158,6,32,'2004-04-01 00:00:00'),(17159,6,32,'2007-04-01 00:00:00'),(17160,6,32,'2009-04-01 00:00:00'),(17161,6,32,'2009-10-01 00:00:00'),(17162,6,32,'2010-07-01 00:00:00'),(17163,6,38,'2012-07-01 00:00:00'),(17164,6,39,'2004-04-01 00:00:00'),(17165,6,39,'2007-04-01 00:00:00'),(17166,6,39,'2009-04-01 00:00:00'),(17167,6,39,'2010-07-01 00:00:00'),(17168,6,39,'2012-10-01 00:00:00'),(17169,6,40,'2007-06-01 00:00:00'),(17170,6,40,'2009-04-01 00:00:00'),(17171,6,40,'2009-10-01 00:00:00'),(17172,6,40,'2010-07-01 00:00:00'),(17173,6,49,'2004-04-01 00:00:00'),(17174,6,49,'2007-04-01 00:00:00'),(17175,6,49,'2009-04-01 00:00:00'),(17176,6,49,'2010-07-01 00:00:00'),(17177,6,50,'2004-04-01 00:00:00'),(17178,6,50,'2007-04-01 00:00:00'),(17179,6,50,'2009-04-01 00:00:00'),(17180,6,50,'2010-07-01 00:00:00'),(17181,6,53,'2004-04-01 00:00:00'),(17182,6,53,'2007-04-01 00:00:00'),(17183,6,53,'2008-04-01 00:00:00'),(17184,6,53,'2009-04-01 00:00:00'),(17185,6,54,'2012-07-01 00:00:00'),(17186,6,55,'2004-04-01 00:00:00'),(17187,6,55,'2007-04-01 00:00:00'),(17188,6,55,'2009-04-01 00:00:00'),(17189,6,56,'2004-04-01 00:00:00'),(17190,6,56,'2007-04-01 00:00:00'),(17191,6,56,'2007-06-01 00:00:00'),(17192,6,56,'2009-04-01 00:00:00'),(17193,6,56,'2010-07-01 00:00:00'),(17194,6,57,'2007-04-01 00:00:00'),(17195,6,57,'2009-04-01 00:00:00'),(17196,6,58,'2004-04-01 00:00:00'),(17197,6,58,'2007-04-01 00:00:00'),(17198,6,58,'2007-06-01 00:00:00'),(17199,6,58,'2009-04-01 00:00:00'),(17200,6,58,'2010-07-01 00:00:00'),(17201,6,66,'2004-04-01 00:00:00'),(17202,6,66,'2007-04-01 00:00:00'),(17203,6,66,'2009-04-01 00:00:00'),(17204,6,66,'2009-10-01 00:00:00'),(17205,6,66,'2010-07-01 00:00:00'),(17206,6,67,'2004-04-01 00:00:00'),(17207,6,67,'2007-04-01 00:00:00'),(17208,6,67,'2009-04-01 00:00:00'),(17209,6,67,'2009-10-01 00:00:00'),(17210,6,67,'2010-07-01 00:00:00'),(17211,6,68,'2009-10-01 00:00:00'),(17212,6,68,'2010-04-01 00:00:00'),(17213,6,68,'2010-07-01 00:00:00'),(17214,6,69,'2009-10-01 00:00:00'),(17215,6,69,'2010-04-01 00:00:00'),(17216,6,69,'2010-07-01 00:00:00'),(22167,7,19,'2004-04-01 00:00:00'),(22168,7,19,'2005-04-01 00:00:00'),(22169,7,19,'2007-04-01 00:00:00'),(22170,7,19,'2009-04-01 00:00:00'),(22171,7,19,'2010-07-01 00:00:00'),(22172,7,20,'2008-04-01 00:00:00'),(22173,7,20,'2009-04-01 00:00:00'),(22174,7,22,'2004-04-01 00:00:00'),(22175,7,22,'2005-04-01 00:00:00'),(22176,7,22,'2007-04-01 00:00:00'),(22177,7,22,'2009-04-01 00:00:00'),(22178,7,22,'2012-07-01 00:00:00'),(22179,7,23,'2004-04-01 00:00:00'),(22180,7,23,'2005-04-01 00:00:00'),(22181,7,23,'2007-04-01 00:00:00'),(22182,7,23,'2009-04-01 00:00:00'),(22183,7,27,'2004-10-01 00:00:00'),(22184,7,27,'2005-04-01 00:00:00'),(22185,7,27,'2007-04-01 00:00:00'),(22186,7,27,'2009-04-01 00:00:00'),(22187,7,27,'2012-07-01 00:00:00'),(22188,7,28,'2013-06-01 00:00:00'),(22189,7,29,'2004-04-01 00:00:00'),(22190,7,29,'2005-04-01 00:00:00'),(22191,7,29,'2007-04-01 00:00:00'),(22192,7,29,'2009-04-01 00:00:00'),(22193,7,31,'2004-04-01 00:00:00'),(22194,7,31,'2005-04-01 00:00:00'),(22195,7,31,'2007-04-01 00:00:00'),(22196,7,31,'2009-04-01 00:00:00'),(22197,7,32,'2004-04-01 00:00:00'),(22198,7,32,'2005-04-01 00:00:00'),(22199,7,32,'2007-04-01 00:00:00'),(22200,7,32,'2009-04-01 00:00:00'),(22201,7,32,'2009-10-01 00:00:00'),(22202,7,32,'2010-07-01 00:00:00'),(22203,7,38,'2012-07-01 00:00:00'),(22204,7,39,'2004-04-01 00:00:00'),(22205,7,39,'2005-04-01 00:00:00'),(22206,7,39,'2007-04-01 00:00:00'),(22207,7,39,'2009-04-01 00:00:00'),(22208,7,39,'2009-10-01 00:00:00'),(22209,7,39,'2010-07-01 00:00:00'),(22210,7,40,'2007-06-01 00:00:00'),(22211,7,40,'2009-04-01 00:00:00'),(22212,7,40,'2009-10-01 00:00:00'),(22213,7,40,'2010-07-01 00:00:00'),(22214,7,49,'2004-04-01 00:00:00'),(22215,7,49,'2005-04-01 00:00:00'),(22216,7,49,'2007-04-01 00:00:00'),(22217,7,49,'2009-04-01 00:00:00'),(22218,7,49,'2010-07-01 00:00:00'),(22219,7,50,'2004-04-01 00:00:00'),(22220,7,50,'2005-04-01 00:00:00'),(22221,7,50,'2007-04-01 00:00:00'),(22222,7,50,'2009-04-01 00:00:00'),(22223,7,50,'2010-07-01 00:00:00'),(22224,7,53,'2004-04-01 00:00:00'),(22225,7,53,'2005-04-01 00:00:00'),(22226,7,53,'2007-04-01 00:00:00'),(22227,7,53,'2008-04-01 00:00:00'),(22228,7,53,'2009-04-01 00:00:00'),(22229,7,54,'2012-07-01 00:00:00'),(22230,7,55,'2004-04-01 00:00:00'),(22231,7,55,'2005-04-01 00:00:00'),(22232,7,55,'2007-04-01 00:00:00'),(22233,7,55,'2009-04-01 00:00:00'),(22234,7,56,'2004-04-01 00:00:00'),(22235,7,56,'2005-04-01 00:00:00'),(22236,7,56,'2007-04-01 00:00:00'),(22237,7,56,'2007-06-01 00:00:00'),(22238,7,56,'2009-04-01 00:00:00'),(22239,7,56,'2010-07-01 00:00:00'),(22240,7,57,'2007-04-01 00:00:00'),(22241,7,57,'2009-04-01 00:00:00'),(22242,7,58,'2004-04-01 00:00:00'),(22243,7,58,'2005-04-01 00:00:00'),(22244,7,58,'2007-04-01 00:00:00'),(22245,7,58,'2007-06-01 00:00:00'),(22246,7,58,'2009-04-01 00:00:00'),(22247,7,58,'2010-07-01 00:00:00'),(22248,7,66,'2004-04-01 00:00:00'),(22249,7,66,'2005-04-01 00:00:00'),(22250,7,66,'2007-04-01 00:00:00'),(22251,7,66,'2009-04-01 00:00:00'),(22252,7,66,'2009-10-01 00:00:00'),(22253,7,66,'2010-07-01 00:00:00'),(22254,7,67,'2004-04-01 00:00:00'),(22255,7,67,'2005-04-01 00:00:00'),(22256,7,67,'2007-04-01 00:00:00'),(22257,7,67,'2009-04-01 00:00:00'),(22258,7,67,'2009-10-01 00:00:00'),(22259,7,67,'2010-07-01 00:00:00'),(22260,7,68,'2009-10-01 00:00:00'),(22261,7,68,'2010-04-01 00:00:00'),(22262,7,68,'2010-07-01 00:00:00'),(22263,7,69,'2009-10-01 00:00:00'),(22264,7,69,'2010-04-01 00:00:00'),(22265,7,69,'2010-07-01 00:00:00'),(25961,8,1,'2008-04-01 00:00:00'),(25962,8,1,'2012-04-01 00:00:00'),(25963,8,1,'2013-04-01 00:00:00'),(25964,8,13,'0013-04-01 00:00:00'),(25965,8,13,'2008-04-01 00:00:00'),(25966,8,13,'2012-04-01 00:00:00'),(25967,8,14,'2008-04-01 00:00:00'),(25968,8,14,'2012-04-01 00:00:00'),(25969,8,15,'2012-07-01 00:00:00'),(25970,8,15,'2013-04-01 00:00:00'),(25971,8,16,'2008-04-01 00:00:00'),(25972,8,16,'2012-04-01 00:00:00'),(25973,8,16,'2013-04-01 00:00:00'),(25974,8,21,'2011-06-01 00:00:00'),(25975,8,21,'2013-04-01 00:00:00'),(25976,8,24,'2008-04-01 00:00:00'),(25977,8,24,'2012-04-01 00:00:00'),(25978,8,24,'2013-04-01 00:00:00'),(25979,8,25,'2008-04-01 00:00:00'),(25980,8,25,'2012-04-01 00:00:00'),(25981,8,25,'2013-04-01 00:00:00'),(25982,8,29,'2007-04-01 00:00:00'),(25983,8,29,'2012-04-01 00:00:00'),(25984,8,30,'2004-04-01 00:00:00'),(25985,8,30,'2007-04-01 00:00:00'),(25986,8,30,'2012-04-01 00:00:00'),(25987,8,30,'2013-04-01 00:00:00'),(25988,8,31,'2007-04-01 00:00:00'),(25989,8,31,'2012-04-01 00:00:00'),(25990,8,31,'2013-04-01 00:00:00'),(25991,8,41,'2008-04-01 00:00:00'),(25992,8,41,'2012-04-01 00:00:00'),(25993,8,42,'2008-04-01 00:00:00'),(25994,8,42,'2012-04-01 00:00:00'),(25995,8,43,'2008-04-01 00:00:00'),(25996,8,43,'2012-04-01 00:00:00'),(25997,8,44,'2008-04-01 00:00:00'),(25998,8,44,'2012-04-01 00:00:00'),(25999,8,44,'2013-04-01 00:00:00'),(26000,8,45,'2008-04-01 00:00:00'),(26001,8,45,'2012-04-01 00:00:00'),(26002,8,45,'2013-04-01 00:00:00'),(26003,8,46,'2008-04-01 00:00:00'),(26004,8,46,'2012-04-01 00:00:00'),(26005,8,47,'2008-04-01 00:00:00'),(26006,8,47,'2012-04-01 00:00:00'),(26007,8,48,'2008-04-01 00:00:00'),(26008,8,48,'2012-04-01 00:00:00'),(26009,8,48,'2013-04-01 00:00:00'),(26010,8,49,'2007-04-01 00:00:00'),(26011,8,49,'2012-04-01 00:00:00'),(26012,8,49,'2013-04-01 00:00:00'),(26013,8,50,'2007-04-01 00:00:00'),(26014,8,50,'2012-04-01 00:00:00'),(26015,8,50,'2013-04-01 00:00:00'),(26016,8,55,'2007-04-01 00:00:00'),(26017,8,55,'2012-04-01 00:00:00'),(26018,8,55,'2013-04-01 00:00:00'),(26019,8,59,'2008-04-01 00:00:00'),(26020,8,59,'2012-04-01 00:00:00'),(26021,8,59,'2013-04-01 00:00:00'),(26022,8,60,'2008-04-01 00:00:00'),(26023,8,60,'2012-04-01 00:00:00'),(26024,8,60,'2013-04-01 00:00:00'),(26025,8,61,'2008-04-01 00:00:00'),(26026,8,61,'2012-12-04 00:00:00'),(26027,8,62,'2008-04-01 00:00:00'),(26028,8,62,'2012-04-01 00:00:00'),(26029,8,63,'2013-06-01 00:00:00'),(26030,8,64,'2004-04-01 00:00:00'),(26031,8,64,'2012-04-01 00:00:00'),(26032,8,64,'2013-04-01 00:00:00'),(26033,8,64,'2020-07-14 00:00:00'),(26034,8,65,'2007-04-01 00:00:00'),(26035,8,65,'2010-04-01 00:00:00'),(26036,8,65,'2012-04-01 00:00:00'),(26037,8,65,'2012-07-01 00:00:00'),(26038,8,65,'2013-04-01 00:00:00'),(26039,8,70,'2004-04-01 00:00:00'),(26040,8,70,'2007-04-01 00:00:00'),(26041,8,70,'2012-07-01 00:00:00'),(26042,8,71,'2004-04-01 00:00:00'),(26043,8,71,'2007-04-01 00:00:00'),(26044,8,71,'2008-04-01 00:00:00'),(26045,8,71,'2012-04-01 00:00:00'),(29449,9,19,'2004-04-01 00:00:00'),(29450,9,19,'2007-04-01 00:00:00'),(29451,9,19,'2009-04-01 00:00:00'),(29452,9,19,'2010-07-01 00:00:00'),(29453,9,20,'2008-04-01 00:00:00'),(29454,9,20,'2009-04-01 00:00:00'),(29455,9,22,'2004-04-01 00:00:00'),(29456,9,22,'2007-04-01 00:00:00'),(29457,9,22,'2009-04-01 00:00:00'),(29458,9,22,'2012-07-01 00:00:00'),(29459,9,23,'2004-04-01 00:00:00'),(29460,9,23,'2007-04-01 00:00:00'),(29461,9,23,'2009-04-01 00:00:00'),(29462,9,27,'2004-10-01 00:00:00'),(29463,9,27,'2007-04-01 00:00:00'),(29464,9,27,'2009-04-01 00:00:00'),(29465,9,27,'2012-07-01 00:00:00'),(29466,9,28,'2013-06-01 00:00:00'),(29467,9,29,'2004-04-01 00:00:00'),(29468,9,29,'2007-04-01 00:00:00'),(29469,9,29,'2009-04-01 00:00:00'),(29470,9,31,'2007-04-01 00:00:00'),(29471,9,31,'2009-04-01 00:00:00'),(29472,9,32,'2004-04-01 00:00:00'),(29473,9,32,'2007-04-01 00:00:00'),(29474,9,32,'2009-04-01 00:00:00'),(29475,9,32,'2009-10-01 00:00:00'),(29476,9,32,'2010-07-01 00:00:00'),(29477,9,38,'2012-07-01 00:00:00'),(29478,9,39,'2004-04-01 00:00:00'),(29479,9,39,'2007-04-01 00:00:00'),(29480,9,39,'2009-04-01 00:00:00'),(29481,9,39,'2009-10-01 00:00:00'),(29482,9,39,'2010-07-01 00:00:00'),(29483,9,40,'2007-06-01 00:00:00'),(29484,9,40,'2009-04-01 00:00:00'),(29485,9,40,'2009-10-01 00:00:00'),(29486,9,40,'2010-07-01 00:00:00'),(29487,9,49,'2004-04-01 00:00:00'),(29488,9,49,'2007-04-01 00:00:00'),(29489,9,49,'2009-04-01 00:00:00'),(29490,9,49,'2010-07-01 00:00:00'),(29491,9,50,'2004-04-01 00:00:00'),(29492,9,50,'2007-04-01 00:00:00'),(29493,9,50,'2009-04-01 00:00:00'),(29494,9,50,'2010-07-01 00:00:00'),(29495,9,53,'2004-04-01 00:00:00'),(29496,9,53,'2005-04-01 00:00:00'),(29497,9,53,'2008-04-01 00:00:00'),(29498,9,53,'2009-04-01 00:00:00'),(29499,9,54,'2012-07-01 00:00:00'),(29500,9,55,'2004-04-01 00:00:00'),(29501,9,55,'2007-04-01 00:00:00'),(29502,9,55,'2009-04-01 00:00:00'),(29503,9,56,'2004-04-01 00:00:00'),(29504,9,56,'2007-04-01 00:00:00'),(29505,9,56,'2007-06-01 00:00:00'),(29506,9,56,'2009-04-01 00:00:00'),(29507,9,56,'2010-07-01 00:00:00'),(29508,9,57,'2007-04-01 00:00:00'),(29509,9,57,'2009-04-01 00:00:00'),(29510,9,58,'2004-04-01 00:00:00'),(29511,9,58,'2007-04-01 00:00:00'),(29512,9,58,'2007-06-01 00:00:00'),(29513,9,58,'2009-04-01 00:00:00'),(29514,9,58,'2010-07-01 00:00:00'),(29515,9,66,'2004-04-01 00:00:00'),(29516,9,66,'2007-04-01 00:00:00'),(29517,9,66,'2009-04-01 00:00:00'),(29518,9,66,'2009-10-01 00:00:00'),(29519,9,66,'2010-07-01 00:00:00'),(29520,9,67,'2004-04-01 00:00:00'),(29521,9,67,'2007-04-01 00:00:00'),(29522,9,67,'2009-04-01 00:00:00'),(29523,9,67,'2009-10-01 00:00:00'),(29524,9,67,'2010-07-01 00:00:00'),(29525,9,68,'2009-10-01 00:00:00'),(29526,9,68,'2010-04-01 00:00:00'),(29527,9,68,'2010-07-01 00:00:00'),(29528,9,69,'2009-10-01 00:00:00'),(29529,9,69,'2010-04-01 00:00:00'),(29530,9,69,'2010-07-01 00:00:00'),(34456,10,19,'2004-04-01 00:00:00'),(34457,10,19,'2005-04-01 00:00:00'),(34458,10,19,'2007-04-01 00:00:00'),(34459,10,19,'2009-04-01 00:00:00'),(34460,10,19,'2010-07-01 00:00:00'),(34461,10,20,'2008-04-01 00:00:00'),(34462,10,20,'2009-04-01 00:00:00'),(34463,10,22,'2004-04-01 00:00:00'),(34464,10,22,'2005-04-01 00:00:00'),(34465,10,22,'2007-04-01 00:00:00'),(34466,10,22,'2009-04-01 00:00:00'),(34467,10,22,'2012-07-01 00:00:00'),(34468,10,23,'2004-04-01 00:00:00'),(34469,10,23,'2005-04-01 00:00:00'),(34470,10,23,'2007-04-01 00:00:00'),(34471,10,23,'2009-04-01 00:00:00'),(34472,10,27,'2004-04-01 00:00:00'),(34473,10,27,'2005-04-01 00:00:00'),(34474,10,27,'2007-04-01 00:00:00'),(34475,10,27,'2009-04-01 00:00:00'),(34476,10,27,'2012-07-01 00:00:00'),(34477,10,28,'2013-06-01 00:00:00'),(34478,10,29,'2004-04-01 00:00:00'),(34479,10,29,'2005-04-01 00:00:00'),(34480,10,29,'2007-04-01 00:00:00'),(34481,10,29,'2009-04-01 00:00:00'),(34482,10,31,'2004-04-01 00:00:00'),(34483,10,31,'2005-04-01 00:00:00'),(34484,10,31,'2007-04-01 00:00:00'),(34485,10,31,'2009-04-01 00:00:00'),(34486,10,32,'2004-04-01 00:00:00'),(34487,10,32,'2005-04-01 00:00:00'),(34488,10,32,'2007-04-01 00:00:00'),(34489,10,32,'2009-04-01 00:00:00'),(34490,10,32,'2009-10-01 00:00:00'),(34491,10,32,'2010-07-01 00:00:00'),(34492,10,38,'2012-07-01 00:00:00'),(34493,10,39,'2004-04-01 00:00:00'),(34494,10,39,'2005-04-01 00:00:00'),(34495,10,39,'2007-04-01 00:00:00'),(34496,10,39,'2009-04-01 00:00:00'),(34497,10,39,'2009-10-01 00:00:00'),(34498,10,39,'2010-07-01 00:00:00'),(34499,10,40,'2007-06-01 00:00:00'),(34500,10,40,'2009-04-01 00:00:00'),(34501,10,40,'2009-10-01 00:00:00'),(34502,10,40,'2010-07-01 00:00:00'),(34503,10,49,'2004-04-01 00:00:00'),(34504,10,49,'2005-04-01 00:00:00'),(34505,10,49,'2007-04-01 00:00:00'),(34506,10,49,'2009-04-01 00:00:00'),(34507,10,49,'2010-07-01 00:00:00'),(34508,10,50,'2004-04-01 00:00:00'),(34509,10,50,'2005-04-01 00:00:00'),(34510,10,50,'2007-04-01 00:00:00'),(34511,10,50,'2009-04-01 00:00:00'),(34512,10,50,'2010-07-01 00:00:00'),(34513,10,53,'2004-04-01 00:00:00'),(34514,10,53,'2005-04-01 00:00:00'),(34515,10,53,'2007-04-01 00:00:00'),(34516,10,53,'2008-04-01 00:00:00'),(34517,10,53,'2009-04-01 00:00:00'),(34518,10,54,'2012-07-01 00:00:00'),(34519,10,55,'2004-04-01 00:00:00'),(34520,10,55,'2005-04-01 00:00:00'),(34521,10,55,'2007-04-01 00:00:00'),(34522,10,55,'2009-04-01 00:00:00'),(34523,10,56,'2004-04-01 00:00:00'),(34524,10,56,'2005-04-01 00:00:00'),(34525,10,56,'2007-04-01 00:00:00'),(34526,10,56,'2007-06-01 00:00:00'),(34527,10,56,'2009-04-01 00:00:00'),(34528,10,56,'2010-07-01 00:00:00'),(34529,10,57,'2007-04-01 00:00:00'),(34530,10,57,'2009-04-01 00:00:00'),(34531,10,58,'2004-04-01 00:00:00'),(34532,10,58,'2005-04-01 00:00:00'),(34533,10,58,'2007-04-01 00:00:00'),(34534,10,58,'2007-06-01 00:00:00'),(34535,10,58,'2009-04-01 00:00:00'),(34536,10,58,'2010-07-01 00:00:00'),(34537,10,66,'2004-04-01 00:00:00'),(34538,10,66,'2005-04-01 00:00:00'),(34539,10,66,'2007-04-01 00:00:00'),(34540,10,66,'2009-04-01 00:00:00'),(34541,10,66,'2009-10-01 00:00:00'),(34542,10,66,'2010-07-01 00:00:00'),(34543,10,67,'2004-04-01 00:00:00'),(34544,10,67,'2005-04-01 00:00:00'),(34545,10,67,'2007-04-01 00:00:00'),(34546,10,67,'2009-04-01 00:00:00'),(34547,10,67,'2009-10-01 00:00:00'),(34548,10,67,'2010-07-01 00:00:00'),(34549,10,68,'2009-10-01 00:00:00'),(34550,10,68,'2010-04-01 00:00:00'),(34551,10,68,'2010-07-01 00:00:00'),(34552,10,69,'2009-10-01 00:00:00'),(34553,10,69,'2010-04-01 00:00:00'),(34554,10,69,'2010-07-01 00:00:00'),(37170,11,19,'2004-04-01 00:00:00'),(37171,11,19,'2009-04-01 00:00:00'),(37172,11,19,'2010-07-01 00:00:00'),(37173,11,19,'2012-07-04 00:00:00'),(37174,11,22,'2004-04-01 00:00:00'),(37175,11,22,'2007-04-01 00:00:00'),(37176,11,22,'2009-04-01 00:00:00'),(37177,11,22,'2012-07-01 00:00:00'),(37178,11,23,'2004-04-01 00:00:00'),(37179,11,23,'2007-04-01 00:00:00'),(37180,11,23,'2009-04-01 00:00:00'),(37181,11,27,'2004-04-01 00:00:00'),(37182,11,27,'2007-04-01 00:00:00'),(37183,11,27,'2009-04-01 00:00:00'),(37184,11,27,'2012-07-01 00:00:00'),(37185,11,29,'2004-04-01 00:00:00'),(37186,11,29,'2007-04-01 00:00:00'),(37187,11,29,'2009-04-01 00:00:00'),(37188,11,31,'2004-04-01 00:00:00'),(37189,11,31,'2007-04-01 00:00:00'),(37190,11,31,'2009-04-01 00:00:00'),(37191,11,32,'2004-04-01 00:00:00'),(37192,11,32,'2007-04-01 00:00:00'),(37193,11,32,'2009-04-01 00:00:00'),(37194,11,32,'2009-10-01 00:00:00'),(37195,11,32,'2010-07-01 00:00:00'),(37196,11,39,'2004-04-01 00:00:00'),(37197,11,39,'2007-04-01 00:00:00'),(37198,11,39,'2009-04-01 00:00:00'),(37199,11,39,'2009-10-01 00:00:00'),(37200,11,39,'2010-07-01 00:00:00'),(37201,11,40,'2007-06-01 00:00:00'),(37202,11,40,'2009-04-01 00:00:00'),(37203,11,40,'2009-10-01 00:00:00'),(37204,11,40,'2010-07-01 00:00:00'),(37205,11,49,'2004-04-01 00:00:00'),(37206,11,49,'2007-04-01 00:00:00'),(37207,11,49,'2009-04-01 00:00:00'),(37208,11,49,'2010-07-01 00:00:00'),(37209,11,50,'2004-04-01 00:00:00'),(37210,11,50,'2007-04-01 00:00:00'),(37211,11,50,'2009-04-01 00:00:00'),(37212,11,50,'2010-07-01 00:00:00'),(37213,11,53,'2004-04-01 00:00:00'),(37214,11,53,'2007-04-01 00:00:00'),(37215,11,53,'2008-04-01 00:00:00'),(37216,11,53,'2009-04-01 00:00:00'),(37217,11,55,'2004-04-01 00:00:00'),(37218,11,55,'2007-04-01 00:00:00'),(37219,11,55,'2009-04-01 00:00:00'),(37220,11,56,'2004-04-01 00:00:00'),(37221,11,56,'2007-04-01 00:00:00'),(37222,11,56,'2007-06-01 00:00:00'),(37223,11,56,'2009-04-01 00:00:00'),(37224,11,56,'2010-07-01 00:00:00'),(37225,11,57,'2007-04-01 00:00:00'),(37226,11,57,'2009-04-01 00:00:00'),(37227,11,57,'2012-01-01 00:00:00'),(37228,11,58,'2004-04-01 00:00:00'),(37229,11,58,'2007-04-01 00:00:00'),(37230,11,58,'2007-06-01 00:00:00'),(37231,11,58,'2009-04-01 00:00:00'),(37232,11,58,'2010-07-01 00:00:00'),(37233,11,66,'2004-04-01 00:00:00'),(37234,11,66,'2007-04-01 00:00:00'),(37235,11,66,'2009-04-01 00:00:00'),(37236,11,66,'2009-10-01 00:00:00'),(37237,11,66,'2010-07-01 00:00:00'),(37238,11,67,'2004-04-01 00:00:00'),(37239,11,67,'2007-04-01 00:00:00'),(37240,11,67,'2009-04-01 00:00:00'),(37241,11,67,'2009-10-01 00:00:00'),(37242,11,67,'2010-07-01 00:00:00'),(40588,2,13,'2013-04-01 00:00:00'),(40589,2,14,'2013-04-01 00:00:00'),(40590,2,15,'2013-04-01 00:00:00'),(40591,2,16,'2013-04-01 00:00:00'),(40592,2,19,'2007-04-01 00:00:00'),(40593,2,19,'2009-04-01 00:00:00'),(40594,2,19,'2010-07-01 00:00:00'),(40595,2,22,'2007-04-01 00:00:00'),(40596,2,22,'2009-04-01 00:00:00'),(40597,2,22,'2012-07-01 00:00:00'),(40598,2,23,'2007-04-01 00:00:00'),(40599,2,23,'2009-04-01 00:00:00'),(40600,2,23,'2013-04-01 00:00:00'),(40601,2,24,'2013-04-01 00:00:00'),(40602,2,27,'2007-04-01 00:00:00'),(40603,2,27,'2009-04-01 00:00:00'),(40604,2,27,'2012-07-01 00:00:00'),(40605,2,28,'2013-06-01 00:00:00'),(40606,2,29,'2007-04-01 00:00:00'),(40607,2,29,'2009-04-01 00:00:00'),(40608,2,31,'2007-04-01 00:00:00'),(40609,2,31,'2009-04-01 00:00:00'),(40610,2,31,'2009-10-01 00:00:00'),(40611,2,31,'2010-07-01 00:00:00'),(40612,2,32,'2007-04-01 00:00:00'),(40613,2,38,'2012-07-01 00:00:00'),(40614,2,39,'2007-04-01 00:00:00'),(40615,2,39,'2009-04-01 00:00:00'),(40616,2,39,'2009-10-01 00:00:00'),(40617,2,39,'2010-07-01 00:00:00'),(40618,2,40,'2007-06-01 00:00:00'),(40619,2,40,'2009-04-01 00:00:00'),(40620,2,40,'2009-10-01 00:00:00'),(40621,2,40,'2010-07-01 00:00:00'),(40622,2,49,'2007-04-01 00:00:00'),(40623,2,49,'2009-04-01 00:00:00'),(40624,2,49,'2010-07-01 00:00:00'),(40625,2,50,'2007-04-01 00:00:00'),(40626,2,50,'2009-04-01 00:00:00'),(40627,2,50,'2010-07-01 00:00:00'),(40628,2,53,'2007-04-01 00:00:00'),(40629,2,53,'2009-04-01 00:00:00'),(40630,2,54,'2012-07-01 00:00:00'),(40631,2,54,'2013-04-01 00:00:00'),(40632,2,55,'2007-04-01 00:00:00'),(40633,2,55,'2009-04-01 00:00:00'),(40634,2,56,'2007-04-01 00:00:00'),(40635,2,56,'2007-06-01 00:00:00'),(40636,2,56,'2009-04-01 00:00:00'),(40637,2,56,'2010-07-01 00:00:00'),(40638,2,57,'2007-04-01 00:00:00'),(40639,2,57,'2009-04-01 00:00:00'),(40640,2,58,'2006-04-01 00:00:00'),(40641,2,58,'2007-04-01 00:00:00'),(40642,2,58,'2009-04-01 00:00:00'),(40643,2,58,'2010-07-01 00:00:00'),(40644,2,67,'2009-10-01 00:00:00'),(40645,2,67,'2010-07-01 00:00:00'),(40646,2,68,'2009-10-01 00:00:00'),(40647,2,68,'2010-04-01 00:00:00'),(40648,2,68,'2010-07-01 00:00:00');
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
INSERT INTO `tds_section` VALUES (15,'195','Payment to Other Sum of A Non-Resident',1),(16,'193','Interest on Securities',1),(17,'194J','Fee for Professional Or Technical Services ',1),(18,'194G','Commission on Sale of Lotteries',1),(19,'194H','Commission or Brokerage',1),(20,'194','Dividend',1),(21,'194LD','Income by Way of Interest on Certain Bonds and Government Securities',1),(22,'196C','Income From Foreign Currency Bonds',1),(23,'194LC','Income From Foreign Currency, Bonds Or Shares of Indian Company',1),(24,'196D','Income of Foreign Institutional Investors',1),(25,'194D','Insurance Commission ',1),(26,'194LB','Interest on Infrastructure Debt Fund',1),(27,'194A','Interest Other Than Interest on Securities',1),(28,'194LA','Aquisition of Immovable Property',1),(29,'194IA','Payment on Transfer of Certain Immovable Perperty Other Than Agricultural Land',1),(30,'194EE','Deposit Under NSS',1),(31,'196B','Income From Units to an Offshore Fund',1),(32,'194F','Repurchase of Units of MF/UTI',1),(33,'94C','Contractors & Sub-Contractors',1),(34,'194E','Non-Resident Sportsmen/Spots Association',1),(35,'194I','Rent',1),(36,'194BB','Winning From Horse Races',1),(37,'194B','Winnings From Lotteries',1),(38,'196A','196A',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=201881 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tds_tax_rate`
--

LOCK TABLES `tds_tax_rate` WRITE;
/*!40000 ALTER TABLE `tds_tax_rate` DISABLE KEYS */;
INSERT INTO `tds_tax_rate` VALUES (21101,4340,10.00,5000.00,1),(21102,4340,10.00,1000000.00,3),(21103,4340,2.00,0.00,4),(21104,4340,20.00,0.00,2),(21105,4340,0.00,0.00,5),(21106,4341,10.00,5000.00,1),(21107,4341,10.00,1000000.00,3),(21108,4341,2.00,0.00,4),(21109,4341,20.00,0.00,2),(21110,4341,1.00,0.00,5),(21111,4342,10.00,5000.00,1),(21112,4342,0.00,0.00,3),(21113,4342,0.00,0.00,4),(21114,4342,20.00,0.00,2),(21115,4342,0.00,0.00,5),(21116,4343,10.00,20000.00,1),(21117,4343,0.00,0.00,3),(21118,4343,0.00,0.00,4),(21119,4343,0.00,0.00,2),(21120,4343,0.00,0.00,5),(21121,4344,10.00,10000.00,1),(21122,4344,10.00,1000000.00,3),(21123,4344,2.00,0.00,4),(21124,4344,20.00,0.00,2),(21125,4344,1.00,0.00,5),(21126,4345,10.00,10000.00,1),(21127,4345,0.00,0.00,3),(21128,4345,0.00,0.00,4),(21129,4345,20.00,0.00,2),(21130,4345,0.00,0.00,5),(21131,4346,10.00,2500.00,1),(21132,4346,10.00,1000000.00,3),(21133,4346,2.00,0.00,4),(21134,4346,20.00,0.00,2),(21135,4346,0.00,0.00,5),(21136,4347,10.00,2500.00,1),(21137,4347,10.00,1000000.00,3),(21138,4347,2.00,0.00,4),(21139,4347,20.00,0.00,2),(21140,4347,1.00,0.00,5),(21141,4348,10.00,2500.00,1),(21142,4348,0.00,0.00,3),(21143,4348,0.00,0.00,4),(21144,4348,20.00,0.00,2),(21145,4348,0.00,0.00,5),(21146,4349,10.00,5000.00,1),(21147,4349,0.00,0.00,3),(21148,4349,0.00,0.00,4),(21149,4349,20.00,0.00,2),(21150,4349,0.00,0.00,5),(21151,4350,10.00,5000.00,1),(21152,4350,10.00,1000000.00,3),(21153,4350,2.00,0.00,4),(21154,4350,20.00,0.00,2),(21155,4350,0.00,0.00,5),(21156,4351,10.00,5000.00,1),(21157,4351,10.00,1000000.00,3),(21158,4351,2.00,0.00,4),(21159,4351,20.00,0.00,2),(21160,4351,1.00,0.00,5),(21161,4352,10.00,5000.00,1),(21162,4352,0.00,0.00,3),(21163,4352,0.00,0.00,4),(21164,4352,20.00,0.00,2),(21165,4352,0.00,0.00,5),(21166,4353,10.00,10000000.00,1),(21167,4353,10.00,1000000.00,3),(21168,4353,2.00,0.00,4),(21169,4353,20.00,0.00,2),(21170,4353,0.00,0.00,5),(21171,4354,10.00,10000000.00,1),(21172,4354,10.00,1000000.00,3),(21173,4354,2.00,0.00,4),(21174,4354,20.00,0.00,2),(21175,4354,1.00,0.00,5),(21176,4355,10.00,10000000.00,1),(21177,4355,0.00,0.00,3),(21178,4355,0.00,0.00,4),(21179,4355,20.00,0.00,2),(21180,4355,0.00,0.00,5),(21181,4356,10.00,20000000.00,1),(21182,4356,0.00,0.00,3),(21183,4356,0.00,0.00,4),(21184,4356,20.00,0.00,2),(21185,4356,0.00,0.00,5),(21186,4357,1.00,5000000.00,1),(21187,4357,0.00,0.00,3),(21188,4357,0.00,0.00,4),(21189,4357,20.00,0.00,2),(21190,4357,0.00,0.00,5),(21191,4358,20.00,2500.00,1),(21192,4358,10.00,1000000.00,3),(21193,4358,2.00,0.00,4),(21194,4358,20.00,0.00,2),(21195,4358,0.00,0.00,5),(21196,4359,20.00,0.00,1),(21197,4359,10.00,1000000.00,3),(21198,4359,2.00,0.00,4),(21199,4359,20.00,0.00,2),(21200,4359,1.00,0.00,5),(21201,4360,20.00,0.00,1),(21202,4360,0.00,0.00,3),(21203,4360,0.00,0.00,4),(21204,4360,20.00,0.00,2),(21205,4360,0.00,0.00,5),(21206,4361,20.00,0.00,1),(21207,4361,10.00,1000000.00,3),(21208,4361,2.00,0.00,4),(21209,4361,20.00,0.00,2),(21210,4361,0.00,0.00,5),(21211,4362,20.00,0.00,1),(21212,4362,10.00,1000000.00,3),(21213,4362,2.00,0.00,4),(21214,4362,20.00,0.00,2),(21215,4362,1.00,0.00,5),(21216,4363,20.00,0.00,1),(21217,4363,0.00,0.00,3),(21218,4363,0.00,0.00,4),(21219,4363,0.00,0.00,2),(21220,4363,0.00,0.00,5),(21221,4364,2.00,50000.00,1),(21222,4364,10.00,1000000.00,3),(21223,4364,2.00,0.00,4),(21224,4364,20.00,0.00,2),(21225,4364,0.00,0.00,5),(21226,4365,2.00,50000.00,1),(21227,4365,10.00,1000000.00,3),(21228,4365,2.00,0.00,4),(21229,4365,20.00,0.00,2),(21230,4365,1.00,0.00,5),(21231,4366,2.00,50000.00,1),(21232,4366,0.00,0.00,3),(21233,4366,0.00,0.00,4),(21234,4366,20.00,0.00,2),(21235,4366,0.00,0.00,5),(21236,4367,2.00,50000.00,1),(21237,4367,0.00,0.00,3),(21238,4367,0.00,0.00,4),(21239,4367,20.00,0.00,2),(21240,4367,0.00,0.00,5),(21241,4368,2.00,75000.00,1),(21242,4368,0.00,0.00,3),(21243,4368,0.00,0.00,4),(21244,4368,20.00,0.00,2),(21245,4368,0.00,0.00,5),(21246,4369,10.00,30000.00,1),(21247,4369,0.00,0.00,3),(21248,4369,0.00,0.00,4),(21249,4369,20.00,0.00,2),(21250,4369,0.00,0.00,5),(21251,4370,15.00,120000.00,1),(21252,4370,10.00,1000000.00,3),(21253,4370,2.00,0.00,4),(21254,4370,20.00,0.00,2),(21255,4370,0.00,0.00,5),(21256,4371,15.00,120000.00,1),(21257,4371,10.00,1000000.00,3),(21258,4371,2.00,0.00,4),(21259,4371,20.00,0.00,2),(21260,4371,1.00,0.00,5),(21261,4372,20.00,120000.00,1),(21262,4372,10.00,1000000.00,3),(21263,4372,2.00,0.00,4),(21264,4372,20.00,0.00,2),(21265,4372,1.00,0.00,5),(21266,4373,20.00,120000.00,1),(21267,4373,0.00,0.00,3),(21268,4373,0.00,0.00,4),(21269,4373,20.00,0.00,2),(21270,4373,0.00,0.00,5),(21271,4374,10.00,120000.00,1),(21272,4374,0.00,0.00,3),(21273,4374,0.00,0.00,4),(21274,4374,20.00,0.00,2),(21275,4374,0.00,0.00,5),(21276,4375,10.00,180000.00,1),(21277,4375,0.00,0.00,3),(21278,4375,0.00,0.00,4),(21279,4375,20.00,0.00,2),(21280,4375,0.00,0.00,5),(21281,4376,10.00,120000.00,1),(21282,4376,10.00,1000000.00,3),(21283,4376,2.00,0.00,4),(21284,4376,20.00,0.00,2),(21285,4376,1.00,0.00,5),(21286,4377,10.00,120000.00,1),(21287,4377,0.00,0.00,3),(21288,4377,0.00,0.00,4),(21289,4377,20.00,0.00,2),(21290,4377,0.00,0.00,5),(21291,4378,2.00,120000.00,1),(21292,4378,0.00,0.00,3),(21293,4378,0.00,0.00,4),(21294,4378,20.00,0.00,2),(21295,4378,0.00,0.00,5),(21296,4379,2.00,180000.00,1),(21297,4379,0.00,0.00,3),(21298,4379,0.00,0.00,4),(21299,4379,20.00,0.00,2),(21300,4379,0.00,0.00,5),(21301,4380,30.00,2500.00,1),(21302,4380,10.00,1000000.00,3),(21303,4380,2.00,0.00,4),(21304,4380,20.00,0.00,2),(21305,4380,0.00,0.00,5),(21306,4381,30.00,2500.00,1),(21307,4381,10.00,1000000.00,3),(21308,4381,2.00,0.00,4),(21309,4381,20.00,0.00,2),(21310,4381,1.00,0.00,5),(21311,4382,30.00,2500.00,1),(21312,4382,0.00,0.00,3),(21313,4382,0.00,0.00,4),(21314,4382,20.00,0.00,2),(21315,4382,0.00,0.00,5),(21316,4383,30.00,5000.00,1),(21317,4383,0.00,0.00,3),(21318,4383,0.00,0.00,4),(21319,4383,20.00,0.00,2),(21320,4383,0.00,0.00,5),(21321,4384,30.00,5000.00,1),(21322,4384,10.00,1000000.00,3),(21323,4384,2.00,0.00,4),(21324,4384,20.00,0.00,2),(21325,4384,0.00,0.00,5),(21326,4385,30.00,5000.00,1),(21327,4385,10.00,1000000.00,3),(21328,4385,2.00,0.00,4),(21329,4385,20.00,0.00,2),(21330,4385,0.00,0.00,5),(21331,4386,30.00,5000.00,1),(21332,4386,0.00,0.00,3),(21333,4386,0.00,0.00,4),(21334,4386,20.00,0.00,2),(21335,4386,0.00,0.00,5),(21336,4387,30.00,10000.00,1),(21337,4387,0.00,0.00,3),(21338,4387,0.00,0.00,4),(21339,4387,20.00,0.00,2),(21340,4387,0.00,0.00,5),(21341,4388,20.00,2500.00,1),(21342,4388,10.00,1000000.00,3),(21343,4388,2.00,0.00,4),(21344,4388,20.00,0.00,2),(21345,4388,0.00,0.00,5),(21346,4389,20.00,2500.00,1),(21347,4389,10.00,1000000.00,3),(21348,4389,2.00,0.00,4),(21349,4389,20.00,0.00,2),(21350,4389,1.00,0.00,5),(21351,4390,20.00,0.00,1),(21352,4390,10.00,1000000.00,3),(21353,4390,2.00,0.00,4),(21354,4390,20.00,0.00,2),(21355,4390,1.00,0.00,5),(21356,4391,10.00,0.00,1),(21357,4391,0.00,0.00,3),(21358,4391,0.00,0.00,4),(21359,4391,20.00,0.00,2),(21360,4391,0.00,0.00,5),(21361,4393,10.00,0.00,1),(21362,4393,0.00,0.00,3),(21363,4393,0.00,0.00,4),(21364,4393,0.00,0.00,2),(21365,4393,0.00,0.00,5),(21366,4394,10.00,1000.00,1),(21367,4394,10.00,1000000.00,3),(21368,4394,2.00,0.00,4),(21369,4394,20.00,0.00,2),(21370,4394,0.00,0.00,5),(21371,4395,10.00,1000.00,1),(21372,4395,0.00,1000000.00,3),(21373,4395,0.00,0.00,4),(21374,4395,20.00,0.00,2),(21375,4395,0.00,0.00,5),(21376,4396,5.00,2500.00,1),(21377,4396,10.00,1000000.00,3),(21378,4396,2.00,0.00,4),(21379,4396,20.00,0.00,2),(21380,4396,0.00,0.00,5),(21381,4397,5.00,2500.00,1),(21382,4397,10.00,1000000.00,3),(21383,4397,2.00,0.00,4),(21384,4397,20.00,0.00,2),(21385,4397,1.00,0.00,5),(21386,4398,10.00,2500.00,1),(21387,4398,10.00,1000000.00,3),(21388,4398,2.00,0.00,4),(21389,4398,20.00,0.00,2),(21390,4398,1.00,0.00,5),(21391,4399,10.00,2500.00,1),(21392,4399,0.00,0.00,3),(21393,4399,0.00,0.00,4),(21394,4399,20.00,0.00,2),(21395,4399,0.00,0.00,5),(21396,4400,10.00,5000.00,1),(21397,4400,0.00,0.00,3),(21398,4400,0.00,0.00,4),(21399,4400,0.00,0.00,2),(21400,4400,0.00,0.00,5),(21401,4401,20.00,2500.00,1),(21402,4401,10.00,1000000.00,3),(21403,4401,2.00,0.00,4),(21404,4401,20.00,0.00,2),(21405,4401,1.00,0.00,5),(21406,4402,10.00,2500.00,1),(21407,4402,0.00,0.00,3),(21408,4402,0.00,0.00,4),(21409,4402,20.00,0.00,2),(21410,4402,0.00,0.00,5),(21411,4403,5.00,20000.00,1),(21412,4403,10.00,1000000.00,3),(21413,4403,2.00,0.00,4),(21414,4403,20.00,0.00,2),(21415,4403,0.00,0.00,5),(21416,4404,5.00,20000.00,1),(21417,4404,10.00,1000000.00,3),(21418,4404,2.00,0.00,4),(21419,4404,20.00,0.00,2),(21420,4404,1.00,0.00,5),(21421,4405,10.00,20000.00,1),(21422,4405,10.00,1000000.00,3),(21423,4405,2.00,0.00,4),(21424,4405,20.00,0.00,2),(21425,4405,1.00,0.00,5),(21426,4406,10.00,20000.00,1),(21427,4406,0.00,0.00,3),(21428,4406,0.00,0.00,4),(21429,4406,20.00,0.00,2),(21430,4406,0.00,0.00,5),(21431,4407,10.00,30000.00,1),(21432,4407,0.00,0.00,3),(21433,4407,0.00,0.00,4),(21434,4407,20.00,0.00,2),(21435,4407,0.00,0.00,5),(21436,4408,1.00,20000.00,1),(21437,4408,10.00,1000000.00,3),(21438,4408,2.00,0.00,4),(21439,4408,20.00,0.00,2),(21440,4408,0.00,0.00,5),(21441,4409,1.00,20000.00,1),(21442,4409,10.00,1000000.00,3),(21443,4409,0.00,0.00,4),(21444,4409,20.00,0.00,2),(21445,4409,0.00,0.00,5),(21446,4410,1.00,20000.00,1),(21447,4410,0.00,0.00,3),(21448,4410,0.00,0.00,4),(21449,4410,20.00,0.00,2),(21450,4410,0.00,0.00,5),(21451,4411,2.00,20000.00,1),(21452,4411,0.00,0.00,3),(21453,4411,0.00,0.00,4),(21454,4411,20.00,0.00,2),(21455,4411,0.00,0.00,5),(21456,4412,2.00,75000.00,1),(21457,4412,0.00,0.00,3),(21458,4412,0.00,0.00,4),(21459,4412,20.00,0.00,2),(21460,4412,0.00,0.00,5),(21461,4413,1.00,20000.00,1),(21462,4413,10.00,1000000.00,3),(21463,4413,2.00,0.00,4),(21464,4413,20.00,0.00,2),(21465,4413,0.00,0.00,5),(21466,4414,1.00,50000.00,1),(21467,4414,10.00,1000000.00,3),(21468,4414,2.00,0.00,4),(21469,4414,20.00,0.00,2),(21470,4414,1.00,0.00,5),(21471,4415,1.00,50000.00,1),(21472,4415,0.00,0.00,3),(21473,4415,0.00,0.00,4),(21474,4415,20.00,0.00,2),(21475,4415,0.00,0.00,5),(21476,4416,2.00,50000.00,1),(21477,4416,0.00,0.00,3),(21478,4416,0.00,0.00,4),(21479,4416,20.00,0.00,2),(21480,4416,0.00,0.00,5),(21481,4417,2.00,75000.00,1),(21482,4417,0.00,0.00,3),(21483,4417,0.00,0.00,4),(21484,4417,20.00,0.00,2),(21485,4417,0.00,0.00,5),(21486,4418,2.00,50000.00,1),(21487,4418,0.00,0.00,3),(21488,4418,0.00,0.00,4),(21489,4418,20.00,0.00,2),(21490,4418,0.00,0.00,5),(21491,4420,20.00,75000.00,1),(21492,4420,0.00,0.00,3),(21493,4420,0.00,0.00,4),(21494,4420,20.00,0.00,2),(21495,4420,0.00,0.00,5),(21496,4421,2.00,50000.00,1),(21497,4421,0.00,0.00,3),(21498,4421,0.00,0.00,4),(21499,4421,20.00,0.00,2),(21500,4421,0.00,0.00,5),(21501,4423,20.00,75000.00,1),(21502,4423,0.00,0.00,3),(21503,4423,0.00,0.00,4),(21504,4423,20.00,0.00,2),(21505,4423,0.00,0.00,5),(39956,8120,10.00,10000.00,1),(39957,8120,0.00,0.00,3),(39958,8120,0.00,0.00,4),(39959,8120,20.00,0.00,2),(39960,8120,0.00,0.00,5),(39961,8121,10.00,5000.00,1),(39962,8121,10.00,1000000.00,3),(39963,8121,2.00,0.00,4),(39964,8121,20.00,0.00,2),(39965,8121,0.00,0.00,5),(39966,8122,10.00,5000.00,1),(39967,8122,10.00,1000000.00,3),(39968,8122,2.00,0.00,4),(39969,8122,20.00,0.00,2),(39970,8122,1.00,0.00,5),(39971,8123,10.00,20000.00,1),(39972,8123,0.00,0.00,3),(39973,8123,0.00,0.00,4),(39974,8123,20.00,0.00,2),(39975,8123,0.00,0.00,5),(39976,8124,10.00,10000.00,1),(39977,8124,10.00,1000000.00,3),(39978,8124,2.00,0.00,4),(39979,8124,20.00,0.00,2),(39980,8124,1.00,0.00,5),(39981,8125,20.00,75000.00,1),(39982,8125,0.00,0.00,3),(39983,8125,0.00,0.00,4),(39984,8125,20.00,0.00,2),(39985,8125,0.00,0.00,5),(39986,8126,10.00,2500.00,1),(39987,8126,10.00,1000000.00,3),(39988,8126,2.00,0.00,4),(39989,8126,20.00,0.00,2),(39990,8126,0.00,0.00,5),(39991,8127,10.00,2500.00,1),(39992,8127,10.00,1000000.00,3),(39993,8127,2.00,0.00,4),(39994,8127,20.00,0.00,2),(39995,8127,1.00,0.00,5),(39996,8128,10.00,25000.00,1),(39997,8128,0.00,0.00,3),(39998,8128,0.00,0.00,4),(39999,8128,20.00,0.00,2),(40000,8128,0.00,0.00,5),(40001,8129,10.00,5000.00,1),(40002,8129,0.00,0.00,3),(40003,8129,0.00,0.00,4),(40004,8129,20.00,0.00,2),(40005,8129,0.00,0.00,5),(40006,8130,10.00,5000.00,1),(40007,8130,10.00,1000000.00,3),(40008,8130,2.00,0.00,4),(40009,8130,20.00,0.00,2),(40010,8130,0.00,0.00,5),(40011,8131,10.00,5000.00,1),(40012,8131,10.00,1000000.00,3),(40013,8131,2.00,0.00,4),(40014,8131,20.00,0.00,2),(40015,8131,1.00,0.00,5),(40016,8132,10.00,5000.00,1),(40017,8132,0.00,0.00,3),(40018,8132,0.00,0.00,4),(40019,8132,20.00,0.00,2),(40020,8132,0.00,0.00,5),(40021,8133,10.00,100000.00,1),(40022,8133,10.00,1000000.00,3),(40023,8133,2.00,0.00,4),(40024,8133,20.00,0.00,2),(40025,8133,0.00,0.00,5),(40026,8134,10.00,100000.00,1),(40027,8134,10.00,1000000.00,3),(40028,8134,2.00,0.00,4),(40029,8134,20.00,0.00,2),(40030,8134,1.00,0.00,5),(40031,8135,10.00,100000.00,1),(40032,8135,0.00,0.00,3),(40033,8135,0.00,0.00,4),(40034,8135,20.00,0.00,2),(40035,8135,0.00,0.00,5),(40036,8136,10.00,200000.00,1),(40037,8136,0.00,0.00,3),(40038,8136,0.00,0.00,4),(40039,8136,20.00,0.00,2),(40040,8136,0.00,0.00,5),(40041,8137,1.00,5000000.00,1),(40042,8137,0.00,0.00,3),(40043,8137,0.00,0.00,4),(40044,8137,20.00,0.00,2),(40045,8137,0.00,0.00,5),(40046,8138,20.00,2500.00,1),(40047,8138,10.00,1000000.00,3),(40048,8138,2.00,0.00,4),(40049,8138,20.00,0.00,2),(40050,8138,0.00,0.00,5),(40051,8139,20.00,0.00,1),(40052,8139,10.00,1000000.00,3),(40053,8139,2.00,0.00,4),(40054,8139,20.00,0.00,2),(40055,8139,1.00,0.00,5),(40056,8140,20.00,0.00,1),(40057,8140,0.00,0.00,3),(40058,8140,0.00,0.00,4),(40059,8140,20.00,0.00,2),(40060,8140,0.00,0.00,5),(40061,8141,20.00,0.00,1),(40062,8141,10.00,1000000.00,3),(40063,8141,2.00,0.00,4),(40064,8141,20.00,0.00,2),(40065,8141,0.00,0.00,5),(40066,8142,20.00,0.00,1),(40067,8142,10.00,1000000.00,3),(40068,8142,2.00,0.00,4),(40069,8142,20.00,0.00,2),(40070,8142,1.00,0.00,5),(40071,8143,20.00,0.00,1),(40072,8143,0.00,0.00,3),(40073,8143,0.00,0.00,4),(40074,8143,20.00,0.00,2),(40075,8143,0.00,0.00,5),(40076,8144,2.00,20000.00,1),(40077,8144,10.00,100000.00,3),(40078,8144,2.00,0.00,4),(40079,8144,20.00,0.00,2),(40080,8144,0.00,0.00,5),(40081,8145,2.00,50000.00,1),(40082,8145,10.00,1000000.00,3),(40083,8145,2.00,0.00,4),(40084,8145,20.00,0.00,2),(40085,8145,1.00,0.00,5),(40086,8146,2.00,50000.00,1),(40087,8146,0.00,0.00,3),(40088,8146,0.00,0.00,4),(40089,8146,20.00,0.00,2),(40090,8146,0.00,0.00,5),(40091,8147,2.00,50000.00,1),(40092,8147,0.00,0.00,3),(40093,8147,0.00,0.00,4),(40094,8147,20.00,0.00,2),(40095,8147,0.00,0.00,5),(40096,8148,2.00,75000.00,1),(40097,8148,0.00,0.00,3),(40098,8148,0.00,0.00,4),(40099,8148,20.00,0.00,2),(40100,8148,0.00,0.00,5),(40101,8149,10.00,30000.00,1),(40102,8149,0.00,0.00,3),(40103,8149,0.00,0.00,4),(40104,8149,20.00,0.00,2),(40105,8149,0.00,0.00,5),(40106,8150,15.00,120000.00,1),(40107,8150,10.00,1000000.00,3),(40108,8150,2.00,0.00,4),(40109,8150,20.00,0.00,2),(40110,8150,0.00,0.00,5),(40111,8151,15.00,120000.00,1),(40112,8151,10.00,1000000.00,3),(40113,8151,2.00,0.00,4),(40114,8151,20.00,0.00,2),(40115,8151,1.00,0.00,5),(40116,8152,20.00,120000.00,1),(40117,8152,10.00,1000000.00,3),(40118,8152,2.00,0.00,4),(40119,8152,20.00,0.00,2),(40120,8152,1.00,0.00,5),(40121,8153,20.00,120000.00,1),(40122,8153,0.00,0.00,3),(40123,8153,0.00,0.00,4),(40124,8153,20.00,0.00,2),(40125,8153,0.00,0.00,5),(40126,8154,10.00,120000.00,1),(40127,8154,0.00,0.00,3),(40128,8154,0.00,0.00,4),(40129,8154,20.00,0.00,2),(40130,8154,0.00,0.00,5),(40131,8155,10.00,180000.00,1),(40132,8155,0.00,0.00,3),(40133,8155,0.00,0.00,4),(40134,8155,20.00,0.00,2),(40135,8155,0.00,0.00,5),(40136,8156,10.00,120000.00,1),(40137,8156,10.00,1000000.00,3),(40138,8156,2.00,0.00,4),(40139,8156,20.00,0.00,2),(40140,8156,1.00,0.00,5),(40141,8157,10.00,120000.00,1),(40142,8157,0.00,0.00,3),(40143,8157,0.00,0.00,4),(40144,8157,20.00,0.00,2),(40145,8157,0.00,0.00,5),(40146,8158,2.00,120000.00,1),(40147,8158,0.00,0.00,3),(40148,8158,0.00,0.00,4),(40149,8158,20.00,0.00,2),(40150,8158,0.00,0.00,5),(40151,8159,2.00,180000.00,1),(40152,8159,0.00,0.00,3),(40153,8159,0.00,0.00,4),(40154,8159,20.00,0.00,2),(40155,8159,0.00,0.00,5),(40156,8160,30.00,2500.00,1),(40157,8160,10.00,1000000.00,3),(40158,8160,2.00,0.00,4),(40159,8160,20.00,0.00,2),(40160,8160,0.00,0.00,5),(40161,8161,30.00,5000.00,1),(40162,8161,0.00,0.00,3),(40163,8161,0.00,0.00,4),(40164,8161,20.00,0.00,2),(40165,8161,0.00,0.00,5),(40166,8162,30.00,2500.00,1),(40167,8162,10.00,1000000.00,3),(40168,8162,2.00,0.00,4),(40169,8162,20.00,0.00,2),(40170,8162,1.00,0.00,5),(40171,8163,30.00,2500.00,1),(40172,8163,0.00,0.00,3),(40173,8163,0.00,0.00,4),(40174,8163,20.00,0.00,2),(40175,8163,0.00,0.00,5),(40176,8164,30.00,5000.00,1),(40177,8164,10.00,1000000.00,3),(40178,8164,2.00,0.00,4),(40179,8164,20.00,0.00,2),(40180,8164,0.00,0.00,5),(40181,8165,30.00,5000.00,1),(40182,8165,10.00,1000000.00,3),(40183,8165,2.00,0.00,4),(40184,8165,20.00,0.00,2),(40185,8165,1.00,0.00,5),(40186,8166,30.00,10000.00,1),(40187,8166,0.00,0.00,3),(40188,8166,0.00,0.00,4),(40189,8166,20.00,0.00,2),(40190,8166,0.00,0.00,5),(40191,8167,20.00,2500.00,1),(40192,8167,10.00,1000000.00,3),(40193,8167,2.00,0.00,4),(40194,8167,20.00,0.00,2),(40195,8167,0.00,0.00,5),(40196,8168,20.00,2500.00,1),(40197,8168,10.00,1000000.00,3),(40198,8168,2.00,0.00,4),(40199,8168,20.00,0.00,2),(40200,8168,1.00,0.00,5),(40201,8169,20.00,0.00,1),(40202,8169,10.00,1000000.00,3),(40203,8169,2.00,0.00,4),(40204,8169,20.00,0.00,2),(40205,8169,1.00,0.00,5),(40206,8170,10.00,0.00,1),(40207,8170,0.00,0.00,3),(40208,8170,0.00,0.00,4),(40209,8170,20.00,0.00,2),(40210,8170,0.00,0.00,5),(40211,8171,10.00,0.00,1),(40212,8171,0.00,0.00,3),(40213,8171,0.00,0.00,4),(40214,8171,20.00,0.00,2),(40215,8171,0.00,0.00,5),(40216,8172,10.00,1000.00,1),(40217,8172,10.00,1000000.00,3),(40218,8172,1.00,0.00,4),(40219,8172,20.00,0.00,2),(40220,8172,0.00,0.00,5),(40221,8173,10.00,1000.00,1),(40222,8173,10.00,1000000.00,3),(40223,8173,2.00,0.00,4),(40224,8173,20.00,0.00,2),(40225,8173,1.00,0.00,5),(40226,8174,10.00,1000.00,1),(40227,8174,0.00,0.00,3),(40228,8174,0.00,0.00,4),(40229,8174,20.00,0.00,2),(40230,8174,0.00,0.00,5),(40231,8175,5.00,2500.00,1),(40232,8175,10.00,1000000.00,3),(40233,8175,2.00,0.00,4),(40234,8175,20.00,0.00,2),(40235,8175,0.00,0.00,5),(40236,8176,5.00,2500.00,1),(40237,8176,10.00,1000000.00,3),(40238,8176,2.00,0.00,4),(40239,8176,20.00,0.00,2),(40240,8176,1.00,0.00,5),(40241,8177,10.00,2500.00,1),(40242,8177,10.00,1000000.00,3),(40243,8177,2.00,0.00,4),(40244,8177,20.00,0.00,2),(40245,8177,1.00,0.00,5),(40246,8178,10.00,2500.00,1),(40247,8178,0.00,0.00,3),(40248,8178,0.00,0.00,4),(40249,8178,20.00,0.00,2),(40250,8178,0.00,0.00,5),(40251,8179,10.00,5000.00,1),(40252,8179,0.00,0.00,3),(40253,8179,0.00,0.00,4),(40254,8179,20.00,0.00,2),(40255,8179,0.00,0.00,5),(40256,8180,20.00,2500.00,1),(40257,8180,10.00,1000000.00,3),(40258,8180,2.00,0.00,4),(40259,8180,20.00,0.00,2),(40260,8180,1.00,0.00,5),(40261,8181,10.00,2500.00,1),(40262,8181,0.00,0.00,3),(40263,8181,0.00,0.00,4),(40264,8181,20.00,0.00,2),(40265,8181,0.00,0.00,5),(40266,8182,5.00,20000.00,1),(40267,8182,10.00,1000000.00,3),(40268,8182,2.00,0.00,4),(40269,8182,20.00,0.00,2),(40270,8182,1.00,0.00,5),(40271,8183,5.00,20000.00,1),(40272,8183,10.00,1000000.00,3),(40273,8183,2.00,0.00,4),(40274,8183,20.00,0.00,2),(40275,8183,1.00,0.00,5),(40276,8184,10.00,20000.00,1),(40277,8184,10.00,1000000.00,3),(40278,8184,2.00,0.00,4),(40279,8184,20.00,0.00,2),(40280,8184,1.00,0.00,5),(40281,8185,10.00,20000.00,1),(40282,8185,0.00,0.00,3),(40283,8185,0.00,0.00,4),(40284,8185,20.00,0.00,2),(40285,8185,0.00,0.00,5),(40286,8186,10.00,30000.00,1),(40287,8186,0.00,0.00,3),(40288,8186,0.00,0.00,4),(40289,8186,20.00,0.00,2),(40290,8186,0.00,0.00,5),(40291,8187,1.00,20000.00,1),(40292,8187,10.00,1000000.00,3),(40293,8187,2.00,0.00,4),(40294,8187,20.00,0.00,2),(40295,8187,1.00,0.00,5),(40296,8188,1.00,20000.00,1),(40297,8188,10.00,1000000.00,3),(40298,8188,2.00,0.00,4),(40299,8188,20.00,0.00,2),(40300,8188,1.00,0.00,5),(40301,8189,1.00,20000.00,1),(40302,8189,0.00,0.00,3),(40303,8189,0.00,0.00,4),(40304,8189,20.00,0.00,2),(40305,8189,0.00,0.00,5),(40306,8190,2.00,20000.00,1),(40307,8190,0.00,0.00,3),(40308,8190,0.00,0.00,4),(40309,8190,20.00,0.00,2),(40310,8190,0.00,0.00,5),(40311,8191,2.00,75000.00,1),(40312,8191,0.00,0.00,3),(40313,8191,0.00,0.00,4),(40314,8191,20.00,0.00,2),(40315,8191,0.00,0.00,5),(40316,8192,1.00,20000.00,1),(40317,8192,10.00,1000000.00,3),(40318,8192,2.00,0.00,4),(40319,8192,20.00,0.00,2),(40320,8192,0.00,0.00,5),(40321,8193,1.00,50000.00,1),(40322,8193,10.00,1000000.00,3),(40323,8193,2.00,0.00,4),(40324,8193,20.00,0.00,2),(40325,8193,1.00,0.00,5),(40326,8194,1.00,50000.00,1),(40327,8194,0.00,0.00,3),(40328,8194,0.00,0.00,4),(40329,8194,20.00,0.00,2),(40330,8194,0.00,0.00,5),(40331,8195,2.00,50000.00,1),(40332,8195,0.00,0.00,3),(40333,8195,0.00,0.00,4),(40334,8195,20.00,0.00,2),(40335,8195,0.00,0.00,5),(40336,8196,2.00,50000.00,1),(40337,8196,0.00,0.00,3),(40338,8196,0.00,0.00,4),(40339,8196,20.00,0.00,2),(40340,8196,0.00,0.00,5),(40341,8198,20.00,75000.00,1),(40342,8198,0.00,0.00,3),(40343,8198,0.00,0.00,4),(40344,8198,20.00,0.00,2),(40345,8198,0.00,0.00,5),(40346,8199,1.00,50000.00,1),(40347,8199,0.00,0.00,3),(40348,8199,0.00,0.00,4),(40349,8199,20.00,0.00,2),(40350,8199,0.00,0.00,5),(40351,8200,20.00,75000.00,1),(40352,8200,0.00,0.00,3),(40353,8200,0.00,0.00,4),(40354,8200,20.00,0.00,2),(40355,8200,0.00,0.00,5),(67136,13627,40.00,0.00,1),(67137,13627,2.50,10000000.00,3),(67138,13627,2.00,0.00,4),(67139,13627,20.00,0.00,2),(67140,13627,1.00,0.00,5),(67141,13628,40.00,0.00,1),(67142,13628,2.00,10000000.00,3),(67143,13628,2.00,0.00,4),(67144,13628,20.00,0.00,2),(67145,13628,1.00,0.00,5),(67146,13629,40.00,0.00,1),(67147,13629,2.50,10000000.00,3),(67148,13629,2.00,0.00,4),(67149,13629,20.00,0.00,2),(67150,13629,1.00,0.00,5),(67151,13630,40.00,0.00,1),(67152,13630,2.00,10000000.00,3),(67153,13630,2.00,0.00,4),(67154,13630,20.00,0.00,2),(67155,13630,1.00,0.00,5),(67156,13631,10.00,0.00,1),(67157,13631,0.00,0.00,3),(67158,13631,2.00,0.00,4),(67159,13631,0.00,0.00,2),(67160,13631,1.00,0.00,5),(67161,13632,10.00,0.00,1),(67162,13632,2.00,10000000.00,3),(67163,13632,2.00,0.00,4),(67164,13632,20.00,0.00,2),(67165,13632,1.00,0.00,5),(67166,13633,10.00,0.00,1),(67167,13633,2.50,10000000.00,3),(67168,13633,2.00,0.00,4),(67169,13633,20.00,0.00,2),(67170,13633,2.00,0.00,5),(67171,13634,10.00,0.00,1),(67172,13634,2.00,10000000.00,3),(67173,13634,2.00,0.00,4),(67174,13634,20.00,0.00,2),(67175,13634,1.00,0.00,5),(67176,13635,10.00,0.00,1),(67177,13635,2.50,0.00,3),(67178,13635,2.00,0.00,4),(67179,13635,20.00,0.00,2),(67180,13635,0.00,0.00,5),(67181,13636,10.00,0.00,1),(67182,13636,2.50,10000000.00,3),(67183,13636,2.00,0.00,4),(67184,13636,20.00,0.00,2),(67185,13636,1.00,0.00,5),(67186,13637,5.00,0.00,1),(67187,13637,2.00,10000000.00,3),(67188,13637,2.00,0.00,4),(67189,13637,20.00,0.00,2),(67190,13637,1.00,0.00,5),(67191,13638,20.00,0.00,1),(67192,13638,0.00,0.00,3),(67193,13638,2.00,0.00,4),(67194,13638,20.00,0.00,2),(67195,13638,1.00,0.00,5),(67196,13639,20.00,0.00,1),(67197,13639,2.00,10000000.00,3),(67198,13639,2.00,0.00,4),(67199,13639,20.00,0.00,2),(67200,13639,1.00,0.00,5),(67201,13640,20.00,0.00,1),(67202,13640,2.50,10000000.00,3),(67203,13640,2.00,0.00,4),(67204,13640,20.00,0.00,2),(67205,13640,1.00,0.00,5),(67206,13642,5.00,0.00,1),(67207,13642,2.00,10000000.00,3),(67208,13642,2.00,0.00,4),(67209,13642,20.00,0.00,2),(67210,13642,1.00,0.00,5),(67211,13643,20.00,0.00,1),(67212,13643,2.50,10000000.00,3),(67213,13643,2.00,0.00,4),(67214,13643,20.00,0.00,2),(67215,13643,1.00,0.00,5),(67216,13644,20.00,0.00,1),(67217,13644,2.00,10000000.00,3),(67218,13644,2.00,0.00,4),(67219,13644,20.00,0.00,2),(67220,13644,1.00,0.00,5),(67221,13645,20.00,0.00,1),(67222,13645,2.50,10000000.00,3),(67223,13645,2.00,0.00,4),(67224,13645,20.00,0.00,2),(67225,13645,1.00,0.00,5),(67226,13646,20.00,0.00,1),(67227,13646,2.00,10000000.00,3),(67228,13646,2.00,0.00,4),(67229,13646,20.00,0.00,2),(67230,13646,1.00,0.00,5),(67231,13647,20.00,0.00,1),(67232,13647,2.50,10000000.00,3),(67233,13647,2.00,0.00,4),(67234,13647,20.00,0.00,2),(67235,13647,1.00,0.00,5),(67236,13648,20.00,0.00,1),(67237,13648,2.00,10000000.00,3),(67238,13648,2.00,0.00,4),(67239,13648,20.00,0.00,2),(67240,13648,1.00,0.00,5),(67241,13649,20.00,0.00,1),(67242,13649,2.50,10000000.00,3),(67243,13649,2.00,0.00,4),(67244,13649,20.00,0.00,2),(67245,13649,1.00,0.00,5),(67246,13650,20.00,0.00,1),(67247,13650,2.00,10000000.00,3),(67248,13650,2.00,0.00,4),(67249,13650,20.00,0.00,2),(67250,13650,1.00,0.00,5),(67251,13651,10.00,0.00,1),(67252,13651,2.00,10000000.00,3),(67253,13651,2.00,0.00,4),(67254,13651,20.00,0.00,2),(67255,13651,1.00,0.00,5),(67256,13652,10.00,0.00,1),(67257,13652,2.00,10000000.00,3),(67258,13652,2.00,0.00,4),(67259,13652,20.00,0.00,2),(67260,13652,1.00,0.00,5),(67261,13653,10.00,0.00,1),(67262,13653,2.50,0.00,3),(67263,13653,2.00,0.00,4),(67264,13653,20.00,0.00,2),(67265,13653,0.00,0.00,5),(67266,13654,10.00,0.00,1),(67267,13654,2.50,10000000.00,3),(67268,13654,2.00,0.00,4),(67269,13654,20.00,0.00,2),(67270,13654,1.00,0.00,5),(67271,13655,10.00,0.00,1),(67272,13655,2.50,10000000.00,3),(67273,13655,2.00,0.00,4),(67274,13655,20.00,0.00,2),(67275,13655,1.00,0.00,5),(67276,13656,20.00,0.00,1),(67277,13656,2.50,10000000.00,3),(67278,13656,2.00,0.00,4),(67279,13656,20.00,0.00,2),(67280,13656,1.00,0.00,5),(67281,13657,20.00,0.00,1),(67282,13657,2.50,10000000.00,3),(67283,13657,2.00,0.00,4),(67284,13657,20.00,0.00,2),(67285,13657,1.00,0.00,5),(67286,13658,20.00,0.00,1),(67287,13658,2.50,10000000.00,3),(67288,13658,2.00,0.00,4),(67289,13658,20.00,0.00,2),(67290,13658,1.00,0.00,5),(67291,13659,30.00,0.00,1),(67292,13659,2.50,10000000.00,3),(67293,13659,2.00,0.00,4),(67294,13659,20.00,0.00,2),(67295,13659,1.00,0.00,5),(67296,13660,30.00,0.00,1),(67297,13660,2.00,10000000.00,3),(67298,13660,2.00,0.00,4),(67299,13660,20.00,0.00,2),(67300,13660,1.00,0.00,5),(67301,13661,30.00,0.00,1),(67302,13661,2.50,10000000.00,3),(67303,13661,2.00,0.00,4),(67304,13661,20.00,0.00,2),(67305,13661,1.00,0.00,5),(67306,13662,10.00,0.00,1),(67307,13662,2.00,10000000.00,3),(67308,13662,2.00,0.00,4),(67309,13662,20.00,0.00,2),(67310,13662,1.00,0.00,5),(67311,13663,10.00,0.00,1),(67312,13663,2.50,10000000.00,3),(67313,13663,3.00,0.00,4),(67314,13663,20.00,0.00,2),(67315,13663,1.00,0.00,5),(67316,13664,10.00,0.00,1),(67317,13664,2.00,10000000.00,3),(67318,13664,2.00,0.00,4),(67319,13664,20.00,0.00,2),(67320,13664,1.00,0.00,5),(67321,13665,10.00,0.00,1),(67322,13665,2.50,10000000.00,3),(67323,13665,2.00,0.00,4),(67324,13665,20.00,0.00,2),(67325,13665,1.00,0.00,5),(67326,13666,50.00,0.00,1),(67327,13666,2.50,10000000.00,3),(67328,13666,2.00,0.00,4),(67329,13666,20.00,0.00,2),(67330,13666,1.00,0.00,5),(67331,13667,50.00,0.00,1),(67332,13667,2.00,10000000.00,3),(67333,13667,2.00,0.00,4),(67334,13667,20.00,0.00,2),(67335,13667,1.00,0.00,5),(67336,13668,50.00,0.00,1),(67337,13668,2.50,10000000.00,3),(67338,13668,2.00,0.00,4),(67339,13668,20.00,0.00,2),(67340,13668,1.00,0.00,5),(67341,13669,50.00,0.00,1),(67342,13669,2.00,10000000.00,3),(67343,13669,2.00,0.00,4),(67344,13669,20.00,0.00,2),(67345,13669,1.00,0.00,5),(67346,13670,30.00,0.00,1),(67347,13670,2.50,10000000.00,3),(67348,13670,2.00,0.00,4),(67349,13670,20.00,0.00,2),(67350,13670,1.00,0.00,5),(67351,13671,30.00,0.00,1),(67352,13671,2.00,10000000.00,3),(67353,13671,2.00,0.00,4),(67354,13671,20.00,0.00,2),(67355,13671,1.00,0.00,5),(67356,13672,30.00,0.00,1),(67357,13672,2.50,10000000.00,3),(67358,13672,2.00,0.00,4),(67359,13672,20.00,0.00,2),(67360,13672,1.00,0.00,5),(67361,13673,25.00,0.00,1),(67362,13673,2.00,10000000.00,3),(67363,13673,2.00,0.00,4),(67364,13673,20.00,0.00,2),(67365,13673,1.00,0.00,5),(67366,13674,20.00,0.00,1),(67367,13674,2.50,10000000.00,3),(67368,13674,2.00,0.00,4),(67369,13674,20.00,0.00,2),(67370,13674,1.00,0.00,5),(67371,13675,20.00,0.00,1),(67372,13675,2.00,10000000.00,3),(67373,13675,2.00,0.00,4),(67374,13675,20.00,0.00,2),(67375,13675,1.00,0.00,5),(67376,13676,20.00,0.00,1),(67377,13676,2.50,10000000.00,3),(67378,13676,2.00,0.00,4),(67379,13676,20.00,0.00,2),(67380,13676,1.00,0.00,5),(67381,13677,10.00,0.00,1),(67382,13677,2.50,10000000.00,3),(67383,13677,2.00,0.00,4),(67384,13677,20.00,0.00,2),(67385,13677,1.00,0.00,5),(67386,13678,10.00,0.00,1),(67387,13678,2.50,10000000.00,3),(67388,13678,2.00,0.00,4),(67389,13678,20.00,0.00,2),(67390,13678,1.00,0.00,5),(67391,13679,10.00,0.00,1),(67392,13679,2.50,10000000.00,3),(67393,13679,2.00,0.00,4),(67394,13679,20.00,0.00,2),(67395,13679,1.00,0.00,5),(67396,13680,10.00,0.00,1),(67397,13680,2.00,10000000.00,3),(67398,13680,2.00,0.00,4),(67399,13680,20.00,0.00,2),(67400,13680,1.00,0.00,5),(67401,13681,10.00,0.00,1),(67402,13681,2.50,10000000.00,3),(67403,13681,2.00,0.00,4),(67404,13681,20.00,0.00,2),(67405,13681,1.00,0.00,5),(67406,13682,15.00,0.00,1),(67407,13682,2.00,10000000.00,3),(67408,13682,2.00,0.00,4),(67409,13682,20.00,0.00,2),(67410,13682,1.00,0.00,5),(67411,13683,30.00,2500.00,1),(67412,13683,2.50,10000000.00,3),(67413,13683,2.00,0.00,4),(67414,13683,20.00,0.00,2),(67415,13683,1.00,0.00,5),(67416,13684,30.00,2500.00,1),(67417,13684,2.00,10000000.00,3),(67418,13684,2.00,0.00,4),(67419,13684,20.00,0.00,2),(67420,13684,1.00,0.00,5),(67421,13685,30.00,2500.00,1),(67422,13685,2.50,10000000.00,3),(67423,13685,2.00,0.00,4),(67424,13685,20.00,0.00,2),(67425,13685,1.00,0.00,5),(67426,13686,30.00,2500.00,1),(67427,13686,2.00,10000000.00,3),(67428,13686,2.00,0.00,4),(67429,13686,20.00,0.00,2),(67430,13686,1.00,0.00,5),(67431,13687,30.00,5000.00,1),(67432,13687,2.50,10000000.00,3),(67433,13687,2.00,0.00,4),(67434,13687,20.00,0.00,2),(67435,13687,1.00,0.00,5),(67436,13688,30.00,5000.00,1),(67437,13688,2.00,10000000.00,3),(67438,13688,2.00,0.00,4),(67439,13688,20.00,0.00,2),(67440,13688,1.00,0.00,5),(67441,13689,30.00,5000.00,1),(67442,13689,2.50,10000000.00,3),(67443,13689,2.00,0.00,4),(67444,13689,20.00,0.00,2),(67445,13689,1.00,0.00,5),(67446,13690,30.00,5000.00,1),(67447,13690,2.00,10000000.00,3),(67448,13690,2.00,0.00,4),(67449,13690,20.00,0.00,2),(67450,13690,1.00,0.00,5),(67451,13691,10.00,1000.00,1),(67452,13691,2.50,10000000.00,3),(67453,13691,2.00,0.00,4),(67454,13691,20.00,0.00,2),(67455,13691,1.00,0.00,5),(67456,13692,10.00,1000.00,1),(67457,13692,2.00,10000000.00,3),(67458,13692,2.00,0.00,4),(67459,13692,20.00,0.00,2),(67460,13692,1.00,0.00,5),(67461,13693,10.00,1000.00,1),(67462,13693,2.50,10000000.00,3),(67463,13693,2.00,0.00,4),(67464,13693,20.00,0.00,2),(67465,13693,1.00,0.00,5),(67466,13694,10.00,1000.00,1),(67467,13694,2.00,10000000.00,3),(67468,13694,2.00,0.00,4),(67469,13694,20.00,0.00,2),(67470,13694,1.00,0.00,5),(67471,13695,50.00,0.00,1),(67472,13695,2.50,10000000.00,3),(67473,13695,2.00,0.00,4),(67474,13695,20.00,0.00,2),(67475,13695,1.00,0.00,5),(67476,13696,50.00,0.00,1),(67477,13696,2.00,10000000.00,3),(67478,13696,2.00,0.00,4),(67479,13696,20.00,0.00,2),(67480,13696,1.00,0.00,5),(67481,13697,50.00,0.00,1),(67482,13697,2.50,10000000.00,3),(67483,13697,2.00,0.00,4),(67484,13697,20.00,0.00,2),(67485,13697,1.00,0.00,5),(67486,13698,50.00,0.00,1),(67487,13698,2.00,10000000.00,3),(67488,13698,2.00,0.00,4),(67489,13698,20.00,0.00,2),(67490,13698,1.00,0.00,5),(67491,13699,30.00,0.00,1),(67492,13699,2.50,10000000.00,3),(67493,13699,2.00,0.00,4),(67494,13699,20.00,0.00,2),(67495,13699,1.00,0.00,5),(67496,13700,30.00,0.00,1),(67497,13700,2.00,10000000.00,3),(67498,13700,2.00,0.00,4),(67499,13700,20.00,0.00,2),(67500,13700,1.00,0.00,5),(67501,13701,30.00,0.00,1),(67502,13701,2.50,10000000.00,3),(67503,13701,2.00,0.00,4),(67504,13701,20.00,0.00,2),(67505,13701,1.00,0.00,5),(67506,13702,25.00,0.00,1),(67507,13702,2.00,10000000.00,3),(67508,13702,2.00,0.00,4),(67509,13702,20.00,0.00,2),(67510,13702,1.00,0.00,5),(67511,13703,30.00,0.00,1),(67512,13703,2.50,10000000.00,3),(67513,13703,2.00,0.00,4),(67514,13703,20.00,0.00,2),(67515,13703,1.00,0.00,5),(67516,13704,30.00,0.00,1),(67517,13704,2.00,10000000.00,3),(67518,13704,2.00,0.00,4),(67519,13704,20.00,0.00,2),(67520,13704,1.00,0.00,5),(67521,13705,30.00,0.00,1),(67522,13705,2.50,10000000.00,3),(67523,13705,2.00,0.00,4),(67524,13705,20.00,0.00,2),(67525,13705,1.00,0.00,5),(67526,13706,10.00,0.00,1),(67527,13706,2.50,10000000.00,3),(67528,13706,2.00,0.00,4),(67529,13706,20.00,0.00,2),(67530,13706,1.00,0.00,5),(67531,13707,10.00,0.00,1),(67532,13707,2.00,10000000.00,3),(67533,13707,2.00,0.00,4),(67534,13707,20.00,0.00,2),(67535,13707,1.00,0.00,5),(67536,13708,10.00,0.00,1),(67537,13708,2.50,10000000.00,3),(67538,13708,2.00,0.00,4),(67539,13708,20.00,0.00,2),(67540,13708,1.00,0.00,5),(67541,13709,5.00,0.00,1),(67542,13709,2.00,10000000.00,3),(67543,13709,2.00,0.00,4),(67544,13709,20.00,0.00,2),(67545,13709,1.00,0.00,5),(67546,13710,10.00,0.00,1),(67547,13710,2.50,0.00,3),(67548,13710,2.00,0.00,4),(67549,13710,20.00,0.00,2),(67550,13710,0.00,0.00,5),(67551,13711,10.00,0.00,1),(67552,13711,2.50,10000000.00,3),(67553,13711,2.00,0.00,4),(67554,13711,20.00,0.00,2),(67555,13711,0.00,0.00,5),(67556,13712,10.00,0.00,1),(67557,13712,2.00,10000000.00,3),(67558,13712,2.00,0.00,4),(67559,13712,20.00,0.00,2),(67560,13712,1.00,0.00,5),(67561,13713,10.00,0.00,1),(67562,13713,2.50,10000000.00,3),(67563,13713,2.00,0.00,4),(67564,13713,20.00,0.00,2),(67565,13713,1.00,0.00,5),(67566,13714,20.00,0.00,1),(67567,13714,2.50,10000000.00,3),(67568,13714,2.00,0.00,4),(67569,13714,20.00,0.00,2),(67570,13714,1.00,0.00,5),(67571,13715,20.00,0.00,1),(67572,13715,2.00,10000000.00,3),(67573,13715,2.00,0.00,4),(67574,13715,20.00,0.00,2),(67575,13715,1.00,0.00,5),(67576,13716,30.00,0.00,1),(67577,13716,2.50,0.00,3),(67578,13716,2.00,0.00,4),(67579,13716,20.00,0.00,2),(67580,13716,0.00,0.00,5),(67581,13717,30.00,0.00,1),(67582,13717,2.50,10000000.00,3),(67583,13717,2.00,0.00,4),(67584,13717,20.00,0.00,2),(67585,13717,1.00,0.00,5),(67586,13718,30.00,0.00,1),(67587,13718,2.00,10000000.00,3),(67588,13718,2.00,0.00,4),(67589,13718,20.00,0.00,2),(67590,13718,1.00,0.00,5),(67591,13719,30.00,0.00,1),(67592,13719,2.50,10000000.00,3),(67593,13719,2.00,0.00,4),(67594,13719,20.00,0.00,2),(67595,13719,1.00,0.00,5),(67596,13720,20.00,0.00,1),(67597,13720,2.50,0.00,3),(67598,13720,2.00,0.00,4),(67599,13720,20.00,0.00,2),(67600,13720,0.00,0.00,5),(67601,13721,20.00,0.00,1),(67602,13721,2.50,10000000.00,3),(67603,13721,2.00,0.00,4),(67604,13721,20.00,0.00,2),(67605,13721,1.00,0.00,5),(67606,13722,20.00,0.00,1),(67607,13722,2.00,10000000.00,3),(67608,13722,2.00,0.00,4),(67609,13722,20.00,0.00,2),(67610,13722,1.00,0.00,5),(67611,13723,20.00,0.00,1),(67612,13723,2.50,10000000.00,3),(67613,13723,2.00,0.00,4),(67614,13723,20.00,0.00,2),(67615,13723,1.00,0.00,5),(84666,17135,20.00,5000.00,1),(84667,17135,10.00,0.00,3),(84668,17135,2.00,0.00,4),(84669,17135,20.00,0.00,2),(84670,17135,0.00,0.00,5),(84671,17136,20.00,5000.00,1),(84672,17136,10.00,10000000.00,3),(84673,17136,2.00,0.00,4),(84674,17136,20.00,0.00,2),(84675,17136,1.00,0.00,5),(84676,17137,10.00,5000.00,1),(84677,17137,0.00,0.00,3),(84678,17137,0.00,0.00,4),(84679,17137,20.00,0.00,2),(84680,17137,0.00,0.00,5),(84681,17138,10.00,20000.00,1),(84682,17138,0.00,0.00,3),(84683,17138,0.00,0.00,4),(84684,17138,20.00,0.00,2),(84685,17138,0.00,0.00,5),(84686,17139,10.00,10000.00,1),(84687,17139,10.00,10000000.00,3),(84688,17139,2.00,0.00,4),(84689,17139,20.00,0.00,2),(84690,17139,1.00,0.00,5),(84691,17140,10.00,10000.00,1),(84692,17140,0.00,0.00,3),(84693,17140,0.00,0.00,4),(84694,17140,20.00,0.00,2),(84695,17140,0.00,0.00,5),(84696,17141,20.00,2500.00,1),(84697,17141,10.00,0.00,3),(84698,17141,2.00,0.00,4),(84699,17141,20.00,0.00,2),(84700,17141,0.00,0.00,5),(84701,17142,20.00,2500.00,1),(84702,17142,10.00,10000000.00,3),(84703,17142,2.00,0.00,4),(84704,17142,20.00,0.00,2),(84705,17142,1.00,0.00,5),(84706,17143,10.00,2500.00,1),(84707,17143,0.00,0.00,3),(84708,17143,0.00,0.00,4),(84709,17143,20.00,0.00,2),(84710,17143,0.00,0.00,5),(84711,17144,10.00,5000.00,1),(84712,17144,0.00,0.00,3),(84713,17144,0.00,0.00,4),(84714,17144,20.00,0.00,2),(84715,17144,0.00,0.00,5),(84716,17145,20.00,5000.00,1),(84717,17145,10.00,0.00,3),(84718,17145,2.00,0.00,4),(84719,17145,20.00,0.00,2),(84720,17145,0.00,0.00,5),(84721,17146,20.00,5000.00,1),(84722,17146,10.00,10000000.00,3),(84723,17146,2.00,0.00,4),(84724,17146,20.00,0.00,2),(84725,17146,1.00,0.00,5),(84726,17147,10.00,5000.00,1),(84727,17147,0.00,0.00,3),(84728,17147,0.00,0.00,4),(84729,17147,20.00,0.00,2),(84730,17147,0.00,0.00,5),(84731,17148,10.00,100000.00,1),(84732,17148,10.00,0.00,3),(84733,17148,2.00,0.00,4),(84734,17148,20.00,0.00,2),(84735,17148,0.00,0.00,5),(84736,17149,10.00,100000.00,1),(84737,17149,10.00,1000000.00,3),(84738,17149,2.00,0.00,4),(84739,17149,20.00,0.00,2),(84740,17149,1.00,0.00,5),(84741,17150,10.00,100000.00,1),(84742,17150,0.00,0.00,3),(84743,17150,0.00,0.00,4),(84744,17150,20.00,0.00,2),(84745,17150,0.00,0.00,5),(84746,17151,10.00,200000.00,1),(84747,17151,0.00,0.00,3),(84748,17151,0.00,0.00,4),(84749,17151,20.00,0.00,2),(84750,17151,0.00,0.00,5),(84751,17152,1.00,5000000.00,1),(84752,17152,0.00,0.00,3),(84753,17152,0.00,0.00,4),(84754,17152,20.00,0.00,2),(84755,17152,0.00,0.00,5),(84756,17153,20.00,0.00,1),(84757,17153,10.00,1000000.00,3),(84758,17153,2.00,0.00,4),(84759,17153,20.00,0.00,2),(84760,17153,1.00,0.00,5),(84761,17154,20.00,0.00,1),(84762,17154,0.00,0.00,3),(84763,17154,0.00,0.00,4),(84764,17154,20.00,0.00,2),(84765,17154,0.00,0.00,5),(84766,17155,20.00,0.00,1),(84767,17155,10.00,0.00,3),(84768,17155,2.00,0.00,4),(84769,17155,20.00,0.00,2),(84770,17155,0.00,0.00,5),(84771,17156,20.00,2500.00,1),(84772,17156,10.00,10000000.00,3),(84773,17156,2.00,0.00,4),(84774,17156,20.00,0.00,2),(84775,17156,1.00,0.00,5),(84776,17157,10.00,0.00,1),(84777,17157,0.00,0.00,3),(84778,17157,0.00,0.00,4),(84779,17157,20.00,0.00,2),(84780,17157,0.00,0.00,5),(84781,17158,2.00,20000.00,1),(84782,17158,10.00,0.00,3),(84783,17158,2.00,0.00,4),(84784,17158,20.00,0.00,2),(84785,17158,0.00,0.00,5),(84786,17159,2.00,50000.00,1),(84787,17159,10.00,10000000.00,3),(84788,17159,2.00,0.00,4),(84789,17159,20.00,0.00,2),(84790,17159,1.00,0.00,5),(84791,17160,2.00,50000.00,1),(84792,17160,0.00,0.00,3),(84793,17160,0.00,0.00,4),(84794,17160,20.00,0.00,2),(84795,17160,0.00,0.00,5),(84796,17161,2.00,50000.00,1),(84797,17161,0.00,0.00,3),(84798,17161,0.00,0.00,4),(84799,17161,20.00,0.00,2),(84800,17161,0.00,0.00,5),(84801,17162,2.00,75000.00,1),(84802,17162,0.00,0.00,3),(84803,17162,0.00,0.00,4),(84804,17162,20.00,0.00,2),(84805,17162,0.00,0.00,5),(84806,17163,10.00,30000.00,1),(84807,17163,0.00,0.00,3),(84808,17163,0.00,0.00,4),(84809,17163,20.00,0.00,2),(84810,17163,0.00,0.00,5),(84811,17164,20.00,120000.00,1),(84812,17164,10.00,0.00,3),(84813,17164,2.00,0.00,4),(84814,17164,20.00,0.00,2),(84815,17164,0.00,0.00,5),(84816,17165,20.00,120000.00,1),(84817,17165,10.00,10000000.00,3),(84818,17165,2.00,0.00,4),(84819,17165,20.00,0.00,2),(84820,17165,1.00,0.00,5),(84821,17166,20.00,120000.00,1),(84822,17166,0.00,0.00,3),(84823,17166,0.00,0.00,4),(84824,17166,20.00,0.00,2),(84825,17166,0.00,0.00,5),(84826,17167,10.00,180000.00,1),(84827,17167,0.00,0.00,3),(84828,17167,0.00,0.00,4),(84829,17167,20.00,0.00,2),(84830,17167,0.00,0.00,5),(84831,17168,10.00,120000.00,1),(84832,17168,0.00,0.00,3),(84833,17168,0.00,0.00,4),(84834,17168,20.00,0.00,2),(84835,17168,0.00,0.00,5),(84836,17169,10.00,120000.00,1),(84837,17169,10.00,10000000.00,3),(84838,17169,2.00,0.00,4),(84839,17169,20.00,0.00,2),(84840,17169,1.00,0.00,5),(84841,17170,10.00,120000.00,1),(84842,17170,0.00,0.00,3),(84843,17170,0.00,0.00,4),(84844,17170,20.00,0.00,2),(84845,17170,0.00,0.00,5),(84846,17171,2.00,120000.00,1),(84847,17171,0.00,0.00,3),(84848,17171,0.00,0.00,4),(84849,17171,20.00,0.00,2),(84850,17171,0.00,0.00,5),(84851,17172,2.00,180000.00,1),(84852,17172,0.00,0.00,3),(84853,17172,0.00,0.00,4),(84854,17172,20.00,0.00,2),(84855,17172,0.00,0.00,5),(84856,17173,30.00,2500.00,1),(84857,17173,10.00,0.00,3),(84858,17173,2.00,0.00,4),(84859,17173,20.00,0.00,2),(84860,17173,0.00,0.00,5),(84861,17174,30.00,2500.00,1),(84862,17174,10.00,10000000.00,3),(84863,17174,2.00,0.00,4),(84864,17174,20.00,0.00,2),(84865,17174,1.00,0.00,5),(84866,17175,30.00,2500.00,1),(84867,17175,0.00,0.00,3),(84868,17175,0.00,0.00,4),(84869,17175,20.00,0.00,2),(84870,17175,0.00,0.00,5),(84871,17176,30.00,5000.00,1),(84872,17176,0.00,0.00,3),(84873,17176,0.00,0.00,4),(84874,17176,20.00,0.00,2),(84875,17176,0.00,0.00,5),(84876,17177,30.00,5000.00,1),(84877,17177,10.00,0.00,3),(84878,17177,2.00,0.00,4),(84879,17177,20.00,0.00,2),(84880,17177,1.00,0.00,5),(84881,17178,30.00,5000.00,1),(84882,17178,10.00,10000000.00,3),(84883,17178,2.00,0.00,4),(84884,17178,20.00,0.00,2),(84885,17178,1.00,0.00,5),(84886,17179,30.00,5000.00,1),(84887,17179,0.00,0.00,3),(84888,17179,0.00,0.00,4),(84889,17179,20.00,0.00,2),(84890,17179,0.00,0.00,5),(84891,17180,30.00,10000.00,1),(84892,17180,0.00,0.00,3),(84893,17180,0.00,0.00,4),(84894,17180,20.00,0.00,2),(84895,17180,0.00,0.00,5),(84896,17181,20.00,2500.00,1),(84897,17181,10.00,0.00,3),(84898,17181,2.00,0.00,4),(84899,17181,20.00,0.00,2),(84900,17181,0.00,0.00,5),(84901,17182,20.00,2500.00,1),(84902,17182,10.00,10000000.00,3),(84903,17182,2.00,0.00,4),(84904,17182,20.00,0.00,2),(84905,17182,1.00,0.00,5),(84906,17183,20.00,0.00,1),(84907,17183,10.00,10000000.00,3),(84908,17183,2.00,0.00,4),(84909,17183,20.00,0.00,2),(84910,17183,1.00,0.00,5),(84911,17184,10.00,0.00,1),(84912,17184,0.00,0.00,3),(84913,17184,0.00,0.00,4),(84914,17184,20.00,0.00,2),(84915,17184,0.00,0.00,5),(84916,17185,10.00,0.00,1),(84917,17185,0.00,0.00,3),(84918,17185,0.00,0.00,4),(84919,17185,20.00,0.00,2),(84920,17185,0.00,0.00,5),(84921,17186,10.00,1000.00,1),(84922,17186,10.00,0.00,3),(84923,17186,2.00,0.00,4),(84924,17186,20.00,0.00,2),(84925,17186,0.00,0.00,5),(84926,17187,10.00,1000.00,1),(84927,17187,10.00,10000000.00,3),(84928,17187,2.00,0.00,4),(84929,17187,20.00,0.00,2),(84930,17187,1.00,0.00,5),(84931,17188,10.00,1000.00,1),(84932,17188,0.00,0.00,3),(84933,17188,0.00,0.00,4),(84934,17188,20.00,0.00,2),(84935,17188,0.00,0.00,5),(84936,17189,5.00,2500.00,1),(84937,17189,10.00,0.00,3),(84938,17189,2.00,0.00,4),(84939,17189,20.00,0.00,2),(84940,17189,0.00,0.00,5),(84941,17190,5.00,2500.00,1),(84942,17190,10.00,10000000.00,3),(84943,17190,2.00,0.00,4),(84944,17190,20.00,0.00,2),(84945,17190,1.00,0.00,5),(84946,17191,10.00,2500.00,1),(84947,17191,10.00,10000000.00,3),(84948,17191,2.00,0.00,4),(84949,17191,20.00,0.00,2),(84950,17191,1.00,0.00,5),(84951,17192,10.00,2500.00,1),(84952,17192,0.00,0.00,3),(84953,17192,0.00,0.00,4),(84954,17192,20.00,0.00,2),(84955,17192,0.00,0.00,5),(84956,17193,10.00,5000.00,1),(84957,17193,0.00,0.00,3),(84958,17193,0.00,0.00,4),(84959,17193,20.00,0.00,2),(84960,17193,0.00,0.00,5),(84961,17194,20.00,2500.00,1),(84962,17194,10.00,10000000.00,3),(84963,17194,2.00,0.00,4),(84964,17194,20.00,0.00,2),(84965,17194,1.00,0.00,5),(84966,17195,10.00,2500.00,1),(84967,17195,0.00,0.00,3),(84968,17195,0.00,0.00,4),(84969,17195,20.00,0.00,2),(84970,17195,0.00,0.00,5),(84971,17196,5.00,20000.00,1),(84972,17196,10.00,0.00,3),(84973,17196,2.00,0.00,4),(84974,17196,20.00,0.00,2),(84975,17196,0.00,0.00,5),(84976,17197,5.00,20000.00,1),(84977,17197,10.00,10000000.00,3),(84978,17197,2.00,0.00,4),(84979,17197,20.00,0.00,2),(84980,17197,1.00,0.00,5),(84981,17198,10.00,20000.00,1),(84982,17198,10.00,10000000.00,3),(84983,17198,2.00,0.00,4),(84984,17198,20.00,0.00,2),(84985,17198,1.00,0.00,5),(84986,17199,10.00,20000.00,1),(84987,17199,0.00,0.00,3),(84988,17199,0.00,0.00,4),(84989,17199,20.00,0.00,2),(84990,17199,0.00,0.00,5),(84991,17200,10.00,30000.00,1),(84992,17200,0.00,0.00,3),(84993,17200,0.00,0.00,4),(84994,17200,20.00,0.00,2),(84995,17200,0.00,0.00,5),(84996,17201,1.00,20000.00,1),(84997,17201,10.00,0.00,3),(84998,17201,2.00,0.00,4),(84999,17201,20.00,0.00,2),(85000,17201,0.00,0.00,5),(85001,17202,1.00,20000.00,1),(85002,17202,10.00,10000000.00,3),(85003,17202,2.00,0.00,4),(85004,17202,20.00,0.00,2),(85005,17202,1.00,0.00,5),(85006,17203,1.00,20000.00,1),(85007,17203,0.00,0.00,3),(85008,17203,0.00,0.00,4),(85009,17203,20.00,0.00,2),(85010,17203,0.00,0.00,5),(85011,17204,2.00,20000.00,1),(85012,17204,0.00,0.00,3),(85013,17204,0.00,0.00,4),(85014,17204,20.00,0.00,2),(85015,17204,0.00,0.00,5),(85016,17205,2.00,75000.00,1),(85017,17205,0.00,0.00,3),(85018,17205,0.00,0.00,4),(85019,17205,20.00,0.00,2),(85020,17205,0.00,0.00,5),(85021,17206,1.00,20000.00,1),(85022,17206,10.00,0.00,3),(85023,17206,2.00,0.00,4),(85024,17206,20.00,0.00,2),(85025,17206,0.00,0.00,5),(85026,17207,1.00,50000.00,1),(85027,17207,10.00,10000000.00,3),(85028,17207,2.00,0.00,4),(85029,17207,20.00,0.00,2),(85030,17207,1.00,0.00,5),(85031,17208,1.00,50000.00,1),(85032,17208,0.00,0.00,3),(85033,17208,0.00,0.00,4),(85034,17208,20.00,0.00,2),(85035,17208,0.00,0.00,5),(85036,17209,2.00,50000.00,1),(85037,17209,0.00,0.00,3),(85038,17209,0.00,0.00,4),(85039,17209,20.00,0.00,2),(85040,17209,0.00,0.00,5),(85041,17210,2.00,75000.00,1),(85042,17210,0.00,0.00,3),(85043,17210,0.00,0.00,4),(85044,17210,20.00,0.00,2),(85045,17210,0.00,0.00,5),(85046,17211,2.00,50000.00,1),(85047,17211,0.00,0.00,3),(85048,17211,0.00,0.00,4),(85049,17211,20.00,0.00,2),(85050,17211,0.00,0.00,5),(85051,17212,0.00,0.00,1),(85052,17212,0.00,0.00,3),(85053,17212,0.00,0.00,4),(85054,17212,20.00,0.00,2),(85055,17212,0.00,0.00,5),(85056,17213,20.00,75000.00,1),(85057,17213,0.00,0.00,3),(85058,17213,0.00,0.00,4),(85059,17213,20.00,0.00,2),(85060,17213,0.00,0.00,5),(85061,17214,1.00,50000.00,1),(85062,17214,0.00,0.00,3),(85063,17214,0.00,0.00,4),(85064,17214,20.00,0.00,2),(85065,17214,0.00,0.00,5),(85066,17215,0.00,0.00,1),(85067,17215,0.00,0.00,3),(85068,17215,0.00,0.00,4),(85069,17215,20.00,0.00,2),(85070,17215,0.00,0.00,5),(85071,17216,20.00,75000.00,1),(85072,17216,0.00,0.00,3),(85073,17216,0.00,0.00,4),(85074,17216,20.00,0.00,2),(85075,17216,0.00,0.00,5),(109826,22167,10.00,5000.00,1),(109827,22167,2.50,0.00,3),(109828,22167,2.00,0.00,4),(109829,22167,20.00,0.00,2),(109830,22167,0.00,0.00,5),(109831,22168,10.00,5000.00,1),(109832,22168,0.00,0.00,3),(109833,22168,2.00,0.00,4),(109834,22168,20.00,0.00,2),(109835,22168,0.00,0.00,5),(109836,22169,10.00,5000.00,1),(109837,22169,0.00,0.00,3),(109838,22169,2.00,0.00,4),(109839,22169,20.00,0.00,2),(109840,22169,1.00,0.00,5),(109841,22170,10.00,5000.00,1),(109842,22170,0.00,0.00,3),(109843,22170,0.00,0.00,4),(109844,22170,20.00,0.00,2),(109845,22170,0.00,0.00,5),(109846,22171,10.00,20000.00,1),(109847,22171,0.00,0.00,3),(109848,22171,0.00,0.00,4),(109849,22171,20.00,0.00,2),(109850,22171,0.00,0.00,5),(109851,22172,10.00,10000.00,1),(109852,22172,0.00,0.00,3),(109853,22172,2.00,0.00,4),(109854,22172,20.00,0.00,2),(109855,22172,1.00,0.00,5),(109856,22173,10.00,10000.00,1),(109857,22173,0.00,0.00,3),(109858,22173,0.00,0.00,4),(109859,22173,20.00,0.00,2),(109860,22173,0.00,0.00,5),(109861,22174,10.00,2500.00,1),(109862,22174,2.50,0.00,3),(109863,22174,2.00,0.00,4),(109864,22174,20.00,0.00,2),(109865,22174,0.00,0.00,5),(109866,22175,10.00,2500.00,1),(109867,22175,0.00,0.00,3),(109868,22175,2.00,0.00,4),(109869,22175,20.00,0.00,2),(109870,22175,0.00,0.00,5),(109871,22176,10.00,2500.00,1),(109872,22176,0.00,0.00,3),(109873,22176,2.00,0.00,4),(109874,22176,20.00,0.00,2),(109875,22176,1.00,0.00,5),(109876,22177,10.00,2500.00,1),(109877,22177,0.00,0.00,3),(109878,22177,0.00,0.00,4),(109879,22177,20.00,0.00,2),(109880,22177,0.00,0.00,5),(109881,22178,10.00,5000.00,1),(109882,22178,0.00,0.00,3),(109883,22178,0.00,0.00,4),(109884,22178,20.00,0.00,2),(109885,22178,0.00,0.00,5),(109886,22179,10.00,5000.00,1),(109887,22179,2.50,0.00,3),(109888,22179,2.00,0.00,4),(109889,22179,20.00,0.00,2),(109890,22179,0.00,0.00,5),(109891,22180,10.00,5000.00,1),(109892,22180,0.00,0.00,3),(109893,22180,2.00,0.00,4),(109894,22180,20.00,0.00,2),(109895,22180,0.00,0.00,5),(109896,22181,10.00,5000.00,1),(109897,22181,0.00,0.00,3),(109898,22181,2.00,0.00,4),(109899,22181,20.00,0.00,2),(109900,22181,1.00,0.00,5),(109901,22182,10.00,5000.00,1),(109902,22182,0.00,0.00,3),(109903,22182,0.00,0.00,4),(109904,22182,20.00,0.00,2),(109905,22182,0.00,0.00,5),(109906,22183,10.00,100000.00,1),(109907,22183,2.50,0.00,3),(109908,22183,2.00,0.00,4),(109909,22183,20.00,0.00,2),(109910,22183,0.00,0.00,5),(109911,22184,10.00,100000.00,1),(109912,22184,0.00,0.00,3),(109913,22184,2.00,0.00,4),(109914,22184,20.00,0.00,2),(109915,22184,0.00,0.00,5),(109916,22185,10.00,100000.00,1),(109917,22185,0.00,0.00,3),(109918,22185,2.00,0.00,4),(109919,22185,20.00,0.00,2),(109920,22185,1.00,0.00,5),(109921,22186,10.00,100000.00,1),(109922,22186,0.00,0.00,3),(109923,22186,0.00,0.00,4),(109924,22186,20.00,0.00,2),(109925,22186,0.00,0.00,5),(109926,22187,10.00,200000.00,1),(109927,22187,0.00,0.00,3),(109928,22187,0.00,0.00,4),(109929,22187,20.00,0.00,2),(109930,22187,0.00,0.00,5),(109931,22188,1.00,5000000.00,1),(109932,22188,0.00,0.00,3),(109933,22188,0.00,0.00,4),(109934,22188,20.00,0.00,2),(109935,22188,0.00,0.00,5),(109936,22189,20.00,2500.00,1),(109937,22189,2.50,0.00,3),(109938,22189,2.00,0.00,4),(109939,22189,20.00,0.00,2),(109940,22189,0.00,0.00,5),(109941,22190,20.00,2500.00,1),(109942,22190,0.00,0.00,3),(109943,22190,2.00,0.00,4),(109944,22190,20.00,0.00,2),(109945,22190,0.00,0.00,5),(109946,22191,20.00,0.00,1),(109947,22191,0.00,0.00,3),(109948,22191,2.00,0.00,4),(109949,22191,20.00,0.00,2),(109950,22191,1.00,0.00,5),(109951,22192,20.00,0.00,1),(109952,22192,0.00,0.00,3),(109953,22192,0.00,0.00,4),(109954,22192,20.00,0.00,2),(109955,22192,0.00,0.00,5),(109956,22193,20.00,0.00,1),(109957,22193,2.50,0.00,3),(109958,22193,2.00,0.00,4),(109959,22193,20.00,0.00,2),(109960,22193,0.00,0.00,5),(109961,22194,20.00,0.00,1),(109962,22194,0.00,0.00,3),(109963,22194,2.00,0.00,4),(109964,22194,20.00,0.00,2),(109965,22194,0.00,0.00,5),(109966,22195,20.00,0.00,1),(109967,22195,0.00,0.00,3),(109968,22195,2.00,0.00,4),(109969,22195,20.00,0.00,2),(109970,22195,1.00,0.00,5),(109971,22196,20.00,0.00,1),(109972,22196,0.00,0.00,3),(109973,22196,0.00,0.00,4),(109974,22196,20.00,0.00,2),(109975,22196,0.00,0.00,5),(109976,22197,2.20,20.00,1),(109977,22197,2.50,0.00,3),(109978,22197,2.00,0.00,4),(109979,22197,0.00,0.00,2),(109980,22197,0.00,0.00,5),(109981,22198,2.00,20000.00,1),(109982,22198,0.00,0.00,3),(109983,22198,2.00,0.00,4),(109984,22198,20.00,0.00,2),(109985,22198,0.00,0.00,5),(109986,22199,2.00,50000.00,1),(109987,22199,0.00,0.00,3),(109988,22199,2.00,0.00,4),(109989,22199,20.00,0.00,2),(109990,22199,1.00,0.00,5),(109991,22200,2.00,50000.00,1),(109992,22200,0.00,0.00,3),(109993,22200,0.00,0.00,4),(109994,22200,20.00,0.00,2),(109995,22200,0.00,0.00,5),(109996,22201,2.00,50000.00,1),(109997,22201,0.00,0.00,3),(109998,22201,0.00,0.00,4),(109999,22201,20.00,0.00,2),(110000,22201,0.00,0.00,5),(110001,22202,2.00,75000.00,1),(110002,22202,0.00,0.00,3),(110003,22202,0.00,0.00,4),(110004,22202,20.00,0.00,2),(110005,22202,0.00,0.00,5),(110006,22203,10.00,30000.00,1),(110007,22203,0.00,0.00,3),(110008,22203,0.00,0.00,4),(110009,22203,20.00,0.00,2),(110010,22203,0.00,0.00,5),(110011,22204,20.00,120000.00,1),(110012,22204,2.50,0.00,3),(110013,22204,2.00,0.00,4),(110014,22204,20.00,0.00,2),(110015,22204,0.00,0.00,5),(110016,22205,20.00,120000.00,1),(110017,22205,0.00,0.00,3),(110018,22205,2.00,0.00,4),(110019,22205,20.00,0.00,2),(110020,22205,0.00,0.00,5),(110021,22206,20.00,120000.00,1),(110022,22206,0.00,0.00,3),(110023,22206,2.00,0.00,4),(110024,22206,20.00,0.00,2),(110025,22206,1.00,0.00,5),(110026,22207,20.00,120000.00,1),(110027,22207,0.00,0.00,3),(110028,22207,0.00,0.00,4),(110029,22207,20.00,0.00,2),(110030,22207,0.00,0.00,5),(110031,22208,10.00,120000.00,1),(110032,22208,0.00,0.00,3),(110033,22208,0.00,0.00,4),(110034,22208,20.00,0.00,2),(110035,22208,0.00,0.00,5),(110036,22209,10.00,180000.00,1),(110037,22209,0.00,0.00,3),(110038,22209,0.00,0.00,4),(110039,22209,20.00,0.00,2),(110040,22209,0.00,0.00,5),(110041,22210,10.00,120000.00,1),(110042,22210,0.00,0.00,3),(110043,22210,2.00,0.00,4),(110044,22210,20.00,0.00,2),(110045,22210,1.00,0.00,5),(110046,22211,10.00,120000.00,1),(110047,22211,0.00,0.00,3),(110048,22211,0.00,0.00,4),(110049,22211,20.00,0.00,2),(110050,22211,0.00,0.00,5),(110051,22212,2.00,120000.00,1),(110052,22212,0.00,0.00,3),(110053,22212,0.00,0.00,4),(110054,22212,20.00,0.00,2),(110055,22212,0.00,0.00,5),(110056,22213,2.00,180000.00,1),(110057,22213,0.00,0.00,3),(110058,22213,0.00,0.00,4),(110059,22213,20.00,0.00,2),(110060,22213,0.00,0.00,5),(110061,22214,30.00,2500.00,1),(110062,22214,2.50,0.00,3),(110063,22214,2.00,0.00,4),(110064,22214,20.00,0.00,2),(110065,22214,0.00,0.00,5),(110066,22215,30.00,2500.00,1),(110067,22215,0.00,0.00,3),(110068,22215,2.00,0.00,4),(110069,22215,20.00,0.00,2),(110070,22215,0.00,0.00,5),(110071,22216,30.00,2500.00,1),(110072,22216,0.00,0.00,3),(110073,22216,2.00,0.00,4),(110074,22216,20.00,0.00,2),(110075,22216,1.00,0.00,5),(110076,22217,30.00,2500.00,1),(110077,22217,0.00,0.00,3),(110078,22217,0.00,0.00,4),(110079,22217,20.00,0.00,2),(110080,22217,0.00,0.00,5),(110081,22218,30.00,5000.00,1),(110082,22218,0.00,0.00,3),(110083,22218,0.00,0.00,4),(110084,22218,20.00,0.00,2),(110085,22218,0.00,0.00,5),(110086,22219,30.00,5000.00,1),(110087,22219,2.50,0.00,3),(110088,22219,2.00,0.00,4),(110089,22219,20.00,0.00,2),(110090,22219,0.00,0.00,5),(110091,22220,30.00,5000.00,1),(110092,22220,0.00,0.00,3),(110093,22220,2.00,0.00,4),(110094,22220,20.00,0.00,2),(110095,22220,0.00,0.00,5),(110096,22221,30.00,5000.00,1),(110097,22221,0.00,0.00,3),(110098,22221,2.00,0.00,4),(110099,22221,20.00,0.00,2),(110100,22221,1.00,0.00,5),(110101,22222,30.00,5000.00,1),(110102,22222,0.00,0.00,3),(110103,22222,0.00,0.00,4),(110104,22222,20.00,0.00,2),(110105,22222,0.00,0.00,5),(110106,22223,30.00,10000.00,1),(110107,22223,0.00,0.00,3),(110108,22223,0.00,0.00,4),(110109,22223,20.00,0.00,2),(110110,22223,0.00,0.00,5),(110111,22224,20.00,2500.00,1),(110112,22224,2.50,0.00,3),(110113,22224,2.00,0.00,4),(110114,22224,20.00,0.00,2),(110115,22224,0.00,0.00,5),(110116,22225,20.00,2500.00,1),(110117,22225,0.00,0.00,3),(110118,22225,2.00,0.00,4),(110119,22225,20.00,0.00,2),(110120,22225,0.00,0.00,5),(110121,22226,20.00,2500.00,1),(110122,22226,0.00,0.00,3),(110123,22226,2.00,0.00,4),(110124,22226,20.00,0.00,2),(110125,22226,1.00,0.00,5),(110126,22227,20.00,0.00,1),(110127,22227,0.00,0.00,3),(110128,22227,2.00,0.00,4),(110129,22227,20.00,0.00,2),(110130,22227,1.00,0.00,5),(110131,22228,10.00,0.00,1),(110132,22228,0.00,0.00,3),(110133,22228,0.00,0.00,4),(110134,22228,20.00,0.00,2),(110135,22228,0.00,0.00,5),(110136,22229,10.00,0.00,1),(110137,22229,0.00,0.00,3),(110138,22229,0.00,0.00,4),(110139,22229,20.00,0.00,2),(110140,22229,0.00,0.00,5),(110141,22230,10.00,1000.00,1),(110142,22230,2.50,0.00,3),(110143,22230,2.00,0.00,4),(110144,22230,20.00,0.00,2),(110145,22230,0.00,0.00,5),(110146,22231,10.00,1000.00,1),(110147,22231,0.00,0.00,3),(110148,22231,2.00,0.00,4),(110149,22231,20.00,0.00,2),(110150,22231,0.00,0.00,5),(110151,22232,10.00,1000.00,1),(110152,22232,0.00,0.00,3),(110153,22232,2.00,0.00,4),(110154,22232,20.00,0.00,2),(110155,22232,1.00,0.00,5),(110156,22233,10.00,1000.00,1),(110157,22233,0.00,0.00,3),(110158,22233,0.00,0.00,4),(110159,22233,20.00,0.00,2),(110160,22233,0.00,0.00,5),(110161,22234,5.00,2500.00,1),(110162,22234,2.50,0.00,3),(110163,22234,2.00,0.00,4),(110164,22234,20.00,0.00,2),(110165,22234,0.00,0.00,5),(110166,22235,5.00,2500.00,1),(110167,22235,0.00,0.00,3),(110168,22235,2.00,0.00,4),(110169,22235,20.00,0.00,2),(110170,22235,0.00,0.00,5),(110171,22236,5.00,2500.00,1),(110172,22236,0.00,0.00,3),(110173,22236,2.00,0.00,4),(110174,22236,20.00,0.00,2),(110175,22236,1.00,0.00,5),(110176,22237,10.00,2500.00,1),(110177,22237,0.00,0.00,3),(110178,22237,2.00,0.00,4),(110179,22237,20.00,0.00,2),(110180,22237,1.00,0.00,5),(110181,22238,10.00,2500.00,1),(110182,22238,0.00,0.00,3),(110183,22238,0.00,0.00,4),(110184,22238,20.00,0.00,2),(110185,22238,0.00,0.00,5),(110186,22239,10.00,5000.00,1),(110187,22239,0.00,0.00,3),(110188,22239,0.00,0.00,4),(110189,22239,20.00,0.00,2),(110190,22239,0.00,0.00,5),(110191,22240,5.00,20000.00,1),(110192,22240,2.50,0.00,3),(110193,22240,2.00,0.00,4),(110194,22240,20.00,0.00,2),(110195,22240,1.00,0.00,5),(110196,22241,10.00,20000.00,1),(110197,22241,0.00,0.00,3),(110198,22241,0.00,0.00,4),(110199,22241,20.00,0.00,2),(110200,22241,0.00,0.00,5),(110201,22242,5.00,20000.00,1),(110202,22242,2.50,0.00,3),(110203,22242,2.00,0.00,4),(110204,22242,20.00,0.00,2),(110205,22242,0.00,0.00,5),(110206,22243,5.00,20000.00,1),(110207,22243,0.00,0.00,3),(110208,22243,2.00,0.00,4),(110209,22243,20.00,0.00,2),(110210,22243,0.00,0.00,5),(110211,22244,5.00,20000.00,1),(110212,22244,0.00,0.00,3),(110213,22244,2.00,0.00,4),(110214,22244,20.00,0.00,2),(110215,22244,1.00,0.00,5),(110216,22245,10.00,20000.00,1),(110217,22245,0.00,0.00,3),(110218,22245,2.00,0.00,4),(110219,22245,20.00,0.00,2),(110220,22245,1.00,0.00,5),(110221,22246,10.00,20000.00,1),(110222,22246,0.00,0.00,3),(110223,22246,0.00,0.00,4),(110224,22246,20.00,0.00,2),(110225,22246,0.00,0.00,5),(110226,22247,10.00,30000.00,1),(110227,22247,0.00,0.00,3),(110228,22247,0.00,0.00,4),(110229,22247,20.00,0.00,2),(110230,22247,0.00,0.00,5),(110231,22248,1.00,20000.00,1),(110232,22248,2.50,0.00,3),(110233,22248,2.00,0.00,4),(110234,22248,20.00,0.00,2),(110235,22248,0.00,0.00,5),(110236,22249,1.00,20000.00,1),(110237,22249,0.00,0.00,3),(110238,22249,2.00,0.00,4),(110239,22249,20.00,0.00,2),(110240,22249,0.00,0.00,5),(110241,22250,1.00,20000.00,1),(110242,22250,0.00,0.00,3),(110243,22250,2.00,0.00,4),(110244,22250,20.00,0.00,2),(110245,22250,1.00,0.00,5),(110246,22251,1.00,20000.00,1),(110247,22251,0.00,0.00,3),(110248,22251,0.00,0.00,4),(110249,22251,20.00,0.00,2),(110250,22251,0.00,0.00,5),(110251,22252,2.00,20000.00,1),(110252,22252,0.00,0.00,3),(110253,22252,0.00,0.00,4),(110254,22252,20.00,0.00,2),(110255,22252,0.00,0.00,5),(110256,22253,2.00,75000.00,1),(110257,22253,0.00,0.00,3),(110258,22253,0.00,0.00,4),(110259,22253,20.00,0.00,2),(110260,22253,0.00,0.00,5),(110261,22254,1.00,20000.00,1),(110262,22254,2.50,0.00,3),(110263,22254,2.00,0.00,4),(110264,22254,20.00,0.00,2),(110265,22254,0.00,0.00,5),(110266,22255,1.00,20000.00,1),(110267,22255,0.00,0.00,3),(110268,22255,2.00,0.00,4),(110269,22255,20.00,0.00,2),(110270,22255,0.00,0.00,5),(110271,22256,1.00,50000.00,1),(110272,22256,0.00,0.00,3),(110273,22256,2.00,0.00,4),(110274,22256,20.00,0.00,2),(110275,22256,1.00,0.00,5),(110276,22257,1.00,50000.00,1),(110277,22257,0.00,0.00,3),(110278,22257,0.00,0.00,4),(110279,22257,20.00,0.00,2),(110280,22257,0.00,0.00,5),(110281,22258,2.00,50000.00,1),(110282,22258,0.00,0.00,3),(110283,22258,0.00,0.00,4),(110284,22258,20.00,0.00,2),(110285,22258,0.00,0.00,5),(110286,22259,2.00,75000.00,1),(110287,22259,0.00,0.00,3),(110288,22259,0.00,0.00,4),(110289,22259,20.00,0.00,2),(110290,22259,0.00,0.00,5),(110291,22260,2.00,50000.00,1),(110292,22260,0.00,0.00,3),(110293,22260,0.00,0.00,4),(110294,22260,20.00,0.00,2),(110295,22260,0.00,0.00,5),(110296,22261,0.00,0.00,1),(110297,22261,0.00,0.00,3),(110298,22261,0.00,0.00,4),(110299,22261,20.00,0.00,2),(110300,22261,0.00,0.00,5),(110301,22262,20.00,75000.00,1),(110302,22262,0.00,0.00,3),(110303,22262,0.00,0.00,4),(110304,22262,20.00,0.00,2),(110305,22262,0.00,0.00,5),(110306,22263,1.00,50000.00,1),(110307,22263,0.00,0.00,3),(110308,22263,0.00,0.00,4),(110309,22263,20.00,0.00,2),(110310,22263,0.00,0.00,5),(110311,22264,0.00,0.00,1),(110312,22264,0.00,0.00,3),(110313,22264,0.00,0.00,4),(110314,22264,20.00,0.00,2),(110315,22264,0.00,0.00,5),(110316,22265,20.00,75000.00,1),(110317,22265,0.00,0.00,3),(110318,22265,0.00,0.00,4),(110319,22265,20.00,0.00,2),(110320,22265,0.00,0.00,5),(128796,25961,30.00,0.00,1),(128797,25961,10.00,1000000.00,3),(128798,25961,2.00,0.00,4),(128799,25961,20.00,0.00,2),(128800,25961,1.00,0.00,5),(128801,25962,3.00,0.00,1),(128802,25962,0.00,0.00,3),(128803,25962,2.00,0.00,4),(128804,25962,20.00,0.00,2),(128805,25962,1.00,0.00,5),(128806,25963,30.00,0.00,1),(128807,25963,10.00,10000000.00,3),(128808,25963,2.00,0.00,4),(128809,25963,20.00,0.00,2),(128810,25963,1.00,0.00,5),(128811,25964,10.00,0.00,1),(128812,25964,10.00,10000000.00,3),(128813,25964,2.00,0.00,4),(128814,25964,20.00,0.00,2),(128815,25964,1.00,0.00,5),(128816,25965,10.00,0.00,1),(128817,25965,10.00,1000000.00,3),(128818,25965,2.00,0.00,4),(128819,25965,20.00,0.00,2),(128820,25965,1.00,0.00,5),(128821,25966,10.00,0.00,1),(128822,25966,0.00,0.00,3),(128823,25966,2.00,0.00,4),(128824,25966,20.00,0.00,2),(128825,25966,1.00,0.00,5),(128826,25967,10.00,0.00,1),(128827,25967,10.00,1000000.00,3),(128828,25967,2.00,0.00,4),(128829,25967,20.00,0.00,2),(128830,25967,1.00,0.00,5),(128831,25968,10.00,0.00,1),(128832,25968,0.00,0.00,3),(128833,25968,2.00,0.00,4),(128834,25968,20.00,0.00,2),(128835,25968,1.00,0.00,5),(128836,25969,5.00,0.00,1),(128837,25969,2.00,10000000.00,3),(128838,25969,2.00,0.00,4),(128839,25969,20.00,0.00,2),(128840,25969,1.00,0.00,5),(128841,25970,5.00,0.00,1),(128842,25970,10.00,10000000.00,3),(128843,25970,2.00,0.00,4),(128844,25970,20.00,0.00,2),(128845,25970,1.00,0.00,5),(128846,25971,20.00,0.00,1),(128847,25971,10.00,1000000.00,3),(128848,25971,2.00,0.00,4),(128849,25971,20.00,0.00,2),(128850,25971,1.00,0.00,5),(128851,25972,20.00,0.00,1),(128852,25972,0.00,0.00,3),(128853,25972,2.00,0.00,4),(128854,25972,0.00,0.00,2),(128855,25972,1.00,0.00,5),(128856,25973,20.00,0.00,1),(128857,25973,10.00,1000000.00,3),(128858,25973,2.00,0.00,4),(128859,25973,20.00,0.00,2),(128860,25973,1.00,0.00,5),(128861,25974,5.00,0.00,1),(128862,25974,2.00,10000000.00,3),(128863,25974,2.00,0.00,4),(128864,25974,20.00,0.00,2),(128865,25974,1.00,0.00,5),(128866,25975,5.00,0.00,1),(128867,25975,10.00,10000000.00,3),(128868,25975,2.00,0.00,4),(128869,25975,20.00,0.00,2),(128870,25975,1.00,0.00,5),(128871,25976,20.00,0.00,1),(128872,25976,10.00,1000000.00,3),(128873,25976,2.00,0.00,4),(128874,25976,20.00,0.00,2),(128875,25976,1.00,0.00,5),(128876,25977,20.00,0.00,1),(128877,25977,0.00,0.00,3),(128878,25977,2.00,0.00,4),(128879,25977,20.00,0.00,2),(128880,25977,1.00,0.00,5),(128881,25978,20.00,0.00,1),(128882,25978,10.00,10000000.00,3),(128883,25978,2.00,0.00,4),(128884,25978,20.00,0.00,2),(128885,25978,1.00,0.00,5),(128886,25979,20.00,0.00,1),(128887,25979,10.00,1000000.00,3),(128888,25979,2.00,0.00,4),(128889,25979,20.00,0.00,2),(128890,25979,1.00,0.00,5),(128891,25980,20.00,0.00,1),(128892,25980,0.00,0.00,3),(128893,25980,2.00,0.00,4),(128894,25980,20.00,0.00,2),(128895,25980,1.00,0.00,5),(128896,25981,20.00,0.00,1),(128897,25981,10.00,10000000.00,3),(128898,25981,2.00,0.00,4),(128899,25981,20.00,0.00,2),(128900,25981,1.00,0.00,5),(128901,25982,20.00,0.00,1),(128902,25982,10.00,1000000.00,3),(128903,25982,2.00,0.00,4),(128904,25982,20.00,0.00,2),(128905,25982,0.00,0.00,5),(128906,25983,20.00,0.00,1),(128907,25983,0.00,0.00,3),(128908,25983,2.00,0.00,4),(128909,25983,20.00,0.00,2),(128910,25983,0.00,0.00,5),(128911,25984,10.00,0.00,1),(128912,25984,10.00,1000000.00,3),(128913,25984,2.00,0.00,4),(128914,25984,20.00,0.00,2),(128915,25984,0.00,0.00,5),(128916,25985,10.00,0.00,1),(128917,25985,10.00,1000000.00,3),(128918,25985,2.00,0.00,4),(128919,25985,20.00,0.00,2),(128920,25985,1.00,0.00,5),(128921,25986,10.00,0.00,1),(128922,25986,0.00,0.00,3),(128923,25986,2.00,0.00,4),(128924,25986,20.00,0.00,2),(128925,25986,1.00,0.00,5),(128926,25987,10.00,0.00,1),(128927,25987,10.00,1000000.00,3),(128928,25987,2.00,0.00,4),(128929,25987,20.00,0.00,2),(128930,25987,1.00,0.00,5),(128931,25988,20.00,0.00,1),(128932,25988,10.00,1000000.00,3),(128933,25988,2.00,0.00,4),(128934,25988,20.00,0.00,2),(128935,25988,1.00,0.00,5),(128936,25989,20.00,0.00,1),(128937,25989,0.00,0.00,3),(128938,25989,2.00,0.00,4),(128939,25989,0.00,0.00,2),(128940,25989,1.00,0.00,5),(128941,25990,20.00,0.00,1),(128942,25990,10.00,1000000.00,3),(128943,25990,2.00,0.00,4),(128944,25990,20.00,0.00,2),(128945,25990,1.00,0.00,5),(128946,25991,20.00,0.00,1),(128947,25991,10.00,1000000.00,3),(128948,25991,2.00,0.00,4),(128949,25991,20.00,0.00,2),(128950,25991,1.00,0.00,5),(128951,25992,20.00,0.00,1),(128952,25992,0.00,0.00,3),(128953,25992,2.00,0.00,4),(128954,25992,20.00,0.00,2),(128955,25992,1.00,0.00,5),(128956,25993,30.00,0.00,1),(128957,25993,10.00,1000000.00,3),(128958,25993,2.00,0.00,4),(128959,25993,20.00,0.00,2),(128960,25993,1.00,0.00,5),(128961,25994,30.00,0.00,1),(128962,25994,0.00,0.00,3),(128963,25994,2.00,0.00,4),(128964,25994,20.00,0.00,2),(128965,25994,1.00,0.00,5),(128966,25995,10.00,0.00,1),(128967,25995,10.00,1000000.00,3),(128968,25995,2.00,0.00,4),(128969,25995,20.00,0.00,2),(128970,25995,1.00,0.00,5),(128971,25996,10.00,0.00,1),(128972,25996,0.00,0.00,3),(128973,25996,2.00,0.00,4),(128974,25996,20.00,0.00,2),(128975,25996,1.00,0.00,5),(128976,25997,30.00,0.00,1),(128977,25997,10.00,1000000.00,3),(128978,25997,2.00,0.00,4),(128979,25997,20.00,0.00,2),(128980,25997,1.00,0.00,5),(128981,25998,30.00,0.00,1),(128982,25998,0.00,0.00,3),(128983,25998,2.00,0.00,4),(128984,25998,20.00,0.00,2),(128985,25998,1.00,0.00,5),(128986,25999,30.00,0.00,1),(128987,25999,10.00,10000000.00,3),(128988,25999,2.00,0.00,4),(128989,25999,20.00,0.00,2),(128990,25999,1.00,0.00,5),(128991,26000,30.00,0.00,1),(128992,26000,10.00,1000000.00,3),(128993,26000,2.00,0.00,4),(128994,26000,20.00,0.00,2),(128995,26000,1.00,0.00,5),(128996,26001,30.00,0.00,1),(128997,26001,0.00,0.00,3),(128998,26001,2.00,0.00,4),(128999,26001,20.00,0.00,2),(129000,26001,1.00,0.00,5),(129001,26002,25.00,0.00,1),(129002,26002,10.00,10000000.00,3),(129003,26002,2.00,0.00,4),(129004,26002,20.00,0.00,2),(129005,26002,1.00,0.00,5),(129006,26003,20.00,0.00,1),(129007,26003,10.00,1000000.00,3),(129008,26003,2.00,0.00,4),(129009,26003,20.00,0.00,2),(129010,26003,1.00,0.00,5),(129011,26004,20.00,0.00,1),(129012,26004,0.00,0.00,3),(129013,26004,2.00,0.00,4),(129014,26004,20.00,0.00,2),(129015,26004,1.00,0.00,5),(129016,26005,10.00,0.00,1),(129017,26005,10.00,1000000.00,3),(129018,26005,2.00,0.00,4),(129019,26005,20.00,0.00,2),(129020,26005,1.00,0.00,5),(129021,26006,10.00,0.00,1),(129022,26006,0.00,0.00,3),(129023,26006,2.00,0.00,4),(129024,26006,20.00,0.00,2),(129025,26006,1.00,0.00,5),(129026,26007,10.00,0.00,1),(129027,26007,10.00,1000000.00,3),(129028,26007,2.00,0.00,4),(129029,26007,20.00,0.00,2),(129030,26007,1.00,0.00,5),(129031,26008,10.00,0.00,1),(129032,26008,0.00,0.00,3),(129033,26008,2.00,0.00,4),(129034,26008,20.00,0.00,2),(129035,26008,1.00,0.00,5),(129036,26009,15.00,0.00,1),(129037,26009,10.00,10000000.00,3),(129038,26009,2.00,0.00,4),(129039,26009,20.00,0.00,2),(129040,26009,1.00,0.00,5),(129041,26010,30.00,2500.00,1),(129042,26010,10.00,100000.00,3),(129043,26010,2.00,0.00,4),(129044,26010,20.00,0.00,2),(129045,26010,1.00,0.00,5),(129046,26011,30.00,2500.00,1),(129047,26011,0.00,0.00,3),(129048,26011,2.00,0.00,4),(129049,26011,20.00,0.00,2),(129050,26011,1.00,0.00,5),(129051,26012,30.00,2500.00,1),(129052,26012,10.00,10000000.00,3),(129053,26012,2.00,0.00,4),(129054,26012,20.00,0.00,2),(129055,26012,1.00,0.00,5),(129056,26013,30.00,5000.00,1),(129057,26013,10.00,1000000.00,3),(129058,26013,2.00,0.00,4),(129059,26013,20.00,0.00,2),(129060,26013,1.00,0.00,5),(129061,26014,30.00,5000.00,1),(129062,26014,0.00,0.00,3),(129063,26014,2.00,0.00,4),(129064,26014,20.00,0.00,2),(129065,26014,1.00,0.00,5),(129066,26015,30.00,5000.00,1),(129067,26015,10.00,1000000.00,3),(129068,26015,2.00,0.00,4),(129069,26015,20.00,0.00,2),(129070,26015,1.00,0.00,5),(129071,26016,10.00,1000.00,1),(129072,26016,10.00,1000000.00,3),(129073,26016,2.00,0.00,4),(129074,26016,20.00,0.00,2),(129075,26016,1.00,0.00,5),(129076,26017,10.00,1000.00,1),(129077,26017,0.00,0.00,3),(129078,26017,2.00,0.00,4),(129079,26017,20.00,0.00,2),(129080,26017,1.00,0.00,5),(129081,26018,10.00,1000.00,1),(129082,26018,10.00,1000000.00,3),(129083,26018,2.00,0.00,4),(129084,26018,20.00,0.00,2),(129085,26018,1.00,0.00,5),(129086,26019,30.00,0.00,1),(129087,26019,10.00,1000000.00,3),(129088,26019,2.00,0.00,4),(129089,26019,20.00,0.00,2),(129090,26019,1.00,0.00,5),(129091,26020,30.00,0.00,1),(129092,26020,0.00,0.00,3),(129093,26020,2.00,0.00,4),(129094,26020,20.00,0.00,2),(129095,26020,1.00,0.00,5),(129096,26021,30.00,0.00,1),(129097,26021,10.00,10000000.00,3),(129098,26021,2.00,0.00,4),(129099,26021,20.00,0.00,2),(129100,26021,1.00,0.00,5),(129101,26022,30.00,0.00,1),(129102,26022,10.00,1000000.00,3),(129103,26022,2.00,0.00,4),(129104,26022,20.00,0.00,2),(129105,26022,1.00,0.00,5),(129106,26023,30.00,0.00,1),(129107,26023,0.00,0.00,3),(129108,26023,2.00,0.00,4),(129109,26023,20.00,0.00,2),(129110,26023,1.00,0.00,5),(129111,26024,25.00,0.00,1),(129112,26024,10.00,10000000.00,3),(129113,26024,2.00,0.00,4),(129114,26024,20.00,0.00,2),(129115,26024,1.00,0.00,5),(129116,26025,20.00,0.00,1),(129117,26025,10.00,1000000.00,3),(129118,26025,2.00,0.00,4),(129119,26025,20.00,0.00,2),(129120,26025,1.00,0.00,5),(129121,26026,20.00,0.00,1),(129122,26026,0.00,0.00,3),(129123,26026,2.00,0.00,4),(129124,26026,20.00,0.00,2),(129125,26026,1.00,0.00,5),(129126,26027,10.00,0.00,1),(129127,26027,10.00,1000000.00,3),(129128,26027,2.00,0.00,4),(129129,26027,20.00,0.00,2),(129130,26027,1.00,0.00,5),(129131,26028,10.00,0.00,1),(129132,26028,0.00,0.00,3),(129133,26028,2.00,0.00,4),(129134,26028,20.00,0.00,2),(129135,26028,1.00,0.00,5),(129136,26029,5.00,0.00,1),(129137,26029,10.00,10000000.00,3),(129138,26029,2.00,0.00,4),(129139,26029,20.00,0.00,2),(129140,26029,1.00,0.00,5),(129141,26030,20.00,0.00,1),(129142,26030,10.00,1000000.00,3),(129143,26030,2.00,0.00,4),(129144,26030,20.00,0.00,2),(129145,26030,0.00,0.00,5),(129146,26031,20.00,0.00,1),(129147,26031,0.00,0.00,3),(129148,26031,2.00,0.00,4),(129149,26031,20.00,0.00,2),(129150,26031,1.00,0.00,5),(129151,26032,20.00,0.00,1),(129152,26032,10.00,10000000.00,3),(129153,26032,2.00,0.00,4),(129154,26032,20.00,0.00,2),(129155,26032,1.00,0.00,5),(129156,26033,20.00,0.00,1),(129157,26033,10.00,1000000.00,3),(129158,26033,2.00,0.00,4),(129159,26033,20.00,0.00,2),(129160,26033,1.00,0.00,5),(129161,26034,10.00,0.00,1),(129162,26034,10.00,1000000.00,3),(129163,26034,2.00,0.00,4),(129164,26034,20.00,0.00,2),(129165,26034,1.00,0.00,5),(129166,26035,10.00,0.00,1),(129167,26035,10.00,1000000.00,3),(129168,26035,2.00,0.00,4),(129169,26035,20.00,0.00,2),(129170,26035,0.00,0.00,5),(129171,26036,10.00,0.00,1),(129172,26036,0.00,0.00,3),(129173,26036,2.00,0.00,4),(129174,26036,20.00,0.00,2),(129175,26036,1.00,0.00,5),(129176,26037,20.00,0.00,1),(129177,26037,0.00,0.00,3),(129178,26037,2.00,0.00,4),(129179,26037,20.00,0.00,2),(129180,26037,1.00,0.00,5),(129181,26038,20.00,0.00,1),(129182,26038,10.00,10000000.00,3),(129183,26038,2.00,0.00,4),(129184,26038,20.00,0.00,2),(129185,26038,1.00,0.00,5),(129186,26039,30.00,0.00,1),(129187,26039,10.00,1000000.00,3),(129188,26039,2.00,0.00,4),(129189,26039,20.00,0.00,2),(129190,26039,0.00,0.00,5),(129191,26040,30.00,0.00,1),(129192,26040,10.00,1000000.00,3),(129193,26040,2.00,0.00,4),(129194,26040,20.00,0.00,2),(129195,26040,1.00,0.00,5),(129196,26041,30.00,0.00,1),(129197,26041,0.00,0.00,3),(129198,26041,2.00,0.00,4),(129199,26041,20.00,0.00,2),(129200,26041,1.00,0.00,5),(129201,26042,20.00,0.00,1),(129202,26042,10.00,1000000.00,3),(129203,26042,2.00,0.00,4),(129204,26042,20.00,0.00,2),(129205,26042,0.00,0.00,5),(129206,26043,20.00,0.00,1),(129207,26043,10.00,1000000.00,3),(129208,26043,2.00,0.00,4),(129209,26043,20.00,0.00,2),(129210,26043,1.00,0.00,5),(129211,26044,0.00,0.00,1),(129212,26044,0.00,0.00,3),(129213,26044,0.00,0.00,4),(129214,26044,20.00,0.00,2),(129215,26044,0.00,0.00,5),(129216,26045,0.00,0.00,1),(129217,26045,0.00,0.00,3),(129218,26045,0.00,0.00,4),(129219,26045,20.00,0.00,2),(129220,26045,0.00,0.00,5),(146236,29449,10.00,5000.00,1),(146237,29449,10.00,1000000.00,3),(146238,29449,2.00,0.00,4),(146239,29449,20.00,0.00,2),(146240,29449,0.00,0.00,5),(146241,29450,10.00,5000.00,1),(146242,29450,10.00,1000000.00,3),(146243,29450,2.00,0.00,4),(146244,29450,20.00,0.00,2),(146245,29450,1.00,0.00,5),(146246,29451,10.00,5000.00,1),(146247,29451,0.00,0.00,3),(146248,29451,0.00,0.00,4),(146249,29451,20.00,0.00,2),(146250,29451,0.00,0.00,5),(146251,29452,10.00,20000.00,1),(146252,29452,0.00,0.00,3),(146253,29452,0.00,0.00,4),(146254,29452,20.00,0.00,2),(146255,29452,0.00,0.00,5),(146256,29453,10.00,10000.00,1),(146257,29453,10.00,1000000.00,3),(146258,29453,2.00,0.00,4),(146259,29453,20.00,0.00,2),(146260,29453,1.00,0.00,5),(146261,29454,10.00,10000.00,1),(146262,29454,0.00,0.00,3),(146263,29454,0.00,0.00,4),(146264,29454,20.00,0.00,2),(146265,29454,0.00,0.00,5),(146266,29455,10.00,2500.00,1),(146267,29455,10.00,1000000.00,3),(146268,29455,2.00,0.00,4),(146269,29455,20.00,0.00,2),(146270,29455,0.00,0.00,5),(146271,29456,10.00,2500.00,1),(146272,29456,10.00,1000000.00,3),(146273,29456,2.00,0.00,4),(146274,29456,20.00,0.00,2),(146275,29456,1.00,0.00,5),(146276,29457,10.00,2500.00,1),(146277,29457,0.00,0.00,3),(146278,29457,0.00,0.00,4),(146279,29457,20.00,0.00,2),(146280,29457,0.00,0.00,5),(146281,29458,10.00,5000.00,1),(146282,29458,0.00,0.00,3),(146283,29458,0.00,0.00,4),(146284,29458,20.00,0.00,2),(146285,29458,0.00,0.00,5),(146286,29459,10.00,5000.00,1),(146287,29459,10.00,1000000.00,3),(146288,29459,2.00,0.00,4),(146289,29459,20.00,0.00,2),(146290,29459,0.00,0.00,5),(146291,29460,10.00,5000.00,1),(146292,29460,10.00,1000000.00,3),(146293,29460,2.00,0.00,4),(146294,29460,20.00,0.00,2),(146295,29460,1.00,0.00,5),(146296,29461,10.00,5000.00,1),(146297,29461,0.00,0.00,3),(146298,29461,0.00,0.00,4),(146299,29461,20.00,0.00,2),(146300,29461,0.00,0.00,5),(146301,29462,10.00,100000.00,1),(146302,29462,10.00,1000000.00,3),(146303,29462,2.00,0.00,4),(146304,29462,20.00,0.00,2),(146305,29462,0.00,0.00,5),(146306,29463,10.00,100000.00,1),(146307,29463,10.00,1000000.00,3),(146308,29463,2.00,0.00,4),(146309,29463,20.00,0.00,2),(146310,29463,1.00,0.00,5),(146311,29464,10.00,100000.00,1),(146312,29464,0.00,0.00,3),(146313,29464,0.00,0.00,4),(146314,29464,20.00,0.00,2),(146315,29464,0.00,0.00,5),(146316,29465,10.00,200000.00,1),(146317,29465,0.00,0.00,3),(146318,29465,0.00,0.00,4),(146319,29465,20.00,0.00,2),(146320,29465,0.00,0.00,5),(146321,29466,1.00,5000000.00,1),(146322,29466,0.00,0.00,3),(146323,29466,0.00,0.00,4),(146324,29466,20.00,0.00,2),(146325,29466,0.00,0.00,5),(146326,29467,20.00,2500.00,1),(146327,29467,10.00,1000000.00,3),(146328,29467,2.00,0.00,4),(146329,29467,20.00,0.00,2),(146330,29467,0.00,0.00,5),(146331,29468,20.00,0.00,1),(146332,29468,10.00,1000000.00,3),(146333,29468,2.00,0.00,4),(146334,29468,20.00,0.00,2),(146335,29468,1.00,0.00,5),(146336,29469,20.00,0.00,1),(146337,29469,0.00,0.00,3),(146338,29469,0.00,0.00,4),(146339,29469,20.00,0.00,2),(146340,29469,0.00,0.00,5),(146341,29470,20.00,0.00,1),(146342,29470,10.00,1000000.00,3),(146343,29470,2.00,0.00,4),(146344,29470,20.00,0.00,2),(146345,29470,1.00,0.00,5),(146346,29471,20.00,0.00,1),(146347,29471,0.00,0.00,3),(146348,29471,0.00,0.00,4),(146349,29471,20.00,0.00,2),(146350,29471,0.00,0.00,5),(146351,29472,2.00,20000.00,1),(146352,29472,10.00,1000000.00,3),(146353,29472,2.00,0.00,4),(146354,29472,20.00,0.00,2),(146355,29472,0.00,0.00,5),(146356,29473,2.00,50000.00,1),(146357,29473,10.00,1000000.00,3),(146358,29473,2.00,0.00,4),(146359,29473,20.00,0.00,2),(146360,29473,1.00,0.00,5),(146361,29474,2.00,50000.00,1),(146362,29474,0.00,0.00,3),(146363,29474,0.00,0.00,4),(146364,29474,20.00,0.00,2),(146365,29474,0.00,0.00,5),(146366,29475,1.00,50000.00,1),(146367,29475,0.00,0.00,3),(146368,29475,0.00,0.00,4),(146369,29475,20.00,0.00,2),(146370,29475,0.00,0.00,5),(146371,29476,1.00,75000.00,1),(146372,29476,0.00,0.00,3),(146373,29476,0.00,0.00,4),(146374,29476,20.00,0.00,2),(146375,29476,0.00,0.00,5),(146376,29477,10.00,30000.00,1),(146377,29477,0.00,0.00,3),(146378,29477,0.00,0.00,4),(146379,29477,20.00,0.00,2),(146380,29477,0.00,0.00,5),(146381,29478,15.00,120000.00,1),(146382,29478,10.00,1000000.00,3),(146383,29478,2.00,0.00,4),(146384,29478,20.00,0.00,2),(146385,29478,0.00,0.00,5),(146386,29479,15.00,120000.00,1),(146387,29479,10.00,1000000.00,3),(146388,29479,2.00,0.00,4),(146389,29479,20.00,0.00,2),(146390,29479,1.00,0.00,5),(146391,29480,15.00,120000.00,1),(146392,29480,0.00,0.00,3),(146393,29480,0.00,0.00,4),(146394,29480,20.00,0.00,2),(146395,29480,0.00,0.00,5),(146396,29481,10.00,120000.00,1),(146397,29481,0.00,0.00,3),(146398,29481,0.00,0.00,4),(146399,29481,20.00,0.00,2),(146400,29481,0.00,0.00,5),(146401,29482,10.00,180000.00,1),(146402,29482,0.00,0.00,3),(146403,29482,0.00,0.00,4),(146404,29482,20.00,0.00,2),(146405,29482,0.00,0.00,5),(146406,29483,10.00,120000.00,1),(146407,29483,10.00,1000000.00,3),(146408,29483,2.00,0.00,4),(146409,29483,20.00,0.00,2),(146410,29483,1.00,0.00,5),(146411,29484,10.00,120000.00,1),(146412,29484,0.00,0.00,3),(146413,29484,0.00,0.00,4),(146414,29484,20.00,0.00,2),(146415,29484,0.00,0.00,5),(146416,29485,2.00,120000.00,1),(146417,29485,0.00,0.00,3),(146418,29485,0.00,0.00,4),(146419,29485,20.00,0.00,2),(146420,29485,0.00,0.00,5),(146421,29486,2.00,180000.00,1),(146422,29486,0.00,0.00,3),(146423,29486,0.00,0.00,4),(146424,29486,20.00,0.00,2),(146425,29486,0.00,0.00,5),(146426,29487,30.00,2500.00,1),(146427,29487,10.00,1000000.00,3),(146428,29487,2.00,0.00,4),(146429,29487,20.00,0.00,2),(146430,29487,0.00,0.00,5),(146431,29488,30.00,2500.00,1),(146432,29488,10.00,1000000.00,3),(146433,29488,2.00,0.00,4),(146434,29488,20.00,0.00,2),(146435,29488,1.00,0.00,5),(146436,29489,30.00,2500.00,1),(146437,29489,0.00,0.00,3),(146438,29489,0.00,0.00,4),(146439,29489,20.00,0.00,2),(146440,29489,0.00,0.00,5),(146441,29490,30.00,5000.00,1),(146442,29490,0.00,0.00,3),(146443,29490,0.00,0.00,4),(146444,29490,20.00,0.00,2),(146445,29490,0.00,0.00,5),(146446,29491,30.00,5000.00,1),(146447,29491,10.00,1000000.00,3),(146448,29491,2.00,0.00,4),(146449,29491,20.00,0.00,2),(146450,29491,0.00,0.00,5),(146451,29492,30.00,5000.00,1),(146452,29492,10.00,1000000.00,3),(146453,29492,2.00,0.00,4),(146454,29492,20.00,0.00,2),(146455,29492,1.00,0.00,5),(146456,29493,30.00,5000.00,1),(146457,29493,0.00,0.00,3),(146458,29493,0.00,0.00,4),(146459,29493,20.00,0.00,2),(146460,29493,0.00,0.00,5),(146461,29494,30.00,10000.00,1),(146462,29494,0.00,0.00,3),(146463,29494,0.00,0.00,4),(146464,29494,20.00,0.00,2),(146465,29494,0.00,0.00,5),(146466,29495,20.00,2500.00,1),(146467,29495,10.00,1000000.00,3),(146468,29495,2.00,0.00,4),(146469,29495,20.00,0.00,2),(146470,29495,0.00,0.00,5),(146471,29496,20.00,2500.00,1),(146472,29496,10.00,1000000.00,3),(146473,29496,2.00,0.00,4),(146474,29496,20.00,0.00,2),(146475,29496,1.00,0.00,5),(146476,29497,20.00,0.00,1),(146477,29497,10.00,1000000.00,3),(146478,29497,2.00,0.00,4),(146479,29497,20.00,0.00,2),(146480,29497,1.00,0.00,5),(146481,29498,10.00,0.00,1),(146482,29498,0.00,0.00,3),(146483,29498,0.00,0.00,4),(146484,29498,20.00,0.00,2),(146485,29498,0.00,0.00,5),(146486,29499,10.00,0.00,1),(146487,29499,0.00,0.00,3),(146488,29499,0.00,0.00,4),(146489,29499,20.00,0.00,2),(146490,29499,0.00,0.00,5),(146491,29500,10.00,1000.00,1),(146492,29500,10.00,1000000.00,3),(146493,29500,2.00,0.00,4),(146494,29500,20.00,0.00,2),(146495,29500,0.00,0.00,5),(146496,29501,10.00,1000.00,1),(146497,29501,10.00,1000000.00,3),(146498,29501,2.00,0.00,4),(146499,29501,20.00,0.00,2),(146500,29501,1.00,0.00,5),(146501,29502,10.00,1000.00,1),(146502,29502,0.00,0.00,3),(146503,29502,0.00,0.00,4),(146504,29502,20.00,0.00,2),(146505,29502,0.00,0.00,5),(146506,29503,5.00,2500.00,1),(146507,29503,10.00,1000000.00,3),(146508,29503,2.00,0.00,4),(146509,29503,20.00,0.00,2),(146510,29503,0.00,0.00,5),(146511,29504,5.00,2500.00,1),(146512,29504,10.00,1000000.00,3),(146513,29504,2.00,0.00,4),(146514,29504,20.00,0.00,2),(146515,29504,1.00,0.00,5),(146516,29505,10.00,2500.00,1),(146517,29505,10.00,1000000.00,3),(146518,29505,2.00,0.00,4),(146519,29505,20.00,0.00,2),(146520,29505,1.00,0.00,5),(146521,29506,10.00,2500.00,1),(146522,29506,0.00,0.00,3),(146523,29506,0.00,0.00,4),(146524,29506,20.00,0.00,2),(146525,29506,0.00,0.00,5),(146526,29507,10.00,5000.00,1),(146527,29507,0.00,0.00,3),(146528,29507,0.00,0.00,4),(146529,29507,20.00,0.00,2),(146530,29507,0.00,0.00,5),(146531,29508,20.00,2500.00,1),(146532,29508,10.00,1000000.00,3),(146533,29508,2.00,0.00,4),(146534,29508,20.00,0.00,2),(146535,29508,1.00,0.00,5),(146536,29509,10.00,2500.00,1),(146537,29509,0.00,0.00,3),(146538,29509,0.00,0.00,4),(146539,29509,20.00,0.00,2),(146540,29509,0.00,0.00,5),(146541,29510,5.00,20000.00,1),(146542,29510,10.00,1000000.00,3),(146543,29510,2.00,0.00,4),(146544,29510,20.00,0.00,2),(146545,29510,0.00,0.00,5),(146546,29511,5.00,20000.00,1),(146547,29511,10.00,1000000.00,3),(146548,29511,2.00,0.00,4),(146549,29511,20.00,0.00,2),(146550,29511,1.00,0.00,5),(146551,29512,10.00,20000.00,1),(146552,29512,10.00,1000000.00,3),(146553,29512,2.00,0.00,4),(146554,29512,20.00,0.00,2),(146555,29512,1.00,0.00,5),(146556,29513,10.00,20000.00,1),(146557,29513,0.00,0.00,3),(146558,29513,0.00,0.00,4),(146559,29513,20.00,0.00,2),(146560,29513,0.00,0.00,5),(146561,29514,10.00,30000.00,1),(146562,29514,0.00,0.00,3),(146563,29514,0.00,0.00,4),(146564,29514,20.00,0.00,2),(146565,29514,0.00,0.00,5),(146566,29515,1.00,20000.00,1),(146567,29515,10.00,1000000.00,3),(146568,29515,2.00,0.00,4),(146569,29515,20.00,0.00,2),(146570,29515,0.00,0.00,5),(146571,29516,1.00,20000.00,1),(146572,29516,10.00,1000000.00,3),(146573,29516,2.00,0.00,4),(146574,29516,20.00,0.00,2),(146575,29516,1.00,0.00,5),(146576,29517,1.00,20000.00,1),(146577,29517,0.00,0.00,3),(146578,29517,0.00,0.00,4),(146579,29517,20.00,0.00,2),(146580,29517,0.00,0.00,5),(146581,29518,1.00,20000.00,1),(146582,29518,0.00,0.00,3),(146583,29518,0.00,0.00,4),(146584,29518,20.00,0.00,2),(146585,29518,0.00,0.00,5),(146586,29519,1.00,75000.00,1),(146587,29519,0.00,0.00,3),(146588,29519,0.00,0.00,4),(146589,29519,20.00,0.00,2),(146590,29519,0.00,0.00,5),(146591,29520,1.00,20000.00,1),(146592,29520,10.00,1000000.00,3),(146593,29520,2.00,0.00,4),(146594,29520,20.00,0.00,2),(146595,29520,0.00,0.00,5),(146596,29521,1.00,20000.00,1),(146597,29521,10.00,1000000.00,3),(146598,29521,2.00,0.00,4),(146599,29521,20.00,0.00,2),(146600,29521,1.00,0.00,5),(146601,29522,1.00,50000.00,1),(146602,29522,0.00,0.00,3),(146603,29522,0.00,0.00,4),(146604,29522,20.00,0.00,2),(146605,29522,0.00,0.00,5),(146606,29523,1.00,50000.00,1),(146607,29523,0.00,0.00,3),(146608,29523,0.00,0.00,4),(146609,29523,20.00,0.00,2),(146610,29523,0.00,0.00,5),(146611,29524,1.00,75000.00,1),(146612,29524,0.00,0.00,3),(146613,29524,0.00,0.00,4),(146614,29524,20.00,0.00,2),(146615,29524,0.00,0.00,5),(146616,29525,2.00,50000.00,1),(146617,29525,0.00,0.00,3),(146618,29525,0.00,0.00,4),(146619,29525,20.00,0.00,2),(146620,29525,0.00,0.00,5),(146621,29526,0.00,0.00,1),(146622,29526,0.00,0.00,3),(146623,29526,0.00,0.00,4),(146624,29526,20.00,0.00,2),(146625,29526,0.00,0.00,5),(146626,29527,20.00,75000.00,1),(146627,29527,0.00,0.00,3),(146628,29527,0.00,0.00,4),(146629,29527,20.00,0.00,2),(146630,29527,0.00,0.00,5),(146631,29528,1.00,50000.00,1),(146632,29528,0.00,0.00,3),(146633,29528,0.00,0.00,4),(146634,29528,20.00,0.00,2),(146635,29528,0.00,0.00,5),(146636,29529,0.00,0.00,1),(146637,29529,0.00,0.00,3),(146638,29529,0.00,0.00,4),(146639,29529,20.00,0.00,2),(146640,29529,0.00,0.00,5),(146641,29530,20.00,75000.00,1),(146642,29530,0.00,0.00,3),(146643,29530,0.00,0.00,4),(146644,29530,20.00,0.00,2),(146645,29530,0.00,0.00,5),(171271,34456,10.00,5000.00,1),(171272,34456,2.50,0.00,3),(171273,34456,2.00,0.00,4),(171274,34456,20.00,0.00,2),(171275,34456,0.00,0.00,5),(171276,34457,10.00,5000.00,1),(171277,34457,0.00,0.00,3),(171278,34457,2.00,0.00,4),(171279,34457,20.00,0.00,2),(171280,34457,1.00,0.00,5),(171281,34458,10.00,5000.00,1),(171282,34458,0.00,0.00,3),(171283,34458,2.00,0.00,4),(171284,34458,20.00,0.00,2),(171285,34458,1.00,0.00,5),(171286,34459,10.00,5000.00,1),(171287,34459,0.00,0.00,3),(171288,34459,0.00,0.00,4),(171289,34459,20.00,0.00,2),(171290,34459,0.00,0.00,5),(171291,34460,10.00,20000.00,1),(171292,34460,0.00,0.00,3),(171293,34460,0.00,0.00,4),(171294,34460,20.00,0.00,2),(171295,34460,0.00,0.00,5),(171296,34461,10.00,10000.00,1),(171297,34461,0.00,0.00,3),(171298,34461,2.00,0.00,4),(171299,34461,20.00,0.00,2),(171300,34461,1.00,0.00,5),(171301,34462,10.00,10000.00,1),(171302,34462,0.00,0.00,3),(171303,34462,0.00,0.00,4),(171304,34462,20.00,0.00,2),(171305,34462,0.00,0.00,5),(171306,34463,10.00,2500.00,1),(171307,34463,2.50,2.00,3),(171308,34463,0.00,0.00,4),(171309,34463,20.00,0.00,2),(171310,34463,0.00,0.00,5),(171311,34464,10.00,2500.00,1),(171312,34464,0.00,0.00,3),(171313,34464,2.00,0.00,4),(171314,34464,20.00,0.00,2),(171315,34464,0.00,0.00,5),(171316,34465,10.00,2500.00,1),(171317,34465,0.00,0.00,3),(171318,34465,2.00,0.00,4),(171319,34465,20.00,0.00,2),(171320,34465,1.00,0.00,5),(171321,34466,10.00,2500.00,1),(171322,34466,0.00,0.00,3),(171323,34466,0.00,0.00,4),(171324,34466,20.00,0.00,2),(171325,34466,0.00,0.00,5),(171326,34467,10.00,5000.00,1),(171327,34467,0.00,0.00,3),(171328,34467,0.00,0.00,4),(171329,34467,20.00,0.00,2),(171330,34467,0.00,0.00,5),(171331,34468,10.00,5000.00,1),(171332,34468,2.50,0.00,3),(171333,34468,2.00,0.00,4),(171334,34468,20.00,0.00,2),(171335,34468,0.00,0.00,5),(171336,34469,10.00,5000.00,1),(171337,34469,0.00,0.00,3),(171338,34469,2.00,0.00,4),(171339,34469,20.00,0.00,2),(171340,34469,0.00,0.00,5),(171341,34470,10.00,5000.00,1),(171342,34470,0.00,0.00,3),(171343,34470,2.00,0.00,4),(171344,34470,20.00,0.00,2),(171345,34470,1.00,0.00,5),(171346,34471,10.00,5000.00,1),(171347,34471,0.00,0.00,3),(171348,34471,0.00,0.00,4),(171349,34471,20.00,0.00,2),(171350,34471,0.00,0.00,5),(171351,34472,10.00,100000.00,1),(171352,34472,2.50,0.00,3),(171353,34472,2.00,0.00,4),(171354,34472,20.00,0.00,2),(171355,34472,0.00,0.00,5),(171356,34473,10.00,100000.00,1),(171357,34473,0.00,0.00,3),(171358,34473,2.00,0.00,4),(171359,34473,20.00,0.00,2),(171360,34473,1.00,0.00,5),(171361,34474,10.00,100000.00,1),(171362,34474,0.00,0.00,3),(171363,34474,2.00,0.00,4),(171364,34474,20.00,0.00,2),(171365,34474,1.00,0.00,5),(171366,34475,10.00,100000.00,1),(171367,34475,0.00,0.00,3),(171368,34475,0.00,0.00,4),(171369,34475,20.00,0.00,2),(171370,34475,0.00,0.00,5),(171371,34476,10.00,200000.00,1),(171372,34476,0.00,0.00,3),(171373,34476,0.00,0.00,4),(171374,34476,20.00,0.00,2),(171375,34476,0.00,0.00,5),(171376,34477,1.00,50000.00,1),(171377,34477,0.00,0.00,3),(171378,34477,0.00,0.00,4),(171379,34477,20.00,0.00,2),(171380,34477,0.00,0.00,5),(171381,34478,20.00,2500.00,1),(171382,34478,2.50,0.00,3),(171383,34478,2.00,0.00,4),(171384,34478,20.00,0.00,2),(171385,34478,0.00,0.00,5),(171386,34479,20.00,2500.00,1),(171387,34479,0.00,0.00,3),(171388,34479,2.00,0.00,4),(171389,34479,20.00,0.00,2),(171390,34479,0.00,0.00,5),(171391,34480,20.00,0.00,1),(171392,34480,0.00,0.00,3),(171393,34480,2.00,0.00,4),(171394,34480,20.00,0.00,2),(171395,34480,1.00,0.00,5),(171396,34481,20.00,0.00,1),(171397,34481,0.00,0.00,3),(171398,34481,0.00,0.00,4),(171399,34481,20.00,0.00,2),(171400,34481,0.00,0.00,5),(171401,34482,20.00,0.00,1),(171402,34482,2.50,0.00,3),(171403,34482,2.00,0.00,4),(171404,34482,20.00,0.00,2),(171405,34482,0.00,0.00,5),(171406,34483,20.00,0.00,1),(171407,34483,0.00,0.00,3),(171408,34483,2.00,0.00,4),(171409,34483,20.00,0.00,2),(171410,34483,0.00,0.00,5),(171411,34484,20.00,0.00,1),(171412,34484,0.00,0.00,3),(171413,34484,2.00,0.00,4),(171414,34484,20.00,0.00,2),(171415,34484,1.00,0.00,5),(171416,34485,20.00,0.00,1),(171417,34485,0.00,0.00,3),(171418,34485,0.00,0.00,4),(171419,34485,20.00,0.00,2),(171420,34485,0.00,0.00,5),(171421,34486,2.00,20000.00,1),(171422,34486,2.50,0.00,3),(171423,34486,2.00,0.00,4),(171424,34486,20.00,0.00,2),(171425,34486,0.00,0.00,5),(171426,34487,2.00,50000.00,1),(171427,34487,0.00,0.00,3),(171428,34487,2.00,0.00,4),(171429,34487,20.00,0.00,2),(171430,34487,0.00,0.00,5),(171431,34488,2.00,50000.00,1),(171432,34488,0.00,0.00,3),(171433,34488,2.00,0.00,4),(171434,34488,20.00,0.00,2),(171435,34488,1.00,0.00,5),(171436,34489,2.00,50000.00,1),(171437,34489,0.00,0.00,3),(171438,34489,0.00,0.00,4),(171439,34489,20.00,0.00,2),(171440,34489,0.00,0.00,5),(171441,34490,2.00,50000.00,1),(171442,34490,0.00,0.00,3),(171443,34490,0.00,0.00,4),(171444,34490,20.00,0.00,2),(171445,34490,0.00,0.00,5),(171446,34491,2.00,75000.00,1),(171447,34491,0.00,0.00,3),(171448,34491,0.00,0.00,4),(171449,34491,20.00,0.00,2),(171450,34491,0.00,0.00,5),(171451,34492,10.00,30000.00,1),(171452,34492,0.00,0.00,3),(171453,34492,0.00,0.00,4),(171454,34492,20.00,0.00,2),(171455,34492,0.00,0.00,5),(171456,34493,20.00,120000.00,1),(171457,34493,2.50,0.00,3),(171458,34493,2.00,0.00,4),(171459,34493,20.00,0.00,2),(171460,34493,0.00,0.00,5),(171461,34494,20.00,120000.00,1),(171462,34494,0.00,0.00,3),(171463,34494,2.00,0.00,4),(171464,34494,20.00,0.00,2),(171465,34494,0.00,0.00,5),(171466,34495,20.00,120000.00,1),(171467,34495,0.00,0.00,3),(171468,34495,2.00,0.00,4),(171469,34495,20.00,0.00,2),(171470,34495,1.00,0.00,5),(171471,34496,20.00,120000.00,1),(171472,34496,0.00,0.00,3),(171473,34496,0.00,0.00,4),(171474,34496,20.00,0.00,2),(171475,34496,0.00,0.00,5),(171476,34497,10.00,120000.00,1),(171477,34497,0.00,0.00,3),(171478,34497,0.00,0.00,4),(171479,34497,20.00,0.00,2),(171480,34497,0.00,0.00,5),(171481,34498,10.00,180000.00,1),(171482,34498,0.00,0.00,3),(171483,34498,0.00,0.00,4),(171484,34498,20.00,0.00,2),(171485,34498,0.00,0.00,5),(171486,34499,10.00,120000.00,1),(171487,34499,0.00,0.00,3),(171488,34499,2.00,0.00,4),(171489,34499,20.00,0.00,2),(171490,34499,1.00,0.00,5),(171491,34500,10.00,120000.00,1),(171492,34500,0.00,0.00,3),(171493,34500,0.00,0.00,4),(171494,34500,20.00,0.00,2),(171495,34500,0.00,0.00,5),(171496,34501,2.00,120000.00,1),(171497,34501,0.00,0.00,3),(171498,34501,0.00,0.00,4),(171499,34501,20.00,0.00,2),(171500,34501,0.00,0.00,5),(171501,34502,2.00,180000.00,1),(171502,34502,0.00,0.00,3),(171503,34502,0.00,0.00,4),(171504,34502,20.00,0.00,2),(171505,34502,0.00,0.00,5),(171506,34503,30.00,2500.00,1),(171507,34503,2.50,0.00,3),(171508,34503,2.00,0.00,4),(171509,34503,20.00,0.00,2),(171510,34503,0.00,0.00,5),(171511,34504,30.00,2500.00,1),(171512,34504,0.00,0.00,3),(171513,34504,2.00,0.00,4),(171514,34504,20.00,0.00,2),(171515,34504,0.00,0.00,5),(171516,34505,30.00,2500.00,1),(171517,34505,0.00,0.00,3),(171518,34505,2.00,0.00,4),(171519,34505,20.00,0.00,2),(171520,34505,1.00,0.00,5),(171521,34506,30.00,2500.00,1),(171522,34506,0.00,0.00,3),(171523,34506,0.00,0.00,4),(171524,34506,20.00,0.00,2),(171525,34506,0.00,0.00,5),(171526,34507,30.00,5000.00,1),(171527,34507,0.00,0.00,3),(171528,34507,0.00,0.00,4),(171529,34507,20.00,0.00,2),(171530,34507,0.00,0.00,5),(171531,34508,30.00,5000.00,1),(171532,34508,2.50,0.00,3),(171533,34508,2.00,0.00,4),(171534,34508,20.00,0.00,2),(171535,34508,0.00,0.00,5),(171536,34509,30.00,5000.00,1),(171537,34509,0.00,0.00,3),(171538,34509,2.00,0.00,4),(171539,34509,20.00,0.00,2),(171540,34509,0.00,0.00,5),(171541,34510,30.00,5000.00,1),(171542,34510,0.00,0.00,3),(171543,34510,2.00,0.00,4),(171544,34510,20.00,0.00,2),(171545,34510,1.00,0.00,5),(171546,34511,30.00,5000.00,1),(171547,34511,0.00,0.00,3),(171548,34511,0.00,0.00,4),(171549,34511,20.00,0.00,2),(171550,34511,0.00,0.00,5),(171551,34512,30.00,10000.00,1),(171552,34512,0.00,0.00,3),(171553,34512,0.00,0.00,4),(171554,34512,20.00,0.00,2),(171555,34512,0.00,0.00,5),(171556,34513,20.00,2500.00,1),(171557,34513,2.50,0.00,3),(171558,34513,2.00,0.00,4),(171559,34513,20.00,0.00,2),(171560,34513,0.00,0.00,5),(171561,34514,20.00,2500.00,1),(171562,34514,0.00,0.00,3),(171563,34514,2.00,0.00,4),(171564,34514,20.00,0.00,2),(171565,34514,0.00,0.00,5),(171566,34515,20.00,2500.00,1),(171567,34515,0.00,0.00,3),(171568,34515,2.00,0.00,4),(171569,34515,20.00,0.00,2),(171570,34515,1.00,0.00,5),(171571,34516,20.00,0.00,1),(171572,34516,0.00,0.00,3),(171573,34516,2.00,0.00,4),(171574,34516,20.00,0.00,2),(171575,34516,1.00,0.00,5),(171576,34517,10.00,0.00,1),(171577,34517,0.00,0.00,3),(171578,34517,0.00,0.00,4),(171579,34517,20.00,0.00,2),(171580,34517,0.00,0.00,5),(171581,34518,10.00,0.00,1),(171582,34518,0.00,0.00,3),(171583,34518,0.00,0.00,4),(171584,34518,20.00,0.00,2),(171585,34518,0.00,0.00,5),(171586,34519,10.00,1000.00,1),(171587,34519,2.50,0.00,3),(171588,34519,2.00,0.00,4),(171589,34519,20.00,0.00,2),(171590,34519,0.00,0.00,5),(171591,34520,10.00,1000.00,1),(171592,34520,0.00,0.00,3),(171593,34520,2.00,0.00,4),(171594,34520,20.00,0.00,2),(171595,34520,0.00,0.00,5),(171596,34521,10.00,1000.00,1),(171597,34521,0.00,0.00,3),(171598,34521,2.00,0.00,4),(171599,34521,20.00,0.00,2),(171600,34521,1.00,0.00,5),(171601,34522,10.00,1000.00,1),(171602,34522,0.00,0.00,3),(171603,34522,0.00,0.00,4),(171604,34522,20.00,0.00,2),(171605,34522,0.00,0.00,5),(171606,34523,5.00,2500.00,1),(171607,34523,2.50,0.00,3),(171608,34523,2.00,0.00,4),(171609,34523,20.00,0.00,2),(171610,34523,0.00,0.00,5),(171611,34524,5.00,2500.00,1),(171612,34524,0.00,0.00,3),(171613,34524,2.00,0.00,4),(171614,34524,20.00,0.00,2),(171615,34524,0.00,0.00,5),(171616,34525,5.00,2500.00,1),(171617,34525,0.00,0.00,3),(171618,34525,2.00,0.00,4),(171619,34525,20.00,0.00,2),(171620,34525,1.00,0.00,5),(171621,34526,10.00,2500.00,1),(171622,34526,0.00,0.00,3),(171623,34526,2.00,0.00,4),(171624,34526,20.00,0.00,2),(171625,34526,1.00,0.00,5),(171626,34527,10.00,2500.00,1),(171627,34527,0.00,0.00,3),(171628,34527,0.00,0.00,4),(171629,34527,20.00,0.00,2),(171630,34527,0.00,0.00,5),(171631,34528,10.00,5000.00,1),(171632,34528,0.00,0.00,3),(171633,34528,0.00,0.00,4),(171634,34528,20.00,0.00,2),(171635,34528,0.00,0.00,5),(171636,34529,20.00,2500.00,1),(171637,34529,0.00,0.00,3),(171638,34529,2.00,0.00,4),(171639,34529,20.00,0.00,2),(171640,34529,1.00,0.00,5),(171641,34530,10.00,2500.00,1),(171642,34530,0.00,0.00,3),(171643,34530,0.00,0.00,4),(171644,34530,20.00,0.00,2),(171645,34530,0.00,0.00,5),(171646,34531,5.00,20000.00,1),(171647,34531,2.50,0.00,3),(171648,34531,2.00,0.00,4),(171649,34531,20.00,0.00,2),(171650,34531,1.00,0.00,5),(171651,34532,5.00,20000.00,1),(171652,34532,0.00,0.00,3),(171653,34532,2.00,0.00,4),(171654,34532,20.00,0.00,2),(171655,34532,0.00,0.00,5),(171656,34533,5.00,20000.00,1),(171657,34533,0.00,0.00,3),(171658,34533,2.00,0.00,4),(171659,34533,20.00,0.00,2),(171660,34533,1.00,0.00,5),(171661,34534,10.00,20000.00,1),(171662,34534,0.00,0.00,3),(171663,34534,2.00,0.00,4),(171664,34534,20.00,0.00,2),(171665,34534,1.00,0.00,5),(171666,34535,10.00,20000.00,1),(171667,34535,0.00,0.00,3),(171668,34535,0.00,0.00,4),(171669,34535,20.00,0.00,2),(171670,34535,0.00,0.00,5),(171671,34536,10.00,30000.00,1),(171672,34536,0.00,0.00,3),(171673,34536,0.00,0.00,4),(171674,34536,20.00,0.00,2),(171675,34536,0.00,0.00,5),(171676,34537,1.00,20000.00,1),(171677,34537,2.50,0.00,3),(171678,34537,2.00,0.00,4),(171679,34537,20.00,0.00,2),(171680,34537,0.00,0.00,5),(171681,34538,1.00,20000.00,1),(171682,34538,0.00,0.00,3),(171683,34538,2.00,0.00,4),(171684,34538,20.00,0.00,2),(171685,34538,0.00,0.00,5),(171686,34539,1.00,20000.00,1),(171687,34539,0.00,0.00,3),(171688,34539,2.00,0.00,4),(171689,34539,20.00,0.00,2),(171690,34539,1.00,0.00,5),(171691,34540,1.00,20000.00,1),(171692,34540,0.00,0.00,3),(171693,34540,0.00,0.00,4),(171694,34540,20.00,0.00,2),(171695,34540,0.00,0.00,5),(171696,34541,2.00,20000.00,1),(171697,34541,0.00,0.00,3),(171698,34541,0.00,0.00,4),(171699,34541,20.00,0.00,2),(171700,34541,0.00,0.00,5),(171701,34542,2.00,75000.00,1),(171702,34542,0.00,0.00,3),(171703,34542,0.00,0.00,4),(171704,34542,20.00,0.00,2),(171705,34542,0.00,0.00,5),(171706,34543,1.00,20000.00,1),(171707,34543,2.50,0.00,3),(171708,34543,2.00,0.00,4),(171709,34543,20.00,0.00,2),(171710,34543,0.00,0.00,5),(171711,34544,1.00,20000.00,1),(171712,34544,0.00,0.00,3),(171713,34544,2.00,0.00,4),(171714,34544,20.00,0.00,2),(171715,34544,0.00,0.00,5),(171716,34545,1.00,20000.00,1),(171717,34545,0.00,0.00,3),(171718,34545,2.00,0.00,4),(171719,34545,20.00,0.00,2),(171720,34545,1.00,0.00,5),(171721,34546,1.00,20000.00,1),(171722,34546,0.00,0.00,3),(171723,34546,0.00,0.00,4),(171724,34546,20.00,0.00,2),(171725,34546,0.00,0.00,5),(171726,34547,2.00,50000.00,1),(171727,34547,0.00,0.00,3),(171728,34547,0.00,0.00,4),(171729,34547,20.00,0.00,2),(171730,34547,0.00,0.00,5),(171731,34548,2.00,75000.00,1),(171732,34548,0.00,0.00,3),(171733,34548,0.00,0.00,4),(171734,34548,20.00,0.00,2),(171735,34548,0.00,0.00,5),(171736,34549,2.00,50000.00,1),(171737,34549,0.00,0.00,3),(171738,34549,0.00,0.00,4),(171739,34549,20.00,0.00,2),(171740,34549,0.00,0.00,5),(171741,34550,0.00,0.00,1),(171742,34550,0.00,0.00,3),(171743,34550,0.00,0.00,4),(171744,34550,20.00,0.00,2),(171745,34550,0.00,0.00,5),(171746,34551,20.00,75000.00,1),(171747,34551,0.00,0.00,3),(171748,34551,0.00,0.00,4),(171749,34551,20.00,0.00,2),(171750,34551,0.00,0.00,5),(171751,34552,1.00,50000.00,1),(171752,34552,0.00,0.00,3),(171753,34552,0.00,0.00,4),(171754,34552,20.00,0.00,2),(171755,34552,0.00,0.00,5),(171756,34553,0.00,0.00,1),(171757,34553,0.00,0.00,3),(171758,34553,0.00,0.00,4),(171759,34553,20.00,0.00,2),(171760,34553,0.00,0.00,5),(171761,34554,20.00,75000.00,1),(171762,34554,0.00,0.00,3),(171763,34554,0.00,0.00,4),(171764,34554,20.00,0.00,2),(171765,34554,0.00,0.00,5),(184546,37170,10.00,5000.00,1),(184547,37170,10.00,0.00,3),(184548,37170,2.00,0.00,4),(184549,37170,20.00,0.00,2),(184550,37170,0.00,0.00,5),(184551,37171,10.00,5000.00,1),(184552,37171,0.00,0.00,3),(184553,37171,0.00,0.00,4),(184554,37171,20.00,0.00,2),(184555,37171,0.00,0.00,5),(184556,37172,10.00,20000.00,1),(184557,37172,0.00,0.00,3),(184558,37172,0.00,0.00,4),(184559,37172,20.00,0.00,2),(184560,37172,0.00,0.00,5),(184561,37173,10.00,5000.00,1),(184562,37173,10.00,10000000.00,3),(184563,37173,2.00,0.00,4),(184564,37173,20.00,0.00,2),(184565,37173,1.00,0.00,5),(184566,37174,10.00,2500.00,1),(184567,37174,10.00,0.00,3),(184568,37174,2.00,0.00,4),(184569,37174,20.00,0.00,2),(184570,37174,0.00,0.00,5),(184571,37175,10.00,2500.00,1),(184572,37175,10.00,10000000.00,3),(184573,37175,2.00,0.00,4),(184574,37175,20.00,0.00,2),(184575,37175,1.00,0.00,5),(184576,37176,10.00,2500.00,1),(184577,37176,0.00,0.00,3),(184578,37176,0.00,0.00,4),(184579,37176,20.00,0.00,2),(184580,37176,0.00,0.00,5),(184581,37177,10.00,5000.00,1),(184582,37177,0.00,0.00,3),(184583,37177,0.00,0.00,4),(184584,37177,20.00,0.00,2),(184585,37177,0.00,0.00,5),(184586,37178,10.00,5000.00,1),(184587,37178,10.00,0.00,3),(184588,37178,2.00,0.00,4),(184589,37178,20.00,0.00,2),(184590,37178,0.00,0.00,5),(184591,37179,10.00,5000.00,1),(184592,37179,10.00,10000000.00,3),(184593,37179,2.00,0.00,4),(184594,37179,20.00,0.00,2),(184595,37179,1.00,0.00,5),(184596,37180,10.00,5000.00,1),(184597,37180,0.00,0.00,3),(184598,37180,0.00,0.00,4),(184599,37180,20.00,0.00,2),(184600,37180,0.00,0.00,5),(184601,37181,10.00,100000.00,1),(184602,37181,10.00,0.00,3),(184603,37181,2.00,0.00,4),(184604,37181,20.00,0.00,2),(184605,37181,0.00,0.00,5),(184606,37182,10.00,100000.00,1),(184607,37182,10.00,10000000.00,3),(184608,37182,2.00,0.00,4),(184609,37182,20.00,0.00,2),(184610,37182,1.00,0.00,5),(184611,37183,10.00,100000.00,1),(184612,37183,0.00,0.00,3),(184613,37183,0.00,0.00,4),(184614,37183,20.00,0.00,2),(184615,37183,0.00,0.00,5),(184616,37184,10.00,200000.00,1),(184617,37184,0.00,0.00,3),(184618,37184,0.00,0.00,4),(184619,37184,20.00,0.00,2),(184620,37184,0.00,0.00,5),(184621,37185,20.00,2500.00,1),(184622,37185,10.00,0.00,3),(184623,37185,2.00,0.00,4),(184624,37185,20.00,0.00,2),(184625,37185,0.00,0.00,5),(184626,37186,20.00,0.00,1),(184627,37186,10.00,10000000.00,3),(184628,37186,2.00,0.00,4),(184629,37186,20.00,0.00,2),(184630,37186,1.00,0.00,5),(184631,37187,20.00,0.00,1),(184632,37187,0.00,0.00,3),(184633,37187,0.00,0.00,4),(184634,37187,20.00,0.00,2),(184635,37187,0.00,0.00,5),(184636,37188,20.00,0.00,1),(184637,37188,10.00,0.00,3),(184638,37188,2.00,0.00,4),(184639,37188,20.00,0.00,2),(184640,37188,0.00,0.00,5),(184641,37189,20.00,0.00,1),(184642,37189,10.00,10000000.00,3),(184643,37189,2.00,0.00,4),(184644,37189,20.00,0.00,2),(184645,37189,1.00,0.00,5),(184646,37190,20.00,0.00,1),(184647,37190,0.00,0.00,3),(184648,37190,0.00,0.00,4),(184649,37190,20.00,0.00,2),(184650,37190,0.00,0.00,5),(184651,37191,2.00,20000.00,1),(184652,37191,10.00,0.00,3),(184653,37191,2.00,0.00,4),(184654,37191,20.00,0.00,2),(184655,37191,0.00,0.00,5),(184656,37192,2.00,20000.00,1),(184657,37192,10.00,10000000.00,3),(184658,37192,2.00,0.00,4),(184659,37192,20.00,0.00,2),(184660,37192,1.00,0.00,5),(184661,37193,2.00,20000.00,1),(184662,37193,0.00,0.00,3),(184663,37193,0.00,0.00,4),(184664,37193,20.00,0.00,2),(184665,37193,0.00,0.00,5),(184666,37194,2.00,20000.00,1),(184667,37194,0.00,0.00,3),(184668,37194,0.00,0.00,4),(184669,37194,20.00,0.00,2),(184670,37194,0.00,0.00,5),(184671,37195,2.00,75000.00,1),(184672,37195,0.00,0.00,3),(184673,37195,0.00,0.00,4),(184674,37195,20.00,0.00,2),(184675,37195,0.00,0.00,5),(184676,37196,20.00,120000.00,1),(184677,37196,10.00,0.00,3),(184678,37196,2.00,0.00,4),(184679,37196,20.00,0.00,2),(184680,37196,0.00,0.00,5),(184681,37197,20.00,120000.00,1),(184682,37197,10.00,10000000.00,3),(184683,37197,2.00,0.00,4),(184684,37197,20.00,0.00,2),(184685,37197,1.00,0.00,5),(184686,37198,20.00,120000.00,1),(184687,37198,0.00,0.00,3),(184688,37198,0.00,0.00,4),(184689,37198,20.00,0.00,2),(184690,37198,0.00,0.00,5),(184691,37199,10.00,120000.00,1),(184692,37199,0.00,0.00,3),(184693,37199,0.00,0.00,4),(184694,37199,20.00,0.00,2),(184695,37199,0.00,0.00,5),(184696,37200,10.00,180000.00,1),(184697,37200,0.00,0.00,3),(184698,37200,0.00,0.00,4),(184699,37200,20.00,0.00,2),(184700,37200,0.00,0.00,5),(184701,37201,10.00,120000.00,1),(184702,37201,10.00,10000000.00,3),(184703,37201,2.00,0.00,4),(184704,37201,20.00,0.00,2),(184705,37201,1.00,0.00,5),(184706,37202,10.00,120000.00,1),(184707,37202,0.00,0.00,3),(184708,37202,0.00,0.00,4),(184709,37202,20.00,0.00,2),(184710,37202,0.00,0.00,5),(184711,37203,2.00,120000.00,1),(184712,37203,0.00,0.00,3),(184713,37203,0.00,0.00,4),(184714,37203,20.00,0.00,2),(184715,37203,0.00,0.00,5),(184716,37204,2.00,180000.00,1),(184717,37204,0.00,0.00,3),(184718,37204,0.00,0.00,4),(184719,37204,20.00,0.00,2),(184720,37204,0.00,0.00,5),(184721,37205,30.00,2500.00,1),(184722,37205,10.00,0.00,3),(184723,37205,2.00,0.00,4),(184724,37205,20.00,0.00,2),(184725,37205,0.00,0.00,5),(184726,37206,30.00,2500.00,1),(184727,37206,10.00,10000000.00,3),(184728,37206,2.00,0.00,4),(184729,37206,20.00,0.00,2),(184730,37206,1.00,0.00,5),(184731,37207,30.00,2500.00,1),(184732,37207,0.00,0.00,3),(184733,37207,0.00,0.00,4),(184734,37207,20.00,0.00,2),(184735,37207,0.00,0.00,5),(184736,37208,30.00,5000.00,1),(184737,37208,0.00,0.00,3),(184738,37208,0.00,0.00,4),(184739,37208,20.00,0.00,2),(184740,37208,0.00,0.00,5),(184741,37209,30.00,5000.00,1),(184742,37209,10.00,0.00,3),(184743,37209,2.00,0.00,4),(184744,37209,20.00,0.00,2),(184745,37209,0.00,0.00,5),(184746,37210,30.00,5000.00,1),(184747,37210,10.00,10000000.00,3),(184748,37210,2.00,0.00,4),(184749,37210,20.00,0.00,2),(184750,37210,1.00,0.00,5),(184751,37211,30.00,5000.00,1),(184752,37211,0.00,0.00,3),(184753,37211,0.00,0.00,4),(184754,37211,20.00,0.00,2),(184755,37211,0.00,0.00,5),(184756,37212,30.00,10000.00,1),(184757,37212,0.00,0.00,3),(184758,37212,0.00,0.00,4),(184759,37212,20.00,0.00,2),(184760,37212,0.00,0.00,5),(184761,37213,20.00,2500.00,1),(184762,37213,10.00,0.00,3),(184763,37213,2.00,0.00,4),(184764,37213,20.00,0.00,2),(184765,37213,0.00,0.00,5),(184766,37214,20.00,2500.00,1),(184767,37214,10.00,10000000.00,3),(184768,37214,2.00,0.00,4),(184769,37214,20.00,0.00,2),(184770,37214,1.00,0.00,5),(184771,37215,20.00,0.00,1),(184772,37215,10.00,10000000.00,3),(184773,37215,2.00,0.00,4),(184774,37215,20.00,0.00,2),(184775,37215,1.00,0.00,5),(184776,37216,10.00,0.00,1),(184777,37216,0.00,0.00,3),(184778,37216,0.00,0.00,4),(184779,37216,20.00,0.00,2),(184780,37216,0.00,0.00,5),(184781,37217,10.00,1000.00,1),(184782,37217,10.00,0.00,3),(184783,37217,2.00,0.00,4),(184784,37217,20.00,0.00,2),(184785,37217,0.00,0.00,5),(184786,37218,10.00,1000.00,1),(184787,37218,10.00,10000000.00,3),(184788,37218,2.00,0.00,4),(184789,37218,20.00,0.00,2),(184790,37218,1.00,0.00,5),(184791,37219,10.00,1000.00,1),(184792,37219,0.00,0.00,3),(184793,37219,0.00,0.00,4),(184794,37219,20.00,0.00,2),(184795,37219,0.00,0.00,5),(184796,37220,5.00,2500.00,1),(184797,37220,2.00,0.00,3),(184798,37220,0.00,0.00,4),(184799,37220,20.00,0.00,2),(184800,37220,0.00,0.00,5),(184801,37221,5.00,2500.00,1),(184802,37221,10.00,10000000.00,3),(184803,37221,2.00,0.00,4),(184804,37221,20.00,0.00,2),(184805,37221,1.00,0.00,5),(184806,37222,10.00,2500.00,1),(184807,37222,10.00,10000000.00,3),(184808,37222,2.00,0.00,4),(184809,37222,20.00,0.00,2),(184810,37222,1.00,0.00,5),(184811,37223,10.00,2500.00,1),(184812,37223,0.00,0.00,3),(184813,37223,0.00,0.00,4),(184814,37223,20.00,0.00,2),(184815,37223,0.00,0.00,5),(184816,37224,10.00,5000.00,1),(184817,37224,0.00,0.00,3),(184818,37224,0.00,0.00,4),(184819,37224,20.00,0.00,2),(184820,37224,0.00,0.00,5),(184821,37225,20.00,2500.00,1),(184822,37225,10.00,10000000.00,3),(184823,37225,2.00,0.00,4),(184824,37225,20.00,0.00,2),(184825,37225,1.00,0.00,5),(184826,37226,10.00,2500.00,1),(184827,37226,0.00,0.00,3),(184828,37226,0.00,0.00,4),(184829,37226,20.00,0.00,2),(184830,37226,0.00,0.00,5),(184831,37228,5.00,20000.00,1),(184832,37228,10.00,0.00,3),(184833,37228,2.00,0.00,4),(184834,37228,20.00,0.00,2),(184835,37228,0.00,0.00,5),(184836,37229,5.00,20000.00,1),(184837,37229,10.00,10000000.00,3),(184838,37229,2.00,0.00,4),(184839,37229,20.00,0.00,2),(184840,37229,1.00,0.00,5),(184841,37230,10.00,20000.00,1),(184842,37230,10.00,10000000.00,3),(184843,37230,2.00,0.00,4),(184844,37230,20.00,0.00,2),(184845,37230,1.00,0.00,5),(184846,37231,10.00,20000.00,1),(184847,37231,0.00,0.00,3),(184848,37231,0.00,0.00,4),(184849,37231,20.00,0.00,2),(184850,37231,0.00,0.00,5),(184851,37232,10.00,30000.00,1),(184852,37232,0.00,0.00,3),(184853,37232,0.00,0.00,4),(184854,37232,20.00,0.00,2),(184855,37232,0.00,0.00,5),(184856,37233,1.00,20000.00,1),(184857,37233,10.00,0.00,3),(184858,37233,2.00,0.00,4),(184859,37233,20.00,0.00,2),(184860,37233,0.00,0.00,5),(184861,37234,1.00,20000.00,1),(184862,37234,10.00,10000000.00,3),(184863,37234,2.00,0.00,4),(184864,37234,20.00,0.00,2),(184865,37234,1.00,0.00,5),(184866,37235,1.00,20000.00,1),(184867,37235,0.00,0.00,3),(184868,37235,0.00,0.00,4),(184869,37235,20.00,0.00,2),(184870,37235,0.00,0.00,5),(184871,37236,2.00,20000.00,1),(184872,37236,0.00,0.00,3),(184873,37236,0.00,0.00,4),(184874,37236,20.00,0.00,2),(184875,37236,0.00,0.00,5),(184876,37237,2.00,75000.00,1),(184877,37237,0.00,0.00,3),(184878,37237,0.00,0.00,4),(184879,37237,20.00,0.00,2),(184880,37237,0.00,0.00,5),(184881,37238,1.00,20000.00,1),(184882,37238,10.00,0.00,3),(184883,37238,2.00,0.00,4),(184884,37238,20.00,0.00,2),(184885,37238,0.00,0.00,5),(184886,37239,1.00,50000.00,1),(184887,37239,10.00,10000000.00,3),(184888,37239,2.00,0.00,4),(184889,37239,20.00,0.00,2),(184890,37239,1.00,0.00,5),(184891,37240,1.00,50000.00,1),(184892,37240,0.00,0.00,3),(184893,37240,0.00,0.00,4),(184894,37240,20.00,0.00,2),(184895,37240,0.00,0.00,5),(184896,37241,2.00,50000.00,1),(184897,37241,0.00,0.00,3),(184898,37241,0.00,0.00,4),(184899,37241,20.00,0.00,2),(184900,37241,0.00,0.00,5),(184901,37242,2.00,75000.00,1),(184902,37242,0.00,0.00,3),(184903,37242,0.00,0.00,4),(184904,37242,20.00,0.00,2),(184905,37242,0.00,0.00,5),(201576,40588,5.00,5000.00,1),(201577,40588,0.00,0.00,3),(201578,40588,0.00,0.00,4),(201579,40588,20.00,50000.00,2),(201580,40588,0.00,0.00,5),(201581,40589,2.55,50000.00,1),(201582,40589,0.00,0.00,3),(201583,40589,0.00,0.00,4),(201584,40589,20.00,45000.00,2),(201585,40589,0.00,0.00,5),(201586,40590,4.50,450000.00,1),(201587,40590,0.00,0.00,3),(201588,40590,0.00,0.00,4),(201589,40590,20.00,45000.00,2),(201590,40590,0.00,0.00,5),(201591,40591,4.78,40000.00,1),(201592,40591,0.00,0.00,3),(201593,40591,0.00,0.00,4),(201594,40591,20.00,6000.00,2),(201595,40591,0.00,0.00,5),(201596,40592,10.00,5000.00,1),(201597,40592,10.00,10000000.00,3),(201598,40592,2.00,0.00,4),(201599,40592,20.00,0.00,2),(201600,40592,1.00,0.00,5),(201601,40593,10.00,5000.00,1),(201602,40593,0.00,0.00,3),(201603,40593,0.00,0.00,4),(201604,40593,20.00,0.00,2),(201605,40593,0.00,0.00,5),(201606,40594,10.00,20000.00,1),(201607,40594,0.00,0.00,3),(201608,40594,0.00,0.00,4),(201609,40594,20.00,0.00,2),(201610,40594,0.00,0.00,5),(201611,40595,10.00,2500.00,1),(201612,40595,10.00,10000000.00,3),(201613,40595,2.00,0.00,4),(201614,40595,20.00,0.00,2),(201615,40595,1.00,0.00,5),(201616,40596,10.00,2500.00,1),(201617,40596,0.00,0.00,3),(201618,40596,0.00,0.00,4),(201619,40596,20.00,0.00,2),(201620,40596,0.00,0.00,5),(201621,40597,10.00,5000.00,1),(201622,40597,0.00,0.00,3),(201623,40597,0.00,0.00,4),(201624,40597,20.00,0.00,2),(201625,40597,0.00,0.00,5),(201626,40598,10.00,5000.00,1),(201627,40598,10.00,10000000.00,3),(201628,40598,2.00,0.00,4),(201629,40598,20.00,0.00,2),(201630,40598,1.00,0.00,5),(201631,40599,10.00,5000.00,1),(201632,40599,0.00,0.00,3),(201633,40599,0.00,0.00,4),(201634,40599,20.00,0.00,2),(201635,40599,0.00,0.00,5),(201636,40600,5.50,6000.00,1),(201637,40600,0.00,0.00,3),(201638,40600,0.00,0.00,4),(201639,40600,20.00,31000.00,2),(201640,40600,0.00,0.00,5),(201641,40601,2.00,8000.00,1),(201642,40601,0.00,0.00,3),(201643,40601,0.00,0.00,4),(201644,40601,20.00,31000.00,2),(201645,40601,0.00,0.00,5),(201646,40602,10.00,100000.00,1),(201647,40602,10.00,10000000.00,3),(201648,40602,2.00,0.00,4),(201649,40602,20.00,0.00,2),(201650,40602,1.00,0.00,5),(201651,40603,10.00,100000.00,1),(201652,40603,0.00,0.00,3),(201653,40603,0.00,0.00,4),(201654,40603,20.00,0.00,2),(201655,40603,0.00,0.00,5),(201656,40604,10.00,200000.00,1),(201657,40604,0.00,0.00,3),(201658,40604,0.00,0.00,4),(201659,40604,20.00,0.00,2),(201660,40604,0.00,0.00,5),(201661,40605,1.00,5000000.00,1),(201662,40605,0.00,0.00,3),(201663,40605,0.00,0.00,4),(201664,40605,20.00,0.00,2),(201665,40605,0.00,0.00,5),(201666,40606,20.00,0.00,1),(201667,40606,10.00,10000000.00,3),(201668,40606,2.00,0.00,4),(201669,40606,20.00,0.00,2),(201670,40606,1.00,0.00,5),(201671,40607,20.00,0.00,1),(201672,40607,0.00,0.00,3),(201673,40607,0.00,0.00,4),(201674,40607,20.00,0.00,2),(201675,40607,0.00,0.00,5),(201676,40608,20.00,0.00,1),(201677,40608,10.00,10000000.00,3),(201678,40608,2.00,0.00,4),(201679,40608,20.00,0.00,2),(201680,40608,1.00,0.00,5),(201681,40609,2.00,50000.00,1),(201682,40609,0.00,0.00,3),(201683,40609,0.00,0.00,4),(201684,40609,20.00,0.00,2),(201685,40609,0.00,0.00,5),(201686,40610,2.00,50000.00,1),(201687,40610,0.00,0.00,3),(201688,40610,0.00,0.00,4),(201689,40610,20.00,0.00,2),(201690,40610,0.00,0.00,5),(201691,40611,2.00,75000.00,1),(201692,40611,0.00,0.00,3),(201693,40611,0.00,0.00,4),(201694,40611,20.00,0.00,2),(201695,40611,0.00,0.00,5),(201696,40612,2.00,50000.00,1),(201697,40612,10.00,10000000.00,3),(201698,40612,2.00,0.00,4),(201699,40612,20.00,0.00,2),(201700,40612,1.00,0.00,5),(201701,40613,10.00,30000.00,1),(201702,40613,0.00,0.00,3),(201703,40613,0.00,0.00,4),(201704,40613,20.00,0.00,2),(201705,40613,0.00,0.00,5),(201706,40614,20.00,120000.00,1),(201707,40614,10.00,10000000.00,3),(201708,40614,2.00,0.00,4),(201709,40614,20.00,0.00,2),(201710,40614,1.00,0.00,5),(201711,40615,20.00,120000.00,1),(201712,40615,0.00,0.00,3),(201713,40615,0.00,0.00,4),(201714,40615,20.00,0.00,2),(201715,40615,0.00,0.00,5),(201716,40616,10.00,120000.00,1),(201717,40616,0.00,0.00,3),(201718,40616,0.00,0.00,4),(201719,40616,20.00,0.00,2),(201720,40616,0.00,0.00,5),(201721,40617,10.00,180000.00,1),(201722,40617,0.00,0.00,3),(201723,40617,0.00,0.00,4),(201724,40617,20.00,0.00,2),(201725,40617,0.00,0.00,5),(201726,40618,10.00,120000.00,1),(201727,40618,10.00,10000000.00,3),(201728,40618,2.00,0.00,4),(201729,40618,20.00,0.00,2),(201730,40618,1.00,0.00,5),(201731,40619,10.00,120000.00,1),(201732,40619,0.00,0.00,3),(201733,40619,0.00,0.00,4),(201734,40619,20.00,0.00,2),(201735,40619,0.00,0.00,5),(201736,40620,2.00,120000.00,1),(201737,40620,0.00,0.00,3),(201738,40620,0.00,0.00,4),(201739,40620,20.00,0.00,2),(201740,40620,0.00,0.00,5),(201741,40621,2.00,180000.00,1),(201742,40621,0.00,0.00,3),(201743,40621,0.00,0.00,4),(201744,40621,20.00,0.00,2),(201745,40621,0.00,0.00,5),(201746,40622,30.00,2500.00,1),(201747,40622,10.00,10000000.00,3),(201748,40622,2.00,0.00,4),(201749,40622,20.00,0.00,2),(201750,40622,1.00,0.00,5),(201751,40623,30.00,2500.00,1),(201752,40623,0.00,0.00,3),(201753,40623,0.00,0.00,4),(201754,40623,20.00,0.00,2),(201755,40623,0.00,0.00,5),(201756,40624,30.00,5000.00,1),(201757,40624,0.00,0.00,3),(201758,40624,0.00,0.00,4),(201759,40624,20.00,0.00,2),(201760,40624,0.00,0.00,5),(201761,40625,30.00,5000.00,1),(201762,40625,10.00,10000000.00,3),(201763,40625,2.00,0.00,4),(201764,40625,20.00,0.00,2),(201765,40625,1.00,0.00,5),(201766,40626,30.00,5000.00,1),(201767,40626,0.00,0.00,3),(201768,40626,0.00,0.00,4),(201769,40626,20.00,0.00,2),(201770,40626,0.00,0.00,5),(201771,40627,30.00,10000.00,1),(201772,40627,0.00,0.00,3),(201773,40627,0.00,0.00,4),(201774,40627,20.00,0.00,2),(201775,40627,0.00,0.00,5),(201776,40628,20.00,2500.00,1),(201777,40628,10.00,10000000.00,3),(201778,40628,2.00,0.00,4),(201779,40628,20.00,0.00,2),(201780,40628,1.00,0.00,5),(201781,40629,10.00,2500.00,1),(201782,40629,0.00,0.00,3),(201783,40629,0.00,0.00,4),(201784,40629,20.00,0.00,2),(201785,40629,0.00,0.00,5),(201786,40630,10.00,0.00,1),(201787,40630,0.00,0.00,3),(201788,40630,0.00,0.00,4),(201789,40630,20.00,0.00,2),(201790,40630,0.00,0.00,5),(201791,40631,10.00,2500.00,1),(201792,40631,0.00,0.00,3),(201793,40631,0.00,0.00,4),(201794,40631,20.00,5000.00,2),(201795,40631,0.00,0.00,5),(201796,40632,10.00,1000.00,1),(201797,40632,10.00,10000000.00,3),(201798,40632,2.00,0.00,4),(201799,40632,20.00,0.00,2),(201800,40632,1.00,0.00,5),(201801,40633,10.00,1000.00,1),(201802,40633,0.00,0.00,3),(201803,40633,0.00,0.00,4),(201804,40633,20.00,0.00,2),(201805,40633,0.00,0.00,5),(201806,40634,5.00,2500.00,1),(201807,40634,10.00,10000000.00,3),(201808,40634,2.00,0.00,4),(201809,40634,20.00,0.00,2),(201810,40634,1.00,0.00,5),(201811,40635,10.00,2500.00,1),(201812,40635,10.00,10000000.00,3),(201813,40635,2.00,0.00,4),(201814,40635,20.00,0.00,2),(201815,40635,1.00,0.00,5),(201816,40636,10.00,2500.00,1),(201817,40636,0.00,0.00,3),(201818,40636,0.00,0.00,4),(201819,40636,20.00,0.00,2),(201820,40636,0.00,0.00,5),(201821,40637,10.00,5000.00,1),(201822,40637,0.00,0.00,3),(201823,40637,0.00,0.00,4),(201824,40637,20.00,0.00,2),(201825,40637,0.00,0.00,5),(201826,40638,20.00,2500.00,1),(201827,40638,10.00,10000000.00,3),(201828,40638,2.00,0.00,4),(201829,40638,20.00,0.00,2),(201830,40638,1.00,0.00,5),(201831,40639,10.00,2500.00,1),(201832,40639,0.00,0.00,3),(201833,40639,0.00,0.00,4),(201834,40639,20.00,0.00,2),(201835,40639,0.00,0.00,5),(201836,40640,10.00,20000.00,1),(201837,40640,10.00,10000000.00,3),(201838,40640,2.00,0.00,4),(201839,40640,20.00,0.00,2),(201840,40640,1.00,0.00,5),(201841,40641,5.00,20000.00,1),(201842,40641,10.00,10000000.00,3),(201843,40641,2.00,0.00,4),(201844,40641,0.00,0.00,2),(201845,40641,1.00,0.00,5),(201846,40642,10.00,20000.00,1),(201847,40642,0.00,0.00,3),(201848,40642,0.00,0.00,4),(201849,40642,20.00,0.00,2),(201850,40642,0.00,0.00,5),(201851,40643,10.00,30000.00,1),(201852,40643,0.00,0.00,3),(201853,40643,0.00,0.00,4),(201854,40643,20.00,0.00,2),(201855,40643,0.00,0.00,5),(201856,40644,2.00,50000.00,1),(201857,40644,0.00,0.00,3),(201858,40644,0.00,0.00,4),(201859,40644,20.00,0.00,2),(201860,40644,0.00,0.00,5),(201861,40645,2.00,75000.00,1),(201862,40645,0.00,0.00,3),(201863,40645,0.00,0.00,4),(201864,40645,20.00,0.00,2),(201865,40645,0.00,0.00,5),(201866,40646,2.00,50000.00,1),(201867,40646,0.00,0.00,3),(201868,40646,0.00,0.00,4),(201869,40646,20.00,0.00,2),(201870,40646,0.00,0.00,5),(201871,40647,0.00,0.00,1),(201872,40647,0.00,0.00,3),(201873,40647,0.00,0.00,4),(201874,40647,20.00,0.00,2),(201875,40647,0.00,0.00,5),(201876,40648,20.00,75000.00,1),(201877,40648,0.00,0.00,3),(201878,40648,0.00,0.00,4),(201879,40648,20.00,0.00,2),(201880,40648,0.00,0.00,5);
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
INSERT INTO `uom` VALUES (1,0,'Nos','Numbers',0,0,''),(3,0,'Acre','Land',0,0,''),(4,0,'Sqt','Building',0,0,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'Admin','Admin','admin','1uHL2oMM9bq8iOYovzJfbQ==','Admin',0,NULL,NULL,NULL,NULL,1,1,'','0000-00-00 00:00:00','','0000-00-00 00:00:00',NULL),(2,'Supervisor','','supervisor','vLmnpxoKJox2kEz6n67l7A==','supervisor',0,'','','',NULL,2,1,'','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),(3,'auditor','auditor','auditor','nKewu4MohxupRxOGwiMN8Q==','auditor',0,NULL,NULL,NULL,NULL,3,1,'','0000-00-00 00:00:00','','0000-00-00 00:00:00',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'Admin'),(3,'Auditor'),(2,'Supervisor');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
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
  `LEDGER_SEQUENCE_NO` int(10) unsigned NOT NULL DEFAULT '0',
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
-- Table structure for table `voucher_files`
--

DROP TABLE IF EXISTS `voucher_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_files` (
  `VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Voucher Id',
  `SEQUENCE_NO` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Image Order',
  `FILE_NAME` varchar(100) NOT NULL DEFAULT '' COMMENT 'Auto generated File Name',
  `ACTUAL_FILE_NAME` varchar(100) NOT NULL DEFAULT '' COMMENT 'Actual Image File Name',
  `REMARK` varchar(100) NOT NULL DEFAULT '',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_files`
--

LOCK TABLES `voucher_files` WRITE;
/*!40000 ALTER TABLE `voucher_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_gst_invoice`
--

DROP TABLE IF EXISTS `voucher_gst_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_gst_invoice` (
  `GST_INVOICE_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'GST Invoice Master Id',
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'General Voucher',
  PRIMARY KEY (`GST_INVOICE_ID`,`VOUCHER_ID`),
  KEY `UQ_INVOICE_VOUCHER_ID` (`GST_INVOICE_ID`,`VOUCHER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_gst_invoice`
--

LOCK TABLES `voucher_gst_invoice` WRITE;
/*!40000 ALTER TABLE `voucher_gst_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher_gst_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_master_audit_log`
--

DROP TABLE IF EXISTS `voucher_master_audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_master_audit_log` (
  `VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'VOUCHER_ID',
  `VOUCHER_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PROJECT_NAME` varchar(150) DEFAULT NULL,
  `VOUCHER_NO` varchar(25) DEFAULT NULL,
  `VOUCHER_TYPE` varchar(2) DEFAULT NULL COMMENT 'RC -Receipts,PY -Payments,CN -Contra ,JR -Journal',
  `VOUCHER_SUB_TYPE` varchar(3) NOT NULL DEFAULT 'GN',
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `PREVIOUS_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `IS_AUDITOR_MODIFIED` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Voucher modified or created by Auditor',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MODIFIED_ON` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `MODIFIED_BY` int(10) unsigned NOT NULL DEFAULT '0',
  `MODIFIED_BY_NAME` varchar(100) NOT NULL DEFAULT '',
  `PREVIOUS_MODIFIED_BY` int(10) unsigned NOT NULL DEFAULT '0',
  `PREVIOUS_MODIFIED_BY_NAME` varchar(100) NOT NULL DEFAULT '',
  `NUMBER_OF_REVISIONS` int(10) unsigned NOT NULL DEFAULT '1',
  `ACTION` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_master_audit_log`
--

LOCK TABLES `voucher_master_audit_log` WRITE;
/*!40000 ALTER TABLE `voucher_master_audit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher_master_audit_log` ENABLE KEYS */;
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
  `GST_VENDOR_INVOICE_NO` varchar(25) DEFAULT NULL COMMENT 'Vendor GST invoice no',
  `GST_VENDOR_INVOICE_TYPE` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 - Regular, 1- Composition',
  `GST_VENDOR_INVOICE_DATE` datetime DEFAULT NULL COMMENT 'Vendor GST invoice Date',
  `GST_VENDOR_ID` int(10) unsigned DEFAULT NULL COMMENT 'Vendor Name',
  `STATUS` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'DEFAULT(1)\r\n0- INACTIVE/CANCELLED\r\n1-ACTIVE\r\n',
  `CREATED_ON` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `MODIFIED_ON` datetime DEFAULT NULL,
  `CREATED_BY` int(10) unsigned NOT NULL DEFAULT '0',
  `MODIFIED_BY` int(10) unsigned NOT NULL DEFAULT '0',
  `AUTHORIZATION_STATUS` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-Not Authorized  1-Authorized',
  `AUTHORIZATION_UPDATED_ON` datetime DEFAULT NULL,
  `AUTHORIZATION_UPDATED_BY_NAME` varchar(100) NOT NULL DEFAULT '',
  `CALCULATED_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ACTUAL_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `NAME_ADDRESS` varchar(100) DEFAULT NULL,
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CREATED_BY_NAME` varchar(100) NOT NULL DEFAULT '',
  `MODIFIED_BY_NAME` varchar(100) NOT NULL DEFAULT '',
  `IS_AUDITOR_MODIFIED` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Voucher modified or created by Auditor',
  `PREVIOUS_VOUCHER_NO` varchar(25) DEFAULT '',
  `CLIENT_REFERENCE_ID` varchar(100) DEFAULT NULL,
  `CLIENT_CODE` varchar(100) DEFAULT NULL,
  `CLIENT_MODE` varchar(45) DEFAULT NULL,
  `PAN_NUMBER` varchar(30) DEFAULT NULL,
  `GST_NUMBER` varchar(30) DEFAULT NULL,
  `DONOR_MAIL_STATUS` int(10) unsigned NOT NULL DEFAULT '0',
  `DONOR_MAIL_SENT_DATE` datetime DEFAULT NULL,
  `DONOR_SMS_STATUS` int(10) unsigned NOT NULL DEFAULT '0',
  `DONOR_SMS_SENT_DATE` datetime DEFAULT NULL,
  `VOUCHER_DEFINITION_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Voucher Definition id',
  `IS_MULTI_CURRENCY` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Is multi currency mode',
  `IS_CASH_BANK_STATUS` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'Default 1, Journal 0 if No Cash/Bank Involved',
  PRIMARY KEY (`VOUCHER_ID`,`BRANCH_ID`),
  KEY `FK_VOUCHER_MASTER_PROJECT_ID` (`VOUCHER_DATE`,`PROJECT_ID`) USING BTREE,
  KEY `FK_voucher_master_trans_PROJECT_ID` (`PROJECT_ID`,`VOUCHER_DATE`,`VOUCHER_TYPE`) USING BTREE,
  KEY `FK_voucher_master_Vendor` (`GST_VENDOR_ID`),
  CONSTRAINT `FK_voucher_master_trans_PROJECT_ID` FOREIGN KEY (`PROJECT_ID`) REFERENCES `master_project` (`PROJECT_ID`),
  CONSTRAINT `FK_voucher_master_Vendor` FOREIGN KEY (`GST_VENDOR_ID`) REFERENCES `asset_stock_vendor` (`VENDOR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_master_trans`
--

LOCK TABLES `voucher_master_trans` WRITE;
/*!40000 ALTER TABLE `voucher_master_trans` DISABLE KEYS */;
INSERT INTO `voucher_master_trans` VALUES (1,'2021-04-01 00:00:00',1,NULL,'RC','GN',0,0,'F',0.00,0,1.00,0,'Boarding Fees','',0,NULL,NULL,0,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(2,'2021-05-01 00:00:00',1,NULL,'RC','GN',0,0,'F',0.00,0,1.00,0,'Boarding Fees','',0,NULL,NULL,0,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(3,'2021-05-01 00:00:00',1,NULL,'RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,0,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(4,'2021-05-01 00:00:00',1,NULL,'RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,0,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(5,'2021-04-01 00:00:00',1,NULL,'RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,0,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(6,'2021-04-01 00:00:00',1,NULL,'RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,0,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(7,'2021-04-01 00:00:00',1,NULL,'RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,0,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(8,'2021-05-01 00:00:00',1,NULL,'RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,0,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(9,'2021-04-01 00:00:00',1,NULL,'PY','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,0,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(10,'2021-05-01 00:00:00',1,NULL,'PY','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,0,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(11,'2021-04-01 00:00:00',1,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'AUDIO VISUAL EXPENSES','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(12,'2021-05-01 00:00:00',1,'02','PY','GN',0,0,'F',0.00,0,1.00,0,'Sports Expenses','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(13,'2021-04-01 00:00:00',1,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'ADMINISTRATIVE CHARGES','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(14,'2021-05-01 00:00:00',1,'03','PY','GN',0,0,'F',0.00,0,1.00,0,'GRATITUITY','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(15,'2021-04-01 00:00:00',1,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'Postage','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(16,'2021-04-01 00:00:00',1,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'EB bills','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(17,'2021-05-01 00:00:00',1,'05','RC','GN',0,0,'F',0.00,0,1.00,0,'Farm income','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(18,'2021-04-01 00:00:00',1,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'Sale of eggs','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(19,'2021-04-01 00:00:00',1,'05','RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(20,'2021-05-01 00:00:00',1,'04','PY','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(21,'2021-04-01 00:00:00',1,'06','RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(22,'2021-04-01 00:00:00',1,'06','RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(23,'2021-04-01 00:00:00',1,'07','RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(24,'2021-05-01 00:00:00',1,'06','RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(25,'2021-04-01 00:00:00',1,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'Tour Expenses','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(26,'2021-05-01 00:00:00',1,'05','PY','GN',0,0,'F',0.00,0,1.00,0,'EDUCATION OF MEMBERS','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(27,'2021-04-01 00:00:00',1,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchase of BRICKS','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(28,'2021-05-01 00:00:00',1,'06','PY','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(29,'2021-04-01 00:00:00',1,'08','RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(30,'2021-05-01 00:00:00',1,'07','PY','GN',0,0,'F',0.00,0,1.00,0,'Contribution to Province','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(31,'2021-04-01 00:00:00',1,'09','RC','GN',0,0,'F',0.00,0,1.00,0,'ESI Collectiion','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(32,'2021-05-01 00:00:00',1,'08','PY','GN',0,0,'F',0.00,0,1.00,0,'ESI Paid','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(33,'2021-04-01 00:00:00',1,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(34,'2021-05-01 00:00:00',1,'09','PY','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(35,'2021-04-01 00:00:00',1,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'EPF MANAGEMENT SHARE','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(36,'2021-05-01 00:00:00',1,'10','PY','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(37,'2021-04-01 00:00:00',1,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(38,'2021-05-01 00:00:00',1,'11','PY','GN',0,0,'F',0.00,0,1.00,0,'Building Expenses','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(39,'2021-05-01 00:00:00',1,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'ELECTRICAL  THINGS','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(40,'2021-05-01 00:00:00',1,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'New FURNITURE','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(41,'2021-05-01 00:00:00',1,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'Purchased GAMES EQUIPMENT','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(42,'2021-05-01 00:00:00',1,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'LAB EQUIPMENT','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(43,'2021-05-01 00:00:00',1,'16','PY','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(44,'2021-05-01 00:00:00',1,'17','PY','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(45,'2021-05-01 00:00:00',1,'18','PY','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(46,'2021-05-01 00:00:00',1,'19','PY','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(47,'2021-04-01 00:00:00',1,'10','RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(48,'2021-05-01 00:00:00',1,'07','RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-05-01 00:00:00','2025-07-03 15:20:27',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'',NULL,NULL,NULL,'','',0,NULL,0,NULL,1,0,1),(49,'2021-04-01 00:00:00',1,'12','PY','GN',0,0,'F',0.00,0,1.00,0,'CLOTH','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(50,'2021-05-01 00:00:00',1,'20','PY','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(51,'2021-04-01 00:00:00',1,'11','RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(52,'2021-05-01 00:00:00',1,'08','RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(53,'2021-04-01 00:00:00',1,'12','RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(54,'2021-05-01 00:00:00',1,'09','RC','GN',0,0,'F',0.00,0,1.00,0,'Bank Interest','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(55,'2021-04-01 00:00:00',1,'13','PY','GN',0,0,'F',0.00,0,1.00,0,'BARBER CHARGES','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(56,'2021-05-01 00:00:00',1,'21','PY','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(57,'2021-04-01 00:00:00',1,'13','RC','GN',0,0,'F',0.00,0,1.00,0,'Sale of applications','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(58,'2021-05-01 00:00:00',1,'10','RC','GN',0,0,'F',0.00,0,1.00,0,'Sale of stationary','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(59,'2021-05-01 00:00:00',1,'11','RC','GN',0,0,'F',0.00,0,1.00,0,'Fee Collected','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(60,'2021-04-01 00:00:00',1,'14','RC','GN',0,0,'F',0.00,0,1.00,0,'Fee Collected','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(61,'2021-04-01 00:00:00',1,'15','RC','GN',0,0,'F',0.00,0,1.00,0,'Fee Collected','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(62,'2021-05-01 00:00:00',1,'12','RC','GN',0,0,'F',0.00,0,1.00,0,'Arrears','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(63,'2021-04-01 00:00:00',1,'14','PY','GN',0,0,'F',0.00,0,1.00,0,'Registeration','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(64,'2021-05-01 00:00:00',1,'22','PY','GN',0,0,'F',0.00,0,1.00,0,'University fee paid','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(65,'2021-04-01 00:00:00',1,'15','PY','GN',0,0,'F',0.00,0,1.00,0,'Repair work','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(66,'2021-05-01 00:00:00',1,'23','PY','GN',0,0,'F',0.00,0,1.00,0,'Repair work','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,2,0,1),(67,'2021-04-01 00:00:00',1,'16','RC','GN',0,0,'F',0.00,0,1.00,0,'Domestic Workers','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(68,'2021-04-01 00:00:00',1,'17','RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(69,'2021-04-01 00:00:00',1,'18','RC','GN',0,0,'F',0.00,0,1.00,0,'Computer fees','',0,NULL,NULL,1,'2021-04-01 00:00:00','2021-04-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(70,'2021-05-01 00:00:00',1,'13','RC','GN',0,0,'F',0.00,0,1.00,0,'Special Fees','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(71,'2021-05-01 00:00:00',1,'14','RC','GN',0,0,'F',0.00,0,1.00,0,'Special Fees','',0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(72,'2021-04-10 00:00:00',1,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'Cash Deposite','',0,NULL,NULL,1,'2021-04-10 00:00:00','2021-04-10 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,3,0,1),(73,'2021-05-05 00:00:00',1,'01','CN','GN',0,0,'F',0.00,0,1.00,0,'Self','',0,NULL,NULL,1,'2021-05-05 00:00:00','2021-05-05 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,3,0,1),(74,'2021-05-01 00:00:00',1,'02','CN','FD',0,0,'N',0.00,0,0.00,0,'',NULL,0,NULL,NULL,1,'2021-05-01 00:00:00','2021-05-01 00:00:00',1,0,0,NULL,'',0.00,0.00,NULL,0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,3,0,1),(75,'2021-05-05 00:00:00',1,'01','RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-05-05 00:00:00','2021-05-05 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(76,'2021-05-05 00:00:00',1,NULL,'RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,0,'2021-05-05 00:00:00','2021-05-05 00:00:00',1,1,0,NULL,'',0.00,0.00,'',0,0,'Admin','Admin',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(77,'2021-05-05 00:00:00',1,'03','RC','GN',0,0,'F',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2021-05-05 00:00:00','2021-05-05 00:00:00',1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'','0',NULL,NULL,NULL,NULL,0,NULL,0,NULL,1,0,1),(78,'2021-05-05 00:00:00',1,'01','JN','GN',0,0,'N',0.00,0,1.00,0,'',NULL,0,NULL,NULL,1,'2021-05-05 00:00:00','2021-05-05 00:00:00',1,0,0,NULL,'',0.00,0.00,NULL,0,0,'Admin','',0,'',NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,4,0,0),(79,'2021-05-05 00:00:00',1,'02','JN','GN',0,0,'N',0.00,0,1.00,0,'',NULL,0,NULL,NULL,1,'2021-05-05 00:00:00','2021-05-05 00:00:00',1,0,0,NULL,'',0.00,0.00,NULL,0,0,'Admin','',0,'',NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,4,0,0),(80,'2021-05-05 00:00:00',1,'04','RC','GN',0,0,'N',0.00,0,1.00,0,'','',0,NULL,NULL,1,'2025-07-08 12:35:32',NULL,1,0,0,NULL,'',0.00,0.00,'',0,0,'Admin','',0,'',NULL,NULL,NULL,'','',0,NULL,0,NULL,1,0,1);
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
  `NUMBER_FORMAT_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1-Voucher Number,2-Receipt Number,3-Contra Voucher Number, 4- Journal Voucher Number',
  `LAST_VOUCHER_NUMBER` varchar(45) NOT NULL DEFAULT '',
  `RUNNING_NUMBER` int(10) unsigned NOT NULL DEFAULT '0',
  `NUMBER_FORMAT` varchar(25) NOT NULL DEFAULT '',
  `MONTH` varchar(45) NOT NULL DEFAULT '' COMMENT 'Applicable from',
  `VOUCHER_MONTH` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Current Voucher Month',
  `DURATION` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Reset Month',
  `VOUCHER_YEAR` int(10) unsigned NOT NULL DEFAULT '0',
  `PROJECT_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VOUCHER_DEFINITION_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Voucher Definition',
  PRIMARY KEY (`NUMBER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_number_format`
--

LOCK TABLES `voucher_number_format` WRITE;
/*!40000 ALTER TABLE `voucher_number_format` DISABLE KEYS */;
INSERT INTO `voucher_number_format` VALUES (1,2,'18',18,'','1',4,1,2020,1,1),(2,2,'14',14,'','1',5,1,2020,1,1),(3,1,'15',15,'','1',4,1,2020,1,2),(4,1,'23',23,'','1',5,1,2020,1,2),(5,2,'01',1,'','1',3,1,2021,1,1),(6,3,'01',1,'','1',4,1,2020,1,3),(7,3,'02',2,'','1',5,1,2020,1,3),(8,2,'04',4,'','1',5,1,2021,1,1),(9,4,'02',2,'','1',5,1,2021,1,4);
/*!40000 ALTER TABLE `voucher_number_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_reference`
--

DROP TABLE IF EXISTS `voucher_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_reference` (
  `REC_PAY_VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'RECEIPT, PAYMENT VOUCHERS',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `REF_VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'JOURNAL VOUCHER',
  PRIMARY KEY (`REC_PAY_VOUCHER_ID`,`LEDGER_ID`,`REF_VOUCHER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_reference`
--

LOCK TABLES `voucher_reference` WRITE;
/*!40000 ALTER TABLE `voucher_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_sub_ledger_trans`
--

DROP TABLE IF EXISTS `voucher_sub_ledger_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher_sub_ledger_trans` (
  `VOUCHER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SEQUENCE_NO` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SUB_LEDGER_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `TRANS_MODE` varchar(2) DEFAULT NULL COMMENT 'CR-CREDIT\r\nDR-DEBIT\r\n',
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`VOUCHER_ID`,`SEQUENCE_NO`,`BRANCH_ID`,`LOCATION_ID`),
  KEY `FK_voucher_sub_ledger_trans_ledger_id` (`LEDGER_ID`),
  KEY `FK_voucher_sub_ledger_trans_sub_ledger_id` (`SUB_LEDGER_ID`),
  CONSTRAINT `FK_voucher_sub_ledger_trans_ledger_id` FOREIGN KEY (`LEDGER_ID`) REFERENCES `master_ledger` (`LEDGER_ID`),
  CONSTRAINT `FK_voucher_sub_ledger_trans_sub_ledger_id` FOREIGN KEY (`SUB_LEDGER_ID`) REFERENCES `master_sub_ledger` (`SUB_LEDGER_ID`),
  CONSTRAINT `FK_voucher_sub_ledger_trans_voucher_id` FOREIGN KEY (`VOUCHER_ID`) REFERENCES `voucher_master_trans` (`VOUCHER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_sub_ledger_trans`
--

LOCK TABLES `voucher_sub_ledger_trans` WRITE;
/*!40000 ALTER TABLE `voucher_sub_ledger_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher_sub_ledger_trans` ENABLE KEYS */;
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
  `LIVE_EXCHANGE_RATE` decimal(15,2) NOT NULL DEFAULT '0.00',
  `EXCHANGE_RATE` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ACTUAL_AMOUNT` decimal(15,2) NOT NULL DEFAULT '0.00',
  `LEDGER_FLAG` varchar(2) DEFAULT NULL COMMENT 'C-CASH\r\nB-BANK\r\nF-FIXED DEPOSIT\r\nJ-JOURNAL\r\nCA-CASH (CASH LEDGER TRANS)\r\nBK-BANK(BANK LEDGER TRANS) \r\nFD-FIXED DEPOSIT(FD LEDGER TRANS)\r\n',
  `CHEQUE_NO` varchar(100) DEFAULT NULL,
  `MATERIALIZED_ON` datetime DEFAULT NULL COMMENT 'CLEARED/RECONCILED',
  `CHEQUE_REF_DATE` datetime DEFAULT NULL,
  `CHEQUE_REF_BANKNAME` varchar(50) DEFAULT NULL,
  `CHEQUE_REF_BRANCH` varchar(50) DEFAULT NULL,
  `STATUS` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'DEFAULT(1)\r\n0- INACTIVE/CANCELLED\r\n1-ACTIVE\r\n',
  `NARRATION` varchar(500) DEFAULT NULL,
  `BRANCH_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LOCATION_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LEDGER_GST_CLASS_ID` int(10) unsigned DEFAULT NULL,
  `GST` decimal(15,2) NOT NULL DEFAULT '0.00',
  `CGST` decimal(15,2) NOT NULL DEFAULT '0.00',
  `SGST` decimal(15,2) NOT NULL DEFAULT '0.00',
  `IGST` decimal(15,2) NOT NULL DEFAULT '0.00',
  `REFERENCE_NUMBER` varchar(60) DEFAULT NULL,
  `FUND_TRANSFER_TYPE_NAME` varchar(60) DEFAULT NULL,
  `BENEFICIARY_NAME` varchar(50) DEFAULT NULL,
  `BENEFICIARY_ACC_NO` varchar(30) DEFAULT NULL,
  `BENEFICIARY_BANK_BRANCH` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`VOUCHER_ID`,`SEQUENCE_NO`,`BRANCH_ID`),
  UNIQUE KEY `REFERENCE_NUMBER` (`REFERENCE_NUMBER`,`LEDGER_ID`),
  KEY `LEDGER_ID` (`LEDGER_ID`),
  KEY `FK_LEDGER_GST` (`LEDGER_GST_CLASS_ID`),
  CONSTRAINT `FK_LEDGER_GST` FOREIGN KEY (`LEDGER_GST_CLASS_ID`) REFERENCES `master_gst_class` (`GST_Id`),
  CONSTRAINT `FK_voucher_trans_LEDGER_ID` FOREIGN KEY (`LEDGER_ID`) REFERENCES `master_ledger` (`LEDGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_trans`
--

LOCK TABLES `voucher_trans` WRITE;
/*!40000 ALTER TABLE `voucher_trans` DISABLE KEYS */;
INSERT INTO `voucher_trans` VALUES (1,1,114,1000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(1,2,1,1000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(2,1,114,2500.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(2,2,1,2500.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(3,1,102,250.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(3,2,1,250.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(4,1,38,300.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(4,2,1,300.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(5,1,102,100.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(5,2,1,100.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(6,1,38,600.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(6,2,1,600.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(7,1,58,100.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(7,2,1,100.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(8,1,58,200.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(8,2,1,200.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(9,1,244,2500.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(9,2,1,2500.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(10,1,300,2100.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(10,2,1,2100.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(11,1,338,1000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(11,2,1,1000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(12,1,340,500.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(12,2,1,500.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(13,1,224,1000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(13,2,1,1000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(14,1,228,250.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(14,2,1,250.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(15,1,234,30.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(15,2,1,30.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(16,1,236,150.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(16,2,1,150.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(17,1,188,10000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(17,2,1,10000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(18,1,202,10000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(18,2,1,10000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(19,1,114,750.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(19,2,1,750.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(20,1,448,250.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(20,2,1,250.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(21,1,160,300.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(21,2,1,300.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(22,1,162,4500.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(22,2,1,4500.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(23,1,78,20000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(23,2,1,20000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(24,1,80,12000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(24,2,1,12000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(25,1,396,350.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(25,2,1,350.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(26,1,392,500.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(26,2,1,500.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(27,1,518,5000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(27,2,1,5000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(28,1,536,3500.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(28,2,1,3500.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(29,1,574,5000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(29,2,1,5000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(30,1,574,15000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(30,2,603,15000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(31,1,584,15000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(31,2,603,15000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(32,1,584,15000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(32,2,603,15000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(33,1,338,500.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(33,2,1,500.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(34,1,340,600.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(34,2,1,600.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(35,1,222,1500.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(35,2,1,1500.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(36,1,224,350.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(36,2,1,350.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(37,1,488,10000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(37,2,603,10000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(38,1,490,1000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(38,2,1,1000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(39,1,494,1000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(39,2,1,1000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(40,1,492,1000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(40,2,1,1000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(41,1,512,100.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(41,2,1,100.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(42,1,500,500.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(42,2,1,500.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(43,1,502,500.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(43,2,1,500.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(44,1,506,1000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(44,2,1,1000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(45,1,496,500.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(45,2,1,500.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(46,1,510,1000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(46,2,1,1000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(47,1,142,5000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(47,2,1,5000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(48,1,144,2300.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'','','',''),(48,2,1,2300.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'','','',''),(49,1,358,360.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(49,2,1,360.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(50,1,362,2000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(50,2,1,2000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(51,1,108,1000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(51,2,1,1000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(52,1,96,2000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(52,2,1,2000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(53,1,158,5000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(53,2,603,5000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(54,1,156,1500.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(54,2,603,1500.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(55,1,452,300.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(55,2,1,300.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(56,1,462,700.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(56,2,603,700.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(57,1,166,5000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(57,2,603,5000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(58,1,178,3600.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(58,2,1,3600.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(59,1,20,3000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(59,2,603,3000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(60,1,17,10000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(60,2,1,10000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(61,1,38,3000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(61,2,1,3000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(62,1,50,5000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(62,2,1,5000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(63,1,304,2500.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(63,2,1,2500.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(64,1,308,5000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(64,2,1,5000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(65,1,332,50000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(65,2,603,50000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(66,1,330,32000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(66,2,603,32000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(67,1,134,5000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(67,2,603,5000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(68,1,132,2000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(68,2,603,2000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(69,1,72,5000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(69,2,1,5000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(70,1,64,10000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(70,2,603,10000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(71,1,64,2500.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(71,2,1,2500.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(72,1,1,20000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(72,2,603,20000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(73,1,603,10000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(73,2,1,10000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(74,1,603,50000.00,'CR',0.00,0.00,0.00,'','','2020-05-01 00:00:00',NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(74,2,2,50000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(75,1,582,100000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(75,2,1,100000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(76,1,472,8000.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(76,2,1,8000.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(77,1,470,200.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(77,2,1,200.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(78,1,18,2000.00,'DR',0.00,0.00,0.00,NULL,'',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(78,2,30,2000.00,'CR',0.00,0.00,0.00,NULL,'',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(79,1,38,8988.00,'DR',0.00,0.00,0.00,NULL,'',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(79,2,368,8988.00,'CR',0.00,0.00,0.00,NULL,'',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'',NULL,NULL,NULL),(80,1,102,123.00,'CR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'','','',''),(80,2,603,123.00,'DR',0.00,0.00,0.00,'','',NULL,NULL,'','',1,'',0,0,NULL,0.00,0.00,0.00,0.00,NULL,'','','','');
/*!40000 ALTER TABLE `voucher_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'acperp'
--
/*!50003 DROP PROCEDURE IF EXISTS `DROPFD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `DROPFD`(IN fdaccount INT(10))
BEGIN
  DECLARE FD_TYPE Varchar(5); -- OP (Opening) or IN (Invested)
  DECLARE RecordsCount Long DEFAULT 0;
  DECLARE ProjectId Long DEFAULT 0;
  DECLARE CountryCurrencyId Long DEFAULT 0;

  START TRANSACTION;

  SELECT TRANS_TYPE INTO FD_TYPE FROM FD_ACCOUNT WHERE FD_ACCOUNT_ID = fdaccount;
  SELECT PROJECT_ID INTO ProjectId FROM FD_ACCOUNT WHERE FD_ACCOUNT_ID = fdaccount;
  SELECT CURRENCY_COUNTRY_ID INTO CountryCurrencyId FROM FD_ACCOUNT WHERE FD_ACCOUNT_ID = fdaccount;

   -- 1. Remove FD renew's contra vouchers in voucher_master_trans, voucher_trans (CN)
  DELETE FROM VOUCHER_TRANS WHERE VOUCHER_ID
      IN (SELECT FD_VOUCHER_ID FROM FD_RENEWAL WHERE FD_ACCOUNT_ID = fdaccount);
  DELETE FROM VOUCHER_MASTER_TRANS WHERE VOUCHER_ID
      IN (SELECT FD_VOUCHER_ID FROM FD_RENEWAL WHERE FD_ACCOUNT_ID = fdaccount);
  SELECT ('1. Removed renewed conta voucher') AS MSG;

  -- 2. Remove FD renew's interest vouchers in voucher_master_trans, voucher_trans (RC,JR)
  DELETE FROM VOUCHER_TRANS WHERE VOUCHER_ID
      IN (SELECT FD_INTEREST_VOUCHER_ID FROM FD_RENEWAL WHERE FD_ACCOUNT_ID = fdaccount);
  DELETE FROM VOUCHER_MASTER_TRANS WHERE VOUCHER_ID
      IN (SELECT FD_INTEREST_VOUCHER_ID FROM FD_RENEWAL WHERE FD_ACCOUNT_ID = fdaccount);
  SELECT ('2. Removed renewed interest voucher') AS MSG;

  -- 3. Remove FD Invested's contra vouchers in voucher_master_trans, voucher_trans(CN) (if selected account investment fd
  IF FD_TYPE = 'IN' THEN
    BEGIN
      DELETE FROM VOUCHER_TRANS WHERE VOUCHER_ID IN (SELECT FD_VOUCHER_ID FROM FD_ACCOUNT WHERE FD_ACCOUNT_ID = fdaccount);
      DELETE FROM VOUCHER_MASTER_TRANS WHERE VOUCHER_ID IN (SELECT FD_VOUCHER_ID FROM FD_ACCOUNT WHERE FD_ACCOUNT_ID = fdaccount);
      SELECT ('3. Removed contra Voucher') AS MSG;
    END;
  END IF;

  -- 4a. Update/reduce ledger balance amount if fd is opening for all its fd ledgers for not multi currency
  IF FD_TYPE = 'OP' AND CountryCurrencyId = 0 THEN
    BEGIN
      UPDATE ledger_balance lb, (SELECT project_id, ledger_id, SUM(IF(trans_mode='DR', AMOUNT, -AMOUNT)) opamount
      FROM FD_ACCOUNT WHERE trans_type = 'OP' AND fd_account_id = fdaccount) fd
      SET lb.Amount = lb.Amount- fd.opamount WHERE lb.trans_flag = 'OP' and lb.project_id = fd.project_id and lb.ledger_id = fd.ledger_id;
      SELECT ('4a. Updated FD Ledger Balance') AS MSG;
    END;
  END IF;

  -- 4b. Update/reduce ledger balance amount if fd is opening for all its fd ledgers for multi currency enabled
  IF FD_TYPE = 'OP' AND CountryCurrencyId > 0 THEN
    BEGIN
      UPDATE ledger_balance lb, (SELECT project_id, ledger_id, SUM(IF(trans_mode='DR', AMOUNT, -AMOUNT) * EXCHANGE_RATE) opamountlc,
          SUM(IF(trans_mode='DR', AMOUNT, -AMOUNT) ) opamountfc
		FROM FD_ACCOUNT WHERE trans_type = 'OP' AND fd_account_id = fdaccount) fd
	  SET lb.Amount_fc = (lb.Amount_fc- fd.opamountfc), lb.Amount = (lb.Amount- fd.opamountlc)
	  WHERE lb.trans_flag = 'OP' and lb.project_id = fd.project_id and lb.ledger_id = fd.ledger_id;
      SELECT ('4b. Updated FD Ledger Balance for multi currency enabled') AS MSG;
    END;
  END IF;

  -- 5. Remove FD Renews
  DELETE FROM FD_RENEWAL WHERE FD_ACCOUNT_ID = fdaccount;
  SELECT ('5. Removed Renewed') AS MSG;

   -- 6. Remove FD Accounts
  DELETE FROM FD_ACCOUNT WHERE FD_ACCOUNT_ID = fdaccount;
  SELECT ('6. Removed FD Account') AS MSG;
  
  -- 7. If there is no FD Opening records (some times, fd ledger op balance is not getting refreshed if there is no fd opening in fd_account table)
  SELECT COUNT(*) INTO RecordsCount  FROM FD_ACCOUNT WHERE FD_TYPE ='OP' AND PROJECT_ID = ProjectId;
  IF RecordsCount = 0 THEN
    BEGIN
		UPDATE LEDGER_BALANCE SET AMOUNT = 0, AMOUNT_FC = 0 WHERE PROJECT_ID = ProjectId AND TRANS_FLAG = 'OP' AND LEDGER_ID IN (SELECT LEDGER_ID FROM MASTER_LEDGER WHERE GROUP_ID = 14);
		SELECT ('SET 0 value in ledger blance opening') AS MSG;
	END;
  END IF;

  SELECT ('Deleted FD Account') AS MSG;
  COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VerifyInvalidFDVouchers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `VerifyInvalidFDVouchers`()
BEGIN
  DECLARE DBName Varchar(50);
  DECLARE RecordsCount Long DEFAULT 0;
  SELECT Database() INTO DBName;

  -- 1. If ClosedFD's FD_VOUCHER_ID is deleted (STATUS=0) in Voucher Master Then
  -- Delete it's FD_INTEREST_VOUCHER_ID in Voucher Master too and Delete Closed FD entry.
  SELECT COUNT(*) INTO RecordsCount  FROM FD_RENEWAL WHERE FD_TYPE='WD'
        AND FD_VOUCHER_ID IN (SELECT VOUCHER_ID FROM VOUCHER_MASTER_TRANS WHERE STATUS = 0);
  IF RecordsCount > 0 THEN
    BEGIN
      UPDATE VOUCHER_MASTER_TRANS AS VM, (SELECT FD_INTEREST_VOUCHER_ID
      FROM FD_RENEWAL WHERE FD_TYPE='WD' AND FD_VOUCHER_ID IN (SELECT VOUCHER_ID FROM VOUCHER_MASTER_TRANS WHERE STATUS = 0)) AS InValidFD
      SET VM.STATUS = 0 WHERE VM.VOUCHER_ID = InValidFD.FD_INTEREST_VOUCHER_ID;

      DELETE FROM FD_RENEWAL WHERE FD_TYPE='WD' AND FD_VOUCHER_ID IN (SELECT VOUCHER_ID FROM VOUCHER_MASTER_TRANS WHERE STATUS = 0);

      SELECT ('1. Verified Closed FD') AS MSG;
    END;
  END IF;

  -- 2. If ClosedFD's FD_VOUCHER_ID =0 or FD_VOUCHER_ID is not avilable in Voucher_Master_Trans
  -- Delete it's FD_INTEREST_VOUCHER_ID in Voucher Master too and Delete Closed FD entry.
  SELECT COUNT(*) INTO RecordsCount  FROM FD_RENEWAL WHERE FD_TYPE='WD' AND FD_VOUCHER_ID NOT IN (SELECT VOUCHER_ID FROM VOUCHER_MASTER_TRANS WHERE VOUCHER_SUB_TYPE='FD');
  IF RecordsCount > 0 THEN
    BEGIN
      UPDATE VOUCHER_MASTER_TRANS AS VM, (SELECT FD_INTEREST_VOUCHER_ID
      FROM FD_RENEWAL WHERE FD_TYPE='WD' AND FD_VOUCHER_ID NOT IN (SELECT VOUCHER_ID FROM VOUCHER_MASTER_TRANS WHERE VOUCHER_SUB_TYPE='FD')) AS InValidFD
      SET VM.STATUS = 0 WHERE VM.VOUCHER_ID = InValidFD.FD_INTEREST_VOUCHER_ID;

      DELETE FROM FD_RENEWAL WHERE FD_TYPE='WD' AND FD_VOUCHER_ID NOT IN (SELECT VOUCHER_ID FROM VOUCHER_MASTER_TRANS WHERE VOUCHER_SUB_TYPE='FD');

      SELECT ('2. Verified Closed FD') AS MSG;
    END;
  END IF;


  -- 3. If ClosedFD's FD_INTEREST_VOUCHER_ID is deleted (STATUS=0) in Voucher Master Then
  -- Null Interest Amount and null FD_INTEREST_VOUCHER_ID in FD Closed Enty
  SELECT COUNT(*) INTO RecordsCount FROM FD_RENEWAL WHERE FD_TYPE='WD' AND FD_INTEREST_VOUCHER_ID > 0
  AND FD_INTEREST_VOUCHER_ID IN (SELECT VOUCHER_ID FROM VOUCHER_MASTER_TRANS WHERE STATUS = 0);
  IF RecordsCount > 0 THEN
    BEGIN
      UPDATE FD_RENEWAL SET INTEREST_AMOUNT=0, FD_INTEREST_VOUCHER_ID=0 WHERE FD_TYPE='WD' AND FD_INTEREST_VOUCHER_ID > 0
      AND FD_INTEREST_VOUCHER_ID IN (SELECT VOUCHER_ID FROM VOUCHER_MASTER_TRANS WHERE STATUS = 0);

      SELECT ('3. Verified Closed FD') AS MSG;
    END;
  END IF;

  -- 4. If ClosedFD's FD_INTEREST_VOUCHER_ID is not exists in Voucher_Master_Trans
  -- Null Interest Amount and null FD_INTEREST_VOUCHER_ID in FD Closed Enty
  SELECT COUNT(*) INTO RecordsCount FROM FD_RENEWAL WHERE FD_TYPE='WD' AND FD_INTEREST_VOUCHER_ID > 0
  AND FD_INTEREST_VOUCHER_ID NOT IN (SELECT VOUCHER_ID FROM VOUCHER_MASTER_TRANS WHERE VOUCHER_SUB_TYPE='FD');
  IF RecordsCount > 0 THEN
    BEGIN
      UPDATE FD_RENEWAL SET INTEREST_AMOUNT=0, FD_INTEREST_VOUCHER_ID=0 WHERE FD_TYPE='WD' AND FD_INTEREST_VOUCHER_ID > 0
      AND FD_INTEREST_VOUCHER_ID NOT IN (SELECT VOUCHER_ID FROM VOUCHER_MASTER_TRANS WHERE VOUCHER_SUB_TYPE='FD');

      SELECT ('4. Verified Closed FD') AS MSG;
    END;
  END IF;

  -- 5. Delete (STATUS=0) FD Contra Voucher entries in Voucher_Master_Trans those are not linked in FD_ACCOUNT and FD_RENEWAL
  SELECT COUNT(*) INTO RecordsCount FROM VOUCHER_MASTER_TRANS WHERE VOUCHER_SUB_TYPE = 'FD' AND VOUCHER_TYPE='CN' AND STATUS = 1
  AND VOUCHER_ID NOT IN ( SELECT FD_VOUCHER_ID FROM FD_RENEWAL UNION ALL SELECT FD_VOUCHER_ID FROM FD_ACCOUNT);
  IF RecordsCount > 0 THEN
    BEGIN
      UPDATE VOUCHER_MASTER_TRANS SET STATUS = 0 WHERE VOUCHER_SUB_TYPE = 'FD' AND VOUCHER_TYPE='CN'  AND STATUS = 1
      AND VOUCHER_ID NOT IN ( SELECT FD_VOUCHER_ID FROM FD_RENEWAL UNION ALL SELECT FD_VOUCHER_ID FROM FD_ACCOUNT);

      SELECT ('5. Verified Invalid FD Interest Vouchers') AS MSG;
    END;
  END IF;

  -- 6. Delete (STATUS=0) FD Interest Journal Voucher entries in Voucher_Master_Trans those are not linked in FD_INTEREST_VOUCHER_ID in FD_RENEWAL
  SELECT COUNT(*) INTO RecordsCount FROM VOUCHER_MASTER_TRANS WHERE VOUCHER_SUB_TYPE = 'FD' AND VOUCHER_TYPE='JN' AND STATUS = 1
  AND VOUCHER_ID NOT IN ( SELECT FD_INTEREST_VOUCHER_ID FROM FD_RENEWAL);
  IF RecordsCount > 0 THEN
    BEGIN
      UPDATE VOUCHER_MASTER_TRANS SET STATUS=0 WHERE VOUCHER_SUB_TYPE = 'FD' AND VOUCHER_TYPE='JN' AND STATUS = 1
      AND VOUCHER_ID NOT IN ( SELECT FD_INTEREST_VOUCHER_ID FROM FD_RENEWAL);
      
	  SELECT ('6. Verified Invalid FD Interest Vouchers') AS MSG;
    END;
  END IF;
  
  -- 7. Delete (STATUS=0) FD Interest Receipt Voucher entries in Voucher_Master_Trans those are not linked in FD_INTEREST_VOUCHER_ID in FD_RENEWAL
  SELECT COUNT(*) INTO RecordsCount FROM VOUCHER_MASTER_TRANS WHERE VOUCHER_SUB_TYPE = 'FD' AND VOUCHER_TYPE='RC' AND STATUS = 1
  AND VOUCHER_ID NOT IN ( SELECT FD_INTEREST_VOUCHER_ID FROM FD_RENEWAL);
  IF RecordsCount > 0 THEN
    BEGIN
      UPDATE VOUCHER_MASTER_TRANS SET STATUS=0 WHERE VOUCHER_SUB_TYPE = 'FD' AND VOUCHER_TYPE='RC' AND STATUS = 1
      AND VOUCHER_ID NOT IN ( SELECT FD_INTEREST_VOUCHER_ID FROM FD_RENEWAL);
      
	  SELECT ('6. Verified Invalid FD Interest Vouchers') AS MSG;
    END;
  END IF;

  -- For monthly post Interest, renfnew fd can have interest value 0 ***
  -- 7. Remove FD Renew details If fd renew record contains FD_INTEREST_VOUCHER_ID = 0 (for renew, FD_INTEREST_VOUCHER_ID is mandatory)
  -- SELECT COUNT(*) INTO RecordsCount FROM FD_RENEWAL WHERE FD_TYPE = 'RN' AND FD_INTEREST_VOUCHER_ID = 0;
  -- IF RecordsCount > 0 THEN
  --  BEGIN
  --   DELETE FROM FD_RENEWAL WHERE FD_TYPE='RN' AND FD_INTEREST_VOUCHER_ID = 0;

  --    SELECT ('7. Removed Invalid FD Renew entry') AS MSG;
  --  END;
  -- END IF;
  
  -- For Invalida FD INTEREST AMOUNT (IF FD_INTEREST_VOUCHER_ID = 0 but INTEREST_AMOUNT > 0)
  -- 7. Update INTEREST_AMOUNT = 0 for all entries contains (FD_INTEREST_VOUCHER_ID = 0 AND INTEREST_AMOUNT > 0)
  SELECT COUNT(*) INTO RecordsCount FROM FD_RENEWAL WHERE (FD_INTEREST_VOUCHER_ID = 0 AND INTEREST_AMOUNT > 0);
  IF RecordsCount > 0 THEN
    BEGIN
      UPDATE FD_RENEWAL SET INTEREST_AMOUNT = 0 WHERE (FD_INTEREST_VOUCHER_ID = 0 AND INTEREST_AMOUNT > 0);
      
	  SELECT ('7. Updated Invalid FD Interest Vouchers if no receipts but INTEREST_AMOUNT > 0') AS MSG;
    END;
  END IF;
  
  -- 8. For FD Post interest : It takes previous renewal created/Renewal date as current renewal date
  -- we changed MATURITY_DATE as RENEWAL_DATE 
  -- On 18/04/2024, we modified logic for post interest will have real maturity (its renewal's maturity date)
  -- UPDATE fd_renewal SET RENEWAL_DATE = MATURITY_DATE WHERE FD_TYPE='POI' AND RENEWAL_DATE <> MATURITY_DATE;
    UPDATE FD_RENEWAL FR INNER JOIN VOUCHER_MASTER_TRANS VM ON VM.VOUCHER_ID = FR.FD_INTEREST_VOUCHER_ID
         AND FD_TYPE='POI' AND VM.VOUCHER_DATE <> FR.RENEWAL_DATE AND FR.STATUS=1
    SET FR.RENEWAL_DATE = VM.VOUCHER_DATE
    WHERE VM.VOUCHER_SUB_TYPE = 'FD' AND VM.STATUS = 1;
  
  -- 9. In old build, if FD OP deletes, ledger balance amount is not getting updated/refreshed
  -- this will sum FD OP amount based on project and FD ledgers and update to ledger balance fd ledgers op records
  UPDATE LEDGER_BALANCE LB LEFT JOIN
     (SELECT FD.PROJECT_ID, FD.LEDGER_ID, SUM(IFNULL(FD.AMOUNT,0)) OP FROM FD_ACCOUNT FD
        WHERE FD.TRANS_TYPE = 'OP' AND FD.STATUS = 1 GROUP BY FD.PROJECT_ID, FD.LEDGER_ID) AS FDOP
     ON FDOP.PROJECT_ID = LB.PROJECT_ID AND FDOP.LEDGER_ID = LB.LEDGER_ID
  SET LB.AMOUNT = IFNULL(FDOP.OP,0)
  WHERE LB.TRANS_FLAG = 'OP' AND LB.LEDGER_ID IN (SELECT LEDGER_ID FROM MASTER_LEDGER ML WHERE ML.GROUP_ID = 14);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VerifyInvalidTables` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `VerifyInvalidTables`()
BEGIN
  -- DECLARE CONTINUE HANDLER FOR SQLEXCEPTION;
  Declare DBName Varchar(50);
  Declare RecordsCount Long DEFAULT 0;
  Declare RecordsCount1 Long DEFAULT 0;
  Declare IsTableExists TINYINT DEFAULT 0;
  Declare IsFieldExists TINYINT DEFAULT 0;
  Declare tmptxtvalue Varchar(500);
  Select Database() INTO DBName;

 --  This is to delete the invalid Entry 10.12.2019
   SELECT IF(COUNT(*)>0, 1, 0) INTO IsFieldExists FROM Information_schema.COLUMNS where Table_Schema = Database() and Table_Name = 'ASSET_ITEM' and Column_Name ='CATEGORY_ID';
   IF (IsFieldExists) THEN
    BEGIN
    DELETE FROM ASSET_ITEM WHERE DEPRECIATION_LEDGER_ID = 276 AND DISPOSAL_LEDGER_ID =276 AND ACCOUNT_LEDGER_ID =1100 AND CATEGORY_ID =1 AND
     UNIT_ID =1 AND PREFIX = 'C' AND SUFFIX = 'S' AND STARTING_NO =1 AND RUNNING_NUMBER =3 AND CUSTODIANS_ID = 0 AND ASSET_NAME = 'Honda';
    END;
   END IF;

-- Udate Master Voucher inactive if particular vouhcer doest have 2 child vouchers----------------------------------------------------------------
    UPDATE voucher_master_trans SET STATUS=0 WHERE STATUS = 1 AND VOUCHER_ID in (SELECT VOUCHER_ID FROM (SELECT IF(COUNT(VT.VOUCHER_ID)<=1, VT.VOUCHER_ID,0) as VOUCHER_ID FROM voucher_trans VT GROUP BY VT.VOUCHER_ID) AS INVALID
    WHERE VOUCHER_ID<>0);
  
  -- Updtae Master Voucher inactive if particular vouhcer doest have 0 child vouchers-----------------------------------------------------------------
    UPDATE voucher_master_trans SET STATUS=0 WHERE VOUCHER_ID NOT IN (SELECT VOUCHER_ID FROM voucher_trans GROUP BY VOUCHER_ID);
	  
  -- To remove and add if
  SELECT COLUMN_TYPE INTO tmptxtvalue FROM Information_schema.COLUMNS where Table_Schema = DBName and Table_Name = 'MASTER_DONAUD' and Column_Name ='STATE_ID';
  IF (tmptxtvalue <> 'int(10) unsigned') THEN
    BEGIN
	 ALTER TABLE `master_donaud` DROP COLUMN `STATE_ID`;
	 ALTER TABLE  `master_donaud` ADD COLUMN `STATE_ID` INTEGER UNSIGNED AFTER `CUSTOMERID`;
	 SELECT ('Altered master_donaud table') AS MSG;
	END;
  END If;
  --
    
  -- Drop all old tds tables if there is no records in tds_booking------------------------------------------------------------------------
  SELECT IF(COUNT(*)>0, 1, 0) INTO IsTableExists FROM information_schema.tables WHERE table_schema = DBName AND table_name = 'tds_booking';
  IF (IsTableExists) THEN
    BEGIN
      SELECT COUNT(*) INTO RecordsCount FROM tds_booking;
      SELECT COUNT(*) INTO RecordsCount1 FROM tds_credtiors_profile;
      IF RecordsCount=0 AND RecordsCount1=0 THEN
        BEGIN
          -- Drop all tds tables
      DROP TABLE IF EXISTS tds_company_deductors;
      DROP TABLE IF EXISTS tds_booking;
      DROP TABLE IF EXISTS tds_booking_detail;
      DROP TABLE IF EXISTS tds_credtiors_profile;
      DROP TABLE IF EXISTS tds_deduction;
      DROP TABLE IF EXISTS tds_deduction_detail;
      DROP TABLE IF EXISTS tds_party_payment;
      DROP TABLE IF EXISTS tds_party_payment_detail;
      DROP TABLE IF EXISTS tds_payment;
      DROP TABLE IF EXISTS tds_payment_detail;
      DROP TABLE IF EXISTS tds_tax_rate;
      DROP TABLE IF EXISTS tds_policy;
      DROP TABLE IF EXISTS tds_nature_payment;
      DROP TABLE IF EXISTS tds_duty_taxtype;
      DROP TABLE IF EXISTS tds_dedutee_type;
      DROP TABLE IF EXISTS tds_deductee_type;
      DROP TABLE IF EXISTS tds_section;
    SELECT ('Dropped TDS Tables') AS MSG;
        END;
      END IF;
    END;
  END IF;
  
  -- Drop all old PayRoll tables, if there is no records in stock_item---------------------------------------------------------------------
  SELECT IF(COUNT(*)>0, 1, 0) INTO IsTableExists FROM information_schema.tables WHERE table_schema = DBName AND table_name = 'prcreate';
  IF (IsTableExists) THEN
    BEGIN
      SELECT COUNT(*) INTO RecordsCount FROM prcreate;
      IF RecordsCount=0 THEN
        BEGIN
          -- Drop all Payroll tables
        DROP TABLE IF EXISTS princome;
        DROP TABLE IF EXISTS prtext;
		DROP TABLE IF EXISTS pr_staff_performance;
        DROP TABLE IF EXISTS stfservice;
        DROP TABLE IF EXISTS prstaffgroup;
        DROP TABLE IF EXISTS prstafftemp;
        DROP TABLE IF EXISTS prstaff;
        DROP TABLE IF EXISTS prloanget;
        DROP TABLE IF EXISTS prloanpaid;
        DROP TABLE IF EXISTS prproject_staff;
        DROP TABLE IF EXISTS stfpersonal;
        DROP TABLE IF EXISTS prstatus;
        DROP TABLE IF EXISTS payroll_ledger;
        DROP TABLE IF EXISTS payroll_project;
        DROP TABLE IF EXISTS payroll;
        DROP TABLE IF EXISTS prcompmonth;
		DROP TABLE IF EXISTS payroll_finance;
		DROP TABLE IF EXISTS payroll_voucher;
        DROP TABLE IF EXISTS prcomponent;
        DROP TABLE IF EXISTS prformulagroup;
        DROP TABLE IF EXISTS prsalarygroup;
        DROP TABLE IF EXISTS prloan;
        DROP TABLE IF EXISTS prcreate;
        DROP TABLE IF EXISTS payroll_range_formula;
        DROP TABLE IF EXISTS process_type;
        
          SELECT ('Dropped Payroll Tables') AS MSG;
        END;
      END IF;
    END;
  END IF;

    -- Drop all old tables without checking any condition------------------------------------------------------------------------
    -- Drop unnecessary finance tables
    DROP TABLE IF EXISTS inkindtrans;
	DROP TABLE IF EXISTS country_symbols;
	DROP TABLE IF EXISTS dsafds;
	DROP TABLE IF EXISTS fd_registers;
	DROP TABLE IF EXISTS mas_user;
	DROP TABLE IF EXISTS users;
	DROP TABLE IF EXISTS voucher_fd_interest;

	-- Delete old block table Information.
  SELECT IF(COUNT(*)>0, 1, 0) INTO IsFieldExists FROM Information_schema.COLUMNS where Table_Schema = Database() and Table_Name = 'asset_block' and Column_Name ='BUILDING_ID';
  IF (IsFieldExists) THEN
   BEGIN
     SELECT COUNT(*) INTO RecordsCount FROM asset_block;
     IF RecordsCount=0 THEN
      BEGIN
	  ALTER TABLE `asset_block` DROP COLUMN `BUILDING_ID`
      , DROP INDEX `FK_BUILDING_ID`,
      DROP FOREIGN KEY `FK_BUILDING_ID`;
      SELECT ('delete the asset block') AS MSG;
      END;
     END IF;
   END;
  END IF;

    -- Drop old asset tables -- commanded by chinna on ..14/09/2023...At..11am

    -- DROP TABLE IF EXISTS asset_purchase_detail ;
    -- DROP TABLE IF EXISTS asset_purchase_voucher ;
    -- DROP TABLE IF EXISTS asset_purchase_master ;
    -- DROP TABLE IF EXISTS asset_sales_detail ;
    -- DROP TABLE IF EXISTS asset_sales_voucher;
    -- DROP TABLE IF EXISTS asset_sales_master ;
    -- DROP TABLE IF EXISTS asset_amc_detail ;
    -- DROP TABLE IF EXISTS asset_amc_master ;
    -- DROP TABLE IF EXISTS asset_amc_voucher ;
    -- DROP TABLE IF EXISTS asset_depre_detail ;
    -- DROP TABLE IF EXISTS asset_depre_master ;
    -- DROP TABLE IF EXISTS asset_depreciation_detail;
    -- DROP TABLE IF EXISTS asset_depreciation_master;
    -- DROP TABLE IF EXISTS asset_insurance_detail;
    -- DROP TABLE IF EXISTS asset_insurance_master_detail ;
    -- DROP TABLE IF EXISTS asset_insurance_voucher;
    -- DROP TABLE IF EXISTS asset_insurance_master ;
    -- DROP TABLE IF EXISTS asset_insurance_renewal_detail ;
    -- DROP TABLE IF EXISTS asset_insurance_renewal_master ;
    -- DROP TABLE IF EXISTS asset_transfer_detail ;
    -- DROP TABLE IF EXISTS asset_transfer_voucher ;
    -- DROP TABLE IF EXISTS asset_transfer_master ;
    -- DROP TABLE IF EXISTS asset_insurance_type ;
    -- DROP TABLE IF EXISTS asset_custodians ;
    -- DROP TABLE IF EXISTS asset_ledger ;
    -- DROP TABLE IF EXISTS asset_depre_master;
    -- DROP TABLE IF EXISTS asset_depreciation;
    -- DROP TABLE IF EXISTS asset_insurance;
    -- DROP TABLE IF EXISTS asset_service;
    -- DROP TABLE IF EXISTS asset_floor ;
    -- DROP TABLE IF EXISTS asset_building;
    -- DROP TABLE IF EXISTS asset_area;
    -- DROP TABLE IF EXISTS asset_room ;
    -- DROP TABLE IF EXISTS asset_insurance_renewal ;
    -- DROP TABLE IF EXISTS asset_unitofmeasure ;
    -- DROP TABLE IF EXISTS asset_vendor_info ;
    -- DROP TABLE IF EXISTS asset_id_format;
    -- DROP TABLE IF EXISTS asset_group;
    -- DROP TABLE IF EXISTS asset_depreciation;
    -- DROP TABLE IF EXISTS asset_depreciation_method ;
    -- DROP TABLE IF EXISTS asset_category ;

      -- Drop old stock tables
    -- DROP TABLE IF EXISTS stock_item_details;
    -- DROP TABLE IF EXISTS stock_ledger;
    -- DROP TABLE IF EXISTS stock_purchase_details;
    -- DROP TABLE IF EXISTS stock_master_purchase;
    -- DROP TABLE IF EXISTS stock_purchase_returns_details;
    -- DROP TABLE IF EXISTS stock_master_purchase_returns;
    -- DROP TABLE IF EXISTS stock_sold_utilized_details;
    -- DROP TABLE IF EXISTS stock_master_sold_utilized;
    -- DROP TABLE IF EXISTS inventory_stock;
    -- DROP TABLE IF EXISTS stock_item_transfer;
    -- DROP TABLE IF EXISTS stock_item;
    -- DROP TABLE IF EXISTS stock_group;
    -- DROP TABLE IF EXISTS stock_category;

    -- Common Tables  (Asset & Stock)
    DROP TABLE IF EXISTS asset_stock_unitofmeasure ;
    DROP TABLE IF EXISTS asset_stock_manufacture ;
    DROP TABLE IF EXISTS asset_stock_location ;
    DROP TABLE IF EXISTS stock_location ;
    DROP TABLE IF EXISTS stock_unitofmeasure ;

	-- Delete Cristo Tables
	DROP TABLE IF EXISTS `cristo_family`;
	DROP TABLE IF EXISTS `cristo_family_member`;
	DROP TABLE IF EXISTS `cristo_baptism_register`;
	DROP TABLE IF EXISTS `cristo_communion_register`;
	DROP TABLE IF EXISTS `cristo_confirmation_register`;
	DROP TABLE IF EXISTS `cristo_marriage_register`;
	DROP TABLE IF EXISTS `cristo_death_register`;
	DROP TABLE IF EXISTS `cristo_master_parish`;
	DROP TABLE IF EXISTS `cristo_master_bcc`;
	DROP TABLE IF EXISTS `cristo_master_state`;
	DROP TABLE IF EXISTS `cristo_master_district`;
	DROP TABLE IF EXISTS `cristo_master_housetype`;
	DROP TABLE IF EXISTS `cristo_master_languagegroups`;
	DROP TABLE IF EXISTS `cristo_master_membership_status`;
	DROP TABLE IF EXISTS `cristo_master_occupation`;
	DROP TABLE IF EXISTS `cristo_master_relationship`;
	DROP TABLE IF EXISTS `cristo_master_religion`;
	DROP TABLE IF EXISTS `cristo_master_rite`;
	DROP TABLE IF EXISTS `cristo_offering_category`;
	DROP TABLE IF EXISTS `cristo_offering_feasts`;
	DROP TABLE IF EXISTS `cristo_offering`;
	DROP TABLE IF EXISTS `cristo_mass_offering`;
	DROP TABLE IF EXISTS `cristo_master_community`;
	DROP TABLE IF EXISTS `cristo_parish_subscription`;
	DROP TABLE IF EXISTS `cristo_family_subscription`;
	DROP TABLE IF EXISTS `cristo_daily_collection`;
	DROP TABLE IF EXISTS `cristo_subscription_detail`;
	DROP TABLE IF EXISTS `cristo_master_subscription`;
	DROP TABLE IF EXISTS `custom_report`;


  
 -- Drop all new asset tables if there is no records in asset_item------------------------------------------------------------------------
  SELECT IF(COUNT(*)>0, 1, 0) INTO IsTableExists FROM information_schema.tables WHERE table_schema = DBName AND table_name = 'asset_item';
  IF (IsTableExists) THEN
    BEGIN
      SELECT COUNT(*) INTO RecordsCount FROM asset_item;
      IF RecordsCount=0 THEN
        BEGIN
		DROP TABLE IF EXISTS `asset_amc_item_mapping`;
		DROP TABLE IF EXISTS `asset_amc_renewal_history`;
		DROP TABLE IF EXISTS `asset_amc_renewal_master`;
		DROP TABLE IF EXISTS `asset_dep_method`;
		DROP TABLE IF EXISTS `asset_depreciation_detail`;
		DROP TABLE IF EXISTS `asset_depreciation_master`;
		DROP TABLE IF EXISTS `asset_insurance_detail`;
		DROP TABLE IF EXISTS `asset_project_location`;
		DROP TABLE IF EXISTS `asset_trans`;
		DROP TABLE IF EXISTS `asset_location`;
		DROP TABLE IF EXISTS `asset_custodian`;
		DROP TABLE IF EXISTS `asset_in_out_detail`;
		DROP TABLE IF EXISTS `asset_block`;
		DROP TABLE IF EXISTS `asset_stock_manufacturer`;
		
		-- Common 
		DROP TABLE IF EXISTS `asset_in_out_master`;
		DROP TABLE IF EXISTS `asset_insurance_plan`;
		DROP TABLE IF EXISTS `asset_item_detail`;
		DROP TABLE IF EXISTS `asset_item`;
		DROP TABLE IF EXISTS `asset_class`;

          SELECT ('Dropped Asset Tables') AS MSG;
        END;
      END IF;
    END;
  END IF;

  -- Drop all new Stock tables if there is no records in stock_item------------------------------------------------------------------------
  SELECT IF(COUNT(*)>0, 1, 0) INTO IsTableExists FROM information_schema.tables WHERE table_schema = DBName AND table_name = 'stock_item';
  IF (IsTableExists) THEN
    BEGIN
      SELECT COUNT(*) INTO RecordsCount FROM stock_item;
      IF RecordsCount=0 THEN
        BEGIN
		DROP TABLE IF EXISTS `stock_item`;
		DROP TABLE IF EXISTS `stock_category`;
		DROP TABLE IF EXISTS `stock_group`;
		DROP TABLE IF EXISTS `stock_item_details`;
		DROP TABLE IF EXISTS `stock_item_transfer`;
		DROP TABLE IF EXISTS `stock_ledger`;
		DROP TABLE IF EXISTS `stock_purchase_details`;
		DROP TABLE IF EXISTS `stock_master_purchase`;
		DROP TABLE IF EXISTS `stock_purchase_returns_details`;
		DROP TABLE IF EXISTS `stock_master_purchase_returns`;
		DROP TABLE IF EXISTS `stock_sold_utilized_details`;
		DROP TABLE IF EXISTS `stock_master_sold_utilized`;
		DROP TABLE IF EXISTS `inventory_stock`;
		DROP TABLE IF EXISTS `asset_stock_location`;
		-- DROP TABLE IF EXISTS `asset_stock_manufacture`;
		DROP TABLE IF EXISTS `asset_stock_unitofmeasure`;
		DROP TABLE IF EXISTS `asset_stock_vendor`;

          SELECT ('Dropped Stock Tables') AS MSG;
        END;
      END IF;
    END;
  END IF;

 -- Delete old Budget Information.
  SELECT IF(COUNT(*)>0, 1, 0) INTO IsFieldExists FROM Information_schema.COLUMNS where Table_Schema = Database() and Table_Name = 'BUDGET_MASTER' and Column_Name ='PROJECT_ID';
  IF (IsFieldExists) THEN
   BEGIN
     SELECT COUNT(*) INTO RecordsCount  FROM BUDGET_MASTER WHERE PROJECT_ID >0;
     IF RecordsCount > 0 THEN
      BEGIN
	  DELETE FROM BUDGET_MASTER;
	  DELETE FROM BUDGET_LEDGER;
	  DELETE FROM ALLOT_FUND;
      SELECT ('Verified Budget Details') AS MSG;
      END;
     END IF;
   END;
  END IF;

DELETE FROM VOUCHER_TRANS WHERE VOUCHER_ID IN (SELECT VOUCHER_ID FROM VOUCHER_MASTER_TRANS WHERE VOUCHER_DATE = '0001-01-01 00:00:00');

DELETE FROM VOUCHER_MASTER_TRANS WHERE VOUCHER_DATE = '0001-01-01 00:00:00';

DELETE FROM VOUCHER_TRANS
WHERE VOUCHER_ID IN (SELECT FD_INTEREST_VOUCHER_ID FROM FD_RENEWAL WHERE RENEWAL_DATE = '0001-01-01 00:00:00') OR
VOUCHER_ID IN (SELECT FD_VOUCHER_ID FROM FD_RENEWAL WHERE RENEWAL_DATE = '0001-01-01 00:00:00');

DELETE FROM VOUCHER_MASTER_TRANS
WHERE VOUCHER_ID IN (SELECT FD_INTEREST_VOUCHER_ID FROM FD_RENEWAL WHERE RENEWAL_DATE = '0001-01-01 00:00:00') OR
VOUCHER_ID IN (SELECT FD_VOUCHER_ID FROM FD_RENEWAL WHERE RENEWAL_DATE = '0001-01-01 00:00:00');

DELETE FROM FD_RENEWAL WHERE RENEWAL_DATE = '0001-01-01 00:00:00';

DELETE FROM VOUCHER_TRANS WHERE VOUCHER_ID  NOT IN (SELECT VOUCHER_ID FROM VOUCHER_MASTER_TRANS);

-- 18/04/2024, Clear invalid entries in ledger balances 
DELETE FROM LEDGER_BALANCE WHERE PROJECT_ID NOT IN (SELECT PROJECT_ID FROM MASTER_PROJECT) OR LEDGER_ID NOT IN (SELECT LEDGER_ID FROM MASTER_LEDGER);
DELETE FROM LEDGER_BALANCE WHERE PROJECT_ID = 0 OR LEDGER_ID = 0;

END ;;
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

-- Dump completed on 2025-07-15 12:20:40

