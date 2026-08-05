using System;

using System.Drawing;

using System.Collections;

using System.Collections.Generic;

using System.ComponentModel;

using DevExpress.XtraReports.UI;

using Bosco.Report.Base;

using DevExpress.XtraSplashScreen;

using Bosco.Report.View;

using DevExpress.XtraPrinting;



namespace Bosco.Report.ReportObject
{

    public partial class RPDuplicate : Bosco.Report.Base.ReportHeaderBase
    {

        //22/05/2026, Chinna - Opening/Closing balance column layout synced from xrtbleHeader
        private sealed class HeaderSectionLayout
        {

            public XRTableCell CodeCell;

            public XRTableCell ParticularCell;

            public XRTableCell CashCell;

            public XRTableCell BankCell;

            public float SectionLeft;

            public float SectionWidth;

            public float CodeColumnWidth;

            public float ParticularColumnWidth;

            public float CashColumnWidth;

            public float BankColumnWidth;

        }

        //22/05/2026, Chinna
        private struct SectionColumnWidths
        {
            public float Code;
            public float Particular;
            public float Cash;
            public float Bank;

            public float Total
            {
                get { return Code + Particular + Cash + Bank; }
            }
        }



        public RPDuplicate()
        {

            InitializeComponent();

            this.SetTitleWidth(xrSubMultiAbstractReceipt.WidthF);

            //22/05/2026, Chinna - Caption from pivot; re-sync columns on BeforePrint
            xrCapOpening.Visible = true;

            xrCapClosingBalance.Visible = true;

            grpOpeningBalance.BeforePrint += grpOpeningBalance_BeforePrint;

            grpClosingBalance.BeforePrint += grpClosingBalance_BeforePrint;

            PageHeader.BeforePrint += PageHeader_BeforePrint;
            StabilizeParentDetailLayout();

        }



        public override void ShowReport()
        {

            //22/05/2026, Chinna - Single bind path; one ShowReport after opening/closing alignment
            if (!BindReportData())

                return;



            FixReportPropertyForCMF();

            this.SetLandscapeHeader = this.SetLandscapeFooter = this.SetLandscapeFooterDateWidth = this.PageWidth - 15;

            this.SetTitleWidth(this.PageWidth - 15);

            base.ShowReport();

        }



        //22/05/2026, Chinna
        private bool BindReportData()
        {

            SetReportTitle();

            this.HideReportDate = ReportProperties.ReportDate != string.Empty ? true : false;

            this.SetReportDate = ReportProperties.ReportDate != string.Empty ? this.UtilityMember.DateSet.ToDate(ReportProperties.ReportDate, false).ToShortDateString() : string.Empty;



            if (String.IsNullOrEmpty(this.ReportProperties.DateFrom) || String.IsNullOrEmpty(this.ReportProperties.DateTo)

                || String.IsNullOrEmpty(this.ReportProperties.Project))
            {

                ShowReportFilterDialog();

                return false;

            }



            if (this.UIAppSetting.UICustomizationForm == "1" && ReportProperty.Current.ReportFlag != 0)
            {

                ShowReportFilterDialog();

                return false;

            }



            //22/05/2026, Chinna - Page header and detail subreports must share the same horizontal origin
            SyncPageHeaderWithDetailSubreports();

            ConfigureReceiptDetailColumns();

            ConfigurePaymentDetailColumns();



            bool showWait = (this.UIAppSetting.UICustomizationForm == "1");

            if (showWait)

                SplashScreenManager.ShowForm(typeof(frmReportWait));



            try
            {

                //22/05/2026, Chinna - Detail subreports first so balance pivot uses their published column widths
                BindReceiptDetailSection();

                BindPaymentDetailSection();

                BindOpeningBalanceSection();

                BindClosingBalanceSection();

                //22/05/2026, Chinna - Final pass when header cell WidthF values are resolved
                SyncEntireReportColumnLayout();

            }

            finally
            {

                if (showWait)

                    SplashScreenManager.CloseForm();

            }



            return true;

        }



        //22/05/2026, Chinna
        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            SyncEntireReportColumnLayout();
        }

