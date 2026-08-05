using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;

using Bosco.DAO;
using Bosco.Utility;
using Bosco.Report.Base;
using Bosco.Utility.ConfigSetting;
using Bosco.DAO.Data;
using DevExpress.XtraPrinting;
namespace Bosco.Report.ReportObject
{
    public partial class VoucherBankReceipts : Bosco.Report.Base.ReportHeaderBase
    {
        #region VariableDeclaration
        ResultArgs resultArgs = null;
        SettingProperty settings = new SettingProperty();
        double Creditamt = 0;
        double CashBankReceiptsAmt = 0;
        private Int32 NO_OF_LEDGERS_IN_VOUCHER_BEFORE_PAGEBREAK = 4; //5;
        DataTable dtDataSource = new DataTable();
        private Int32 voucherprojectid = 0;
        bool printedwithinsignlepage = false;

        private DataTable dtCCDetails = new DataTable();
        private bool PrevLedgerCCFound = false;

        string vouchercurrencysymbol = string.Empty;
        string vouchercurrencyname = string.Empty;
        private double InvoiceAmount = 0;
        #endregion

        #region Constructor
        public VoucherBankReceipts()
        {
            InitializeComponent();
            // BindReport();
            vouchercurrencysymbol = settingProperty.Currency;
            vouchercurrencyname = settingProperty.CurrencyName;
            xrCapAmount.Text = vouchercurrencysymbol;
        }


        private bool HideReportLogoLeft
        {
            set
            {
                //xrpicReportLogoLeft1.Visible = value;
                //xrpicReportLogoLeft1.Image = ImageProcessing.ByteArrayToImage(settings.AcMeERPLogo);

                // To Removed By chinna on 29.09.2020 
                //if (SettingProperty.branachOfficeCode == "sdbinminmdbc")
                //{
                //    // To be set the BoscoSoft Logo
                //}
                //else
                //{
                //    xrpicReportLogoLeft1.Image = ImageProcessing.ByteArrayToImage(settings.AcMeERPLogo);
                //    //xrpicReportLogoLeft1.WidthF = 500;
                //    //xrpicReportLogoLeft1.HeightF = 80;
                //}
            }
        }

        #endregion

        #region ShowReport
        public override void ShowReport()
        {
            if (this.ReportProperties.VoucherPrintShowLogo == "1")
            {
                HideReportLogoLeft = true;
            }
            else
            {
                HideReportLogoLeft = false;
            }
            this.HideReportHeader = this.HidePageFooter = false;
            BindReport();

            //On 02/03/2021, to show sign details 
            voucherprojectid = ReportProperty.Current.CashBankProjectId;
            ReportProperty.Current.IncludeSignDetails = 1;
            //(xrSubSignFooter.ReportSource as SignReportFooter).SignWidth = xrTblHeader.WidthF;// xrReportTitle.WidthF;
            //Project/Common Sign details
            //(xrSubSignFooter.ReportSource as SignReportFooter).ProjectId = voucherprojectid; //UtilityMember.NumberSet.ToInteger(ReportProperty.Current.Project);
            //(xrSubSignFooter.ReportSource as SignReportFooter).ShowSignDetails(true);
        }

        public override void ShowPrintDialogue()
        {
            this.HideReportHeader = this.HidePageFooter = false;
            BindReport();

            //On 02/03/2021, to show sign details 
            ReportProperty.Current.IncludeSignDetails = 1;
            voucherprojectid = UtilityMember.NumberSet.ToInteger(ReportProperty.Current.Project);
            //(xrSubSignFooter.ReportSource as SignReportFooter).SignWidth = xrTblHeader.WidthF;//xrReportTitle.WidthF;
            //Project/Common Sign details
            //(xrSubSignFooter.ReportSource as SignReportFooter).ProjectId = voucherprojectid; ;
            //(xrSubSignFooter.ReportSource as SignReportFooter).ShowSignDetails(true);

            // this.Print();
            //this.ShowPreviewDialog();
            this.ShowPreview();
            this.BringToFront();
        }
        #endregion

