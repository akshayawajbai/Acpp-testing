using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

using Bosco.Utility;
using Bosco.DAO.Data;
using Bosco.DAO.Schema;
using Bosco.Report.Base;
using System.Data;
using Bosco.Utility.ConfigSetting;
using DevExpress.XtraSplashScreen;
using Bosco.Report.View;
using DevExpress.XtraPrinting;

namespace Bosco.Report.ReportObject
{
    public partial class UcCCDetailCBank : Bosco.Report.Base.ReportHeaderBase
    {
        #region Constructor
        public UcCCDetailCBank()
        {
            InitializeComponent();
        }
        #endregion

        #region Variables
        ResultArgs resultArgs = null;
        double LedgerDebit = 0;
        double LedgerCredit = 0;
        int ResetTotal = 0;
        bool DontshowProjectwise = false;
        bool DontshowCaption = false;
        bool DontshowTotal = false;

        public float CCTableWidth
        {
            set
            {
                xrtblHeaderCaption.WidthF = value;
                xrTblCC.WidthF = value;
                xrTblLegerSum.WidthF = value;
                xrTblProjectDetails.WidthF = value;
            }
        }

        public bool ShowIndentInCostCentre
        {
            set
            {
                //xrCellCCName.Padding = new PaddingInfo(10,xrCellCCName.Padding.Right, xrCellCCName.Padding.Top, xrCellCCName.Padding.Bottom);
                xrTblCC.LeftF = xrTblLegerSum.LeftF = 10;
            }
        }

        public float PRojectNameWidth
        {
            set
            {

                //if (value <= 0)
                //{
                //    xrCapProject.Visible = false;
                //}
                //else 
                //{
                //    xrCapProject.Visible = true;
                //    xrCapProject.WidthF = value + 5;  //Project Header
                //}
                bool hide = (value == 0);  // convert float → bool
                xrCapProject.Visible = !hide;

                if (!hide)
                    xrCapProject.WidthF = value + 5;




            }
        }

        public float DateWidth
        {
            set
            {
                xrCapDate.WidthF = value;
                xrDate.WidthF = value; ;
            }
        }

        public float CCNameWidth
        {
            set
            {
                xrCapCCName.WidthF = value - xrTblCC.LeftF; // -2;
                xrCellCCName.WidthF = value - xrTblCC.LeftF;
                xrCellCCLedgerSumName.WidthF = value - xrTblCC.LeftF;
            }
        }

        public float CCCreditWidth
        {
            set
            {
                // 25/05/2026, chinna
                RemoveApprovedAmountColumnsIfHidden();

                if (xrRowCaption.Cells.Contains(xrCapDebit)) xrCapDebit.WidthF = value;
                if (xrRowCC.Cells.Contains(xrcellCCCredit)) xrcellCCCredit.WidthF = value;
                if (xrRowCCLedgerSum.Cells.Contains(xrcellCCLedgerCreditSum)) xrcellCCLedgerCreditSum.WidthF = value;
                if (ShowBudgetApprovedAmountInMonthlyReportForReport == 1)
                {
                    if (xrRowCC.Cells.Contains(xrcellCCApprovedAmount)) xrcellCCApprovedAmount.WidthF = value;
                    if (xrRowCCLedgerSum.Cells.Contains(xrcellCCLedgerApprovedSum)) xrcellCCLedgerApprovedSum.WidthF = value;
                }
            }
        }

        public float CCDebitWidth
        {
            set
            {
                xrCapCredit.WidthF = value;
                xrcellCCDebit.WidthF = value; ;
                xrcellCCLedgerDebitSum.WidthF = value; ;
            }
        }

        public string CCDebitCaption
        {
            set
            {
                xrCapCredit.Text = value;
            }
        }

        public string CCCreditCaption
        {
            set
            {
                xrCapDebit.Text = value;
            }
        }
        #endregion

        #region ShowReport
        //public override void ShowReport()
        //{
        //    LedgerDebit = 0;
        //    LedgerCredit = 0;
        //    BindConsolidatedStatement();
        //}
        #endregion

        #region Methods

        public void HideReportHeaderFooter()
        {
            this.HideReportHeader = false;
            this.HidePageFooter = false;
        }

