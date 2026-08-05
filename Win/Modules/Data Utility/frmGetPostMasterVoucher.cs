using System;
using System.Collections.Generic;
using System.Data;
using Bosco.Model.UIModel;
using Bosco.Utility;
using Bosco.Utility.Common;
using System.Windows.Forms;
using System.Text.RegularExpressions;
using System.Web.Script.Serialization;
using Bosco.Model.Transaction;
using System.IO;
using Bosco.Utility.ConfigSetting;
using Proshot.UtilityLib.CommonDialogs;
using DevExpress.XtraSplashScreen;
using Bosco.Utility.Base;
using AcMEService;
using System.ServiceModel;
using DevExpress.XtraEditors;
using ACPP.Modules.Dsync;
using Bosco.Model.Setting;
using ACPP.Modules.Master;
using System.Configuration;
using System.Globalization;
using Bosco.DAO.Schema;


namespace ACPP.Modules.Data_Utility
{
    public partial class frmGetPostMasterVoucher : frmFinanceBaseAdd
    {
        #region Variable

        int PostVoucherId = 0;
        int ProCategoryId = 0;
        ResultArgs resultArgs = null;
        DataSet dsMasterDetails = new DataSet("dsMasters");
        public DataTable dtTransaction = new DataTable();
        public DataTable dtCashTransaction = new DataTable();
        CommonMember UtilityMember = new CommonMember();
        TransProperty Transaction = new TransProperty();
        public int rtnVoucherId = 0;
        DateTime? defVal = null;
        //bharath 01-04-2026 list
        private List<int> ledgerIds = new List<int>();
        private List<int> ledgerRowIndices = new List<int>();

        string templocation = "SAGAY DBC COLLEGE";

        string projectcategoryArts = "School - Self Finance";
        string projectcategoryArtsURL = "https://dbcdpi.higrade.live/";

        string ProjectCaegoryBED = "Salesian Community - Education";
        string ProjectCaegoryBEDURL = "https://dbcedh.higrade.live/";

        string tempBranchcode = "inmdhc";

        private string ManagementCode = SettingProperty.ManagementCodeIntegration.Trim();
        private string ManagementMode = SettingProperty.ThirdPartyMode;
        private string ManagementURL = SettingProperty.ThirdPartyURL;

        private readonly SettingProperty _appSetting = new SettingProperty();
        string branchlocation = string.Empty;

        // private string ManagmentLocation = SettingProperty.ThirdPartyLocation;

        private bool IsSaved = false;
        private string MultipleStoreMessages = string.Empty;
        bool MismatchedLicenseKey = true;
        string status = "";
        private static string Defaultmode = "Service";
        private string SelectedProjectName = string.Empty;

        public DataTable dtCostCentreMapping = new DataTable();
        public DataSet dsCostCentre = new DataSet();

        AppSchemaSet.ApplicationSchemaSet appschema = null;
        public AppSchemaSet.ApplicationSchemaSet AppSchema
        {
            get { return appschema; }
        }

        private static string SOURCE = "SOURCE";
        private static string VOUCHER_DATE = "VOUCHER_DATE";
        private static string VOUCHER_TYPE = "VOUCHER_TYPE";
        private static string REF_CODE = "REF_CODE";
        private static string REF_NO = "REF_NO";
        private static string PROJECT = "PROJECT_NAME";
        private static string GENERAL_LEDGER = "LEDGER";
        private static string GENERAL_TRANS_MODE = "LEDGER_TRANS_MODE";
        private static string CASHBANK_LEDGER = "CASHBANK_LEDGER";
        private static string CASHBANK_TRANS_MODE = "CASHBANK_TRANS_MODE";
        private static string LEDGER_AMOUNT = "LEDGER_AMOUNT";
        private static string CASHBANK_AMOUNT = "CASHBANK_AMOUNT";
        private static string CASHBANK_FLAG = "FLAG";
        private static string MATERIALISED_ON = "MATERIALIZED_ON";
        private static string BANK_REF_NO = "BANK_REF_NO";
        private static string NARRATION = "NARRATION";
        private static string CLIENT_CODE = "CLIENT_CODE";
        private static string CLIENT_TRANSACTION_MODE = "CLIENT_TRANSACTION_MODE";
        private static string CLIENT_REFERENCE_ID = "CLIENT_REFERENCE_ID";
        private static string VOUCHER_ID = "VOUCHER_ID";
        private static string TRANSACTIONID = "TRANSACTIONID";
        private static string NAME_ADDRESS = "NAME_ADDRESS";
        private static string DONOR = "DONOR";
        private static string DONOR_COUNTRY = "DONOR_COUNTRY";
        private static string DONOR_ADDRESS = "DONOR_ADDRESS";
        private static string PURPOSE = "PURPOSE";
        private static string COST_CENTER = "COST_CENTER";
        private static string COST_CENTER_OB = "COST_CENTER_OB";
        private static string COST_CENTRE_OB_MODE = "COST_CENTRE_OB_MODE";
        private static string COST_CENTER_CATEGORY = "COST_CENTER_CATEGORY";
        private static string COST_CENTER_CATEGORY_ID = "COST_CENTER_CATEGORY_ID";
        private static string COST_CENTER_ID = "COST_CENTER_ID";
        //bharath 02/04/2026 for udeg double entry
        private static string LEDGER_AMOUNT_LIST = "LEDGER_AMOUNT_LIST";
        private static string LEDGER_NARRATION = "Narration";
        private static string EXCHANGE_RATE = "EXCHANGE_RATE";

        #endregion

        #region Property
        private int projectId = 0;
        private int ProjectId
        {
            set { projectId = value; }
            get { return projectId; }
        }

        public string ProId
        {
            get
            {
                return GetProjectsIds();
            }
            set
            {
                //22/04/2020, To retain already selected projects (when we change date range)
                //projectid = value;
                string selectprojects = value;
                if (!String.IsNullOrEmpty(selectprojects))
                {
                    string[] ProjectIds = selectprojects.Split(',');
                    Int32 selectedIndex = 0;
                    for (int index = 0; index < chklstProjects.ItemCount; index++)
                    {
                        DataRowView drv = chklstProjects.GetItem(index) as DataRowView;
                        if (drv != null)
                        {
                            selectedIndex = Array.IndexOf(ProjectIds, drv[0].ToString());
                            if (selectedIndex >= 0)
                            {
                                chklstProjects.SetItemChecked(index, true);
                            }
                        }
                    }
                }
            }
        }

        private int ledgerid = 0;
        private int LedgerId
        {
            set { ledgerid = value; }
            get { return ledgerid; }
        }
        private int cashbankLedgerid = 0;
        private int CashBankLedgerId
        {
            set { cashbankLedgerid = value; }
            get { return cashbankLedgerid; }
        }
        private double ledgeramount = 0;
        private double LedgerAmount
        {
            set { ledgeramount = value; }
            get { return ledgeramount; }
        }
        private string chequeno = string.Empty;
        private string ChequeNo
        {
            set { chequeno = value; }
            get { return chequeno; }
        }
        private string ledgerflag = string.Empty;
        private string LedgerFlag
        {
            set { ledgerflag = value; }
            get { return ledgerflag; }
        }
        private DateTime materialisedon = DateTime.Now;
        private DateTime MaterialisedOn
        {
            set { materialisedon = value; }
            get { return materialisedon; }
        }
        private DateTime voucherdate = DateTime.Now;
        private DateTime VoucherDate
        {
            set { voucherdate = value; }
            get { return voucherdate; }
        }

        string DonorName = string.Empty;
        string DonorCountry = string.Empty;
        string DonorAddress = string.Empty;
        string Purpose = string.Empty;
        int CostCentreId = 0;
        string CostCentreName = string.Empty;
        double CostCentreAmount = 0;
        string CCTransMode = string.Empty;
        string costcenteruedgId = string.Empty;
        int CostCentreCategoryId = 0;
        string costCenterCategoryUedId = string.Empty;
        string CostCentreCategoryName = string.Empty;

        #endregion

        #region Constructor
        public frmGetPostMasterVoucher()
        {
            InitializeComponent();
            lblAssignManagementCode.Text = ManagementCode;
            branchlocation = _appSetting.Location;

            //07/01/2026 Bharath new column add for sdbrmg users
            bool isSDBRMGUser = _appSetting.IS_SDB_RMG;
            if (isSDBRMGUser)
            {
                gcCalAmt.Visible = isSDBRMGUser;
                gcEXRate.Visible = isSDBRMGUser;
                gcBankRefNo.VisibleIndex = 6;
            }
            //bharath 09/03/2026
            else
            {
                gcLedgerAmount.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
                gvVoucherTransaction.CustomSummaryCalculate += gvVoucherTransaction_CustomSummaryCalculate;
                gcCalAmt.Visible = false;
                gcEXRate.Visible = false;
            }
        }
        #endregion

        #region Methods
        private void frmGetPostMasterVoucher_Load(object sender, EventArgs e)
        {
            layoutControlItem20.Visibility = DevExpress.XtraLayout.Utils.LayoutVisibility.Never;
            layoutControlGroup1.Visibility = DevExpress.XtraLayout.Utils.LayoutVisibility.Never;
            //bharath 09/03/2026 - JN GRID visibility
            // To temp Result -------
            AcMELog.WriteLog("inmbhs started");
            if (ManagementCode == "inmbhs" && branchlocation == templocation)
            {
                ManagementMode = "API";
                ManagementURL = SettingProperty.ThirdPartyURL = "https://dbca.higrade.live/";

                AcMELog.WriteLog("inmbhs Inside ended" + SettingProperty.ThirdPartyURL);
            }

            if (ManagementCode == tempBranchcode)
            {
                lcProjectCategory.Visibility = DevExpress.XtraLayout.Utils.LayoutVisibility.Always;
                LoadProjectCategory();
            }

            LoadDetails();
            lcgMessageGroup.Visibility = DevExpress.XtraLayout.Utils.LayoutVisibility.Never;
            if (lcgMessageGroup.Visibility == DevExpress.XtraLayout.Utils.LayoutVisibility.Never)
            {
                // this.Height = 180;
                // this.CenterToScreen();
            }
            lcgMessageGroup.Visibility = DevExpress.XtraLayout.Utils.LayoutVisibility.Always;

            LoadProjects();
            //lcgMessageGroup.Visibility = DevExpress.XtraLayout.Utils.LayoutVisibility.Always;
            //this.Height = 180;
            if (this.AppSetting.IsCountryOtherThanIndia)
            {
                lcgMaterlized.Visibility = DevExpress.XtraLayout.Utils.LayoutVisibility.Never;
            }
            else
            {
                lcgMaterlized.Visibility = DevExpress.XtraLayout.Utils.LayoutVisibility.Always;
            }
        }

        private void DownloadMasters()
        {
            try
            {
                string acmerpinstalledpath = Application.StartupPath.ToString();
                string thridpartymasters = Path.Combine(acmerpinstalledpath, "ThirdPartyIntegration.txt");
                if (File.Exists(thridpartymasters))
                {
                    System.Diagnostics.Process.Start("Notepad.exe", thridpartymasters);
                }
            }
            catch (Exception err)
            {
                string msg = err.Message;
            }
        }

        private void DownloadMastersProject()
        {
            try
            {
                string acmerpinstalledpath = Application.StartupPath.ToString();
                string thridpartymasters = Path.Combine(acmerpinstalledpath, "ThirdPartyIntegration1.txt");
                if (File.Exists(thridpartymasters))
                {
                    System.Diagnostics.Process.Start("Notepad.exe", thridpartymasters);
                }
            }
            catch (Exception err)
            {
                string msg = err.Message;
            }
        }

        /// <summary>
        /// This is Basic load details
        /// </summary>
        public void LoadDetails()
        {
            FetchYearFromDate();
            LoadDefault();
            dtDateFrom.Focus();
        }

        private void LoadDefault()
        {
            if (string.IsNullOrEmpty(ManagementCode))
            {
                lblAssignManagementCode.Text = "Empty";
            }

            btnPostMaster.Enabled = true;

            if (this.AppSetting.ThirdPartyIntegration == "1")
                btnPostMaster.Enabled = false;
            dtDateFrom.DateTime = dtDateFrom.DateTime;
            dtDateTo.Properties.MinValue = dtDateFrom.DateTime;

            dtDateTo.Properties.MaxValue = dtDateTo.DateTime = dtDateFrom.DateTime.AddMonths(1).AddDays(-1);
            dtDateTo.Enabled = true;

            dtDateFrom.Focus();
        }

        /// <summary>
        /// To Post Voucher Details
        /// </summary>
        /// <returns></returns>
        public DataSet GetMasters()
        {
            try
            {
                dsMasterDetails = new DataSet();
                AcMELog.WriteLog("GetMasters Started..");
                resultArgs = new ResultArgs();
                using (LedgerSystem ledgersystem = new LedgerSystem())
                {
                    ledgersystem.ProjectCategoryIdThirdParty = ProCategoryId;
                    using (ProjectSystem projectsystem = new ProjectSystem())
                    {
                        UpdateCurrentAPIURL();
                        projectsystem.ProjectCategroyId = ProCategoryId;
                        using (LedgerGroupSystem ledgergroupsystem = new LedgerGroupSystem())
                        {
                            using (AccouingPeriodSystem accountingPeriod = new AccouingPeriodSystem())
                            {

                                AcMELog.WriteLog("Fetch Project  started..");
                                resultArgs = projectsystem.FetchProjectsIntegration();

                                if (this.AppSetting.IS_SDB_RMG)
                                {
                                    string MGncode = SettingProperty.ManagementCodeIntegration.ToString();
                                    if (!resultArgs.DataSource.Table.Columns.Contains("MGN_CODE"))
                                        resultArgs.DataSource.Table.Columns.Add("MGN_CODE", typeof(string));

                                    foreach (DataRow row in resultArgs.DataSource.Table.Rows)
                                    {
                                        row["MGN_CODE"] = MGncode;
                                    }
                                }

                                if (resultArgs.Success)
                                {
                                    resultArgs.DataSource.Table.TableName = "Project";
                                    dsMasterDetails.Tables.Add(resultArgs.DataSource.Table);
                                    AcMELog.WriteLog("Fetch Project  ended..");

                                    AcMELog.WriteLog("Fetch Ledger  started..");
                                    resultArgs = ledgersystem.FetchLedgerDetailsIntegration();
                                    if (resultArgs.Success)
                                    {
                                        DataTable dtLedger = new DataTable();
                                        dtLedger = resultArgs.DataSource.Table;
                                        dtLedger.TableName = "Ledger";
                                        DataView dvLedger = new DataView();
                                        dvLedger = dtLedger.DefaultView;
                                        //dvLedger.RowFilter = "NATURE_ID IN (1,2) OR GROUP_ID IN (12,13)";
                                        // Commanded to provide the Income Ledger alone
                                        // This is only for sdbinb, 

                                        if (this.AppSetting.IS_SDB_RMG)
                                        {
                                            dvLedger.RowFilter = "NATURE_ID IN (1,2,3,4) OR GROUP_ID IN (12,13)";
                                        }
                                        else
                                        {
                                            if (!this.AppSetting.ENABLE_BUDGET_HO_HELP_AMOUNT)
                                            {
                                                dvLedger.RowFilter = "NATURE_ID IN (1) OR GROUP_ID IN (12,13)";
                                            }
                                            else
                                            {
                                                dvLedger.RowFilter = "NATURE_ID IN (1,4) OR GROUP_ID IN (12,13)";
                                            }
                                        }
                                        dsMasterDetails.Tables.Add(dvLedger.ToTable());

                                        AcMELog.WriteLog("Ledger count - Post Master" + dvLedger.ToTable().Rows.Count.ToString());

                                        AcMELog.WriteLog("Fetch Ledger ended..");



                                    }
                                }
                            }
                        }
                    }
                }
                if (resultArgs.Success)
                {
                    AcMELog.WriteLog("GetMasters Ended..");
                }
                else
                {
                    AcMELog.WriteLog("Error in GetMasters" + resultArgs.Message);
                }
            }
            catch (Exception eg)
            {
                AcMELog.WriteLog("Problem in post vouchers : " + eg.Message.ToString());
                throw eg;
            }
            return dsMasterDetails;
        }

        /// <summary>
        /// To Post Voucher Details
        /// </summary>
        /// <returns></returns>
        public DataSet GetMastersRome()
        {
            try
            {
                dsMasterDetails = new DataSet();
                AcMELog.WriteLog("GetMasters Started..");
                resultArgs = new ResultArgs();
                using (LedgerSystem ledgersystem = new LedgerSystem())
                {
                    using (ProjectSystem projectsystem = new ProjectSystem())
                    {
                        using (LedgerGroupSystem ledgergroupsystem = new LedgerGroupSystem())
                        {
                            using (AccouingPeriodSystem accountingPeriod = new AccouingPeriodSystem())
                            {
                                AcMELog.WriteLog("Fetch Project  started..");
                                resultArgs = projectsystem.FetchProjectsIntegration();
                                if (resultArgs.Success)
                                {
                                    resultArgs.DataSource.Table.TableName = "Project";
                                    dsMasterDetails.Tables.Add(resultArgs.DataSource.Table);
                                    AcMELog.WriteLog("Fetch Project  ended..");

                                    AcMELog.WriteLog("Fetch Ledger  started..");
                                    resultArgs = ledgersystem.FetchLedgerDetailsIntegration();
                                    if (resultArgs.Success)
                                    {
                                        DataTable dtLedger = new DataTable();
                                        dtLedger = resultArgs.DataSource.Table;
                                        dtLedger.TableName = "Ledger";
                                        DataView dvLedger = new DataView();
                                        dvLedger = dtLedger.DefaultView;
                                        //dvLedger.RowFilter = "NATURE_ID IN (1,2) OR GROUP_ID IN (12,13)";
                                        // Commanded to provide the Income Ledger alone
                                        // This is only for sdbinb, 
                                        if (!this.AppSetting.ENABLE_BUDGET_HO_HELP_AMOUNT)
                                        {
                                            dvLedger.RowFilter = "NATURE_ID IN (1) OR GROUP_ID IN (12,13)";
                                        }
                                        else
                                        {
                                            // sdbinb
                                            dvLedger.RowFilter = "NATURE_ID IN (1,4) OR GROUP_ID IN (12,13)";
                                        }
                                        dsMasterDetails.Tables.Add(dvLedger.ToTable());

                                        AcMELog.WriteLog("Ledger count - Post Master" + dvLedger.ToTable().Rows.Count.ToString());

                                        AcMELog.WriteLog("Fetch Ledger ended..");
                                    }

                                    AcMELog.WriteLog("Fetch FC Purpose");
                                    resultArgs = ledgersystem.FetchLedgerDetailsIntegration();

                                }
                            }
                        }
                    }
                }
                if (resultArgs.Success)
                {
                    AcMELog.WriteLog("GetMasters Ended..");
                }
                else
                {
                    AcMELog.WriteLog("Error in GetMasters" + resultArgs.Message);
                }
            }
            catch (Exception eg)
            {
                AcMELog.WriteLog("Problem in post vouchers : " + eg.Message.ToString());
                throw eg;
            }
            return dsMasterDetails;
        }