        //22/05/2026, Chinna - One layout pass: header geometry + detail tables + balance pivot
        private void SyncEntireReportColumnLayout()
        {
            SyncPageHeaderWithDetailSubreports();
            ConfigureReceiptDetailColumns();
            ConfigurePaymentDetailColumns();
            ApplyDetailSubreportsFromHeaderCells();

            RPDuplicateNewAccountBalanceOPCLCashBank opening = xrSubOpeningBalance.ReportSource as RPDuplicateNewAccountBalanceOPCLCashBank;
            if (opening != null)
            {
                ApplyBalanceSubreportFromHeaderCells(xrSubOpeningBalance, opening, true);
                opening.RefreshLockedPivotLayout();
            }

            RPDuplicateNewAccountBalanceOPCLCashBank closing = xrSubClosingBalance.ReportSource as RPDuplicateNewAccountBalanceOPCLCashBank;
            if (closing != null)
            {
                ApplyBalanceSubreportFromHeaderCells(xrSubClosingBalance, closing, false);
                closing.RefreshLockedPivotLayout();
            }
        }

        //22/05/2026, Chinna - Scale Code/Particular/Cash/Bank proportionally; header cells match data columns
        private static SectionColumnWidths ScaleSectionColumns(SectionColumnWidths columns, float targetWidth)
        {
            if (targetWidth <= 0f || columns.Total <= 0f)
                return columns;

            float scale = targetWidth / columns.Total;
            columns.Code *= scale;
            columns.Particular *= scale;
            columns.Cash *= scale;
            columns.Bank *= scale;
            return columns;
        }

        private static void ApplyHeaderCells(SectionColumnWidths columns, XRTableCell codeCell, XRTableCell particularCell, XRTableCell cashCell, XRTableCell bankCell)
        {
            if (codeCell != null)
                codeCell.WidthF = columns.Code;
            if (particularCell != null)
                particularCell.WidthF = columns.Particular;
            if (cashCell != null)
                cashCell.WidthF = columns.Cash;
            if (bankCell != null)
                bankCell.WidthF = columns.Bank;
        }

        //22/05/2026, Chinna - Subreport bounds + header table widths stay in sync with detail/pivot
        private void SyncPageHeaderWithDetailSubreports()
        {
            xrtbleHeader.LeftF = xrSubMultiAbstractReceipt.LeftF;

            float receiptLeft = GetTableCellLeftF(xrtbleHeader, xrCapRcCode);
            float paymentLeftBefore = GetTableCellLeftF(xrtbleHeader, xrCapPYCode);
            float receiptTargetWidth = paymentLeftBefore - receiptLeft;
            float headerRight = xrtbleHeader.LeftF + xrtbleHeader.WidthF;

            SectionColumnWidths receiptColumns = ScaleSectionColumns(
                new SectionColumnWidths
                {
                    Code = xrCapRcCode.WidthF,
                    Particular = xrCapRcParticular.WidthF,
                    Cash = xrCapRcCash.WidthF,
                    Bank = xrCapRcBank.WidthF
                },
                receiptTargetWidth);

            ApplyHeaderCells(receiptColumns, xrCapRcCode, xrCapRcParticular, xrCapRcCash, xrCapRcBank);

            float paymentLeft = receiptLeft + receiptColumns.Total;
            float paymentTargetWidth = headerRight - paymentLeft;

            SectionColumnWidths paymentColumns = ScaleSectionColumns(
                new SectionColumnWidths
                {
                    Code = xrCapPYCode.WidthF,
                    Particular = xrCapPYParticular.WidthF,
                    Cash = xrCapPYCash.WidthF,
                    Bank = xrCapPYBank.WidthF
                },
                paymentTargetWidth);

            ApplyHeaderCells(paymentColumns, xrCapPYCode, xrCapPYParticular, xrCapPYCash, xrCapPYBank);

            xrSubMultiAbstractReceipt.LeftF = receiptLeft;
            xrSubOpeningBalance.LeftF = receiptLeft;
            xrSubMultiAbstractReceipt.WidthF = receiptColumns.Total;
            xrSubOpeningBalance.WidthF = receiptColumns.Total;

            xrSubMultiAbstractPayment.LeftF = paymentLeft;
            xrSubClosingBalance.LeftF = paymentLeft;
            xrSubMultiAbstractPayment.WidthF = paymentColumns.Total;
            xrSubClosingBalance.WidthF = paymentColumns.Total;
        }

