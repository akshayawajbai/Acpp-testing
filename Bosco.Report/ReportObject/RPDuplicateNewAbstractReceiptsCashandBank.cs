
using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Linq;
using Bosco.Utility;
using Bosco.DAO.Data;
using Bosco.Report.Base;
using System.Data;
using DevExpress.XtraPrinting;

namespace Bosco.Report.ReportObject
{
    public partial class RPDuplicateNewAbstractReceiptsCashandBank : Bosco.Report.Base.ReportHeaderBase
    {
        #region Constructor
        public RPDuplicateNewAbstractReceiptsCashandBank()
        {
            InitializeComponent();

            //On 21/06/2017, For general R&P and IE reports
            ArrayList groupfilter = new ArrayList { reportSetting1.MonthlyAbstract.GROUP_IDColumn.ColumnName, ReportParameters.CURRENCY_COUNTRY_IDColumn.ColumnName };
            ArrayList ledgerfilter = new ArrayList { reportSetting1.MonthlyAbstract.LEDGER_IDColumn.ColumnName, ReportParameters.CURRENCY_COUNTRY_IDColumn.ColumnName };
            DrillDownType groupdrilltype = DrillDownType.GROUP_SUMMARY_RECEIPTS;
            DrillDownType ledgerdrilltype = DrillDownType.LEDGER_SUMMARY;

            //On 21/06/2017, CC R&P and CC IE reports, we have to change drillproperties based on cc
            if (this.ReportProperties.ReportId == "RPT-041" || this.ReportProperties.ReportId == "RPT-049")
            {
                groupfilter = new ArrayList { reportSetting1.MonthlyAbstract.GROUP_IDColumn.ColumnName };
                ledgerfilter = new ArrayList { reportSetting1.MonthlyAbstract.LEDGER_IDColumn.ColumnName, this.ReportParameters.COST_CENTRE_IDColumn.ColumnName };
                groupdrilltype = DrillDownType.GROUP_SUMMARY_RECEIPTS;
                ledgerdrilltype = DrillDownType.CC_LEDGER_SUMMARY;
            }
            else if (this.ReportProperties.ReportId == "RPT-027") //On 16/11/2018, show only pure receipts alone
            {
                ledgerdrilltype = DrillDownType.LEDGER_SUMMARY_RECEIPTS;
            }

            //10/03/2017, To attach drill-down feature for main parent group too
            //this.AttachDrillDownToRecord(xrtblReceiptGroup, xrParentGroupName,
            //        groupfilter, groupdrilltype, false);

            //this.AttachDrillDownToRecord(xrtblReceiptGroup, xrGroupName,
            //        groupfilter, groupdrilltype, false);

            this.AttachDrillDownToRecord(xrTableReceipt, xrLedgerName,
                ledgerfilter, ledgerdrilltype, false, "", true);
        }
        #endregion

        #region Decelaration
        public double ReceiptAmount { get; set; }
        private int CountReceipt = 0;
        private DataTable dtCCDetails = new DataTable();
        private DataTable dtDonorDetails = new DataTable();
        private bool PrevLedgerCCFound = false;
        private bool PrevLedgerDonorFound = false;
        #endregion

        #region Show Reports
        public override void ShowReport()
        {

            BindReceiptSource(TransType.RC);
            base.ShowReport();
        }
        #endregion

        #region Properties

        private float _lastReceiptCodeW;
        private float _lastReceiptParticularW;
        private float _lastReceiptCashW;
        private float _lastReceiptBankW;
        private float _lastReceiptColumnSyncTotalW;

        public float LedgerGroupCashAmountColumnwidth  //Cash
        {
            set
            {
                xrLedgerGroupCashRCAmt.WidthF = value;

            }
        }
        public float LedgerGroupBankAmtColumnWidth //Bank
        {
            set
            {
                xrLedGroupBankAmt.WidthF = value;
            }
        }

        public float CodeColumnWidth
        {
            set
            {
                xrLedgerCode.WidthF = value;

            }
        }
        public float GroupCodeColumnWidth
        {
            set
            {
                //xrGroupCode.WidthF = value;
            }
        }

        public float NameColumnWidth
        {
            set
            {
                xrLedgerName.WidthF = value;
            }
        }

        public float GroupNameColumnWidth
        {
            set
            {
                xrGroupName.WidthF = value;
                //xrParentGroupName.WidthF = value;
            }
        }

        public float ParentGroupNameColumnWidth
        {
            set
            {
               // xrParentGroupName.WidthF = value;
            }
        }

        public float ParentGroupCodeColumnWidth
        {
            set
            {
                //xrtblParentCode.WidthF = value;
            }
        }

        public float AmountColumnWidth
        {
            set
            {
                xrLedgerAmt.WidthF = value;
            }
        }

        public float bankAmountColumnWidth //Added By Diensh 
        {
            set 
            {
                xrLedgerBankAmt.WidthF = value;
            }
        }
        public float bankandcashgroupcolumwidth
        {
            set
            {
                //xrbanGrp.WidthF = value; 
            }
        }

        public float GroupAmountColumnWidth
        {
            set
            {
                //xrGroupAmt.WidthF = value;
                //xrParentGroupAmt.WidthF = value;
            }
        }

        public float ParentGroupAmountColumnWidth
        {
            set
            {
               // xrParentGroupAmt.WidthF = value;
            }
        }
        private bool hideCostcentre = false;
        public bool HideCostCentreReceipts
        {
            get { return hideCostcentre; }
            set { hideCostcentre = value; }
        }

        public float CostCentreCategoryNameWidth
        {
            set
            {
                xrCostCentreCategoryName.WidthF = value;
            }
        }

        public bool PaymentCostCentreNameVisible
        {
            set { xrPaymentCostCentreName.Visible = value; }
        }

        public float CostCentreWidth { set { xrtblCellCostcentreName.WidthF = value; } }

        public float CostCategoryAmountWidth
        {
            get { return xrcellCCCAmount.WidthF; }
            set
            {
                xrcellCCCAmount.WidthF = value;
            }
        }

        public float CostCentreAmountWidth
        {
            get { return xrcellCCAmount.WidthF; }
            set
            {
                xrcellCCAmount.WidthF = value;
            }
        }

        public bool RecordsExists
        {
            set;
            get;
        }

        public DataTable ReportData
        {
            get
            {
                return this.DataSource as DataTable;
            }
        }
        #endregion

        string voucherType = TransType.RC.ToString();
        string Transmode = TransSource.Cr.ToString();

        #region Methods
        public void HideReceiptReportHeader()
        {
            this.HideReportHeader = false;
            this.HidePageFooter = false;
        }

        private ResultArgs SetReportReceiptSource(TransType transType)
        {
            ResultArgs resultArgs = null;
            string sqlReceipt = string.Empty;
                sqlReceipt = this.GetReportSQL(SQL.ReportSQLCommand.Report.MultiAbstractProjectCashBank);
                if (ReportProperty.Current.ShowGroupCode != 0)
                {
                   // xrGroupAmt.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Top;
                }
                if (ReportProperty.Current.ShowCCDetails == 1)
                {
                    AssignCCDetailReportSource();
                }
                xrSubreportDonorDetails.Visible = false;
                if (ReportProperty.Current.ShowDonorDetails == 1)
                {
                    AssignDonorDetailReportSource();
                }
            using (DataManager dataManager = new DataManager())
            {
                dataManager.Parameters.Add(this.ReportParameters.PROJECT_IDColumn, this.ReportProperties.Project);
                dataManager.Parameters.Add(this.ReportParameters.DATE_FROMColumn, this.ReportProperties.DateFrom);
                dataManager.Parameters.Add(this.ReportParameters.DATE_TOColumn, this.ReportProperties.DateTo);
                dataManager.Parameters.Add(this.ReportParameters.BEGIN_FROMColumn, this.AppSetting.BookBeginFrom);
                dataManager.Parameters.Add(this.ReportParameters.SHOW_GENERALATEColumn, this.ReportProperties.ReportCodeType.Equals((int)ReportCodeType.Standard) || this.ReportProperties.ReportCodeType.Equals((int)ReportCodeType.Province) ? 0 : (int)ReportCodeType.Generalate);
                dataManager.Parameters.Add(this.ReportParameters.VOUCHER_TYPEColumn, voucherType);
                dataManager.Parameters.Add(this.ReportParameters.TRANS_MODEColumn, Transmode);
                //On 19/01/2023, For Cost center reports, if show by cc, make it group by cc
                if (ReportProperties.ReportId == "RPT-041" || ReportProperties.ReportId == "RPT-049")
                {
                    dataManager.Parameters.Add(this.ReportParameters.SHOW_BY_COSTCENTREColumn, this.ReportProperties.ShowByCostCentre);

                    if (!string.IsNullOrEmpty(this.ReportProperties.Ledger) && this.ReportProperties.Ledger != "0" &&
                        ReportProperties.ReportId == "RPT-041")
                    {
                        dataManager.Parameters.Add(this.ReportParameters.LEDGER_IDColumn, this.ReportProperties.Ledger);
                    }
                }

                //On 04/12/2024, To set Currnecy
                if (this.AppSetting.AllowMultiCurrency == 1 && this.ReportProperties.CurrencyCountryId > 0)
                {
                    dataManager.Parameters.Add(this.ReportParameters.CURRENCY_COUNTRY_IDColumn, this.ReportProperties.CurrencyCountryId);
                }
                else
                {
                    dataManager.Parameters.Add(this.ReportParameters.CURRENCY_COUNTRY_IDColumn, "0");
                }

                if (this.AppSetting.DisplayInputLanguage == "1")
                {
                    dataManager.Parameters.Add(this.ReportParameters.DISPLAY_INPUT_LANColumn, 1);
                }
                else
                {
                    dataManager.Parameters.Add(this.ReportParameters.DISPLAY_INPUT_LANColumn, 0);
                }

                dataManager.DataCommandArgs.IsDirectReplaceParameter = true;
                resultArgs = dataManager.FetchData(DAO.Data.DataSource.DataTable, sqlReceipt);
            }
            return resultArgs;
        }

