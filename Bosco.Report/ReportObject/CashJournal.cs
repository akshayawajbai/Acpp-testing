using System;
using System.Drawing;
using Bosco.Report.Base;
using Bosco.Utility;
using System.Data;
using Bosco.DAO.Data;
using DevExpress.XtraReports.UI;
using System.Collections;
using System.Collections.Generic;
using DevExpress.XtraSplashScreen;
using Bosco.Report.View;
using AcMEDSync.Model;
using DevExpress.XtraPrinting;
using System.Resources;
using System.Reflection;
using System.Globalization;
using System.Linq;

namespace Bosco.Report.ReportObject
{
    public partial class CashJournal : ReportHeaderBase
    {
        #region Declaration
        ResultArgs resultArgs = null;
        int DailyGroupNumber = 0;
        double DailyGrpOpbalance = 0;
        double DailyGrpClbalance = 0;
        double DailyReceipts = 0;
        double DailyPayments = 0;
        double MonthlyReceipts = 0;
        double MonthlyPayments = 0;
        int MonthGroupNumber = 0;
        double MonthlyGrpOpbalance = 0;
        double MonthlyGrpClbalance = 0;
        string LedgerDate = string.Empty;
        string datefrom = string.Empty;
        string dateto = string.Empty;
        int count = 0;
        int OPcount = 0;
        string ReceiptCaption = string.Empty;
        string PaymentCaption = string.Empty;
        private DataTable dtCCDetails = new DataTable();
        private bool PrevLedgerCCFound = false;
        #endregion

        #region Constructor
        public CashJournal()
        {
            InitializeComponent();
            ReceiptCaption = xrCapReceipt.Text;
            PaymentCaption = xrCapPayments.Text;
            //this.AttachDrillDownToRecord(xrBindSource, xrLedgerName,
            //    new ArrayList { this.ReportParameters.VOUCHER_IDColumn.ColumnName }, DrillDownType.LEDGER_CASHBANK_VOUCHER, false, "VOUCHER_SUB_TYPE");

            this.AttachDrillDownToRecord(xrBindSource, xrLedgerName,
              new ArrayList { this.ReportParameters.VOUCHER_IDColumn.ColumnName, "VOUCHER_TYPE" }, DrillDownType.LEDGER_VOUCHER, false, "VOUCHER_SUB_TYPE");

        }
        #endregion

        #region Methods
        public override void ShowReport()
        {
            if (IsDrillDownMode)
            {
                Dictionary<string, object> dicDDProperties = this.ReportProperties.DrillDownProperties;
                DrillDownType ddtypeLinkType = DrillDownType.BASE_REPORT;
                ddtypeLinkType = (DrillDownType)UtilityMember.EnumSet.GetEnumItemType(typeof(DrillDownType), dicDDProperties["DrillDownLink"].ToString());


                if (dicDDProperties.ContainsKey(this.reportSetting1.CashBankFlow.DATEColumn.ColumnName))
                {
                    LedgerDate = dicDDProperties[this.reportSetting1.CashBankFlow.DATEColumn.ColumnName].ToString();
                    datefrom = dateto = LedgerDate;
                }
            }
            else
            {
                datefrom = this.ReportProperties.DateFrom;
                dateto = this.ReportProperties.DateTo;
            }
            DailyGroupNumber = 0;
            DailyGrpOpbalance = 0;
            DailyGrpClbalance = 0;
            DailyReceipts = 0;
            DailyPayments = 0;

            MonthGroupNumber = 0;
            MonthlyGrpOpbalance = 0;
            MonthlyGrpClbalance = 0;
            MonthlyReceipts = 0;
            MonthlyPayments = 0;
            grpHeaderMonth.PageBreak = DevExpress.XtraReports.UI.PageBreak.None;

            count = 0;
            OPcount = 0;
            CashJournalReport();
        }

        private void CashJournalReport()
        {
            SetTitleWidth(xrtblHeaderCaption.WidthF);
            this.SetLandscapeHeader = xrtblHeaderCaption.WidthF;
            this.SetLandscapeFooter = xrtblHeaderCaption.WidthF;
            this.SetLandscapeFooterDateWidth = xrtblHeaderCaption.WidthF;

            if (string.IsNullOrEmpty(datefrom) || string.IsNullOrEmpty(dateto) ||
                this.ReportProperties.Project == "0" || string.IsNullOrEmpty(this.ReportProperties.CashBankLedger))
            {
                SetReportTitle();
                ShowReportFilterDialog();
            }
            else
            {
                //On 09/04/2019, if show only receipts /payments, lock daily and monthly balances
                if ((this.ReportProperties.ShowOnlyReceipts == 1 && this.ReportProperties.ShowOnlyPayments == 0) ||
                    (this.ReportProperties.ShowOnlyPayments == 1 && this.ReportProperties.ShowOnlyReceipts == 0))
                {
                    if (ReportProperty.Current.ShowDailyBalance == 1 || ReportProperty.Current.IncludeLedgerGroupTotal == 1)
                    {
                        MessageRender.ShowMessage("Show Daily Balance/Month-wise Total/Ledger Summary option will be disabled");
                    }
                    ReportProperty.Current.ShowDailyBalance = 0;
                    ReportProperty.Current.ShowMonthTotal = 0;
                    ReportProperty.Current.ShowByLedgerSummary = 0;
                    ReportProperty.Current.IncludeLedgerGroupTotal = 0;
                    ReportProperty.Current.SaveReportSetting();
                }

                //On 04/03/2019, if monthly leger summar disalbe all other options like include narration, show daily balance
                grpMonthLedgerSummary.GroupFields.Clear();
                if (ReportProperty.Current.ShowByLedgerSummary == 1)
                {
                    this.ReportProperties.ShowDailyBalance = 0;
                    grpMonthLedgerSummary.GroupFields.Add(new GroupField("LEDGER", XRColumnSortOrder.Ascending));
                }

                if (this.UIAppSetting.UICustomizationForm == "1")
                {
                    if (ReportProperty.Current.ReportFlag == 0)
                    {
                        SplashScreenManager.ShowForm(typeof(frmReportWait));
                        BindProperty();
                        SplashScreenManager.CloseForm();
                        base.ShowReport();
                    }
                    else
                    {
                        SetReportTitle();
                        ShowReportFilterDialog();
                    }
                }
                else
                {
                    SplashScreenManager.ShowForm(typeof(frmReportWait));
                    BindProperty();
                    SplashScreenManager.CloseForm();
                    base.ShowReport();
                }
            }
        }

        private void BindProperty()
        {
            setHeaderTitleAlignment();
            SetReportTitle();
            this.HideReportDate = ReportProperties.ReportDate != string.Empty ? true : false;
            this.SetReportDate = ReportProperties.ReportDate != string.Empty ? this.UtilityMember.DateSet.ToDate(ReportProperties.ReportDate, false).ToShortDateString() : string.Empty;
            this.CosCenterName = ReportProperties.Count == 1 ? ReportProperties.BankAccountName : " ";
            //show daiy balance
            grpheaderVoucherDate.Visible = (this.ReportProperties.ShowDailyBalance == 1);
            grpfooterVoucherDate.Visible = grpheaderVoucherDate.Visible;

            //show monthtotal
            //grpHeaderMonth.Visible = (this.ReportProperties.IncludeLedgerGroupTotal == 1);
            //grpFooterMonth.Visible = grpHeaderMonth.Visible;

            grpOPBalance.Visible = (this.ReportProperties.ShowDailyBalance == 0 && this.ReportProperties.IncludeLedgerGroupTotal == 0);
            xrtblCLBalanceRow.Visible = xrRowGrandTotal.Visible = grpOPBalance.Visible;

            prOPBalance.Visible = prCLBalance.Visible = false;

            prOPBalance.Value = this.GetBalance(this.ReportProperties.Project, datefrom, BalanceSystem.LiquidBalanceGroup.CashBalance,
                BalanceSystem.BalanceType.OpeningBalance, (IsDrillDownMode ? "" : this.ReportProperties.CashBankLedger), true);

            prCLBalance.Value = this.GetBalance(this.ReportProperties.Project, dateto, BalanceSystem.LiquidBalanceGroup.CashBalance,
                                 BalanceSystem.BalanceType.ClosingBalance, (IsDrillDownMode ? "" : this.ReportProperties.CashBankLedger), true);


            SetReportProperty();

            DataTable dtCashBankBook = GetReportSource();
            if (dtCashBankBook != null)
            {
                this.DataSource = dtCashBankBook;
                this.DataMember = dtCashBankBook.TableName;
            }

            if (this.ReportProperties.IncludeNarrationwithRefNo == 1 || this.ReportProperties.IncludeNarrationwithNameAddress == 1 || this.ReportProperties.IncludeNarrationwithCurrencyDetails == 1)
            {
                this.ReportProperties.IncludeNarration = 1;
            }

            //Hide blank sections if there is no records
            HideSections(dtCashBankBook.Rows.Count > 0);

            //On 03/09/2020, to hide general opening balance row if daily balance is enabled 
            grpOPBalance.Visible = true;
            if (this.ReportProperties.ShowDailyBalance == 1)
            {
                grpOPBalance.Visible = false;
            }
            xrBindSource.PerformLayout();
        }

