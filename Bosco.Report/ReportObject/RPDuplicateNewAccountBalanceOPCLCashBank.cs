using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Linq;
using System.Collections.Generic;
using DevExpress.XtraReports.UI;
using Bosco.Utility;
using Bosco.DAO.Data;
using Bosco.DAO.Schema;
using System.Data;
using Bosco.Report.Base;
using Bosco.Utility.ConfigSetting;
using DevExpress.XtraReports.UI.PivotGrid;
using DevExpress.XtraPivotGrid;
using DevExpress.XtraPrinting;

namespace Bosco.Report.ReportObject
{
    public partial class RPDuplicateNewAccountBalanceOPCLCashBank : Report.Base.ReportBase
    {
        ResultArgs resultArgs = null;
        SettingProperty settingProperty = new SettingProperty();
        public double PeriodBalanceAmount { get; set; }//
        int ProjectNumber = 1;
        //private int _ledgerNameWidth = 260;
        public double TotalCashAmount { get; private set; }
        public double TotalBankAmount { get; private set; }

        //22/05/2026, Chinna - Column widths from parent RPDuplicate header; skip SetReportSetting extendWidth
        public bool ColumnsLockedFromParent { get; set; }

        public float LeftPosition
        {
            set
            {
                xrPGAccountBalanceMulti.LeftF = value;
            }
        }

        public int GroupCodeColumnWidth
        {
            set
            {
                fieldGROUPCODE.Width = value;
            }
        }

        public int GroupNameColumnWidth
        {
            set
            {
                fieldLEDGERGROUP.Width = value;
            }
        }

        //Ledger Code Width
        public int LedgerCodeColumnWidth
        {
            set
            {
                fieldLEDGERCODE.Width = value;
            }
        }

        public int LedgerNameColumnSize 
        {
            set 
            {
                fieldLEDGERNAME.Width = value;
            }
        }

        public int LedgerNameColumnWidth
        {
            set
            {
                fieldLEDGERNAME.Width = value;
            }
        }

        public int AmountColumnWidth
        {
            set
            {
                fieldAMOUNTCASH.Width = value;
            }
        }

        public int BankColumnWidth
        {
            set
            {
                fieldAMOUNTBANK.Width = value;
            }
        }

        //22/05/2026, Chinna - Apply column widths from parent detail subreport (matches receipt/payment XRTable, not page header)
        public void ApplyColumnWidths(float codeWidth, float particularWidth, float cashWidth, float bankWidth, float sectionWidth)
        {
            ColumnsLockedFromParent = true;

            bool isGroupVisible = (ReportProperties.ShowByLedgerGroup == 1);
            bool isLedgerVisible = (ReportProperties.ShowByLedger == 1);
            if (!isGroupVisible && !isLedgerVisible)
                isLedgerVisible = true;

            bool isShowBankDetail = (ReportProperties.ShowDetailedBalance == 1);
            if (isShowBankDetail)
                isShowBankDetail = isLedgerVisible;

            bool isGroupCodeVisible = (isGroupVisible && (ReportProperties.ShowGroupCode == 1));
            bool isLedgerCodeVisible = (isLedgerVisible && (ReportProperties.ShowLedgerCode == 1));

            fieldGROUPCODE.Visible = (isGroupCodeVisible || (isLedgerCodeVisible && !isShowBankDetail));
            fieldLEDGERGROUP.Visible = (isGroupVisible || (isLedgerVisible && !isShowBankDetail));
            if (isGroupVisible && isLedgerVisible && isShowBankDetail)
            {
                fieldLEDGERGROUP.Visible = false;
            }
            fieldLEDGERCODE.Visible = (isShowBankDetail && isLedgerCodeVisible);
            fieldLEDGERNAME.Visible = isShowBankDetail;

            int codeW = fieldGROUPCODE.Visible ? (int)Math.Round(codeWidth) : 0;
            int partW = fieldLEDGERGROUP.Visible ? (int)Math.Round(particularWidth) : 0;

            if (!isShowBankDetail)
            {
                fieldGROUPCODE.Width = codeW;
                fieldLEDGERGROUP.Width = partW;
                fieldLEDGERCODE.Width = 0;
                fieldLEDGERNAME.Width = 0;
            }
            else
            {
                fieldGROUPCODE.Width = fieldGROUPCODE.Visible ? codeW : 0;
                fieldLEDGERGROUP.Width = fieldLEDGERGROUP.Visible ? partW : 0;
                fieldLEDGERCODE.Width = fieldLEDGERCODE.Visible ? codeW +100: 0;
                fieldLEDGERNAME.Width = fieldLEDGERNAME.Visible ? partW : 0;
            }

            fieldAMOUNTCASH.Width = (int)Math.Round(cashWidth);
            fieldAMOUNTBANK.Width = (int)Math.Round(bankWidth);

            ReconcilePivotColumnWidths(sectionWidth);

            ApplyColumnLayout(sectionWidth);
        }

        //22/05/2026, Chinna - Pivot field widths must sum to section width so Cash/Bank align with header borders
        private void ReconcilePivotColumnWidths(float sectionWidth)
        {
            int total = 0;
            if (fieldGROUPCODE.Visible)
                total += fieldGROUPCODE.Width;
            if (fieldLEDGERGROUP.Visible)
                total += fieldLEDGERGROUP.Width;
            if (fieldLEDGERCODE.Visible)
                total += fieldLEDGERCODE.Width;
            if (fieldLEDGERNAME.Visible)
                total += fieldLEDGERNAME.Width;
            if (fieldAMOUNTCASH.Visible)
                total += fieldAMOUNTCASH.Width;
            if (fieldAMOUNTBANK.Visible)
                total += fieldAMOUNTBANK.Width;

            int target = (int)Math.Round(sectionWidth);
            int diff = target - total;
            if (diff != 0 && fieldLEDGERGROUP.Visible)
                fieldLEDGERGROUP.Width += diff;
            else if (diff != 0 && fieldLEDGERNAME.Visible)
                fieldLEDGERNAME.Width += diff;
        }