        public void BindReceiptSource(TransType transType)
        {
            ReportProperties.ShowGroupCode = 1;

            if (this.ReportProperties.ReportCodeType == (int)ReportCodeType.Standard)
                ReportProperties.ShowGroupCode = 0;
            ReceiptAmount = 0;
            ResultArgs resultArgs = SetReportReceiptSource(transType);
            DataTable dtReceipts = resultArgs.DataSource.Table;
            if (dtReceipts != null)
            {
                dtReceipts.TableName = "Receipts";
                //On 05/06/2017, To add Amount filter condition
                //string AmountFilter = this.GetAmountFilter();
                //if (AmountFilter != "")
                //{
                //    //dtReceipts.DefaultView.RowFilter = "RECEIPTAMT " + AmountFilter;
                //}
                RemoveZeroAmountLedgerRows(dtReceipts);
                this.DataSource = dtReceipts;
                this.DataMember = dtReceipts.TableName;
            }

            SetReportSetting();
            SetReportBorder();
            SortByLedgerorGroup();

            //On 03/07/2017, If there is no records hide, all group tables, otherwise it shows emtpy tables
            RecordsExists = true;
            if (dtReceipts.Rows.Count == 0)
            {
               // grpParentGroup.Visible = false;
                //grpReceiptGroup.Visible = false;
                //grpReceiptLedger.Visible = false;
                RecordsExists = false;
            }   
        }

        private void ShouldShowReceiptGroup()
        {
            //grpParentGroup.Visible = (ReportProperties.ShowByLedgerGroup == 1);

            // For Generalate, hide sub-group (Receipt Group) even if grouping is on
            if (this.ReportProperties.ReportCodeType == (int)ReportCodeType.Generalate)
            {
                //grpReceiptGroup.Visible = false;
            }
            else
            {
                //grpReceiptGroup.Visible = (ReportProperties.ShowByLedgerGroup == 1);
            }
        }


        //private DataTable GetJournalSource()
        //{
        //    ResultArgs resultArgs = null;
        //    string sqlReceiptJournal = this.GetFinalAccountsReportSQL(SQL.ReportSQLCommand.FinalAccounts.FinalReceiptJournal);
        //    string dateProgress = this.GetProgressiveDate(this.ReportProperties.DateFrom);
        //    string liquidityGroupIds = this.GetLiquidityGroupIds();

        //    using (DataManager dataManager = new DataManager())
        //    {
        //        dataManager.Parameters.Add(this.ReportParameters.DATE_FROMColumn, this.ReportProperties.DateFrom);
        //        dataManager.Parameters.Add(this.ReportParameters.DATE_PROGRESS_FROMColumn, dateProgress);
        //        dataManager.Parameters.Add(this.ReportParameters.DATE_TOColumn, this.ReportProperties.DateTo);
        //        dataManager.Parameters.Add(this.ReportParameters.VOUCHER_TYPEColumn, TransType.JN.ToString());
        //        dataManager.Parameters.Add(this.ReportParameters.PROJECT_IDColumn, this.ReportProperties.Project);
        //        dataManager.Parameters.Add(this.ReportParameters.GROUP_IDColumn, liquidityGroupIds);
        //        dataManager.Parameters.Add(this.ReportParameters.TRANS_MODEColumn, TransMode.CR.ToString());
        //        int LedgerPaddingRequired = (ReportProperties.ShowLedgerCode == 0 && ReportProperties.ShowByLedgerGroup == 1) ? 1 : 0;
        //        int GroupPaddingRequired = (ReportProperties.ShowGroupCode == 0 && ReportProperties.ShowByLedgerGroup == 1) ? 1 : 0;

        //        dataManager.Parameters.Add(this.ReportParameters.SHOWLEDGERCODEColumn, LedgerPaddingRequired);
        //        dataManager.Parameters.Add(this.ReportParameters.SHOWGROUPCODEColumn, GroupPaddingRequired);

        //        dataManager.DataCommandArgs.IsDirectReplaceParameter = true;
        //        resultArgs = dataManager.FetchData(DAO.Data.DataSource.DataTable, sqlReceiptJournal);
        //    }
        //    return resultArgs.DataSource.Table;
        //}

        private void SetReportSetting()
        {
            //float actualCodeWidth = xrGroupCode.WidthF;
            //bool isCapCodeVisible = true;

            ////Include / Exclude Code
            //if (xrGroupCode.Tag != null && xrGroupCode.Tag.ToString() != "")
            //{
            //    actualCodeWidth = (float)this.UtilityMember.NumberSet.ToDouble(xrGroupCode.Tag.ToString());
            //}
            //else
            //{
            //    xrGroupCode.Tag = xrGroupCode.WidthF;
            //}

            //isCapCodeVisible = (ReportProperties.ShowGroupCode == 1 || ReportProperties.ShowLedgerCode == 1);
            //if (this.ReportProperties.ReportCodeType == (int)ReportCodeType.Standard || this.ReportProperties.ReportCodeType == (int)ReportCodeType.Province)
            //{
            //    //xrParentGroupCode.WidthF = ((ReportProperties.ShowGroupCode == 1) ? actualCodeWidth : 0);
            //    xrtblParentCode.WidthF = 0; // 25.08.2022
            //}
            //else
            //{
            //    // xrtblParentCode.WidthF = ((ReportProperties.ShowGroupCode == 1) ? actualCodeWidth : 0);
            //    // xrParentGroupCode.WidthF = ((ReportProperties.ShowGroupCode == 1) ? actualCodeWidth : 0); // 25.08.2022
            //    xrtblParentCode.WidthF = actualCodeWidth;

            //}
            //xrGroupCode.WidthF = ((ReportProperties.ShowGroupCode == 1) ? actualCodeWidth : 0);
            //xrLedgerCode.WidthF = ((ReportProperties.ShowLedgerCode == 1) ? actualCodeWidth : 0);

            //grpParentGroup.Visible = (ReportProperties.ShowByLedgerGroup == 1);
            // 25/04/2025, *Chinna for Generalate Hide the Sub Group whether show or not
            //grpReceiptGroup.Visible = (ReportProperties.ShowByLedgerGroup == 1);
            ShouldShowReceiptGroup();

            if (ReportProperties.ShowByLedger == 0 && ReportProperties.ShowByLedgerGroup == 0)
            {
                ReportProperties.ShowByLedger = 1;   //grpReceiptLedger.Visible = ReportProperties.ShowByLedger == 1;
            }
            Detail.Visible = (ReportProperties.ShowByLedger == 1);

            grpCostCentreNameReceipts.Visible = (ReportProperties.ShowByCostCentre == 1);
            grpCCBreakup.Visible = (ReportProperties.BreakByCostCentre == 1);
            grpcostCenterCategory.Visible = ReportProperties.ShowByCostCentreCategory == 1;


            if (ReportProperties.ReportId == "RPT-041" || ReportProperties.ReportId == "RPT-049")
            {
                if (ReportProperties.ShowByCostCentreCategory == 1)
                    grpcostCenterCategory.Visible = true;
                else
                    grpcostCenterCategory.Visible = false;
            }

            if (grpCostCentreNameReceipts.Visible == true)
            {
                this.CosCenterName = ReportProperty.Current.CostCentreName;
                HideCostCentreReceipts = true;
            }
            else
            {
                //this.CosCenterName = string.Empty;
                HideCostCentreReceipts = false;
            }

            grpcostCenterCategory.GroupFields[0].FieldName = "";
            grpCostCentreNameReceipts.GroupFields[0].FieldName = "";
            //grpParentGroup.GroupFields[0].FieldName = "";
           // grpReceiptGroup.GroupFields[0].FieldName = "";
            //grpReceiptLedger.GroupFields[0].FieldName = "";

            //if (grpReceiptGroup.Visible == false && grpReceiptLedger.Visible == false)
            //{
            //    // This code add by Amal
            //    if (ReportProperties.ReportId != "RPT-041" && ReportProperties.ReportId != "RPT-049")
            //        grpReceiptLedger.Visible = true;
            //}

            if (grpcostCenterCategory.Visible)
            {
                grpcostCenterCategory.GroupFields[0].FieldName = reportSetting1.Receipts.COST_CENTRE_CATEGORY_NAMEColumn.ColumnName;
            }

            if (grpCostCentreNameReceipts.Visible)
            {
                grpCostCentreNameReceipts.GroupFields[0].FieldName = reportSetting1.Receipts.COST_CENTRE_NAMEColumn.ColumnName;
            }

            //if (grpParentGroup.Visible)
            //{
            //    if (ReportProperties.ShowByLedgerGroup == 1)
            //    {
            //        grpParentGroup.GroupFields[0].FieldName = reportSetting1.Receipts.PARENT_GROUPColumn.ColumnName;
            //    }
            //    else
            //    {
            //        grpParentGroup.GroupFields[0].FieldName = reportSetting1.Receipts.PARENT_GROUPColumn.ColumnName;
            //    }
            //}

            //if (this.ReportProperties.ReportCodeType == (int)ReportCodeType.Standard) // Group else Group Code
            //{
            //    if (grpReceiptGroup.Visible)
            //    {
            //        if (ReportProperties.ShowByLedgerGroup == 1)
            //        {
            //            grpReceiptGroup.GroupFields[0].FieldName = reportSetting1.Receipts.LEDGER_GROUPColumn.ColumnName;
            //        }
            //        else
            //        {
            //            grpReceiptGroup.GroupFields[0].FieldName = reportSetting1.Receipts.LEDGER_GROUPColumn.ColumnName;
            //        }
            //    }
            //}
            //else
            //{
            //    if (grpReceiptGroup.Visible)
            //    {
            //        if (ReportProperties.ShowByLedgerGroup == 1)
            //        {
            //            grpReceiptGroup.GroupFields[0].FieldName = reportSetting1.Receipts.GROUP_CODEColumn.ColumnName;
            //        }
            //        else
            //        {
            //            grpReceiptGroup.GroupFields[0].FieldName = reportSetting1.Receipts.GROUP_CODEColumn.ColumnName;
            //        }
            //    }
            //}

            //if (grpReceiptLedger.Visible)
            //{
            //    if (ReportProperties.ShowByLedger == 1)
            //    {
            //        grpReceiptLedger.GroupFields[0].FieldName = reportSetting1.Receipts.LEDGER_NAMEColumn.ColumnName;
            //    }
            //    else
            //    {
            //        grpReceiptLedger.GroupFields[0].FieldName = reportSetting1.Receipts.LEDGER_NAMEColumn.ColumnName;
            //    }
            //}
        }