        // 25/05/2026, chinna - Remove approved cells unless RPT-001/002/003 (avoids blank overflow pages on Cash/Bank Journal)
        private void RemoveApprovedAmountColumnsIfHidden()
        {
            if (ShowBudgetApprovedAmountInMonthlyReportForReport == 1)
                return;

            xrTblCC.SuspendLayout();
            if (xrRowCC.Cells.Contains(xrcellCCApprovedAmount))
                xrRowCC.Cells.Remove(xrRowCC.Cells[xrcellCCApprovedAmount.Name]);
            xrTblCC.PerformLayout();

            xrTblLegerSum.SuspendLayout();
            if (xrRowCCLedgerSum.Cells.Contains(xrcellCCLedgerApprovedSum))
                xrRowCCLedgerSum.Cells.Remove(xrRowCCLedgerSum.Cells[xrcellCCLedgerApprovedSum.Name]);
            xrTblLegerSum.PerformLayout();
        }

        public void BindCCDetails(DataTable dtCCDetails, bool isMonthlyAbstract, bool dontshowProjectwise = false, bool dontshowCaption = false, bool dontshowTotal = false)
        {
            SetTitleWidth(xrtblHeaderCaption.WidthF);
            this.SetLandscapeHeader = xrtblHeaderCaption.WidthF;
            this.SetLandscapeFooter = xrtblHeaderCaption.WidthF;
            this.SetLandscapeFooterDateWidth = xrtblHeaderCaption.WidthF;

            DontshowProjectwise = dontshowProjectwise;
            DontshowCaption = dontshowCaption;
            DontshowTotal = dontshowTotal;

            if (!isMonthlyAbstract)
            {
                xrtblHeaderCaption.SuspendLayout();
                if (xrRowCaption.Cells.Contains(xrCapDebit))
                    xrRowCaption.Cells.Remove(xrRowCaption.Cells[xrCapDebit.Name]);
                xrtblHeaderCaption.PerformLayout();

                xrTblCC.SuspendLayout();
                if (xrRowCC.Cells.Contains(xrcellCCCredit))
                    xrRowCC.Cells.Remove(xrRowCC.Cells[xrcellCCCredit.Name]);
                xrTblCC.PerformLayout();

                xrtblDetails.SuspendLayout();
                if (xrRowCCDetails.Cells.Contains(xrCrdit))
                    xrRowCCDetails.Cells.Remove(xrRowCCDetails.Cells[xrCrdit.Name]);
                xrtblDetails.PerformLayout();

                xrTblLegerSum.SuspendLayout();
                if (xrRowCCLedgerSum.Cells.Contains(xrcellCCLedgerCreditSum))
                    xrRowCCLedgerSum.Cells.Remove(xrRowCCLedgerSum.Cells[xrcellCCLedgerCreditSum.Name]);
                xrTblLegerSum.PerformLayout();
            }

            // 25/05/2026, chinna
            RemoveApprovedAmountColumnsIfHidden();

            BindProperty(dtCCDetails);
            setReportBorder();

            PageHeader.Visible = DontshowCaption;
            grpFooterLedgerName.Visible = DontshowTotal;
        }