        //22/05/2026, Chinna
        private void ApplyDetailSubreportsFromHeaderCells()
        {
            RPDuplicateNewAbstractReceiptsCashandBank receipt = xrSubMultiAbstractReceipt.ReportSource as RPDuplicateNewAbstractReceiptsCashandBank;
            if (receipt != null)
            {
                receipt.ApplyHeaderColumnLayout(
                    xrCapRcCode.WidthF,
                    xrCapRcParticular.WidthF,
                    xrCapRcCash.WidthF,
                    xrCapRcBank.WidthF,
                    xrSubMultiAbstractReceipt.WidthF);
            }

            RPDuplicateNewAbstractPaymentsCashandBank payment = xrSubMultiAbstractPayment.ReportSource as RPDuplicateNewAbstractPaymentsCashandBank;
            if (payment != null)
            {
                payment.ApplyHeaderColumnLayout(
                    xrCapPYCode.WidthF,
                    xrCapPYParticular.WidthF,
                    xrCapPYCash.WidthF,
                    xrCapPYBank.WidthF,
                    xrSubMultiAbstractPayment.WidthF);
            }
            // #Dinesh 26-05-2026 - Phase 1: lock ledger/group row heights in child subreports
            if (receipt != null)
            {
                receipt.ApplyPhase1LayoutStabilization();
            }

            if (payment != null)
            {
                payment.ApplyPhase1LayoutStabilization();
            }
            StabilizeParentDetailLayout();
        }

        private void ConfigureReceiptDetailColumns()
        {

            RPDuplicateNewAbstractReceiptsCashandBank receiptDup = xrSubMultiAbstractReceipt.ReportSource as RPDuplicateNewAbstractReceiptsCashandBank;

            if (receiptDup == null)
                return;
            //receiptDup.CodeColumnWidth = xrCapRcCode.WidthF;
            //receiptDup.NameColumnWidth = xrCapRcParticular.WidthF;
            ////22/05/2026, Chinna - Exact header Cash/Bank widths (+17/-6 shifted columns away from xrtbleHeader)
            //receiptDup.AmountColumnWidth = xrCapRcCash.WidthF;
            //receiptDup.bankAmountColumnWidth = xrCapRcBank.WidthF;
            //if (ReportProperties.ShowByLedgerGroup == 1)
            //{
            //    //receiptDup.GroupNameColumnWidth = xrCapRcParticular.WidthF + xrCapRcCode.WidthF + xrCapRcCash.WidthF + xrCapRcBank.WidthF;
            //    receiptDup.GroupNameColumnWidth = xrCapRcParticular.WidthF + xrCapRcCode.WidthF + 6; // +xrCapRcBank.WidthF;
            //    receiptDup.LedgerGroupCashAmountColumnwidth = xrCapRcCash.WidthF - 15; //Bank Tot //RC Part 
            //    receiptDup.LedgerGroupBankAmtColumnWidth = xrCapRcBank.WidthF; //Cash TotxrCapRcCash
            //}
            //receiptDup.HideReceiptReportHeader();
            receiptDup.SyncReceiptColumnWidths(
               xrCapRcCode.WidthF,
               xrCapRcParticular.WidthF,
               xrCapRcCash.WidthF,
               xrCapRcBank.WidthF,
               xrSubMultiAbstractReceipt.WidthF);
            receiptDup.HideReceiptReportHeader();
        }