        private void SetReportBorder()
        {
            //xrParentGroup = AlignGroupTable(xrParentGroup);
            //xrtblReceiptGroup = AlignGroupTable(xrtblReceiptGroup);
            xrTableReceipt = AlignContentTable(xrTableReceipt);
            xrPaymentCostCentreName = AlignCostCentreTable(xrPaymentCostCentreName);
            xrTblCostCentreCategoryName = AlignCCCategoryTable(xrTblCostCentreCategoryName);
            if (ReportProperties.ReportId == "RPT-028" || ReportProperties.ReportId == "RPT-034")
                xrTblCostCentreCategoryName.Visible = false;
            xrCCBreakup = AlignContentTable(xrCCBreakup);
            if (this.ReportProperties.ReportBorderStyle == 1)
            {
                xrtblReceiptGroup = AlignGroupTable(xrtblReceiptGroup);
                xrGroupName.Borders = DevExpress.XtraPrinting.BorderSide.Left |
                        DevExpress.XtraPrinting.BorderSide.Right |
                        DevExpress.XtraPrinting.BorderSide.Bottom;

                xrLedgerGroupCashRCAmt.Borders = DevExpress.XtraPrinting.BorderSide.Right |
                                                 DevExpress.XtraPrinting.BorderSide.Bottom;

                xrLedGroupBankAmt.Borders = DevExpress.XtraPrinting.BorderSide.Right |
                                            DevExpress.XtraPrinting.BorderSide.Bottom;
            }
            else
            {
                xrtblReceiptGroup = AlignGroupTable(xrtblReceiptGroup);
                xrGroupName.Borders = DevExpress.XtraPrinting.BorderSide.Left |
                         DevExpress.XtraPrinting.BorderSide.Right |
                         DevExpress.XtraPrinting.BorderSide.Bottom;

                xrLedgerGroupCashRCAmt.Borders = DevExpress.XtraPrinting.BorderSide.Right |
                                                 DevExpress.XtraPrinting.BorderSide.Bottom;

                xrLedGroupBankAmt.Borders = DevExpress.XtraPrinting.BorderSide.Right |
                                            DevExpress.XtraPrinting.BorderSide.Bottom;
            }
        }

        private XRTable AlignCCCategoryTable(XRTable table)
        {
            int j = table.Rows.Count;
            foreach (XRTableRow trow in table.Rows)
            {
                int count = 0;
                foreach (XRTableCell tcell in trow.Cells) //table.Rows.FirstRow.Cells)
                {
                    count++;
                    if (ReportProperties.ShowHorizontalLine == 1 && ReportProperties.ShowVerticalLine == 1)
                    {
                        if (count == 1)
                        {
                            tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                        }
                        else
                        {
                            tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                        }
                    }
                    else if (ReportProperties.ShowHorizontalLine == 1)
                    {
                        if (count == 1)
                        {
                            tcell.Borders = BorderSide.Left | BorderSide.Bottom;
                            if (count == trow.Cells.Count)
                            {
                                tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                            }
                        }
                        else if (count == trow.Cells.Count)
                        {
                            tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                        }

                        else
                        {
                            tcell.Borders = BorderSide.Bottom;
                        }
                    }
                    else if (ReportProperties.ShowVerticalLine == 1)
                    {
                        if (count == 1)
                        {
                            tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                        }
                        else
                        {
                            tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                        }
                    }
                    else
                    {
                        tcell.Borders = BorderSide.None;
                    }
                    tcell.BorderColor = ((int)BorderStyleCell.Regular == this.ReportProperties.ReportBorderStyle) ? System.Drawing.Color.Gainsboro : System.Drawing.Color.Black;

                }
            }
            return table;
        }

        private XRTable AlignCostCentreTable(XRTable table)
        {
            int j = table.Rows.Count;
            foreach (XRTableRow trow in table.Rows)
            {
                int count = 0;
                foreach (XRTableCell tcell in trow.Cells) //table.Rows.FirstRow.Cells)
                {
                    count++;
                    if (ReportProperties.ShowHorizontalLine == 1 && ReportProperties.ShowVerticalLine == 1)
                    {
                        if (count == 1)
                        {
                            tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;

                        }
                        else
                        {
                            tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                        }
                    }
                    else if (ReportProperties.ShowHorizontalLine == 1)
                    {
                        if (count == 1)
                        {
                            tcell.Borders = BorderSide.Left | BorderSide.Bottom;
                            if (count == trow.Cells.Count)
                            {
                                tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                            }
                        }
                        else if (count == trow.Cells.Count)
                        {
                            tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                        }

                        else
                        {
                            tcell.Borders = BorderSide.Bottom;
                        }
                    }
                    else if (ReportProperties.ShowVerticalLine == 1)
                    {
                        if (count == 1)
                        {
                            tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                        }
                        else
                        {
                            tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                        }
                    }
                    else
                    {
                        tcell.Borders = BorderSide.None;
                    }
                    tcell.BorderColor = ((int)BorderStyleCell.Regular == this.ReportProperties.ReportBorderStyle) ? System.Drawing.Color.Gainsboro : System.Drawing.Color.Black;

                }
            }
            return table;
        }

        public override XRTable AlignContentTable(XRTable table)
        {
            int j = table.Rows.Count;
            foreach (XRTableRow trow in table.Rows)
            {
                int count = 0;
                foreach (XRTableCell tcell in trow.Cells) //table.Rows.FirstRow.Cells)
                {
                    count++;
                    if (ReportProperties.ShowHorizontalLine == 1 && ReportProperties.ShowVerticalLine == 1)
                    {
                        if (count == 1)
                        {
                            if (ReportProperties.ShowLedgerCode != 1)
                            {
                                tcell.Borders = BorderSide.Left;
                            }
                            else
                            {
                                tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                            }
                        }
                        else
                        {
                            tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                        }
                    }
                    else if (ReportProperties.ShowHorizontalLine == 1)
                    {
                        if (count == 1 && ReportProperties.ShowLedgerCode != 1)
                        {
                            tcell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                        }
                        else
                        {
                            tcell.Borders = BorderSide.Bottom;
                        }
                    }
                    else if (ReportProperties.ShowVerticalLine == 1)
                    {
                        if (count == 1 && ReportProperties.ShowLedgerCode != 1)
                        {
                            tcell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                        }
                        else if (count == 1)
                        {
                            tcell.Borders = BorderSide.Left | BorderSide.Right;
                        }
                        else
                        {
                            tcell.Borders = BorderSide.Right;
                        }
                    }
                    else
                    {
                        tcell.Borders = BorderSide.None;
                    }
                    tcell.BorderColor = ((int)BorderStyleCell.Regular == this.ReportProperties.ReportBorderStyle) ? System.Drawing.Color.Gainsboro : System.Drawing.Color.Black;

                }
            }
            return table;
        }