        private void BindProperty(DataTable dtCCDetails)
        {
            setHeaderTitleAlignment();
            SetReportTitle();
            this.HideReportDate = ReportProperties.ReportDate != string.Empty ? true : false;
            this.SetReportDate = ReportProperties.ReportDate != string.Empty ? this.UtilityMember.DateSet.ToDate(ReportProperties.ReportDate, false).ToShortDateString() : string.Empty;
            this.CosCenterName = null;
            this.HideReportHeader = false;

            //if (this.ReportProperties.ShowByCostCentreCategory == 1)
            //{
            //    GrpCostCentreCategoryName.Visible = true;
            //}
            //else
            //{
            //    GrpCostCentreCategoryName.Visible = GrpCostCentreCategoryAmount.Visible = false;
            //    grpLedgerName.Visible = Detail.Visible = true;
            //}

            if (GrpCostCentreCategoryName.GroupFields.Count > 0)
            {
                GrpCostCentreCategoryName.GroupFields[0].FieldName = string.Empty;
                if (GrpCostCentreCategoryName.Visible)
                {
                    GrpCostCentreCategoryName.GroupFields[0].FieldName = reportSetting1.Receipts.COST_CENTRE_CATEGORY_NAMEColumn.ColumnName;
                    GrpCostCentreCategoryName.GroupFields[0].SortOrder = XRColumnSortOrder.Ascending;
                }
            }




            // To show by costcentre ends
            PageHeader.Visible = grpHeaderCC.Visible = grpFooterLedgerName.Visible = grpProjectHeader.Visible = false;
            if (dtCCDetails != null && dtCCDetails.Rows.Count != 0)
            {
                dtCCDetails.TableName = "Ledger";
                this.DataSource = dtCCDetails;
                this.DataMember = dtCCDetails.TableName;
                PageHeader.Visible = grpHeaderCC.Visible = grpFooterLedgerName.Visible = true;
                grpProjectHeader.Visible = !DontshowProjectwise;
            }
            else
            {
                this.DataSource = null;
            }

            //On 06/10/2021, to show poject wise if and if only more than one projects are seleceted
            //&& this.ReportProperties.VoucherPrintShowCostCentre == 1
            if ((DontshowProjectwise || string.IsNullOrEmpty(this.ReportProperties.Project) || this.ReportProperties.Project == "0" || this.ReportProperties.Project.Split(',').Length == 1))
            {
                grpProjectHeader.GroupFields[0].FieldName = string.Empty;
                grpProjectHeader.Visible = false;
            }
        }

        private void setReportBorder()
        {
            xrtblHeaderCaption = AlignHeaderTable(xrtblHeaderCaption, true);
            xrtblDetails = AlignContentTable(xrtblDetails);
            xrTblCC = AlignContentTable(xrTblCC);
            xrTblProjectDetails = AlignContentTable(xrTblProjectDetails);

            //xrtblLedger = AlignCCCategoryTable(xrtblLedger);
            //xrtblCCCName = AlignCCCategoryTable(xrtblCCCName);
            this.SetCurrencyFormat(xrCapCredit.Text, xrCapCredit);
            this.SetCurrencyFormat(xrCapDebit.Text, xrCapDebit);
        }

        // to align content tables
        public virtual XRTable AlignContentTable(XRTable table)
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
                            tcell.Borders = DevExpress.XtraPrinting.BorderSide.Left;
                        }
                        else if (count == 1)
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
                            tcell.Borders = BorderSide.Left;
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
                            if (count == 1 && ReportProperties.ShowLedgerCode != 1)
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
                        if (count == 1 && ReportProperties.ShowLedgerCode != 1)
                        {
                            tcell.Borders = DevExpress.XtraPrinting.BorderSide.Left;
                        }
                        else if (count == 1)
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
                        if (count == 1 && ReportProperties.ShowLedgerCode != 1)
                        {
                            tcell.Borders = BorderSide.Left;
                        }
                        else if (count == 1)
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


        #endregion

        #region Events

        private void xrLedgerDebitBalance_SummaryReset(object sender, EventArgs e)
        {
            LedgerDebit = LedgerCredit = 0;
        }

        private void xrTblProjectDetails_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (GetCurrentColumnValue(reportSetting1.MonthlyAbstract.LEDGER_IDColumn.ColumnName) != null)
            {
                if (ShowBudgetApprovedAmountInMonthlyReportForReport != 1 && xrRowCC.Cells.Contains(xrcellCCApprovedAmount))
                {
                    (sender as XRTable).WidthF = xrTblCC.WidthF - xrcellCCApprovedAmount.WidthF;
                }
                else
                {
                    (sender as XRTable).WidthF = xrTblCC.WidthF;
                }
            }
        }

        private void xrcellCCApprovedAmount_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //On 05/03/2024, To hide, Budget column
            if (ShowBudgetApprovedAmountInMonthlyReportForReport != 1) e.Cancel = true;
        }

        private void xrcellCCLedgerApprovedSum_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //On 05/03/2024, To hide, Budget column
            if (ShowBudgetApprovedAmountInMonthlyReportForReport != 1) e.Cancel = true;
        }
        #endregion

    }
}