        #region Method
        private void BindReport(bool DuplicateCopy = false)
        {
            if (!string.IsNullOrEmpty(ReportProperties.PrintCashBankVoucherId))
            {
                xrlnDuplicatedDot.Visible = false;
                printedwithinsignlepage = false;

                //if (string.IsNullOrEmpty(this.AppSetting.DuplicateCopyVoucherPrint) || this.AppSetting.DuplicateCopyVoucherPrint == "0")
                if (string.IsNullOrEmpty(this.AppSetting.DuplicateCopyVoucherPrint) || this.AppSetting.DuplicateCopyVoucherPrint != "1")
                {
                    this.xrlnDuplicatedDot.Visible = false;
                    this.xrDuplicatePageBreak.Visible = false;
                    xrDuplicateCopy.Visible = false;
                }

                //04/05/2022, to set report title -----------------------------------------------------------------------------
                this.ReportProperties.HeaderInstituteSocietyName = 0;
                if (this.ReportProperties.VoucherPrintReportTitleType == "1" || this.ReportProperties.VoucherPrintReportTitleType == "0")
                {
                    this.ReportProperties.HeaderInstituteSocietyName = UtilityMember.NumberSet.ToInteger(this.ReportProperties.VoucherPrintReportTitleType);
                }
                this.ReportProperties.HeaderInstituteSocietyAddress = this.ReportProperties.HeaderInstituteSocietyName;
                //---------------------------------------------------------------------------------------------------------------

                //18/11/2024, to set report address -----------------------------------------------------------------------------
                //this.ReportProperties.HeaderInstituteSocietyAddress = 0;
                if (this.ReportProperties.VoucherPrintReportTitleAddress == "1" || this.ReportProperties.VoucherPrintReportTitleAddress == "0")
                {
                    this.ReportProperties.HeaderInstituteSocietyAddress = UtilityMember.NumberSet.ToInteger(this.ReportProperties.VoucherPrintReportTitleAddress);
                }
                //---------------------------------------------------------------------------------------------------------------

                setHeaderTitleAlignment();
                //xrlblInsName.Text = this.GetInstituteName();

                if (this.ReportProperties.VoucherPrintProject == "1")
                {
                    //xrHeaderProjectName.Text = ReportProperty.Current.ProjectTitle;
                }
                else
                {
                    //xrHeaderProjectName.Text = "";
                }

                // This is to show the Logo in the Voucher View Screen  (Chinna)
                //float titleLeft = xrpicReportLogoLeft1.LeftF;
                //float titleWidth = xrrCashBankRecPayDetails.WidthF;
                if (this.ReportProperties.VoucherPrintShowLogo == "1")
                {
                    HideReportLogoLeft = true;
                    //titleLeft = xrlblInsName.LeftF = xrlblInsAddress.LeftF = xrlblInsLegalDetails.LeftF = xrHeaderProjectName.LeftF = xrpicReportLogoLeft1.LeftF + xrpicReportLogoLeft1.WidthF;
                    //titleWidth = xrlblInsName.WidthF = xrlblInsAddress.WidthF = xrlblInsLegalDetails.WidthF = xrHeaderProjectName.WidthF = (xrrCashBankRecPayDetails.WidthF - (xrpicReportLogoLeft1.LeftF + xrpicReportLogoLeft1.WidthF));
                }
                else
                {
                    HideReportLogoLeft = false;
                }
                //xrlblInsName.LeftF = xrlblInsAddress.LeftF = xrlblInsLegalDetails.LeftF = xrHeaderProjectName.LeftF = xrReportTitle.LeftF = titleLeft;
                //xrlblInsName.WidthF = xrlblInsAddress.WidthF = xrlblInsLegalDetails.WidthF = xrHeaderProjectName.WidthF = xrReportTitle.WidthF = titleWidth;
                //xrReportTitle.Borders = xrlblInsName.Borders = xrlblInsAddress.Borders = BorderSide.All;
                this.HideReportHeader = this.HidePageFooter = false;

                xrlblInsAddress.Text = ReportProperty.Current.LegalAddress;
               // xrlblInsLegalDetails.Text = ReportProperty.Current.VoucherPrintLegalEntityFieldsDetails;

                //13/07/2021, Hide Reuire Sign note
                //xrTblRequireSignNote.Visible = !ReportProperty.Current.HideReportSignNoteInFooter;
                //if (xrTblRequireSignNote.Visible)
                //{
                //    if (ReportProperty.Current.Sign1Image==null && ReportProperty.Current.Sign2Image==null &&
                //        ReportProperty.Current.Sign3Image==null && ReportProperty.Current.Sign4Image==null && ReportProperty.Current.Sign5Image==null)
                //    xrTblRequireSignNote.Visible =false;
                //}

                resultArgs = BindCashBankReceipts();
                if (resultArgs.DataSource != null && resultArgs.DataSource.Table.Rows.Count > 0)
                {
                    resultArgs.DataSource.Table.TableName = "CashBankReceipts";
                    dtDataSource = resultArgs.DataSource.Table;
                    this.DataSource = resultArgs.DataSource.Table;
                    this.DataMember = resultArgs.DataSource.Table.TableName;

                    if (dtDataSource.Columns.Contains("CURRENCY_SYMBOL")) //xrCapAmount xrcellSumTotalCurrencySymbol
                    {
                        xrCapAmount.Text = dtDataSource.Rows[0]["CURRENCY_SYMBOL"].ToString();
                    }

                    if (dtDataSource.Columns.Contains("CURRENCY_SYMBOL") && dtDataSource.Rows.Count > 0)
                    {
                        vouchercurrencysymbol = dtDataSource.Rows[0]["CURRENCY_SYMBOL"].ToString();
                        if (!string.IsNullOrWhiteSpace(vouchercurrencysymbol))
                        {
                            xrCapAmount.Text = string.Format("({0}) Amount", vouchercurrencysymbol);
                        }
                        else
                        {
                            xrCapAmount.Text = "Amount";
                        }
                    }

                    if (dtDataSource.Columns.Contains("CURRENCY_NAME") && dtDataSource.Rows.Count > 0)
                    {
                        vouchercurrencyname = dtDataSource.Rows[0]["CURRENCY_NAME"].ToString();
                    }
                }
                this.SetCurrencyFormat(xrTableCell11.Text, xrTableCell11);
                //Set Main and Sub Report settings
                //SetReportSetting(cashbankrec);
                base.ShowReport();
            }
            else
            {
               // xrHeaderProjectName.Text = settings.InstituteName;
                ShowFiancialReportFilterDialog();
            }
        }