        public override XRTable AlignGroupTable(XRTable table)
        {
            int j = table.Rows.Count;
            foreach (XRTableRow trow in table.Rows)
            {
                int count = 0;
                foreach (XRTableCell tcell in trow.Cells) //table.Rows.FirstRow.Cells)
                {
                    count++;
                    if (ReportProperties.ShowHorizontalLine == 1 && ReportProperties.ShowVerticalLine == 1)
                    {
                        if (count == 1)
                        {
                            tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                            if (count == 1 && ReportProperties.ShowGroupCode != 1)
                            {
                                tcell.Borders = DevExpress.XtraPrinting.BorderSide.Left;
                            }
                        }
                        else
                        {
                            tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                        }
                    }
                    else if (ReportProperties.ShowHorizontalLine == 1)
                    {
                        if (count == 1 && ReportProperties.ShowGroupCode != 1)
                            tcell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                        else
                            tcell.Borders = BorderSide.Bottom;
                    }
                    else if (ReportProperties.ShowVerticalLine == 1)
                    {
                        if (count == 1)
                        {
                            tcell.Borders = BorderSide.Left | BorderSide.Right;
                            if (count == 1 && ReportProperties.ShowGroupCode != 1)
                            {
                                tcell.Borders = DevExpress.XtraPrinting.BorderSide.Left;
                            }
                        }
                        else
                            tcell.Borders = BorderSide.Right;
                    }
                    else
                    {
                        tcell.Borders = BorderSide.None;
                    }
                    tcell.BorderColor = ((int)BorderStyleCell.Regular == this.ReportProperties.ReportBorderStyle) ? System.Drawing.Color.Gainsboro : System.Drawing.Color.Black;
                }
            }

            return table;
        }

        public ResultArgs GetIncomeSource(TransType transType)
        {

            ResultArgs resultArgs = null;
            string sqlReceipts = string.Empty;

            if (transType == TransType.RC)
            {
                sqlReceipts = this.GetFinalAccountsReportSQL(SQL.ReportSQLCommand.FinalAccounts.Receipts);

                if (ReportProperty.Current.ShowGroupCode != 0)
                {
                    //xrGroupAmt.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Top;
                }
            }
            else if (transType == TransType.CRC)
            {
                sqlReceipts = this.GetReportCostCentre(SQL.ReportSQLCommand.CostCentre.CostCentreReceipts);
                if (ReportProperty.Current.ShowGroupCode != 0)
                {
                    //xrGroupAmt.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Top;
                }
            }

            else if (transType == TransType.CINC)
            {
                sqlReceipts = this.GetReportCostCentre(SQL.ReportSQLCommand.CostCentre.CostCentreIncome);
                if (ReportProperty.Current.ShowGroupCode != 0)
                {
                   // xrGroupAmt.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Top;
                }
            }

            else
            {
                sqlReceipts = this.GetFinalAccountsReportSQL(SQL.ReportSQLCommand.FinalAccounts.Income);
            }
            using (DataManager dataManager = new DataManager())
            {
                dataManager.Parameters.Add(this.ReportParameters.PROJECT_IDColumn, this.ReportProperties.Project);
                dataManager.Parameters.Add(this.ReportParameters.DATE_FROMColumn, this.ReportProperties.DateFrom);
                dataManager.Parameters.Add(this.ReportParameters.DATE_TOColumn, this.ReportProperties.DateTo);
                dataManager.Parameters.Add(this.ReportParameters.BEGIN_FROMColumn, this.AppSetting.BookBeginFrom);

                dataManager.Parameters.Add(this.ReportParameters.SHOWLEDGERCODEColumn, ReportProperties.ShowByLedger);
                dataManager.Parameters.Add(this.ReportParameters.SHOWGROUPCODEColumn, ReportProperties.ShowByLedgerGroup);

                dataManager.Parameters.Add(this.ReportParameters.COST_CENTRE_IDColumn, this.ReportProperties.CostCentre != null ? this.ReportProperties.CostCentre : "0");
                dataManager.DataCommandArgs.IsDirectReplaceParameter = true;
                resultArgs = dataManager.FetchData(DAO.Data.DataSource.DataTable, sqlReceipts);
            }
            return resultArgs;

        }

        public void BindIncomeSource(ResultArgs resultArgs, TransType transType)
        {
            ReceiptAmount = 0;
            //ResultArgs resultArgs = SetReportReceiptSource(transType);
            DataTable dtReceipts = resultArgs.DataSource.Table;

            if (transType == TransType.IC || transType == TransType.RC || transType == TransType.CRC || transType == TransType.CINC)
            {
                if (dtReceipts != null && dtReceipts.Rows.Count != 0)
                {
                    ReceiptAmount = this.UtilityMember.NumberSet.ToDouble(dtReceipts.Compute("SUM(RECEIPTAMT)", "").ToString());
                }
            }


            if (dtReceipts != null)
            {
                dtReceipts.TableName = "Receipts";
                this.DataSource = dtReceipts;
                this.DataMember = dtReceipts.TableName;
            }

            SetReportBorder();
            SetReportSetting();
            SortByLedgerorGroup();

            //On 03/07/2017, If there is no records hide, all group tables, otherwise it shows emtpy tables
            RecordsExists = true;
            if (dtReceipts.Rows.Count == 0)
            {
                //grpParentGroup.Visible = false;
                //grpReceiptGroup.Visible = false;
                //grpReceiptLedger.Visible = false;
                Detail.Visible = false;
                RecordsExists = false;
            }
        }

        public void SetCostCategoryTableBorder()
        {
            xrTblCostCentreCategoryName = SetHeadingTableBorder(xrTblCostCentreCategoryName, ReportProperties.ShowHorizontalLine, ReportProperties.ShowVerticalLine);
        }

        private DataTable ConstructReceiptTable()
        {
            DataTable dtReceipts = new DataTable();
            dtReceipts.Columns.Add("LEDGER_ID", typeof(UInt32));
            dtReceipts.Columns.Add("GROUP_ID", typeof(UInt32));
            dtReceipts.Columns.Add("GROUP_CODE", typeof(string));
            dtReceipts.Columns.Add("SORT_ORDER", typeof(UInt32)); // alex included sort order field. While merge the fields are mismatched.
            dtReceipts.Columns.Add("PARENT_GROUP", typeof(string));
            dtReceipts.Columns.Add("LEDGER_GROUP", typeof(string));
            dtReceipts.Columns.Add("LEDGER_NAME", typeof(string));
            dtReceipts.Columns.Add("LEDGER_CODE", typeof(string));
            dtReceipts.Columns.Add("RECEIPTAMT", typeof(decimal));
            return dtReceipts;
        }

        /// <summary>
        ///  Chinna 05.09.2022
        /// </summary>
        //public void SortByLedgerorGroup()
        //{
        //    // grpReceiptGroup.Visible = false;
        //    if (grpParentGroup.Visible)
        //    {
        //        if (this.ReportProperties.SortByGroup == 0)
        //        {
        //            grpParentGroup.SortingSummary.Enabled = true;
        //            grpParentGroup.SortingSummary.FieldName = string.Empty;
        //            //On 03/04/2020, to keep ledger group second leavel proper order 
        //            //grpParentGroup.SortingSummary.FieldName = "SORT_ORDER";  // GROUP_CODE
        //            //grpParentGroup.SortingSummary.FieldName = reportSetting1.Payments.PARENT_GROUPColumn.ColumnName; // GROUP_CODE  26.08.2022
        //            if ((this.ReportProperties.ReportCodeType == (int)ReportCodeType.Standard))
        //            {
        //                grpParentGroup.SortingSummary.FieldName = reportSetting1.Payments.PARENT_GROUPColumn.ColumnName; // GROUP_CODE  26.08.2022
        //            }
        //            else
        //            {
        //                grpParentGroup.SortingSummary.FieldName = "PARENT_CODE1";  //reportSetting1.Payments.PARENT_CODEColumn.ColumnName; // GROUP_CODE
        //            }
        //            grpParentGroup.SortingSummary.Function = SortingSummaryFunction.Avg;
        //            grpParentGroup.SortingSummary.SortOrder = XRColumnSortOrder.Ascending;
        //        }
        //        else
        //        {
        //            grpParentGroup.SortingSummary.Enabled = true;
        //            grpParentGroup.SortingSummary.FieldName = string.Empty;
        //            //On 03/04/2020, to keep ledger group second leavel proper order 
        //            //grpParentGroup.SortingSummary.FieldName = "SORT_ORDER";  // LEDGER_GROUP
        //            // grpParentGroup.SortingSummary.FieldName = reportSetting1.Payments.PARENT_GROUPColumn.ColumnName; // GROUP_CODE 26.08.2022
        //            if (this.ReportProperties.ReportCodeType == (int)ReportCodeType.Standard)
        //            {
        //                grpParentGroup.SortingSummary.FieldName = reportSetting1.Payments.PARENT_GROUPColumn.ColumnName; // GROUP_CODE 26.08.2022
        //            }
        //            else
        //            {
        //                grpParentGroup.SortingSummary.FieldName = "PARENT_CODE1"; // reportSetting1.Payments.PARENT_CODEColumn.ColumnName;
        //            }
        //            grpParentGroup.SortingSummary.Function = SortingSummaryFunction.Avg;
        //            grpParentGroup.SortingSummary.SortOrder = XRColumnSortOrder.Ascending;
        //        }
        //    }