        //22/05/2026, Chinna - Apply parent header cell widths to pivot (Code | Particular | Cash | Bank); call after BindBalance
        public void ApplyParentHeaderColumns(XRTableCell codeCell, XRTableCell particularCell, XRTableCell cashCell, XRTableCell bankCell, float sectionWidth, float cashColumnWidth, float bankColumnWidth)
        {
            float codeWidth = codeCell != null ? codeCell.WidthF : 0f;
            float particularWidth = particularCell != null ? particularCell.WidthF : 0f;
            ApplyColumnWidths(codeWidth, particularWidth, cashColumnWidth, bankColumnWidth, sectionWidth);
        }

        //22/05/2026, Chinna - Copy width and text alignment from header cell to pivot field (DevExpress 13.2: borders/padding via xrPGAccountBalanceMulti.Styles)
        public static void SyncTableCellToPivotField(XRTableCell parentCell, XRPivotGridField pivotField)
        {
            if (parentCell == null || pivotField == null)
                return;

            int width = (int)Math.Round(parentCell.WidthF);
            if (width < 0)
                width = 0;
            pivotField.Width = width;

            DevExpress.Utils.HorzAlignment horz = ToHorzAlignment(parentCell.TextAlignment);
            pivotField.Appearance.Cell.TextHorizontalAlignment = horz;
            pivotField.Appearance.FieldValue.TextHorizontalAlignment = horz;
            pivotField.Appearance.CustomTotalCell.TextHorizontalAlignment = horz;
            pivotField.Appearance.TotalCell.TextHorizontalAlignment = horz;
            pivotField.Appearance.GrandTotalCell.TextHorizontalAlignment = horz;
        }

        //22/05/2026, Chinna
        private static DevExpress.Utils.HorzAlignment ToHorzAlignment(TextAlignment alignment)
        {
            switch (alignment)
            {
                case TextAlignment.TopRight:
                case TextAlignment.MiddleRight:
                case TextAlignment.BottomRight:
                    return DevExpress.Utils.HorzAlignment.Far;
                case TextAlignment.TopCenter:
                case TextAlignment.MiddleCenter:
                case TextAlignment.BottomCenter:
                    return DevExpress.Utils.HorzAlignment.Center;
                default:
                    return DevExpress.Utils.HorzAlignment.Near;
            }
        }

        //22/05/2026, Chinna - Align pivot grid with XRSubreport width; zero FilterSeparatorBarPadding
        public void ApplyColumnLayout(float totalWidth)
        {
            if (totalWidth < 1f)
                return;

            xrPGAccountBalanceMulti.LeftF = 0f;
            xrPGAccountBalanceMulti.WidthF = totalWidth;
            xrPGAccountBalanceMulti.OptionsPrint.FilterSeparatorBarPadding = 0;

            if (ColumnsLockedFromParent)
            {
                fieldPROJECTID.Visible = false;
                fieldPROJECTID.Width = 0;
                fieldPROJECTID.Options.ShowValues = false;
                xrPGAccountBalanceMulti.OptionsView.ShowGrandTotalsForSingleValues = false;
            }
        }

        public bool LedgerCodeColumnVisible
        {
            set
            {
                fieldLEDGERCODE.Visible = value;
            }
        }
        public bool ledgerFont
        {
            set
            {
                if (value)
                {
                    Font newFont = new Font("Tahoma", 10F, FontStyle.Regular);

                    fieldLEDGERNAME.Appearance.Cell.Font = newFont;
                    fieldLEDGERNAME.Appearance.FieldValue.Font = newFont;
                    fieldLEDGERNAME.Appearance.TotalCell.Font = newFont;
                    fieldLEDGERNAME.Appearance.GrandTotalCell.Font = newFont;

                    xrPGAccountBalanceMulti.Styles.CellStyle.Font = newFont;
                }
            }
        }
        public bool AmountColumnVisible
        {
            set
            {
                fieldAMOUNTCASH.Visible = value;
                fieldAMOUNTBANK.Visible = value;
            }
        }

        public bool ProjectColumnVisible
        {
            set
            {
                fieldPROJECTID.Visible = value;
                if (!value)
                    fieldPROJECTID.Width = 0;
            }
        }




        //public bool AmountColumnWidth
        //{
        //    set
        //    {
        //        //fieldPROJECTID.Visible = value;
        //        fieldAMOUNTCASH.Visible = value;
        //        fieldAMOUNTBANK.Visible = value;
        //    }
        //}
        //public int AmountColumnWidth
        //{
        //    set
        //    {
        //        fieldAMOUNTCASH.Width = value;
        //        fieldAMOUNTBANK.Width = value;
        //    }
        //}
        //public bool AmountColumnVisible
        //{
        //    set
        //    {
        //        fieldAMOUNTCASH.Visible = value;
        //        fieldAMOUNTBANK.Visible = value;

        //        if (!value)
        //        {
        //            fieldAMOUNTCASH.Width = 0;
        //            fieldAMOUNTBANK.Width = 0;
        //        }
        //        else
        //        {
        //            fieldAMOUNTCASH.Width = 120;
        //            fieldAMOUNTBANK.Width = 120;
        //        }
        //    }
        //}

        //public bool ProjectColumnVisible //added By Diensh 
        //{
        //    set 
        //    {
        //        fieldPROJECTID.Visible = value;
        //    }
        //}
        //public bool ProjectColumnVisible
        //{
        //    set
        //    {
        //        fieldPROJECTID.Visible = value;

        //        if (!value)
        //            fieldPROJECTID.Width = 0;
        //    }
        //}

        /// <summary>False hides only the project column strip; row captions (Code, Opening Balance) stay visible.</summary>
        public bool ShowColumnHeader
        {
            set
            {
                fieldPROJECTID.Options.ShowValues = value;
            }
        }