        private void SetReportSetting(CashBankReceiptPaymentDetails cashbankrec)
        {
            //Caption Font Style
            //lblVoucherNoCaption.Font = (this.ReportProperties.VoucherPrintCaptionBold == "1") ? new Font(lblVoucherNoCaption.Font.FontFamily, lblVoucherNoCaption.Font.Size, FontStyle.Bold)
            //    : new Font(lblVoucherNoCaption.Font.FontFamily, lblVoucherNoCaption.Font.Size, FontStyle.Regular);
            //// lblFundProjectcodeCaption.Font = (this.ReportProperties.VoucherPrintCaptionBold == "1") ? new Font(lblFundProjectcodeCaption.Font.FontFamily, lblFundProjectcodeCaption.Font.Size, FontStyle.Bold)
            ////  : new Font(lblFundProjectcodeCaption.Font.FontFamily, lblFundProjectcodeCaption.Font.Size, FontStyle.Regular);
            //lblVoucherDateCaption.Font = (this.ReportProperties.VoucherPrintCaptionBold == "1") ? new Font(lblVoucherDateCaption.Font.FontFamily, lblVoucherDateCaption.Font.Size, FontStyle.Bold)
            //    : new Font(lblVoucherDateCaption.Font.FontFamily, lblVoucherDateCaption.Font.Size, FontStyle.Regular);
            //lblParticularsCaption.Font = (this.ReportProperties.VoucherPrintCaptionBold == "1") ? new Font(lblParticularsCaption.Font.FontFamily, lblParticularsCaption.Font.Size, FontStyle.Bold)
            //    : new Font(lblParticularsCaption.Font.FontFamily, lblParticularsCaption.Font.Size, FontStyle.Regular);
            //lblAmountCaption.Font = (this.ReportProperties.VoucherPrintCaptionBold == "1") ? new Font(lblAmountCaption.Font.FontFamily, lblAmountCaption.Font.Size, FontStyle.Bold)
            //    : new Font(lblAmountCaption.Font.FontFamily, lblAmountCaption.Font.Size, FontStyle.Regular);
            //xrlblTotal.Font = (this.ReportProperties.VoucherPrintCaptionBold == "1") ? new Font(xrlblTotal.Font.FontFamily, xrlblTotal.Font.Size, FontStyle.Bold)
            //   : new Font(xrlblTotal.Font.FontFamily, xrlblTotal.Font.Size, FontStyle.Regular);
            //lblReceivedFromCaption.Font = (this.ReportProperties.VoucherPrintCaptionBold == "1") ? new Font(lblReceivedFromCaption.Font.FontFamily, lblReceivedFromCaption.Font.Size, FontStyle.Bold)
            //    : new Font(lblReceivedFromCaption.Font.FontFamily, lblReceivedFromCaption.Font.Size, FontStyle.Regular);
            //lblSumCaption.Font = (this.ReportProperties.VoucherPrintCaptionBold == "1") ? new Font(lblSumCaption.Font.FontFamily, lblSumCaption.Font.Size, FontStyle.Bold)
            //    : new Font(lblSumCaption.Font.FontFamily, lblSumCaption.Font.Size, FontStyle.Regular);
            ////lblDrawnOnCaption.Font = (this.ReportProperties.VoucherPrintCaptionBold == "1") ? new Font(lblDrawnOnCaption.Font.FontFamily, lblDrawnOnCaption.Font.Size, FontStyle.Bold)
            ////    : new Font(lblDrawnOnCaption.Font.FontFamily, lblDrawnOnCaption.Font.Size, FontStyle.Regular);
            //lblNarrationCaption.Font = (this.ReportProperties.VoucherPrintCaptionBold == "1") ? new Font(lblNarrationCaption.Font.FontFamily, lblNarrationCaption.Font.Size, FontStyle.Bold)
            //    : new Font(lblNarrationCaption.Font.FontFamily, lblNarrationCaption.Font.Size, FontStyle.Regular);
            //lblPan.Font = (this.ReportProperties.VoucherPrintCaptionBold == "1") ? new Font(lblPan.Font.FontFamily, lblPan.Font.Size, FontStyle.Bold)
            //   : new Font(lblPan.Font.FontFamily, lblPan.Font.Size, FontStyle.Regular);
            //lblGST.Font = (this.ReportProperties.VoucherPrintCaptionBold == "1") ? new Font(lblGST.Font.FontFamily, lblGST.Font.Size, FontStyle.Bold)
            //   : new Font(lblGST.Font.FontFamily, lblGST.Font.Size, FontStyle.Regular);
            ////Value Font Style
            //lblVoucherNo.Font = (this.ReportProperties.VoucherPrintValueBold == "1") ? new Font(lblVoucherNo.Font.FontFamily, lblVoucherNo.Font.Size, FontStyle.Bold)
            //    : new Font(lblVoucherNo.Font.FontFamily, lblVoucherNo.Font.Size, FontStyle.Regular);
            //lblProjectCode.Font = (this.ReportProperties.VoucherPrintValueBold == "1") ? new Font(lblProjectCode.Font.FontFamily, lblProjectCode.Font.Size, FontStyle.Bold)
            //    : new Font(lblProjectCode.Font.FontFamily, lblProjectCode.Font.Size, FontStyle.Regular);
            //lblVoucherDate.Font = (this.ReportProperties.VoucherPrintValueBold == "1") ? new Font(lblVoucherDate.Font.FontFamily, lblVoucherDate.Font.Size, FontStyle.Bold)
            //    : new Font(lblVoucherDate.Font.FontFamily, lblVoucherDate.Font.Size, FontStyle.Regular);
            //xrtblLedger.Font = (this.ReportProperties.VoucherPrintValueBold == "1") ? new Font(xrtblLedger.Font.FontFamily, xrtblLedger.Font.Size, FontStyle.Bold)
            //    : new Font(xrtblLedger.Font.FontFamily, xrtblLedger.Font.Size, FontStyle.Regular);
            //xrtblProFundCode.Font = (this.ReportProperties.VoucherPrintValueBold == "1") ? new Font(xrtblProFundCode.Font.FontFamily, xrtblProFundCode.Font.Size, FontStyle.Bold)
            //    : new Font(xrtblProFundCode.Font.FontFamily, xrtblProFundCode.Font.Size, FontStyle.Regular);
            //lblReceivedFrom.Font = (this.ReportProperties.VoucherPrintValueBold == "1") ? new Font(lblReceivedFrom.Font.FontFamily, lblReceivedFrom.Font.Size, FontStyle.Bold)
            //   : new Font(lblReceivedFrom.Font.FontFamily, lblReceivedFrom.Font.Size, FontStyle.Regular);
            //lblSum.Font = (this.ReportProperties.VoucherPrintValueBold == "1") ? new Font(lblSum.Font.FontFamily, lblSum.Font.Size, FontStyle.Bold)
            //   : new Font(lblSum.Font.FontFamily, lblSum.Font.Size, FontStyle.Regular);
            ////lblDrawnOn.Font = (this.ReportProperties.VoucherPrintValueBold == "1") ? new Font(lblDrawnOn.Font.FontFamily, lblDrawnOn.Font.Size, FontStyle.Bold)
            ////   : new Font(lblDrawnOn.Font.FontFamily, lblDrawnOn.Font.Size, FontStyle.Regular);
            //lblNarration.Font = (this.ReportProperties.VoucherPrintValueBold == "1") ? new Font(lblNarration.Font.FontFamily, lblNarration.Font.Size, FontStyle.Bold)
            //   : new Font(lblNarration.Font.FontFamily, lblNarration.Font.Size, FontStyle.Regular);

            //Signatures
            //On 02/03/2021, to hide Row1, Row2 and Row3 Voucher Print settings and will have common Sign Details from Finance Settings) 
            /*
            if (string.IsNullOrEmpty(this.ReportProperties.VoucherPrintSign1Row1) && string.IsNullOrEmpty(this.ReportProperties.VoucherPrintSign1Row2) &&
                string.IsNullOrEmpty(this.ReportProperties.VoucherPrintSign2Row1) && string.IsNullOrEmpty(this.ReportProperties.VoucherPrintSign2Row2) &&
                string.IsNullOrEmpty(this.ReportProperties.VoucherPrintSign3Row1) && string.IsNullOrEmpty(this.ReportProperties.VoucherPrintSign3Row2))
            {
                lblSign1.Borders = lblSign2.Borders = lblSign3.Borders = BorderSide.Top;
            }
            else
            {
                lblSign1.Borders = lblSign2.Borders = lblSign3.Borders = BorderSide.All;
            }

            lblSign1.Text = this.ReportProperties.VoucherPrintSign1Row1 + Environment.NewLine + this.ReportProperties.VoucherPrintSign1Row2;
            lblSign2.Text = this.ReportProperties.VoucherPrintSign2Row1 + Environment.NewLine + this.ReportProperties.VoucherPrintSign2Row2;
            lblSign3.Text = this.ReportProperties.VoucherPrintSign3Row1 + Environment.NewLine + this.ReportProperties.VoucherPrintSign3Row2;*/

            //Set Sub Report column width
            //cashbankrec.CodeLedgerWidth = lblParticularsCaption.WidthF - cashbankrec.ColumnThroughWidth;
            cashbankrec.CodeLedgerAmountWidth = xrtblAmount.WidthF; //323.90f;
            //cashbankrec.CashBankLedgerTableWidth = xrTable3.WidthF;

            //this.SetCurrencyFormat(lblAmountCaption.Text, lblAmountCaption);
        }