        //    if (grpReceiptGroup.Visible)
        //    {
        //        if (this.ReportProperties.SortByGroup == 0)
        //        {
        //            grpReceiptGroup.SortingSummary.Enabled = true;
        //            grpReceiptGroup.SortingSummary.FieldName = string.Empty;
        //            //On 03/04/2020, to keep ledger group second leavel proper order 
        //            //grpReceiptGroup.SortingSummary.FieldName = "SORT_ORDER";  // GROUP_CODE
        //            // grpReceiptGroup.SortingSummary.FieldName = reportSetting1.Payments.LEDGER_GROUPColumn.ColumnName;  // GROUP_CODE
        //            if (this.ReportProperties.ReportCodeType == (int)ReportCodeType.Standard)
        //            {
        //                //grpReceiptGroup.SortingSummary.FieldName = reportSetting1.Payments.LEDGER_GROUPColumn.ColumnName; 26.08.2022
        //                grpReceiptGroup.SortingSummary.FieldName = reportSetting1.Payments.LEDGER_GROUPColumn.ColumnName;
        //            }
        //            else
        //            {
        //                //grpReceiptGroup.SortingSummary.FieldName = reportSetting1.Payments.GROUP_CODEColumn.ColumnName; 26.08.2022
        //                grpReceiptGroup.SortingSummary.FieldName = reportSetting1.Payments.GROUP_CODEColumn.ColumnName;
        //            }
        //            grpReceiptGroup.SortingSummary.Function = SortingSummaryFunction.Avg;
        //            grpReceiptGroup.SortingSummary.SortOrder = XRColumnSortOrder.Ascending;
        //        }
        //        else
        //        {
        //            grpReceiptGroup.SortingSummary.Enabled = true;
        //            grpReceiptGroup.SortingSummary.FieldName = string.Empty;
        //            //On 03/04/2020, to keep ledger group second leavel proper order 
        //            //grpReceiptGroup.SortingSummary.FieldName = "SORT_ORDER";  // LEDGER_GROUP
        //            // grpReceiptGroup.SortingSummary.FieldName = reportSetting1.Payments.LEDGER_GROUPColumn.ColumnName;  // GROUP_CODE
        //            if (this.ReportProperties.ReportCodeType == (int)ReportCodeType.Standard)
        //            {
        //                // grpReceiptGroup.SortingSummary.FieldName = reportSetting1.Payments.LEDGER_GROUPColumn.ColumnName;  // GROUP_CODE 26.08
        //                grpReceiptGroup.SortingSummary.FieldName = reportSetting1.Payments.LEDGER_GROUPColumn.ColumnName;  // GROUP_CODE
        //            }
        //            else
        //            {
        //                // grpReceiptGroup.SortingSummary.FieldName = reportSetting1.Payments.GROUP_CODEColumn.ColumnName;  // GROUP_CODE 26.08
        //                grpReceiptGroup.SortingSummary.FieldName = reportSetting1.Payments.GROUP_CODEColumn.ColumnName;  // GROUP_CODE
        //            }
        //            grpReceiptGroup.SortingSummary.Function = SortingSummaryFunction.Avg;
        //            grpReceiptGroup.SortingSummary.SortOrder = XRColumnSortOrder.Ascending;
        //        }
        //    }

        //    //On 10/05/2019, To remove ledger group (it is already grouped in sql itself and to have proper ledger code sorting)
        //    Detail.SortFields.Clear();
        //    if (this.ReportProperties.SortByLedger == 0)
        //    {
        //        Detail.SortFields.Add(new GroupField("LEDGER_CODE", XRColumnSortOrder.Ascending));
        //        Detail.SortFields.Add(new GroupField("LEDGER_NAME", XRColumnSortOrder.Ascending));
        //    }
        //    else
        //    {
        //        Detail.SortFields.Add(new GroupField("LEDGER_NAME", XRColumnSortOrder.Ascending));
        //    }

        //    //if (grpReceiptLedger.Visible)
        //    //{
        //    //    if (this.ReportProperties.SortByLedger == 0)
        //    //    {
        //    //        grpReceiptLedger.SortingSummary.Enabled = true;
        //    //        if (this.ReportProperties.ShowByLedgerGroup == 1)
        //    //        {
        //    //            grpReceiptLedger.SortingSummary.FieldName = "SORT_ORDER";  // LEDGER_CODE
        //    //            grpReceiptLedger.SortingSummary.FieldName = "LEDGER_CODE";
        //    //        }
        //    //        else
        //    //        {
        //    //            grpReceiptLedger.SortingSummary.FieldName = "LEDGER_CODE";
        //    //        }
        //    //        grpReceiptLedger.SortingSummary.Function = SortingSummaryFunction.Avg;
        //    //        grpReceiptLedger.SortingSummary.SortOrder = XRColumnSortOrder.Ascending;
        //    //    }
        //    //    else
        //    //    {
        //    //        grpReceiptLedger.SortingSummary.Enabled = true;
        //    //        if (this.ReportProperties.ShowByLedgerGroup == 1)
        //    //        {
        //    //            grpReceiptLedger.SortingSummary.FieldName = "SORT_ORDER";  // LEDGER_CODE
        //    //            grpReceiptLedger.SortingSummary.FieldName = "LEDGER_NAME";
        //    //        }
        //    //        else
        //    //        {
        //    //            grpReceiptLedger.SortingSummary.FieldName = "LEDGER_NAME";
        //    //        }
        //    //        grpReceiptLedger.SortingSummary.Function = SortingSummaryFunction.Avg;
        //    //        grpReceiptLedger.SortingSummary.SortOrder = XRColumnSortOrder.Ascending;
        //    //    }
        //    //}

        //    //if (grpcostCenterCategory.Visible)
        //    //{
        //    //    grpcostCenterCategory.SortingSummary.Enabled = true;
        //    //    grpcostCenterCategory.SortingSummary.FieldName = "COST_CENTRE_CATEGORY_NAME";
        //    //    grpcostCenterCategory.SortingSummary.Function = SortingSummaryFunction.Avg;
        //    //    grpcostCenterCategory.SortingSummary.SortOrder = XRColumnSortOrder.Ascending;
        //    //}

        //    //if (grpCostCentreNameReceipts.Visible)
        //    //{
        //    //    grpcostCenterCategory.SortingSummary.Enabled = true;
        //    //    grpcostCenterCategory.SortingSummary.FieldName = "COST_CENTRE_NAME";
        //    //    grpcostCenterCategory.SortingSummary.Function = SortingSummaryFunction.Avg;
        //    //    grpcostCenterCategory.SortingSummary.SortOrder = XRColumnSortOrder.Ascending;
        //    //}
        //}

        //public void SortByLedgerorGroup()
        //{
        //    grpReceiptGroup.Visible = (this.ReportProperties.ShowByLedgerGroup == 1);
        //    if (xrtblReceiptGroup.Visible)
        //    {
        //        grpReceiptGroup.SortingSummary.Enabled = true;
        //        grpReceiptGroup.SortingSummary.FieldName = string.Empty;
        //        // Standard / Alternate Code Type
        //        if (this.ReportProperties.ReportCodeType == (int)ReportCodeType.Standard)
        //        {
        //            grpReceiptGroup.SortingSummary.FieldName = reportSetting1.Payments.PARENT_GROUPColumn.ColumnName;
        //        }
        //        else
        //        {
        //            grpReceiptGroup.SortingSummary.FieldName = "PARENT_CODE1";
        //        }
        //        grpReceiptGroup.SortingSummary.Function = SortingSummaryFunction.Avg;
        //        grpReceiptGroup.SortingSummary.SortOrder = XRColumnSortOrder.Ascending;
        //    }
        //    Detail.SortFields.Clear();
        //    if (this.ReportProperties.SortByLedger == 0)
        //    {
        //        // Sort by Ledger Code
        //        Detail.SortFields.Add(new GroupField("LEDGER_CODE", XRColumnSortOrder.Ascending));
        //        Detail.SortFields.Add(new GroupField("LEDGER_NAME", XRColumnSortOrder.Ascending));
        //    }
        //    else
        //    {
        //        // Sort by Ledger Name
        //        Detail.SortFields.Add(new GroupField("LEDGER_NAME", XRColumnSortOrder.Ascending));
        //    }
        //    //if (grpReceiptLedger.Visible)
        //    //{
        //    //    grpReceiptLedger.SortingSummary.Enabled = true;