        private void ConfigurePaymentDetailColumns()
        {

            RPDuplicateNewAbstractPaymentsCashandBank paymentsDup = xrSubMultiAbstractPayment.ReportSource as RPDuplicateNewAbstractPaymentsCashandBank;
            if (paymentsDup == null)

                return;
            //paymentsDup.CodeColumnWidth = xrCapPYCode.WidthF;
            //paymentsDup.NameColumnWidth = xrCapPYParticular.WidthF;
            //paymentsDup.AmountColumnWidth = xrCapPYCash.WidthF;
            //paymentsDup.PaymentBankAmt = xrCapPYBank.WidthF;
            //if (ReportProperties.ShowByLedgerGroup == 1)
            //{
            //    //paymentsDup.GroupNameColumnWidth = xrCapPYCode.WidthF + xrCapPYParticular.WidthF + xrCapPYCash.WidthF + xrCapPYBank.WidthF;
            //    paymentsDup.GroupNameColumnWidth = xrCapPYCode.WidthF + xrCapPYParticular.WidthF;//+ xrCapPYBank.WidthF;
            //    paymentsDup.LedgerGroupAmtColumnwidth = xrCapPYCash.WidthF - 2;//Bank Tot //PAY Part 
            //    paymentsDup.LedgerGroupBankAmount = xrCapPYBank.WidthF; //Cash tot xrCapPYCash
            //}
            //paymentsDup.HidePaymentReportHeader();
            // #Dinesh 26-05-2026 - Payment: LEDGER_GROUP=Code+Particular, Cash, Bank same as xrtbleHeader
            paymentsDup.SyncPaymentColumnWidths(
                xrCapPYCode.WidthF,
                xrCapPYParticular.WidthF,
                xrCapPYCash.WidthF,
                xrCapPYBank.WidthF,
                xrSubMultiAbstractPayment.WidthF);
            paymentsDup.HidePaymentReportHeader();

        }
        //22/05/2026, Chinna
        private void BindOpeningBalanceSection()
        {
            RPDuplicateNewAccountBalanceOPCLCashBank accountBalance = xrSubOpeningBalance.ReportSource as RPDuplicateNewAccountBalanceOPCLCashBank;
            if (accountBalance == null)
                return;
            accountBalance.BankClosedDate = this.ReportProperties.DateFrom;
            accountBalance.ProjectColumnVisible = false;
            accountBalance.ShowColumnHeader = false;
            accountBalance.ApplyParentReportStyle = accountBalance.PivotGridStyles;
            //22/05/2026, Chinna - Lock pivot widths before BindBalance
            ApplyBalanceSubreportFromHeaderCells(xrSubOpeningBalance, accountBalance, true);
            accountBalance.BindBalance(true);
           accountBalance.ledgerFont = true;

        }

        private void BindReceiptDetailSection()
        {

            RPDuplicateNewAbstractReceiptsCashandBank receiptDup = xrSubMultiAbstractReceipt.ReportSource as RPDuplicateNewAbstractReceiptsCashandBank;
            //RPDuplicateNewAbstractReceiptsCashandBank
            if (receiptDup != null)
                receiptDup.BindReceiptSource(TransType.RC);

        }
        //22/05/2026, Chinna
        private void BindClosingBalanceSection()
        {
            RPDuplicateNewAccountBalanceOPCLCashBank accountClosingBalance = xrSubClosingBalance.ReportSource as RPDuplicateNewAccountBalanceOPCLCashBank;
            if (accountClosingBalance == null)
                return;
            accountClosingBalance.BankClosedDate = this.ReportProperties.DateFrom;
            accountClosingBalance.ProjectColumnVisible = false;
            accountClosingBalance.ShowColumnHeader = false;
            accountClosingBalance.ApplyParentReportStyle = accountClosingBalance.PivotGridStyles;
            ApplyBalanceSubreportFromHeaderCells(xrSubClosingBalance, accountClosingBalance, false);
            accountClosingBalance.BindBalance(false);
            accountClosingBalance.ledgerFont = true;

        }