        public ResultArgs BindCashBankReceipts()
        {
            string CashBankReceipts = this.GetReportCashBankVoucher(SQL.ReportSQLCommand.CashBankVoucher.FetchBankVoucherOnly);
            string vids = this.ReportProperties.PrintCashBankVoucherId;
            //bharath 10/02/2026 Language Update
            int displayInputLanguage = this.UtilityMember.NumberSet.ToInteger(this.AppSetting.DisplayInputLanguage);

            using (DataManager dataManager = new DataManager())
            {
                //dataManager.Parameters.Add(this.ReportParameters.PROJECT_IDColumn, this.ReportProperties.Project);
                //dataManager.Parameters.Add(this.ReportParameters.DATE_AS_ONColumn, this.ReportProperties.DateAsOn);
                dataManager.Parameters.Add(this.reportSetting1.FC6PURPOSELIST.VOUCHER_IDColumn, vids);
                dataManager.Parameters.Add(this.ReportParameters.DATE_TOColumn, this.ReportProperties.CashBankVoucherDateTo);
                dataManager.Parameters.Add(this.appSchema.Project.DISPLAY_INPUT_LANColumn, SettingProperty.Current.DisplayInputLanguage == "1" ? 1 : 0); //Dinesh 
                dataManager.DataCommandArgs.IsDirectReplaceParameter = true;
                if (this.AppSetting.DisplayInputLanguage == "1")
                {
                    dataManager.Parameters.Add(this.ReportParameters.DISPLAY_INPUT_LANColumn, 1);
                }
                else
                {
                    dataManager.Parameters.Add(this.ReportParameters.DISPLAY_INPUT_LANColumn, 0);
                }

                resultArgs = dataManager.FetchData(DAO.Data.DataSource.DataTable, CashBankReceipts);
                if (resultArgs.Success && resultArgs.DataSource.Table != null)
                {
                    DataTable dtReceiptPrint = resultArgs.DataSource.Table;
                    //On 09/07/2024, for nullify vouchers, get pure amount alone
                    dtReceiptPrint.DefaultView.RowFilter = reportSetting1.CashBankReceipts.AMOUNTColumn.ColumnName + ">0 OR " + reportSetting1.CashBankReceipts.CASH_BANK_AMOUNTColumn.ColumnName + ">0";
                    dtReceiptPrint = dtReceiptPrint.DefaultView.ToTable();
                    resultArgs.DataSource.Data = dtReceiptPrint;
                    this.ReportProperties.CashBankJouranlByVoucher = dtReceiptPrint;
                }
                this.ReportProperties.PrintCashBankVoucherId = string.Empty;
            }
            return resultArgs;
        }

