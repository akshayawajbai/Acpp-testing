using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

using Bosco.DAO;
using Bosco.DAO.Data;
using Bosco.Utility.ConfigSetting;
using Bosco.Report.Base;
using Bosco.Utility;
using DevExpress.XtraSplashScreen;
using Bosco.Report.View;
using System.Data;

namespace Bosco.Report.ReportObject
{
    public partial class BalanceSheet : Bosco.Report.Base.ReportHeaderBase
    {
        #region VariableDeclaration
        ResultArgs resultArgs = null;
        // SettingProperty settingProperty = new SettingProperty();
        // double CapDebit = 0;
        // double CapCredit = 0;
        // double OpCapDebit = 0;
        // double OpCapCredit = 0;
        //  double TotalAssetAmt = 0;
        //  double TotalLiabilitiesAmt = 0;
        //  double DifferenceAmt = 0;

        double assetTotal = 0;
        double LiabilityTotal = 0;

        double ExcessDebitAmount;
        double ExcessCreditAmount;
        double DiffOpeningAmount = 0;

        double ExcessOpCreditAmount = 0;
        double ExcessOpDebitAmount = 0;

        double ExcessPeriodCreditAmount = 0;
        double ExcessPeriodDebitAmount = 0;

        float LiabilityCodeWidth = 0;
        float LiabilityNameWidth = 0;
        float LiabilityAmountWidth = 0;

        float AssetCodeWidth = 0;
        float AssetNameWidth = 0;
        float AssetAmountWidth = 0;

        // Multi-currency only: grand total omits I/E excess when not first accounting year (excess rows still visible). Single-currency: unchanged legacy totals.
        bool excludeExcessFromGrandTotal;
        bool balanceSheetIsFirstAccountingYear;
        bool hasCapitalFundValueForSecondYearLogic;

        #endregion

        #region Constructor
        public BalanceSheet()
        {
            InitializeComponent();
            AttachSecondYearSummaryHandlers();

            ArrayList ledgerfilter = new ArrayList { reportSetting1.ReportParameter.DATE_AS_ONColumn.ColumnName };
            DrillDownType ledgerdrilltype = DrillDownType.DRILL_TO_IE_REPORT;

            //Attach drill for diff.IE
            this.AttachDrillDownToRecord(xrtblDifference, xrExcessLiabilitiesAmount, ledgerfilter, ledgerdrilltype, false, "", false);
            this.AttachDrillDownToRecord(xrtblDifference, xrExcessAssetsAmt, ledgerfilter, ledgerdrilltype, false, "", false);
            this.AttachDrillDownToRecord(xrtblDifference, xrExcessLiabilitiesAmountSecoundYearOnwards, ledgerfilter, ledgerdrilltype, false, "", false);
            this.AttachDrillDownToRecord(xrtblDifference, xrExcessAssetsAmtSecoundYearOnwards, ledgerfilter, ledgerdrilltype, false, "", false);

            //Attach drill for diff.opening
            ledgerdrilltype = DrillDownType.DRILL_TO_LEDGER_DEFINE_OPENING_BALANCE;
            this.AttachDrillDownToRecord(xrtblDifference, xrDifferenceOPLiability, ledgerfilter, ledgerdrilltype, false, "", false);
            this.AttachDrillDownToRecord(xrtblDifference, xrDifferenceOPAsset, ledgerfilter, ledgerdrilltype, false, "", false);

        }
        #endregion

        #region Property
        string yearFrom = string.Empty;
        public string YearFrom
        {
            get
            {
                yearFrom = settingProperty.YearFrom;
                return yearFrom;
            }
        }
        string yearto = string.Empty;
        public string YearTo
        {
            get
            {
                yearto = settingProperty.YearTo;
                return yearto;
            }
        }
        #endregion

        #region ShowReport

        public override void ShowReport()
        {
            LiabilityCodeWidth = xrtblLiaCode.WidthF;
            if (xrtblLiaCode.Tag != null && xrtblLiaCode.Tag.ToString() != "")
            {
                LiabilityCodeWidth = (float)this.UtilityMember.NumberSet.ToDouble(xrtblLiaCode.Tag.ToString());
            }
            else
            {
                xrtblLiaCode.Tag = xrtblLiaCode.WidthF;
            }
            LiabilityNameWidth = xrcolCap2.WidthF;
            if (xrcolCap2.Tag != null && xrcolCap2.Tag.ToString() != "")
            {
                LiabilityNameWidth = (float)this.UtilityMember.NumberSet.ToDouble(xrcolCap2.Tag.ToString());
            }
            else
            {
                xrcolCap2.Tag = xrcolCap2.WidthF;
            }
            LiabilityAmountWidth = xrCellLiaCurrenctAmt.WidthF;
            if (xrCellLiaCurrenctAmt.Tag != null && xrCellLiaCurrenctAmt.Tag.ToString() != "")
            {
                LiabilityAmountWidth = (float)this.UtilityMember.NumberSet.ToDouble(xrCellLiaCurrenctAmt.Tag.ToString());
            }
            else
            {
                xrCellLiaCurrenctAmt.Tag = xrCellLiaCurrenctAmt.WidthF;
            }

            AssetCodeWidth = xrtblAssCode.WidthF;
            if (xrtblAssCode.Tag != null && xrtblAssCode.Tag.ToString() != "")
            {
                AssetCodeWidth = (float)this.UtilityMember.NumberSet.ToDouble(xrtblAssCode.Tag.ToString());
            }
            else
            {
                xrtblAssCode.Tag = xrtblAssCode.WidthF;
            }

            AssetNameWidth = xrcolCap5.WidthF;
            if (xrcolCap5.Tag != null && xrcolCap5.Tag.ToString() != "")
            {
                AssetNameWidth = (float)this.UtilityMember.NumberSet.ToDouble(xrcolCap5.Tag.ToString());
            }
            else
            {
                xrcolCap5.Tag = xrcolCap5.WidthF;
            }
            AssetAmountWidth = xrcellAssetCurrentAmt.WidthF;
            if (xrcellAssetCurrentAmt.Tag != null && xrcellAssetCurrentAmt.Tag.ToString() != "")
            {
                AssetAmountWidth = (float)this.UtilityMember.NumberSet.ToDouble(xrcellAssetCurrentAmt.Tag.ToString());
            }
            else
            {
                xrcellAssetCurrentAmt.Tag = xrcellAssetCurrentAmt.WidthF;
            }

            ExcessDebitAmount = 0;
            ExcessCreditAmount = 0;
            DiffOpeningAmount = 0;
            // GetBalanceSheetExcessAmount();

            //  AssignDifferenceInOpeningBalance();
            BindBalanceSheet();

            xrDifferenceOPLiability.Text = string.Empty;
            xrDifferenceOPAsset.Text = string.Empty;

            if (DiffOpeningAmount >= 0)
                xrDifferenceOPLiability.Text = this.UtilityMember.NumberSet.ToNumber(DiffOpeningAmount).ToString();
            else
                xrDifferenceOPAsset.Text = this.UtilityMember.NumberSet.ToNumber(Math.Abs(DiffOpeningAmount)).ToString();

            base.ShowReport();
        }