        //    //    if (this.ReportProperties.SortByLedger == 0)
        //    //    {
        //    //        grpReceiptLedger.SortingSummary.FieldName = "LEDGER_CODE";
        //    //    }
        //    //    else
        //    //    {
        //    //        grpReceiptLedger.SortingSummary.FieldName = "LEDGER_NAME";
        //    //    }

        //    //    grpReceiptLedger.SortingSummary.Function = SortingSummaryFunction.Avg;

        //    //    grpReceiptLedger.SortingSummary.SortOrder = XRColumnSortOrder.Ascending;
        //    //}
        //    if (grpcostCenterCategory.Visible)
        //    {
        //        grpcostCenterCategory.SortingSummary.Enabled = true;
        //        grpcostCenterCategory.SortingSummary.FieldName = "COST_CENTRE_CATEGORY_NAME";
        //        grpcostCenterCategory.SortingSummary.Function = SortingSummaryFunction.Avg;
        //        grpcostCenterCategory.SortingSummary.SortOrder = XRColumnSortOrder.Ascending;
        //    }
        //    if (grpCostCentreNameReceipts.Visible)
        //    {
        //        grpCostCentreNameReceipts.SortingSummary.Enabled = true;
        //        grpCostCentreNameReceipts.SortingSummary.FieldName = "COST_CENTRE_NAME";
        //        grpCostCentreNameReceipts.SortingSummary.Function = SortingSummaryFunction.Avg;
        //        grpCostCentreNameReceipts.SortingSummary.SortOrder = XRColumnSortOrder.Ascending;
        //    }
        //}
        public void SortByLedgerorGroup()
        {
            grpReceiptGroup.Visible =  (this.ReportProperties.ShowByLedgerGroup == 1);
            if (grpReceiptGroup.Visible)
            {
                grpReceiptGroup.GroupFields.Clear();
                grpReceiptGroup.GroupFields.Add(new GroupField("LEDGER_GROUP", XRColumnSortOrder.Ascending));
                grpReceiptGroup.SortingSummary.Enabled = true;
                grpReceiptGroup.SortingSummary.FieldName = string.Empty;
                if (this.ReportProperties.ReportCodeType == (int)ReportCodeType.Standard)
                {
                    grpReceiptGroup.SortingSummary.FieldName = reportSetting1.Payments.LEDGER_GROUPColumn.ColumnName;
                }
                else
                {
                    grpReceiptGroup.SortingSummary.FieldName = "PARENT_CODE1";
                }
                grpReceiptGroup.SortingSummary.Function = SortingSummaryFunction.Avg;
                grpReceiptGroup.SortingSummary.SortOrder = XRColumnSortOrder.Ascending;

                Detail.SortFields.Clear();
                if (this.ReportProperties.SortByLedger == 0)
                {
                    Detail.SortFields.Add(new GroupField("LEDGER_CODE", XRColumnSortOrder.Ascending));
                    Detail.SortFields.Add(new GroupField("LEDGER_NAME", XRColumnSortOrder.Ascending));
                }
                else
                {
                    Detail.SortFields.Add(new GroupField("LEDGER_NAME", XRColumnSortOrder.Ascending));
                }
                if (grpcostCenterCategory.Visible)
                {
                    grpcostCenterCategory.SortingSummary.Enabled = true;
                    grpcostCenterCategory.SortingSummary.FieldName = "COST_CENTRE_CATEGORY_NAME";
                    grpcostCenterCategory.SortingSummary.Function = SortingSummaryFunction.Avg;
                    grpcostCenterCategory.SortingSummary.SortOrder = XRColumnSortOrder.Ascending;
                }
                if (grpCostCentreNameReceipts.Visible)
                {
                    grpCostCentreNameReceipts.SortingSummary.Enabled = true;
                    grpCostCentreNameReceipts.SortingSummary.FieldName = "COST_CENTRE_NAME";
                    grpCostCentreNameReceipts.SortingSummary.Function = SortingSummaryFunction.Avg;
                    grpCostCentreNameReceipts.SortingSummary.SortOrder = XRColumnSortOrder.Ascending;
                }
            }
        }


        /// <summary>
        /// On 05/10/2021, to get CC deatils for given project and date range
        /// </summary>
        private void AssignCCDetailReportSource()
        {
            ResultArgs resultArgs = null;
            string sqlccDetail = this.GetReportCostCentre(SQL.ReportSQLCommand.CostCentre.CCDetailReceiptsPayments);
            string dateProgress = this.GetProgressiveDate(this.ReportProperties.DateFrom);

            using (DataManager dataManager = new DataManager())
            {
                dataManager.Parameters.Add(this.ReportParameters.DATE_FROMColumn, this.ReportProperties.DateFrom);
                dataManager.Parameters.Add(this.ReportParameters.DATE_TOColumn, this.ReportProperties.DateTo);
                dataManager.Parameters.Add(this.ReportParameters.VOUCHER_TYPEColumn, TransType.RC.ToString());
                dataManager.Parameters.Add(this.ReportParameters.PROJECT_IDColumn, this.ReportProperties.Project);
                dataManager.Parameters.Add(this.ReportParameters.TRANS_MODEColumn, TransMode.CR.ToString());

                //For CC realted reports
                if (this.ReportProperties.ReportId == "RPT-041")
                {
                    dataManager.Parameters.Add(this.ReportParameters.COST_CENTRE_IDColumn, this.ReportProperties.CostCentre);
                }

                //On 04/12/2024, To to currency based reports --------------------------------------------------------------------------------------
                if (this.AppSetting.AllowMultiCurrency == 1 && this.ReportProperties.CurrencyCountryId > 0)
                {
                    dataManager.Parameters.Add(this.ReportParameters.CURRENCY_COUNTRY_IDColumn, this.ReportProperties.CurrencyCountryId);
                }
                else
                {
                    dataManager.Parameters.Add(this.ReportParameters.CURRENCY_COUNTRY_IDColumn, "0");
                }
                //----------------------------------------------------------------------------------------------------------------------------------
                dataManager.DataCommandArgs.IsDirectReplaceParameter = true;
                resultArgs = dataManager.FetchData(DAO.Data.DataSource.DataTable, sqlccDetail);
            }

            if (resultArgs.Success && resultArgs.DataSource.Table != null)
            {
                dtCCDetails = resultArgs.DataSource.Table;

                dtCCDetails.Columns[reportSetting1.Ledger.AMOUNT_PERIODColumn.ColumnName].ColumnName = reportSetting1.Ledger.DEBITColumn.ColumnName;

            }
        }

        private void AssignDonorDetailReportSource()
        {
            ResultArgs resultArgs = null;
            string sqlccDetail = this.GetReportForeginContribution(SQL.ReportSQLCommand.ForeginContribution.DonorDetailReceiptsPayments);
            string dateProgress = this.GetProgressiveDate(this.ReportProperties.DateFrom);

            using (DataManager dataManager = new DataManager())
            {
                dataManager.Parameters.Add(this.ReportParameters.DATE_FROMColumn, this.ReportProperties.DateFrom);
                dataManager.Parameters.Add(this.ReportParameters.DATE_TOColumn, this.ReportProperties.DateTo);
                dataManager.Parameters.Add(this.ReportParameters.VOUCHER_TYPEColumn, TransType.RC.ToString());
                dataManager.Parameters.Add(this.ReportParameters.PROJECT_IDColumn, this.ReportProperties.Project);
                dataManager.Parameters.Add(this.ReportParameters.TRANS_MODEColumn, TransMode.CR.ToString());
                dataManager.DataCommandArgs.IsDirectReplaceParameter = true;
                resultArgs = dataManager.FetchData(DAO.Data.DataSource.DataTable, sqlccDetail);
            }

            if (resultArgs.Success && resultArgs.DataSource.Table != null)
            {
                dtDonorDetails = resultArgs.DataSource.Table;
                dtDonorDetails.Columns[reportSetting1.Ledger.AMOUNT_PERIODColumn.ColumnName].ColumnName = reportSetting1.Ledger.DEBITColumn.ColumnName;
            }
        }