        /// <summary>
        /// On 10/05/2022 to check double entry or not for concern Voucherid
        /// </summary>
        /// <param name="vid"></param>
        /// <returns></returns>
        private bool IsDoubleEntry(Int32 vid)
        {
            bool rtn = false;
            if (this.DataSource != null && vid > 0)
            {
                DataTable dtRpt = this.DataSource as DataTable;
                DataTable dt = dtRpt.DefaultView.ToTable();
                dt.DefaultView.RowFilter = this.reportSetting1.CashBankReceipts.VOUCHER_IDColumn.ColumnName + " = " + vid +
                                            " AND " + this.reportSetting1.CashBankReceipts.AMOUNTColumn.ColumnName + " <= 0";

                rtn = (dt.DefaultView.Count > 0);
            }
            return rtn;
        }

        #endregion

        
        private void xrCashBankRecPayDetails_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //((CashBankReceiptPaymentDetails)((XRSubreport)sender).ReportSource).PrintVoucherId = Convert.ToInt32(GetCurrentColumnValue("VOUCHER_ID"));
            ////((CashBankReceiptPaymentDetails)((XRSubreport)sender).ReportSource).currency = this.SetCurrencyFormat("", new XRTableCell());
            //((CashBankReceiptPaymentDetails)((XRSubreport)sender).ReportSource).ColumnThroughWidth = lblReceivedFromCaption.WidthF - 1;
        }

