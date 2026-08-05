namespace Bosco.Report.ReportObject
{
    partial class RPDuplicate
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(RPDuplicate));
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.xrTable2 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrCashRCTot = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrBankRCTot = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell7 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrPayCashTot = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrPayBanTot = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow3 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrReceiptCash = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrReceiptBank = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell8 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrPaymentCash = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrPaymentBank = new DevExpress.XtraReports.UI.XRTableCell();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrtbleHeader = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrCapRcCode = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrCapRcParticular = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrCapRcCash = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrCapRcBank = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrCapPYCode = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrCapPYParticular = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrCapPYCash = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrCapPYBank = new DevExpress.XtraReports.UI.XRTableCell();
            this.grpOpeningBalance = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.xrSubOpeningBalance = new DevExpress.XtraReports.UI.XRSubreport();
            this.xrCapOpening = new DevExpress.XtraReports.UI.XRLabel();
            this.xrSubMultiAbstractReceipt = new DevExpress.XtraReports.UI.XRSubreport();
            this.xrSubMultiAbstractPayment = new DevExpress.XtraReports.UI.XRSubreport();
            this.grpClosingBalance = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.xrCapClosingBalance = new DevExpress.XtraReports.UI.XRLabel();
            this.xrSubClosingBalance = new DevExpress.XtraReports.UI.XRSubreport();
            this.xrTable3 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow4 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrReceiptTitale = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable4 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow5 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrPaymentTiatl = new DevExpress.XtraReports.UI.XRTableCell();
            ((System.ComponentModel.ISupportInitialize)(this.dtTOCList)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrtbleHeader)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable4,
            this.xrTable3,
            this.xrSubMultiAbstractPayment,
            this.xrSubMultiAbstractReceipt});
            resources.ApplyResources(this.Detail, "Detail");
            // 
            // ReportFooter
            // 
            resources.ApplyResources(this.ReportFooter, "ReportFooter");
            this.ReportFooter.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) 
            | DevExpress.XtraPrinting.BorderSide.Right) 
            | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.ReportFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable2});
            this.ReportFooter.Name = "ReportFooter";
            this.ReportFooter.StylePriority.UseBorderColor = false;
            this.ReportFooter.StylePriority.UseBorders = false;
            this.ReportFooter.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.ReportFooter_BeforePrint);
            // 
            // xrTable2
            // 
            resources.ApplyResources(this.xrTable2, "xrTable2");
            this.xrTable2.Name = "xrTable2";
            this.xrTable2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow2,
            this.xrTableRow3});
            this.xrTable2.StylePriority.UseBackColor = false;
            // 
            // xrTableRow2
            // 
            this.xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell1,
            this.xrCashRCTot,
            this.xrBankRCTot,
            this.xrTableCell7,
            this.xrPayCashTot,
            this.xrPayBanTot});
            this.xrTableRow2.Name = "xrTableRow2";
            resources.ApplyResources(this.xrTableRow2, "xrTableRow2");
            // 
            // xrTableCell1
            // 
            resources.ApplyResources(this.xrTableCell1, "xrTableCell1");
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(3, 3, 3, 3, 100F);
            this.xrTableCell1.StylePriority.UseFont = false;
            this.xrTableCell1.StylePriority.UsePadding = false;
            this.xrTableCell1.StylePriority.UseTextAlignment = false;
            // 
            // xrCashRCTot
            // 
            resources.ApplyResources(this.xrCashRCTot, "xrCashRCTot");
            this.xrCashRCTot.Name = "xrCashRCTot";
            this.xrCashRCTot.StylePriority.UseFont = false;
            this.xrCashRCTot.StylePriority.UseTextAlignment = false;
            // 
            // xrBankRCTot
            // 
            resources.ApplyResources(this.xrBankRCTot, "xrBankRCTot");
            this.xrBankRCTot.Name = "xrBankRCTot";
            this.xrBankRCTot.StylePriority.UseFont = false;
            this.xrBankRCTot.StylePriority.UseTextAlignment = false;
            // 
            // xrTableCell7
            // 
            resources.ApplyResources(this.xrTableCell7, "xrTableCell7");
            this.xrTableCell7.Name = "xrTableCell7";
            this.xrTableCell7.Padding = new DevExpress.XtraPrinting.PaddingInfo(3, 3, 3, 3, 100F);
            this.xrTableCell7.StylePriority.UseFont = false;
            this.xrTableCell7.StylePriority.UsePadding = false;
            this.xrTableCell7.StylePriority.UseTextAlignment = false;
            // 
            // xrPayCashTot
            // 
            resources.ApplyResources(this.xrPayCashTot, "xrPayCashTot");
            this.xrPayCashTot.Name = "xrPayCashTot";
            this.xrPayCashTot.StylePriority.UseFont = false;
            this.xrPayCashTot.StylePriority.UseTextAlignment = false;
            // 
            // xrPayBanTot
            // 
            resources.ApplyResources(this.xrPayBanTot, "xrPayBanTot");
            this.xrPayBanTot.Name = "xrPayBanTot";
            this.xrPayBanTot.StylePriority.UseFont = false;
            this.xrPayBanTot.StylePriority.UseTextAlignment = false;
            // 
            // xrTableRow3
            // 
            this.xrTableRow3.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell4,
            this.xrReceiptCash,
            this.xrReceiptBank,
            this.xrTableCell8,
            this.xrPaymentCash,
            this.xrPaymentBank});
            this.xrTableRow3.Name = "xrTableRow3";
            resources.ApplyResources(this.xrTableRow3, "xrTableRow3");
            // 
            // xrTableCell4
            // 
            resources.ApplyResources(this.xrTableCell4, "xrTableCell4");
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.Padding = new DevExpress.XtraPrinting.PaddingInfo(3, 3, 3, 3, 100F);
            this.xrTableCell4.StylePriority.UseFont = false;
            this.xrTableCell4.StylePriority.UsePadding = false;
            this.xrTableCell4.StylePriority.UseTextAlignment = false;
            // 
            // xrReceiptCash
            // 
            resources.ApplyResources(this.xrReceiptCash, "xrReceiptCash");
            this.xrReceiptCash.Name = "xrReceiptCash";
            this.xrReceiptCash.StylePriority.UseFont = false;
            this.xrReceiptCash.StylePriority.UseTextAlignment = false;
            // 
            // xrReceiptBank
            // 
            resources.ApplyResources(this.xrReceiptBank, "xrReceiptBank");
            this.xrReceiptBank.Name = "xrReceiptBank";
            this.xrReceiptBank.StylePriority.UseFont = false;
            this.xrReceiptBank.StylePriority.UseTextAlignment = false;
            // 
            // xrTableCell8
            // 
            resources.ApplyResources(this.xrTableCell8, "xrTableCell8");
            this.xrTableCell8.Name = "xrTableCell8";
            this.xrTableCell8.Padding = new DevExpress.XtraPrinting.PaddingInfo(3, 3, 3, 3, 100F);
            this.xrTableCell8.StylePriority.UseFont = false;
            this.xrTableCell8.StylePriority.UsePadding = false;
            this.xrTableCell8.StylePriority.UseTextAlignment = false;
            // 
            // xrPaymentCash
            // 
            resources.ApplyResources(this.xrPaymentCash, "xrPaymentCash");
            this.xrPaymentCash.Name = "xrPaymentCash";
            this.xrPaymentCash.StylePriority.UseFont = false;
            this.xrPaymentCash.StylePriority.UseTextAlignment = false;
            // 
            // xrPaymentBank
            // 
            resources.ApplyResources(this.xrPaymentBank, "xrPaymentBank");
            this.xrPaymentBank.Name = "xrPaymentBank";
            this.xrPaymentBank.StylePriority.UseFont = false;
            this.xrPaymentBank.StylePriority.UseTextAlignment = false;
            // 
            // PageHeader
            // 
            resources.ApplyResources(this.PageHeader, "PageHeader");
            this.PageHeader.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) 
            | DevExpress.XtraPrinting.BorderSide.Right) 
            | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrtbleHeader});
            this.PageHeader.Name = "PageHeader";
            this.PageHeader.StylePriority.UseBorderColor = false;
            this.PageHeader.StylePriority.UseBorders = false;
            // 
            // xrtbleHeader
            // 
            resources.ApplyResources(this.xrtbleHeader, "xrtbleHeader");
            this.xrtbleHeader.Name = "xrtbleHeader";
            this.xrtbleHeader.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1});
            this.xrtbleHeader.StylePriority.UseBackColor = false;
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrCapRcCode,
            this.xrCapRcParticular,
            this.xrCapRcCash,
            this.xrCapRcBank,
            this.xrCapPYCode,
            this.xrCapPYParticular,
            this.xrCapPYCash,
            this.xrCapPYBank});
            this.xrTableRow1.Name = "xrTableRow1";
            resources.ApplyResources(this.xrTableRow1, "xrTableRow1");
            // 
            // xrCapRcCode
            // 
            resources.ApplyResources(this.xrCapRcCode, "xrCapRcCode");
            this.xrCapRcCode.Name = "xrCapRcCode";
            this.xrCapRcCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(3, 0, 0, 0, 100F);
            this.xrCapRcCode.StylePriority.UseFont = false;
            this.xrCapRcCode.StylePriority.UsePadding = false;
            this.xrCapRcCode.StylePriority.UseTextAlignment = false;
            // 
            // xrCapRcParticular
            // 
            resources.ApplyResources(this.xrCapRcParticular, "xrCapRcParticular");
            this.xrCapRcParticular.Name = "xrCapRcParticular";
            this.xrCapRcParticular.Padding = new DevExpress.XtraPrinting.PaddingInfo(3, 0, 0, 0, 100F);
            this.xrCapRcParticular.StylePriority.UseFont = false;
            this.xrCapRcParticular.StylePriority.UsePadding = false;
            this.xrCapRcParticular.StylePriority.UseTextAlignment = false;
            // 
            // xrCapRcCash
            // 
            resources.ApplyResources(this.xrCapRcCash, "xrCapRcCash");
            this.xrCapRcCash.Name = "xrCapRcCash";
            this.xrCapRcCash.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 3, 0, 0, 100F);
            this.xrCapRcCash.StylePriority.UseFont = false;
            this.xrCapRcCash.StylePriority.UsePadding = false;
            this.xrCapRcCash.StylePriority.UseTextAlignment = false;
            // 
            // xrCapRcBank
            // 
            resources.ApplyResources(this.xrCapRcBank, "xrCapRcBank");
            this.xrCapRcBank.Name = "xrCapRcBank";
            this.xrCapRcBank.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 3, 0, 0, 100F);
            this.xrCapRcBank.StylePriority.UseFont = false;
            this.xrCapRcBank.StylePriority.UsePadding = false;
            this.xrCapRcBank.StylePriority.UseTextAlignment = false;
            // 
            // xrCapPYCode
            // 
            resources.ApplyResources(this.xrCapPYCode, "xrCapPYCode");
            this.xrCapPYCode.Name = "xrCapPYCode";
            this.xrCapPYCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(3, 0, 0, 0, 100F);
            this.xrCapPYCode.StylePriority.UseFont = false;
            this.xrCapPYCode.StylePriority.UsePadding = false;
            this.xrCapPYCode.StylePriority.UseTextAlignment = false;
            // 
            // xrCapPYParticular
            // 
            resources.ApplyResources(this.xrCapPYParticular, "xrCapPYParticular");
            this.xrCapPYParticular.Name = "xrCapPYParticular";
            this.xrCapPYParticular.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 0, 0, 100F);
            this.xrCapPYParticular.StylePriority.UseFont = false;
            this.xrCapPYParticular.StylePriority.UsePadding = false;
            this.xrCapPYParticular.StylePriority.UseTextAlignment = false;
            // 
            // xrCapPYCash
            // 
            resources.ApplyResources(this.xrCapPYCash, "xrCapPYCash");
            this.xrCapPYCash.Name = "xrCapPYCash";
            this.xrCapPYCash.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 3, 0, 0, 100F);
            this.xrCapPYCash.StylePriority.UseFont = false;
            this.xrCapPYCash.StylePriority.UsePadding = false;
            this.xrCapPYCash.StylePriority.UseTextAlignment = false;
            // 
            // xrCapPYBank
            // 
            resources.ApplyResources(this.xrCapPYBank, "xrCapPYBank");
            this.xrCapPYBank.Name = "xrCapPYBank";
            this.xrCapPYBank.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 3, 0, 0, 100F);
            this.xrCapPYBank.StylePriority.UseFont = false;
            this.xrCapPYBank.StylePriority.UsePadding = false;
            this.xrCapPYBank.StylePriority.UseTextAlignment = false;
            // 
            // grpOpeningBalance
            // 
            this.grpOpeningBalance.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrSubOpeningBalance,
            this.xrCapOpening});
            resources.ApplyResources(this.grpOpeningBalance, "grpOpeningBalance");
            this.grpOpeningBalance.Name = "grpOpeningBalance";
            // 
            // xrSubOpeningBalance
            // 
            resources.ApplyResources(this.xrSubOpeningBalance, "xrSubOpeningBalance");
            this.xrSubOpeningBalance.Name = "xrSubOpeningBalance";
            this.xrSubOpeningBalance.ReportSource = new Bosco.Report.ReportObject.RPDuplicateNewAccountBalanceOPCLCashBank();
            // 
            // xrCapOpening
            // 
            resources.ApplyResources(this.xrCapOpening, "xrCapOpening");
            this.xrCapOpening.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) 
            | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrCapOpening.Name = "xrCapOpening";
            this.xrCapOpening.Padding = new DevExpress.XtraPrinting.PaddingInfo(4, 0, 0, 0, 100F);
            this.xrCapOpening.StylePriority.UseBackColor = false;
            this.xrCapOpening.StylePriority.UseBorderColor = false;
            this.xrCapOpening.StylePriority.UseBorders = false;
            this.xrCapOpening.StylePriority.UseFont = false;
            this.xrCapOpening.StylePriority.UsePadding = false;
            this.xrCapOpening.StylePriority.UseTextAlignment = false;
            // 
            // xrSubMultiAbstractReceipt
            // 
            resources.ApplyResources(this.xrSubMultiAbstractReceipt, "xrSubMultiAbstractReceipt");
            this.xrSubMultiAbstractReceipt.Name = "xrSubMultiAbstractReceipt";
            this.xrSubMultiAbstractReceipt.ReportSource = new Bosco.Report.ReportObject.RPDuplicateNewAbstractReceiptsCashandBank();
            // 
            // xrSubMultiAbstractPayment
            // 
            resources.ApplyResources(this.xrSubMultiAbstractPayment, "xrSubMultiAbstractPayment");
            this.xrSubMultiAbstractPayment.Name = "xrSubMultiAbstractPayment";
            this.xrSubMultiAbstractPayment.ReportSource = new Bosco.Report.ReportObject.RPDuplicateNewAbstractPaymentsCashandBank();
            // 
            // grpClosingBalance
            // 
            this.grpClosingBalance.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrCapClosingBalance,
            this.xrSubClosingBalance});
            resources.ApplyResources(this.grpClosingBalance, "grpClosingBalance");
            this.grpClosingBalance.Name = "grpClosingBalance";
            // 
            // xrCapClosingBalance
            // 
            resources.ApplyResources(this.xrCapClosingBalance, "xrCapClosingBalance");
            this.xrCapClosingBalance.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) 
            | DevExpress.XtraPrinting.BorderSide.Right) 
            | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrCapClosingBalance.Name = "xrCapClosingBalance";
            this.xrCapClosingBalance.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrCapClosingBalance.StylePriority.UseBackColor = false;
            this.xrCapClosingBalance.StylePriority.UseBorderColor = false;
            this.xrCapClosingBalance.StylePriority.UseBorders = false;
            this.xrCapClosingBalance.StylePriority.UseFont = false;
            this.xrCapClosingBalance.StylePriority.UseTextAlignment = false;
            // 
            // xrSubClosingBalance
            // 
            resources.ApplyResources(this.xrSubClosingBalance, "xrSubClosingBalance");
            this.xrSubClosingBalance.Name = "xrSubClosingBalance";
            this.xrSubClosingBalance.ReportSource = new Bosco.Report.ReportObject.RPDuplicateNewAccountBalanceOPCLCashBank();
            // 
            // xrTable3
            // 
            resources.ApplyResources(this.xrTable3, "xrTable3");
            this.xrTable3.Name = "xrTable3";
            this.xrTable3.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow4});
            // 
            // xrTableRow4
            // 
            this.xrTableRow4.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrReceiptTitale});
            this.xrTableRow4.Name = "xrTableRow4";
            resources.ApplyResources(this.xrTableRow4, "xrTableRow4");
            // 
            // xrReceiptTitale
            // 
            resources.ApplyResources(this.xrReceiptTitale, "xrReceiptTitale");
            this.xrReceiptTitale.Name = "xrReceiptTitale";
            this.xrReceiptTitale.Padding = new DevExpress.XtraPrinting.PaddingInfo(10, 0, 0, 0, 100F);
            this.xrReceiptTitale.StylePriority.UseBackColor = false;
            this.xrReceiptTitale.StylePriority.UseFont = false;
            this.xrReceiptTitale.StylePriority.UsePadding = false;
            this.xrReceiptTitale.StylePriority.UseTextAlignment = false;
            // 
            // xrTable4
            // 
            resources.ApplyResources(this.xrTable4, "xrTable4");
            this.xrTable4.Name = "xrTable4";
            this.xrTable4.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow5});
            // 
            // xrTableRow5
            // 
            this.xrTableRow5.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrPaymentTiatl});
            this.xrTableRow5.Name = "xrTableRow5";
            resources.ApplyResources(this.xrTableRow5, "xrTableRow5");
            // 
            // xrPaymentTiatl
            // 
            resources.ApplyResources(this.xrPaymentTiatl, "xrPaymentTiatl");
            this.xrPaymentTiatl.Name = "xrPaymentTiatl";
            this.xrPaymentTiatl.Padding = new DevExpress.XtraPrinting.PaddingInfo(10, 0, 0, 0, 100F);
            this.xrPaymentTiatl.StylePriority.UseBackColor = false;
            this.xrPaymentTiatl.StylePriority.UseFont = false;
            this.xrPaymentTiatl.StylePriority.UsePadding = false;
            this.xrPaymentTiatl.StylePriority.UseTextAlignment = false;
            // 
            // RPDuplicate
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.ReportFooter,
            this.PageHeader,
            this.grpOpeningBalance,
            this.grpClosingBalance});
            resources.ApplyResources(this, "$this");
            this.ShowPrintMarginsWarning = false;
            this.Version = "13.2";
            this.Controls.SetChildIndex(this.grpClosingBalance, 0);
            this.Controls.SetChildIndex(this.grpOpeningBalance, 0);
            this.Controls.SetChildIndex(this.PageHeader, 0);
            this.Controls.SetChildIndex(this.ReportFooter, 0);
            this.Controls.SetChildIndex(this.Detail, 0);
            ((System.ComponentModel.ISupportInitialize)(this.dtTOCList)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrtbleHeader)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        private DevExpress.XtraReports.UI.ReportFooterBand ReportFooter;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        private DevExpress.XtraReports.UI.GroupHeaderBand grpOpeningBalance;
        private DevExpress.XtraReports.UI.XRTable xrtbleHeader;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow1;
        private DevExpress.XtraReports.UI.XRTableCell xrCapRcCode;
        private DevExpress.XtraReports.UI.XRTableCell xrCapRcParticular;
        private DevExpress.XtraReports.UI.XRTableCell xrCapRcCash;
        private DevExpress.XtraReports.UI.XRTableCell xrCapRcBank;
        private DevExpress.XtraReports.UI.XRTableCell xrCapPYCode;
        private DevExpress.XtraReports.UI.XRTableCell xrCapPYParticular;
        private DevExpress.XtraReports.UI.XRTableCell xrCapPYCash;
        private DevExpress.XtraReports.UI.XRTableCell xrCapPYBank;
        private DevExpress.XtraReports.UI.XRSubreport xrSubOpeningBalance;
        private DevExpress.XtraReports.UI.XRLabel xrCapOpening;
        private DevExpress.XtraReports.UI.XRSubreport xrSubMultiAbstractPayment;
        private DevExpress.XtraReports.UI.XRSubreport xrSubMultiAbstractReceipt;
        private DevExpress.XtraReports.UI.GroupFooterBand grpClosingBalance;
        private DevExpress.XtraReports.UI.XRSubreport xrSubClosingBalance;
        private DevExpress.XtraReports.UI.XRTable xrTable2;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow2;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell1;
        private DevExpress.XtraReports.UI.XRTableCell xrCashRCTot;
        private DevExpress.XtraReports.UI.XRTableCell xrBankRCTot;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell7;
        private DevExpress.XtraReports.UI.XRTableCell xrPayCashTot;
        private DevExpress.XtraReports.UI.XRTableCell xrPayBanTot;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell4;
        private DevExpress.XtraReports.UI.XRTableCell xrReceiptCash;
        private DevExpress.XtraReports.UI.XRTableCell xrReceiptBank;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell8;
        private DevExpress.XtraReports.UI.XRTableCell xrPaymentCash;
        private DevExpress.XtraReports.UI.XRTableCell xrPaymentBank;
        private DevExpress.XtraReports.UI.XRTable xrTable4;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow5;
        private DevExpress.XtraReports.UI.XRTableCell xrPaymentTiatl;
        private DevExpress.XtraReports.UI.XRTable xrTable3;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow4;
        private DevExpress.XtraReports.UI.XRTableCell xrReceiptTitale;
        private DevExpress.XtraReports.UI.XRLabel xrCapClosingBalance;
    }
}