        private DataTable dtProjectListDetails = null;
        public DataTable ProjectListDetails
        {
            set
            {
                dtProjectListDetails = value;
            }
        }
        public XRPivotGridStyles PivotGridStyles
        {
            get
            {
                return xrPGAccountBalanceMulti.Styles;
            }
        }
        public XRPivotGridStyles ApplyParentReportStyle
        {
            set
            {
                xrPGAccountBalanceMulti.Styles.CellStyle.Font = new Font(value.CellStyle.Font, value.CellStyle.Font.Style);
                xrPGAccountBalanceMulti.Styles.FieldHeaderStyle.Font = new Font(value.FieldHeaderStyle.Font, value.FieldHeaderStyle.Font.Style);
                //xrPGAccountBalanceMulti.Styles.CellStyle.Font = new Font(value.CellStyle.Font, value.CellStyle.Font.Style);
                xrPGAccountBalanceMulti.Styles.FieldHeaderStyle.Font = new Font(value.FieldHeaderStyle.Font, value.FieldHeaderStyle.Font.Style);
                xrPGAccountBalanceMulti.Styles.HeaderGroupLineStyle.Font = new Font(value.HeaderGroupLineStyle.Font, value.HeaderGroupLineStyle.Font.Style);
                xrPGAccountBalanceMulti.Styles.GrandTotalCellStyle.Font = new Font(value.GrandTotalCellStyle.Font, value.GrandTotalCellStyle.Font.Style);


                //22/09/2020, To fix Border color based on settings
                xrPGAccountBalanceMulti.Styles.FieldHeaderStyle.BorderColor = ((int)BorderStyleCell.Regular == this.ReportProperties.ReportBorderStyle) ? System.Drawing.Color.Gainsboro : System.Drawing.Color.Black;
                xrPGAccountBalanceMulti.Styles.CellStyle.BorderColor = ((int)BorderStyleCell.Regular == this.ReportProperties.ReportBorderStyle) ? System.Drawing.Color.Gainsboro : System.Drawing.Color.Black;
                xrPGAccountBalanceMulti.Styles.GrandTotalCellStyle.BorderColor = ((int)BorderStyleCell.Regular == this.ReportProperties.ReportBorderStyle) ? System.Drawing.Color.Gainsboro : System.Drawing.Color.Black;
            }
        }

        DataTable dtBalGrantTotal = null;

        public DataTable GrantTotalBalance
        {
            get
            {
                return GetGrantTotalSource();
            }
        }

        /// <summary>
        /// On 28/06/2018, This property is used to skip bank ledger's which is closed on or equal to this date
        /// 
        /// This date is apart from balance date. If we take reports for given period (DATE_FROM and DATE_TO)
        /// When we show closing balance for DATE_TO, we have to check bank ledger closed date for DATE_FROM
        /// </summary>
        public string BankClosedDate { get; set; }

        public bool IsOpeningBalance { get; set; }

        //bharath 12-05
        /// <summary>When true, hides aggregate Total Cash/Bank columns across projects (parent abstract reports).</summary>
        public bool HideColumnGrandTotals { get; set; }

        public RPDuplicateNewAccountBalanceOPCLCashBank()
        {
            InitializeComponent();
            //22/05/2026, Chinna - Zero margins/padding so subreport columns align with parent header
            this.Margins = new System.Drawing.Printing.Margins(0, 0, 0, 0);
            this.TopMargin.HeightF = 0f;
            this.BottomMargin.HeightF = 0f;
            xrPGAccountBalanceMulti.OptionsPrint.FilterSeparatorBarPadding = 0;
        }

        public override void ShowReport()
        {
            base.ShowReport();
        }

        private ResultArgs GetBalance(string balDate, string projectIds, string groupIds)
        {
            //On 28/09/2023, To attach Applicable date Range
            DateTime dFromApplicable = string.IsNullOrEmpty(BankClosedDate) ? this.settingProperty.FirstFYDateFrom :
                UtilityMember.DateSet.ToDate(BankClosedDate, false);
            DateTime dToApplicable = string.IsNullOrEmpty(ReportProperties.DateTo) ? settingProperty.LastFYDateTo :
                UtilityMember.DateSet.ToDate(ReportProperties.DateTo, false);

            using (DataManager dataManager = new DataManager(SQLCommand.TransBalance.FetchBalance))
            {
                dataManager.Parameters.Add(this.ReportParameters.PROJECT_IDColumn, projectIds);
                dataManager.Parameters.Add(this.ReportParameters.GROUP_IDColumn, groupIds);
                dataManager.Parameters.Add(this.ReportParameters.BALANCE_DATEColumn, balDate);

                //On 28/06/2018, This property is used to skip bank ledger's which is closed on or equal to this date
                if (!string.IsNullOrEmpty(BankClosedDate))
                {
                    dataManager.Parameters.Add(this.ReportParameters.DATE_CLOSEDColumn, BankClosedDate);
                }

                //On 28/09/2023, To attach Applicable date Range
                dataManager.Parameters.Add(this.ReportParameters.APPLICABLE_FROMColumn, dFromApplicable);
                dataManager.Parameters.Add(this.ReportParameters.APPLICABLE_TOColumn, dToApplicable);
                //bharath 26/02/2026 
                dataManager.Parameters.Add(this.ReportParameters.DISPLAY_INPUT_LANColumn, SettingProperty.Current.DisplayInputLanguage == "1" ? 1 : 0);
                dataManager.DataCommandArgs.IsDirectReplaceParameter = true;
                resultArgs = dataManager.FetchData(DAO.Data.DataSource.DataTable);
            }
            return resultArgs;
        }