        private DataTable GetReportSource()
        {
            DataTable dtCashJournal = new DataTable();
            try
            {
                string CashBankBookQueryPath = this.GetBankReportSQL(SQL.ReportSQLCommand.BankReport.CashJournal);
                using (DataManager dataManager = new DataManager())
                {
                    dataManager.Parameters.Add(this.ReportParameters.DATE_FROMColumn, datefrom);
                    dataManager.Parameters.Add(this.ReportParameters.DATE_TOColumn, dateto);
                    dataManager.Parameters.Add(this.ReportParameters.PROJECT_IDColumn, this.ReportProperties.Project);

                    //05/12/2019, to keep Cash Bank LedgerId
                    //if (!string.IsNullOrEmpty(this.ReportProperties.Ledger) && this.ReportProperties.Ledger != "0")
                    //{
                    //    dataManager.Parameters.Add(this.ReportParameters.LEDGER_IDColumn, this.ReportProperties.Ledger);
                    //}
                    //else
                    //{
                    //    dataManager.Parameters.Add(this.ReportParameters.LEDGER_IDColumn, this.ReportProperties.Ledger);
                    //}
                    dataManager.Parameters.Add(this.ReportParameters.LEDGER_IDColumn, (IsDrillDownMode ? "0" : this.ReportProperties.CashBankLedger));
                    dataManager.Parameters.Add(this.ReportParameters.INCLUDE_NARRATION_REFNOColumn, this.ReportProperties.IncludeNarrationwithRefNo);
                    dataManager.Parameters.Add(this.ReportParameters.INCLUDE_NARRATION_NAMEADDRESSColumn, this.ReportProperties.IncludeNarrationwithNameAddress);
                    dataManager.Parameters.Add(this.ReportParameters.CONSOLIDATEDColumn, this.ReportProperties.Consolidated);
                    //On 14/03/2024, To show/hide contra note (Cash withdrwal/Cash Deposit)
                    dataManager.Parameters.Add(this.ReportParameters.HIDE_CONTRA_NOTEColumn, this.ReportProperties.HideContraNote);
                    dataManager.Parameters.Add(this.ReportParameters.INCLUDE_NARRATION_CURRENCYColumn, this.ReportProperties.IncludeNarrationwithCurrencyDetails);
                    dataManager.Parameters.Add(this.ReportParameters.SHOW_INDIVIDUAL_LEDGERColumn, this.ReportProperties.ShowIndividualLedger);

                    if (this.AppSetting.DisplayInputLanguage == "1")
                    {
                        dataManager.Parameters.Add(this.ReportParameters.DISPLAY_INPUT_LANColumn, 1);
                    }
                    else
                    {
                        dataManager.Parameters.Add(this.ReportParameters.DISPLAY_INPUT_LANColumn, 0);
                    }

                    dataManager.DataCommandArgs.IsDirectReplaceParameter = true;
                    resultArgs = dataManager.FetchData(DAO.Data.DataSource.DataTable, CashBankBookQueryPath);
                }
            }
            catch (Exception ee)
            {
                MessageRender.ShowMessage(ee.Message, true);
            }
            finally { }

            xrSubreportCCDetails.Visible = false;
            if (this.ReportProperties.ShowCCDetails == 1)
            {
                xrSubreportCCDetails.Visible = true;
                AssignCCDetailCashJournal();
            }

            if (resultArgs.Success)
            {
                dtCashJournal = resultArgs.DataSource.Table;

                //On 09/04/2019, to show Receipts/Payments alone
                if (ReportProperties.ShowOnlyReceipts == 1 && ReportProperties.ShowOnlyPayments == 0)
                    dtCashJournal.DefaultView.RowFilter = "RECEIPT <> 0";
                else if (ReportProperties.ShowOnlyPayments == 1 && ReportProperties.ShowOnlyReceipts == 0)
                    dtCashJournal.DefaultView.RowFilter = "PAYMENT <> 0";

                //On 12/04/2019, to exclude Cash Withdrwal and Deposit
                string cashwithdrwaldepositfitler = string.Empty;
                if (ReportProperties.ExcludeCashWithdrawal == 1)
                {
                    string excludeWithdrwal = " (VOUCHER_TYPE <> '" + VoucherSubTypes.CN.ToString() + "' OR PAYMENT <> 0)";
                    dtCashJournal.DefaultView.RowFilter += string.IsNullOrEmpty(dtCashJournal.DefaultView.RowFilter) ? excludeWithdrwal : " AND " + excludeWithdrwal;
                    cashwithdrwaldepositfitler = "Cash Withdrawal";
                }

                if (ReportProperties.ExcludeCashDeposit == 1)
                {
                    string excludedeposit = " (VOUCHER_TYPE <> '" + VoucherSubTypes.CN.ToString() + "' OR RECEIPT <> 0)";
                    dtCashJournal.DefaultView.RowFilter += string.IsNullOrEmpty(dtCashJournal.DefaultView.RowFilter) ? excludedeposit : " AND " + excludedeposit;
                    cashwithdrwaldepositfitler += (string.IsNullOrEmpty(cashwithdrwaldepositfitler) ? "" : " and ") + "Cash Deposit";
                }

                dtCashJournal = dtCashJournal.DefaultView.ToTable();

                //On 05/06/2017, To add Amount filter condition
                string AmountFilter = this.GetAmountFilter();
                lblAmountFilter.Visible = false;
                lblAmountFilter.Text = string.Empty;
                if (AmountFilter != "")
                {
                    dtCashJournal.DefaultView.RowFilter = "(RECEIPT > 0 AND RECEIPT " + AmountFilter + ") OR (PAYMENT > 0 AND PAYMENT " + AmountFilter + ")";
                    lblAmountFilter.Text = "Amount filtered by " + this.UtilityMember.NumberSet.ToNumber(this.ReportProperties.DonorFilterAmount);
                    lblAmountFilter.Visible = true;
                }

                if (!string.IsNullOrEmpty(cashwithdrwaldepositfitler))
                {
                    lblAmountFilter.Text += " Excluded by " + cashwithdrwaldepositfitler;
                    lblAmountFilter.Visible = true;
                }
            }
            else
            {
                MessageRender.ShowMessage("Could not generate Cash Journal Report", true);
            }

            return dtCashJournal;
        }