        private void BindPaymentDetailSection()
        {

            RPDuplicateNewAbstractPaymentsCashandBank paymentsDup = xrSubMultiAbstractPayment.ReportSource as RPDuplicateNewAbstractPaymentsCashandBank;

            if (paymentsDup != null)

                paymentsDup.BindPaymentSource(TransType.PY);

        }
        //22/05/2026, Chinna
        private HeaderSectionLayout BuildReceiptHeaderLayout()
        {

            HeaderSectionLayout layout = new HeaderSectionLayout();

            layout.CodeCell = xrCapRcCode;

            layout.ParticularCell = xrCapRcParticular;

            layout.CashCell = xrCapRcCash;

            layout.BankCell = xrCapRcBank;

            layout.SectionLeft = GetTableCellLeftF(xrtbleHeader, xrCapRcCode);
            layout.SectionWidth = xrSubMultiAbstractReceipt.WidthF;
            layout.CodeColumnWidth = xrCapRcCode.WidthF;
            layout.ParticularColumnWidth = xrCapRcParticular.WidthF;
            layout.CashColumnWidth = xrCapRcCash.WidthF;
            layout.BankColumnWidth = xrCapRcBank.WidthF;

            return layout;

        }
        //22/05/2026, Chinna
        private HeaderSectionLayout BuildPaymentHeaderLayout()
        {

            HeaderSectionLayout layout = new HeaderSectionLayout();

            layout.CodeCell = xrCapPYCode;

            layout.ParticularCell = xrCapPYParticular;

            layout.CashCell = xrCapPYCash;

            layout.BankCell = xrCapPYBank;

            layout.SectionLeft = GetTableCellLeftF(xrtbleHeader, xrCapPYCode);
            layout.SectionWidth = xrSubMultiAbstractPayment.WidthF;
            layout.CodeColumnWidth = xrCapPYCode.WidthF;
            layout.ParticularColumnWidth = xrCapPYParticular.WidthF;
            layout.CashColumnWidth = xrCapPYCash.WidthF;
            layout.BankColumnWidth = xrCapPYBank.WidthF;

            return layout;

        }



        //22/05/2026, Chinna - XRSubreport LeftF/WidthF + pivot columns from receipt/payment detail (same as MultiAbstractReceiptsProjectCashBank)
        private void ApplyBalanceSubreportAligned( XRSubreport balanceSubreport,RPDuplicateNewAccountBalanceOPCLCashBank balance,XRSubreport detailSubreport,RPDuplicateNewAbstractReceiptsCashandBank receiptDetail)
        {
            if (balanceSubreport == null || balance == null || detailSubreport == null || receiptDetail == null)
                return;

            balanceSubreport.LeftF = detailSubreport.LeftF;
            balanceSubreport.WidthF = detailSubreport.WidthF;
            balanceSubreport.CanGrow = false;

            balance.ApplyColumnWidths(
                receiptDetail.GetEffectiveCodeColumnWidth(),
                receiptDetail.GetEffectiveParticularColumnWidth(),
                receiptDetail.GetEffectiveCashColumnWidth(),
                receiptDetail.GetEffectiveBankColumnWidth(),
                detailSubreport.WidthF);
        }

        private void ApplyBalanceSubreportAligned(
            XRSubreport balanceSubreport,
            RPDuplicateNewAccountBalanceOPCLCashBank balance,
            XRSubreport detailSubreport,
            RPDuplicateNewAbstractPaymentsCashandBank paymentDetail)
        {
            if (balanceSubreport == null || balance == null || detailSubreport == null || paymentDetail == null)
                return;

            balanceSubreport.LeftF = detailSubreport.LeftF;
            balanceSubreport.WidthF = detailSubreport.WidthF;
            balanceSubreport.CanGrow = false;

            balance.ApplyColumnWidths(
                paymentDetail.GetEffectiveCodeColumnWidth(),
                paymentDetail.GetEffectiveParticularColumnWidth(),
                paymentDetail.GetEffectiveCashColumnWidth(),
                paymentDetail.GetEffectiveBankColumnWidth(),
                detailSubreport.WidthF);
        }

        //22/05/2026, Chinna - Opening/closing pivot columns match xrtbleHeader cell widths exactly
        private void ApplyBalanceSubreportFromHeaderCells(XRSubreport balanceSubreport, RPDuplicateNewAccountBalanceOPCLCashBank balance, bool isReceiptSide)
        {
            if (balanceSubreport == null || balance == null)
                return;

            HeaderSectionLayout layout = isReceiptSide ? BuildReceiptHeaderLayout() : BuildPaymentHeaderLayout();
            ApplyBalanceSubreportFromHeader(balanceSubreport, balance, layout);
        }