        public void BindBalance(bool isOpBalance)
        {
            ProjectNumber = 1;
            string dateFrom = ReportProperties.DateFrom;
            string dateTo = ReportProperties.DateTo;
            string balDate = "";
            string projectIds = ReportProperties.Project;
            string groupIds = this.GetLiquidityGroupIds();
            IsOpeningBalance = isOpBalance;
            string itrgroups = string.Empty;
            string itrgroupIds = string.Empty;

            //On 15/11/2024 - To define itr groups
            if (ReportProperties.ReportId == "RPT-228")
            {
                ResultArgs result = this.GetProjects();
                if (result.Success)
                {
                    DataTable dtSelectedProjects = result.DataSource.Table;
                    dtSelectedProjects.DefaultView.RowFilter = "PROJECt_Id IN (" + projectIds + ")";

                    if (dtSelectedProjects.DefaultView.Count > 0)
                    {
                        DataTable dt = dtSelectedProjects.DefaultView.ToTable(true, new string[] { "PROJECT_CATOGORY_ITRGROUP_ID", "PROJECT_CATOGORY_ITRGROUP" });
                        foreach (DataRow dr in dt.Rows)
                        {
                            itrgroupIds += dr["PROJECT_CATOGORY_ITRGROUP_ID"].ToString() + ",";
                            itrgroups += dr["PROJECT_CATOGORY_ITRGROUP"].ToString() + ",";
                        }
                        itrgroupIds = itrgroupIds.TrimEnd(',');
                        itrgroups = itrgroups.TrimEnd(',');
                    }

                    if (string.IsNullOrEmpty(itrgroupIds)) itrgroupIds = "0";
                }

                projectIds = itrgroupIds;
            }

            string transMode = "";
            double amount = 0;
            int LedgerId = 0;

            if (dateTo == "") { dateTo = ReportProperties.DateAsOn; }
            DateTime date_from = DateTime.Parse(dateFrom);
            DateTime date_to = DateTime.Parse(dateTo);

            if (isOpBalance)
            {
                //For Opening Balance, Finding Balance Date
                DateTime dateBalance = DateTime.Parse(dateFrom).AddDays(-1);
                balDate = dateBalance.ToShortDateString();
            }
            else //Closing Date
            {
                balDate = dateTo;
            }

            //Get Schema
            resultArgs = GetBalance(dateFrom, "0", "0");
            DataTable dtBalance = resultArgs.DataSource.Table;

            dtBalance.Columns.Add(reportSetting1.AccountBalance.PROJECT_IDColumn.ColumnName, typeof(int));
            dtBalance.Columns.Add(reportSetting1.AccountBalance.PROJECT_NAMEColumn.ColumnName, typeof(string));
            dtBalance.Columns.Add(reportSetting1.MultiAbstract.AMOUNT_CASHColumn.ColumnName, typeof(Double));
            dtBalance.Columns.Add(reportSetting1.MultiAbstract.AMOUNT_BANKColumn.ColumnName, typeof(Double));

            Int32 ProjectRow = 1;
            string[] ProjectsList = projectIds.Split(',');
            foreach (string projectid in ProjectsList)
            {
                string pids = projectid;
                //On 15/11/2024
                if (ReportProperties.ReportId == "RPT-228")
                {
                    if (ReportProperties.dtProjectSelected != null)
                    {
                        pids = string.Empty;
                        ReportProperties.dtProjectSelected.DefaultView.RowFilter = "PROJECT_CATOGORY_ITRGROUP_ID=" + projectid;
                        foreach (DataRowView drv in ReportProperties.dtProjectSelected.DefaultView)
                        {
                            pids += drv["PROJECT_ID"].ToString() + ",";
                        }
                    }
                    pids = pids.TrimEnd(',');
                }
                if (string.IsNullOrEmpty(pids)) pids = projectid;

                //Fill Each Project Balance into 1 Table
                resultArgs = GetBalance(balDate, pids, groupIds);
                DataTable dtBalProject = resultArgs.DataSource.Table;

                if (dtBalProject != null)
                {
                    if (dtBalProject.Rows.Count > 0)
                    {
                        foreach (DataRow drBalMonth in dtBalProject.Rows)
                        {
                            transMode = drBalMonth[reportSetting1.AccountBalance.TRANS_MODEColumn.ColumnName].ToString();
                            amount = UtilityMember.NumberSet.ToDouble(drBalMonth[reportSetting1.AccountBalance.AMOUNTColumn.ColumnName].ToString());
                            LedgerId = UtilityMember.NumberSet.ToInteger(drBalMonth[reportSetting1.AccountBalance.LEDGER_IDColumn.ColumnName].ToString());
                            Int32 GroupId = UtilityMember.NumberSet.ToInteger(drBalMonth[reportSetting1.AccountBalance.GROUP_IDColumn.ColumnName].ToString());
                            if (transMode == TransactionMode.CR.ToString()) { amount = -amount; }

                            DataRow drBalance = dtBalance.NewRow();
                            drBalance[reportSetting1.AccountBalance.PROJECT_IDColumn.ColumnName] = projectid;
                            drBalance[reportSetting1.AccountBalance.PROJECT_NAMEColumn.ColumnName] = projectid;
                            drBalance[reportSetting1.AccountBalance.GROUP_IDColumn.ColumnName] = drBalMonth[reportSetting1.AccountBalance.GROUP_IDColumn.ColumnName];
                            drBalance[reportSetting1.AccountBalance.GROUP_CODEColumn.ColumnName] = drBalMonth[reportSetting1.AccountBalance.GROUP_CODEColumn.ColumnName];
                            drBalance[reportSetting1.AccountBalance.LEDGER_GROUPColumn.ColumnName] = drBalMonth[reportSetting1.AccountBalance.LEDGER_GROUPColumn.ColumnName];
                            drBalance[reportSetting1.AccountBalance.LEDGER_IDColumn.ColumnName] = drBalMonth[reportSetting1.AccountBalance.LEDGER_IDColumn.ColumnName];
                            drBalance[reportSetting1.AccountBalance.LEDGER_CODEColumn.ColumnName] = drBalMonth[reportSetting1.AccountBalance.LEDGER_CODEColumn.ColumnName];
                            drBalance[reportSetting1.AccountBalance.LEDGER_NAMEColumn.ColumnName] = drBalMonth[reportSetting1.AccountBalance.LEDGER_NAMEColumn.ColumnName];
                            drBalance[reportSetting1.AccountBalance.AMOUNTColumn.ColumnName] = amount;
                            drBalance[reportSetting1.AccountBalance.TRANS_MODEColumn.ColumnName] = transMode;

                            if (GroupId == (int)FixedLedgerGroup.Cash)
                                drBalance[reportSetting1.MultiAbstract.AMOUNT_CASHColumn.ColumnName] = amount;
                            else
                                drBalance[reportSetting1.MultiAbstract.AMOUNT_BANKColumn.ColumnName] = amount;

                            //On 01/03/2019, to hide last column (this is not grand coumun total)
                            //drBalance[reportSetting1.AccountBalance.AC_YEAR_NAMEColumn.ColumnName] = FinanceFromDate.Year.ToString() + "-" + FinanceToDate.Year.ToString();
                            if (fieldPROJECTID.Options.ShowValues && ProjectRow == ProjectsList.Length && IsOpeningBalance)
                            {
                                drBalance[reportSetting1.AccountBalance.PROJECT_NAMEColumn.ColumnName] = "Total";
                            }
                            else
                            {
                                drBalance[reportSetting1.AccountBalance.PROJECT_NAMEColumn.ColumnName] = projectid;
                            }

                            dtBalance.Rows.Add(drBalance);
                        }
                    }
                    else
                    {
                        DataRow drBalance = dtBalance.NewRow();
                        drBalance[reportSetting1.AccountBalance.PROJECT_IDColumn.ColumnName] = projectid;

                        //On 01/03/2019, to hide last column (this is not grand coumun total)
                        //drBalance[reportSetting1.AccountBalance.AC_YEAR_NAMEColumn.ColumnName] = FinanceFromDate.Year.ToString() + "-" + FinanceToDate.Year.ToString();
                        if (fieldPROJECTID.Options.ShowValues && ProjectRow == ProjectsList.Length && IsOpeningBalance)
                        {
                            drBalance[reportSetting1.AccountBalance.PROJECT_NAMEColumn.ColumnName] = "Total";
                        }
                        else
                        {
                            drBalance[reportSetting1.AccountBalance.PROJECT_NAMEColumn.ColumnName] = projectid;
                        }
                        dtBalance.Rows.Add(drBalance);
                    }
                }
                ProjectRow++;
            }

            dtBalance.AcceptChanges();
            DataView dvBalance = dtBalance.DefaultView;

            if (dvBalance != null)
            {
                dvBalance.Table.TableName = "AccountBalance";
                xrPGAccountBalanceMulti.DataSource = dvBalance;
                xrPGAccountBalanceMulti.DataMember = dvBalance.Table.TableName;
            }

            SetReportSetting();
            CalculateGrandTotals();
        }
        /// <summary>
        /// Calculates total Cash and total Bank values from the data source
        /// </summary>
        private void CalculateGrandTotals()
        {
            TotalCashAmount = 0;
            TotalBankAmount = 0;

            try
            {
                // Get the data source from the pivot grid
                DataView dv = xrPGAccountBalanceMulti.DataSource as DataView;
                if (dv != null && dv.Table != null)
                {
                    DataTable dt = dv.Table;

                    // Calculate total Cash amount
                    if (dt.Columns.Contains(reportSetting1.MultiAbstract.AMOUNT_CASHColumn.ColumnName))
                    {
                        object cashResult = dt.Compute("SUM([" + reportSetting1.MultiAbstract.AMOUNT_CASHColumn.ColumnName + "])", "");
                        if (cashResult != DBNull.Value && cashResult != null)
                        {
                            TotalCashAmount = Convert.ToDouble(cashResult);
                        }
                    }

                    // Calculate total Bank amount
                    if (dt.Columns.Contains(reportSetting1.MultiAbstract.AMOUNT_BANKColumn.ColumnName))
                    {
                        object bankResult = dt.Compute("SUM([" + reportSetting1.MultiAbstract.AMOUNT_BANKColumn.ColumnName + "])", "");
                        if (bankResult != DBNull.Value && bankResult != null)
                        {
                            TotalBankAmount = Convert.ToDouble(bankResult);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle error silently - totals remain 0
                System.Diagnostics.Debug.WriteLine("Error in CalculateGrandTotals: " + ex.Message);
            }
        }
        private DataTable GetGrantTotalSource()
        {
            DataTable dtGrantTotal = new DataTable();
            dtGrantTotal.Columns.Add(reportSetting1.AccountBalance.LEDGER_NAMEColumn.ColumnName, typeof(string));
            dtGrantTotal.Columns.Add(reportSetting1.AccountBalance.YEARColumn.ColumnName, typeof(int));
            dtGrantTotal.Columns.Add(reportSetting1.MultiAbstract.AMOUNTColumn.ColumnName, typeof(double));

            object oTotVal = null;
            double totVal = 0;
            int row = xrPGAccountBalanceMulti.RowCount - 1;

            for (int col = 0; col < xrPGAccountBalanceMulti.ColumnCount; col++)
            {
                oTotVal = xrPGAccountBalanceMulti.GetCellValue(col, row);
                totVal = this.UtilityMember.NumberSet.ToDouble(oTotVal.ToString());
                DataRow drGrantTotal = dtGrantTotal.NewRow();
                drGrantTotal[reportSetting1.AccountBalance.LEDGER_NAMEColumn.ColumnName] = "Grand Total";
                drGrantTotal[reportSetting1.AccountBalance.YEARColumn.ColumnName] = (col + 1);
                drGrantTotal[reportSetting1.MultiAbstract.AMOUNTColumn.ColumnName] = totVal;

                dtGrantTotal.Rows.Add(drGrantTotal);
            }

            dtGrantTotal.AcceptChanges();
            return dtGrantTotal;
        }

        private void xrPGAccountBalanceMulti_CustomFieldSort(object sender, DevExpress.XtraReports.UI.PivotGrid.PivotGridCustomFieldSortEventArgs e)
        {
            if (e.Field.Name == fieldPROJECTID.Name)
            {
                if (e.Value1 != null && e.Value2 != null)
                {
                    Int32 projectid1 = UtilityMember.NumberSet.ToInteger(e.GetListSourceColumnValue(e.ListSourceRowIndex1, reportSetting1.AccountBalance.PROJECT_IDColumn.ColumnName).ToString());
                    Int32 projectid2 = UtilityMember.NumberSet.ToInteger(e.GetListSourceColumnValue(e.ListSourceRowIndex2, reportSetting1.AccountBalance.PROJECT_IDColumn.ColumnName).ToString());
                    e.Result = Comparer.Default.Compare(projectid1, projectid2);

                    e.Handled = true;
                }
            }
            else if (e.Field.Name == fieldGROUPCODE.Name || e.Field.Name == fieldLEDGERCODE.Name || e.Field.Name == fieldLEDGERNAME.Name)
            {   //On 10/01/2025 - To have proper ledger name sort order if show detials cash, bank and fd ledgers
                //string ledgergroup1 = (e.GetListSourceColumnValue(e.ListSourceRowIndex1, reportSetting1.AccountBalance.LEDGER_GROUPColumn.ColumnName).ToString());
                //string ledgergroup2 = (e.GetListSourceColumnValue(e.ListSourceRowIndex2, reportSetting1.AccountBalance.LEDGER_GROUPColumn.ColumnName).ToString());
                //e.Result = Comparer.Default.Compare(ledgergroup1, ledgergroup2);
                //e.Handled = true;

                // Temp //
                //On 10/01/2025 - To have proper ledger name sort order if show detials cash, bank and fd ledgers
                string ledgergroup1 = e.GetListSourceColumnValue(e.ListSourceRowIndex1, reportSetting1.AccountBalance.LEDGER_GROUPColumn.ColumnName).ToString();
                string ledgergroup2 = e.GetListSourceColumnValue(e.ListSourceRowIndex2, reportSetting1.AccountBalance.LEDGER_GROUPColumn.ColumnName).ToString();
                int groupCompare = Comparer.Default.Compare(ledgergroup1, ledgergroup2);
                if (this.ReportProperties.ShowDetailedBalance != 1)
                {
                    e.Result = groupCompare;
                }
                else
                {
                    if (groupCompare == 0)
                    {
                        string ledgername1 = e.GetListSourceColumnValue(e.ListSourceRowIndex1, reportSetting1.AccountBalance.LEDGER_NAMEColumn.ColumnName).ToString();
                        string ledgername2 = e.GetListSourceColumnValue(e.ListSourceRowIndex2, reportSetting1.AccountBalance.LEDGER_NAMEColumn.ColumnName).ToString();
                        e.Result = Comparer.Default.Compare(ledgername1, ledgername2);
                    }
                    else
                    {
                        e.Result = groupCompare;
                    }
                }
                e.Handled = true;
            }
        }

        private void xrPGAccountBalanceMulti_FieldValueDisplayText(object sender, DevExpress.XtraReports.UI.PivotGrid.PivotFieldDisplayTextEventArgs e)
        {
            if (e.ValueType == DevExpress.XtraPivotGrid.PivotGridValueType.GrandTotal)
            {
                e.DisplayText = "Total";
                if (!ColumnsLockedFromParent)
                    fieldLEDGERCODE.Visible = false;
            }
        }

        private void xrPGAccountBalanceMulti_PrintFieldValue(object sender, DevExpress.XtraReports.UI.PivotGrid.CustomExportFieldValueEventArgs e)
        {
            if (e.Field != null)
            {
                if (e.Field.Name == fieldLEDGERCODE.Name || e.Field.Name == fieldLEDGERNAME.Name
                    || e.Field.Name == fieldGROUPCODE.Name || e.Field.Name == fieldLEDGERGROUP.Name)
                {
                    e.Appearance.TextHorizontalAlignment = DevExpress.Utils.HorzAlignment.Near;

                    if (e.Field.Name == fieldLEDGERNAME.Name || e.Field.Name == fieldLEDGERGROUP.Name)
                    {
                        e.Brick.Text = e.Brick.Text.Trim();
                    }
                }
                else if (e.Field.Name == fieldPROJECTID.Name)
                {
                    if (!fieldPROJECTID.Options.ShowValues)
                    {
                        e.Appearance.TextHorizontalAlignment = DevExpress.Utils.HorzAlignment.Center;
                        e.Brick.Text = "";
                        e.Brick.BorderWidth = 0;
                        e.Appearance.BackColor = Color.White;
                        DevExpress.XtraPrinting.TextBrick tb = e.Brick as DevExpress.XtraPrinting.TextBrick;
                        tb.Size = new SizeF(tb.Size.Width, 0);
                    }
                    else
                    {
                        e.Appearance.TextHorizontalAlignment = DevExpress.Utils.HorzAlignment.Center;
                        e.Appearance.BorderColor = xrPGAccountBalanceMulti.Styles.FieldHeaderStyle.BorderColor;
                        e.Appearance.BackColor = xrPGAccountBalanceMulti.Styles.FieldHeaderStyle.BackColor;
                        e.Appearance.Font = xrPGAccountBalanceMulti.Styles.FieldHeaderStyle.Font;

                        Int32 projectid = UtilityMember.NumberSet.ToInteger(e.Brick.Text);
                        string ProjectCategory = string.Empty;
                        string ProjectITRGroup = string.Empty;
                        if (dtProjectListDetails != null && dtProjectListDetails.Rows.Count > 0)
                        {
                            dtProjectListDetails.DefaultView.RowFilter = string.Empty;
                            if (ReportProperties.ReportId == "RPT-228")
                            {
                                dtProjectListDetails.DefaultView.RowFilter = "PROJECT_CATOGORY_ITRGROUP_ID = " + projectid;
                                if (dtProjectListDetails.DefaultView.Count > 0)
                                {
                                    ProjectITRGroup = dtProjectListDetails.DefaultView[0]["PROJECT_CATOGORY_ITRGROUP"].ToString().Trim();
                                    ProjectCategory = "";
                                    e.Brick.Text = ProjectITRGroup;
                                }
                            }
                            else
                            {
                                dtProjectListDetails.DefaultView.RowFilter = "PROJECT_ID = " + projectid;
                                if (dtProjectListDetails.DefaultView.Count > 0)
                                {
                                    ProjectCategory = dtProjectListDetails.DefaultView[0]["PROJECT_CATOGORY_NAME"].ToString().Trim();
                                    ProjectITRGroup = "";
                                    e.Brick.Text = "";
                                }
                            }
                        }

                        e.Brick.TextValue = e.Brick.Text;
                        ProjectNumber++;
                    }
                }
                else if (e.Field.Name == fieldAMOUNTCASH.Name || e.Field.Name == fieldAMOUNTBANK.Name)
                {
                    e.Appearance.TextHorizontalAlignment = DevExpress.Utils.HorzAlignment.Far;
                    e.Appearance.BorderColor = xrPGAccountBalanceMulti.Styles.FieldHeaderStyle.BorderColor;
                    e.Appearance.BackColor = xrPGAccountBalanceMulti.Styles.FieldHeaderStyle.BackColor;
                    e.Appearance.Font = xrPGAccountBalanceMulti.Styles.FieldHeaderStyle.Font;

                    // When project column captions are hidden, Cash/Bank captions print on a second header row; move them up to align with row headers (Code / balance caption).
                 
                        DevExpress.XtraPrinting.TextBrick tb = e.Brick as DevExpress.XtraPrinting.TextBrick;

                        if (tb != null)
                        {
                            tb.Text = "";
                            tb.TextValue = "";
                            tb.Size = new SizeF(tb.Size.Width, 0f);
                        }
                    
                }

                if (e.ValueType == DevExpress.XtraPivotGrid.PivotGridValueType.Total)
                {
                    e.Appearance.Font = xrPGAccountBalanceMulti.Styles.HeaderGroupLineStyle.Font;
                    e.Appearance.Font = fieldLEDGERGROUP.Appearance.FieldValue.Font;
                    e.Appearance.TextHorizontalAlignment = DevExpress.Utils.HorzAlignment.Far;
                }
                else if (e.ValueType == PivotGridValueType.GrandTotal)
                {
                    e.Appearance.TextHorizontalAlignment = DevExpress.Utils.HorzAlignment.Far;
                }
            }
        }

        private void xrPGAccountBalanceMulti_PrintCell(object sender, DevExpress.XtraReports.UI.PivotGrid.CustomExportCellEventArgs e)
        {
            if (e.RowValue.ItemType == DevExpress.XtraPivotGrid.Data.PivotFieldValueItemType.TotalCell ||
                 e.RowValue.ItemType == DevExpress.XtraPivotGrid.Data.PivotFieldValueItemType.GrandTotalCell)
            {
                //e.Appearance.BackColor = xrPGMultiAbstractReceipt.Styles.HeaderGroupLineStyle.BackColor;
                //e.Appearance.Font = xrPGMultiAbstractReceipt.Styles.HeaderGroupLineStyle.Font;

                e.Appearance.Font = xrPGAccountBalanceMulti.Styles.FieldHeaderStyle.Font;
                e.Appearance.TextHorizontalAlignment = DevExpress.Utils.HorzAlignment.Far;
            }

            if (e.RowValue.ItemType == DevExpress.XtraPivotGrid.Data.PivotFieldValueItemType.Cell)
            {
                if (e.Brick.TextValue != null)
                {
                    double value = this.UtilityMember.NumberSet.ToDouble(e.Brick.TextValue.ToString());
                    e.Brick.Text = value.ToString("N2");
                }
                else
                {
                    e.Brick.Text = "0.00";
                }

                e.Appearance.Font = xrPGAccountBalanceMulti.Styles.CellStyle.Font;

                //if (e.ColumnFieldIndex == xrPGAccountBalanceMulti.ColumnCount - 1)
                //{
                //    e.Brick.Text = "";
                //}
            }
        }

        private void SetReportSetting()
        {
            //22/05/2026, Chinna - When synced from RPDuplicate parent header, do not redistribute pivot column widths
            if (ColumnsLockedFromParent)
            {
                ApplyLockedColumnReportSetting();
                return;
            }

            int extendWidth = 0;

            try { fieldGROUPCODE.Visible = true; }
            catch { }
            try { fieldLEDGERGROUP.Visible = true; }
            catch { }
            try { fieldLEDGERCODE.Visible = true; }
            catch { }
            try { fieldLEDGERNAME.Visible = true; }
            catch { }

            fieldGROUPCODE.AreaIndex = 0;
            fieldLEDGERGROUP.AreaIndex = 1;
            fieldLEDGERCODE.AreaIndex = 2;
            fieldLEDGERNAME.AreaIndex = 3;

            bool isGroupVisible = (ReportProperties.ShowByLedgerGroup == 1);
            bool isLedgerVisible = (ReportProperties.ShowByLedger == 1);
            if (isGroupVisible == false && isLedgerVisible == false) { isLedgerVisible = true; }
            bool isShowBankDetail = (ReportProperties.ShowDetailedBalance == 1);

            bool isGroupCodeVisible = (isGroupVisible && (ReportProperties.ShowGroupCode == 1));
            bool isLedgerCodeVisible = (isLedgerVisible && (ReportProperties.ShowLedgerCode == 1));

            if (IsOpeningBalance)
            {
                //bharath 10/02/2026 Language Update
                fieldLEDGERNAME.Caption = fieldLEDGERGROUP.Caption = MessageRender.GetMessage(MessageCatalog.Criteria.OPENING_BALANCE);
            }
            else
            {
                fieldLEDGERNAME.Caption = fieldLEDGERGROUP.Caption = MessageRender.GetMessage(MessageCatalog.Criteria.CLOSING_BALANCE);
            }

            if (isShowBankDetail)
            {
                isShowBankDetail = isLedgerVisible;
            }

            bool isHorizontalLine = (ReportProperties.ShowHorizontalLine == 1);
            bool isVerticalLine = (ReportProperties.ShowVerticalLine == 1);

            //Include / Exclude Code
            try { fieldGROUPCODE.Visible = (isGroupCodeVisible || (isLedgerCodeVisible && !isShowBankDetail)); }
            catch { }
            try { fieldLEDGERGROUP.Visible = (isGroupVisible || (isLedgerVisible && !isShowBankDetail)); }
            catch { }
            try { fieldLEDGERCODE.Visible = (isShowBankDetail && isLedgerCodeVisible); }
            catch { }
            try { fieldLEDGERNAME.Visible = isShowBankDetail; }
            catch { }

            if (isGroupVisible) { extendWidth = fieldLEDGERGROUP.Width; }
            if (isLedgerVisible) { extendWidth += fieldLEDGERNAME.Width; }
            if (isGroupCodeVisible) { extendWidth += fieldGROUPCODE.Width; }
            if (isLedgerCodeVisible) { extendWidth += fieldLEDGERCODE.Width; }

            if (fieldGROUPCODE.Visible) { extendWidth -= fieldGROUPCODE.Width; }
            if (fieldLEDGERGROUP.Visible) { extendWidth -= fieldLEDGERGROUP.Width; }
            if (fieldLEDGERCODE.Visible) { extendWidth -= fieldLEDGERCODE.Width; }
            if (fieldLEDGERNAME.Visible) { extendWidth -= fieldLEDGERNAME.Width; }

            if (fieldLEDGERGROUP.Visible)
            {
                fieldLEDGERGROUP.Width = fieldLEDGERGROUP.Width + extendWidth;
            }
            else
            {
                fieldLEDGERNAME.Width = fieldLEDGERNAME.Width + extendWidth;
            }

            //bharath 12-05
            bool showColumnGrandTotals = !HideColumnGrandTotals;
            xrPGAccountBalanceMulti.OptionsView.ShowColumnGrandTotalHeader = showColumnGrandTotals;
            xrPGAccountBalanceMulti.OptionsView.ShowColumnGrandTotals = showColumnGrandTotals;
            if (!fieldPROJECTID.Options.ShowValues)
            {
               
            }
            xrPGAccountBalanceMulti.OptionsView.ShowColumnHeaders = false;
            if (HideColumnGrandTotals)
            {
               
            }
            xrPGAccountBalanceMulti.OptionsView.ShowColumnGrandTotalHeader = false;
            xrPGAccountBalanceMulti.OptionsView.ShowColumnGrandTotals = false;
            xrPGAccountBalanceMulti.OptionsView.ShowDataHeaders = false;
            //Grid Lines
            if (isHorizontalLine)
            {
                xrPGAccountBalanceMulti.OptionsPrint.PrintHorzLines = DevExpress.Utils.DefaultBoolean.True;
            }
            else
            {
                xrPGAccountBalanceMulti.OptionsPrint.PrintHorzLines = DevExpress.Utils.DefaultBoolean.False;
            }

            if (isVerticalLine)
            {
                xrPGAccountBalanceMulti.OptionsPrint.PrintVertLines = DevExpress.Utils.DefaultBoolean.True;
            }
            else
            {
                xrPGAccountBalanceMulti.OptionsPrint.PrintVertLines = DevExpress.Utils.DefaultBoolean.False;
            }

            //On 10/01/2025 - To have proper ledger name sort order if show detials cash, bank and fd ledgers
            if ((fieldGROUPCODE.Visible || fieldLEDGERCODE.Visible || fieldLEDGERNAME.Visible))
            {
                fieldGROUPCODE.SortMode = DevExpress.XtraPivotGrid.PivotSortMode.Custom;
                fieldLEDGERCODE.SortMode = DevExpress.XtraPivotGrid.PivotSortMode.Custom;
                fieldLEDGERNAME.SortMode = DevExpress.XtraPivotGrid.PivotSortMode.Custom;
            }

        }

        //22/05/2026, Chinna - Re-apply locked pivot view after parent re-sync on BeforePrint
        public void RefreshLockedPivotLayout()
        {
            if (!ColumnsLockedFromParent)
                return;
            ApplyLockedColumnReportSetting();
        }

        //22/05/2026, Chinna - Grid lines and captions only; widths stay from ApplyParentHeaderColumns
        private void ApplyLockedColumnReportSetting()
        {
            if (IsOpeningBalance)
            {
                fieldLEDGERGROUP.Caption = fieldLEDGERNAME.Caption = MessageRender.GetMessage(MessageCatalog.Criteria.OPENING_BALANCE);
            }
            else
            {
                fieldLEDGERGROUP.Caption = fieldLEDGERNAME.Caption = MessageRender.GetMessage(MessageCatalog.Criteria.CLOSING_BALANCE);
            }

            bool isHorizontalLine = (ReportProperties.ShowHorizontalLine == 1);
            bool isVerticalLine = (ReportProperties.ShowVerticalLine == 1);

            xrPGAccountBalanceMulti.OptionsView.ShowColumnHeaders = false;
            xrPGAccountBalanceMulti.OptionsView.ShowColumnGrandTotalHeader = false;
            //22/05/2026, Chinna - Show Cash/Bank total row (was hidden when ColumnsLockedFromParent)
            xrPGAccountBalanceMulti.OptionsView.ShowColumnGrandTotals = true;
            xrPGAccountBalanceMulti.OptionsView.ShowDataHeaders = false;

            xrPGAccountBalanceMulti.OptionsPrint.PrintHorzLines = isHorizontalLine
                ? DevExpress.Utils.DefaultBoolean.True
                : DevExpress.Utils.DefaultBoolean.False;
            xrPGAccountBalanceMulti.OptionsPrint.PrintVertLines = isVerticalLine
                ? DevExpress.Utils.DefaultBoolean.True
                : DevExpress.Utils.DefaultBoolean.False;

            if (fieldGROUPCODE.Visible)
                fieldGROUPCODE.SortMode = DevExpress.XtraPivotGrid.PivotSortMode.Custom;
            if (fieldLEDGERCODE.Visible)
                fieldLEDGERCODE.SortMode = DevExpress.XtraPivotGrid.PivotSortMode.Custom;
            if (fieldLEDGERNAME.Visible)
                fieldLEDGERNAME.SortMode = DevExpress.XtraPivotGrid.PivotSortMode.Custom;
        }

        private DataTable FetchACIBalance(string deDateFrom)
        {
            string FetchACIBalance = this.GetReportSQL(SQL.ReportSQLCommand.Report.FetchACIBalance);

            using (DataManager dataManager = new DataManager())
            {
                dataManager.Parameters.Add(this.ReportParameters.PROJECT_IDColumn, this.ReportProperties.Project);
                dataManager.Parameters.Add(this.ReportParameters.BALANCE_DATEColumn, deDateFrom);
                //dataManager.Parameters.Add(this.ReportParameters.DATE_TOColumn, deDateFrom);
                //dataManager.Parameters.Add(this.ReportParameters.DATE_TOColumn, this.ReportProperties.DateTo);
                dataManager.DataCommandArgs.IsDirectReplaceParameter = true;
                resultArgs = dataManager.FetchData(DAO.Data.DataSource.DataTable, FetchACIBalance);
            }
            return resultArgs.DataSource.Table;
        }

        private void xrPGAccountBalanceMulti_PrintHeader(object sender, DevExpress.XtraReports.UI.PivotGrid.CustomExportHeaderEventArgs e)
        {
            if (e.Field == null)
                return;
            DevExpress.XtraPrinting.TextBrick textBrick = e.Brick as DevExpress.XtraPrinting.TextBrick;
            if (textBrick == null)
                return;
            textBrick.Location = new PointF(textBrick.Location.X, 0f);
            // Same as MultiAbstractReceiptsProjectCashBank: uniform header band height whether project strip is shown or not.
            textBrick.Size = new SizeF(textBrick.Size.Width, 135f);
        }
        private void xrPGAccountBalanceMulti_CustomFieldValueCells(
            object sender,
            DevExpress.XtraReports.UI.PivotGrid.PivotCustomFieldValueCellsEventArgs e)
        {
            if (this.ReportProperties.Consolidated == 1)
            {
                for (int i = e.GetCellCount(true) - 1; i >= 0; i--)
                {
                    DevExpress.XtraReports.UI.PivotGrid.FieldValueCell cell = e.GetCell(true, i);

                    if ((cell.Field == fieldAMOUNTCASH || cell.Field == fieldAMOUNTBANK)
                        && (cell.ValueType == PivotGridValueType.Value
                        || cell.ValueType == PivotGridValueType.GrandTotal
                        || cell.ValueType == PivotGridValueType.Total))
                    {
                        if (cell == null)
                            continue;

                        e.Remove(cell);
                    }
                }
            }
        }
    }
}