        private void ShowCCDetails()
        {
            //On 05/10/2021, To show CC detail for given Ledger
            xrSubreportCCDetails.Visible = false;
            if (this.ReportProperties.ShowCCDetails == 1)
            {
                if (GetCurrentColumnValue(reportSetting1.MonthlyAbstract.LEDGER_IDColumn.ColumnName) != null && dtCCDetails.Rows.Count > 0)
                {
                    Int32 ledgerid = UtilityMember.NumberSet.ToInteger(GetCurrentColumnValue(reportSetting1.MonthlyAbstract.LEDGER_IDColumn.ColumnName).ToString());
                    UcCCDetail ccDetail = xrSubreportCCDetails.ReportSource as UcCCDetail;
                    dtCCDetails.DefaultView.RowFilter = string.Empty;
                    dtCCDetails.DefaultView.RowFilter = reportSetting1.MonthlyAbstract.LEDGER_IDColumn.ColumnName + " = " + ledgerid;
                    DataTable dtCC = dtCCDetails.DefaultView.ToTable();

                    ccDetail.BindCCDetails(dtCC, false, false, false, true); //ccDetail.BindCCDetails(dtCC, false);
                    ccDetail.DateWidth = 0;

                    xrSubreportCCDetails.LeftF = xrLedgerCode.WidthF;
                    ccDetail.CCCreditCaption = "";
                    ccDetail.CCDebitCaption = "";
                    ccDetail.CCNameWidth = xrLedgerName.WidthF;
                    ccDetail.CCDebitWidth = xrLedgerAmt.WidthF;
                    ccDetail.CCCreditWidth = xrLedgerAmt.WidthF;
                    ccDetail.PRojectNameWidth = (xrLedgerName.WidthF + xrLedgerAmt.WidthF);
                    ccDetail.HideReportHeaderFooter();
                    dtCCDetails.DefaultView.RowFilter = string.Empty;

                    xrSubreportCCDetails.Visible = (dtCC.Rows.Count > 0);
                    PrevLedgerCCFound = (dtCC.Rows.Count > 0);
                }
                else
                {
                    xrSubreportCCDetails.Visible = false;
                    PrevLedgerCCFound = false;
                }
            }
            else
            {
                xrSubreportCCDetails.Visible = false;
                PrevLedgerCCFound = false;
            }

            if (!xrSubreportCCDetails.Visible)
            {
                if (Detail.Controls.Contains(xrSubreportCCDetails))
                {
                    Detail.Controls.Remove(xrSubreportCCDetails);
                }
            }
            else
            {
                Detail.Controls.Add(xrSubreportCCDetails);
            }
        }

        private void ShowDonorDetails()
        {
            //On 17/02/2021, To show CC detail for given Ledger
            xrSubreportDonorDetails.Visible = false;
            if (this.ReportProperties.ShowDonorDetails == 1)
            {
                if (GetCurrentColumnValue(reportSetting1.MonthlyAbstract.LEDGER_IDColumn.ColumnName) != null && dtDonorDetails.Rows.Count > 0)
                {
                    Int32 ledgerid = UtilityMember.NumberSet.ToInteger(GetCurrentColumnValue(reportSetting1.MonthlyAbstract.LEDGER_IDColumn.ColumnName).ToString());
                    UcCCDonorDetail ucdonorDetail = xrSubreportDonorDetails.ReportSource as UcCCDonorDetail;
                    dtDonorDetails.DefaultView.RowFilter = string.Empty;
                    dtDonorDetails.DefaultView.RowFilter = reportSetting1.MonthlyAbstract.LEDGER_IDColumn.ColumnName + " = " + ledgerid;
                    DataTable dtdonordetails = dtDonorDetails.DefaultView.ToTable();

                    ucdonorDetail.BindDonorDetails(dtdonordetails, false);
                    ucdonorDetail.DateWidth = 0;

                    xrSubreportDonorDetails.LeftF = xrLedgerCode.WidthF;
                    ucdonorDetail.DonorCreditCaption = "";
                    ucdonorDetail.DonorDebitCaption = "";
                    ucdonorDetail.DonorNameWidth = xrLedgerName.WidthF;
                    ucdonorDetail.DonorDebitWidth = xrLedgerAmt.WidthF;
                    ucdonorDetail.DonorCreditWidth = xrLedgerAmt.WidthF;
                    ucdonorDetail.ProjectNameWidth = (xrLedgerName.WidthF + xrLedgerAmt.WidthF);
                    ucdonorDetail.HideReportHeaderFooter();
                    dtDonorDetails.DefaultView.RowFilter = string.Empty;

                    xrSubreportDonorDetails.Visible = (dtdonordetails.Rows.Count > 0);
                    PrevLedgerDonorFound = (dtdonordetails.Rows.Count > 0);
                }
                else
                {
                    xrSubreportDonorDetails.Visible = false;
                    PrevLedgerDonorFound = false;
                }
            }
            else
            {
                xrSubreportDonorDetails.Visible = false;
                PrevLedgerDonorFound = false;
            }

            if (!xrSubreportDonorDetails.Visible)
            {
                if (Detail.Controls.Contains(xrSubreportDonorDetails))
                {
                    Detail.Controls.Remove(xrSubreportDonorDetails);
                }
            }
            else
            {
                xrSubreportDonorDetails.TopF = xrSubreportCCDetails.Visible ? (xrSubreportCCDetails.TopF + xrSubreportCCDetails.HeightF) : xrTableReceipt.HeightF;
                Detail.Controls.Add(xrSubreportDonorDetails);
            }
        }

        private void ProperBorderForLedgerRow(bool ccFound, bool ccDonorFound)
        {
            if (ccFound || ccDonorFound)
            {
                xrLedgerCode.Borders = BorderSide.Top | BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                xrLedgerName.Borders = BorderSide.Top | BorderSide.Right | BorderSide.Bottom;
                xrLedgerAmt.Borders = BorderSide.Top | BorderSide.Right | BorderSide.Bottom;
            }
            else
            {
                xrLedgerCode.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                xrLedgerName.Borders = BorderSide.Right | BorderSide.Bottom;
                xrLedgerAmt.Borders = BorderSide.Right | BorderSide.Bottom;
            }
        }

        #endregion

        #region Events
        private void xrLedgerAmt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            double ReceiptAmt = this.ReportProperties.NumberSet.ToDouble(xrLedgerAmt.Text);
            if (ReceiptAmt != 0)
            {
                e.Cancel = false;
            }
            else
            {
                xrLedgerAmt.Text = "";
            }
        }