        /// <summary>
        /// To Post Voucher Transactions
        /// </summary>
        /// <param name="ServiceData"></param>
        /// <returns></returns>
        public DataTable PostVouchers(DataTable dtConvertedTransData, string VoucherDate, string MgnCode)
        {
            DataTable dtTransStatus = new DataTable("VoucherDetails");
            DataTable dtSaveVouchers = new DataTable("Vouchers");
            // dtConvertedTransData.DefaultView.RowFilter = "LEDGER_AMOUNT>0"; // To Filter 0 Amount
            // bharath 27/02/2026
            // To determine whether the ledger has a sub-ledger and set the flag accordingly
            if (dtConvertedTransData.Columns.Contains("LEDGER_FLAG"))
            {
                // Case 1: LEDGER_FLAG exists
                dtConvertedTransData.DefaultView.RowFilter =
                    "LEDGER_FLAG = 1 OR (LEDGER_AMOUNT IS NOT NULL AND LEDGER_AMOUNT <> '')";
            }
            else if (!this.AppSetting.IS_SDB_RMG)
            {

                dtConvertedTransData.DefaultView.RowFilter = "LEDGER_AMOUNT>0";
            }
            // Check whether any voucher contains multiple ledger entries
            int ismulti = 0;
            if (dtConvertedTransData.Columns.Contains("IS_MULTIPLE"))
            {
                foreach (DataRow row in dtConvertedTransData.Rows)
                {
                    if (row["IS_MULTIPLE"] != DBNull.Value &&
                        row["IS_MULTIPLE"].ToString().Trim() == "1")
                    {
                        ismulti = 1;
                        break;
                    }
                }
            }
            else
            {
            }
            dtSaveVouchers = dtConvertedTransData.DefaultView.ToTable();

            resultArgs = new ResultArgs();
            try
            {
                AcMELog.WriteLog("Started Post Vouchers..");
                if (dtSaveVouchers != null && dtSaveVouchers.Rows.Count > 0)
                {
                    AcMELog.WriteLog("Validate the Transaction Started..");
                    bool ValidateStatus = ValidateCashBankColumnsSource(dtSaveVouchers, VoucherDate, MgnCode);
                    voucherdate = this.UtilityMember.DateSet.ToDate(dtSaveVouchers.Rows[0][VOUCHER_DATE].ToString(), false);
                    AcMELog.WriteLog("Ended Validate Transaction..");
                    if (ValidateStatus)
                    {
                        bool isValidTransaction = true;
                        bool isFillTransaction = true;
                        string Project = string.Empty;
                        string GeneralLedger = string.Empty;
                        double LedgerAmount = 0.00;
                        string GeneralTransMode = string.Empty;
                        string banktransId = string.Empty;

                        //Cash Source
                        string CashBankLedger = string.Empty;
                        double CashBankAmount = 0;
                        string BankRefNo = string.Empty;
                        string MaterializedOn = string.Empty;
                        string CashBankTransMode = string.Empty;

                        int CostCentreCategoryId = 0;
                        string CostCentreCategory = string.Empty;
                        decimal ExchangeRate = 0;
                        int CostCentreId = 0;
                        string CostCenreName = string.Empty;
                        string LedgerAmountText = "";
                        string vouchertype = "";

                        foreach (DataRow dr in dtSaveVouchers.Rows)
                        {
                            // This is added by Chinna on 18.02.2021 in order to receive the 12 transaction date it is get realized on 15 
                            // 1. Receive transaction date before or less transaction
                            // 2. Realized on 15 voucher date on 12 but he send on 15 only when i send the voucher date
                            // 3. Remove the voucher date transaction 
                            voucherdate = this.UtilityMember.DateSet.ToDate(dr[VOUCHER_DATE].ToString(), false);

                            // Trans Source
                            Project = dr[PROJECT].ToString();
                            GeneralLedger = dr[GENERAL_LEDGER].ToString();
                            //LedgerAmount = this.UtilityMember.NumberSet.ToDouble(dr[LEDGER_AMOUNT].ToString());

                            // Bharath 27/02/2026
                            // When sub-ledger entries exist, reset LedgerAmount to zero and retain the original amount as text;
                            // otherwise, assign the numeric ledger amount.
                            int ledgerFlag = 0;
                            int doubleFlag = 0;

                            if (dtSaveVouchers.Columns.Contains("LEDGER_FLAG") && dr["LEDGER_FLAG"] != DBNull.Value)
                                int.TryParse(dr["LEDGER_FLAG"].ToString(), out ledgerFlag);

                            if (dtSaveVouchers.Columns.Contains("IS_DOUBLE") && dr["IS_DOUBLE"] != DBNull.Value)
                                int.TryParse(dr["IS_DOUBLE"].ToString(), out doubleFlag);

                            if (ledgerFlag == 1 || doubleFlag == 1)
                            {
                                LedgerAmount = 0;
                                LedgerAmountText = (doubleFlag == 1)
                                    ? dr[LEDGER_AMOUNT_LIST].ToString()
                                    : dr[LEDGER_AMOUNT].ToString();
                            }
                            else
                            {
                                LedgerAmount = this.UtilityMember.NumberSet
                                    .ToDouble(dr[LEDGER_AMOUNT].ToString());
                            }
                            GeneralTransMode = dr[GENERAL_TRANS_MODE].ToString();

                            //Cash Source
                            CashBankLedger = dr[CASHBANK_LEDGER].ToString();
                            CashBankAmount = this.UtilityMember.NumberSet.ToDouble(dr[CASHBANK_AMOUNT].ToString());
                            BankRefNo = dr[BANK_REF_NO].ToString();
                            MaterializedOn = dr[MATERIALISED_ON].ToString();
                            CashBankTransMode = dr[CASHBANK_TRANS_MODE].ToString();

                            if (dr.Table.Columns.Contains("DONOR"))
                            {
                                DonorCountry = dr["DONOR_COUNTRY"].ToString();
                            }
                            vouchertype = dr.Table.Columns.Contains(VOUCHER_TYPE) ? dr[VOUCHER_TYPE].ToString() : "";
                            if ((vouchertype == "PY" && GeneralTransMode == "CR") || (vouchertype == "RC" && GeneralTransMode == "DR"))
                            {
                                string errorMessage = "Voucher type mismatch: Voucher Type '" + vouchertype + "' is not valid with Ledger Transaction Mode '" + GeneralTransMode + "'.";
                                AcMELog.WriteLog(errorMessage);
                                this.ShowMessageBox(errorMessage);
                                return dtTransStatus;
                            }
                            isValidTransaction = ValidateCashBankTransSource(Project.Trim(), GeneralLedger.Trim(), LedgerAmount, GeneralTransMode.Trim(), CashBankLedger.Trim(), CashBankAmount, BankRefNo, MaterializedOn.Trim(), CashBankTransMode.Trim(), voucherdate, DonorCountry, vouchertype, LedgerAmountText, ledgerFlag, doubleFlag);
                            if (!isValidTransaction)
                            {
                                break;
                            }
                        }
                        if (isValidTransaction)
                        {
                            // bool isOnlineCollections = true;  // 21.11.2022
                            DataView dvOnlineRecords = new DataView();
                            DataTable dtOnlineSource = new DataTable();
                            if (Defaultmode == ManagementMode)
                            {
                                // To spilit the Online Collections and CB Transactions
                                // dvOnlineRecords = new DataView(dtSaveVouchers) { RowFilter = "CLIENT_TRANSACTION_MODE IN ('6')" }; // 21.11.2022
                                // dtOnlineSource = dvOnlineRecords.ToTable(); // 21.11.2022
                                // isOnlineCollections = FetchOnlineCollections(dtOnlineSource, VoucherDate, MgnCode); // 21.11.2022

                                // Cash Transction cash be summed based ledger project 
                                DataView dvCashRecords = new DataView(dtSaveVouchers) { RowFilter = "CLIENT_TRANSACTION_MODE IN ('Cash')" };
                                DataTable dtCashRecords = dvCashRecords.ToTable();
                                // To Remove Cash and Online Collections
                                // DataView dvCBRecords = new DataView(dtSaveVouchers) { RowFilter = "CLIENT_TRANSACTION_MODE NOT IN ('6','1')" }; // 21.11.2022
                                DataView dvCBRecords = new DataView(dtSaveVouchers) { RowFilter = "CLIENT_TRANSACTION_MODE NOT IN ('Cash')" }; // 21.11.2022
                                dtSaveVouchers = dvCBRecords.ToTable(); // 21.11.2022

                                // To Sum the Ledger Amount if same ledger duplicated
                                // Chinna
                                // To do the Modification and its features
                                // (dvCashRecords.Count > 1) to commanded allow >0 as below ( 20-10-2022)
                                if (dvCashRecords.Count > 0) // if it is cash transaction more than 2
                                {
                                    dtCashRecords = dvCashRecords.ToTable(true, new string[] { "SOURCE", "VOUCHER_DATE", "VOUCHER_TYPE", "CLIENT_CODE", "PROJECT_NAME", "LEDGER", "LEDGER_TRANS_MODE", "CASHBANK_LEDGER", "CASHBANK_TRANS_MODE", "FLAG", "MATERIALIZED_ON", "BANK_REF_NO", "Narration", "STUDENTINFO", "LEDGER_FLAG", "TRANSACTION_ID" });
                                    // Add required columns for transaction reference and ledger-level filtering
                                    //DataTable dtCashRecords = dvCashRecords.ToTable();

                                    dtCashRecords.Columns.Add("CLIENT_REFERENCE_ID", typeof(Int32));
                                    dtCashRecords.Columns.Add("LEDGER_AMOUNT", typeof(string));
                                    dtCashRecords.Columns.Add("CASHBANK_AMOUNT", typeof(decimal));
                                    //dtCashRecords.Columns.Add("TRANSACTION_ID", typeof(Int32));
                                    // Ensure TRANSACTION_ID column exists for transaction identification
                                    if (!dtCashRecords.Columns.Contains("TRANSACTION_ID"))
                                        dtCashRecords.Columns.Add("TRANSACTION_ID", typeof(Int32));
                                    dtCashRecords.Columns.Add("CLIENT_TRANSACTION_MODE", typeof(string));
                                    dtCashRecords.Columns.Add("RECEIPTNO", typeof(string));

                                    foreach (DataRow dr in dtCashRecords.Rows)
                                    {
                                        string ReceiptsNo = string.Empty;
                                        string ClientrefId = string.Empty;
                                        dr.BeginEdit();
                                        string Date = dr["VOUCHER_DATE"].ToString();
                                        string LedgerName = dr["LEDGER"].ToString();
                                        string ProjectName = dr["PROJECT_NAME"].ToString();
                                        string ClienId = dr["TRANSACTION_ID"].ToString();
                                        //bharath 27/02/2026
                                        // Build filter condition dynamically; include CLIENT_REFERENCE_ID when processing multi transactions
                                        string clientmode = "Cash";
                                        //string Filter = "VOUCHER_DATE ='" + Date + "' AND LEDGER ='" + LedgerName.Replace("'", "''") + "'" + " AND PROJECT_NAME ='" + ProjectName.Replace("'", "''") + "'" + " AND FLAG ='CASH'";
                                        string Filter = "";
                                        if (ismulti == 1)
                                        {
                                            // Apply additional CLIENT_REFERENCE_ID filter for multi-ledger transactions
                                            Filter = "VOUCHER_DATE ='" + Date + "' AND LEDGER ='" + LedgerName.Replace("'", "''") + "'" + " AND PROJECT_NAME ='" + ProjectName.Replace("'", "''") + "'" + " AND FLAG ='CASH'" + " AND CLIENT_REFERENCE_ID = '" + ClienId.Replace("'", "''") + "'";
                                        }
                                        else
                                        {
                                            // Standard filter for single transaction
                                            Filter = "VOUCHER_DATE ='" + Date + "' AND LEDGER ='" + LedgerName.Replace("'", "''") + "'" + " AND PROJECT_NAME ='" + ProjectName.Replace("'", "''") + "'" + " AND FLAG ='CASH'";
                                        }
                                        //decimal CashAmount = this.UtilityMember.NumberSet.ToDecimal(dvCashRecords.ToTable().Compute("SUM(LEDGER_AMOUNT)", Filter).ToString());

                                        // To Get the Receipts No from ssp
                                        DataRow[] drDetails = dvCashRecords.ToTable().Select(Filter);
                                        string CashAmount = drDetails.Length > 0 ? drDetails[0]["LEDGER_AMOUNT"].ToString() : string.Empty;
                                        decimal Cashbankamt = drDetails.Length > 0 ? this.UtilityMember.NumberSet.ToDecimal(drDetails[0]["CASHBANK_AMOUNT"].ToString()) : 0m;

                                        foreach (DataRow drRow in drDetails)
                                        {
                                            ReceiptsNo += drRow["RECEIPTNO"].ToString() + ",";
                                            ClientrefId = drRow["CLIENT_REFERENCE_ID"].ToString();
                                        }
                                        ReceiptsNo = ReceiptsNo.TrimEnd(',');

                                        dr["LEDGER_AMOUNT"] = CashAmount;
                                        dr["CASHBANK_AMOUNT"] = Cashbankamt;
                                        dr["CLIENT_TRANSACTION_MODE"] = clientmode;
                                        dr["RECEIPTNO"] = ReceiptsNo;
                                        dr["CLIENT_REFERENCE_ID"] = ClientrefId;
                                        dr.EndEdit();
                                        dtCashRecords.AcceptChanges();
                                    }

                                    foreach (DataRow dr in dtCashRecords.Rows)
                                    {
                                        DataRow drData = dtSaveVouchers.NewRow();
                                        drData["SOURCE"] = dr["SOURCE"];
                                        drData["VOUCHER_DATE"] = dr["VOUCHER_DATE"];
                                        drData["VOUCHER_TYPE"] = dr["VOUCHER_TYPE"];
                                        drData["CLIENT_CODE"] = dr["CLIENT_CODE"];
                                        drData["CLIENT_REFERENCE_ID"] = dr["CLIENT_REFERENCE_ID"];
                                        drData["PROJECT_NAME"] = dr["PROJECT_NAME"];
                                        drData["LEDGER"] = dr["LEDGER"];
                                        drData["LEDGER_AMOUNT"] = dr["LEDGER_AMOUNT"];
                                        drData["LEDGER_TRANS_MODE"] = dr["LEDGER_TRANS_MODE"];
                                        drData["CASHBANK_LEDGER"] = dr["CASHBANK_LEDGER"];
                                        drData["CASHBANK_AMOUNT"] = dr["CASHBANK_AMOUNT"];
                                        drData["CASHBANK_TRANS_MODE"] = dr["CASHBANK_TRANS_MODE"];
                                        drData["FLAG"] = dr["FLAG"];
                                        drData["MATERIALIZED_ON"] = dr["MATERIALIZED_ON"];
                                        drData["BANK_REF_NO"] = dr["BANK_REF_NO"];
                                        drData["Narration"] = dr["Narration"];
                                        drData["TRANSACTION_ID"] = dr["TRANSACTION_ID"];
                                        drData["CLIENT_TRANSACTION_MODE"] = dr["CLIENT_TRANSACTION_MODE"];
                                        drData["RECEIPTNO"] = dr["RECEIPTNO"];
                                        drData["STUDENTINFO"] = dr["STUDENTINFO"];
                                        drData["LEDGER_FLAG"] = dr["LEDGER_FLAG"];

                                        dtSaveVouchers.Rows.Add(drData);
                                    }
                                }
                            }
                            else
                            {
                                // To spilit the Online Collections and CB Transactions (API)
                                // dvOnlineRecords = new DataView(dtSaveVouchers) { RowFilter = "CLIENT_TRANSACTION_MODE IN ('Online')" }; // 21.11.2022
                                // dtOnlineSource = dvOnlineRecords.ToTable(); // 21.11.2022
                                // isOnlineCollections = FetchOnlineCollections(dtOnlineSource, VoucherDate, MgnCode); // 21.11.2022
                                // DataView dvCBRecords = new DataView(dtSaveVouchers) { RowFilter = "CLIENT_TRANSACTION_MODE NOT IN ('Online')" }; // 21.11.2022
                                //dtSaveVouchers = dvCBRecords.ToTable();
                            }

                            //// To sum the online transaction based on ledger project cash...
                            //DataTable dtCumulativeGeneralSource = dtSaveVouchers.DefaultView.ToTable("dtSource", true, new string[] { "VOUCHER_DATE", "PROJECT_NAME", "LEDGER", "CASHBANK_LEDGER", "CLIENT_CODE" });
                            //dtCumulativeGeneralSource.DefaultView.Sort = "VOUCHER_DATE DESC, MATERIALIZED_ON";
                            //dtCumulativeGeneralSource = dtCumulativeGeneralSource.DefaultView.ToTable();

                            // Status and update the cash, Bank (DD, Cheque)..
                            //if (isOnlineCollections && dtSaveVouchers.Rows.Count > 0) // 21.11.2022
                            if (dtSaveVouchers.Rows.Count > 0)
                            {
                                if (!dtSaveVouchers.Columns.Contains("RECEIPTNO"))
                                {
                                    dtSaveVouchers.Columns.Add("RECEIPTNO", typeof(string));
                                }

                                foreach (DataRow drRow in dtSaveVouchers.Rows)
                                {
                                    // Trans
                                    voucherdate = this.UtilityMember.DateSet.ToDate(drRow[VOUCHER_DATE].ToString(), false);
                                    Project = drRow[PROJECT].ToString();
                                    GeneralLedger = drRow[GENERAL_LEDGER].ToString();
                                    //LedgerAmount = this.UtilityMember.NumberSet.ToDouble(drRow[LEDGER_AMOUNT].ToString());
                                    int ledgerFlag = 0, doubleFlag = 0;

                                    if (dtSaveVouchers.Columns.Contains("LEDGER_FLAG") && drRow["LEDGER_FLAG"] != DBNull.Value)
                                        int.TryParse(drRow["LEDGER_FLAG"].ToString(), out ledgerFlag);

                                    if (dtSaveVouchers.Columns.Contains("IS_DOUBLE") && drRow["IS_DOUBLE"] != DBNull.Value)
                                        int.TryParse(drRow["IS_DOUBLE"].ToString(), out doubleFlag);

                                    if (ledgerFlag == 1 || doubleFlag == 1)
                                    {
                                        LedgerAmount = 0;
                                        LedgerAmountText = (doubleFlag == 1)
                                            ? drRow[LEDGER_AMOUNT_LIST].ToString()
                                            : drRow[LEDGER_AMOUNT].ToString();
                                    }
                                    else
                                    {
                                        LedgerAmount = this.UtilityMember.NumberSet
                                            .ToDouble(drRow[LEDGER_AMOUNT].ToString());
                                    }
                                    GeneralTransMode = drRow[GENERAL_TRANS_MODE].ToString();

                                    // CB Trans
                                    CashBankLedger = drRow[CASHBANK_LEDGER].ToString();
                                    CashBankAmount = this.UtilityMember.NumberSet.ToDouble(drRow[CASHBANK_AMOUNT].ToString());
                                    BankRefNo = drRow[BANK_REF_NO].ToString();
                                    MaterializedOn = drRow[MATERIALISED_ON].ToString();
                                    CashBankTransMode = drRow[CASHBANK_TRANS_MODE].ToString();

                                    string vouchertypes = drRow[VOUCHER_TYPE].ToString();
                                    string Ledgernarrations = drRow[LEDGER_NARRATION].ToString();
                                    ExchangeRate = Convert.ToDecimal(drRow[EXCHANGE_RATE]);
                                    isFillTransaction = FillCashBankTransSource(Project.Trim(), GeneralLedger.Trim(), LedgerAmount, GeneralTransMode.Trim(), CashBankLedger.Trim(), CashBankAmount, BankRefNo, MaterializedOn.Trim(), CashBankTransMode.Trim(), voucherdate, ExchangeRate, vouchertypes, LedgerAmountText, Ledgernarrations, ledgerFlag, doubleFlag);
                                    if (isFillTransaction)
                                    {
                                        using (VoucherTransactionSystem voucherTransaction = new VoucherTransactionSystem())
                                        {
                                            int AcmeVoucherId = 0;
                                            string AcmeVoucheNo = "";
                                            voucherTransaction.ClientReferenceId = drRow[CLIENT_REFERENCE_ID].ToString();
                                            voucherTransaction.ClientCode = drRow[CLIENT_CODE].ToString().Trim() + " - " + MgnCode;
                                            string clientmode = drRow[CLIENT_TRANSACTION_MODE].ToString().Trim();
                                            voucherTransaction.ClientMode = clientmode;
                                            voucherTransaction.ProjectId = ProjectId;
                                            voucherTransaction.LedgerId = ledgerid;
                                            int flag = ismulti;
                                            string CBFlag = drRow[CASHBANK_FLAG].ToString().Trim();
                                            if (CBFlag == "CASH")
                                            {
                                                // Allow processing for non-India countries or when multi-transaction flag is enabled
                                                if (this.AppSetting.IsCountryOtherThanIndia || flag == 1)
                                                {
                                                    string SyncVoucherDate = VoucherDate;
                                                    voucherTransaction.VoucherDateFrom = this.UtilityMember.DateSet.ToDate(SyncVoucherDate, false);
                                                    ResultArgs resultExsitsArgsSource = voucherTransaction.FetchVoucherIdByCashIndividualExists();
                                                    if (resultExsitsArgsSource.Success && resultExsitsArgsSource.DataSource.Table.Rows.Count > 0)
                                                    {
                                                        AcmeVoucherId = this.UtilityMember.NumberSet.ToInteger(resultExsitsArgsSource.DataSource.Table.Rows[0]["VOUCHER_ID"].ToString());
                                                        AcmeVoucheNo = resultExsitsArgsSource.DataSource.Table.Rows[0]["VOUCHER_NO"].ToString();
                                                    }
                                                }
                                                else
                                                {
                                                    // Sync Date ( Cash Transactions
                                                    string SyncVoucherDate = VoucherDate;
                                                    voucherTransaction.VoucherDateFrom = this.UtilityMember.DateSet.ToDate(SyncVoucherDate, false);
                                                    // voucherTransaction.LedgerId = ledgerid; 21/11/2022
                                                    ResultArgs resultExsitsArgsSource = voucherTransaction.FetchVoucherIdByCashExists();
                                                    bool status = true;
                                                    if (resultExsitsArgsSource.Success && resultExsitsArgsSource.DataSource.Table.Rows.Count > 1)
                                                    {
                                                        status = DeleteMultipleCashTransactions(resultExsitsArgsSource.DataSource.Table);
                                                        resultExsitsArgsSource = new ResultArgs();
                                                    }
                                                    if (resultExsitsArgsSource.Success && resultExsitsArgsSource.DataSource.Table.Rows.Count > 0 && status)
                                                    {
                                                        AcmeVoucherId = this.UtilityMember.NumberSet.ToInteger(resultExsitsArgsSource.DataSource.Table.Rows[0]["VOUCHER_ID"].ToString());
                                                        AcmeVoucheNo = resultExsitsArgsSource.DataSource.Table.Rows[0]["VOUCHER_NO"].ToString();
                                                    }
                                                }
                                            }
                                            else
                                            {
                                                // Bank Transactions
                                                ResultArgs resultExsitsArgsSource = voucherTransaction.FetchVoucherIdByClientReferenceId();
                                                if (resultExsitsArgsSource.Success && resultExsitsArgsSource.DataSource.Table.Rows.Count > 0)
                                                {
                                                    AcmeVoucherId = this.UtilityMember.NumberSet.ToInteger(resultExsitsArgsSource.DataSource.Table.Rows[0]["VOUCHER_ID"].ToString());
                                                    AcmeVoucheNo = resultExsitsArgsSource.DataSource.Table.Rows[0]["VOUCHER_NO"].ToString();
                                                }
                                            }

                                            voucherTransaction.VoucherId = AcmeVoucherId > 0 ? AcmeVoucherId : 0;
                                            voucherTransaction.VoucherDate = voucherdate;

                                            string vtype = drRow[VOUCHER_TYPE].ToString();  //dtSaveVouchers.Rows[0][VOUCHER_TYPE].ToString().ToUpper().Trim();
                                            voucherTransaction.VoucherType = vtype;
                                            // voucherTransaction.VoucherDefinitionId = (Int32)DefaultVoucherTypes.Receipt; // 08/03/2025
                                            if (vtype == "RC") voucherTransaction.VoucherDefinitionId = (Int32)DefaultVoucherTypes.Receipt;
                                            if (vtype == "PY") voucherTransaction.VoucherDefinitionId = (Int32)DefaultVoucherTypes.Payment;
                                            if (vtype == "CN") voucherTransaction.VoucherDefinitionId = (Int32)DefaultVoucherTypes.Contra;
                                            if (vtype == "JN") voucherTransaction.VoucherDefinitionId = (Int32)DefaultVoucherTypes.Journal;

                                            voucherTransaction.VoucherSubType = LedgerTypes.GN.ToString();
                                            // voucherTransaction.TransVoucherMethod = (int)TransactionVoucherMethod.Automatic;
                                            voucherTransaction.TransVoucherMethod = (int)TransactionVoucherMethod.Automatic;
                                            //  voucherTransaction.VoucherNo =  "";
                                            voucherTransaction.VoucherNo = AcmeVoucheNo == "" ? "" : AcmeVoucheNo;

                                            // This is to set the Cost Centre separation
                                            if (this.AppSetting.IS_SDB_RMG)
                                            {
                                                if (drRow.Table.Columns.Contains(COST_CENTER_CATEGORY))
                                                {
                                                    if (drRow.Table.Columns.Contains(COST_CENTER))
                                                    {
                                                        string CCCategory = drRow[COST_CENTER_CATEGORY].ToString();
                                                        string CCentre = drRow[COST_CENTER].ToString();
                                                        string CCentreop = drRow[COST_CENTER_OB].ToString();
                                                        //bharath 21/01/2026
                                                        string CCCId = drRow[COST_CENTER_CATEGORY_ID].ToString();
                                                        string CCId = drRow[COST_CENTER_ID].ToString();

                                                        //bharath 11/03/2026 - validate cost centre values
                                                        string missingFields = string.Empty;
                                                        if (string.IsNullOrWhiteSpace(CCCategory))
                                                        {
                                                            missingFields = "COST_CENTER_CATEGORY";
                                                        }
                                                        if (string.IsNullOrWhiteSpace(CCentre))
                                                        {
                                                            missingFields += (missingFields == string.Empty ? "" : ", ") + "COST_CENTER";
                                                        }
                                                        if (string.IsNullOrWhiteSpace(CCentreop))
                                                        {
                                                            missingFields += (missingFields == string.Empty ? "" : ", ") + "COST_CENTER_OB";
                                                        }
                                                        if (string.IsNullOrWhiteSpace(CCCId))
                                                        {
                                                            missingFields += (missingFields == string.Empty ? "" : ", ") + "COST_CENTER_CATEGORY_ID";
                                                        }
                                                        if (string.IsNullOrWhiteSpace(CCId))
                                                        {
                                                            missingFields += (missingFields == string.Empty ? "" : ", ") + "COST_CENTER_ID";
                                                        }
                                                        if (!string.IsNullOrEmpty(missingFields))
                                                        {
                                                            string errorMessage = "Provided Data is invalid, missing: " + missingFields;
                                                            AcMELog.WriteLog(errorMessage);
                                                            this.ShowMessageBox(errorMessage);
                                                            return dtTransStatus;
                                                        }

                                                        // bharath: to avoid duplicate cost centers
                                                        try
                                                        {
                                                            if (doubleFlag == 1)
                                                            {
                                                                //foreach (int lid in ledgerIds)
                                                                //{
                                                                //    //string tbl = "0LDR" + lid;
                                                                //    //if (dsCostCentre != null && dsCostCentre.Tables.Contains(tbl))
                                                                //    //    dsCostCentre.Tables[tbl].Clear();
                                                                //}
                                                                if (dsCostCentre != null)
                                                                    dsCostCentre.Tables.Clear();
                                                            }
                                                            else
                                                            {
                                                                string tbl = "0LDR" + ledgerid;
                                                                if (dsCostCentre != null && dsCostCentre.Tables.Contains(tbl))
                                                                    dsCostCentre.Tables[tbl].Clear();
                                                            }
                                                        }
                                                        catch (Exception ex)
                                                        {
                                                            AcMELog.WriteLog("Warning while clearing cost centre: " + ex.Message);
                                                        }

                                                        // Split cost center categories by # delimiter
                                                        string[] costCenterCategories = CCCategory.Split('#');
                                                        // Split cost centers by # delimiter
                                                        string[] costCenters = CCentre.Split('#');

                                                        string[] costCentersop = CCentreop.Split('#');

                                                        string[] costCentercategoryId = CCCId.Split('#');

                                                        string[] costCenterIdudeg = CCId.Split('#');

                                                        //bharath 11/03/2026 - validate cost centre array lengths
                                                        if (costCenterCategories.Length != costCentercategoryId.Length)
                                                        {
                                                            AcMELog.WriteLog("Cost centre category count mismatch between names and ids.");
                                                            this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERATE_PROVIDED_DATA_IS_INVALID_TRY_AGAIN));
                                                            return dtTransStatus;
                                                        }

                                                        if (costCenters.Length != costCenterIdudeg.Length)
                                                        {
                                                            AcMELog.WriteLog("Cost centre count mismatch between centres and ids.");
                                                            this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERATE_PROVIDED_DATA_IS_INVALID_TRY_AGAIN));
                                                            return dtTransStatus;
                                                        }

                                                        if (costCentersop.Length != costCenterIdudeg.Length)
                                                        {
                                                            AcMELog.WriteLog("Cost centre opening balance count mismatch with centre ids.");
                                                            this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERATE_PROVIDED_DATA_IS_INVALID_TRY_AGAIN));
                                                            return dtTransStatus;
                                                        }
                                                        // Process each cost center category and its corresponding cost center
                                                        for (int i = 0; i < Math.Max(costCenterCategories.Length, costCenters.Length); i++)
                                                        {
                                                            // Cost Centre Category Part
                                                            if (i < costCenterCategories.Length)
                                                            {
                                                                CostCentreCategoryName = costCenterCategories[i].Trim();
                                                                //bharath 21/01/2025
                                                                costCenterCategoryUedId = costCentercategoryId[i].Trim();
                                                                CostCentreCategoryId = InsertCostCentreCategory(CostCentreCategoryName, costCenterCategoryUedId);
                                                            }

                                                            // Cost Centre Part 
                                                            if (i < costCenters.Length)
                                                            {
                                                                string costCenterWithAmount = costCenters[i].Trim();

                                                                // Split cost center name and amount by $ delimiter
                                                                string[] costCenterParts = costCenterWithAmount.Split('$');
                                                                if (costCenterParts.Length >= 2)
                                                                {
                                                                    CostCentreName = costCenterParts[0].Trim();
                                                                    //CostCentreAmount = this.UtilityMember.NumberSet.ToDouble(costCenterParts[1].Trim());
                                                                    //bharath Fixed cost center amount split issue fix
                                                                    CostCentreAmount = Convert.ToDouble(costCenterParts[1].Trim(), CultureInfo.InvariantCulture);
                                                                }

                                                                // opening
                                                                //double costcentersopAmount = this.UtilityMember.NumberSet.ToDouble(costCentersop[i].Trim());
                                                                // bharath - Fixed cost center opening balance conversion issue
                                                                double costcentersopAmount = Convert.ToDouble(costCentersop[i].Trim(), CultureInfo.InvariantCulture);

                                                                //CostCentreName = costCenterWithAmount;
                                                                //CostCentreAmount = this.UtilityMember.NumberSet.ToDouble(drRow["COST_CENTER_OB"].ToString());

                                                                CCTransMode = drRow["COST_CENTER_OB_MODE"].ToString();

                                                                //bharath 21/01/2026
                                                                string costcenteruedgId = costCenterIdudeg[i].Trim();

                                                                //CostCentreId = InsertCostCentre(CostCentreName, ProjectId, CostCentreCategoryId, CostCentreAmount, CCTransMode);
                                                                CostCentreId = InsertCostCentre(CostCentreName, ProjectId, CostCentreCategoryId, costcentersopAmount, CCTransMode, costcenteruedgId);

                                                                //this.Transaction.CostCenterInfo = UpdateCostCentre(CostCentreId, CostCentreAmount);  // LedgerAmount
                                                                //bharath udeg double entry changes
                                                                if (doubleFlag == 1)
                                                                {
                                                                    int lid = ledgerIds[i];
                                                                    int rowIndex = ledgerRowIndices[i];
                                                                    this.Transaction.CostCenterInfo = UpdateCostCentre(lid, CostCentreId, CostCentreAmount, rowIndex, 1);
                                                                }
                                                                else
                                                                {
                                                                    this.Transaction.CostCenterInfo = UpdateCostCentre(ledgerid, CostCentreId, CostCentreAmount, 0, 0);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            else
                                            {
                                                if (drRow.Table.Columns.Contains(COST_CENTER_CATEGORY))
                                                {
                                                    CostCentreCategoryName = drRow[COST_CENTER_CATEGORY].ToString();
                                                    CostCentreCategoryId = InsertCostCentreCategory(CostCentreCategoryName, costCenterCategoryUedId);
                                                }
                                                if (drRow.Table.Columns.Contains(COST_CENTER))
                                                {
                                                    CostCentreName = drRow[COST_CENTER].ToString();
                                                    CostCentreAmount = this.UtilityMember.NumberSet.ToDouble(drRow["COST_CENTER_OB"].ToString());
                                                    CCTransMode = drRow["COST_CENTER_OB_MODE"].ToString();

                                                    CostCentreId = InsertCostCentre(CostCentreName, ProjectId, CostCentreCategoryId, CostCentreAmount, CCTransMode, costcenteruedgId);

                                                    this.Transaction.CostCenterInfo = UpdateCostCentre(ledgerid, CostCentreId, LedgerAmount, 0, 0);
                                                }
                                            }

                                            //voucherTransaction.DonorId = 0;
                                            if (drRow.Table.Columns.Contains("DONOR"))
                                            {
                                                DonorName = drRow["DONOR"].ToString();
                                                DonorCountry = drRow["DONOR_COUNTRY"].ToString();
                                                DonorAddress = drRow["DONOR_ADDRESS"].ToString();
                                            }
                                            voucherTransaction.DonorId = string.IsNullOrEmpty(DonorName) ? 0 : InserFetchIdtDonorName(DonorName, DonorCountry, DonorAddress);
                                            //voucherTransaction.PurposeId = 0;
                                            if (drRow.Table.Columns.Contains("PURPOSE"))
                                            {
                                                Purpose = drRow["PURPOSE"].ToString().Trim();
                                            }
                                            voucherTransaction.PurposeId = string.IsNullOrEmpty(Purpose) ? 0 : InsertFetchFCPurpose(Purpose);

                                            //bharath 21/01/2026
                                            // voucherTransaction.ContributionType = "N";
                                            voucherTransaction.ContributionType = this.AppSetting.IS_SDB_RMG ? "F" : "N";

                                            if (drRow.Table.Columns.Contains("CURRENCY_COUNTRY"))
                                            {
                                                int countryid = GetCountryId(drRow["CURRENCY_COUNTRY"].ToString());//GetCountryId("Italy");
                                                voucherTransaction.CurrencyCountryId = countryid;
                                                voucherTransaction.ExchageCountryId = countryid; ;
                                                voucherTransaction.ExchangeRate = decimal.Parse(drRow["EXCHANGE_RATE"].ToString().Replace(",", "."), System.Globalization.CultureInfo.InvariantCulture); //1; 
                                                voucherTransaction.ContributionAmount = this.UtilityMember.NumberSet.ToDecimal(drRow["CONTRIBUTION_AMOUNT"].ToString());
                                                voucherTransaction.CalculatedAmount = this.UtilityMember.NumberSet.ToDecimal(LedgerAmount.ToString());   //this.UtilityMember.NumberSet.ToDecimal(drRow["CONTRIBUTION_AMOUNT"].ToString());
                                                //voucherTransaction.ActualAmount = this.UtilityMember.NumberSet.ToDecimal(LedgerAmount.ToString()) * voucherTransaction.ExchangeRate;//this.UtilityMember.NumberSet.ToDecimal(LedgerAmount.ToString());
                                                //bharath for udeg double entry on 02/02/20226                                               
                                                if (doubleFlag == 1)
                                                {
                                                    voucherTransaction.ActualAmount = this.UtilityMember.NumberSet.ToDecimal(drRow["CONTRIBUTION_AMOUNT"].ToString());
                                                }
                                                else
                                                {
                                                    voucherTransaction.ActualAmount = this.UtilityMember.NumberSet.ToDecimal(LedgerAmount.ToString()) * voucherTransaction.ExchangeRate;//this.UtilityMember.NumberSet.ToDecimal(LedgerAmount.ToString());
                                                }
                                            }
                                            else
                                            {
                                                voucherTransaction.CurrencyCountryId = 0;
                                                voucherTransaction.ExchageCountryId = 0;
                                                voucherTransaction.ExchangeRate = 1;
                                                voucherTransaction.CalculatedAmount = 0;
                                                voucherTransaction.ActualAmount = 0;
                                                voucherTransaction.ContributionAmount = 0.00m;
                                            }

                                            voucherTransaction.LedgerLiveExchangeRate = 0;
                                            string Narrationvalue = string.Empty;
                                            if (this.AppSetting.IS_SDB_RMG)
                                            {
                                                //Narrationvalue = drRow["Narration"].ToString().Trim();
                                                // Bharath: Do not import narration for double-entry transactions.
                                                Narrationvalue = (doubleFlag == 1) ? string.Empty : drRow["Narration"].ToString().Trim();

                                                string UniqueNo = drRow["RECEIPTNO"].ToString().Trim();
                                                voucherTransaction.ClientMode = UniqueNo + " - " + drRow[CLIENT_TRANSACTION_MODE].ToString().Trim();

                                                //Narrationvalue = drRow["RECEIPTNO"].ToString().Trim();
                                                voucherTransaction.LedgerLiveExchangeRate = 1;
                                            }
                                            else
                                            {
                                                Narrationvalue = drRow["RECEIPTNO"].ToString().Trim();
                                            }

                                            if (Narrationvalue.Length > 500)
                                            {
                                                Narrationvalue = Narrationvalue.Substring(0, 500);
                                            }
                                            voucherTransaction.Narration = Narrationvalue.Equals("0") ? " " : Narrationvalue;
                                            voucherTransaction.Status = 1;
                                            voucherTransaction.FDGroupId = 0;
                                            voucherTransaction.CreatedBy = UtilityMember.NumberSet.ToInteger(voucherTransaction.LoginUserId);
                                            voucherTransaction.ModifiedBy = UtilityMember.NumberSet.ToInteger(voucherTransaction.LoginUserId);

                                            if (dtSaveVouchers.Columns.Contains("STUDENTINFO"))
                                            {
                                                voucherTransaction.NameAddress = drRow["STUDENTINFO"].ToString().Trim();
                                            }
                                            else
                                            {
                                                dtSaveVouchers.Columns.Add("STUDENTINFO", typeof(string));

                                            }

                                            //Voucher Trans Details
                                            DataView dvTrans = new DataView(dtTransaction);
                                            this.Transaction.TransInfo = dvTrans;

                                            DataView dvCashTrans = new DataView(dtCashTransaction);
                                            this.Transaction.CashTransInfo = dvCashTrans;

                                            resultArgs = voucherTransaction.SaveTransactions();
                                            // if (resultArgs.Success && resultArgs.RowsAffected > 0)
                                            if (resultArgs.Success)
                                            {
                                                // string Vdate = UtilityMember.DateSet.ToDate(dr[VOUCHER_DATE].ToString(), false).ToShortDateString();
                                                PostVoucherId = voucherTransaction.VoucherId > 0 ? voucherTransaction.VoucherId : 0;

                                                // Include the Datatable
                                                if (!dtTransStatus.Columns.Contains("VOUCHER_ID"))
                                                    dtTransStatus.Columns.Add("VOUCHER_ID", typeof(Int32));
                                                //if (!dtTransStatus.Columns.Contains("CLIENT_REFERENCE_ID"))
                                                //    dtTransStatus.Columns.Add("CLIENT_REFERENCE_ID", typeof(Int32));
                                                if (!dtTransStatus.Columns.Contains("CLIENT_REFERENCE_ID"))
                                                {
                                                    if (this.AppSetting.BranchOfficeCode == "sdbinminmshc")
                                                        dtTransStatus.Columns.Add("CLIENT_REFERENCE_ID", typeof(string));
                                                    else
                                                        dtTransStatus.Columns.Add("CLIENT_REFERENCE_ID", typeof(Int32));
                                                }
                                                if (!dtTransStatus.Columns.Contains("CLIENT_CODE"))
                                                    dtTransStatus.Columns.Add("CLIENT_CODE", typeof(string));

                                                DataRow drRowData = dtTransStatus.NewRow();
                                                drRowData[VOUCHER_ID] = PostVoucherId;
                                                // string[] ClientAutoRefId = voucherTransaction.ClientReferenceId.Split('@');
                                                // Chinna on  16/09/2022 to Identify the double Ledger duplication ( Temp)
                                                drRowData[CLIENT_REFERENCE_ID] = (CBFlag == "CASH") && (Defaultmode == ManagementMode) ? "1" : voucherTransaction.ClientReferenceId; // timebeing i added the value // voucherTransaction.ClientReferenceId; // ClientAutoRefId[1];
                                                string[] Codes = voucherTransaction.ClientCode.Split('-');
                                                string ConstructCode = Codes[0].ToString();
                                                drRowData[CLIENT_CODE] = ConstructCode;
                                                dtTransStatus.Rows.Add(drRowData);
                                                AcMELog.WriteLog("Ended Post Vouchers..");
                                            }
                                            else
                                            {
                                                PostVoucherId = -1;
                                                AcMELog.WriteLog("Failed in Posted Voucher:" + resultArgs.Message);
                                                // throw new Exception(string.Format("Error Parsing Column Name : {0}", resultArgs.Message));
                                                throw new Exception(resultArgs.Message);
                                            }
                                            dtTransStatus.AcceptChanges();
                                        }
                                    }
                                }
                            }
                            else
                            {
                                resultArgs.Message = "Online";
                            }
                        }
                    }
                    else
                    {
                        dtTransStatus = new DataTable();
                        dtTransStatus.AcceptChanges();
                    }
                }
                else
                {
                    AcMELog.WriteLog("Provided Data is invalid,try again..");
                    //Dinesh 04/07/2025
                    // this.ShowMessageBox("Provided Data is invalid,try again..");
                    this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERATE_PROVIDED_DATA_IS_INVALID_TRY_AGAIN));
                }
            }
            catch (Exception eg)
            {
                AcMELog.WriteLog("Problem in post vouchers : " + eg.Message.ToString());
                throw eg;
            }
            return dtTransStatus;
        }

        private DataSet UpdateCostCentre(int ledgerId, int CCId, double amount, int rowIndex, int doubleflagledger)
        {

            //string tableName = "0LDR" + LedgerId;
            //bharath 02/04/2026 for multi ledger cost centre
            string tableName;

            tableName = rowIndex + "LDR" + ledgerId;

            if (!dsCostCentre.Tables.Contains(tableName))
            {
                DataTable dtCC = new DataTable();
                dtCC.Columns.Add("COST_CENTRE_ID", typeof(Int32));
                dtCC.Columns.Add("AMOUNT", typeof(decimal));
                dtCC.TableName = tableName;
                dsCostCentre.Tables.Add(dtCC);
            }
            dsCostCentre.Tables[tableName].Rows.Add(CCId, amount);
            return dsCostCentre;

            // Clear only the table with the specific name (if it exists)
            //string tableName = "0LDR" + LedgerId;
            //if (dsCostCentre.Tables.Contains(tableName))
            //{
            //    dsCostCentre.Tables[tableName].Clear();
            //}
            //else
            //{
            //    DataTable dtCC = new DataTable();
            //    dtCC.Columns.Add("COST_CENTRE_ID", typeof(Int32));
            //    dtCC.Columns.Add("AMOUNT", typeof(decimal));
            //    dtCC.TableName = tableName;
            //    dsCostCentre.Tables.Add(dtCC);
            //}
            //dsCostCentre.Tables[tableName].Rows.Add(CCId, amount);
            //return dsCostCentre;
        }

        /// <summary>
        /// To Define the Payment Mode Like below
        /// </summary>
        /// <param name="clientmode"></param>
        /// <returns></returns>
        private string PaymentModeReturn(string clientmode)
        {
            // 1. Cash, 2. DD, 3. Cheque, 6. Online
            string ValueMode = "";
            if (clientmode == "1")
            {
                ValueMode = "Cash";
            }
            else if (clientmode == "2")
            {
                ValueMode = "DD";
            }
            else if (clientmode == "3")
            {
                ValueMode = "Cheque";
            }
            else if (clientmode == "6")
            {
                ValueMode = "Online";
            }
            return ValueMode;
        }

        /// <summary>
        /// Validate the Date
        /// </summary>
        /// <param name="dtdate"></param>
        /// <returns></returns>
        private bool IsValidVoucherDate(String dtdate)
        {
            bool IsValiddate = true;
            DateTime dtyearfrom;
            DateTime dtbookbeginfrom;
            DateTime dtYearTo;
            DateTime dtVoucherDate;

            dtyearfrom = UtilityMember.DateSet.ToDate(SettingProperty.Current.YearFrom, false);
            dtbookbeginfrom = UtilityMember.DateSet.ToDate(SettingProperty.Current.BookBeginFrom, false);
            dtYearTo = UtilityMember.DateSet.ToDate(SettingProperty.Current.YearTo, false);
            dtVoucherDate = UtilityMember.DateSet.ToDate(dtdate, false);

            //if ((dtVoucherDate < dtyearfrom || dtVoucherDate > dtYearTo))
            //{
            //    IsValiddate = false;
            //}
            if ((dtVoucherDate < dtbookbeginfrom && dtyearfrom > dtbookbeginfrom))
            {
                IsValiddate = false;
            }
            else if ((dtVoucherDate < dtbookbeginfrom && dtyearfrom < dtbookbeginfrom))
            {
                IsValiddate = false;
            }
            return IsValiddate;
        }

        /// <summary>
        /// To Construct Empty Datatable
        /// </summary>
        /// <param name="dtvoucher"></param>ss
        private void ConstructEmptyTransSource()
        {
            dtTransaction = new DataTable();
            dtTransaction.Columns.Add("SOURCE", typeof(string));
            dtTransaction.Columns.Add("LEDGER_ID", typeof(Int32));
            dtTransaction.Columns.Add("AMOUNT", typeof(decimal));
            dtTransaction.Columns.Add("CHEQUE_NO", typeof(string));
            dtTransaction.Columns.Add("MATERIALIZED_ON", typeof(DateTime));
            dtTransaction.Columns.Add("LEDGER_BALANCE", typeof(string));
            dtTransaction.Columns.Add("BUDGET_AMOUNT", typeof(string));
            dtTransaction.Columns.Add("TEMP_AMOUNT", typeof(decimal));
            dtTransaction.Columns.Add("NARRATION", typeof(string));
            dtTransaction.Columns.Add("EXCHANGE_RATE", typeof(decimal));
            dtTransaction.Columns.Add("LIVE_EXCHANGE_RATE", typeof(decimal));
            //bharath 27/02/2026
            dtTransaction.Columns.Add("CREDIT", typeof(decimal));
            dtTransaction.Columns.Add("DEBIT", typeof(decimal));
            //bharath 12/06/2026
            dtTransaction.Columns.Add("ACTUAL_AMOUNT", typeof(decimal));
        }

        /// <summary>
        /// To Construct the Datatable
        /// </summary>
        /// <param name="dtvoucher"></param>ss
        private bool ValidateCashBankColumnsSource(DataTable dtReceivedSource, string Date, string ManagementCode)
        {
            bool Isvalid = true;

            // double LedgerAmount = this.UtilityMember.NumberSet.ToDouble(dtReceivedSource.Compute("SUM(LEDGER_AMOUNT)", string.Empty).ToString());
            // double CashBankAmount = this.UtilityMember.NumberSet.ToDouble(dtReceivedSource.Compute("SUM(CASHBANK_AMOUNT)", string.Empty).ToString());

            if (string.IsNullOrEmpty(Date))
            {
                Isvalid = false;
                //Dinesh 04/07/2025
                //this.ShowMessageBox("Voucher Date is empty. Please Contact Acme.erp Team");
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_VOUCHER_DATE_EMPTY));
            }
            else if (string.IsNullOrEmpty(ManagementCode))
            {
                Isvalid = false;
                //Dinesh 04/07/2025
                //this.ShowMessageBox("Management code is empty. Please Contact Acme.erp Team");
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_MANAGEMENT_CODE_IS_EMPTY));
            }
            else if (!dtReceivedSource.Columns.Contains(VOUCHER_DATE))
            {
                Isvalid = false;
                //Dinesh 04/07/2025
                //this.ShowMessageBox("Voucher date does not exists. Please Contact Acme.erp Team");
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_VOUSHER_DATE_IS_DOSE_NOT_EXITS));
            }
            else if (!dtReceivedSource.Columns.Contains(PROJECT))
            {
                Isvalid = false;
                //Dinesh 04/07/2025
                // this.ShowMessageBox("Project Name does not exists. Please Contact Acme.erp Team");
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_PROJECT_NAME_DOES_NOT_EXISTES));
            }
            else if (!dtReceivedSource.Columns.Contains(VOUCHER_TYPE))
            {
                Isvalid = false;
                //Dinesh 04/07/2025
                //this.ShowMessageBox("Voucher Type does not exists.");
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_VOUCHER_TYPE_DOSE_NOT_EXITES));
            }
            if (!dtReceivedSource.Columns.Contains(GENERAL_LEDGER))
            {
                Isvalid = false;
                //Dinesh 04/07/2025
                //this.ShowMessageBox("General Ledger does not exists. Please Contact Acme.erp Team");
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_LEDGER_DOSE_NOT_EXISTS));
            }
            else if (!dtReceivedSource.Columns.Contains(LEDGER_AMOUNT))
            {
                Isvalid = false;
                //Dinesh 04/07/2025
                //this.ShowMessageBox("Ledger Amount does not exists. Please Contact Acme.erp Team");
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_LEDGER_AMOUNT_DOSE_NOT_EXISTS));
            }
            else if (!dtReceivedSource.Columns.Contains(CASHBANK_LEDGER))
            {
                Isvalid = false;
                //Dinesh 04/07/2025
                // this.ShowMessageBox("Cash/Bank Ledger does not exists.");
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_CASH_BANK_LEDGERS_DOSE));
            }
            else if (!dtReceivedSource.Columns.Contains(CASHBANK_AMOUNT))
            {
                Isvalid = false;
                //Dinesh 04/7/2025
                //this.ShowMessageBox("Cash/Bank Amount does not exists. Please Contact Acme.erp Team");
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_CASH_AND_BANK_PLEASE_CONTACT_ACME));

            }
            else if (!dtReceivedSource.Columns.Contains(BANK_REF_NO))
            {
                Isvalid = false;
                //Dinesh 04/07/2025
                //this.ShowMessageBox("Bank Reference No does not exists. Please Contact Acme.erp Team");
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_BANK_REFERENCE_NO_DOSE_NOT));
            }
            else if (!dtReceivedSource.Columns.Contains(MATERIALISED_ON))
            {
                Isvalid = false;
                //Dinesh 04/07/2025
                // this.ShowMessageBox("Materialised on does not exists. Please Contact Acme.erp Team");
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_METERALISED_ON_DOSE_NOT_EXISES));
            }
            else if (!dtReceivedSource.Columns.Contains(CLIENT_REFERENCE_ID))
            {
                Isvalid = false;
                //Dinesh 04/07/2025
                //this.ShowMessageBox("Third Party Reference Id does not exists. Please Contact Acme.erp Team");
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_THIRD_PARTY_DOSE_NOT_EXISTS));
            }

            //else if (this.UtilityMember.NumberSet.ToDouble(dtReceivedSource.Compute("SUM(LEDGER_AMOUNT)", "").ToString()) != this.UtilityMember.NumberSet.ToDouble(dtReceivedSource.Compute("SUM(CASHBANK_AMOUNT)", "").ToString()))
            //{
            //    Isvalid = false;
            //    this.ShowMessageBox("Provided Total voucher does have equal amount ");
            //}
            return Isvalid;
        }

        /// <summary>
        /// 
        /// </summary>
        private bool ValidateCashBankTransSource(string Project, string GeneralLedger, double LedgerAmount, string GeneralTransMode, string CashBankLedger, double CashBankAmount, string BankRefNo, string MaterializedOn, string CashBankTransMode, DateTime VoucherDate, string donorcountry = "", string voucherType = "", string LedgerAmountText = "", int ledgerFlag = 0, int doubleFlag = 0)
        {
            bool isValid = true;
            DataTable dtEmpty = new DataTable();
            dtTransaction = dtEmpty;
            ConstructEmptyTransSource();

            decimal exchangerate = 1;
            decimal liveexchangerate = 1;

            dtCashTransaction = dtEmpty;
            ConstructeEmptyCashSource();
            try
            {
                using (ProjectSystem projectsystem = new ProjectSystem())
                {
                    using (LedgerSystem ledgersystem = new LedgerSystem())
                    {
                        AcMELog.WriteLog("Fetch Project Id by Project started..");
                        AcMELog.WriteLog("Project Name  :" + Project);
                        resultArgs = projectsystem.FetchProjectIdByProjectName(Project);
                        AcMELog.WriteLog("Fetch Project Id by Project ended..");
                        if (!resultArgs.Success || resultArgs.DataSource.Sclar.ToInteger <= 0)
                        {
                            //Dinesh 07/07/2025 
                            //this.ShowMessageBox("Project does not exists");
                            this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_PROJECT_DOSE_NOT_EXISTS));

                            isValid = false;
                            AcMELog.WriteLog("Cash/Bank Ledger does not exists or not mapped with this project" + Project);
                        }
                        else
                        {
                            projectId = resultArgs.DataSource.Sclar.ToInteger;
                        }
                        //bharath 27/02/2026
                        // Handle Journal Voucher transactions (JN)
                        if (voucherType.Equals("JN", StringComparison.OrdinalIgnoreCase))
                        {
                            ledgersystem.ProjectId = projectId;
                            resultArgs = ledgersystem.FetchLedgerIdByLedgerName(GeneralLedger, false);
                            if (!resultArgs.Success || resultArgs.DataSource.Sclar.ToInteger <= 0)
                            {

                                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_MAPPED_WITH_CURRENT_PROJECT_DOES_NOT_LEDGER) + " " + GeneralLedger);

                                isValid = false;
                                AcMELog.WriteLog("Ledger does not exists or not mapped with this project." + GeneralLedger);
                            }
                            else
                            {
                                ledgerid = resultArgs.DataSource.Sclar.ToInteger;
                            }
                            int CRledger = ledgerid;


                            resultArgs = ledgersystem.FetchLedgerIdByLedgerName(CashBankLedger);
                            CashBankLedgerId = resultArgs.DataSource.Sclar.ToInteger;
                            int DRledger = CashBankLedgerId;

                            ledgeramount = LedgerAmount;

                            string SourceType = (GeneralTransMode.ToString().Equals("CR") || (GeneralTransMode.Equals("Cr"))) ? "1" : "2";
                            if (SettingProperty.Current.AllowMultiCurrency == 1)
                            {
                                dtTransaction.Rows.Add(SourceType, ledgerid, ledgeramount, "", DBNull.Value, "", "", 0.00, "", exchangerate, liveexchangerate, 0.00, LedgerAmount);
                                dtTransaction.Rows.Add(SourceType, ledgerid, CashBankAmount, "", DBNull.Value, "", "", 0.00, "", exchangerate, liveexchangerate, CashBankAmount, 0.00);
                            }
                            else
                            {
                                dtTransaction.Rows.Add(SourceType, CRledger, ledgeramount, "", DBNull.Value, "", "", 0.00, "", exchangerate, liveexchangerate, 0.00, LedgerAmount);
                                dtTransaction.Rows.Add(SourceType, DRledger, CashBankAmount, "", DBNull.Value, "", "", 0.00, "", exchangerate, liveexchangerate, CashBankAmount, 0.00);
                            }

                            // Cash Source
                            resultArgs = ledgersystem.FetchLedgerIdByLedgerName(CashBankLedger, false);

                            if (!resultArgs.Success || resultArgs.DataSource.Sclar.ToInteger <= 0)
                            {

                                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_CASH_BANK_LADGER_DOSE_NOT_MAPPED) + "  " + CashBankLedger);
                                isValid = false;
                                AcMELog.WriteLog("Cash/Bank Ledger does not exists or not mapped with this project" + CashBankLedger);
                            }
                            else
                            {
                                ledgerid = resultArgs.DataSource.Sclar.ToInteger;
                            }
                            ledgeramount = CashBankAmount;
                            chequeno = BankRefNo;
                            materialisedon = (this.UtilityMember.DateSet.ToDate(MaterializedOn, false));
                            string CashSourceType = (CashBankTransMode.Equals("CR") || (CashBankTransMode.Equals("Cr"))) ? "1" : "2";

                            if (SettingProperty.Current.AllowMultiCurrency == 1)
                            {
                                dtCashTransaction.Rows.Add(CashSourceType, ledgerflag, ledgerid, ledgeramount, chequeno,
                                    materialisedon.Equals(DateTime.MinValue) ? defVal : materialisedon,
                                    "", "", 0.00, exchangerate, liveexchangerate);
                            }
                            else
                            {
                                dtCashTransaction.Rows.Add(CashSourceType, ledgerflag, ledgerid, ledgeramount, chequeno,
                                    materialisedon.Equals(DateTime.MinValue) ? defVal : materialisedon,
                                    "", "", 0.00);
                            }
                        }
                        //bharath
                        // Handle multi-ledger transaction when sub-ledgers are present
                        else if (ledgerFlag == 1)
                        {
                            ledgersystem.ProjectId = projectId;
                            // Split ledger names and corresponding amounts for multi-ledger processing
                            string[] ledgers = (GeneralLedger ?? string.Empty)
                                .Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
                            string[] amountTexts = (LedgerAmountText ?? string.Empty)
                                .Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries);

                            string SourceType = (GeneralTransMode.ToString().Equals("CR") || (GeneralTransMode.Equals("Cr"))) ? "1" : "2";
                            double totalLedgerAmount = 0;
                            // Validate each ledger against the project and calculate the total ledger amount
                            for (int i = 0; i < ledgers.Length; i++)
                            {
                                string ledgerName = ledgers[i].Trim();
                                double amountForLedger = (i < amountTexts.Length)
                                    ? this.UtilityMember.NumberSet.ToDouble(amountTexts[i].Trim())
                                    : LedgerAmount;

                                if (amountForLedger == 0)
                                    continue;

                                resultArgs = ledgersystem.FetchLedgerIdByLedgerName(ledgerName, false);
                                if (!resultArgs.Success || resultArgs.DataSource.Sclar.ToInteger <= 0)
                                {

                                    this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_MAPPED_WITH_CURRENT_PROJECT_DOES_NOT_LEDGER) + " " + ledgerName);

                                    isValid = false;
                                    AcMELog.WriteLog("Ledger does not exists or not mapped with this project." + ledgerName);
                                    break;
                                }
                                else
                                {
                                    ledgerid = resultArgs.DataSource.Sclar.ToInteger;
                                }

                                ledgeramount = amountForLedger;
                                totalLedgerAmount += amountForLedger;

                                if (SettingProperty.Current.AllowMultiCurrency == 1)
                                {
                                    dtTransaction.Rows.Add(SourceType, ledgerid, ledgeramount, "", DBNull.Value, "", "", 0.00, "", exchangerate, liveexchangerate);
                                }
                                else
                                {
                                    dtTransaction.Rows.Add(SourceType, ledgerid, ledgeramount, "", DBNull.Value, "", "", 0.00, "");
                                }
                            }
                            // Assign the total of all ledger amounts to the main ledger amount
                            LedgerAmount = totalLedgerAmount;
                            // Cash Source
                            resultArgs = ledgersystem.FetchLedgerIdByLedgerName(CashBankLedger, true);

                            if (!resultArgs.Success || resultArgs.DataSource.Sclar.ToInteger <= 0)
                            {

                                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_CASH_BANK_LADGER_DOSE_NOT_MAPPED) + "  " + CashBankLedger);
                                isValid = false;
                                AcMELog.WriteLog("Cash/Bank Ledger does not exists or not mapped with this project" + CashBankLedger);
                            }
                            else
                            {
                                ledgerid = resultArgs.DataSource.Sclar.ToInteger;
                            }
                            ledgeramount = CashBankAmount;
                            chequeno = BankRefNo;
                            materialisedon = (this.UtilityMember.DateSet.ToDate(MaterializedOn, false));
                            string CashSourceType = (CashBankTransMode.Equals("CR") || (CashBankTransMode.Equals("Cr"))) ? "1" : "2";

                            if (SettingProperty.Current.AllowMultiCurrency == 1)
                            {
                                dtCashTransaction.Rows.Add(CashSourceType, ledgerflag, ledgerid, ledgeramount, chequeno,
                                    materialisedon.Equals(DateTime.MinValue) ? defVal : materialisedon,
                                    "", "", 0.00, exchangerate, liveexchangerate);
                            }
                            else
                            {
                                dtCashTransaction.Rows.Add(CashSourceType, ledgerflag, ledgerid, ledgeramount, chequeno,
                                    materialisedon.Equals(DateTime.MinValue) ? defVal : materialisedon,
                                    "", "", 0.00);
                            }
                        }
                        else if (doubleFlag == 1)
                        {
                            ledgersystem.ProjectId = projectId;
                            // Split ledger names and corresponding amounts for multi-ledger processing
                            string[] ledgers = (GeneralLedger ?? string.Empty)
                                .Split(new[] { '#' }, StringSplitOptions.RemoveEmptyEntries);
                            string[] amountTexts = (LedgerAmountText ?? string.Empty)
                                .Split(new[] { '#' }, StringSplitOptions.RemoveEmptyEntries);

                            // 🔹 Split transaction modes (CR / DR)
                            string[] transModes = (GeneralTransMode ?? string.Empty)
                                .Split(new[] { '#' }, StringSplitOptions.RemoveEmptyEntries);

                            //string SourceType = (GeneralTransMode.ToString().Equals("CR") || (GeneralTransMode.Equals("Cr"))) ? "1" : "2";
                            double totalLedgerAmount = 0;
                            double actualAmount = 0;

                            if (transModes.Length != ledgers.Length)
                            {
                                AcMELog.WriteLog("Mismatch between ledger count and transaction modes");
                            }

                            // Validate each ledger against the project and calculate the total ledger amount
                            for (int i = 0; i < ledgers.Length; i++)
                            {
                                string ledgerName = ledgers[i].Trim();
                                double amountForLedger = (i < amountTexts.Length)
                                    ? this.UtilityMember.NumberSet.ToDouble(amountTexts[i].Trim())
                                    : LedgerAmount;

                                if (amountForLedger == 0)
                                    continue;
                                string mode = (i < transModes.Length) ? transModes[i].Trim().ToUpper() : "DR";

                                string SourceType = (mode == "CR") ? "1" : "2";

                                resultArgs = ledgersystem.FetchLedgerIdByLedgerName(ledgerName, false);
                                if (!resultArgs.Success || resultArgs.DataSource.Sclar.ToInteger <= 0)
                                {

                                    this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_MAPPED_WITH_CURRENT_PROJECT_DOES_NOT_LEDGER) + " " + ledgerName);

                                    isValid = false;
                                    AcMELog.WriteLog("Ledger does not exists or not mapped with this project." + ledgerName);
                                    break;
                                }
                                else
                                {
                                    ledgerid = resultArgs.DataSource.Sclar.ToInteger;
                                }

                                ledgeramount = amountForLedger;
                                totalLedgerAmount += amountForLedger;
                                actualAmount = ledgeramount;
                                //ledgerRowIndices.Add(i);
                                //bharath ledger array
                                if (SettingProperty.Current.AllowMultiCurrency == 1)
                                {
                                    dtTransaction.Rows.Add(SourceType, ledgerid, ledgeramount, "", DBNull.Value, "", "", 0.00, "", exchangerate, liveexchangerate, 0.00, 0.00, actualAmount);
                                }
                                else
                                {
                                    dtTransaction.Rows.Add(SourceType, ledgerid, ledgeramount, "", DBNull.Value, "", "", 0.00, "");
                                }
                            }
                            // Assign the total of all ledger amounts to the main ledger amount
                            LedgerAmount = totalLedgerAmount;
                            // Cash Source
                            resultArgs = ledgersystem.FetchLedgerIdByLedgerName(CashBankLedger, true);

                            if (!resultArgs.Success || resultArgs.DataSource.Sclar.ToInteger <= 0)
                            {

                                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_CASH_BANK_LADGER_DOSE_NOT_MAPPED) + "  " + CashBankLedger);
                                isValid = false;
                                AcMELog.WriteLog("Cash/Bank Ledger does not exists or not mapped with this project" + CashBankLedger);
                            }
                            else
                            {
                                ledgerid = resultArgs.DataSource.Sclar.ToInteger;
                            }
                            ledgeramount = CashBankAmount;
                            chequeno = BankRefNo;
                            materialisedon = (this.UtilityMember.DateSet.ToDate(MaterializedOn, false));
                            string CashSourceType = (CashBankTransMode.Equals("CR") || (CashBankTransMode.Equals("Cr"))) ? "1" : "2";

                            if (SettingProperty.Current.AllowMultiCurrency == 1)
                            {
                                dtCashTransaction.Rows.Add(CashSourceType, ledgerflag, ledgerid, ledgeramount, chequeno,
                                    materialisedon.Equals(DateTime.MinValue) ? defVal : materialisedon,
                                    "", "", 0.00, exchangerate, liveexchangerate);
                            }
                            else
                            {
                                dtCashTransaction.Rows.Add(CashSourceType, ledgerflag, ledgerid, ledgeramount, chequeno,
                                    materialisedon.Equals(DateTime.MinValue) ? defVal : materialisedon,
                                    "", "", 0.00);
                            }
                        }
                        //Process normal transaction without sub-ledgers
                        else
                        {
                            // Transaction Source
                            ledgersystem.ProjectId = projectId;
                            resultArgs = ledgersystem.FetchLedgerIdByLedgerName(GeneralLedger, false);
                            if (!resultArgs.Success || resultArgs.DataSource.Sclar.ToInteger <= 0)
                            {
                                //Dinesh 07/07/2025
                                //this.ShowMessageBox("Ledger does not exists or not mapped with this project." + " " + GeneralLedger);
                                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_MAPPED_WITH_CURRENT_PROJECT_DOES_NOT_LEDGER) + " " + GeneralLedger);

                                isValid = false;
                                AcMELog.WriteLog("Ledger does not exists or not mapped with this project." + GeneralLedger);
                            }
                            else
                            {
                                ledgerid = resultArgs.DataSource.Sclar.ToInteger;
                            }

                            ledgeramount = LedgerAmount;
                            string SourceType = (GeneralTransMode.ToString().Equals("CR") || (GeneralTransMode.Equals("Cr"))) ? "1" : "2";
                            if (SettingProperty.Current.AllowMultiCurrency == 1)
                            {
                                dtTransaction.Rows.Add(SourceType, ledgerid, ledgeramount, "", DBNull.Value, "", "", 0.00, "", exchangerate, liveexchangerate);
                            }
                            else
                            {
                                dtTransaction.Rows.Add(SourceType, ledgerid, ledgeramount, "", DBNull.Value, "", "", 0.00, "");
                            }

                            // Cash Source
                            resultArgs = ledgersystem.FetchLedgerIdByLedgerName(CashBankLedger, true);

                            if (!resultArgs.Success || resultArgs.DataSource.Sclar.ToInteger <= 0)
                            {
                                //Dines 07/07/2025
                                //this.ShowMessageBox("Cash/Bank Ledger does not exists or not mapped with this project" + " " + CashBankLedger);
                                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_CASH_BANK_LADGER_DOSE_NOT_MAPPED) + "  " + CashBankLedger);
                                isValid = false;
                                AcMELog.WriteLog("Cash/Bank Ledger does not exists or not mapped with this project" + CashBankLedger);
                            }
                            else
                            {
                                ledgerid = resultArgs.DataSource.Sclar.ToInteger;
                            }
                            ledgeramount = CashBankAmount;
                            if (CashBankAmount == LedgerAmount)
                            {
                                chequeno = BankRefNo;
                                materialisedon = (this.UtilityMember.DateSet.ToDate(MaterializedOn, false));
                                string CashSourceType = (CashBankTransMode.Equals("CR") || (CashBankTransMode.Equals("Cr"))) ? "1" : "2";

                                if (SettingProperty.Current.AllowMultiCurrency == 1)
                                {
                                    dtCashTransaction.Rows.Add(CashSourceType, ledgerflag, ledgerid, ledgeramount, chequeno,
                                        materialisedon.Equals(DateTime.MinValue) ? defVal : materialisedon,
                                        "", "", 0.00, exchangerate, liveexchangerate);
                                }
                                else
                                {
                                    dtCashTransaction.Rows.Add(CashSourceType, ledgerflag, ledgerid, ledgeramount, chequeno,
                                        materialisedon.Equals(DateTime.MinValue) ? defVal : materialisedon,
                                        "", "", 0.00);
                                }
                            }
                            else
                            {
                                isValid = false;
                                this.ShowMessageBox("Amount mismatch for Ledger : " + GeneralLedger + "\nLedger Amount : " + LedgerAmount.ToString("N2") + "\nCash/Bank Amount : " + CashBankAmount.ToString("N2"));
                            }
                        }
                    }
                }
                if (!IsValidVoucherDate(VoucherDate.ToString()))
                {
                    isValid = false;
                    //Dinesh 07/07/2025
                    //  this.ShowMessageBox("Provided voucher date does not fall between the transaction period");
                    this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_PROVIDED_VOUCHER_DATA_FALL_TRANSACTION_PERIOD));
                }
                else if (CashBankAmount <= 0)
                {
                    isValid = false;
                    //Dinesh 07/07/2025
                    //this.ShowMessageBox("Provided Cash/Bank amount is invalid.");
                    this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_PROVIDED_CASH_BANK_AMOUT_INVALID));
                }
                else if (LedgerAmount <= 0)
                {
                    isValid = false;
                    //Dinesh 07/072025
                    // this.ShowMessageBox("Provided ledger amount is invalid.");
                    this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_PROVIDED_LEDGER_AMOUNT_IS_INVALID));
                }

                else if (GeneralTransMode.Equals("CR") && CashBankTransMode.Equals("CR") ||
                   GeneralTransMode.Equals("DR") && CashBankTransMode.Equals("DR"))
                {
                    isValid = false;
                    //Dinesh 07/07/2025
                    //this.ShowMessageBox("Provided voucher does not have valid transaction entry (CR/DR)");
                    this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_PROVIDED_VOUCHER_DOES_NOT_VALID_TRANSACTION_ENTRY_CR_DR));

                }
                else if (!(ledgeramount.Equals(CashBankAmount)))
                {
                    isValid = false;
                    //Dinesh 
                    // this.ShowMessageBox("Provided voucher does have equal amount ");
                    this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_PROVIDED_VOUCHER_DOSE_HAVE_EQUAL_AMOUNT));
                }
                else if (!string.IsNullOrEmpty(donorcountry))
                {
                    int countryid = GetCountryId(donorcountry);
                    if (countryid == 0)
                    {
                        isValid = false;
                        //Dinesh 07/07/2025
                        //this.ShowMessageBox("Country is empty" + donorcountry);
                        this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_THE_COUNTRY_NAME_IS_EMPTY) + donorcountry);
                    }
                }

                //else if (this.UtilityMember.DateSet.ToDate(MaterializedOn, false) < VoucherDate && (!string.IsNullOrEmpty(MaterializedOn)))
                //{
                //    isValid = false;
                //    this.ShowMessageBox("Provided Settlement date greater than then the Voucher date");
                //}
                // time being i commanded it  has be removed
                //else if ((!MaterializedOn.Equals("")) && VoucherDate > this.UtilityMember.DateSet.ToDate(MaterializedOn, false))
                //{
                //    isValid = false;
                //    this.ShowMessageBox("Voucher date greater than the materilized date");
                //}

            }
            catch (Exception ex)
            {
                AcMELog.WriteLog(ex.ToString());
            }
            return isValid;
        }

        /// <summary>
        /// 
        /// </summary>
        private bool FillCashBankTransSource(string Project, string GeneralLedger, double LedgerAmount, string GeneralTransMode, string CashBankLedger, double CashBankAmount, string BankRefNo, string MatOn, string CashBankTransMode, DateTime VoucherDate, decimal Exchangera, string voucherType = "", string LedgerAmountText = "", string ledgernarration = "", int ledgerFlag = 0, int doubleFlag = 0)
        {
            bool isValid = true;
            DataTable dtEmpty = new DataTable();
            dtTransaction = dtEmpty;
            ConstructEmptyTransSource();

            decimal exchangerate = Exchangera;
            decimal liveexchange = 1;
            dtCashTransaction = dtEmpty;
            ConstructeEmptyCashSource();
            try
            {
                using (ProjectSystem projectsystem = new ProjectSystem())
                {
                    using (LedgerSystem ledgersystem = new LedgerSystem())
                    {
                        AcMELog.WriteLog("Projects  :" + Project);
                        resultArgs = projectsystem.FetchProjectIdByProjectName(Project);
                        if (resultArgs.Success || resultArgs.DataSource.Sclar.ToInteger > 0)
                        {
                            projectId = resultArgs.DataSource.Sclar.ToInteger;
                        }

                        //bharath 27/02/2026
                        // Handle Journal Voucher transactions (JN)
                        if (voucherType.Equals("JN", StringComparison.OrdinalIgnoreCase))
                        {
                            ledgersystem.ProjectId = projectId;
                            resultArgs = ledgersystem.FetchLedgerIdByLedgerName(GeneralLedger, false);
                            if (resultArgs.Success || resultArgs.DataSource.Sclar.ToInteger > 0)
                            {
                                ledgerid = resultArgs.DataSource.Sclar.ToInteger;
                            }
                            int CRledger = ledgerid;

                            resultArgs = ledgersystem.FetchLedgerIdByLedgerName(CashBankLedger);
                            CashBankLedgerId = resultArgs.DataSource.Sclar.ToInteger;
                            int DRledger = CashBankLedgerId;


                            ledgeramount = LedgerAmount;
                            string SourceType = (GeneralTransMode.ToString().Equals("CR") || (GeneralTransMode.Equals("Cr"))) ? "1" : "2";
                            string secondSourceType = (CashBankTransMode.ToString().Equals("CR", StringComparison.OrdinalIgnoreCase)) ? "1" : "2";
                            // Assign ledger amount to Credit or Debit column based on General Transaction Mode
                            //bharath
                            if (SettingProperty.Current.AllowMultiCurrency == 1)
                            {
                                dtTransaction.Rows.Add(SourceType, ledgerid, ledgeramount, "", DBNull.Value, "", "", 0.00, "", exchangerate, liveexchange, LedgerAmount, CashBankAmount);
                            }
                            else
                            {
                                dtTransaction.Rows.Add(SourceType, CRledger, ledgeramount, "", DBNull.Value, "", "", 0.00, "", exchangerate, liveexchange, GeneralTransMode.Equals("CR", StringComparison.OrdinalIgnoreCase) ? LedgerAmount : 0.00, GeneralTransMode.Equals("DR", StringComparison.OrdinalIgnoreCase) ? LedgerAmount : 0.00);
                                dtTransaction.Rows.Add(SourceType, DRledger, ledgeramount, "", DBNull.Value, "", "", 0.00, "", exchangerate, liveexchange, CashBankTransMode.Equals("CR", StringComparison.OrdinalIgnoreCase) ? CashBankAmount : 0.00, CashBankTransMode.Equals("DR", StringComparison.OrdinalIgnoreCase) ? CashBankAmount : 0.00);

                            }

                            // Cash Source
                            resultArgs = ledgersystem.FetchLedgerIdByLedgerName(CashBankLedger, false);

                            if (resultArgs.Success || resultArgs.DataSource.Sclar.ToInteger > 0)
                            {
                                //  ledgerid = resultArgs.DataSource.Sclar.ToInteger;
                                CashBankLedgerId = resultArgs.DataSource.Sclar.ToInteger;
                            }
                            ledgeramount = CashBankAmount;
                            chequeno = BankRefNo;
                            materialisedon = (this.UtilityMember.DateSet.ToDate(MatOn, false));
                            string CashSourceType = (CashBankTransMode.Equals("CR") || (CashBankTransMode.Equals("Cr"))) ? "1" : "2";
                            if (SettingProperty.Current.AllowMultiCurrency == 1)
                            {
                                dtCashTransaction.Rows.Add(CashSourceType, ledgerflag, CashBankLedgerId, ledgeramount, chequeno,
                                    materialisedon.Equals(DateTime.MinValue) || MatOn.Equals(string.Empty) ? defVal : materialisedon,
                                    "", "", 0.00, exchangerate, liveexchange);
                            }
                            else
                            {
                                dtCashTransaction.Rows.Add(CashSourceType, ledgerflag, CashBankLedgerId, ledgeramount, chequeno,
                                                               materialisedon.Equals(DateTime.MinValue) || MatOn.Equals(string.Empty) ? defVal : materialisedon,
                                                               "", "", 0.00);
                            }
                        }
                        //bharath 
                        // Handle multi-ledger transaction when sub-ledgers are present
                        else if (ledgerFlag == 1)
                        {
                            ledgersystem.ProjectId = projectId;
                            // Split ledger names and corresponding amounts for multi-ledger processing
                            string[] ledgers = (GeneralLedger ?? string.Empty)
                                .Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
                            string[] amountTexts = (LedgerAmountText ?? string.Empty)
                                .Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries);

                            string SourceType = (GeneralTransMode.ToString().Equals("CR") || (GeneralTransMode.Equals("Cr"))) ? "1" : "2";
                            double totalLedgerAmount = 0;
                            // Validate each ledger against the project and calculate the total ledger amount
                            for (int i = 0; i < ledgers.Length; i++)
                            {
                                string ledgerName = ledgers[i].Trim();
                                double amountForLedger = (i < amountTexts.Length)
                                    ? this.UtilityMember.NumberSet.ToDouble(amountTexts[i].Trim())
                                    : LedgerAmount;

                                if (amountForLedger == 0)
                                    continue;


                                resultArgs = ledgersystem.FetchLedgerIdByLedgerName(ledgerName, false);
                                if (!resultArgs.Success || resultArgs.DataSource.Sclar.ToInteger <= 0)
                                {

                                    this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_MAPPED_WITH_CURRENT_PROJECT_DOES_NOT_LEDGER) + " " + ledgerName);

                                    isValid = false;
                                    AcMELog.WriteLog("Ledger does not exists or not mapped with this project." + ledgerName);
                                    break;
                                }
                                else
                                {
                                    ledgerid = resultArgs.DataSource.Sclar.ToInteger;
                                }

                                ledgeramount = amountForLedger;
                                totalLedgerAmount += amountForLedger;

                                if (SettingProperty.Current.AllowMultiCurrency == 1)
                                {

                                    dtTransaction.Rows.Add(SourceType, ledgerid, ledgeramount, "", DBNull.Value, "", "", 0.00, "", exchangerate, liveexchange);
                                }
                                else
                                {
                                    dtTransaction.Rows.Add(SourceType, ledgerid, ledgeramount, "", DBNull.Value, "", "", 0.00, "");
                                }
                            }
                            // Assign the total of all ledger amounts to the main ledger amount
                            LedgerAmount = totalLedgerAmount;
                            resultArgs = ledgersystem.FetchLedgerIdByLedgerName(CashBankLedger, true);

                            if (resultArgs.Success || resultArgs.DataSource.Sclar.ToInteger > 0)
                            {
                                //  ledgerid = resultArgs.DataSource.Sclar.ToInteger;
                                CashBankLedgerId = resultArgs.DataSource.Sclar.ToInteger;
                            }
                            ledgeramount = CashBankAmount;
                            chequeno = BankRefNo;
                            materialisedon = (this.UtilityMember.DateSet.ToDate(MatOn, false));
                            string CashSourceType = (CashBankTransMode.Equals("CR") || (CashBankTransMode.Equals("Cr"))) ? "1" : "2";
                            if (SettingProperty.Current.AllowMultiCurrency == 1)
                            {
                                dtCashTransaction.Rows.Add(CashSourceType, ledgerflag, CashBankLedgerId, ledgeramount, chequeno,
                                    materialisedon.Equals(DateTime.MinValue) || MatOn.Equals(string.Empty) ? defVal : materialisedon,
                                    "", "", 0.00, exchangerate, liveexchange);
                            }
                            else
                            {
                                dtCashTransaction.Rows.Add(CashSourceType, ledgerflag, CashBankLedgerId, ledgeramount, chequeno,
                                                               materialisedon.Equals(DateTime.MinValue) || MatOn.Equals(string.Empty) ? defVal : materialisedon,
                                                               "", "", 0.00);
                            }
                        }
                        else if (doubleFlag == 1)
                        {
                            ledgersystem.ProjectId = projectId;
                            // Split ledger names and corresponding amounts for multi-ledger processing
                            string[] ledgers = (GeneralLedger ?? string.Empty)
                                .Split(new[] { '#' }, StringSplitOptions.RemoveEmptyEntries);
                            string[] amountTexts = (LedgerAmountText ?? string.Empty)
                                .Split(new[] { '#' }, StringSplitOptions.RemoveEmptyEntries);

                            //  Split transaction modes (CR / DR)
                            string[] transModes = (GeneralTransMode ?? string.Empty)
                                .Split(new[] { '#' }, StringSplitOptions.RemoveEmptyEntries);

                            string[] ledgernarrations = (ledgernarration ?? string.Empty)
                                 .Split(new[] { '#' }, StringSplitOptions.RemoveEmptyEntries);

                            //string SourceType = (GeneralTransMode.ToString().Equals("CR") || (GeneralTransMode.Equals("Cr"))) ? "1" : "2";
                            double totalLedgerAmount = 0;
                            double actualAmount = 0;

                            if (transModes.Length != ledgers.Length)
                            {
                                AcMELog.WriteLog("Mismatch between ledger count and transaction modes");
                            }
                            Func<string, double> ParseAmount = (value) =>
                            {
                                if (string.IsNullOrWhiteSpace(value))
                                    return 0;

                                value = value.Trim().Replace(",", "");

                                double result;
                                if (!double.TryParse(value, System.Globalization.NumberStyles.Any,
                                    System.Globalization.CultureInfo.InvariantCulture, out result)) // 🔥 NEW: FIX decimal issue
                                {
                                    AcMELog.WriteLog("Invalid amount format: " + value);
                                    return 0;
                                }

                                return result;
                            };
                            ledgerIds = new List<int>();
                            ledgerRowIndices = new List<int>();
                            // Validate each ledger against the project and calculate the total ledger amount
                            for (int i = 0; i < ledgers.Length; i++)
                            {
                                string ledgerName = ledgers[i].Trim();
                                //ledger narration
                                string narrationForLedger = (i < ledgernarrations.Length) ? ledgernarrations[i].Trim() : "";

                                double amountForLedger = (i < amountTexts.Length) ? ParseAmount(amountTexts[i]) : 0;

                                if (amountForLedger == 0)
                                    continue;
                                string mode = (i < transModes.Length) ? transModes[i].Trim().ToUpper() : "DR";

                                string SourceType = (mode == "CR") ? "1" : "2";

                                resultArgs = ledgersystem.FetchLedgerIdByLedgerName(ledgerName, false);
                                if (!resultArgs.Success || resultArgs.DataSource.Sclar.ToInteger <= 0)
                                {

                                    this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERAL_MAPPED_WITH_CURRENT_PROJECT_DOES_NOT_LEDGER) + " " + ledgerName);

                                    isValid = false;
                                    AcMELog.WriteLog("Ledger does not exists or not mapped with this project." + ledgerName);
                                    break;
                                }
                                else
                                {
                                    ledgerid = resultArgs.DataSource.Sclar.ToInteger;
                                    ledgerIds.Add(ledgerid);
                                }

                                ledgeramount = amountForLedger;
                                totalLedgerAmount += amountForLedger;
                                actualAmount = ledgeramount;
                                ledgerRowIndices.Add(i);
                                if (SettingProperty.Current.AllowMultiCurrency == 1)
                                {
                                    dtTransaction.Rows.Add(SourceType, ledgerid, ledgeramount, "", DBNull.Value, "", "", 0.00, narrationForLedger, exchangerate, liveexchange, 0.00, 0.00, actualAmount);
                                }
                                else
                                {
                                    dtTransaction.Rows.Add(SourceType, ledgerid, ledgeramount, "", DBNull.Value, "", "", 0.00, "");

                                }
                            }
                            // Cash Source
                            resultArgs = ledgersystem.FetchLedgerIdByLedgerName(CashBankLedger, true);

                            if (resultArgs.Success || resultArgs.DataSource.Sclar.ToInteger > 0)
                            {
                                //  ledgerid = resultArgs.DataSource.Sclar.ToInteger;
                                CashBankLedgerId = resultArgs.DataSource.Sclar.ToInteger;
                            }
                            ledgeramount = CashBankAmount;
                            chequeno = BankRefNo;
                            materialisedon = (this.UtilityMember.DateSet.ToDate(MatOn, false));
                            string CashSourceType = (CashBankTransMode.Equals("CR") || (CashBankTransMode.Equals("Cr"))) ? "1" : "2";
                            if (SettingProperty.Current.AllowMultiCurrency == 1)
                            {
                                dtCashTransaction.Rows.Add(CashSourceType, ledgerflag, CashBankLedgerId, ledgeramount, chequeno,
                                    materialisedon.Equals(DateTime.MinValue) || MatOn.Equals(string.Empty) ? defVal : materialisedon,
                                    "", "", 0.00, exchangerate, liveexchange);
                            }
                            else
                            {
                                dtCashTransaction.Rows.Add(CashSourceType, ledgerflag, CashBankLedgerId, ledgeramount, chequeno,
                                                               materialisedon.Equals(DateTime.MinValue) || MatOn.Equals(string.Empty) ? defVal : materialisedon,
                                                               "", "", 0.00);
                            }

                        }
                        //Process normal transaction without sub-ledgers
                        else
                        {
                            // Transaction Source
                            ledgersystem.ProjectId = projectId;
                            resultArgs = ledgersystem.FetchLedgerIdByLedgerName(GeneralLedger, false);
                            if (resultArgs.Success || resultArgs.DataSource.Sclar.ToInteger > 0)
                            {
                                ledgerid = resultArgs.DataSource.Sclar.ToInteger;
                            }

                            ledgeramount = LedgerAmount;
                            string SourceType = (GeneralTransMode.ToString().Equals("CR") || (GeneralTransMode.Equals("Cr"))) ? "1" : "2";

                            if (SettingProperty.Current.AllowMultiCurrency == 1)
                            {
                                dtTransaction.Rows.Add(SourceType, ledgerid, ledgeramount, "", DBNull.Value, "", "", 0.00, "", exchangerate, liveexchange);
                            }
                            else
                            {
                                dtTransaction.Rows.Add(SourceType, ledgerid, ledgeramount, "", DBNull.Value, "", "", 0.00, "");

                            }

                            // Cash Source
                            resultArgs = ledgersystem.FetchLedgerIdByLedgerName(CashBankLedger, true);

                            if (resultArgs.Success || resultArgs.DataSource.Sclar.ToInteger > 0)
                            {
                                //  ledgerid = resultArgs.DataSource.Sclar.ToInteger;
                                CashBankLedgerId = resultArgs.DataSource.Sclar.ToInteger;
                            }
                            ledgeramount = CashBankAmount;
                            chequeno = BankRefNo;
                            materialisedon = (this.UtilityMember.DateSet.ToDate(MatOn, false));
                            string CashSourceType = (CashBankTransMode.Equals("CR") || (CashBankTransMode.Equals("Cr"))) ? "1" : "2";
                            if (SettingProperty.Current.AllowMultiCurrency == 1)
                            {
                                dtCashTransaction.Rows.Add(CashSourceType, ledgerflag, CashBankLedgerId, ledgeramount, chequeno,
                                    materialisedon.Equals(DateTime.MinValue) || MatOn.Equals(string.Empty) ? defVal : materialisedon,
                                    "", "", 0.00, exchangerate, liveexchange);
                            }
                            else
                            {
                                dtCashTransaction.Rows.Add(CashSourceType, ledgerflag, CashBankLedgerId, ledgeramount, chequeno,
                                                               materialisedon.Equals(DateTime.MinValue) || MatOn.Equals(string.Empty) ? defVal : materialisedon,
                                                               "", "", 0.00);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                AcMELog.WriteLog(ex.ToString());
            }
            return isValid;
        }

        private int InserFetchIdtDonorName(string donorName, string DonorCountry, string DonorAddress)
        {
            int DonorId = 0;
            try
            {
                using (Bosco.Model.UIModel.Master.DonorAuditorSystem donorSystem = new Bosco.Model.UIModel.Master.DonorAuditorSystem())
                {
                    AcMELog.WriteLog("Donor Started");
                    donorSystem.Name = donorName;
                    resultArgs = donorSystem.GetDonorIdName();
                    DonorId = resultArgs.DataSource.Sclar.ToInteger;
                    if (resultArgs.DataSource.Sclar.ToInteger == 0)
                    {
                        donorSystem.Address = "NA";
                        donorSystem.Type = 1;
                        donorSystem.Isactive = 1;
                        donorSystem.IsDonor = true;
                        //using (CountrySystem countrysystem = new CountrySystem())
                        //{
                        //    donorSystem.CountryId =  countrysystem.GetCountryId(DonorCountry);
                        //}

                        donorSystem.CountryId = GetCountryId(DonorCountry);

                        resultArgs = donorSystem.SaveDonorAuditor();
                        if (resultArgs.Success)
                        {
                            DonorId = this.UtilityMember.NumberSet.ToInteger(resultArgs.RowUniqueId.ToString());
                            MapDonor(ProjectId, DonorId);
                        }
                        if (!resultArgs.Success)
                        {
                            resultArgs.Message = "Save in Donor: " + resultArgs.Message;
                        }
                    }
                    else
                    {
                        if (DonorId != 0)
                        {
                            //bharath 23/01/2026 donor country update
                            int newCountryId = GetCountryId(DonorCountry);
                            using (Bosco.Model.UIModel.Master.DonorAuditorSystem existingDonorSystem = new Bosco.Model.UIModel.Master.DonorAuditorSystem(DonorId))
                            {
                                int existingCountryId = existingDonorSystem.CountryId;

                                if (newCountryId != 0 && newCountryId != existingCountryId)
                                {
                                    existingDonorSystem.CountryId = newCountryId;
                                    existingDonorSystem.DonAudId = DonorId;
                                    resultArgs = existingDonorSystem.SaveDonorAuditor();
                                }
                            }
                            if (resultArgs.Success && isDonorMappedProject(ProjectId, DonorId) == 0)
                            {
                                MapDonor(ProjectId, DonorId);
                            }
                        }
                    }
                    if (!resultArgs.Success)
                    {
                        resultArgs.Message = "Problem in getting Donor: " + resultArgs.Message;
                    }
                }
            }
            catch (Exception ex)
            {
                resultArgs.Message = "Exception in Insert Donor. " + ex.ToString();
                AcMELog.WriteLog(ex.Message);
            }
            finally
            {
                if (resultArgs.Success)
                {
                    AcMELog.WriteLog("Donor Saved");
                }
            }
            return DonorId;
        }

        private int GetCountryId(string CountryName)
        {
            int countryId = 0;
            using (CountrySystem countrysystem = new CountrySystem())
            {
                countryId = countrysystem.GetCountryId(CountryName);
            }
            return countryId;
        }
        private void MapDonor(int ProId, int DonId)
        {
            using (MappingSystem mapp = new MappingSystem())
            {
                mapp.ProjectId = ProId;
                mapp.DonorId = DonId;
                resultArgs = mapp.MapDonorTransaction();
                if (!resultArgs.Success)
                {
                    resultArgs.Message = "Problem in Mapping the Donor" + resultArgs.Message;
                }
            }
        }

        private int isDonorMappedProject(int ProId, int DonId)
        {
            int DonorId = 0;
            using (MappingSystem mapp = new MappingSystem())
            {
                mapp.ProjectId = ProId;
                mapp.DonorId = DonId;
                resultArgs = mapp.CheckDonorMapped();
                if (resultArgs.Success)
                {
                    DonorId = resultArgs.DataSource.Sclar.ToInteger;
                }
                if (!resultArgs.Success)
                {
                    resultArgs.Message = "Problem in Mapping the Donor" + resultArgs.Message;
                }
            }
            return DonorId;
        }

        public int InsertFetchFCPurpose(string FCPurpose)
        {
            int PurposeId = 0;
            try
            {
                AcMELog.WriteLog("FC Purpose Started");
                using (PurposeSystem purposeSystem = new PurposeSystem())
                {
                    purposeSystem.purposeCode = string.Empty;
                    purposeSystem.PurposeHead = FCPurpose;
                    if (!string.IsNullOrEmpty(FCPurpose))
                    {
                        resultArgs = purposeSystem.isPurposeExists(FCPurpose);
                        PurposeId = resultArgs.DataSource.Sclar.ToInteger;
                        if (resultArgs.Success && PurposeId == 0)
                        {
                            resultArgs = purposeSystem.SavePurposeDetails();
                            if (resultArgs.Success)
                            {
                                PurposeId = this.UtilityMember.NumberSet.ToInteger(resultArgs.RowUniqueId.ToString());
                                MappPurpose(ProjectId, PurposeId);
                            }
                            if (!resultArgs.Success)
                            {
                                resultArgs.Message = "Problem in Save Purpose: " + resultArgs.Message;
                            }
                        }
                        else
                        {
                            if (PurposeId != 0)
                            {
                                purposeSystem.PurposeId = PurposeId;
                                purposeSystem.ProjectId = ProjectId;
                                resultArgs = purposeSystem.CheckPurposeMapped();
                                if (resultArgs.Success && resultArgs.DataSource.Sclar.ToInteger == 0)
                                {
                                    MappPurpose(ProjectId, PurposeId);
                                }
                            }
                        }

                        if (!resultArgs.Success)
                        {
                            resultArgs.Message = "Problem in getting Purpose: " + resultArgs.Message;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                resultArgs.Message = "Exception in Insert FC purposes. " + ex.ToString();
                AcMELog.WriteLog(ex.Message);
            }
            finally { }
            if (resultArgs.Success)
            {
                AcMELog.WriteLog("FC Purpose Saved");
            }
            return PurposeId;
        }

        private void MappPurpose(int ProId, int PurId)
        {
            using (MappingSystem mapp = new MappingSystem())
            {
                mapp.ProjectId = ProId;
                mapp.FCPurposeIDs = PurId.ToString();
                resultArgs = mapp.MapPurposeTransaction();
                if (!resultArgs.Success)
                {
                    resultArgs.Message = "Problem in Mapping the Purpose" + resultArgs.Message;
                }
            }
        }

        public int InsertCostCentreCategory(string CostCentreCategory, string costCenterCategoryUedId)
        {
            int CostCentreCategoryId = 0;
            try
            {
                AcMELog.WriteLog("Cost Centre Category Started");
                using (CostCentreCategorySystem costcentrecategory = new CostCentreCategorySystem())
                {
                    costcentrecategory.CostCentreCategoryName = CostCentreCategory;
                    if (!string.IsNullOrEmpty(CostCentreCategory))
                    {
                        costcentrecategory.CostCentreCategoryName = CostCentreCategory;
                        //bharath 21/01/2026
                        //resultArgs = costcentrecategory.IsCostCentreCategoryExists();
                        //CostCentreCategoryId = resultArgs.DataSource.Sclar.ToInteger;
                        if (!string.IsNullOrEmpty(costCenterCategoryUedId))
                        {
                            int apiCategoryId = this.UtilityMember.NumberSet.ToInteger(costCenterCategoryUedId);
                            if (apiCategoryId > 0)
                            {
                                resultArgs = costcentrecategory.IsCostCentreCategoryExistsByApiId(apiCategoryId);
                                CostCentreCategoryId = resultArgs.DataSource.Sclar.ToInteger;
                            }
                        }
                        //if (resultArgs.Success && CostCentreCategoryId == 0)
                        //{
                        //    resultArgs = costcentrecategory.SaveCostCentreCatogoryDetails();


                        if (resultArgs.Success && CostCentreCategoryId == 0)
                        {
                            // Set API ID if provided
                            if (!string.IsNullOrEmpty(costCenterCategoryUedId))
                            {
                                int apiCategoryId = this.UtilityMember.NumberSet.ToInteger(costCenterCategoryUedId);
                                if (apiCategoryId > 0)
                                {
                                    costcentrecategory.ApiCostCentreCategoryId = apiCategoryId;
                                }
                            }

                            resultArgs = costcentrecategory.SaveCostCentreCatogoryDetailsapi();
                            if (resultArgs.Success)
                            {
                                CostCentreCategoryId = this.UtilityMember.NumberSet.ToInteger(resultArgs.RowUniqueId.ToString());
                            }
                            if (!resultArgs.Success)
                            {
                                resultArgs.Message = "Problem in Saving Cost Centre Category: " + resultArgs.Message;
                            }
                        }
                        if (!resultArgs.Success)
                        {
                            resultArgs.Message = "Problem in getting Cost Centre Category: " + resultArgs.Message;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                resultArgs.Message = "Exception in Insert Cost Centre Category. " + ex.ToString();
                AcMELog.WriteLog(ex.Message);
            }
            finally { }
            if (resultArgs.Success)
            {
                AcMELog.WriteLog("Saved Cost Centre Category");
            }
            return CostCentreCategoryId;
        }

        /// <summary>
        /// newly
        /// </summary>
        /// <param name="CostCentre"></param>
        /// <param name="Project"></param>
        /// <param name="CostCategoryId"></param>
        /// <returns></returns>
        public int InsertCostCentre(string CostCentre, int ProjectId, int CostCategoryId, double CCAmount, string CCTransMode, string costcenteruedgId)
        {
            int CostCentreId = 0;
            try
            {
                AcMELog.WriteLog("Cost Centre Started");
                using (CostCentreSystem costcentre = new CostCentreSystem())
                {
                    costcentre.CostCentreName = CostCentre;

                    if (!string.IsNullOrEmpty(CostCentre))
                    {
                        costcentre.CostCentreName = CostCentre;
                        costcentre.CostCategoryId = CostCategoryId;
                        costcentre.ProjectId = ProjectId;
                        costcentre.CCAmount = CCAmount;
                        costcentre.CCTransMode = CCTransMode;
                        costcentre.LedgerId = 0;

                        //bharath 21/01/2026 chnages
                        //resultArgs = costcentre.IsCostCentreExists();
                        //CostCentreId = resultArgs.DataSource.Sclar.ToInteger;
                        if (!string.IsNullOrEmpty(costcenteruedgId))
                        {
                            int apiCentreId = this.UtilityMember.NumberSet.ToInteger(costcenteruedgId);
                            if (apiCentreId > 0)
                            {
                                resultArgs = costcentre.IsCostCentreExistsByApiId(apiCentreId);
                                CostCentreId = resultArgs.DataSource.Sclar.ToInteger;
                            }
                        }

                        if (resultArgs.Success && CostCentreId == 0)
                        {
                            // Set API ID if provided
                            if (!string.IsNullOrEmpty(costcenteruedgId))
                            {
                                int apiCentreId = this.UtilityMember.NumberSet.ToInteger(costcenteruedgId);
                                if (apiCentreId > 0)
                                {
                                    costcentre.ApiCostCentreId = apiCentreId;
                                }
                            }

                            resultArgs = costcentre.IndividualSaveCostCentreApi();

                            if (resultArgs.Success)
                            {
                                // Get the CostCentreId after save by searching with API ID or name
                                if (!string.IsNullOrEmpty(costcenteruedgId))
                                {
                                    int apiCentreId = this.UtilityMember.NumberSet.ToInteger(costcenteruedgId);
                                    if (apiCentreId > 0)
                                    {
                                        resultArgs = costcentre.IsCostCentreExistsByApiId(apiCentreId);
                                        CostCentreId = resultArgs.DataSource.Sclar.ToInteger;
                                    }
                                }

                                // Fallback to name search if API ID search didn't find it
                                if (CostCentreId == 0)
                                {
                                    resultArgs = costcentre.IsCostCentreExists();
                                    CostCentreId = resultArgs.DataSource.Sclar.ToInteger;
                                }
                            }
                        }
                        else
                        {
                            if (CostCentreId != 0)
                            {
                                costcentre.CostCentreId = CostCentreId;
                                resultArgs = costcentre.CheckCostCentreMapped();
                                if (resultArgs.Success && resultArgs.DataSource.Sclar.ToInteger == 0)
                                {
                                    resultArgs = costcentre.MapProjectWithCostCentre();
                                }
                            }
                        }

                        // temp purpose update (in the Begining stage only
                        if (CostCentreId != 0)
                        {
                            costcentre.CostCentreId = CostCentreId;
                            resultArgs = costcentre.UpdateMapProjectWithCostCentre();
                        }

                        if (!resultArgs.Success)
                        {
                            resultArgs.Message = "Problem in getting Cost Centre: " + resultArgs.Message;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                resultArgs.Message = "Exception in Insert Cost Centre. " + ex.ToString();
                AcMELog.WriteLog(ex.Message);
            }
            finally { }
            if (resultArgs.Success)
            {
                AcMELog.WriteLog("Saved Cost Centre");
            }
            return CostCentreId;
        }

        private void ConstrctCostCentreDatabase()
        {
            dtCostCentreMapping = new DataTable();
            dtCostCentreMapping.Columns.Add("PROJECT_ID", typeof(Int32));
            dtCostCentreMapping.Columns.Add("PROJECT", typeof(string));
            dtCostCentreMapping.Columns.Add("COST_CENTRE_ID", typeof(string));
            dtCostCentreMapping.Columns.Add("TRANS_MODE", typeof(string));
            dtCostCentreMapping.Columns.Add("AMOUNT", typeof(decimal));
            dtCostCentreMapping.Columns.Add("SELECT", typeof(Int32));
        }

        /// <summary>
        /// To Construct Empty Cash Transaction
        /// </summary>
        /// <param name="dtvoucher"></param>
        private void ConstructeEmptyCashSource()
        {
            dtCashTransaction = new DataTable();
            dtCashTransaction.Columns.Add("SOURCE", typeof(string));
            dtCashTransaction.Columns.Add("LEDGER_FLAG", typeof(string));
            dtCashTransaction.Columns.Add("LEDGER_ID", typeof(Int32));
            dtCashTransaction.Columns.Add("AMOUNT", typeof(decimal));
            dtCashTransaction.Columns.Add("CHEQUE_NO", typeof(string));
            dtCashTransaction.Columns.Add("MATERIALIZED_ON", typeof(DateTime));
            dtCashTransaction.Columns.Add("LEDGER_BALANCE", typeof(string));
            dtCashTransaction.Columns.Add("BUDGET_AMOUNT", typeof(string));
            dtCashTransaction.Columns.Add("TEMP_AMOUNT", typeof(decimal));
            dtCashTransaction.Columns.Add("EXCHANGE_RATE", typeof(decimal));
            dtCashTransaction.Columns.Add("LIVE_EXCHANGE_RATE", typeof(decimal));
        }

        /// <summary>
        /// JsonConverter ( Not Used)
        /// </summary>
        /// <param name="dataset"></param>
        /// <returns></returns>
        public string DataTableToJSONWithJavaScriptSerializer(DataSet dataset)
        {
            JavaScriptSerializer jsSerializer = new JavaScriptSerializer();
            List<Dictionary<string, object>> parentRow = new List<Dictionary<string, object>>();
            Dictionary<string, object> childRow;
            foreach (DataTable table in dataset.Tables)
            {
                foreach (DataRow row in table.Rows)
                {
                    childRow = new Dictionary<string, object>();
                    foreach (DataColumn col in table.Columns)
                    {
                        childRow.Add(col.ColumnName, row[col]);
                    }
                    parentRow.Add(childRow);
                }
            }
            return jsSerializer.Serialize(parentRow);
        }

        /// <summary>
        /// this is to Convert Json to Datatable ( Not Used)
        /// </summary>
        /// <param name="jsonString"></param>
        /// <returns></returns>
        public DataTable JsonStringToDataTable(string jsonString)
        {
            string t = jsonString.Split('[')[1].ToString();
            DataTable dt = new DataTable();
            //string[] jsonStringArray = Regex.Split(jsonString.Replace("[", "").Replace("]", ""), "},{");
            //string[] jsonStringArray = Regex.Split(t.Replace("[", "").Replace("]", ""), "},{");
            string[] jsonStringArray = Regex.Split(t.Replace("[", "").Replace("]", "").Replace("\r\n", ""), "},{");
            List<string> ColumnsName = new List<string>();
            foreach (string jSA in jsonStringArray)
            {
                string[] jsonStringData = Regex.Split(jSA.Replace("{", "").Replace("}", ""), ",");
                foreach (string ColumnsNameData in jsonStringData)
                {
                    try
                    {
                        int idx = ColumnsNameData.IndexOf(":");
                        string ColumnsNameString = ColumnsNameData.Substring(0, idx - 1).Replace("\"", "").Replace("'", "");
                        if (!ColumnsName.Contains(ColumnsNameString))
                        {
                            ColumnsName.Add(ColumnsNameString);
                        }
                    }
                    catch (Exception ex)
                    {
                        throw new Exception(string.Format("Error Parsing Column Name : {0}", ColumnsNameData));
                    }
                }
                break;
            }
            foreach (string AddColumnName in ColumnsName)
            {
                dt.Columns.Add(AddColumnName);
            }
            foreach (string jSA in jsonStringArray)
            {
                string[] RowData = Regex.Split(jSA.Replace("{", "").Replace("}", ""), ",");
                DataRow nr = dt.NewRow();
                foreach (string rowData in RowData)
                {
                    try
                    {

                        int idx = rowData.IndexOf(":");
                        string RowColumns = rowData.Substring(0, idx - 1).Replace("\"", "").Replace("'", "");
                        string RowDataString = rowData.Substring(idx + 1).Replace("\"", "").Replace("'", "");
                        nr[RowColumns] = RowDataString;
                    }
                    catch (Exception ex)
                    {
                        continue;
                    }
                }
                dt.Rows.Add(nr);
            }
            return dt;
        }

        /// <summary>
        /// Year Validation
        /// </summary>
        private void FetchYearFromDate()
        {
            DateTime dtYearFrom = this.UtilityMember.DateSet.ToDate(this.AppSetting.YearFrom.ToString(), false);
            DateTime dtYearTo = this.UtilityMember.DateSet.ToDate(this.AppSetting.YearTo.ToString(), false);
            DateTime dtCurrentDate = this.UtilityMember.DateSet.ToDate(DateTime.Today.ToString(), false);

            dtDateFrom.DateTime = dtCurrentDate;

            dtDateFrom.Properties.MinValue = dtDateTo.Properties.MinValue = dtYearFrom;
            dtDateFrom.Properties.MaxValue = dtDateTo.Properties.MaxValue = dtYearTo;
        }

        /// <summary>
        /// Delete the Voucher details ( new one 07.07.2022 method name changes as newDeleteVouchers) 
        /// </summary>
        /// <param name="Date"></param>
        /// <returns></returns>
        public bool newDeleteVouchers(DataTable dtTableLocalSource, string Date, string ManagementCode)
        {
            bool isValid = true;
            try
            {
                AcMELog.WriteLog("Delete Vouchers Started..");
                if (string.IsNullOrEmpty(Date))
                {
                    isValid = false;
                    throw new Exception("Date is Empty");
                }
                else if (string.IsNullOrEmpty(ManagementCode))
                {
                    isValid = false;
                    throw new Exception("Management Code is empty");
                }
                if (isValid)
                {
                    using (VoucherTransactionSystem voucherTransaction = new VoucherTransactionSystem())
                    {
                        AcMELog.WriteLog("Fetch Vouchers..");
                        voucherTransaction.VoucherDate = this.UtilityMember.DateSet.ToDate(Date, false);
                        voucherTransaction.ClientCode = ManagementCode;

                        using (ProjectSystem projectsystem = new ProjectSystem())
                        {
                            DataTable dtUniquerProjects = dtTableLocalSource.DefaultView.ToTable("dtSource", true, new string[] { "PROJECT_NAME", "CLIENT_CODE" });
                            foreach (DataRow drRow in dtUniquerProjects.Rows)
                            {
                                string Project = drRow["PROJECT_NAME"].ToString();
                                resultArgs = projectsystem.FetchProjectIdByProjectName(Project.Trim());
                                {
                                    projectId = resultArgs.DataSource.Sclar.ToInteger;
                                }
                                voucherTransaction.ProjectId = projectId;
                                resultArgs = voucherTransaction.FetchCBVoucherByFetchedDate();
                                AcMELog.WriteLog("Ended Fetch Voucher..");
                                if (resultArgs.Success && resultArgs.DataSource.Table.Rows.Count > 0)
                                {
                                    foreach (DataRow drRowVoucher in resultArgs.DataSource.Table.Rows)
                                    {
                                        int VoucherId = this.UtilityMember.NumberSet.ToInteger(drRowVoucher["VOUCHER_ID"].ToString());
                                        voucherTransaction.VoucherId = VoucherId;
                                        AcMELog.WriteLog("started Physical Delete..");
                                        resultArgs = voucherTransaction.DeletePhysicalVoucherTrans();
                                        AcMELog.WriteLog("Ended Physical Delete..");
                                    }
                                }
                            }
                            if (resultArgs.Success)
                            {
                                AcMELog.WriteLog("Delete Vouchers ended..");
                            }
                        }
                    }
                }
            }
            catch (Exception eg)
            {
                AcMELog.WriteLog("Problem in Delete vouchers : " + eg.Message.ToString());
                throw eg;
            }
            return isValid;
        }

        /// <summary>
        /// Delete the Voucher details before 30.03.2022 ( Replaced from old Source) 
        /// </summary>
        /// <param name="Date"></param>
        /// <returns></returns>
        public bool DeleteVouchers(DataTable dtTableLocalSource, string SyncDate, string ManagementCode)
        {
            //  FetchOnlineCollections(dtTableLocalSource, SyncDate, ManagementCode);

            bool isValid = true;
            try
            {
                AcMELog.WriteLog("Delete Vouchers Started..");
                if (string.IsNullOrEmpty(SyncDate))
                {
                    isValid = false;
                    throw new Exception("Date is Empty");
                }
                else if (string.IsNullOrEmpty(ManagementCode))
                {
                    isValid = false;
                    throw new Exception("Management Code is empty");
                }
                if (isValid)
                {
                    using (VoucherTransactionSystem voucherTransaction = new VoucherTransactionSystem())
                    {
                        AcMELog.WriteLog("Fetch Vouchers..");
                        voucherTransaction.VoucherDate = this.UtilityMember.DateSet.ToDate(SyncDate, false);
                        voucherTransaction.ClientCode = ManagementCode;
                        using (ProjectSystem projectsystem = new ProjectSystem())
                        {
                            // Bank it is not used as of now ( we plan to edit the records)
                            DataView dvBankRecords = new DataView(dtTableLocalSource) { RowFilter = "CLIENT_TRANSACTION_MODE IN ('2','3','6')" };
                            DataTable dtBankSource = dvBankRecords.ToTable();

                            // Others ( i have plan to insert the records individually) ( Commanded )
                            DataView dvGeneralCash = new DataView(dtTableLocalSource) { RowFilter = "CLIENT_TRANSACTION_MODE NOT IN ('2','3','6')" };
                            DataTable dtGeneralCash = dvGeneralCash.ToTable();


                            //foreach (DataRow drRow in dtBankSource.Rows)
                            //{
                            //    string chequeNo = drRow["BANK_REF_NO"].ToString();
                            //    string Project = drRow["PROJECT_NAME"].ToString();
                            //    resultArgs = projectsystem.FetchProjectIdByProjectName(Project.Trim());
                            //    {
                            //        projectId = resultArgs.DataSource.Sclar.ToInteger;
                            //    }
                            //    voucherTransaction.ProjectId = projectId;
                            //    voucherTransaction.ClientReferenceId = drRow["CLIENT_REFERENCE_ID"].ToString();
                            //    voucherTransaction.VoucherDate = this.UtilityMember.DateSet.ToDate(SyncDate, false);
                            //    resultArgs = voucherTransaction.FetchVoucherByUniqueIdwithBankTransaction();

                            //    AcMELog.WriteLog("Ended Fetch Voucher..");
                            //    if (resultArgs.Success && resultArgs.DataSource.Table.Rows.Count > 0)
                            //    {
                            //        int VoucherId = this.UtilityMember.NumberSet.ToInteger(resultArgs.DataSource.Table.Rows[0]["VOUCHER_ID"].ToString());
                            //        voucherTransaction.VoucherId = VoucherId;
                            //        AcMELog.WriteLog("started Physical Delete..");
                            //        resultArgs = voucherTransaction.DeletePhysicalVoucherTrans();
                            //        AcMELog.WriteLog("Ended Physical Delete..");
                            //    }
                            //}

                            DataTable dtGeneralSource = dtGeneralCash.DefaultView.ToTable("dtSource", true, new string[] { "PROJECT_NAME", "CLIENT_CODE" });
                            foreach (DataRow drRow in dtGeneralSource.Rows)
                            {
                                string Project = drRow["PROJECT_NAME"].ToString();
                                resultArgs = projectsystem.FetchProjectIdByProjectName(Project.Trim());
                                {
                                    projectId = resultArgs.DataSource.Sclar.ToInteger;
                                }
                                voucherTransaction.ProjectId = projectId;
                                voucherTransaction.VoucherDate = this.UtilityMember.DateSet.ToDate(SyncDate, false);
                                resultArgs = voucherTransaction.FetchCBVoucherByFetchedDate();

                                AcMELog.WriteLog("Ended Fetch Voucher..");
                                if (resultArgs.Success && resultArgs.DataSource.Table.Rows.Count > 0)
                                {
                                    foreach (DataRow drRowVoucher in resultArgs.DataSource.Table.Rows)
                                    {
                                        int VoucherId = this.UtilityMember.NumberSet.ToInteger(drRowVoucher["VOUCHER_ID"].ToString());
                                        voucherTransaction.VoucherId = VoucherId;
                                        AcMELog.WriteLog("started Physical Delete..");
                                        resultArgs = voucherTransaction.DeletePhysicalVoucherTrans();
                                        AcMELog.WriteLog("Ended Physical Delete..");
                                    }
                                }
                            }
                            if (resultArgs.Success)
                            {
                                AcMELog.WriteLog("Delete Vouchers ended..");
                            }
                        }
                    }
                }
            }
            catch (Exception eg)
            {
                AcMELog.WriteLog("Problem in Delete vouchers : " + eg.Message.ToString());
                throw eg;
            }
            return isValid;
        }

        public bool DeleteMultipleCashTransactions(DataTable dtTableLocalSource)
        {
            bool isValid = true;
            try
            {
                AcMELog.WriteLog("Multi Cash Delete Vouchers Started..");
                if (isValid)
                {
                    using (VoucherTransactionSystem voucherTransaction = new VoucherTransactionSystem())
                    {
                        foreach (DataRow drRowVoucher in dtTableLocalSource.Rows)
                        {
                            int VoucherId = this.UtilityMember.NumberSet.ToInteger(drRowVoucher["VOUCHER_ID"].ToString());
                            voucherTransaction.VoucherId = VoucherId;
                            AcMELog.WriteLog("Multi started Physical Delete..");
                            resultArgs = voucherTransaction.DeletePhysicalVoucherTrans();
                            AcMELog.WriteLog("Multi Ended Physical Delete..");
                        }
                        if (resultArgs.Success)
                        {
                            AcMELog.WriteLog("Multi Delete Vouchers ended..");
                        }
                    }
                }
            }
            catch (Exception eg)
            {
                AcMELog.WriteLog("Problem in Delete vouchers : " + eg.Message.ToString());
                throw eg;
            }
            return isValid;
        }

        /// <summary>
        ///  Fetch the Online Collection details 
        /// </summary>
        /// <param name="dtTableLocalSource"></param>
        /// <param name="SyncDate"></param>
        /// <param name="ManagementCode"></param>
        /// 
        private bool FetchOnlineCollections(DataTable dtTableLocalSource, string SyncDate, string ManagementCode)
        {
            //foreach (DataRow dr in dtTableLocalSource.Rows)
            //{
            //    int id = this.UtilityMember.NumberSet.ToInteger(dr["CLIENT_REFERENCE_ID"].ToString());
            //    if (id == 3750)
            //    {
            //        dr["MATERIALIZED_ON"] = "09/07/2022";
            //    }
            //    else if (id == 3752)
            //    {
            //        dr["MATERIALIZED_ON"] = "09/07/2022";
            //    }
            //    else if (id == 3757)
            //    {
            //        dr["MATERIALIZED_ON"] = "08/07/2022";
            //    }
            //}
            //dtTableLocalSource.AcceptChanges();

            bool isValid = true;
            try
            {
                AcMELog.WriteLog("Delete Vouchers Started..");
                if (string.IsNullOrEmpty(SyncDate))
                {
                    isValid = false;
                    throw new Exception("Date is Empty");
                }
                else if (string.IsNullOrEmpty(ManagementCode))
                {
                    isValid = false;
                    throw new Exception("Management Code is empty");
                }
                if (isValid)
                {
                    using (VoucherTransactionSystem voucherTransaction = new VoucherTransactionSystem())
                    {
                        AcMELog.WriteLog("Fetch Vouchers..");
                        voucherTransaction.VoucherDate = this.UtilityMember.DateSet.ToDate(SyncDate, false);
                        voucherTransaction.ClientCode = ManagementCode;

                        int NotMatVoucherId = 0;
                        double NotMatAmount = 0.00;
                        string NotMatVoucherNo = "";
                        string NullVouhcersIds = string.Empty;
                        bool IsMaterilizedAll = false;

                        using (ProjectSystem projectsystem = new ProjectSystem())
                        {
                            using (LedgerSystem ledgersystem = new LedgerSystem())
                            {
                                // Fetch Online Collections alone
                                DataView dvOnlineCollections = new DataView();
                                DataTable dtOnlineSource = new DataTable();
                                if (Defaultmode == ManagementMode)
                                {
                                    dvOnlineCollections = new DataView(dtTableLocalSource) { RowFilter = "CLIENT_TRANSACTION_MODE IN ('6')" };
                                    dtOnlineSource = dvOnlineCollections.ToTable();
                                }
                                else
                                {
                                    dvOnlineCollections = new DataView(dtTableLocalSource) { RowFilter = "CLIENT_TRANSACTION_MODE IN ('Online')" };
                                    dtOnlineSource = dvOnlineCollections.ToTable();
                                }

                                AcMELog.WriteLog("Cumlated");
                                DataTable dtCumulativeGeneralSource = dtOnlineSource.DefaultView.ToTable("dtSource", true, new string[] { "VOUCHER_DATE", "PROJECT_NAME", "LEDGER", "MATERIALIZED_ON", "CASHBANK_LEDGER", "CLIENT_CODE" });
                                dtCumulativeGeneralSource.DefaultView.Sort = "VOUCHER_DATE DESC, MATERIALIZED_ON";
                                dtCumulativeGeneralSource = dtCumulativeGeneralSource.DefaultView.ToTable();
                                AcMELog.WriteLog("Order");

                                // Culativated based on the tuition fees collections
                                foreach (DataRow drRow in dtCumulativeGeneralSource.Rows)
                                {
                                    string dtVoucherDateTime = drRow["VOUCHER_DATE"].ToString();
                                    string Project = drRow["PROJECT_NAME"].ToString();
                                    string LedgerName = drRow["LEDGER"].ToString();
                                    string MatOn = drRow["MATERIALIZED_ON"].ToString();
                                    string CashBankLedgerName = drRow["CASHBANK_LEDGER"].ToString();
                                    string ClientCode = drRow["CLIENT_CODE"].ToString();

                                    bool isFillTransaction = true;
                                    string GeneralLedger = string.Empty;
                                    double LedgerAmount = 0.00;
                                    string GeneralTransMode = string.Empty;
                                    string banktransId = string.Empty;
                                    decimal exchange = 0;
                                    string CashBankLedger = string.Empty;
                                    double CashBankAmount = 0;
                                    string BankRefNo = string.Empty;
                                    string MaterializedOn = string.Empty;
                                    string CashBankTransMode = string.Empty;

                                    string FilterConditions = "VOUCHER_DATE='" + dtVoucherDateTime + "' AND PROJECT_NAME='" + Project.Replace("'", "''") + "' AND LEDGER='" + LedgerName.Replace("'", "''") + "' AND CASHBANK_LEDGER='" + CashBankLedgerName + "' AND CLIENT_CODE='" + ClientCode + "' AND MATERIALIZED_ON='" + MatOn + "'";
                                    string FilterConditions1 = "VOUCHER_DATE='" + dtVoucherDateTime + "' AND PROJECT_NAME='" + Project.Replace("'", "''") + "' AND LEDGER='" + LedgerName.Replace("'", "''") + "' AND CASHBANK_LEDGER='" + CashBankLedgerName + "' AND CLIENT_CODE='" + ClientCode + "' AND MATERIALIZED_ON<>''";
                                    string FilterConditions2 = "VOUCHER_DATE='" + dtVoucherDateTime + "' AND PROJECT_NAME='" + Project.Replace("'", "''") + "' AND LEDGER='" + LedgerName.Replace("'", "''") + "' AND CASHBANK_LEDGER='" + CashBankLedgerName + "' AND CLIENT_CODE='" + ClientCode + "' AND MATERIALIZED_ON=''";

                                    // Fetch the Materilized null values amount
                                    double Amount = this.UtilityMember.NumberSet.ToDouble(dtOnlineSource.Compute("SUM(LEDGER_AMOUNT)", FilterConditions).ToString());
                                    // Fetch the Materilized exists values amounts
                                    double MatAmount = this.UtilityMember.NumberSet.ToDouble(dtOnlineSource.Compute("SUM(LEDGER_AMOUNT)", FilterConditions1).ToString());
                                    double NotMatAmountValues = this.UtilityMember.NumberSet.ToDouble(dtOnlineSource.Compute("SUM(LEDGER_AMOUNT)", FilterConditions2).ToString());

                                    AcMELog.WriteLog("Summed");
                                    // To Fetch the null Records for the loop date
                                    resultArgs = projectsystem.FetchProjectIdByProjectName(Project.Trim());
                                    {
                                        projectId = resultArgs.DataSource.Sclar.ToInteger;
                                    }
                                    voucherTransaction.ProjectId = projectId;
                                    AcMELog.WriteLog("Project Id Ended");
                                    voucherTransaction.VoucherDate = this.UtilityMember.DateSet.ToDate(dtVoucherDateTime, false);
                                    voucherTransaction.MaterializedOn = "";

                                    resultArgs = ledgersystem.FetchLedgerIdByLedgerName(LedgerName.Trim());
                                    {
                                        ledgerid = resultArgs.DataSource.Sclar.ToInteger;
                                    }
                                    voucherTransaction.LedgerId = ledgerid;

                                    resultArgs = ledgersystem.FetchLedgerIdByLedgerName(CashBankLedgerName.Trim());
                                    {
                                        cashbankLedgerid = resultArgs.DataSource.Sclar.ToInteger;
                                    }
                                    voucherTransaction.TDSCashBankId = cashbankLedgerid;
                                    AcMELog.WriteLog("Ledger Id Ended");
                                    // it fetch the null values for current loop date 
                                    resultArgs = voucherTransaction.FetchVoucherOnlineCollections();
                                    NotMatVoucherId = 0;
                                    NotMatAmount = 0.00;
                                    NotMatVoucherNo = "";
                                    if (resultArgs.Success && resultArgs.DataSource.Table.Rows.Count > 0)
                                    {
                                        NotMatVoucherId = this.UtilityMember.NumberSet.ToInteger(resultArgs.DataSource.Table.Rows[0]["VOUCHER_ID"].ToString());
                                        NotMatAmount = this.UtilityMember.NumberSet.ToDouble(resultArgs.DataSource.Table.Rows[0]["AMOUNT"].ToString());
                                        NotMatVoucherNo = resultArgs.DataSource.Table.Rows[0]["VOUCHER_NO"].ToString();
                                    }
                                    if (NotMatVoucherId > 0) // Null values fetched from database to track
                                    {
                                        // Total Exist Materilzed amount and Null values fetched materilzed amounts
                                        //IsMaterilizedAll = (MatAmount >= NotMatAmount) ? true : false;
                                        // IsMaterilizedAll = (MatAmount - NotMatAmount) == 0 ? true : false;
                                        if (dtVoucherDateTime == SyncDate)
                                        {
                                            IsMaterilizedAll = NotMatAmountValues == 0 ? true : false;
                                        }
                                        else
                                        {
                                            IsMaterilizedAll = (NotMatAmount == MatAmount) ? true : false;
                                        }
                                    }
                                    else
                                    {
                                        IsMaterilizedAll = false;
                                    }
                                    // Fetch Current Voucher Date and Materilized Date values from Database
                                    voucherTransaction.VoucherDate = this.UtilityMember.DateSet.ToDate(dtVoucherDateTime, false);
                                    voucherTransaction.MaterializedOn = MatOn;
                                    resultArgs = ledgersystem.FetchLedgerIdByLedgerName(CashBankLedgerName.Trim());
                                    {
                                        cashbankLedgerid = resultArgs.DataSource.Sclar.ToInteger;
                                    }
                                    voucherTransaction.TDSCashBankId = cashbankLedgerid;
                                    ResultArgs resultArgs1 = voucherTransaction.FetchVouchersOnlineVouDateMaterDateCollections();

                                    //Fields Assign Values
                                    voucherdate = this.UtilityMember.DateSet.ToDate(dtVoucherDateTime, false);
                                    GeneralLedger = LedgerName;
                                    LedgerAmount = Amount;
                                    GeneralTransMode = "CR";

                                    CashBankLedger = CashBankLedgerName;
                                    CashBankAmount = Amount;
                                    BankRefNo = "";
                                    MaterializedOn = MatOn;
                                    CashBankTransMode = "DR";

                                    // Insert and Update
                                    if (resultArgs1.Success)
                                    {
                                        int AcmeVoucherId = 0;
                                        double AcmeAmount = 0;
                                        string AcmeVocherNo = "";
                                        if (resultArgs1.DataSource.Table.Rows.Count > 0)
                                        {
                                            AcmeVoucherId = this.UtilityMember.NumberSet.ToInteger(resultArgs1.DataSource.Table.Rows[0]["VOUCHER_ID"].ToString());
                                            AcmeVocherNo = resultArgs1.DataSource.Table.Rows[0]["VOUCHER_NO"].ToString();
                                            AcmeAmount = this.UtilityMember.NumberSet.ToDouble(resultArgs1.DataSource.Table.Rows[0]["AMOUNT"].ToString());
                                        }
                                        else
                                        {
                                            AcmeVoucherId = 0;
                                        }
                                        using (VoucherTransactionSystem vouchers = new VoucherTransactionSystem())
                                        {
                                            //// This is to Assign database null values amount can be mapped to ledger amount while mateilized same date is materilized
                                            //if (IsMaterilizedAll && AcmeVoucherId > 0 && NotMatVoucherId > 0 && (NotMatAmount == (Amount - AcmeAmount)))
                                            //{
                                            //    voucherTransaction.VoucherId = NotMatVoucherId;
                                            //    AcMELog.WriteLog("started Physical Delete..");
                                            //    ResultArgs result = voucherTransaction.DeletePhysicalVoucherTrans();
                                            //    IsMaterilizedAll = false;
                                            //    AcMELog.WriteLog("Ended Physical Delete..");
                                            //}

                                            if (IsMaterilizedAll && NotMatVoucherId > 0)
                                            {
                                                NullVouhcersIds = NotMatVoucherId + ",";
                                            }
                                            exchange = this.UtilityMember.NumberSet.ToDecimal(resultArgs1.DataSource.Table.Rows[0]["EXCHANGE_RATE"].ToString());
                                            isFillTransaction = FillCashBankTransSource(Project.Trim(), GeneralLedger.Trim(), LedgerAmount, GeneralTransMode.Trim(), CashBankLedger.Trim(), CashBankAmount, BankRefNo, MaterializedOn.Trim(), CashBankTransMode.Trim(), voucherdate, exchange);
                                            if (isFillTransaction)
                                            {
                                                voucherTransaction.VoucherId = (AcmeVoucherId > 0) ? AcmeVoucherId : IsMaterilizedAll ? NotMatVoucherId : 0;
                                                voucherTransaction.ProjectId = ProjectId;
                                                voucherTransaction.VoucherDate = this.UtilityMember.DateSet.ToDate(dtVoucherDateTime, false);
                                                string vtype = "RC";
                                                voucherTransaction.VoucherType = vtype;
                                                voucherTransaction.VoucherDefinitionId = (Int32)DefaultVoucherTypes.Receipt;
                                                if (vtype == "RC") voucherTransaction.VoucherDefinitionId = (Int32)DefaultVoucherTypes.Receipt;
                                                if (vtype == "PY") voucherTransaction.VoucherDefinitionId = (Int32)DefaultVoucherTypes.Payment;
                                                if (vtype == "CN") voucherTransaction.VoucherDefinitionId = (Int32)DefaultVoucherTypes.Contra;
                                                if (vtype == "JN") voucherTransaction.VoucherDefinitionId = (Int32)DefaultVoucherTypes.Journal;
                                                voucherTransaction.VoucherSubType = LedgerTypes.GN.ToString();
                                                voucherTransaction.TransVoucherMethod = (int)TransactionVoucherMethod.Automatic;
                                                voucherTransaction.VoucherNo = (AcmeVoucherId > 0) ? AcmeVocherNo : IsMaterilizedAll ? NotMatVoucherNo : ""; // AcmeVocherNo == "" ? "" : AcmeVocherNo;
                                                voucherTransaction.DonorId = 0;
                                                voucherTransaction.PurposeId = 0;
                                                voucherTransaction.ContributionType = "N";
                                                voucherTransaction.ContributionAmount = 0.00m;
                                                voucherTransaction.CurrencyCountryId = 0;
                                                voucherTransaction.ExchangeRate = this.UtilityMember.NumberSet.ToDecimal(resultArgs1.DataSource.Table.Rows[0]["EXCHANGE_RATE"].ToString());
                                                voucherTransaction.CalculatedAmount = 0;
                                                voucherTransaction.ActualAmount = 0;
                                                voucherTransaction.ExchageCountryId = 0;
                                                voucherTransaction.Narration = "";
                                                voucherTransaction.Status = 1;
                                                voucherTransaction.FDGroupId = 0;
                                                voucherTransaction.CreatedBy = UtilityMember.NumberSet.ToInteger(voucherTransaction.LoginUserId);
                                                voucherTransaction.ModifiedBy = UtilityMember.NumberSet.ToInteger(voucherTransaction.LoginUserId);
                                                voucherTransaction.NameAddress = "";
                                                voucherTransaction.ClientReferenceId = ManagementCode;
                                                voucherTransaction.ClientCode = ClientCode + " - " + ManagementCode;
                                                voucherTransaction.ClientMode = "Online";

                                                DataView dvTrans = new DataView(dtTransaction);
                                                this.Transaction.TransInfo = dvTrans;

                                                DataView dvCashTrans = new DataView(dtCashTransaction);
                                                this.Transaction.CashTransInfo = dvCashTrans;
                                                resultArgs = voucherTransaction.SaveTransactions();
                                                if (resultArgs.Success)
                                                {
                                                    PostVoucherId = voucherTransaction.VoucherId > 0 ? voucherTransaction.VoucherId : 0;
                                                }
                                                else
                                                {
                                                    PostVoucherId = -1;
                                                    AcMELog.WriteLog("Failed in Posted Voucher:" + resultArgs.Message);
                                                    throw new Exception(resultArgs.Message);
                                                    isValid = false;
                                                }
                                            }
                                        }
                                    }
                                }
                                // This is to delete the Null values from the databse those vouchers inserted
                                if (NullVouhcersIds != string.Empty)
                                {
                                    string[] NullVouchersIdsDetails = NullVouhcersIds.Split(',');
                                    foreach (string nullvoucherid in NullVouchersIdsDetails)
                                    {
                                        voucherTransaction.VoucherId = this.UtilityMember.NumberSet.ToInteger(nullvoucherid);
                                        int MatNullVoucherId = voucherTransaction.FetchMatNullVouchers();
                                        if (MatNullVoucherId > 0)
                                        {
                                            ResultArgs result4 = voucherTransaction.DeletePhysicalVoucherTrans();
                                        }
                                    }
                                }
                                if (resultArgs.Success)
                                {
                                    AcMELog.WriteLog("Delete Vouchers ended..");
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception eg)
            {
                AcMELog.WriteLog("Problem in Delete vouchers : " + eg.Message.ToString());
                throw eg;
                isValid = false;
            }
            return isValid;
        }

        /// <summary>
        /// 
        /// </summary>
        private ResultArgs DeleteTransEmpty(string VoucherDate, string ManagementCode)
        {
            bool isValid = true;
            try
            {
                AcMELog.WriteLog("Delete Vouchers Started..");
                if (string.IsNullOrEmpty(VoucherDate))
                {
                    isValid = false;
                    throw new Exception("Date is Empty");
                }
                else if (string.IsNullOrEmpty(ManagementCode))
                {
                    isValid = false;
                    throw new Exception("Management Code is empty");
                }
                else if (string.IsNullOrEmpty(ProId))
                {
                    isValid = false;
                    ShowMessageBox("Project is empty, select the Projects");
                }
                if (isValid)
                {
                    using (VoucherTransactionSystem voucherTransaction = new VoucherTransactionSystem())
                    {
                        string ProjectsIds = ProId;

                        foreach (string proid in ProjectsIds.Split(','))
                        {
                            voucherTransaction.VoucherDate = this.UtilityMember.DateSet.ToDate(VoucherDate, false);
                            voucherTransaction.ClientCode = ManagementCode;
                            voucherTransaction.ProjectId = this.UtilityMember.NumberSet.ToInteger(proid);
                            resultArgs = voucherTransaction.FetchVoucherByTransEmpty();

                            AcMELog.WriteLog("Ended Fetch Voucher TransEmpty....");
                            if (resultArgs.Success && resultArgs.DataSource.Table.Rows.Count > 0)
                            {
                                foreach (DataRow drRowVoucher in resultArgs.DataSource.Table.Rows)
                                {
                                    int VoucherId = this.UtilityMember.NumberSet.ToInteger(drRowVoucher["VOUCHER_ID"].ToString());
                                    voucherTransaction.VoucherId = VoucherId;

                                    AcMELog.WriteLog("started Physical Delete TransEmpty....");
                                    resultArgs = voucherTransaction.DeletePhysicalVoucherTrans();
                                    AcMELog.WriteLog("Ended Physical Delete TransEmpty....");
                                }
                            }
                        }

                        //if (resultArgs.Success)
                        //{
                        //    AcMELog.WriteLog("Delete Vouchers ended TransEmpty..");
                        //    ShowMessageBox("Deleted Successfully if Exist");
                        //}
                    }
                }
            }
            catch (Exception eg)
            {
                AcMELog.WriteLog("Problem in Delete vouchers EmptyTrans : " + eg.Message.ToString());
                throw eg;
            }
            return resultArgs;
        }

        /// <summary>
        /// 
        /// </summary>
        private void UpdateLatestVersionLocally()
        {
            string Jsonscript = string.Empty;
            try
            {
                AcmeERPSSPService acmeservicedata = new AcmeERPSSPService();
                DataSet dsMaster = GetMasters();
                Jsonscript = acmeservicedata.ConstructMasters(dsMaster);
                string acmerpinstalledpath = Application.StartupPath.ToString();
                if (!string.IsNullOrEmpty(Jsonscript))
                {
                    string latestfeaturepath = Path.Combine(acmerpinstalledpath, "ThirdPartyIntegration.txt");
                    using (TextWriter writer = File.CreateText(latestfeaturepath))
                    {
                        writer.WriteLine(Jsonscript);
                    }
                }
            }
            catch (Exception err)
            {
                string msg = err.Message;
            }
        }

        /// <summary>
        ///  Individual
        /// </summary>
        private void IndvidualUpdateLatestVersionLocally()
        {
            string Jsonscript = string.Empty;
            string acmerpinstalledpath1 = Path.Combine(Application.StartupPath.ToString(), "ThirdPartyIntegration1.txt");
            File.WriteAllText(acmerpinstalledpath1, "");
            try
            {
                string projecids = GetProjectsIds();
                if (!string.IsNullOrEmpty(projecids))
                {
                    AcmeERPSSPService acmeservicedata = new AcmeERPSSPService();
                    DataSet dsRecords = GetMasters();

                    DataTable dtProjectRecords = GetProjectNames();
                    DataTable dtLedgerRecords = new DataTable("Ledger");

                    dsRecords.Tables["Ledger"].DefaultView.RowFilter = "PROJECT IN (" + SelectedProjectName + ")";
                    dtLedgerRecords = dsRecords.Tables["Ledger"].DefaultView.ToTable();

                    dsRecords.Tables.Remove("Project");
                    dsRecords.Tables.Remove("Ledger");

                    dsRecords.Tables.Add(dtProjectRecords);
                    dsRecords.Tables.Add(dtLedgerRecords);


                    Jsonscript = acmeservicedata.ConstructMasters(dsRecords);
                    string acmerpinstalledpath = Application.StartupPath.ToString();
                    if (!string.IsNullOrEmpty(Jsonscript))
                    {
                        string latestfeaturepath = Path.Combine(acmerpinstalledpath, "ThirdPartyIntegration1.txt");
                        using (TextWriter writer = File.CreateText(latestfeaturepath))
                        {
                            writer.WriteLine(Jsonscript);
                        }
                    }
                }
                else
                {
                    this.ShowMessageBox("Project is Empty");
                }
            }
            catch (Exception err)
            {
                string msg = err.Message;
            }
        }

        /// <summary>
        /// Load Project Category
        /// </summary>
        private void LoadProjectCategory()
        {
            using (ProjectSystem projectSystem = new ProjectSystem())
            {
                resultArgs = projectSystem.FetchProjectCategroy();
                this.UtilityMember.ComboSet.BindGridLookUpCombo(glkpProjectCategory, resultArgs.DataSource.Table, projectSystem.AppSchema.ProjectCatogory.PROJECT_CATOGORY_NAMEColumn.ColumnName, projectSystem.AppSchema.ProjectCatogory.PROJECT_CATOGORY_IDColumn.ColumnName);
                glkpProjectCategory.EditValue = glkpProjectCategory.Properties.GetKeyValue(0);


            }
        }

        /// <summary>
        /// Loading the project details
        /// </summary>
        public void LoadProjects()
        {
            ////22/04/2020, To retain already selected projects (when we change date range)
            //string AlreadySelectedProjects = GetProjectsIds();

            chkSelectAll.Checked = false;
            // using (MappingSystem vouchersystem = new MappingSystem())
            using (ProjectSystem projectsystem = new ProjectSystem())
            {
                projectsystem.ProjectClosedDate = dtDateFrom.DateTime.ToString();
                projectsystem.ProjectCategroyId = ProCategoryId;
                ResultArgs resultArgs = projectsystem.FetchProjectsIntegration();  //vouchersystem.FetchProjectsLookup();   //  projectsystem.FetchProjectsIntegration();  ;
                if (resultArgs.Success && resultArgs.DataSource != null && resultArgs.DataSource.Table.Rows.Count != 0)
                {
                    //DateTime dtFrom = UtilityMember.DateSet.ToDate(deDateFrom.DateTime.ToShortDateString(), false);
                    // DateTime dtTo = UtilityMember.DateSet.ToDate(deDateTo.DateTime.ToShortDateString(), false);
                    DataTable dtProjects = resultArgs.DataSource.Table;

                    //30/08/2019, to skip closing projects
                    //----------------------------------------------------------------------------------------------------------------------------------------
                    //string filter = "DATE_CLOSED" + " IS NULL OR " +
                    //   "(" + vouchersystem.AppSchema.Project.DATE_CLOSEDColumn.ColumnName + " >='" + dtFrom + "' )"; //AND DATE_CLOSED >='" + dtTo + "'
                    //dtProjects.DefaultView.RowFilter = filter;
                    //dtProjects = dtProjects.DefaultView.ToTable();
                    //------------------------------------------------------------------------------------------------------------------------------------------

                    chklstProjects.DisplayMember = "PROJECT";
                    chklstProjects.ValueMember = "PROJECT_ID";
                    chklstProjects.DataSource = dtProjects;

                    ////22/04/2020, To retain already selected projects (when we change date range)
                    //this.projectid = AlreadySelectedProjects;
                }
            }
        }

        /// <summary>
        /// Get Project Name
        /// </summary>
        /// <returns></returns>
        private DataTable GetProjectNames()
        {
            DataTable dtProject = new DataTable("Project");
            string pname = string.Empty;
            string pnameconcat = string.Empty;
            try
            {
                // if (Defaultmode == ManagementMode)
                // {

                dtProject.Columns.Add("PROJECT", typeof(string));
                AcMELog.WriteLog("Get Selected Project Name");
                foreach (DataRowView drProject in chklstProjects.CheckedItems)
                {
                    pname = drProject[1].ToString() + ",";
                    pnameconcat += "'" + drProject[1].ToString().Replace("'", "''") + "'" + ","; ;
                    // pnameconcat += "'" + pnameconcat + "'" + ",";

                    DataRow drNewRows = dtProject.NewRow();
                    drNewRows["PROJECT"] = pname.TrimEnd(',');
                    dtProject.Rows.Add(drNewRows);
                }
                SelectedProjectName = pnameconcat.TrimEnd(',');

                //}
                //else
                //{
                //    dtProject.Columns.Add("PROJECT", typeof(string));

                //    AcMELog.WriteLog("Get Selected Project Name");

                //    foreach (DataRowView drProject in chklstProjects.CheckedItems)
                //    {
                //        string rawName = drProject[1].ToString();

                //        DataRow drNewRows = dtProject.NewRow();
                //        drNewRows["PROJECT"] = rawName;
                //        dtProject.Rows.Add(drNewRows);

                //        pnameconcat += "\"" + rawName + "\",";
                //    }
                //    SelectedProjectName = pnameconcat.TrimEnd(',');
                //}
            }
            catch (Exception ex)
            {
                resultArgs.Message = ex.ToString();
            }
            return dtProject;
        }

        /// <summary>
        /// Get Project Id's
        /// </summary>
        /// <returns></returns>
        public string GetProjectsIds()
        {
            string SelectedProjectId = string.Empty;
            try
            {
                string pid = string.Empty;
                AcMELog.WriteLog("Get Selected Project Id's");
                foreach (DataRowView drProject in chklstProjects.CheckedItems)
                {
                    pid += drProject[0].ToString();
                    pid += ',';
                }
                SelectedProjectId = pid.TrimEnd(',');
            }
            catch (Exception ex)
            {
                resultArgs.Message = ex.ToString();
            }
            return SelectedProjectId;
        }

        /// <summary>
        /// 
        /// </summary>
        private DataTable ReturnDate()
        {
            DataTable dtFillDate = new DataTable();
            // Include the Datatable
            if (!dtFillDate.Columns.Contains("CONSTRUCT_VOUCHER_DATE"))
                dtFillDate.Columns.Add("CONSTRUCT_VOUCHER_DATE", typeof(DateTime));

            DateTime dtFrom = dtDateFrom.DateTime;
            DateTime dtTo = dtDateTo.DateTime;
            DateTime dateFr = dtDateFrom.DateTime;
            DateTime monthDate;

            monthDate = new DateTime(dateFr.Year, dateFr.Month, dateFr.Day);
            while (true)
            {
                dateFr = new DateTime(dtFrom.Year, dtFrom.Month, dtFrom.Day).AddDays(1);

                DataRow drRowData = dtFillDate.NewRow();
                drRowData["CONSTRUCT_VOUCHER_DATE"] = monthDate;
                dtFillDate.Rows.Add(drRowData);
                dtFillDate.AcceptChanges();
                if (dateFr <= dtTo)
                {
                    monthDate = new DateTime(dateFr.Year, dateFr.Month, dateFr.Day);
                    dtFrom = dateFr;
                }
                else
                {
                    break;
                }
            }
            return dtFillDate;
        }
        #endregion

        #region Events

        //bharath 09/03/2026
        private decimal customTotalSum = 0;

        private void gvVoucherTransaction_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            DevExpress.XtraGrid.GridColumnSummaryItem item = e.Item as DevExpress.XtraGrid.GridColumnSummaryItem;

            if (item != null && item.FieldName == "LEDGER_AMOUNT")
            {
                switch (e.SummaryProcess)
                {
                    case DevExpress.Data.CustomSummaryProcess.Start:
                        customTotalSum = 0;
                        break;

                    case DevExpress.Data.CustomSummaryProcess.Calculate:
                        string stringValue = e.FieldValue != null ? e.FieldValue.ToString() : string.Empty;

                        if (!string.IsNullOrWhiteSpace(stringValue))
                        {
                            string[] amounts = stringValue.Split(',');

                            foreach (string amt in amounts)
                            {
                                decimal parsedAmount = 0;
                                if (decimal.TryParse(amt.Trim(), out parsedAmount))
                                {
                                    customTotalSum += parsedAmount;
                                }
                            }
                        }
                        break;

                    case DevExpress.Data.CustomSummaryProcess.Finalize:
                        e.TotalValue = customTotalSum;
                        break;
                }
            }
        }

        /// <summary>
        /// Tp Post Master Details
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnPostMaster_Click(object sender, EventArgs e)
        {
            AcmeERPSSPService AcmeSSPService = new AcmeERPSSPService();
            this.ShowWaitDialog("Posting Masters..");
            try
            {
                if (this.CheckForInternetConnectionhttp())
                {
                    DataSyncService.DataSynchronizerClient objDsyncService = new DataSyncService.DataSynchronizerClient();
                    if (objDsyncService.IsLatestLicenseAvailable(this.AppSetting.HeadofficeCode, this.AppSetting.BranchOfficeCode, this.UtilityMember.DateSet.ToDate(this.AppSetting.LicenseKeyGeneratedDate, false)))
                    {
                        MismatchedLicenseKey = IsMismatchedLicenseKeyWithPortalProjects();

                        if (!MismatchedLicenseKey)
                        {
                            if (!string.IsNullOrEmpty(ManagementCode))
                            {
                                //Construct the Projects, Ledgers
                                AcMELog.WriteLog("Started Construct the Masters-Masters");
                                DataSet dsMaster = GetMasters();
                                string Jsonscript = AcmeSSPService.ConstructMasters(dsMaster);
                                AcMELog.WriteLog("Ended Construct the Masters-Masters");
                                AcMELog.WriteLog("Started Posting Vouchers");

                                if (!string.IsNullOrEmpty(ManagementMode))
                                {
                                    if (Defaultmode == ManagementMode)
                                    {
                                        status = AcmeSSPService.PostMaster(ManagementCode.Trim(), Jsonscript); // Web Services

                                        AcMELog.WriteLog("Ended Posting Vouchers");

                                        this.CloseWaitDialog();

                                        if (status.Contains("Success"))
                                        {
                                            AcMELog.WriteLog("Posted Successfully..");
                                            this.ShowMessageBox("Posted Successfully..");
                                            using (UISetting uisetting = new UISetting())
                                            {
                                                resultArgs = uisetting.SaveSettingDetails(Setting.ThirdParty.ToString(), "1", ADMIN_USER_DEFAULT_ID);
                                                if (resultArgs.Success)
                                                {
                                                    this.AppSetting.ThirdPartyIntegration = "1";
                                                    LoadDefault();
                                                }
                                            }
                                        }
                                        else
                                        {
                                            this.ShowMessageBox(status + " - Failed in Posting Masters");
                                            AcMELog.WriteLog("Failed in Posting Masters.." + status);
                                        }
                                    }
                                    else
                                    {
                                        status = AcmeSSPService.APIPostMaster(ManagementCode, Jsonscript); // API Services

                                        AcMELog.WriteLog("Ended Posting Vouchers");

                                        this.CloseWaitDialog();

                                        if (status.Contains("Success"))
                                        {
                                            AcMELog.WriteLog("Posted Successfully..");
                                            this.ShowMessageBox("Posted Successfully..");
                                            using (UISetting uisetting = new UISetting())
                                            {
                                                resultArgs = uisetting.SaveSettingDetails(Setting.ThirdParty.ToString(), "1", ADMIN_USER_DEFAULT_ID);
                                                if (resultArgs.Success)
                                                {
                                                    this.AppSetting.ThirdPartyIntegration = "1";
                                                    LoadDefault();
                                                }
                                            }
                                        }
                                        else
                                        {
                                            // string[] GetErrorMessage = status.Split('"');
                                            //string ErrroMessage = GetErrorMessage[11].ToString();
                                            this.ShowMessageBox(status + " - Failed in Posting Masters");
                                            AcMELog.WriteLog("Failed in Posting Masters.." + status);
                                        }
                                    }
                                }
                                else
                                {
                                    this.CloseWaitDialog();
                                    this.ShowMessageBox("Management mode is empty. please update the license key");
                                    AcMELog.WriteLog("Management Mode is empty");
                                }
                            }
                            else
                            {
                                this.CloseWaitDialog();
                                this.ShowMessageBox("Management code is empty");
                                AcMELog.WriteLog("Management code is empty");
                            }
                        }
                        else
                        {
                            this.CloseWaitDialog();
                            this.ShowMessageBox("Mismatching License Key..");
                            AcMELog.WriteLog("Mismatching License Key..");
                        }
                    }
                }
                else
                {
                    this.CloseWaitDialog();
                    this.ShowMessageBox("Unable reach Cloud Portal. Please check your Internet connection or FTP Rights");
                    resultArgs.Message = "Unable reach Cloud Portal. Please check your Internet connection or FTP Rights";
                    AcMELog.WriteLog("Unable reach Cloud Portal. Please check your Internet connection or FTP Rights");
                }
            }
            catch (FaultException<DataSyncService.AcMeServiceException> ex)
            {
                CloseWaitDialog();
                resultArgs.Message = ex.Detail.Message;
                if (resultArgs.Message.Contains("Your license key is not up-to-date"))
                {
                    this.ShowMessageBox("Your License key is not up-to-date to post/import Masters/Vouchers");
                    AcMELog.WriteLog("Your License key is not up-to-date to post/import Masters/Vouchers");
                }
            }
        }

        private string ConvertToRowFilterSafeString(string doubleQuotedNames)
        {
            // Remove outer quotes if any
            if (doubleQuotedNames.StartsWith("\"") && doubleQuotedNames.EndsWith("\""))
            {
                doubleQuotedNames = doubleQuotedNames.Substring(1, doubleQuotedNames.Length - 2);
            }

            // Split names between "," and process each
            string[] rawNames = doubleQuotedNames.Split(new string[] { "\",\"" }, StringSplitOptions.None);
            List<string> formattedNames = new List<string>();

            foreach (string raw in rawNames)
            {
                string cleaned = raw.Replace("\"", "");         // remove double quotes
                string escaped = cleaned.Replace("'", "''");    // escape single quotes
                string quoted = "'" + escaped + "'";            // wrap in single quotes
                formattedNames.Add(quoted);
            }

            return string.Join(",", formattedNames.ToArray());
        }

        /// <summary>
        /// To Get Vouchers from ssp application ( Any Third Party)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnGetVoucher_Click(object sender, EventArgs e)
        {
            AcMELog.WriteLog("Started Get Vouchers");
            resultArgs = new ResultArgs();
            if (isValidateGet())
            {
                AcMELog.WriteLog("Validated in Sync");
                DataTable dtProjectRecords = GetProjectNames();
                AcMELog.WriteLog("Got Project Name");
                DataTable dtLedgerRecords = new DataTable("Ledger");
                DataSet dsRecords = new DataSet();

                dsRecords = GetMasters();

                // dsRecords.Tables["Ledger"].DefaultView.RowFilter = "PROJECT IN (" + SelectedProjectName.Replace("'", "''") + ")";

                //if (Defaultmode == ManagementMode)
                //{


                dsRecords.Tables["Ledger"].DefaultView.RowFilter = "PROJECT IN (" + SelectedProjectName + ")";

                //}
                //else
                //{
                //    string filterFormatted = ConvertToRowFilterSafeString(SelectedProjectName);
                //    dsRecords.Tables["Ledger"].DefaultView.RowFilter = "PROJECT IN (" + filterFormatted + ")";
                //}

                AcMELog.WriteLog("Sync Name");
                dtLedgerRecords = dsRecords.Tables["Ledger"].DefaultView.ToTable();
                AcMELog.WriteLog("Ledger Records");
                dsRecords.Tables.Remove("Project");
                dsRecords.Tables.Remove("Ledger");

                dsRecords.Tables.Add(dtProjectRecords);
                dsRecords.Tables.Add(dtLedgerRecords);
                AcMELog.WriteLog("Let us added Project and Ledgers");
                AcMEService.AcmeERPSSPService AcmeSSPService = new AcmeERPSSPService();
                DataSyncService.DataSynchronizerClient objDsyncService = new DataSyncService.DataSynchronizerClient();

                DataTable dtMergeRecords = new DataTable();

                DataTable dtMaterilizedSource = new DataTable();
                DataTable dtMaterilizedwithouSource = new DataTable();

                AcMELog.WriteLog("7");
                this.ShowWaitDialog("Fetching Receipts......");
                try
                {
                    if (this.CheckForInternetConnectionhttp())
                    {
                        AcMELog.WriteLog("Before connecting the datasync...");
                        AcMELog.WriteLog("Datasync object is created");
                        if (objDsyncService.IsLatestLicenseAvailable(this.AppSetting.HeadofficeCode, this.AppSetting.BranchOfficeCode, this.UtilityMember.DateSet.ToDate(this.AppSetting.LicenseKeyGeneratedDate, false)))
                        {
                            objDsyncService.Close();
                            objDsyncService = null;
                            AcMELog.WriteLog("Successfully License key validated");
                            //  MismatchedLicenseKey = IsMismatchedLicenseKeyWithPortalProjects();
                            //if (!MismatchedLicenseKey)
                            //{
                            //if (!string.IsNullOrEmpty(ManagementCode))
                            //{
                            //Construct the Projects, Ledgers
                            AcMELog.WriteLog("Started Construct the Masters-Vouchers");
                            DataSet dsMaster = dsRecords; // GetMasters();
                            string JsonFilterMasterscript = AcmeSSPService.ConstructMasters(dsMaster);

                            string JsonAllMasters = AcmeSSPService.ConstructMasters(GetMasters());

                            AcMELog.WriteLog("Ended Construct the Masters-Masters");
                            string datefrom = string.Empty;
                            string dateto = string.Empty;
                            // DataTable dtFetchDate = ReturnDate();
                            // if (dtFetchDate != null && dtFetchDate.Rows.Count > 0)
                            //{
                            // foreach (DataRow drRow in dtFetchDate.Rows)
                            // {
                            // string DateDuration = this.AppSetting.DateSet.ToDate(drRow["CONSTRUCT_VOUCHER_DATE"].ToString());

                            //  DateDuration = DateTime.Parse(DateDuration).ToString("dd/MM/yyyy", CultureInfo.InvariantCulture);

                            //if (!string.IsNullOrEmpty(ManagementMode))
                            //{

                            datefrom = dtDateFrom.DateTime.ToString("dd/MM/yyyy", CultureInfo.InvariantCulture);
                            dateto = dtDateTo.DateTime.ToString("dd/MM/yyyy", CultureInfo.InvariantCulture);

                            if (Defaultmode == ManagementMode) // Web Services
                            {
                                AcMELog.WriteLog("Service started");
                                status = AcmeSSPService.GetVoucher(datefrom, dateto, ManagementCode, JsonAllMasters, JsonFilterMasterscript);  //JsonFilterMasterscript

                                if (!status.Contains("Status"))
                                {
                                    AcMELog.WriteLog("Started Push to Verification datasource in Acme");
                                    DataTable dtConvertTransVoucher = AcmeSSPService.ConvertDeserializedstringToDatatable(status);

                                    dtMergeRecords.Merge(dtConvertTransVoucher);

                                    dtMergeRecords = SortDataTableByDate(dtMergeRecords, "VOUCHER_DATE");

                                    // MultipleStoreMessages += System.Environment.NewLine + DateDuration + ":- " + "Fetch Records Successfully" + System.Environment.NewLine;

                                    //  MultipleStoreMessages += System.Environment.NewLine + "" + ":- " + "Fetch Records Successfully" + System.Environment.NewLine;

                                    MultipleStoreMessages += System.Environment.NewLine + "" + "" + "Fetch Records Successfully" + System.Environment.NewLine;
                                    IsSaved = true;
                                    AcMELog.WriteLog("Successfully fetched data from cloud application");

                                    AcMELog.WriteLog("Got Source is merged");
                                }
                                else
                                {
                                    if (status.Split('"').Length > 1)
                                    {
                                        // Commanded by Chinna // To Show Direct message to ssp Team (11/05/2024)
                                        string[] GetErrorMessage = status.Split('"');
                                        string ErrorMessage = GetErrorMessage[3].ToString();
                                        string errorlogMessages = string.Empty;
                                        // MultipleStoreMessages += System.Environment.NewLine + "We have Received responses from Cloud Portal is." + System.Environment.NewLine + "" + "" + ErrorMessage + ". Please Contact Third Party Team" + System.Environment.NewLine;
                                        errorlogMessages += System.Environment.NewLine + "We have Received responses from Cloud Portal is." + System.Environment.NewLine + "" + "" + ErrorMessage + System.Environment.NewLine;
                                        this.CloseWaitDialog();
                                        IsSaved = false;
                                        //if (!string.IsNullOrEmpty(MultipleStoreMessages))
                                        //    MultipleStoreMessages = MultipleStoreMessages + ".";
                                        AcMELog.WriteLog("Troubleshoot Messages Started");
                                        AcMELog.WriteLog(errorlogMessages);
                                        AcMELog.WriteLog("Troubleshoot Messages Ended");

                                        MultipleStoreMessages = "Not yet received data from Third Party application (SSP or Higrade), Please Try again or Contact Third Party Support Team";

                                        // already Commanded data from chinna (Just today we put down on 11/05/2024)
                                        // MultipleStoreMessages += System.Environment.NewLine + "We have Received responses from Cloud Portal is." + System.Environment.NewLine + DateDuration + ":- " + ErrorMessage + ". Please Contact Third Party Team" + System.Environment.NewLine;
                                        // MultipleStoreMessages += System.Environment.NewLine + "We have Received responses from Cloud Portal is." + System.Environment.NewLine + "" + ":- " + ErrorMessage + ". Please Contact Third Party Team" + System.Environment.NewLine;
                                        // Chinna 14.02.2023
                                        //20/04/2022
                                        //  DeleteTransEmpty(DateDuration, ManagementCode);
                                        AcMELog.WriteLog("Getting Voucher is failed.." + status);
                                    }
                                    else
                                    {
                                        this.CloseWaitDialog();
                                        this.ShowMessageBox(status);
                                        IsSaved = false;
                                        AcMELog.WriteLog("Getting Voucher is failed.." + status);
                                    }
                                }
                            }
                            else
                            {
                                AcMELog.WriteLog("API Inside higrade");
                                datefrom = dtDateFrom.DateTime.ToString("dd/MM/yyyy", CultureInfo.InvariantCulture);
                                dateto = dtDateTo.DateTime.ToString("dd/MM/yyyy", CultureInfo.InvariantCulture);

                                // For Emergency Only

                                //status = AcmeSSPService.APIGetVoucher(datefrom, dateto, ManagementCode, JsonAllMasters, SelectedProjectName, ProId);
                                //bharath 23/05/2026 for Sacred-Heart new api get vouchers
                                if (this.AppSetting.BranchOfficeCode == "sdbinminmshc")
                                {
                                    status = AcmeSSPService.APIGetVoucherLeapSHC(datefrom, dateto, JsonAllMasters, SelectedProjectName, ProId);
                                }
                                else
                                {
                                    status = AcmeSSPService.APIGetVoucher(datefrom, dateto, ManagementCode, JsonAllMasters, SelectedProjectName, ProId);
                                }
                                // status = AcmeSSPService.APIGetVoucher("", ManagementCode, JsonAllMasters);
                                //  if (!status.Contains("Transaction data Found"))
                                if (status.Contains("Transaction data Found"))
                                {
                                    AcMELog.WriteLog("Started Push to Verification datasource in Acme");
                                    DataTable dtConvertTransVoucher = AcmeSSPService.ConvertDeserializedstringToDatatable(status);

                                    dtMergeRecords.Merge(dtConvertTransVoucher);

                                    // MultipleStoreMessages += System.Environment.NewLine + DateDuration + ":- " + "Fetch Records Successfully" + System.Environment.NewLine;

                                    // MultipleStoreMessages += System.Environment.NewLine + "" + ":- " + "Fetch Records Successfully" + System.Environment.NewLine;

                                    // chinna 14.02.202
                                    MultipleStoreMessages += System.Environment.NewLine + "" + "" + "Fetch Records Successfully" + System.Environment.NewLine;
                                    IsSaved = true;
                                    AcMELog.WriteLog("Successfully fetched data from cloud application");

                                    AcMELog.WriteLog("Got Source is merged");
                                }
                                else
                                {
                                    if (status.Split('"').Length > 1)
                                    {
                                        string[] GetErrorMessage = status.Split('"');
                                        string ErrorMessage = "";
                                        if (GetErrorMessage.Length > 11)
                                        {
                                            ErrorMessage = GetErrorMessage[11];
                                        }
                                        else
                                        {
                                            ErrorMessage = "Data Not found from cloud service";
                                        }
                                        MultipleStoreMessages += System.Environment.NewLine + "We have Received responses from Cloud Portal is." + System.Environment.NewLine + "" + "" + ErrorMessage + ". Please Contact Third Party Team" + System.Environment.NewLine;
                                        this.CloseWaitDialog();
                                        IsSaved = false;
                                        if (!string.IsNullOrEmpty(MultipleStoreMessages))
                                            MultipleStoreMessages = MultipleStoreMessages + ".";

                                        //  DeleteTransEmpty(DateDuration, ManagementCode);

                                        AcMELog.WriteLog("Getting Voucher is failed.." + status);
                                    }
                                    else
                                    {
                                        this.CloseWaitDialog();
                                        this.ShowMessageBox(status);
                                        IsSaved = false;
                                        AcMELog.WriteLog("Getting Voucher is failed.." + status);
                                    }
                                }
                            }
                            if (IsSaved)
                            {
                                this.CloseWaitDialog();
                                this.ShowMessageBox(MultipleStoreMessages);
                                AcMELog.WriteLog(MultipleStoreMessages);
                                MultipleStoreMessages = string.Empty;

                                lcgMessageGroup.Visibility = DevExpress.XtraLayout.Utils.LayoutVisibility.Always;
                                this.Height = 600;
                                this.CenterToScreen();

                                DataView dvRecords = new DataView(dtMergeRecords);

                                string DF = dtDateFrom.DateTime.ToString("dd/MM/yyyy", CultureInfo.InvariantCulture);

                                //String.Format(CultureInfo.InvariantCulture.DateTimeFormat, "Date = #{0}#", dateVariable);

                                dvRecords.RowFilter = "CONVERT(VOUCHER_DATE,'System.DateTime')<'" + DF + "'";
                                dtMaterilizedSource = dvRecords.ToTable();
                                dvRecords.RowFilter = string.Empty;

                                dvRecords.RowFilter = "CONVERT(VOUCHER_DATE,'System.DateTime')>='" + DF + "'";
                                dtMaterilizedwithouSource = dvRecords.ToTable();
                                dvRecords.RowFilter = string.Empty;

                                //DataView dtMatWithouSource = new DataView(dtMaterilizedwithouSource);
                                //dtMatWithouSource.Sort = "VOUCHER_DATE ASC";
                                //dtMaterilizedwithouSource = dtMatWithouSource.ToTable();

                                //dtMaterilizedwithouSource 

                                //dtMaterilizedwithouSource = SortDataTableByDate(dtMaterilizedwithouSource, "VOUCHER_DATE");
                                //bharath 09/03/2026 


                                //gcVoucherTransactions.DataSource = dtMaterilizedwithouSource;
                                //gcVoucherTransactions.RefreshDataSource();

                                DataView dvMain = new DataView(dtMaterilizedwithouSource);
                                dvMain.RowFilter = "VOUCHER_TYPE <> 'JN'";
                                gcVoucherTransactions.DataSource = dvMain.ToTable();
                                gcVoucherTransactions.RefreshDataSource();

                                DataView dvJN = new DataView(dtMaterilizedwithouSource);
                                dvJN.RowFilter = "VOUCHER_TYPE = 'JN'";
                                DataTable dtJN = dvJN.ToTable();
                                JNVoucherTransactions.DataSource = dtJN;
                                JNVoucherTransactions.RefreshDataSource();

                                if (dtJN != null && dtJN.Rows.Count > 0)
                                {
                                    layoutControlItem20.Visibility = DevExpress.XtraLayout.Utils.LayoutVisibility.Always;
                                    layoutControlGroup1.Visibility = DevExpress.XtraLayout.Utils.LayoutVisibility.Always;
                                }
                                else
                                {
                                    layoutControlItem20.Visibility = DevExpress.XtraLayout.Utils.LayoutVisibility.Never;
                                    layoutControlGroup1.Visibility = DevExpress.XtraLayout.Utils.LayoutVisibility.Never;
                                }

                                DataView dtMatSource = new DataView(dtMaterilizedSource);
                                dtMatSource.Sort = "VOUCHER_DATE ASC";
                                dtMaterilizedSource = dtMatSource.ToTable();

                                gcMatVoucherTransactions.DataSource = dtMaterilizedSource;
                                gcMatVoucherTransactions.RefreshDataSource();
                                // gcVoucherTransactions.DataSource = dtMergeRecords;
                                //gcVoucherTransactions.RefreshDataSource();
                            }
                            else
                            {
                                this.CloseWaitDialog();
                                if (!string.IsNullOrEmpty(MultipleStoreMessages))
                                {
                                    //  MultipleStoreMessages = System.Environment.NewLine + MultipleStoreMessages + ". Please Contact Third Party Team";
                                    this.ShowMessageBox(MultipleStoreMessages);
                                    AcMELog.WriteLog(MultipleStoreMessages);
                                    MultipleStoreMessages = string.Empty;
                                }
                            }
                        }
                        else
                        {
                            this.CloseWaitDialog();
                            this.ShowMessageBox("Unable reach Cloud Portal. Please check your Internet connection or FTP Rights and not frequency");
                        }
                    }
                    else
                    {
                        this.CloseWaitDialog();
                        this.ShowMessageBox("Unable reach Cloud Portal. Please check your Internet connection or FTP Rights");
                        resultArgs.Message = "Unable reach Cloud Portal. Please check your Internet connection or FTP Rights";
                        AcMELog.WriteLog("Unable reach Cloud Portal. Please check your Internet connection or FTP Rights");
                    }
                }
                catch (FaultException<DataSyncService.AcMeServiceException> ex)
                {
                    CloseWaitDialog();
                    resultArgs.Message = ex.Detail.Message;
                    if (resultArgs.Message.Contains("Your license key is not up-to-date"))
                    {
                        this.ShowMessageBox("Your License key is not up-to-date to post/import Masters/Vouchers. Please Contact Acme.erp Team");
                        AcMELog.WriteLog("Your License key is not up-to-date to post/import Masters/Vouchers");
                    }
                    AcMELog.WriteLog("Problem is Acme.erp services.." + ex.Detail.Message);
                }
                finally
                {
                    CloseWaitDialog();
                    if (objDsyncService != null)
                    {
                        objDsyncService.Close();
                        objDsyncService = null;
                    }
                }
            }
        }

        private static DataTable SortDataTableByDate(DataTable dtSource, string dateColumn)
        {
            DataView dvSource = new DataView(dtSource);
            dvSource.Sort = "VOUCHER_DATE ASC";
            dtSource = dvSource.ToTable();

            return dtSource;
        }

        private bool isValidateGet()
        {
            bool isValid = true;
            if (string.IsNullOrEmpty(ManagementCode))
            {
                isValid = false;
                this.ShowMessageBox("Management code is not updated in the Cloud Portal. Please Contact Third Party Team");
            }
            else if (string.IsNullOrEmpty(GetProjectsIds()))
            {
                isValid = false;
                this.ShowMessageBox("Select the Project, Project is empty");
            }
            else if (string.IsNullOrEmpty(ManagementMode))
            {
                isValid = false;
                this.ShowMessageBox("Management mode is empty. please update the license key");
            }
            else if (IsMismatchedLicenseKeyWithPortalProjects())
            {
                isValid = false;
                this.ShowMessageBox("Mismatched License Key..");
            }
            return isValid;

        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        private bool IsMismatchedLicenseKeyWithPortalProjects()
        {
            bool Rtn = true;
            //On 30/05/2019, to lock uploading databalse if mmismatching license or mismatching projects
            try
            {
                Rtn = this.IsLicenseKeyMismatchedByHoProjects();
            }
            catch (Exception err)
            {
                AcMELog.WriteLog("Error in checking IsLocalDevelopmentIP - Mismatching License Key " + err.Message);
                Rtn = true;
            }


            //On 05/06/2019, to lock uploading databalse if mmismatching license or mismatching locations (DB and License Key)
            if (Rtn == false)
            {
                try
                {
                    Rtn = this.IsLicenseKeyMismatchedByLicenseKeyDBLocation();
                }
                catch (Exception err)
                {
                    AcMELog.WriteLog("Error in checking IsLocalDevelopmentIP - Mismatching License Key " + err.Message);
                    Rtn = true;
                }
            }
            return Rtn;
        }

        /// <summary>
        /// Push to Acme Records
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnPushToAcme_Click(object sender, EventArgs e)
        {
            bool rtn = false;
            if (this.ShowConfirmationMessage("These Transactions inserted in the acme.erp application," +
                        "Are you sure to proceed to update it ?", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                rtn = true;
            }
            else
            {
                rtn = false;
            }
            if (rtn)
            {
                resultArgs = new ResultArgs();



                AcMEService.AcmeERPSSPService AcmeSSPService = new AcmeERPSSPService();

                //DataTable dtPushedData = new DataTable();
                //dtPushedData = (DataTable)gcVoucherTransactions.DataSource;

                DataTable dtPushedData = new DataTable();
                //dtPushedData = (DataTable)gcVoucherTransactions.DataSource;
                //bharath  09/03/2026
                DataTable dt1 = (DataTable)gcVoucherTransactions.DataSource;
                DataTable dt2 = (DataTable)JNVoucherTransactions.DataSource;

                dtPushedData = dt1.Copy();
                dtPushedData.Merge(dt2);

                DataTable dtMaterilizedtSource = (DataTable)gcMatVoucherTransactions.DataSource;

                dtPushedData.Merge(dtMaterilizedtSource);

                //DataView dvSource = new DataView(dtPushedData);
                //dvSource.Sort = "VOUCHER_DATE ASC";
                //dtPushedData = dvSource.ToTable();

                dtPushedData = SortDataTableByDate(dtPushedData, "VOUCHER_DATE");

                DataTable dtFilterData = new DataTable();


                if (dtPushedData != null && dtPushedData.Rows.Count > 0)
                {
                    dtPushedData.AcceptChanges();
                    this.ShowWaitDialog("Pushing to Acme......");
                    try
                    {
                        string FilterDate = "";
                        //if (!string.IsNullOrEmpty(ManagementCode))
                        //{
                        AcMELog.WriteLog("Started Push to Acme ");
                        DataTable dtFetchDate = ReturnDate();
                        if (dtFetchDate != null && dtFetchDate.Rows.Count > 0)
                        {
                            foreach (DataRow drRow in dtFetchDate.Rows)
                            {
                                FilterDate = this.AppSetting.DateSet.ToDate(drRow["CONSTRUCT_VOUCHER_DATE"].ToString());

                                string DF = dtDateFrom.DateTime.ToString("dd/MM/yyyy", CultureInfo.InvariantCulture);
                                //dvRecords.RowFilter = "CONVERT(VOUCHER_DATE,'System.DateTime')<'" + DF + "'";

                                if (this.AppSetting.BranchOfficeCode == "sdbinminmshc")
                                {
                                    if (FilterDate == DF)
                                    {
                                        if (Defaultmode == ManagementMode)
                                        {
                                            dtPushedData.DefaultView.RowFilter = "VOUCHER_DATE='" + FilterDate + "'" + " OR MATERIALIZED_ON='" + DF + "'";
                                        }
                                        else
                                        {
                                            DateTime dtVoucherDate = DateTime.ParseExact(FilterDate, "dd/MM/yyyy", CultureInfo.InvariantCulture);

                                            dtPushedData.DefaultView.RowFilter = string.Format("Convert(VOUCHER_DATE, 'System.DateTime') = #{0:MM/dd/yyyy}#", dtVoucherDate);
                                        }
                                    }
                                    else
                                    {
                                        if (Defaultmode == ManagementMode)
                                        {
                                            dtPushedData.DefaultView.RowFilter = "VOUCHER_DATE='" + FilterDate + "'";
                                        }
                                        else
                                        {
                                            DateTime dtVoucherDate = DateTime.ParseExact(FilterDate, "dd/MM/yyyy", CultureInfo.InvariantCulture);

                                            dtPushedData.DefaultView.RowFilter = string.Format("Convert(VOUCHER_DATE, 'System.DateTime') = #{0:MM/dd/yyyy}#", dtVoucherDate);
                                        }
                                    }
                                }
                                else
                                {
                                    // This is introduced to get the before materilized date transaction details and update the Records 
                                    if (FilterDate == DF)
                                    {
                                        if (Defaultmode == ManagementMode)
                                            dtPushedData.DefaultView.RowFilter = "VOUCHER_DATE='" + FilterDate + "'" + " OR MATERIALIZED_ON='" + DF + "'";
                                        else
                                            dtPushedData.DefaultView.RowFilter = "VOUCHER_DATE='" + DateTime.Parse(FilterDate).Date.ToString("dd-MM-yyyy") + "'";
                                        // dtPushedData.DefaultView.RowFilter = "VOUCHER_DATE='" + FilterDate + "'" + " OR MATERIALIZED_ON='" + DF + "'";
                                    }
                                    else
                                    {
                                        if (Defaultmode == ManagementMode)
                                            dtPushedData.DefaultView.RowFilter = "VOUCHER_DATE='" + FilterDate + "'";
                                        else
                                            dtPushedData.DefaultView.RowFilter = "VOUCHER_DATE='" + DateTime.Parse(FilterDate).Date.ToString("dd-MM-yyyy") + "'";
                                        //dtPushedData.DefaultView.RowFilter = "VOUCHER_DATE='" + DateTime.Parse(FilterDate).Date.ToString("dd/MM/yyyy") + "'";
                                    }
                                }

                                dtFilterData = dtPushedData.DefaultView.ToTable();
                                if (dtFilterData != null && dtFilterData.Rows.Count > 0)
                                {
                                    AcMELog.WriteLog("Started Save Vouchers");

                                    //  DataTable dtSavedInfo = PostVouchers(dtPushedData, FilterDate, ManagementCode);
                                    DataTable dtSavedInfo = PostVouchers(dtFilterData, FilterDate, ManagementCode);
                                    AcMELog.WriteLog("Ended Save Vouchers");

                                    if (dtSavedInfo != null && dtSavedInfo.Rows.Count > 0)
                                    {
                                        DataSet ReturningValue = new DataSet();
                                        ReturningValue.Tables.Add(dtSavedInfo);
                                        string JsonConvertSavedDetails = AcmeSSPService.ConvertDatasetToJson(ReturningValue);
                                        AcMELog.WriteLog("Started Voucher Status");
                                        if (!string.IsNullOrEmpty(ManagementMode))
                                        {
                                            if (Defaultmode == ManagementMode)
                                            {
                                                status = AcmeSSPService.UpdateGetVouchers(ManagementCode, JsonConvertSavedDetails);

                                                AcMELog.WriteLog("Ended Voucher Status");
                                                if (status.Contains("Success"))
                                                {
                                                    IsSaved = true;
                                                    // MultipleStoreMessages += System.Environment.NewLine + FilterDate + ":- " + "Vouchers Inserted Successfully in Acme.erp" + System.Environment.NewLine;
                                                    MultipleStoreMessages = "Vouchers Inserted Successfully in Acme.erp";
                                                }
                                                else
                                                {
                                                    this.CloseWaitDialog();
                                                    string[] GetErrorMessage = status.Split('"');
                                                    string ErrroMessage = System.Environment.NewLine + GetErrorMessage[3].ToString();
                                                    MultipleStoreMessages += System.Environment.NewLine + FilterDate + " :- " + ErrroMessage;
                                                    IsSaved = false;
                                                    AcMELog.WriteLog("Saved Master is Failed.." + status);
                                                    break;
                                                }
                                            }
                                            else
                                            {
                                                status = AcmeSSPService.APIUpdateGetVouchers(ManagementCode, JsonConvertSavedDetails);

                                                AcMELog.WriteLog("Ended Voucher Status");
                                                if (status.Contains("Success"))
                                                {
                                                    IsSaved = true;
                                                    MultipleStoreMessages += System.Environment.NewLine + FilterDate + ":- " + "Vouchers Inserted Successfully in Acme.erp" + System.Environment.NewLine;
                                                }
                                                else
                                                {
                                                    this.CloseWaitDialog();
                                                    string[] GetErrorMessage = status.Split('"');
                                                    string ErrroMessage = System.Environment.NewLine + GetErrorMessage[11].ToString();
                                                    MultipleStoreMessages += System.Environment.NewLine + FilterDate + " :- " + ErrroMessage;
                                                    IsSaved = false;
                                                    AcMELog.WriteLog("Saved Master is Failed.." + status);
                                                    break;
                                                }
                                            }
                                        }
                                        else
                                        {
                                            this.CloseWaitDialog();
                                            this.ShowMessageBox("Management mode is empty. please update the license key");
                                            AcMELog.WriteLog("Management mode is empty");
                                        }
                                    }
                                    else
                                    {
                                        this.CloseWaitDialog();
                                        if (resultArgs.Message == "Online")
                                        {
                                            MultipleStoreMessages = "Vouchers Inserted Successfully in Acme.erp";
                                        }
                                        else
                                        {
                                            MultipleStoreMessages = "Failed in Transaction. Something went wrong" + ".Please contact support Team";
                                            AcMELog.WriteLog("Records is not received");
                                        }
                                        break;
                                    }
                                }
                            }
                        }
                        if (IsSaved)
                        {
                            this.CloseWaitDialog();
                            this.ShowMessageBox(MultipleStoreMessages);
                            AcMELog.WriteLog(MultipleStoreMessages);
                            MultipleStoreMessages = string.Empty;

                            // This is to show the Records from we received 
                            lcgMessageGroup.Visibility = DevExpress.XtraLayout.Utils.LayoutVisibility.Always;
                            this.Height = 408;
                            gcVoucherTransactions.DataSource = null;
                            JNVoucherTransactions.DataSource = null;
                            JNVoucherTransactions.RefreshDataSource();
                            gcVoucherTransactions.RefreshDataSource();


                            gcMatVoucherTransactions.DataSource = null;
                            gcMatVoucherTransactions.RefreshDataSource();
                        }
                        else
                        {
                            this.CloseWaitDialog();
                            if (!string.IsNullOrEmpty(MultipleStoreMessages))
                            {
                                MultipleStoreMessages = "We are not able to provide the Inserted Records status or Cloud is not able to response correctly." + System.Environment.NewLine + MultipleStoreMessages + ". Please Contact Support Team";
                                this.ShowMessageBox(MultipleStoreMessages);
                                AcMELog.WriteLog(MultipleStoreMessages);
                                MultipleStoreMessages = string.Empty;
                            }
                        }
                    }
                    catch (FaultException<DataSyncService.AcMeServiceException> ex)
                    {
                        CloseWaitDialog();
                        resultArgs.Message = ex.Detail.Message;
                        if (resultArgs.Message.Contains("Your license key is not up-to-date"))
                        {
                            this.ShowMessageBox("Your License key is not up-to-date to post/import Masters/Vouchers. Please Contact Acme.erp Team");
                            AcMELog.WriteLog("Your License key is not up-to-date to post/import Masters/Vouchers");
                        }
                    }
                }
                else
                {
                    this.CloseWaitDialog();
                    this.ShowMessageBox("No Records is available in the Cloud Transaction Grid");

                    // 20.04.2022
                    //DeleteTransEmpty(DateDuration, ManagementCode);

                    AcMELog.WriteLog("No Records is available in the Cloud Transaction Grid");
                    //  break;
                }
            }
        }

        /// <summary>
        /// Load Date From 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dtDateFrom_EditValueChanged(object sender, EventArgs e)
        {
            LoadDefault();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void chkShowFilter_CheckedChanged(object sender, EventArgs e)
        {
            gvVoucherTransaction.OptionsView.ShowAutoFilterRow = chkShowFilter.Checked;
            if (chkShowFilter.Checked)
            {
                this.SetFocusRowFilter(gvVoucherTransaction, gcLedger);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void gvVoucherTransaction_RowCountChanged(object sender, EventArgs e)
        {
            lblRecordCount.Text = gvVoucherTransaction.RowCount.ToString();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        /// <summary>
        ///  values 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnClear_Click(object sender, EventArgs e)
        {
            string SelectedDate = string.Empty;
            if (this.ShowConfirmationMessage("Do you want to clear already Posted Records based on selected Date Range?", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                this.ShowWaitDialog("Deleting..");
                DataTable dtFetchDate = ReturnDate();
                if (dtFetchDate != null && dtFetchDate.Rows.Count > 0)
                {
                    foreach (DataRow drRow in dtFetchDate.Rows)
                    {
                        SelectedDate = this.AppSetting.DateSet.ToDate(drRow["CONSTRUCT_VOUCHER_DATE"].ToString());

                        resultArgs = DeleteTransEmpty(SelectedDate, ManagementCode);

                        // Need to check the Refresh Balance
                    }
                }

                if (resultArgs.Success)
                {
                    AcMELog.WriteLog("Delete Vouchers ended TransEmpty..");
                    ShowMessageBox("Deleted Successfully if Exist");
                }
                CloseWaitDialog();
                // this.Close();
            }
        }

        /// <summary>
        /// To show Clear Records  visibility 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void lblAssignManagementCode_DoubleClick(object sender, EventArgs e)
        {
            layoutControlItem8.Visibility = layoutControlItem10.Visibility = layoutControlItem13.Visibility = DevExpress.XtraLayout.Utils.LayoutVisibility.Always;
            //  layoutControlItem2.Visibility = DevExpress.XtraLayout.Utils.LayoutVisibility.Always;
            btnPostMaster.Enabled = true;
        }

        private void btnMasters_Click(object sender, EventArgs e)
        {
            UpdateLatestVersionLocally();
            DownloadMasters();
        }

        /// <summary>
        /// Select and Unselect
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void chkSelectAll_CheckedChanged(object sender, EventArgs e)
        {
            if (chkSelectAll.Checked)
            {
                chklstProjects.CheckAll();
            }
            else
            {
                chklstProjects.UnCheckAll();
            }
        }

        private void btnProjectInvidual_Click(object sender, EventArgs e)
        {
            IndvidualUpdateLatestVersionLocally();
            DownloadMastersProject();
        }

        private void chkMatShowFilter_CheckedChanged(object sender, EventArgs e)
        {
            gvMatVouchersTransactions.OptionsView.ShowAutoFilterRow = chkMatShowFilter.Checked;
            if (chkMatShowFilter.Checked)
            {
                this.SetFocusRowFilter(gvMatVouchersTransactions, gccolMatLedger);
            }
        }

        private void gvMatVouchersTransactions_RowCountChanged(object sender, EventArgs e)
        {
            lblMatDataCount.Text = gvMatVouchersTransactions.RowCount.ToString();
        }

        private void btnExport_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveDialog = new SaveFileDialog();
            string FolderPath = AppDomain.CurrentDomain.BaseDirectory;
            saveDialog.Filter = "Xl Files|.Xls";
            saveDialog.Title = "Third Party Integration";
            saveDialog.FileName = Path.Combine(FolderPath, "ThirdPartyExport.Xls");

            if (saveDialog.ShowDialog() == DialogResult.OK)
            {
                gvVoucherTransaction.ExportToXlsx(saveDialog.FileName);
            }
        }
        #endregion

        private void glkpProjectCategory_EditValueChanged(object sender, EventArgs e)
        {
            if (ManagementCode == tempBranchcode)
            {
                ProCategoryId = (glkpProjectCategory.EditValue != null) ? this.UtilityMember.NumberSet.ToInteger(glkpProjectCategory.EditValue.ToString()) : 0;

                UpdateCurrentAPIURL();
                LoadProjects();
            }
            else
            {
                ProCategoryId = 0;
            }
        }

        public void UpdateCurrentAPIURL()
        {
            if (ManagementCode == tempBranchcode)
            {
                string ProCategoryName = glkpProjectCategory.Text;
                if (projectcategoryArts == ProCategoryName)
                {
                    ManagementURL = SettingProperty.ThirdPartyURL = projectcategoryArtsURL;
                }
                else if (ProjectCaegoryBED == ProCategoryName)
                {
                    ManagementURL = SettingProperty.ThirdPartyURL = ProjectCaegoryBEDURL;
                }
            }
        }
    }
}