        //22/05/2026, Chinna - Fine-tune only if preview still shows gap at Cash border (try 1f–3f, not large values)
        private const float BalanceCodeFineTuneF = 0f;
        private const float BalanceParticularFineTuneF = 0f;
        //22/05/2026, Chinna - XRSubreport LeftF/WidthF + pivot columns match xrtbleHeader captions exactly
        //private void ApplyBalanceSubreportFromHeader(XRSubreport subreport, RPDuplicateNewAccountBalanceOPCLCashBank balance, HeaderSectionLayout layout)
        //{
        //    if (subreport == null || balance == null || layout == null)
        //        return;

        //    subreport.LeftF = layout.SectionLeft;
        //    subreport.WidthF = layout.SectionWidth;
        //    // #Dinesh 26-05-2026 - Phase 1: opening/closing subreport height stable (was CanGrow=true)
        //    subreport.CanGrow = false;
        //    subreport.CanShrink = false;

        //    // #Dinesh 26-05-2026 - Phase 1: full section width for pivot (removed -20f)
        //    float sectionW = layout.CodeColumnWidth + layout.ParticularColumnWidth
        //        + layout.CashColumnWidth + layout.BankColumnWidth;

        //    balance.ApplyColumnWidths(
        //        layout.CodeColumnWidth + BalanceCodeFineTuneF,
        //        layout.ParticularColumnWidth + BalanceParticularFineTuneF,
        //        layout.CashColumnWidth,
        //        layout.BankColumnWidth,
        //        sectionW);
        //}
        private void ApplyBalanceSubreportFromHeader(XRSubreport subreport, RPDuplicateNewAccountBalanceOPCLCashBank balance, HeaderSectionLayout layout)
        {
            if (subreport == null || balance == null || layout == null)
                return;

            subreport.LeftF = layout.SectionLeft;
            subreport.WidthF = layout.SectionWidth;
            subreport.CanGrow = true;

            float sectionW = layout.CodeColumnWidth + layout.ParticularColumnWidth
                + layout.CashColumnWidth + layout.BankColumnWidth - 20f;

            balance.ApplyColumnWidths(
                layout.CodeColumnWidth + BalanceCodeFineTuneF,
                layout.ParticularColumnWidth + BalanceParticularFineTuneF,
                layout.CashColumnWidth,
                layout.BankColumnWidth,
                sectionW);
        }