        private void xrDuplicateCopy_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.AppSetting.DuplicateCopyVoucherPrint == "1")
            {
                this.ReportProperties.PrintCashBankVoucherId = GetCurrentColumnValue("VOUCHER_ID").ToString();
                this.ReportProperties.Project = voucherprojectid.ToString();
                ((VoucherBankReceiptsSub)((XRSubreport)sender).ReportSource).BindReport(true);
            }
        }

        private void xrDuplicatePageBreak_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //If singe voucher containts more that 8 Records, it will break to next page
            if (this.AppSetting.DuplicateCopyVoucherPrint == "1")
            {
                this.xrDuplicatePageBreak.Visible = (GetLedgersCountInVoucher() > NO_OF_LEDGERS_IN_VOUCHER_BEFORE_PAGEBREAK);
            }
        }

        private void xrlnDuplicatedDot_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.AppSetting.DuplicateCopyVoucherPrint == "1")
            {
                xrlnDuplicatedDot.Visible = !(GetLedgersCountInVoucher() > NO_OF_LEDGERS_IN_VOUCHER_BEFORE_PAGEBREAK);
            }
        }

        private Int32 GetLedgersCountInVoucher()
        {
            Int32 Rtn = 0;
            if (GetCurrentColumnValue("VOUCHER_ID") != null && this.dtDataSource != null)
            {
                Int32 voucherid = UtilityMember.NumberSet.ToInteger(GetCurrentColumnValue("VOUCHER_ID").ToString());
                this.dtDataSource.DefaultView.RowFilter = "VOUCHER_ID IN (" + voucherid + ")"; ;
                Rtn = this.dtDataSource.DefaultView.Count + GetCCCountInVoucher(voucherid); ;
                this.dtDataSource.DefaultView.RowFilter = string.Empty;
            }
            return Rtn;
        }

        private Int32 GetLedgersCountInNextVoucher()
        {
            Int32 Rtn = 0;
            if (GetNextColumnValue("VOUCHER_ID") != null && this.dtDataSource != null)
            {
                Int32 voucherid = UtilityMember.NumberSet.ToInteger(GetNextColumnValue("VOUCHER_ID").ToString());
                this.dtDataSource.DefaultView.RowFilter = "VOUCHER_ID IN (" + voucherid + ")"; ;
                Rtn = this.dtDataSource.DefaultView.Count + GetCCCountInVoucher(voucherid);
                this.dtDataSource.DefaultView.RowFilter = string.Empty;
            }
            return Rtn;
        }

        /// <summary>
        /// On 09/10/2023, To get number of CCs in Voucher
        /// </summary>
        /// <param name="vid"></param>
        /// <returns></returns>
        private Int32 GetCCCountInVoucher(Int32 vid)
        {
            Int32 Rtn = 0;
            if (GetNextColumnValue("VOUCHER_ID") != null && this.dtDataSource != null && dtCCDetails.Rows.Count > 0)
            {
                dtCCDetails.DefaultView.RowFilter = "VOUCHER_ID IN (" + vid + ")"; ;
                Rtn = dtCCDetails.DefaultView.Count;
                dtCCDetails.DefaultView.RowFilter = string.Empty;
            }
            return Rtn;
        }

        private void xrTblRequireSignNote_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            /*
            //13/07/2021, Hide Reuire Sign note
            xrTblRequireSignNote.Visible = !ReportProperty.Current.HideReportSignNoteInFooter;
            */
        }

        private void xrtblProFundCode_EvaluateBinding(object sender, BindingEventArgs e)
        {
            //if (this.dtDataSource != null && GetCurrentColumnValue(this.reportSetting1.CashBankReceipts.AMOUNTColumn.ColumnName) != null)
            //{
            //    //If double entry, show cr and dr
            //    Int32 vid = UtilityMember.NumberSet.ToInteger(GetCurrentColumnValue(this.reportSetting1.CashBankReceipts.VOUCHER_IDColumn.ColumnName).ToString());
            //    if (IsDoubleEntry(vid))
            //    {
            //        double amt = UtilityMember.NumberSet.ToDouble(GetCurrentColumnValue(this.reportSetting1.CashBankReceipts.AMOUNTColumn.ColumnName).ToString());
            //        if (amt <= 0)
            //        {
            //            e.Value = UtilityMember.NumberSet.ToNumber(Math.Abs(amt)) + " Dr";
            //        }
            //        else
            //        {
            //            e.Value = UtilityMember.NumberSet.ToNumber(amt) + " Cr";
            //        }
            //    }
            //}
        }

        private void ProperBorderForLedgerRow(bool ccFound)
        {
            //if (ccFound)
            //{
            //    xrtblLedger.Borders = BorderSide.Top | BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
            //    xrtblProFundCode.Borders = BorderSide.Top | BorderSide.Right | BorderSide.Bottom;
            //}
            //else
            //{
            //    xrtblLedger.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
            //    xrtblProFundCode.Borders = BorderSide.Right | BorderSide.Bottom;
            //}
        }

        private void GroupFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //if (this.AppSetting.DuplicateCopyVoucherPrint == "2")
            //{
            //    if (GetCurrentColumnValue("VOUCHER_ID") != null && this.dtDataSource != null)
            //    {
            //        GroupFooterBand grpFooter = sender as GroupFooterBand;
            //        Int32 NoOfVouchersLedgters = GetLedgersCountInVoucher();
            //        Int32 NoOfNextVouchersLedgters = GetLedgersCountInNextVoucher();

            //        /*for (int i = 1; i < xrTblNarration.Rows.Count; i++)
            //        {
            //            xrTblNarration.Rows.Remove(xrTblNarration.Rows[i]);
            //        }*/

            //        if (!printedwithinsignlepage && NoOfVouchersLedgters <= NO_OF_LEDGERS_IN_VOUCHER_BEFORE_PAGEBREAK
            //            && NoOfNextVouchersLedgters <= NO_OF_LEDGERS_IN_VOUCHER_BEFORE_PAGEBREAK)
            //        {
            //            Int32 NoOfEmptyRows = (NO_OF_LEDGERS_IN_VOUCHER_BEFORE_PAGEBREAK - NoOfVouchersLedgters);
            //            if (NoOfEmptyRows > 0)
            //            {
            //                /*for (int i = 1; i <= NoOfEmptyRows; i++)
            //                {
            //                    XRTableRow emptyrow = new XRTableRow();
            //                    XRTableCell cell = new XRTableCell();
            //                    emptyrow.Borders = BorderSide.None;
            //                    cell.Text = " ";
            //                    emptyrow.Cells.Add(cell);
            //                    emptyrow.HeightF = xrTblNarration.Rows[0].HeightF;
            //                    xrTblNarration.Rows.Add(emptyrow);
            //                }*/
            //            }
            //            xrVouhcerPageBreak.Visible = false;
            //            printedwithinsignlepage = true;
            //            xrlnDuplicatedDot.Visible = true;
            //        }
            //        else
            //        {
            //            xrVouhcerPageBreak.Visible = true;
            //            printedwithinsignlepage = false;
            //            xrlnDuplicatedDot.Visible = false;
            //        }
            //    }
            //}
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void Detail_AfterPrint(object sender, EventArgs e)
        {

        }
        
        private void xrtblAmountWords_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            XRLabel xrlbl = sender as XRLabel;
            if (xrlbl == null)
                return;
            object amountValue = GetCurrentColumnValue("totSUM"); //AMOUNT
            if(amountValue == null || amountValue == DBNull.Value)
            {
                xrlbl.Text = "";
                return;
            }
            decimal invoiceAmount = Convert.ToDecimal(amountValue);
            ConvertRuppessInWord.VoucherCurrencySymbol = vouchercurrencysymbol;
            ConvertRuppessInWord.VoucherCurrencyName = vouchercurrencyname;
            xrlbl.Text = ConvertRuppessInWord.GetRupeesToWord(invoiceAmount.ToString());
        }

        private void xrtblGrandtotal_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

    }
}