        private void grpReceiptGroup_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (GetCurrentColumnValue(reportSetting1.Receipts.LEDGER_GROUPColumn.ColumnName) != null)
            {
                string ParentGroup = GetCurrentColumnValue(reportSetting1.Receipts.PARENT_GROUPColumn.ColumnName) != null ?
                    GetCurrentColumnValue(reportSetting1.Receipts.PARENT_GROUPColumn.ColumnName).ToString() : string.Empty;
                string LedgerGroup = GetCurrentColumnValue(reportSetting1.Receipts.LEDGER_GROUPColumn.ColumnName) != null
                    ? GetCurrentColumnValue(reportSetting1.Receipts.LEDGER_GROUPColumn.ColumnName).ToString() : string.Empty;

                if (ParentGroup.Trim().Equals(LedgerGroup.Trim()))
                {
                    e.Cancel = true;
                }
            }
        }
        public decimal TotalCashAmount = 0;
        public decimal TotalBankAmount = 0;
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            ShowCCDetails();
            ShowDonorDetails();
            Detail.HeightF = 25;
            object cashObj = GetCurrentColumnValue("AMOUNT_CASH");
            object bankObj = GetCurrentColumnValue("AMOUNT_BANK");

            decimal cash = 0;
            decimal bank = 0;

            if (cashObj != null && cashObj != DBNull.Value)
            {
                decimal.TryParse(cashObj.ToString(), out cash);
            }

            if (bankObj != null && bankObj != DBNull.Value)
            {
                decimal.TryParse(bankObj.ToString(), out bank);
            }

            if (cash == 0m && bank == 0m)
            {
                e.Cancel = true;
                return;
            }

            //TotalCashAmount += cash;
            //TotalBankAmount += bank;
        }
        #endregion

        private void xrParentGroupName_EvaluateBinding(object sender, BindingEventArgs e)
        {
            if (!(this.ReportProperties.ReportCodeType == (int)ReportCodeType.Standard))
            {
                if (GetCurrentColumnValue(reportSetting1.Payments.PARENT_CODEColumn.ColumnName) != null)
                {
                    string GroupCode = GetCurrentColumnValue(reportSetting1.Payments.PARENT_CODEColumn.ColumnName) != null ?
                        GetCurrentColumnValue(reportSetting1.Payments.PARENT_CODEColumn.ColumnName).ToString() : string.Empty;

                    string ParentGroup = GetCurrentColumnValue(reportSetting1.Payments.PARENT_GROUPColumn.ColumnName) != null ?
                        GetCurrentColumnValue(reportSetting1.Payments.PARENT_GROUPColumn.ColumnName).ToString() : string.Empty;

                    if (ParentGroup.Trim() == "Current Liabilities" || ParentGroup.Trim() == "Fixed Assets")
                    {
                        e.Value = ParentGroup.Trim() + " -(" + GroupCode.Trim() + ")";
                    }
                }
            }
        }
        public decimal GetCashTotal()
        {
            if (ReportData == null || ReportData.Rows.Count == 0)
                return 0;

            object result = ReportData.Compute("SUM(AMOUNT_CASH)", "");

            return result != DBNull.Value ? Convert.ToDecimal(result) : 0;
        }

        public decimal GetBankTotal()
        {
            if (ReportData == null || ReportData.Rows.Count == 0)
                return 0;

            object result = ReportData.Compute("SUM(AMOUNT_BANK)", "");

            return result != DBNull.Value ? Convert.ToDecimal(result) : 0;
        }

        //22/05/2026, Chinna - Force ledger/group tables to match parent xrtbleHeader column widths
        public void ApplyHeaderColumnLayout(float codeWidth, float particularWidth, float cashWidth, float bankWidth, float totalTableWidth)
        {
            //CodeColumnWidth = codeWidth;
            //NameColumnWidth = particularWidth;
            //AmountColumnWidth = cashWidth;
            //bankAmountColumnWidth = bankWidth;
            //GroupCodeColumnWidth = codeWidth;
            //GroupNameColumnWidth = particularWidth;
            //GroupAmountColumnWidth = cashWidth;
            //bankandcashgroupcolumwidth = bankWidth;

            //if (totalTableWidth > 0f)
            //{
            //    xrTableReceipt.WidthF = totalTableWidth;
            //    xrtblReceiptGroup.WidthF = totalTableWidth;
            //}
            // #Dinesh 26-05-2026 - Receipt columns: LEDGER_GROUP=Code+Particular, Cash, Bank match xrtbleHeader
            SyncReceiptColumnWidths(codeWidth, particularWidth, cashWidth, bankWidth, totalTableWidth);

            // #Dinesh 26-05-2026 - Phase 1: re-apply fixed heights when parent syncs columns
            ApplyPhase1LayoutStabilization();
        }

        // #Dinesh 26-05-2026 - Phase 1: fixed ledger/group row heights; disable CanGrow on core tables
        private const float Phase1LedgerRowHeightF = 25f;
        private const float Phase1GroupBandHeightF = 31.25f;
        private const float Phase1GroupTableRowHeightF = 25f;


        private void ApplyReceiptDetailBandHeight()
        {
            float heightF = Phase1LedgerRowHeightF;

            xrTableReceipt.TopF = 0f;
            if (xrSubreportCCDetails.Visible)
                heightF = Math.Max(heightF, xrSubreportCCDetails.TopF + xrSubreportCCDetails.HeightF);
            if (xrSubreportDonorDetails.Visible)
                heightF = Math.Max(heightF, xrSubreportDonorDetails.TopF + xrSubreportDonorDetails.HeightF);

            Detail.HeightF = heightF;
            Detail.CanGrow = false;
        }

        private static void CollapseDetailSubreport(XRSubreport subreport)
        {
            if (subreport == null)
                return;

            subreport.Visible = false;
            subreport.HeightF = 0f;
            subreport.TopF = 0f;
            subreport.CanShrink = true;
        }

        private static void RemoveZeroAmountLedgerRows(DataTable dtReceipts)
        {
            if (dtReceipts == null || dtReceipts.Rows.Count == 0)
                return;

            if (!dtReceipts.Columns.Contains("AMOUNT_CASH") || !dtReceipts.Columns.Contains("AMOUNT_BANK"))
                return;

            for (int i = dtReceipts.Rows.Count - 1; i >= 0; i--)
            {
                DataRow row = dtReceipts.Rows[i];
                decimal cash = 0m;
                decimal bank = 0m;
                if (row["AMOUNT_CASH"] != DBNull.Value)
                    decimal.TryParse(row["AMOUNT_CASH"].ToString(), out cash);
                if (row["AMOUNT_BANK"] != DBNull.Value)
                    decimal.TryParse(row["AMOUNT_BANK"].ToString(), out bank);
                if (cash == 0m && bank == 0m)
                    row.Delete();
            }
            dtReceipts.AcceptChanges();
        }

        private static void ApplyFixedTableLayout(XRTable table, float rowHeightF)
        {
            if (table == null)
                return;

            table.CanGrow = false;
            foreach (XRTableRow row in table.Rows)
            {
                row.HeightF = rowHeightF;
                row.CanGrow = false;
                foreach (XRTableCell cell in row.Cells)
                {
                    cell.CanGrow = false;
                    cell.CanShrink = false;
                    cell.WordWrap = false;
                }
            }
        }

        public void ApplyPhase1LayoutStabilization()
        {
            ApplyFixedTableLayout(xrTableReceipt, Phase1LedgerRowHeightF);
            ApplyFixedTableLayout(xrtblReceiptGroup, Phase1GroupTableRowHeightF);
            grpReceiptGroup.HeightF = Phase1GroupBandHeightF;
            grpReceiptGroup.CanGrow = false;

            bool detailHasVariableHeight = grpCostCentreNameReceipts.Visible
                || grpcostCenterCategory.Visible
                || grpCCBreakup.Visible
                || (ReportProperties.ShowCCDetails == 1)
                || (ReportProperties.ShowDonorDetails == 1);

            Detail.CanGrow = detailHasVariableHeight;
            if (!detailHasVariableHeight)
                Detail.HeightF = Phase1LedgerRowHeightF;

            CollapseDetailSubreport(xrSubreportCCDetails);
            CollapseDetailSubreport(xrSubreportDonorDetails);
            xrSubreportCCDetails.CanGrow = false;
            xrSubreportDonorDetails.CanGrow = false;
            xrTableReceipt.TopF = 0f;
        }

        //22/05/2026, Chinna - Published ledger row widths for opening/closing balance pivot alignment
        public float GetEffectiveCodeColumnWidth()
        {
            if (xrLedgerCode.WidthF > 0f)
                return xrLedgerCode.WidthF;
            //if (xrGroupCode.WidthF > 0f)
            //    return xrGroupCode.WidthF;
            return 0f;
        }

        public float GetEffectiveParticularColumnWidth()
        {
            if (xrLedgerName.WidthF > 0f)
                return xrLedgerName.WidthF;
            //if (xrGroupName.WidthF > 0f)
            //    return xrGroupName.WidthF;
            return 0f;
        }

        public float GetEffectiveCashColumnWidth()
        {
            return xrLedgerAmt.WidthF;
        }

        public float GetEffectiveBankColumnWidth()
        {
            return xrLedgerBankAmt.WidthF;
        }

        private void Detail_AfterPrint(object sender, EventArgs e)
        {
            if (GetCurrentColumnValue(reportSetting1.MonthlyAbstract.LEDGER_NAMEColumn.ColumnName) != null)
            {
                string ledgername = GetCurrentColumnValue(reportSetting1.MonthlyAbstract.LEDGER_NAMEColumn.ColumnName).ToString();
                ProperBorderForLedgerRow(PrevLedgerCCFound, PrevLedgerDonorFound);
            }
        }

        private void xrSubreportDonorDetails_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void xrLedgerGroupCashRCAmt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            XRLabel lbl = sender as XRLabel;
            decimal totalCash = Convert.ToDecimal(GetCurrentColumnValue("LEDGER_GROUP_CASH"));
            lbl.Text = totalCash.ToString("N2");
        }

        private void xrLedGroupBankAmt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            XRLabel lbl = sender as XRLabel;
            decimal totalBank = Convert.ToDecimal(GetCurrentColumnValue("LEDGER_GROUP_BANK"));
            lbl.Text = totalBank.ToString("N2");
        }

        private static void ApplyReceiptTableCellWidth(XRTableCell cell, float widthF, float tableWidthF)
        {
            if (cell == null || tableWidthF <= 0f)
                return;

            cell.WidthF = widthF;
            cell.Weight = (double)(widthF / tableWidthF);
        }

        // #Dinesh 26-05-2026 - Align detail + group XRTable cells to parent header (Code, Particular, Cash, Bank)
        public void SyncReceiptColumnWidths(float codeWidth, float particularWidth, float cashWidth, float bankWidth, float totalTableWidth)
        {
            float ledgerGroupWidth = codeWidth + particularWidth;
            float totalW = totalTableWidth > 0f ? totalTableWidth : ledgerGroupWidth + cashWidth + bankWidth;
            if (totalW <= 0f)
                return;

            _lastReceiptCodeW = codeWidth;
            _lastReceiptParticularW = particularWidth;
            _lastReceiptCashW = cashWidth;
            _lastReceiptBankW = bankWidth;
            _lastReceiptColumnSyncTotalW = totalW;

            ApplyReceiptTableCellWidth(xrLedgerCode, codeWidth, totalW);
            ApplyReceiptTableCellWidth(xrLedgerName, particularWidth, totalW);
            ApplyReceiptTableCellWidth(xrLedgerAmt, cashWidth, totalW);
            ApplyReceiptTableCellWidth(xrLedgerBankAmt, bankWidth, totalW);

            ApplyReceiptTableCellWidth(xrGroupName, ledgerGroupWidth, totalW);
            ApplyReceiptTableCellWidth(xrLedgerGroupCashRCAmt, cashWidth, totalW);
            ApplyReceiptTableCellWidth(xrLedGroupBankAmt, bankWidth, totalW);

            xrTableReceipt.WidthF = totalW;
            xrtblReceiptGroup.WidthF = totalW;
            xrTableReceipt.LeftF = 0f;
            xrtblReceiptGroup.LeftF = 0f;
            xrtblReceiptGroup.TopF = 0f;
        }
    }
}