        //22/05/2026, Chinna
        private void grpOpeningBalance_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            SyncEntireReportColumnLayout();

        }



        //22/05/2026, Chinna
        private void grpClosingBalance_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            SyncEntireReportColumnLayout();

        }



        //22/05/2026, Chinna - Left edge of a header cell within the report band
        private static float GetTableCellLeftF(XRTable table, XRTableCell targetCell)
        {

            if (table == null || targetCell == null || table.Rows.Count == 0)

                return 0f;



            float left = table.LeftF;

            foreach (XRTableCell cell in table.Rows[0].Cells)
            {

                if (cell == targetCell)

                    return left;

                left += cell.WidthF;

            }

            return left;

        }



        //22/05/2026, Chinna - Copies width, padding, alignment and borders from parent header cell
        private static void SyncColumn(XRControl parent, XRControl child)
        {

            if (parent == null || child == null)

                return;



            child.WidthF = parent.WidthF;

            child.LocationF = new PointF(parent.LocationF.X, child.LocationF.Y);

            child.Padding = parent.Padding;

            child.TextAlignment = parent.TextAlignment;

            child.Borders = parent.Borders;

            child.BorderColor = parent.BorderColor;

        }



        private void PrintingSystem_PageSettingsChanged(object sender, EventArgs e)
        {

            PrintingSystemBase printingbase = sender as PrintingSystemBase;

            if (printingbase == null)

                return;



            this.Landscape = true;

            int newPageWidth = printingbase.PageBounds.Width - printingbase.PageMargins.Left - printingbase.PageMargins.Right;

            this.SetLandscapeHeader = this.SetLandscapeFooter = this.SetLandscapeFooterDateWidth = newPageWidth - 15;

            this.SetTitleWidth(newPageWidth - 15);



            SyncPageHeaderWithDetailSubreports();

            ConfigureReceiptDetailColumns();

            ConfigurePaymentDetailColumns();

            BindReceiptDetailSection();

            BindPaymentDetailSection();

            BindOpeningBalanceSection();

            BindClosingBalanceSection();



            this.CreateDocument();

        }

        // #Dinesh 26-05-2026 - Phase 1: lock title row + subreport anchors in parent Detail
        private void StabilizeParentDetailLayout()
        {
            const float sectionTitleHeightF = 22.92f;

            xrTable3.CanGrow = false;
            xrTable4.CanGrow = false;
            if (xrTable3.Rows.Count > 0)
            {
                xrTable3.Rows[0].CanGrow = false;
                xrTable3.Rows[0].HeightF = sectionTitleHeightF;
            }
            if (xrTable4.Rows.Count > 0)
            {
                xrTable4.Rows[0].CanGrow = false;
                xrTable4.Rows[0].HeightF = sectionTitleHeightF;
            }

            xrSubMultiAbstractReceipt.TopF = sectionTitleHeightF;
            xrSubMultiAbstractPayment.TopF = sectionTitleHeightF;
            xrSubMultiAbstractReceipt.CanGrow = true;
            xrSubMultiAbstractReceipt.CanShrink = false;
            xrSubMultiAbstractPayment.CanGrow = true;
            xrSubMultiAbstractPayment.CanShrink = false;

            xrSubOpeningBalance.CanGrow = false;
            xrSubOpeningBalance.CanShrink = false;
            xrSubClosingBalance.CanGrow = false;
            xrSubClosingBalance.CanShrink = false;
        }



        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            RPDuplicateNewAbstractReceiptsCashandBank receiptLedger = xrSubMultiAbstractReceipt.ReportSource as RPDuplicateNewAbstractReceiptsCashandBank;
            if (receiptLedger != null)
            {
                xrCashRCTot.Text = receiptLedger.GetCashTotal().ToString("N2");
                xrBankRCTot.Text = receiptLedger.GetBankTotal().ToString("N2");
            }

            RPDuplicateNewAbstractPaymentsCashandBank paymentLedger = xrSubMultiAbstractPayment.ReportSource as RPDuplicateNewAbstractPaymentsCashandBank;
            if (paymentLedger != null)
            {
                xrPayCashTot.Text = paymentLedger.GetCashTotal().ToString("N2");
                xrPayBanTot.Text = paymentLedger.GetBankTotal().ToString("N2");
            }
            RPDuplicateNewAccountBalanceOPCLCashBank openingbalancecashbank = xrSubOpeningBalance.ReportSource as RPDuplicateNewAccountBalanceOPCLCashBank;
            if (openingbalancecashbank != null)
            {
                decimal totalReceiptCash =
       Convert.ToDecimal(openingbalancecashbank.TotalCashAmount) +
       Convert.ToDecimal(receiptLedger.GetCashTotal());

                decimal totalReceiptBank =
                    Convert.ToDecimal(openingbalancecashbank.TotalBankAmount) +
                    Convert.ToDecimal(receiptLedger.GetBankTotal());

                xrReceiptCash.Text = totalReceiptCash.ToString("N2");
                xrReceiptBank.Text = totalReceiptBank.ToString("N2");
            }

            RPDuplicateNewAccountBalanceOPCLCashBank closeingbalancecashbank = xrSubClosingBalance.ReportSource as RPDuplicateNewAccountBalanceOPCLCashBank;
            if (closeingbalancecashbank != null)
            {
                decimal totalClosingCash =
        Convert.ToDecimal(closeingbalancecashbank.TotalCashAmount) +
        Convert.ToDecimal(paymentLedger.GetCashTotal());

                decimal totalClosingBank =
                    Convert.ToDecimal(closeingbalancecashbank.TotalBankAmount) +
                    Convert.ToDecimal(paymentLedger.GetBankTotal());

                xrPaymentCash.Text = totalClosingCash.ToString("N2");
                xrPaymentBank.Text = totalClosingBank.ToString("N2");
            }

        }

    }

}