        #endregion

        #region Events
        private void xrtblAssetTotalAmt_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            double excessDebitForTotal = excludeExcessFromGrandTotal ? 0 : ExcessDebitAmount;
            double currentPeriodForTotal = ShouldShowSecondYearDisplayColumns() ? Math.Abs(ExcessPeriodDebitAmount) : 0;
            e.Result = Math.Abs(assetTotal) + (DiffOpeningAmount < 0 ? Math.Abs(DiffOpeningAmount) : 0) + excessDebitForTotal + currentPeriodForTotal;
            e.Handled = true;
        }

        private void xrtblLiaAmt_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            double excessCreditForTotal = excludeExcessFromGrandTotal ? 0 : ExcessCreditAmount;
            double currentPeriodForTotal = ShouldShowSecondYearDisplayColumns() ? Math.Abs(ExcessPeriodCreditAmount) : 0;
            e.Result = Math.Abs(LiabilityTotal) + (DiffOpeningAmount >= 0 ? Math.Abs(DiffOpeningAmount) : 0) + excessCreditForTotal + currentPeriodForTotal;
            e.Handled = true;
        }

        private void xrDiffLiabilities_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            if (DiffOpeningAmount >= 0)
            {
                //e.Result = "Difference in Opening Balance";
                e.Result = MessageRender.GetMessage(MessageCatalog.Criteria.DIFFERENCE_IN_OPENING_BALANCE);
                e.Handled = true;
            }
            else
            {
                e.Result = "";
                e.Handled = true;
            }
        }

        private void xrAssetDiff_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            if (DiffOpeningAmount < 0)
            {
                //e.Result = "Difference in Opening Balance";
                e.Result = MessageRender.GetMessage(MessageCatalog.Criteria.DIFFERENCE_IN_OPENING_BALANCE);
                e.Handled = true;
            }
            else
            {
                e.Result = "";
                e.Handled = true;
            }

        }

        private void xrExcessLiabilities_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            if (ExcessCreditAmount > 0)
            {
                e.Result = "Excess of Income Over Exp.";
                e.Handled = true;
            }
            else
            {
                e.Result = "";
                e.Handled = true;
            }
        }

        private void xrExcessAssets_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            if (ExcessDebitAmount > 0)
            {
                e.Result = "Excess of Exp. Over Income";
                e.Handled = true;
            }
            else
            {
                e.Result = "";
                e.Handled = true;
            }
        }

        private void xrLiaOpening_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            if (ExcessCreditAmount > 0)
            {
                e.Result = "Opening Balance ";
                e.Handled = true;
            }
            else
            {
                e.Result = "";
                e.Handled = true;
            }
        }

        private void xrLiaPeriod_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            if (ShouldShowSecondYearDisplayColumns())
            {
                e.Result = (ExcessPeriodCreditAmount > 0) ? "Current Period " : "";
                e.Handled = true;
                return;
            }

            if (ExcessCreditAmount > 0)
            {
                e.Result = "Current Period ";
                e.Handled = true;
            }
            else
            {
                e.Result = "";
                e.Handled = true;
            }
        }

        private void xrAssetOpening_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            if (ExcessDebitAmount > 0)
            {
                e.Result = "Opening Balance ";
                e.Handled = true;
            }
            else
            {
                e.Result = "";
                e.Handled = true;
            }
        }

        private void xrAssetPeriod_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            if (ShouldShowSecondYearDisplayColumns())
            {
                e.Result = (ExcessPeriodDebitAmount != 0) ? "Current Period " : "";
                e.Handled = true;
                return;
            }

            if (ExcessDebitAmount > 0)
            {
                e.Result = "Current Period ";
                e.Handled = true;
            }
            else
            {
                e.Result = "";
                e.Handled = true;
            }
        }

        private void xrLiaOpeningAmt_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            if (ShouldShowSecondYearDisplayColumns())
            {
                e.Result = "";
                e.Handled = true;
                return;
            }

            if (ExcessCreditAmount > 0)
            {
                if (ExcessOpCreditAmount != 0 && ExcessOpCreditAmount > 0)
                {
                    e.Result = this.UtilityMember.NumberSet.ToNumber(ExcessOpCreditAmount);
                    e.Handled = true;
                }
                else
                {
                    e.Result = this.UtilityMember.NumberSet.ToNumber(ExcessOpDebitAmount);
                    e.Handled = true;
                }
            }
            else
            {
                e.Result = "";
                e.Handled = true;
            }
        }

        private void xrLiaPeriodAmt_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            if (ShouldShowSecondYearDisplayColumns())
            {
                if (ExcessPeriodCreditAmount > 0)
                {
                    e.Result = this.UtilityMember.NumberSet.ToNumber(ExcessPeriodCreditAmount);
                }
                else
                {
                    e.Result = "";
                }
                e.Handled = true;
                return;
            }

            if (ExcessCreditAmount > 0)
            {
                if (ExcessPeriodCreditAmount != 0 && ExcessPeriodCreditAmount > 0)
                {
                    e.Result = this.UtilityMember.NumberSet.ToNumber(ExcessPeriodCreditAmount);
                    e.Handled = true;
                }
                else
                {
                    e.Result = this.UtilityMember.NumberSet.ToNumber(ExcessPeriodDebitAmount);
                    e.Handled = true;
                }
            }
            else
            {
                e.Result = "";
                e.Handled = true;
            }
        }

        private void xrAssetOpeningAmt_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            if (ShouldShowSecondYearDisplayColumns())
            {
                e.Result = "";
                e.Handled = true;
                return;
            }

            if (ExcessDebitAmount > 0)
            {
                if (ExcessOpDebitAmount != 0 && ExcessOpDebitAmount > 0)
                {
                    e.Result = this.UtilityMember.NumberSet.ToNumber(ExcessOpDebitAmount);
                    e.Handled = true;
                }
                else if (ExcessOpCreditAmount != 0 && ExcessOpCreditAmount > 0) //bharath 24/07/2026 for Opeing balance taken
                {
                    e.Result = this.UtilityMember.NumberSet.ToNumber(ExcessOpCreditAmount);
                    e.Handled = true;
                }
                else
                {
                    e.Result = this.UtilityMember.NumberSet.ToNumber(ExcessOpDebitAmount);
                    e.Handled = true;
                }
            }
            else
            {
                e.Result = "";
                e.Handled = true;
            }
        }

        private void xrAssetPeriodAmt_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            if (ShouldShowSecondYearDisplayColumns())
            {
                if (ExcessPeriodDebitAmount != 0)
                {
                    e.Result = this.UtilityMember.NumberSet.ToNumber(ExcessPeriodDebitAmount);
                }
                else
                {
                    e.Result = "";
                }
                e.Handled = true;
                return;
            }

            if (ExcessDebitAmount > 0)
            {
                if (ExcessPeriodDebitAmount != 0 && ExcessPeriodDebitAmount > 0)
                {
                    e.Result = this.UtilityMember.NumberSet.ToNumber(ExcessPeriodDebitAmount);
                    e.Handled = true;
                }
                else
                {
                    e.Result = this.UtilityMember.NumberSet.ToNumber(ExcessPeriodDebitAmount);
                    e.Handled = true;
                }
            }
            else
            {
                e.Result = "";
                e.Handled = true;
            }
        }
        private void xrExcessLiabilitiesAmount_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            if (ShouldShowSecondYearDisplayColumns())
            {
                e.Result = "";
                e.Handled = true;
                return;
            }

            if (ExcessCreditAmount > 0)
            {
                e.Result = this.UtilityMember.NumberSet.ToNumber(ExcessCreditAmount);
                e.Handled = true;

                double ZeroValue = this.UtilityMember.NumberSet.ToDouble(e.Result.ToString());
                if (ZeroValue == 0.00)
                {
                    e.Result = "";
                    e.Handled = true;
                }
            }
            else
            {
                e.Result = "";
                e.Handled = true;
            }
        }

        private void xrExcessAssetsAmt_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            if (ShouldShowSecondYearDisplayColumns())
            {
                e.Result = "";
                e.Handled = true;
                return;
            }

            if (ExcessDebitAmount > 0)
            {
                e.Result = this.UtilityMember.NumberSet.ToNumber(-ExcessDebitAmount);
                e.Handled = true;

                double ZeroValue = this.UtilityMember.NumberSet.ToDouble(e.Result.ToString());
                if (ZeroValue == 0.00)
                {
                    e.Result = "";
                    e.Handled = true;
                }
            }
            else
            {
                e.Result = "";
                e.Handled = true;
            }
        }

        #endregion

        #region Methods
        private void AttachSecondYearSummaryHandlers()
        {
            EnsureSecondYearCustomSummary(xrExcessLiabilitiesAmountSecoundYearOnwards);
            EnsureSecondYearCustomSummary(xrLiaOpeningAmtSecoundYearOnwards);
            EnsureSecondYearCustomSummary(xrLiaPeriodAmtSecoundYearOnwards);
            EnsureSecondYearCustomSummary(xrExcessAssetsAmtSecoundYearOnwards);
            EnsureSecondYearCustomSummary(xrAssetOpeningAmtSecoundYearOnwards);
            EnsureSecondYearCustomSummary(xrAssetPeriodAmtSecoundYearOnwards);

            xrExcessLiabilitiesAmountSecoundYearOnwards.SummaryGetResult += xrExcessLiabilitiesAmountSecoundYearOnwards_SummaryGetResult;
            xrLiaOpeningAmtSecoundYearOnwards.SummaryGetResult += xrLiaOpeningAmtSecoundYearOnwards_SummaryGetResult;
            xrLiaPeriodAmtSecoundYearOnwards.SummaryGetResult += xrLiaPeriodAmtSecoundYearOnwards_SummaryGetResult;
            xrExcessAssetsAmtSecoundYearOnwards.SummaryGetResult += xrExcessAssetsAmtSecoundYearOnwards_SummaryGetResult;
            xrAssetOpeningAmtSecoundYearOnwards.SummaryGetResult += xrAssetOpeningAmtSecoundYearOnwards_SummaryGetResult;
            xrAssetPeriodAmtSecoundYearOnwards.SummaryGetResult += xrAssetPeriodAmtSecoundYearOnwards_SummaryGetResult;
        }

        private void EnsureSecondYearCustomSummary(XRTableCell cell)
        {
            if (cell == null)
                return;

            XRSummary summary = new XRSummary();
            summary.Func = SummaryFunc.Custom;
            summary.IgnoreNullValues = true;
            summary.Running = SummaryRunning.Report;
            cell.Summary = summary;
        }

        private bool ShouldShowSecondYearDisplayColumns()
        {
            return (this.AppSetting.AllowMultiCurrency == 1
                && this.AppSetting.IsCountryOtherThanIndia
                && !balanceSheetIsFirstAccountingYear
                && hasCapitalFundValueForSecondYearLogic);
        }

        private bool HasCapitalFundValue(DataTable dtBalanceRpt)
        {
            if (dtBalanceRpt == null || dtBalanceRpt.Rows.Count == 0)
                return false;
            if (!dtBalanceRpt.Columns.Contains("LEDGER_ID") || !dtBalanceRpt.Columns.Contains("AMOUNT_ACTUAL"))
                return false;

            int capitalFundLedgerId = (int)DefaultLedgers.CapitalFund;
            foreach (DataRow row in dtBalanceRpt.Rows)
            {
                if (row["LEDGER_ID"] == DBNull.Value)
                    continue;
                if (Convert.ToInt32(row["LEDGER_ID"]) != capitalFundLedgerId)
                    continue;

                double amount = this.UtilityMember.NumberSet.ToDouble(row["AMOUNT_ACTUAL"].ToString());
                if (amount != 0)
                    return true;
            }
            return false;
        }

        private void ApplySecondYearDisplayColumnVisibility()
        {
            xrExcessLiabilitiesAmountSecoundYearOnwards.Visible = true;
            xrLiaOpeningAmtSecoundYearOnwards.Visible = true;
            xrLiaPeriodAmtSecoundYearOnwards.Visible = true;
            xrExcessAssetsAmtSecoundYearOnwards.Visible = true;
            xrAssetOpeningAmtSecoundYearOnwards.Visible = true;
            xrAssetPeriodAmtSecoundYearOnwards.Visible = true;

            xrExcessLiabilitiesAmount.Visible = true;
            xrLiaOpeningAmt.Visible = true;
            xrLiaPeriodAmt.Visible = true;
            xrExcessAssetsAmt.Visible = true;
            xrAssetOpeningAmt.Visible = true;
            xrAssetPeriodAmt.Visible = true;
        }

        private void xrExcessLiabilitiesAmountSecoundYearOnwards_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            if (!ShouldShowSecondYearDisplayColumns())
            {
                e.Result = "";
                e.Handled = true;
                return;
            }

            if (ExcessCreditAmount > 0)
            {
                e.Result = this.UtilityMember.NumberSet.ToNumber(ExcessCreditAmount);
                e.Handled = true;

                double ZeroValue = this.UtilityMember.NumberSet.ToDouble(e.Result.ToString());
                if (ZeroValue == 0.00)
                {
                    e.Result = "";
                    e.Handled = true;
                }
            }
            else
            {
                e.Result = "";
                e.Handled = true;
            }
        }

        private void xrLiaOpeningAmtSecoundYearOnwards_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            if (!ShouldShowSecondYearDisplayColumns())
            {
                e.Result = "";
                e.Handled = true;
                return;
            }

            if (ExcessCreditAmount > 0)
            {
                if (ExcessOpCreditAmount != 0 && ExcessOpCreditAmount > 0)
                {
                    e.Result = this.UtilityMember.NumberSet.ToNumber(ExcessOpCreditAmount);
                    e.Handled = true;
                }
                else
                {
                    e.Result = this.UtilityMember.NumberSet.ToNumber(ExcessOpDebitAmount);
                    e.Handled = true;
                }
            }
            else
            {
                e.Result = "";
                e.Handled = true;
            }
        }

        private void xrLiaPeriodAmtSecoundYearOnwards_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            e.Result = "";
            e.Handled = true;
        }

        private void xrExcessAssetsAmtSecoundYearOnwards_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            if (!ShouldShowSecondYearDisplayColumns())
            {
                e.Result = "";
                e.Handled = true;
                return;
            }

            if (ExcessDebitAmount > 0)
            {
                e.Result = this.UtilityMember.NumberSet.ToNumber(-ExcessDebitAmount);
                e.Handled = true;

                double ZeroValue = this.UtilityMember.NumberSet.ToDouble(e.Result.ToString());
                if (ZeroValue == 0.00)
                {
                    e.Result = "";
                    e.Handled = true;
                }
            }
            else
            {
                e.Result = "";
                e.Handled = true;
            }
        }

        private void xrAssetOpeningAmtSecoundYearOnwards_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            if (!ShouldShowSecondYearDisplayColumns())
            {
                e.Result = "";
                e.Handled = true;
                return;
            }

            if (ExcessDebitAmount > 0)
            {
                if (ExcessOpDebitAmount != 0 && ExcessOpDebitAmount > 0)
                {
                    e.Result = this.UtilityMember.NumberSet.ToNumber(ExcessOpDebitAmount);
                    e.Handled = true;
                }
                else if (ExcessOpCreditAmount != 0 && ExcessOpCreditAmount > 0)
                {
                    e.Result = this.UtilityMember.NumberSet.ToNumber(ExcessOpCreditAmount);
                    e.Handled = true;
                }
                else
                {
                    e.Result = this.UtilityMember.NumberSet.ToNumber(ExcessOpDebitAmount);
                    e.Handled = true;
                }
            }
            else
            {
                e.Result = "";
                e.Handled = true;
            }
        }

        private void xrAssetPeriodAmtSecoundYearOnwards_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            e.Result = "";
            e.Handled = true;
        }

        public void BindBalanceSheet()
        {
            try
            {
                excludeExcessFromGrandTotal = false;
                balanceSheetIsFirstAccountingYear = false;
                ApplySecondYearDisplayColumnVisibility();

                this.ReportProperties.DateTo = this.ReportProperties.DateAsOn;
                string datetime = this.GetProgressiveDate(this.ReportProperties.DateAsOn);
                this.HideReportDate = ReportProperties.ReportDate != string.Empty ? true : false;
                this.SetReportDate = ReportProperties.ReportDate != string.Empty ? this.UtilityMember.DateSet.ToDate(ReportProperties.ReportDate, false).ToShortDateString() : string.Empty;
                this.ReportTitle = this.ReportProperties.ReportTitle;

                this.SetLandscapeHeader = 1030.25f;
                this.SetLandscapeFooter = 1030.25f;
                this.SetLandscapeFooterDateWidth = 860.00f;
                if (string.IsNullOrEmpty(this.ReportProperties.DateAsOn))
                {
                    SetReportTitle();
                    ShowReportFilterDialog();
                }
                else
                {
                    if (this.UIAppSetting.UICustomizationForm == "1")
                    {
                        if (ReportProperty.Current.ReportFlag == 0)
                        {
                            SetReportTitle();
                            this.ReportPeriod = String.Format("As on: {0}", this.ReportProperties.DateAsOn);
                            setHeaderTitleAlignment();

                            SplashScreenManager.ShowForm(typeof(frmReportWait));
                            BindSubReportSource();
                            GetBalanceSheetOpening();
                            GetBalanceSheetPeriod();
                            GetBalanceSheetExcessAmount();  //01
                            AssignDifferenceInOpeningBalance(); //02

                            SplashScreenManager.CloseForm();
                            base.ShowReport();
                            SetReportBorder();
                        }
                        else
                        {
                            SetReportTitle();
                            ShowReportFilterDialog();
                        }
                    }
                    else
                    {
                        SetReportTitle();
                        this.ReportPeriod = String.Format("As on: {0}", this.ReportProperties.DateAsOn);
                        setHeaderTitleAlignment();
                        SplashScreenManager.ShowForm(typeof(frmReportWait));
                        BindSubReportSource();
                        GetBalanceSheetOpening();
                        GetBalanceSheetPeriod();
                        GetBalanceSheetExcessAmount();  //01
                        AssignDifferenceInOpeningBalance(); //02

                        SplashScreenManager.CloseForm();
                        base.ShowReport();
                        SetReportBorder();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageRender.ShowMessage(ex.ToString(), false);
            }
            finally { }
        }

        private void SetReportBorder()
        {
            xrtblDifference = AlignContentTable(xrtblDifference);
            xrtblGrandTotal = AlignTotalTable(xrtblGrandTotal);
            xrtblHeaderCaption = AlignHeaderTable(xrtblHeaderCaption);
            this.SetCurrencyFormat(xrCellLiaCurrenctAmt.Text, xrCellLiaCurrenctAmt);
            this.SetCurrencyFormat(xrcellAssetCurrentAmt.Text, xrcellAssetCurrentAmt);
        }
        public ResultArgs GetBalanceSheet()
        {
            string BalanceSheet = this.GetFinalAccountsReportSQL(SQL.ReportSQLCommand.FinalAccounts.BalanceSheet);
            using (DataManager dataManager = new DataManager())
            {
                dataManager.Parameters.Add(this.ReportParameters.PROJECT_IDColumn, this.ReportProperties.Project);
                dataManager.Parameters.Add(this.ReportParameters.DATE_AS_ONColumn, this.ReportProperties.DateAsOn);

                int LedgerPaddingRequired = (ReportProperties.ShowLedgerCode == 0 && ReportProperties.ShowByLedgerGroup == 1) ? 1 : 0;
                int GroupPaddingRequired = (ReportProperties.ShowGroupCode == 0 && ReportProperties.ShowByLedgerGroup == 1) ? 1 : 0;

                dataManager.Parameters.Add(this.ReportParameters.SHOWLEDGERCODEColumn, 1);
                dataManager.Parameters.Add(this.ReportParameters.SHOWGROUPCODEColumn, 1);

                //On 09/12/2024, To set Currnecy
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
                resultArgs = dataManager.FetchData(DAO.Data.DataSource.DataTable, BalanceSheet);
            }
            return resultArgs;
        }

        public void AssignDifferenceInOpeningBalance()
        {
            if (LiabilityTotal != 0 || assetTotal != 0)
            {
                string BalanceSheetOpeningAmt = this.GetFinalAccountsReportSQL(SQL.ReportSQLCommand.FinalAccounts.BalanceSheetOpeningAmt);
                using (DataManager dataManager = new DataManager())
                {
                    dataManager.Parameters.Add(this.ReportParameters.PROJECT_IDColumn, this.ReportProperties.Project);

                    //On 09/12/2024, To set Currnecy
                    if (this.AppSetting.AllowMultiCurrency == 1 && this.ReportProperties.CurrencyCountryId > 0)
                    {
                        dataManager.Parameters.Add(this.ReportParameters.CURRENCY_COUNTRY_IDColumn, this.ReportProperties.CurrencyCountryId);
                    }
                    else
                    {
                        dataManager.Parameters.Add(this.ReportParameters.CURRENCY_COUNTRY_IDColumn, "0");
                    }

                    dataManager.DataCommandArgs.IsDirectReplaceParameter = true;
                    resultArgs = dataManager.FetchData(DAO.Data.DataSource.Scalar, BalanceSheetOpeningAmt);
                    DiffOpeningAmount = 0;
                    if (resultArgs != null && resultArgs.Success)
                    {
                        DiffOpeningAmount = this.UtilityMember.NumberSet.ToDouble(resultArgs.DataSource.Data.ToString());
                    }
                }
            }
        }

        public void BindSubReportSource()
        {
            excludeExcessFromGrandTotal = false;
            balanceSheetIsFirstAccountingYear = false;
            hasCapitalFundValueForSecondYearLogic = false;
            ResultArgs resultArgs = GetBalanceSheetSource();
            if (resultArgs.Success)
            {
                if (this.AppSetting.AllowMultiCurrency == 1)
                {
                    balanceSheetIsFirstAccountingYear = IsBalanceSheetFirstAccountingYear();
                }
                else
                {
                    balanceSheetIsFirstAccountingYear = false;
                    excludeExcessFromGrandTotal = false;
                    hasCapitalFundValueForSecondYearLogic = false;
                }

                ReportProperties.ShowGroupCode = 1;
                if (this.ReportProperties.ReportCodeType == (int)ReportCodeType.Standard)
                    ReportProperties.ShowGroupCode = 0;

                xrSubLiabilities.Visible = xrsubAssets.Visible = true;
                DataTable dtBalanceRpt = resultArgs.DataSource.Table;
                hasCapitalFundValueForSecondYearLogic = HasCapitalFundValue(dtBalanceRpt);
                // 21/03/2026 — Multi-currency only: Capital Fund nets I/E (IESUM); first accounting year skipped; single-currency leaves SQL balances unchanged.
                if (this.AppSetting.AllowMultiCurrency == 1)
                {
                    if (hasCapitalFundValueForSecondYearLogic)
                    {
                        ApplyCapitalFundAmountAdjustment(dtBalanceRpt);
                    }
                    // When Capital Fund is absent/zero, keep old columns and allow excess into grand total.
                    excludeExcessFromGrandTotal = (!balanceSheetIsFirstAccountingYear && this.AppSetting.IsCountryOtherThanIndia && hasCapitalFundValueForSecondYearLogic);
                }
                else
                {
                    hasCapitalFundValueForSecondYearLogic = false;
                    excludeExcessFromGrandTotal = false;
                }

                ApplySecondYearDisplayColumnVisibility();
                dtBalanceRpt.DefaultView.RowFilter = "AMOUNT_ACTUAL < 0";
                DataTable dtLiabilities = dtBalanceRpt.DefaultView.ToTable();
                dtLiabilities.Columns.Add("AMOUNT", dtBalanceRpt.Columns["AMOUNT_ACTUAL"].DataType, "AMOUNT_ACTUAL * -1"); //Change negative value to possitive value
                BalanceSheetLiabilities liabilities = xrSubLiabilities.ReportSource as BalanceSheetLiabilities;
                liabilities.BindBalanceSheetLiability(dtLiabilities);
                LiabilityTotal = liabilities.TotalLiabilities;

                if (ReportProperties.ShowGroupCode == 1)
                {
                    liabilities.LiabilitiesLedgerCodeWidth = LiabilityCodeWidth;
                    liabilities.LiabilitiesLedgerNameWidth = LiabilityNameWidth;
                    liabilities.LiabilitiesAmountWidth = LiabilityAmountWidth;

                    liabilities.LiabilitiesGroupCodewidth = LiabilityCodeWidth;
                    liabilities.LiabilitiesGroupNamewidth = LiabilityNameWidth;
                    liabilities.LiabilitiesGroupAmount = LiabilityAmountWidth;

                    if (this.ReportProperties.ReportCodeType == (int)ReportCodeType.Generalate)
                    {
                        liabilities.LiabilitiesParentCode = LiabilityCodeWidth;
                        liabilities.LiabilitiesParentGroupName = LiabilityNameWidth;
                        liabilities.LiabilitiesParentGroupAmt = LiabilityAmountWidth;
                    }
                    else
                    {
                        liabilities.LiabilitiesParentCode = 0;
                        liabilities.LiabilitiesParentGroupName = LiabilityNameWidth + LiabilityCodeWidth - 3;
                        liabilities.LiabilitiesParentGroupAmt = LiabilityAmountWidth;
                    }
                }
                else
                {
                    liabilities.LiabilitiesLedgerCodeWidth = LiabilityCodeWidth;
                    liabilities.LiabilitiesLedgerNameWidth = LiabilityNameWidth;
                    liabilities.LiabilitiesAmountWidth = LiabilityAmountWidth;

                    liabilities.LiabilitiesGroupCodewidth = LiabilityCodeWidth - 2;
                    liabilities.LiabilitiesGroupNamewidth = LiabilityNameWidth;
                    liabilities.LiabilitiesGroupAmount = LiabilityAmountWidth;

                    if (this.ReportProperties.ReportCodeType == (int)ReportCodeType.Generalate)
                    {
                        liabilities.LiabilitiesParentCode = LiabilityCodeWidth;
                        liabilities.LiabilitiesParentGroupName = LiabilityNameWidth;
                        liabilities.LiabilitiesParentGroupAmt = LiabilityAmountWidth;
                    }
                    else
                    {
                        liabilities.LiabilitiesParentCode = 0;
                        liabilities.LiabilitiesParentGroupName = LiabilityNameWidth + LiabilityCodeWidth;
                        liabilities.LiabilitiesParentGroupAmt = LiabilityAmountWidth;
                    }
                }

                this.AttachDrillDownToSubReport(liabilities);
                liabilities.HideBalanceSheetLiabilityHeader();

                dtBalanceRpt.DefaultView.RowFilter = string.Empty;
                dtBalanceRpt.DefaultView.RowFilter = "AMOUNT_ACTUAL > 0";
                DataTable dtAsset = dtBalanceRpt.DefaultView.ToTable();
                dtAsset.Columns["AMOUNT_ACTUAL"].ColumnName = "AMOUNT";
                BalanceSheetAssets Asset = xrsubAssets.ReportSource as BalanceSheetAssets;
                Asset.BindBalanceSheetAsset(dtAsset);
                assetTotal = Asset.TotalAssets;
                if (ReportProperties.ShowGroupCode == 1)
                {
                    Asset.AssetLedgerCodeWidth = AssetCodeWidth;
                    Asset.AssetLedgerNameWidth = AssetNameWidth + 1;
                    Asset.AssetAmountWidth = AssetAmountWidth + 1;

                    Asset.AssetGroupCodewidth = AssetCodeWidth;
                    Asset.AssetGroupNamewidth = AssetNameWidth + 1;
                    Asset.AssetGroupAmount = AssetAmountWidth + 1;

                    if (this.ReportProperties.ReportCodeType == (int)ReportCodeType.Generalate)
                    {
                        Asset.AssetParentCode = AssetCodeWidth + 1;
                        Asset.AssetParentGroupName = AssetNameWidth;
                        Asset.AssetParentGroupAmt = AssetAmountWidth + 1;
                    }
                    else
                    {
                        Asset.AssetParentCode = 0;
                        Asset.AssetParentGroupName = AssetNameWidth + AssetCodeWidth;
                        Asset.AssetParentGroupAmt = AssetAmountWidth + 1;

                    }
                }
                else
                {
                    Asset.AssetLedgerCodeWidth = AssetCodeWidth;
                    Asset.AssetLedgerNameWidth = AssetNameWidth + 1;
                    Asset.AssetAmountWidth = AssetAmountWidth + 1;

                    Asset.AssetGroupCodewidth = AssetCodeWidth - 1;
                    Asset.AssetGroupNamewidth = AssetNameWidth;
                    Asset.AssetGroupAmount = AssetAmountWidth + 1;

                    if (this.ReportProperties.ReportCodeType == (int)ReportCodeType.Generalate)
                    {
                        Asset.AssetParentCode = AssetCodeWidth + 1;
                        Asset.AssetParentGroupName = AssetNameWidth;
                        Asset.AssetParentGroupAmt = AssetAmountWidth + 1;
                    }
                    else
                    {
                        Asset.AssetParentCode = 0;
                        Asset.AssetParentGroupName = AssetNameWidth + AssetCodeWidth;
                        Asset.AssetParentGroupAmt = AssetAmountWidth;
                    }

                }

                this.AttachDrillDownToSubReport(Asset);
                Asset.AttachDrillDownToAccountBalance(); //For closing balance
                Asset.HideBalanceSheetAssetCapHeader();

                //19/09/2024, To Show Forex split -----------------------------------------------------
                xrsubforex.Visible = false;
                if (this.settingProperty.AllowMultiCurrency == 1)
                {
                    xrsubforex.Visible = true;
                    UcForexSplit forexsplit = xrsubforex.ReportSource as UcForexSplit;
                    xrsubforex.WidthF = xrtblLiaCode.WidthF + xrcolCap2.WidthF;
                    forexsplit.CurrencyNameWidth = xrtblLiaCode.WidthF;
                    forexsplit.GainWidth = (xrcolCap2.WidthF / 2);
                    forexsplit.LossWidth = (xrcolCap2.WidthF / 2);
                    forexsplit.DateAsOn = ReportProperties.DateAsOn;
                    forexsplit.ShowForex();
                }
                //-------------------------------------------------------------------------------------


            }
            else
            {
                xrSubLiabilities.Visible = xrsubAssets.Visible = false;
            }

        }

        private ResultArgs GetBalanceSheetSource()
        {
            string BalanceSheet = this.GetFinalAccountsReportSQL(SQL.ReportSQLCommand.FinalAccounts.BalanceSheet);
            using (DataManager dataManager = new DataManager())
            {
                dataManager.Parameters.Add(this.ReportParameters.PROJECT_IDColumn, this.ReportProperties.Project);
                dataManager.Parameters.Add(this.ReportParameters.DATE_AS_ONColumn, this.ReportProperties.DateAsOn);
                dataManager.Parameters.Add(this.ReportParameters.SHOW_GENERALATEColumn, this.ReportProperties.ReportCodeType.Equals((int)ReportCodeType.Standard) || this.ReportProperties.ReportCodeType.Equals((int)ReportCodeType.Province) ? 0 : (int)ReportCodeType.Generalate);
                int Mode = this.ReportProperties.ReportCodeType.Equals((int)ReportCodeType.Standard) || this.ReportProperties.ReportCodeType.Equals((int)ReportCodeType.Province) ? 0 : (int)ReportCodeType.Generalate;
                int LedgerPaddingRequired = (ReportProperties.ShowByLedgerGroup == 1) ? 1 : 0;
                int GroupPaddingRequired = (ReportProperties.ShowByLedgerGroup == 1 && Mode == 1) ? 1 : 0;

                dataManager.Parameters.Add(this.ReportParameters.SHOWLEDGERCODEColumn, LedgerPaddingRequired);
                dataManager.Parameters.Add(this.ReportParameters.SHOWGROUPCODEColumn, GroupPaddingRequired);

                //On 09/12/2024, To set Currnecy
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
                resultArgs = dataManager.FetchData(DAO.Data.DataSource.DataTable, BalanceSheet);
            }
            return resultArgs;
        }

        // 21/03/2026 — Purpose: Capital Fund correction on balance sheet; IESUM fetch here is independent of GetBalanceSheetExcessAmount footer totals.
        /// <summary>
        /// IESUM for Capital Fund row adjustment only. Does not set ExcessDebitAmount / ExcessCreditAmount (totals use GetBalanceSheetExcessAmount).
        /// Uses the same SQL command and parameters as GetBalanceSheetExcessAmount.
        /// </summary>
        private bool TryFetchIESumForCapitalFundAdjustment(out double iesum)
        {
            iesum = 0;
            //string BalanceSheet = this.GetFinalAccountsReportSQL((this.AppSetting.AllowMultiCurrency==1?  SQL.ReportSQLCommand.FinalAccounts.BalanceSheetExcessDifferenceForMultiCurrency
            //            :SQL.ReportSQLCommand.FinalAccounts.BalanceSheetExcessDifference));
            // Chinna 06/02/2026, Chinna
            string BalanceSheet = this.GetFinalAccountsReportSQL((this.AppSetting.AllowMultiCurrency == 1 ? SQL.ReportSQLCommand.FinalAccounts.BalanceSheetExcessDifference
                        : SQL.ReportSQLCommand.FinalAccounts.BalanceSheetExcessDifference));
            using (DataManager dataManager = new DataManager())
            {
                dataManager.Parameters.Add(this.ReportParameters.PROJECT_IDColumn, this.ReportProperties.Project);
                dataManager.Parameters.Add(this.ReportParameters.DATE_FROMColumn, this.ReportProperties.DateAsOn);

                if (this.AppSetting.AllowMultiCurrency == 1 && this.ReportProperties.CurrencyCountryId > 0)
                {
                    dataManager.Parameters.Add(this.ReportParameters.CURRENCY_COUNTRY_IDColumn, this.ReportProperties.CurrencyCountryId);
                }
                else
                {
                    dataManager.Parameters.Add(this.ReportParameters.CURRENCY_COUNTRY_IDColumn, "0");
                }

                dataManager.DataCommandArgs.IsDirectReplaceParameter = true;
                ResultArgs ra = dataManager.FetchData(DAO.Data.DataSource.DataTable, BalanceSheet);
                if (ra != null && ra.Success && ra.DataSource.Table != null && ra.DataSource.Table.Rows.Count > 0)
                {
                    iesum = this.UtilityMember.NumberSet.ToDouble(ra.DataSource.Table.Rows[0]["IESUM"].ToString());
                    return true;
                }
            }
            return false;
        }

        private bool TryFetchOpeningExcessForCapitalFundAdjustment(out double openingCredit, out double openingDebit)
        {
            openingCredit = 0;
            openingDebit = 0;

            string balanceOpening = this.GetFinalAccountsReportSQL(SQL.ReportSQLCommand.FinalAccounts.BalanceSheetExcessOpeningPeriod);
            using (DataManager dataManager = new DataManager())
            {
                dataManager.Parameters.Add(this.ReportParameters.PROJECT_IDColumn, this.ReportProperties.Project);
                dataManager.Parameters.Add(this.ReportParameters.DATE_AS_ONColumn, this.settingProperty.YearToPrevious);
                dataManager.Parameters.Add(this.ReportParameters.TRANS_MODEColumn, "OP");

                if (this.AppSetting.AllowMultiCurrency == 1 && this.ReportProperties.CurrencyCountryId > 0)
                {
                    dataManager.Parameters.Add(this.ReportParameters.CURRENCY_COUNTRY_IDColumn, this.ReportProperties.CurrencyCountryId);
                }
                else
                {
                    dataManager.Parameters.Add(this.ReportParameters.CURRENCY_COUNTRY_IDColumn, "0");
                }

                dataManager.DataCommandArgs.IsDirectReplaceParameter = true;
                ResultArgs ra = dataManager.FetchData(DAO.Data.DataSource.DataTable, balanceOpening);
                if (ra != null && ra.Success && ra.DataSource.Table != null && ra.DataSource.Table.Rows.Count > 0)
                {
                    DataTable dtResource = ra.DataSource.Table;
                    openingCredit = this.UtilityMember.NumberSet.ToDouble(dtResource.Rows[0]["CREDIT"].ToString());
                    openingDebit = this.UtilityMember.NumberSet.ToDouble(dtResource.Rows[0]["DEBIT"].ToString());
                    return true;
                }
            }
            return false;
        }

        private bool IsBalanceSheetFirstAccountingYear()
        {
            // Uses FinalAccounts.IsReportDateInFirstAccountingYear (added for this report). Other modules keep using IsFirstFinancialYear unchanged.
            string sql = this.GetFinalAccountsReportSQL(SQL.ReportSQLCommand.FinalAccounts.IsReportDateInFirstAccountingYear);
            using (DataManager dataManager = new DataManager())
            {
                dataManager.Parameters.Add(this.ReportParameters.DATE_FROMColumn, this.ReportProperties.DateAsOn);
                dataManager.DataCommandArgs.IsDirectReplaceParameter = true;
                ResultArgs ra = dataManager.FetchData(DAO.Data.DataSource.Scalar, sql);
                if (ra != null && ra.Success && ra.DataSource != null && ra.DataSource.Data != null)
                {
                    return Convert.ToInt32(ra.DataSource.Data) > 0;
                }
            }
            return false;
        }

        /// <summary>
        /// Multi-currency only: from second accounting year onward, other-than-India adjusts Capital Fund with opening excess only; current period stays separate.
        /// </summary>
        private void ApplyCapitalFundAmountAdjustment(DataTable dtBalanceRpt)
        {
            if (this.AppSetting.AllowMultiCurrency != 1)
                return;
            if (dtBalanceRpt == null || dtBalanceRpt.Rows.Count == 0)
                return;
            if (!dtBalanceRpt.Columns.Contains("LEDGER_ID") || !dtBalanceRpt.Columns.Contains("AMOUNT_ACTUAL"))
                return;

            // First accounting year only: leave Capital Fund and table as loaded from SQL — no IESUM, no add/subtract.
            if (balanceSheetIsFirstAccountingYear)
                return;

            double excessCredit = 0;
            double excessDebit = 0;

            if (this.AppSetting.IsCountryOtherThanIndia)
            {
                if (!TryFetchOpeningExcessForCapitalFundAdjustment(out excessCredit, out excessDebit))
                    return;
            }
            else
            {
                double iesum;
                if (!TryFetchIESumForCapitalFundAdjustment(out iesum))
                    return;

                if (iesum < 0)
                    excessCredit = Math.Abs(iesum);
                else
                    excessDebit = iesum;
            }

            int capitalFundLedgerId = (int)DefaultLedgers.CapitalFund;
            foreach (DataRow row in dtBalanceRpt.Rows)
            {
                if (row["LEDGER_ID"] == DBNull.Value)
                    continue;
                if (Convert.ToInt32(row["LEDGER_ID"]) != capitalFundLedgerId)
                    continue;

                double amt = this.UtilityMember.NumberSet.ToDouble(row["AMOUNT_ACTUAL"].ToString());
                // Signed AMOUNT_ACTUAL (CR negative, DR positive): net I/E into Capital Fund — not a random subtract; matches spreadsheet CR/DR rules from 2nd year on.
                row["AMOUNT_ACTUAL"] = amt + excessDebit - excessCredit;
            }
        }

        private void GetBalanceSheetExcessAmount()
        {
            if (LiabilityTotal != 0 || assetTotal != 0)
            {

                //string BalanceSheet = this.GetFinalAccountsReportSQL((this.AppSetting.AllowMultiCurrency==1?  SQL.ReportSQLCommand.FinalAccounts.BalanceSheetExcessDifferenceForMultiCurrency
                //            :SQL.ReportSQLCommand.FinalAccounts.BalanceSheetExcessDifference));
                // Chinna 06/02/2026, Chinna
                string BalanceSheet = this.GetFinalAccountsReportSQL((this.AppSetting.AllowMultiCurrency == 1 ? SQL.ReportSQLCommand.FinalAccounts.BalanceSheetExcessDifference
                            : SQL.ReportSQLCommand.FinalAccounts.BalanceSheetExcessDifference));
                using (DataManager dataManager = new DataManager())
                {
                    dataManager.Parameters.Add(this.ReportParameters.PROJECT_IDColumn, this.ReportProperties.Project);
                    dataManager.Parameters.Add(this.ReportParameters.DATE_FROMColumn, this.ReportProperties.DateAsOn);

                    //On 09/12/2024, To set Currnecy
                    if (this.AppSetting.AllowMultiCurrency == 1 && this.ReportProperties.CurrencyCountryId > 0)
                    {
                        dataManager.Parameters.Add(this.ReportParameters.CURRENCY_COUNTRY_IDColumn, this.ReportProperties.CurrencyCountryId);
                    }
                    else
                    {
                        dataManager.Parameters.Add(this.ReportParameters.CURRENCY_COUNTRY_IDColumn, "0");
                    }

                    dataManager.DataCommandArgs.IsDirectReplaceParameter = true;
                    resultArgs = dataManager.FetchData(DAO.Data.DataSource.DataTable, BalanceSheet);
                    if (resultArgs != null && resultArgs.Success)
                    {
                        DataTable dtResource = resultArgs.DataSource.Table;
                        double IESUM = this.UtilityMember.NumberSet.ToDouble(dtResource.Rows[0]["IESUM"].ToString());
                        ExcessCreditAmount = ExcessDebitAmount = 0;
                        if (IESUM < 0)
                        {
                            ExcessCreditAmount = Math.Abs(IESUM);
                        }
                        else
                        {
                            ExcessDebitAmount = IESUM;
                        }

                        if (ShouldShowSecondYearDisplayColumns())
                        {
                            ExcessCreditAmount = 0;
                            ExcessDebitAmount = 0;
                            if (ExcessOpCreditAmount > 0)
                            {
                                ExcessCreditAmount = ExcessOpCreditAmount;
                            }
                            else if (ExcessOpDebitAmount < 0)
                            {
                                ExcessDebitAmount = Math.Abs(ExcessOpDebitAmount);
                            }
                        }
                    }
                }
            }
        }

        private void GetBalanceSheetOpening()
        {
            if (LiabilityTotal != 0 || assetTotal != 0)
            {
                string BalanceOpening = this.GetFinalAccountsReportSQL(SQL.ReportSQLCommand.FinalAccounts.BalanceSheetExcessOpeningPeriod);
                using (DataManager dataManager = new DataManager())
                {
                    dataManager.Parameters.Add(this.ReportParameters.PROJECT_IDColumn, this.ReportProperties.Project);
                    dataManager.Parameters.Add(this.ReportParameters.DATE_AS_ONColumn, this.settingProperty.YearToPrevious);
                    dataManager.Parameters.Add(this.ReportParameters.TRANS_MODEColumn, "OP");

                    //On 09/12/2024, To set Currnecy
                    if (this.AppSetting.AllowMultiCurrency == 1 && this.ReportProperties.CurrencyCountryId > 0)
                    {
                        dataManager.Parameters.Add(this.ReportParameters.CURRENCY_COUNTRY_IDColumn, this.ReportProperties.CurrencyCountryId);
                    }
                    else
                    {
                        dataManager.Parameters.Add(this.ReportParameters.CURRENCY_COUNTRY_IDColumn, "0");
                    }

                    dataManager.DataCommandArgs.IsDirectReplaceParameter = true;
                    resultArgs = dataManager.FetchData(DAO.Data.DataSource.DataTable, BalanceOpening);
                    if (resultArgs != null && resultArgs.Success)
                    {
                        DataTable dtResource = resultArgs.DataSource.Table;
                        double CREDIT_SUM = this.UtilityMember.NumberSet.ToDouble(dtResource.Rows[0]["CREDIT"].ToString());
                        double DEBIT_SUM = this.UtilityMember.NumberSet.ToDouble(dtResource.Rows[0]["DEBIT"].ToString());
                        ExcessOpCreditAmount = ExcessOpDebitAmount = 0;
                        if (CREDIT_SUM > 0 && DEBIT_SUM == 0)
                        {
                            ExcessOpCreditAmount = CREDIT_SUM;
                        }
                        else
                        {
                            ExcessOpDebitAmount = -DEBIT_SUM;
                        }
                    }
                }
            }
        }

        private void GetBalanceSheetPeriod()
        {
            if (LiabilityTotal != 0 || assetTotal != 0)
            {
                string BalancePeriod = this.GetFinalAccountsReportSQL(SQL.ReportSQLCommand.FinalAccounts.BalanceSheetExcessOpeningPeriod);
                using (DataManager dataManager = new DataManager())
                {
                    dataManager.Parameters.Add(this.ReportParameters.PROJECT_IDColumn, this.ReportProperties.Project);
                    dataManager.Parameters.Add(this.ReportParameters.DATE_FROMColumn, this.settingProperty.YearFrom);
                    dataManager.Parameters.Add(this.ReportParameters.DATE_TOColumn, this.ReportProperties.DateAsOn);
                    dataManager.Parameters.Add(this.ReportParameters.TRANS_MODEColumn, "");

                    //On 09/12/2024, To set Currnecy
                    if (this.AppSetting.AllowMultiCurrency == 1 && this.ReportProperties.CurrencyCountryId > 0)
                    {
                        dataManager.Parameters.Add(this.ReportParameters.CURRENCY_COUNTRY_IDColumn, this.ReportProperties.CurrencyCountryId);
                    }
                    else
                    {
                        dataManager.Parameters.Add(this.ReportParameters.CURRENCY_COUNTRY_IDColumn, "0");
                    }

                    dataManager.DataCommandArgs.IsDirectReplaceParameter = true;
                    resultArgs = dataManager.FetchData(DAO.Data.DataSource.DataTable, BalancePeriod);
                    if (resultArgs != null && resultArgs.Success)
                    {
                        DataTable dtResource = resultArgs.DataSource.Table;
                        double CREDIT_SUM = this.UtilityMember.NumberSet.ToDouble(dtResource.Rows[0]["CREDIT"].ToString());
                        double DEBIT_SUM = this.UtilityMember.NumberSet.ToDouble(dtResource.Rows[0]["DEBIT"].ToString());
                        ExcessPeriodCreditAmount = ExcessPeriodDebitAmount = 0;
                        if (CREDIT_SUM > 0 && DEBIT_SUM == 0)
                        {
                            ExcessPeriodCreditAmount = CREDIT_SUM;
                        }
                        else
                        {
                            ExcessPeriodDebitAmount = -DEBIT_SUM;
                        }
                    }
                }
            }
        }

        #endregion


    }
}