        public override XRTable AlignOpeningBalanceTable(XRTable table)
        {
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
                            if (ReportProperties.IncludeNarration == 1)
                                if (ReportProperties.ShowDetailedBalance == 1)
                                    tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                                else
                                    tcell.Borders = BorderSide.Left | BorderSide.Right;
                            else
                                tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                        }
                        else if (ReportProperties.ShowLedgerCode != 1)
                        {
                            if (ReportProperties.IncludeNarration == 1)
                            {
                                if (ReportProperties.ShowDetailedBalance == 1)
                                {
                                    if (count == 3 || count == 8)
                                        tcell.Borders = BorderSide.None;
                                    else
                                        tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                                }
                                else
                                {
                                    if (count == 3 || count == 8)
                                        tcell.Borders = BorderSide.None;
                                    else
                                        tcell.Borders = BorderSide.Right;
                                }
                            }
                            else
                            {
                                if (ReportProperties.ShowDetailedBalance == 1)
                                {
                                    if (count == 3 || count == 8)
                                        tcell.Borders = BorderSide.None;
                                    else
                                        tcell.Borders = BorderSide.Right;
                                }
                                else
                                {
                                    if (count == 3 || count == 8)
                                        tcell.Borders = BorderSide.None;
                                    else
                                        tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                                }
                            }
                        }
                        else
                        {
                            if (ReportProperties.IncludeNarration == 1)
                            {
                                if (ReportProperties.ShowDetailedBalance == 1)
                                {
                                    tcell.Borders = BorderSide.Right;
                                }
                                else
                                {
                                    tcell.Borders = BorderSide.Right;
                                }
                            }
                            else
                            {
                                tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                            }
                        }
                    }
                    else if (ReportProperties.ShowHorizontalLine == 1)
                    {
                        if (ReportProperties.ShowLedgerCode != 1)
                        {
                            if (count == 1)
                                tcell.Borders = BorderSide.Left | BorderSide.Bottom;
                            else if (count == 3 || count == 8)
                                tcell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                            else if (count == trow.Cells.Count)
                                tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                            else
                                tcell.Borders = BorderSide.Bottom;
                        }
                        else
                            if (count == 1)
                                tcell.Borders = BorderSide.Left | BorderSide.Bottom;
                            else if (count == trow.Cells.Count)
                                tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                            else
                                tcell.Borders = BorderSide.Bottom;
                    }
                    else if (ReportProperties.ShowVerticalLine == 1)
                    {
                        if (count == 1)
                            tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                        else if (ReportProperties.ShowLedgerCode != 1)
                        {
                            if (count == 3 || count == 8)
                                tcell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                            else
                                tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                        }
                        else
                            tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                    }
                    else
                    {
                        tcell.Borders = BorderSide.None;
                    }
                    //tcell.BorderColor = ((int)BorderStyleCell.Regular == 0) ? System.Drawing.Color.Black : System.Drawing.Color.Black;
                    tcell.BorderColor = ((int)BorderStyleCell.Regular == this.ReportProperties.ReportBorderStyle) ? System.Drawing.Color.Gainsboro : System.Drawing.Color.Black;
                }
            }
            return table;
        }

        public override XRTable AlignTotalTable(XRTable table)
        {
            foreach (XRTableRow trow in table.Rows)
            {
                int count = 0;
                foreach (XRTableCell tcell in trow.Cells) //table.Rows.FirstRow.Cells)
                {
                    count++;
                    if (ReportProperties.ShowHorizontalLine == 1 && ReportProperties.ShowVerticalLine == 1)
                    {
                        if (count == 1)
                            tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                        else if (ReportProperties.ShowLedgerCode != 1)
                            if (count == 3 || count == 9)
                                tcell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                            else
                                tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                        else
                            tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                    }
                    else if (ReportProperties.ShowHorizontalLine == 1)
                    {
                        if (ReportProperties.ShowLedgerCode != 1)
                            if (count == 1)
                                tcell.Borders = BorderSide.Bottom | BorderSide.Left;
                            else if (count == 3 || count == 9)
                                tcell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                            else if (count == trow.Cells.Count)
                                tcell.Borders = BorderSide.Bottom | BorderSide.Right;
                            else
                                tcell.Borders = BorderSide.Bottom;
                        else
                            if (count == 1)
                                tcell.Borders = BorderSide.Bottom | BorderSide.Left;
                            else if (count == trow.Cells.Count)
                                tcell.Borders = BorderSide.Bottom | BorderSide.Right;
                            else
                                tcell.Borders = BorderSide.Bottom;
                    }
                    else if (ReportProperties.ShowVerticalLine == 1)
                    {
                        if (count == 1)
                            tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                        else if (ReportProperties.ShowLedgerCode != 1)
                            if (count == 3 || count == 9)
                                tcell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                            else
                                tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                        else
                            tcell.Borders = BorderSide.Right | BorderSide.Bottom;
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

        public override XRTable AlignGrandTotalTable(XRTable table)
        {
            foreach (XRTableRow trow in table.Rows)
            {
                int count = 0;
                foreach (XRTableCell tcell in trow.Cells) //table.Rows.FirstRow.Cells)
                {
                    count++;
                    if (ReportProperties.ShowHorizontalLine == 1 && ReportProperties.ShowVerticalLine == 1)
                    {
                        if (count == 1)
                            tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                        else if (ReportProperties.ShowLedgerCode != 1)
                            if (count == 3 || count == 8)
                                tcell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                            else
                                tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                        else
                            tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                    }
                    else if (ReportProperties.ShowHorizontalLine == 1)
                    {
                        if (ReportProperties.ShowLedgerCode != 1)
                            if (count == 3 || count == 8)
                                tcell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                            else
                                if (count == 1)
                                    tcell.Borders = BorderSide.Bottom | BorderSide.Left;
                                else if (count == trow.Cells.Count)
                                    tcell.Borders = BorderSide.Bottom | BorderSide.Right;
                                else
                                    tcell.Borders = BorderSide.Bottom;
                        else
                            if (count == 1)
                                tcell.Borders = BorderSide.Bottom | BorderSide.Left;
                            else if (count == trow.Cells.Count)
                                tcell.Borders = BorderSide.Bottom | BorderSide.Right;
                            else
                                tcell.Borders = BorderSide.Bottom;
                    }
                    else if (ReportProperties.ShowVerticalLine == 1)
                    {
                        if (count == 1)
                            tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                        else if (ReportProperties.ShowLedgerCode != 1)
                            if (count == 3 || count == 8)
                                tcell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                            else
                                tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                        else
                            tcell.Borders = BorderSide.Right | BorderSide.Bottom;
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

        public override XRTable AlignHeaderTable(XRTable table, bool UseSameFont = false)
        {
            foreach (XRTableRow trow in table.Rows)
            {
                int count = 0;
                foreach (XRTableCell tcell in trow.Cells) //table.Rows.FirstRow.Cells)
                {
                    count++;
                    if (ReportProperties.ShowHorizontalLine == 1 && ReportProperties.ShowVerticalLine == 1)
                    {
                        if (count == 1)
                            tcell.Borders = BorderSide.All;
                        else if (ReportProperties.ShowLedgerCode != 1)
                            if (count == 3 || count == 9)
                                tcell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                            else
                                tcell.Borders = BorderSide.Top | BorderSide.Right | BorderSide.Bottom;
                        else
                            tcell.Borders = BorderSide.Top | BorderSide.Right | BorderSide.Bottom;
                    }
                    else if (ReportProperties.ShowHorizontalLine == 1)
                    {
                        if (ReportProperties.ShowLedgerCode != 1)
                        {
                            if (count == 3 || count == 9)
                                tcell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                            else
                                if (count == 1)
                                    tcell.Borders = BorderSide.All;
                                else
                                    tcell.Borders = BorderSide.Bottom | BorderSide.Right | BorderSide.Top;
                        }
                        else
                            if (count == 1)
                                tcell.Borders = BorderSide.Bottom | BorderSide.Top | BorderSide.Left;
                            else if (count == trow.Cells.Count)
                                tcell.Borders = BorderSide.Bottom | BorderSide.Top | BorderSide.Right;
                            else
                                tcell.Borders = BorderSide.Bottom | BorderSide.Top;
                    }
                    else if (ReportProperties.ShowVerticalLine == 1)
                    {
                        if (count == 1)
                            tcell.Borders = BorderSide.All;
                        else if (ReportProperties.ShowLedgerCode != 1)
                        {
                            if (count == 3 || count == 9)
                                tcell.Borders = DevExpress.XtraPrinting.BorderSide.None;

                            else
                                tcell.Borders = BorderSide.Top | BorderSide.Bottom | BorderSide.Right;
                        }
                        else
                            tcell.Borders = BorderSide.Top | BorderSide.Bottom | BorderSide.Right;
                    }
                    else
                    {
                        tcell.Borders = BorderSide.None;
                    }
                    //tcell.BorderColor = ((int)BorderStyleCell.Regular == 0) ? System.Drawing.Color.Black : System.Drawing.Color.Black;
                    tcell.BorderColor = ((int)BorderStyleCell.Regular == this.ReportProperties.ReportBorderStyle) ? System.Drawing.Color.DarkGray : System.Drawing.Color.Black;
                    tcell.Font = (ReportProperty.Current.ColumnCaptionFontStyle == 0 ? FieldColumnHeaderFont : new Font(FieldColumnHeaderFont, FontStyle.Regular));
                }
            }
            return table;
        }

        private XRTable AlignDailyOpeningBalaceTable(XRTable table)
        {
            foreach (XRTableRow trow in table.Rows)
            {
                int count = 0;
                foreach (XRTableCell tcell in trow.Cells) //table.Rows.FirstRow.Cells)
                {
                    count++;
                    if (ReportProperties.ShowHorizontalLine == 1 && ReportProperties.ShowVerticalLine == 1)
                    {
                        if (OPcount == 1)
                        {
                            if (count == 1)
                            {
                                if (ReportProperties.IncludeNarration == 1)
                                    if (ReportProperties.ShowDetailedBalance == 1)
                                        tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Top;
                                    else
                                        if (ReportProperties.ShowDailyBalance == 1)
                                            tcell.Borders = BorderSide.Left | BorderSide.Right;
                                        else
                                            tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Top;
                                else
                                    tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Top;
                            }
                            else if (ReportProperties.ShowLedgerCode != 1)
                            {
                                if (ReportProperties.IncludeNarration == 1)
                                {
                                    if (ReportProperties.ShowDetailedBalance == 1)
                                    {
                                        if (count == 3 || count == 8)
                                            tcell.Borders = BorderSide.None;
                                        else
                                            tcell.Borders = BorderSide.Right | BorderSide.Top;
                                    }
                                    else
                                    {
                                        if (count == 3 || count == 8)
                                            tcell.Borders = BorderSide.None;
                                        else
                                            if (ReportProperties.ShowDailyBalance == 1)
                                                tcell.Borders = BorderSide.Right;
                                            else
                                                tcell.Borders = BorderSide.Right | BorderSide.Top;
                                    }
                                }
                                else
                                {
                                    if (ReportProperties.ShowDetailedBalance == 1)
                                    {
                                        if (count == 3 || count == 8)
                                            tcell.Borders = BorderSide.None;
                                        else
                                            tcell.Borders = BorderSide.Right | BorderSide.Top;
                                    }
                                    else
                                    {
                                        if (count == 3 || count == 8)
                                            tcell.Borders = BorderSide.None;
                                        else
                                            tcell.Borders = BorderSide.Right | BorderSide.Top;
                                    }
                                }
                            }
                            else
                            {
                                if (ReportProperties.IncludeNarration == 1)
                                {
                                    if (ReportProperties.ShowDetailedBalance == 1)
                                    {
                                        tcell.Borders = BorderSide.Right | BorderSide.Top;
                                    }
                                    else
                                    {
                                        if (ReportProperties.ShowDailyBalance == 1)
                                            tcell.Borders = BorderSide.Right;
                                        else
                                            tcell.Borders = BorderSide.Right | BorderSide.Top;
                                    }
                                }
                                else
                                {
                                    if (ReportProperties.ShowDailyBalance == 1)
                                        tcell.Borders = BorderSide.Right;
                                    else
                                        tcell.Borders = BorderSide.Right | BorderSide.Top;
                                }
                            }
                        }

                        else
                        {
                            if (count == 1)
                            {
                                if (ReportProperties.IncludeNarration == 1)
                                    if (ReportProperties.ShowDetailedBalance == 1 || ReportProperties.ShowDailyBalance == 1)
                                        tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                                    else
                                        tcell.Borders = BorderSide.Left | BorderSide.Right;
                                else
                                    tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                            }
                            else if (ReportProperties.ShowLedgerCode != 1)
                            {
                                if (ReportProperties.IncludeNarration == 1)
                                {
                                    if (ReportProperties.ShowDetailedBalance == 1 || ReportProperties.ShowDailyBalance == 1)
                                    {
                                        if (count == 3 || count == 8)
                                            tcell.Borders = BorderSide.None;
                                        else
                                            tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                                    }
                                    else
                                    {
                                        if (count == 3 || count == 8)
                                            tcell.Borders = BorderSide.None;
                                        else
                                            tcell.Borders = BorderSide.Right;
                                    }
                                }
                                else
                                {
                                    if (ReportProperties.ShowDetailedBalance == 1 || ReportProperties.ShowDailyBalance == 1)
                                    {
                                        if (count == 3 || count == 8)
                                            tcell.Borders = BorderSide.None;
                                        else
                                            tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                                    }
                                    else
                                    {
                                        if (count == 3 || count == 8)
                                            tcell.Borders = BorderSide.None;
                                        else
                                            tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                                    }
                                }
                            }
                            else
                            {
                                if (ReportProperties.IncludeNarration == 1)
                                {
                                    if (ReportProperties.ShowDetailedBalance == 1 || ReportProperties.ShowDailyBalance == 1)
                                    {
                                        tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                                    }
                                    else
                                    {
                                        tcell.Borders = BorderSide.Right;
                                    }
                                }
                                else
                                {
                                    tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                                }
                            }
                        }
                    }
                    else if (ReportProperties.ShowHorizontalLine == 1)
                    {
                        if (ReportProperties.ShowLedgerCode != 1)
                        {
                            if (count == 1)
                                tcell.Borders = BorderSide.Bottom | BorderSide.Left;
                            else if (count == 3 || count == 8)
                                tcell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                            else if (count == trow.Cells.Count)
                                tcell.Borders = BorderSide.Bottom | BorderSide.Right;
                            else
                                tcell.Borders = BorderSide.Bottom;
                        }
                        else
                            if (count == 1)
                                tcell.Borders = BorderSide.Bottom | BorderSide.Left;
                            else if (count == trow.Cells.Count)
                                tcell.Borders = BorderSide.Bottom | BorderSide.Right;
                            else
                                tcell.Borders = BorderSide.Bottom;
                    }
                    else if (ReportProperties.ShowVerticalLine == 1)
                    {
                        if (count == 1)
                            tcell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                        else if (ReportProperties.ShowLedgerCode != 1)
                        {
                            if (count == 3 || count == 8)
                                tcell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                            else
                                tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                        }
                        else
                            tcell.Borders = BorderSide.Right | BorderSide.Bottom;
                    }
                    else
                    {
                        tcell.Borders = BorderSide.None;
                    }
                    //tcell.BorderColor = ((int)BorderStyleCell.Regular == 0) ? System.Drawing.Color.Black : System.Drawing.Color.Black;
                    tcell.BorderColor = ((int)BorderStyleCell.Regular == this.ReportProperties.ReportBorderStyle) ? System.Drawing.Color.Gainsboro : System.Drawing.Color.Black;
                }
            }
            return table;
        }

        public override XRTable AlignCashBankBookTable(XRTable table, string bankNarration, string cashNarration, int count)
        {
            int rowcount = 0;

            foreach (XRTableRow row in table.Rows)
            {
                int cellcount = 0;
                ++rowcount;
                if (rowcount == 2 && ReportProperties.IncludeNarration != 1)
                {
                    row.Visible = false;
                }
                else if (bankNarration == string.Empty && cashNarration == string.Empty && ReportProperties.IncludeNarration == 1 && rowcount == 2)
                {
                    row.Visible = false;
                }
                else
                {
                    row.Visible = true;
                }
                //foreach (XRTableRow cell in row)
                //   {
                //       ++rowcount;
                //       if (rowcount == 2)
                //       {
                //           bool hasNarration = (this.ReportProperties.IncludeNarration == 1) &&
                //                               !(string.IsNullOrEmpty(bankNarration) && string.IsNullOrEmpty(cashNarration));

                //           // Keep the second row when CC details are requested
                //           row.Visible = hasNarration || (this.ReportProperties.ShowCCDetails == 1);
                //       }
                //       else


                //       {
                //           row.Visible = true;
                //       }
                foreach (XRTableCell cell in row)
                {
                    ++cellcount;
                    if (ReportProperties.IncludeNarration != 1 && rowcount == 1)
                    {
                        if (ReportProperties.ShowHorizontalLine == 1 && ReportProperties.ShowVerticalLine == 1)
                        {
                            if (cellcount == 1)
                                cell.Borders = BorderSide.Right | BorderSide.Left | BorderSide.Bottom;
                            else if (ReportProperties.ShowLedgerCode != 1)
                                if (cellcount == 3 || cellcount == 9)
                                    cell.Borders = BorderSide.None;
                                else
                                    cell.Borders = BorderSide.Right | BorderSide.Bottom;
                            else
                                cell.Borders = BorderSide.Right | BorderSide.Bottom;
                        }
                        else if (ReportProperties.ShowHorizontalLine == 1)
                        {
                            if (cellcount == 1)
                                cell.Borders = DevExpress.XtraPrinting.BorderSide.Bottom | BorderSide.Left;
                            else if (ReportProperties.ShowLedgerCode != 1)
                                if (cellcount == 3 || cellcount == 9)
                                    cell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                                else if (cellcount == row.Cells.Count)
                                    cell.Borders = BorderSide.Bottom | BorderSide.Right;
                                else
                                    cell.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
                            else
                                if (cellcount == row.Cells.Count)
                                    cell.Borders = BorderSide.Bottom | BorderSide.Right;
                                else
                                    cell.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;

                        }
                        else if (ReportProperties.ShowVerticalLine == 1)
                        {
                            if (cellcount == 1)
                                cell.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Left;
                            else if (ReportProperties.ShowLedgerCode != 1)
                                if (cellcount == 3 || cellcount == 9)
                                    cell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                                else
                                    cell.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                            else
                                cell.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                        }
                        else
                        {
                            cell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                        }

                    }
                    else
                    {
                        if (ReportProperties.ShowHorizontalLine == 1 && ReportProperties.ShowVerticalLine == 1)
                        {
                            if (rowcount == 1)
                            {
                                if (count == 1)
                                {
                                    if (cellcount == 1)
                                    {
                                        if (bankNarration != string.Empty || cashNarration != string.Empty)
                                            cell.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top;
                                        else
                                            cell.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Top;
                                    }
                                    else if (ReportProperties.ShowLedgerCode != 1)
                                    {
                                        if (cellcount == 3 || cellcount == 9)
                                            cell.Borders = BorderSide.None;
                                        else
                                        {
                                            if (bankNarration != string.Empty || cashNarration != string.Empty)
                                                cell.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Top;
                                            else
                                                cell.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Top;
                                        }
                                    }
                                    else
                                    {
                                        if (bankNarration != string.Empty || cashNarration != string.Empty)
                                            cell.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Top;
                                        else
                                            cell.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Top;
                                    }
                                }
                                else
                                {
                                    if (cellcount == 1)
                                    {
                                        if (bankNarration != string.Empty || cashNarration != string.Empty)
                                            cell.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Left;
                                        else
                                            cell.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom;
                                    }
                                    else if (ReportProperties.ShowLedgerCode != 1)
                                    {
                                        if (cellcount == 3 || cellcount == 9)
                                            cell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                                        else
                                        {
                                            if (bankNarration != string.Empty || cashNarration != string.Empty)
                                                cell.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                                            else
                                                cell.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom;
                                        }
                                    }
                                    else
                                    {
                                        if (bankNarration != string.Empty || cashNarration != string.Empty)
                                            cell.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                                        else
                                            cell.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom;
                                    }
                                }

                            }
                            else
                            {
                                if (cellcount == 1)
                                    cell.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom;
                                else if (ReportProperties.ShowLedgerCode != 1)
                                {
                                    if (cellcount == 3 || cellcount == 9)
                                        cell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                                    else
                                        cell.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom;
                                }
                                else
                                    cell.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom;
                            }

                        }
                        else if (ReportProperties.ShowHorizontalLine == 1)
                        {
                            if (rowcount == 1)
                            {
                                if (bankNarration != string.Empty || cashNarration != string.Empty)
                                    if (cellcount == 1)
                                        cell.Borders = BorderSide.Left;
                                    else if (cellcount == row.Cells.Count)
                                        cell.Borders = BorderSide.Right;
                                    else
                                        cell.Borders = BorderSide.None;
                                else if (cellcount == 1)
                                    cell.Borders = BorderSide.Left | BorderSide.Bottom;
                                else if (cellcount == row.Cells.Count)
                                    cell.Borders = BorderSide.Right | BorderSide.Bottom;
                                else
                                    cell.Borders = BorderSide.Bottom;
                            }
                            else
                            {
                                if (cellcount == 3 && ReportProperties.ShowLedgerCode != 1)
                                    cell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                                else
                                    if (cellcount == 1)
                                        cell.Borders = BorderSide.Bottom | BorderSide.Left;
                                    else if (cellcount == row.Cells.Count)
                                        cell.Borders = BorderSide.Bottom | BorderSide.Right;
                                    else
                                        cell.Borders = BorderSide.Bottom;
                            }

                        }
                        else if (ReportProperties.ShowVerticalLine == 1)
                        {
                            if (rowcount == 1)
                            {
                                if (cellcount == 1)
                                {
                                    if (bankNarration != string.Empty || cashNarration != string.Empty)
                                        cell.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Left;
                                    else
                                        cell.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Left;
                                }
                                else if (cellcount == 3 && ReportProperties.ShowLedgerCode != 1)
                                {
                                    cell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                                }
                                else
                                {
                                    cell.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                                }
                            }
                            else
                            {
                                if (cellcount == 1)
                                {
                                    cell.Borders = DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Left;
                                }
                                else if (cellcount == 3 && ReportProperties.ShowLedgerCode != 1)
                                {
                                    cell.Borders = DevExpress.XtraPrinting.BorderSide.None;
                                }
                                else
                                {
                                    cell.Borders = DevExpress.XtraPrinting.BorderSide.Right;
                                }
                            }

                        }
                        else
                        {
                            cell.Borders = BorderSide.None;
                        }
                    }
                    cell.BorderColor = ((int)BorderStyleCell.Regular == this.ReportProperties.ReportBorderStyle) ? System.Drawing.Color.Gainsboro : System.Drawing.Color.Black;
                }
                cellcount = 0;
            }
            return table;
        }

        private void SetReportBorders()
        {
            xrtblHeaderCaption = AlignHeaderTable(xrtblHeaderCaption);
            tblOpeningBalance = AlignOpeningBalanceTable(tblOpeningBalance);
            xrtablTotal = AlignTotalTable(xrtablTotal);
            xrtblMonth = AlignTotalTable(xrtblMonth);
            xrTblMonthFooter = AlignTotalTable(xrTblMonthFooter);
            xrtblGrandTotal = AlignGrandTotalTable(xrtblGrandTotal);

            //On 27/08/2024, To set curency symbol based on cash/bank selection
            if (this.settingProperty.AllowMultiCurrency == 1)
            {
                string cashbankcurrencysymbol = ReportProperties.GetCashBankLedgerCurrencySymbol(ReportProperties.CashBankLedger);
                if (!string.IsNullOrEmpty(cashbankcurrencysymbol))
                {
                    xrCapReceipt.Text = ReceiptCaption + " (" + cashbankcurrencysymbol + ")";
                    xrCapPayments.Text = PaymentCaption + " (" + cashbankcurrencysymbol + ")";
                }
            }
            else
            {
                this.SetCurrencyFormat(xrCapReceipt.Text, xrCapReceipt);
                this.SetCurrencyFormat(xrCapPayments.Text, xrCapPayments);
            }

            //this.SetCurrencyFormat(xrCapPayments.Text, xrCapPayments);
            //this.SetCurrencyFormat(xrCapReceipt.Text, xrCapReceipt);
        }

        /// <summary>
        /// Hide blank sections if there is no records
        /// </summary>
        /// <param name="RecordExists"></param>
        private void HideSections(bool RecordExists)
        {
            if (RecordExists)
            {
                Detail.Visible = grpMonthLedgerSummary.Visible = false;
                if (ReportProperty.Current.ShowByLedgerSummary == 0)
                {
                    Detail.Visible = true;
                }
                else
                {
                    grpMonthLedgerSummary.Visible = true;
                }

                grpHeaderMonth.Visible = (ReportProperty.Current.IncludeLedgerGroupTotal == 0 ? false : true);
                grpFooterMonth.Visible = (ReportProperty.Current.IncludeLedgerGroupTotal == 0 ? false : true);
            }
            else
            {
                Detail.Visible = false;
                grpHeaderMonth.Visible = Detail.Visible;
                grpFooterMonth.Visible = Detail.Visible;
                grpMonthLedgerSummary.Visible = Detail.Visible;
            }
            MakeOnlyReceiptsPayments();
        }

        /// <summary>
        /// This method is used to hide/unhide Receipts or payments sections based on criteria selection
        /// </summary>
        private void MakeOnlyReceiptsPayments()
        {
            float ledgernamewidth = 350;
            float amountwidth = 120;
            xrtblHeaderCaption.BeginInit();
            xrCapReceipt.Visible = xrCapPayments.Visible = true;
            xrCapLedger.WidthF = ledgernamewidth;
            xrCapReceipt.WidthF = amountwidth;
            xrCapPayments.WidthF = amountwidth;
            xrtblHeaderCaption.ResumeLayout();

            tblOpeningBalance.BeginInit();
            xrtblOPBalance.Visible = xrtblOPBalance1.Visible = true;
            xrtblOPBalance.WidthF = xrtblOPBalance1.WidthF = amountwidth;
            xrOpening.WidthF = ledgernamewidth;
            tblOpeningBalance.ResumeLayout();

            xrBindSource.BeginInit();
            xrReceipt.Visible = xrPayments.Visible = true;
            xrLedgerName.WidthF = xrNarration.WidthF = ledgernamewidth;
            xrReceipt.WidthF = xrPayments.WidthF = xrNarration1.WidthF = xrNarration2.WidthF = amountwidth;
            xrBindSource.ResumeLayout();

            xrtblGrandTotal.BeginInit();
            grpOPBalance.Visible = xrGrandTotalReceipts.Visible = xrGrandTotalPayments.Visible = xrClosingReceipts.Visible = xrClosingPayments.Visible = xrtblCLBalanceRow.Visible = true;
            xrGrandTotalReceipts.WidthF = xrGrandTotalPayments.WidthF = amountwidth;
            xrClosing.WidthF = xrGrandTotal.WidthF = ledgernamewidth;
            xrClosingReceipts.WidthF = xrClosingPayments.WidthF = amountwidth;
            xrtblGrandTotal.ResumeLayout();


            if ((this.ReportProperties.ShowOnlyReceipts == 1 && this.ReportProperties.ShowOnlyPayments == 0) ||
               (this.ReportProperties.ShowOnlyPayments == 1 && this.ReportProperties.ShowOnlyReceipts == 0))
            {
                //Header    
                xrtblHeaderCaption.SuspendLayout();
                if (this.ReportProperties.ShowOnlyReceipts == 1)
                {
                    xrCapPayments.Visible = false;
                    xrCapReceipt.WidthF += xrCapPayments.WidthF;
                    xrCapLedger.WidthF += xrCapPayments.WidthF;
                }
                else if (this.ReportProperties.ShowOnlyPayments == 1)
                {
                    xrCapReceipt.Visible = false;
                    xrCapLedger.WidthF += xrCapReceipt.WidthF;
                }
                xrtblHeaderCaption.PerformLayout();

                //Opening
                tblOpeningBalance.BeginInit();
                if (this.ReportProperties.ShowOnlyReceipts == 1)
                {
                    xrtblOPBalance1.Visible = false;
                    xrtblOPBalance.WidthF += xrtblOPBalance1.WidthF;
                    xrtblOPBalance1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
                    xrOpening.WidthF += 55;
                }
                else if (this.ReportProperties.ShowOnlyPayments == 1)
                {
                    xrtblOPBalance.Visible = false;
                    xrOpening.WidthF += xrtblOPBalance1.WidthF;
                }
                tblOpeningBalance.ResumeLayout();


                //Data
                xrBindSource.BeginInit();
                if (this.ReportProperties.ShowOnlyReceipts == 1)
                {
                    xrPayments.Visible = false;
                    xrReceipt.WidthF += xrPayments.WidthF;
                    xrLedgerName.WidthF += xrPayments.WidthF;
                    xrNarration.WidthF = xrLedgerName.WidthF;
                    xrNarration1.WidthF += xrPayments.WidthF;
                    xrNarration2.WidthF += xrPayments.WidthF;
                }
                else if (this.ReportProperties.ShowOnlyPayments == 1)
                {
                    xrReceipt.Visible = false;
                    xrLedgerName.WidthF += xrReceipt.WidthF;
                    xrNarration.WidthF = xrLedgerName.WidthF;
                    xrNarration1.WidthF += xrReceipt.WidthF;
                    xrNarration2.WidthF += xrReceipt.WidthF;
                }
                xrBindSource.ResumeLayout();

                //Grand Total
                xrtblGrandTotal.BeginInit();
                if (this.ReportProperties.ShowOnlyReceipts == 1)
                {
                    xrtblCLBalanceRow.Visible = false;
                    xrGrandTotalPayments.Visible = false;
                    xrGrandTotalReceipts.WidthF += xrGrandTotalPayments.WidthF;
                    xrGrandTotal.WidthF += xrGrandTotalPayments.WidthF;
                }
                else if (this.ReportProperties.ShowOnlyPayments == 1)
                {
                    grpOPBalance.Visible = xrGrandTotalReceipts.Visible = false;
                    //bharath 18/06/2026
                    //Hide closing balance in payment side
                    xrtblCLBalanceRow.Visible = false;
                    xrClosingReceipts.Visible = false;
                    xrClosing.WidthF += xrClosingReceipts.WidthF;
                    xrGrandTotal.WidthF += xrGrandTotalReceipts.WidthF;
                }
                xrtblGrandTotal.ResumeLayout();

            }

            if (!this.ReportProperties.ReportTitle.Contains("-"))
            {
                if (this.ReportProperties.ShowOnlyReceipts == 1 && this.ReportProperties.ShowOnlyPayments == 0)
                    this.ReportTitle = this.ReportProperties.ReportTitle + " - Receipts";
                else if (this.ReportProperties.ShowOnlyPayments == 1 && this.ReportProperties.ShowOnlyReceipts == 0)
                    this.ReportTitle = this.ReportProperties.ReportTitle + " - Payments";
            }
        }
        #endregion

        #region Events
        private void xrtblDailyOpBalance_SummaryReset(object sender, EventArgs e)
        {
            DailyGrpOpbalance = 0;
        }

        private void xrtblDailyOpBalance_SummaryGetResult(object sender, DevExpress.XtraReports.UI.SummaryGetResultEventArgs e)
        {
            if (DailyGroupNumber == 0)
            {
                DailyGrpOpbalance = this.UtilityMember.NumberSet.ToDouble(this.prOPBalance.Value.ToString());
                DailyGroupNumber++;
            }
            else
            {
                DailyGrpOpbalance = DailyGrpClbalance;
                DailyGrpClbalance = 0;
            }
            e.Result = DailyGrpOpbalance;
            e.Handled = true;
        }

        private void xtrtblDailyRecTotal_SummaryReset(object sender, EventArgs e)
        {
            DailyReceipts = DailyPayments = 0;
        }

        private void xtrtblDailyRecTotal_SummaryRowChanged(object sender, EventArgs e)
        {
            DailyReceipts += this.UtilityMember.NumberSet.ToDouble(GetCurrentColumnValue(this.ReportParameters.RECEIPTColumn.ColumnName).ToString());
            DailyPayments += this.UtilityMember.NumberSet.ToDouble(GetCurrentColumnValue(this.ReportParameters.PAYMENTColumn.ColumnName).ToString());
        }

        private void xtrtblDailyRecTotal_SummaryGetResult(object sender, DevExpress.XtraReports.UI.SummaryGetResultEventArgs e)
        {
            e.Result = DailyReceipts + DailyGrpOpbalance;
            e.Handled = true;
        }

        private void xrDailyClosingBalance_SummaryGetResult(object sender, DevExpress.XtraReports.UI.SummaryGetResultEventArgs e)
        {
            if (ReportProperties.ShowOnlyPayments != 1 || this.ReportProperties.ShowDailyBalance == 1)
            {
                DailyGrpClbalance = (DailyGrpOpbalance + DailyReceipts) - DailyPayments;

                prCLBalance.Value = DailyGrpClbalance;
                e.Result = DailyGrpClbalance;
                e.Handled = true;
            }
        }

        private void xtrtblDailyPayTotal_SummaryGetResult(object sender, DevExpress.XtraReports.UI.SummaryGetResultEventArgs e)
        {
            e.Result = DailyPayments + DailyGrpClbalance;
            e.Handled = true;
        }

        private void xrtblOPBalance_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            e.Result = this.UtilityMember.NumberSet.ToDouble(this.prOPBalance.Value.ToString());
            e.Handled = true;
        }

        private void SetReportProperty()
        {

            float actualCodeWidth = xrCapCode.WidthF;
            bool isCapCodeVisible = true;



            if (xrCapCode.Tag != null && xrCapCode.Tag.ToString() != "")
            {
                actualCodeWidth = (float)this.UtilityMember.NumberSet.ToDouble(xrCapCode.Tag.ToString());
            }
            else
            {
                xrCapCode.Tag = xrCapCode.WidthF;
            }

            isCapCodeVisible = (ReportProperties.ShowLedgerCode == 1);
            xrCapCode.WidthF = ((isCapCodeVisible == true) ? actualCodeWidth : (float)0.0);
            xrtblaLedgerCode.WidthF = ((isCapCodeVisible == true) ? actualCodeWidth : (float)0.0);
            xrTableCell12.WidthF = ((isCapCodeVisible == true) ? actualCodeWidth : (float)0.0);
            xrTableCell15.WidthF = ((isCapCodeVisible == true) ? actualCodeWidth : (float)0.0);
            xrTableCell30.WidthF = ((isCapCodeVisible == true) ? actualCodeWidth : (float)0.0);
            xrTableCell19.WidthF = ((isCapCodeVisible == true) ? actualCodeWidth : (float)0.0);
            xrTableCell20.WidthF = ((isCapCodeVisible == true) ? actualCodeWidth : (float)0.0);
            xrTableCell26.WidthF = ((isCapCodeVisible == true) ? actualCodeWidth : (float)0.0);
            xrTableCell27.WidthF = ((isCapCodeVisible == true) ? actualCodeWidth : (float)0.0);
            SetReportBorders();
        }

        private void xrReceipt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            double receiptAmt = this.ReportProperties.NumberSet.ToDouble(xrReceipt.Text);
            if (receiptAmt != 0)
            {
                e.Cancel = false;
            }
            else
            {
                xrReceipt.Text = "";
            }
        }

        private void xrPayments_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            double paymentAmt = this.ReportProperties.NumberSet.ToDouble(xrPayments.Text);
            if (paymentAmt != 0)
            {
                e.Cancel = false;
            }
            else
            {
                xrPayments.Text = "";
            }
        }

        private void xrBindSource_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            count++;
            string Narration = (GetCurrentColumnValue("NARRATION") == null) ? string.Empty : GetCurrentColumnValue("NARRATION").ToString();
            AlignCashBankBookTable(xrBindSource, string.Empty, Narration, count);
            ProperBorderForLedgerRow(PrevLedgerCCFound);

            xrDate.Borders = BorderSide.Top | BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
            xrVoucherNo.Borders = BorderSide.Top | BorderSide.Right | BorderSide.Bottom;
            xrtblaLedgerCode.Borders = BorderSide.Top | BorderSide.Right | BorderSide.Bottom;
            xrLedgerName.Borders = BorderSide.Top | BorderSide.Right | BorderSide.Bottom;
            xrReceipt.Borders = BorderSide.Top | BorderSide.Right | BorderSide.Bottom;
            xrPayments.Borders = BorderSide.Top | BorderSide.Right | BorderSide.Bottom;
            //Detail.CanShrink = true;
            //xrBindSource.CanShrink = true;
            //xrBindSource.KeepTogether = false;
            // xrBindSource.PerformLayout();
        }

        private void xrtblDailyOpeningBalance_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            OPcount++;
            xrtblDailyOpeningBalance = AlignDailyOpeningBalaceTable(xrtblDailyOpeningBalance);
        }

        private void xrMonthOpening_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            GroupHeaderBand aGroup = new GroupHeaderBand();

            if (MonthGroupNumber == 0)
            {
                MonthlyGrpOpbalance = this.UtilityMember.NumberSet.ToDouble(this.prOPBalance.Value.ToString());
                MonthGroupNumber++;
            }
            else
            {
                MonthlyGrpOpbalance = MonthlyGrpClbalance;
                MonthlyGrpClbalance = 0;
            }
            e.Result = MonthlyGrpOpbalance;
            e.Handled = true;
        }

        private void xrMonthClosingBalance_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            //MonthlyGrpClbalance = (MonthlyGrpOpbalance + MonthlyReceipts) - MonthlyPayments;

            MonthlyGrpClbalance = this.UtilityMember.NumberSet.ToDouble(prCLBalance.Value.ToString());
            e.Result = prCLBalance.Value;
            e.Handled = true;
        }

        private void xrMonthOpeningBalance_SummaryReset(object sender, EventArgs e)
        {
            MonthlyGrpOpbalance = 0;
        }

        private void xrTableCell65_SummaryRowChanged(object sender, EventArgs e)
        {
            MonthlyReceipts += this.UtilityMember.NumberSet.ToDouble(GetCurrentColumnValue(this.ReportParameters.RECEIPTColumn.ColumnName).ToString());
            MonthlyPayments += this.UtilityMember.NumberSet.ToDouble(GetCurrentColumnValue(this.ReportParameters.PAYMENTColumn.ColumnName).ToString());
        }

        private void xrTableCell65_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            e.Result = MonthlyReceipts + MonthlyGrpOpbalance;
            e.Handled = true;
        }

        private void xrPMonthSum_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            e.Result = MonthlyPayments + MonthlyGrpClbalance;
            e.Handled = true;
        }

        private void xrRMonthSum_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            e.Result = MonthlyPayments + MonthlyGrpClbalance;
            e.Handled = true;
        }

        private void xrRMonthSum_SummaryReset(object sender, EventArgs e)
        {
            MonthlyReceipts = DailyPayments = 0;
        }

        private void xrRMonthSum_SummaryRowChanged(object sender, EventArgs e)
        {
            MonthlyReceipts += this.UtilityMember.NumberSet.ToDouble(GetCurrentColumnValue(this.ReportParameters.RECEIPTColumn.ColumnName).ToString());
            MonthlyPayments += this.UtilityMember.NumberSet.ToDouble(GetCurrentColumnValue(this.ReportParameters.PAYMENTColumn.ColumnName).ToString());
        }

        private void grpHeaderMonth_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            // 03/01/2025, to avoid page break
            if (MonthGroupNumber >= 1 && ReportProperty.Current.ShowByLedgerSummary == 0)
            {
                grpHeaderMonth.PageBreak = DevExpress.XtraReports.UI.PageBreak.BeforeBand;
            }
        }
        #endregion

        public void HideReportHeaderFooter()
        {
            this.HideReportHeader = false;
            this.HidePageFooter = false;
        }

        private void ProperBorderForLedgerRow(bool ccFound)
        {
            if (ccFound)
            {
                xrDate.Borders = BorderSide.Top | BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                xrVoucherNo.Borders = BorderSide.Top | BorderSide.Right | BorderSide.Bottom;
                xrtblaLedgerCode.Borders = BorderSide.Top | BorderSide.Right | BorderSide.Bottom;
                xrLedgerName.Borders = BorderSide.Top | BorderSide.Right | BorderSide.Bottom;
                xrReceipt.Borders = BorderSide.Top | BorderSide.Right | BorderSide.Bottom;
                xrPayments.Borders = BorderSide.Top | BorderSide.Right | BorderSide.Bottom;

            }
            else
            {
                xrDate.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
                xrVoucherNo.Borders = BorderSide.Right | BorderSide.Bottom;
                xrtblaLedgerCode.Borders = BorderSide.Right | BorderSide.Bottom;
                xrLedgerName.Borders = BorderSide.Right | BorderSide.Bottom;
                xrReceipt.Borders = BorderSide.Right | BorderSide.Bottom;
                xrPayments.Borders = BorderSide.Right | BorderSide.Bottom;
            }
        }

        private void ShowCCDetails()
        {
            xrSubreportCCDetails.Visible = false;



            if (this.ReportProperties.ShowCCDetails == 1)
            {
                if (GetCurrentColumnValue(this.ReportParameters.VOUCHER_IDColumn.ColumnName) != null &&
                    GetCurrentColumnValue(this.ReportParameters.LEDGER_IDColumn.ColumnName) != null &&
                    dtCCDetails.Rows.Count > 0)
                {
                    //-------------------------------------------------->Input Params For Ledger Id <-------------------------------//

                    Int32 VoucherId = UtilityMember.NumberSet.ToInteger(GetCurrentColumnValue(this.ReportParameters.VOUCHER_IDColumn.ColumnName).ToString());
                    Int32 LedgerId = UtilityMember.NumberSet.ToInteger(GetCurrentColumnValue(this.ReportParameters.LEDGER_IDColumn.ColumnName).ToString());


                    UcCCDetailCBank ccDetails = xrSubreportCCDetails.ReportSource as UcCCDetailCBank;
                    dtCCDetails.DefaultView.RowFilter = string.Empty;
                    dtCCDetails.DefaultView.RowFilter = this.ReportParameters.VOUCHER_IDColumn.ColumnName + "=" + VoucherId +
                                                     " AND " + this.ReportParameters.LEDGER_IDColumn.ColumnName + "=" + LedgerId;
                    DataTable dtCc = dtCCDetails.DefaultView.ToTable();

                    ccDetails.BindCCDetails(dtCc, true, true, false, true);
                    ccDetails.DateWidth = 0;
                    // AlignMent Fix Part 
                    ccDetails.CCTableWidth = xrCapLedger.WidthF + xrCapReceipt.WidthF + xrCapPayments.WidthF;
                    ccDetails.CCNameWidth = xrCapLedger.WidthF;
                    ccDetails.CCDebitWidth = xrCapReceipt.WidthF;
                    ccDetails.CCCreditWidth = xrCapPayments.WidthF;
                    ccDetails.PRojectNameWidth = xrCapLedger.WidthF + xrCapReceipt.WidthF + xrCapPayments.WidthF;
                    ccDetails.HideReportHeaderFooter();

                    //xrSubreportCCDetails.PerformLayout();
                    dtCCDetails.DefaultView.RowFilter = string.Empty;
                    xrSubreportCCDetails.Visible = (dtCc.Rows.Count > 0);
                    PrevLedgerCCFound = (dtCc.Rows.Count > 0);

                    if ((this.ReportProperties.ShowOnlyReceipts == 1 && this.ReportProperties.ShowOnlyPayments == 0) ||
                       (this.ReportProperties.ShowOnlyPayments == 1 && this.ReportProperties.ShowOnlyReceipts == 0))
                    {
                        xrSubreportCCDetails.Visible = false;
                        PrevLedgerCCFound = false;
                        return;
                    }
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

        private void AssignCCDetailCashJournal()
        {
            ResultArgs resultArgs = null;
            try
            {
                string sqlccDetails = this.GetReportCostCentre(SQL.ReportSQLCommand.CostCentre.CCDeatilCashBankJournal);
                string dateProgress = this.GetProgressiveDate(this.ReportProperties.DateFrom);

                using (DataManager dataManager = new DataManager())
                {
                    //-------------------------------->Input ParaMeteres <----------------------------------------//
                    dataManager.Parameters.Add(this.ReportParameters.DATE_FROMColumn, this.ReportProperties.DateFrom);
                    dataManager.Parameters.Add(this.ReportParameters.DATE_PROGRESS_FROMColumn, dateProgress);
                    dataManager.Parameters.Add(this.ReportParameters.DATE_TOColumn, this.ReportProperties.DateTo);
                    dataManager.Parameters.Add(this.ReportParameters.VOUCHER_TYPEColumn, TransType.RC.ToString());
                    dataManager.Parameters.Add(this.ReportParameters.PROJECT_IDColumn, this.ReportProperties.Project);
                    dataManager.Parameters.Add(this.ReportParameters.TRANS_MODEColumn, "CR,DR");
                    dataManager.Parameters.Add(this.ReportParameters.YEAR_FROMColumn, settingProperty.YearFrom);
                    dataManager.Parameters.Add(this.ReportParameters.YEAR_TOColumn, settingProperty.YearTo);


                    //------------------------------->Check Currency Detail <---------------//
                    if (this.AppSetting.AllowMultiCurrency == 1 && this.ReportProperties.CurrencyCountryId > 0)
                    {
                        dataManager.Parameters.Add(this.ReportParameters.CURRENCY_COUNTRY_IDColumn, this.ReportProperties.CurrencyCountryId);
                    }
                    else
                    {
                        dataManager.Parameters.Add(this.ReportParameters.CURRENCY_COUNTRY_IDColumn, "0");
                    }
                    // -------------------------------------------------------------------------------------//

                    dataManager.DataCommandArgs.IsDirectReplaceParameter = true;

                    resultArgs = dataManager.FetchData(DAO.Data.DataSource.DataTable, sqlccDetails);
                }
                if (resultArgs.Success && resultArgs.DataSource.Table != null)
                {
                    dtCCDetails = resultArgs.DataSource.Table;

                    dtCCDetails.Columns[ReportParameters.VOUCHER_IDColumn.ColumnName].ColumnName = ReportParameters.VOUCHER_IDColumn.ColumnName;
                    if (dtCCDetails.Columns.Contains("LEDGER_ID"))
                        dtCCDetails.Columns[ReportParameters.LEDGER_IDColumn.ColumnName].ColumnName = ReportParameters.LEDGER_IDColumn.ColumnName;
                    //MessageRender.ShowMessage("Data is SucessFully Loaded");

                }
            }
            catch (Exception ee)
            {
                MessageRender.ShowMessage("Error fetching Cash Journal details: " + ee.Message, true);
            }
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            ShowCCDetails();
            Detail.HeightF = 25;
        }

        private void Detail_AfterPrint(object sender, EventArgs e)
        {
            if (GetCurrentColumnValue(this.ReportParameters.VOUCHER_IDColumn.ColumnName) != null && GetCurrentColumnValue(this.ReportParameters.LEDGER_IDColumn.ColumnName) != null)
            {
                string VoucherId = GetCurrentColumnValue(this.ReportParameters.VOUCHER_IDColumn.ColumnName).ToString();
                string ledgerId = GetCurrentColumnValue(this.ReportParameters.LEDGER_IDColumn.ColumnName).ToString();
                ProperBorderForLedgerRow(PrevLedgerCCFound);
            }

        }

        //--------------------This event Use For Empty Ledger in Hide For Subreport Table---------------------//

        private void xrSubreportCCDetails_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {


        }

        private void xrSubreportCCDetails_AfterPrint(object sender, EventArgs e)
        {

        }

        private void xrDate_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void xrVoucherNo_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void xrtblaLedgerCode_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void xrCapDate_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void xrCapVoucherNo_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void xrCapCode_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }


    }
}
