namespace Bosco.Report.ReportObject
{
    partial class RPDuplicateNewAbstractReceiptsCashandBank
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
            DevExpress.XtraReports.UI.XRGroupSortingSummary xrGroupSortingSummary1 = new DevExpress.XtraReports.UI.XRGroupSortingSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary2 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRGroupSortingSummary xrGroupSortingSummary2 = new DevExpress.XtraReports.UI.XRGroupSortingSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary3 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary4 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary1 = new DevExpress.XtraReports.UI.XRSummary();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(RPDuplicateNewAbstractReceiptsCashandBank));
            this.reportSetting1 = new Bosco.Report.ReportSetting();
            this.grpCostCentreNameReceipts = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.xrPaymentCostCentreName = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow3 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrtblCellCostcentreName = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrcellCCAmount = new DevExpress.XtraReports.UI.XRTableCell();
            this.grpcostCenterCategory = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.xrTblCostCentreCategoryName = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow4 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrCostCentreCategoryName = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrcellCCCAmount = new DevExpress.XtraReports.UI.XRTableCell();
            this.grpCCBreakup = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.xrPageBreak1 = new DevExpress.XtraReports.UI.XRPageBreak();
            this.xrCCBreakup = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow5 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableReceipt = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrLedgerCode = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLedgerName = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLedgerAmt = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLedgerBankAmt = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrSubreportCCDetails = new DevExpress.XtraReports.UI.XRSubreport();
            this.xrSubreportDonorDetails = new DevExpress.XtraReports.UI.XRSubreport();
            this.grpReceiptGroup = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.xrtblReceiptGroup = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrGroupName = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLedgerGroupCashRCAmt = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLedGroupBankAmt = new DevExpress.XtraReports.UI.XRTableCell();
            ((System.ComponentModel.ISupportInitialize)(this.dtTOCList)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.reportSetting1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrPaymentCostCentreName)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTblCostCentreCategoryName)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrCCBreakup)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTableReceipt)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrtblReceiptGroup)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrSubreportDonorDetails,
            this.xrSubreportCCDetails,
            this.xrTableReceipt});
            resources.ApplyResources(this.Detail, "Detail");
            this.Detail.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.Detail_BeforePrint);
            this.Detail.AfterPrint += new System.EventHandler(this.Detail_AfterPrint);
            // 
            // reportSetting1
            // 
            this.reportSetting1.DataSetName = "ReportSetting";
            this.reportSetting1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // grpCostCentreNameReceipts
            // 
            this.grpCostCentreNameReceipts.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrPaymentCostCentreName});
            this.grpCostCentreNameReceipts.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("COST_CENTRE_NAME", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            resources.ApplyResources(this.grpCostCentreNameReceipts, "grpCostCentreNameReceipts");
            this.grpCostCentreNameReceipts.Level = 1;
            this.grpCostCentreNameReceipts.Name = "grpCostCentreNameReceipts";
            xrGroupSortingSummary1.Enabled = true;
            xrGroupSortingSummary1.FieldName = "COST_CENTRE_NAME";
            xrGroupSortingSummary1.Function = DevExpress.XtraReports.UI.SortingSummaryFunction.Custom;
            this.grpCostCentreNameReceipts.SortingSummary = xrGroupSortingSummary1;
            // 
            // xrPaymentCostCentreName
            // 
            resources.ApplyResources(this.xrPaymentCostCentreName, "xrPaymentCostCentreName");
            this.xrPaymentCostCentreName.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) 
            | DevExpress.XtraPrinting.BorderSide.Right) 
            | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrPaymentCostCentreName.Name = "xrPaymentCostCentreName";
            this.xrPaymentCostCentreName.Padding = new DevExpress.XtraPrinting.PaddingInfo(3, 3, 3, 3, 100F);
            this.xrPaymentCostCentreName.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow3});
            this.xrPaymentCostCentreName.StylePriority.UseBackColor = false;
            this.xrPaymentCostCentreName.StylePriority.UseBorderColor = false;
            this.xrPaymentCostCentreName.StylePriority.UseBorders = false;
            this.xrPaymentCostCentreName.StylePriority.UseFont = false;
            this.xrPaymentCostCentreName.StylePriority.UseForeColor = false;
            this.xrPaymentCostCentreName.StylePriority.UsePadding = false;
            this.xrPaymentCostCentreName.StylePriority.UseTextAlignment = false;
            // 
            // xrTableRow3
            // 
            this.xrTableRow3.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrtblCellCostcentreName,
            this.xrcellCCAmount});
            this.xrTableRow3.Name = "xrTableRow3";
            resources.ApplyResources(this.xrTableRow3, "xrTableRow3");
            // 
            // xrtblCellCostcentreName
            // 
            this.xrtblCellCostcentreName.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Receipts.COST_CENTRE_NAME")});
            resources.ApplyResources(this.xrtblCellCostcentreName, "xrtblCellCostcentreName");
            this.xrtblCellCostcentreName.Name = "xrtblCellCostcentreName";
            this.xrtblCellCostcentreName.StylePriority.UseFont = false;
            // 
            // xrcellCCAmount
            // 
            this.xrcellCCAmount.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Receipts.RECEIPTAMT")});
            resources.ApplyResources(this.xrcellCCAmount, "xrcellCCAmount");
            this.xrcellCCAmount.Name = "xrcellCCAmount";
            this.xrcellCCAmount.StylePriority.UseFont = false;
            this.xrcellCCAmount.StylePriority.UseTextAlignment = false;
            resources.ApplyResources(xrSummary2, "xrSummary2");
            xrSummary2.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.xrcellCCAmount.Summary = xrSummary2;
            // 
            // grpcostCenterCategory
            // 
            this.grpcostCenterCategory.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTblCostCentreCategoryName});
            this.grpcostCenterCategory.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("COST_CENTRE_CATEGORY_NAME", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            resources.ApplyResources(this.grpcostCenterCategory, "grpcostCenterCategory");
            this.grpcostCenterCategory.Level = 1;
            this.grpcostCenterCategory.Name = "grpcostCenterCategory";
            xrGroupSortingSummary2.Enabled = true;
            xrGroupSortingSummary2.FieldName = "COST_CENTRE_CATEGORY_NAME";
            xrGroupSortingSummary2.Function = DevExpress.XtraReports.UI.SortingSummaryFunction.Custom;
            this.grpcostCenterCategory.SortingSummary = xrGroupSortingSummary2;
            // 
            // xrTblCostCentreCategoryName
            // 
            resources.ApplyResources(this.xrTblCostCentreCategoryName, "xrTblCostCentreCategoryName");
            this.xrTblCostCentreCategoryName.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) 
            | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTblCostCentreCategoryName.Name = "xrTblCostCentreCategoryName";
            this.xrTblCostCentreCategoryName.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow4});
            this.xrTblCostCentreCategoryName.StylePriority.UseBackColor = false;
            this.xrTblCostCentreCategoryName.StylePriority.UseBorderColor = false;
            this.xrTblCostCentreCategoryName.StylePriority.UseBorders = false;
            this.xrTblCostCentreCategoryName.StylePriority.UseFont = false;
            this.xrTblCostCentreCategoryName.StylePriority.UseTextAlignment = false;
            // 
            // xrTableRow4
            // 
            this.xrTableRow4.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrCostCentreCategoryName,
            this.xrcellCCCAmount});
            this.xrTableRow4.Name = "xrTableRow4";
            resources.ApplyResources(this.xrTableRow4, "xrTableRow4");
            // 
            // xrCostCentreCategoryName
            // 
            this.xrCostCentreCategoryName.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Receipts.COST_CENTRE_CATEGORY_NAME")});
            resources.ApplyResources(this.xrCostCentreCategoryName, "xrCostCentreCategoryName");
            this.xrCostCentreCategoryName.Name = "xrCostCentreCategoryName";
            this.xrCostCentreCategoryName.Padding = new DevExpress.XtraPrinting.PaddingInfo(3, 3, 3, 3, 100F);
            this.xrCostCentreCategoryName.StylePriority.UseFont = false;
            this.xrCostCentreCategoryName.StylePriority.UsePadding = false;
            // 
            // xrcellCCCAmount
            // 
            this.xrcellCCCAmount.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Receipts.RECEIPTAMT")});
            resources.ApplyResources(this.xrcellCCCAmount, "xrcellCCCAmount");
            this.xrcellCCCAmount.Name = "xrcellCCCAmount";
            this.xrcellCCCAmount.Padding = new DevExpress.XtraPrinting.PaddingInfo(3, 3, 3, 3, 100F);
            this.xrcellCCCAmount.StylePriority.UseFont = false;
            this.xrcellCCCAmount.StylePriority.UsePadding = false;
            this.xrcellCCCAmount.StylePriority.UseTextAlignment = false;
            resources.ApplyResources(xrSummary3, "xrSummary3");
            xrSummary3.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.xrcellCCCAmount.Summary = xrSummary3;
            // 
            // grpCCBreakup
            // 
            this.grpCCBreakup.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrPageBreak1,
            this.xrCCBreakup});
            resources.ApplyResources(this.grpCCBreakup, "grpCCBreakup");
            this.grpCCBreakup.Name = "grpCCBreakup";
            // 
            // xrPageBreak1
            // 
            resources.ApplyResources(this.xrPageBreak1, "xrPageBreak1");
            this.xrPageBreak1.Name = "xrPageBreak1";
            // 
            // xrCCBreakup
            // 
            resources.ApplyResources(this.xrCCBreakup, "xrCCBreakup");
            this.xrCCBreakup.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) 
            | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrCCBreakup.Name = "xrCCBreakup";
            this.xrCCBreakup.Padding = new DevExpress.XtraPrinting.PaddingInfo(3, 3, 3, 3, 100F);
            this.xrCCBreakup.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow5});
            this.xrCCBreakup.StyleName = "styleGroupRow";
            this.xrCCBreakup.StylePriority.UseBackColor = false;
            this.xrCCBreakup.StylePriority.UseBorderColor = false;
            this.xrCCBreakup.StylePriority.UseBorders = false;
            this.xrCCBreakup.StylePriority.UseFont = false;
            this.xrCCBreakup.StylePriority.UsePadding = false;
            this.xrCCBreakup.StylePriority.UseTextAlignment = false;
            // 
            // xrTableRow5
            // 
            this.xrTableRow5.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell2,
            this.xrTableCell3,
            this.xrTableCell4});
            this.xrTableRow5.Name = "xrTableRow5";
            resources.ApplyResources(this.xrTableRow5, "xrTableRow5");
            // 
            // xrTableCell2
            // 
            this.xrTableCell2.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) 
            | DevExpress.XtraPrinting.BorderSide.Right) 
            | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell2.Name = "xrTableCell2";
            this.xrTableCell2.StylePriority.UseBorders = false;
            resources.ApplyResources(this.xrTableCell2, "xrTableCell2");
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) 
            | DevExpress.XtraPrinting.BorderSide.Right) 
            | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.StylePriority.UseBorders = false;
            resources.ApplyResources(this.xrTableCell3, "xrTableCell3");
            // 
            // xrTableCell4
            // 
            this.xrTableCell4.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right) 
            | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell4.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Receipts.RECEIPTAMT")});
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.StylePriority.UseBorders = false;
            this.xrTableCell4.StylePriority.UseTextAlignment = false;
            resources.ApplyResources(xrSummary4, "xrSummary4");
            xrSummary4.IgnoreNullValues = true;
            xrSummary4.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.xrTableCell4.Summary = xrSummary4;
            resources.ApplyResources(this.xrTableCell4, "xrTableCell4");
            // 
            // xrTableReceipt
            // 
            resources.ApplyResources(this.xrTableReceipt, "xrTableReceipt");
            this.xrTableReceipt.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top) 
            | DevExpress.XtraPrinting.BorderSide.Right) 
            | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableReceipt.Name = "xrTableReceipt";
            this.xrTableReceipt.Padding = new DevExpress.XtraPrinting.PaddingInfo(3, 3, 3, 3, 100F);
            this.xrTableReceipt.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow2});
            this.xrTableReceipt.StyleName = "styleRow";
            this.xrTableReceipt.StylePriority.UseBorderColor = false;
            this.xrTableReceipt.StylePriority.UseBorders = false;
            this.xrTableReceipt.StylePriority.UseFont = false;
            this.xrTableReceipt.StylePriority.UsePadding = false;
            this.xrTableReceipt.StylePriority.UseTextAlignment = false;
            // 
            // xrTableRow2
            // 
            this.xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrLedgerCode,
            this.xrLedgerName,
            this.xrLedgerAmt,
            this.xrLedgerBankAmt});
            this.xrTableRow2.Name = "xrTableRow2";
            resources.ApplyResources(this.xrTableRow2, "xrTableRow2");
            // 
            // xrLedgerCode
            // 
            this.xrLedgerCode.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right) 
            | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLedgerCode.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MultiAbstractProjectCashBank.LEDGER_CODE")});
            resources.ApplyResources(this.xrLedgerCode, "xrLedgerCode");
            this.xrLedgerCode.Name = "xrLedgerCode";
            this.xrLedgerCode.StylePriority.UseBorders = false;
            this.xrLedgerCode.StylePriority.UseFont = false;
            // 
            // xrLedgerName
            // 
            this.xrLedgerName.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right) 
            | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLedgerName.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MultiAbstractProjectCashBank.LEDGER_NAME")});
            resources.ApplyResources(this.xrLedgerName, "xrLedgerName");
            this.xrLedgerName.Name = "xrLedgerName";
            this.xrLedgerName.StylePriority.UseBorders = false;
            this.xrLedgerName.StylePriority.UseFont = false;
            this.xrLedgerName.StylePriority.UseTextAlignment = false;
            // 
            // xrLedgerAmt
            // 
            this.xrLedgerAmt.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right) 
            | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLedgerAmt.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MultiAbstractProjectCashBank.AMOUNT_CASH", "{0:n}")});
            resources.ApplyResources(this.xrLedgerAmt, "xrLedgerAmt");
            this.xrLedgerAmt.Name = "xrLedgerAmt";
            this.xrLedgerAmt.StylePriority.UseBorders = false;
            this.xrLedgerAmt.StylePriority.UseFont = false;
            this.xrLedgerAmt.StylePriority.UseTextAlignment = false;
            resources.ApplyResources(xrSummary1, "xrSummary1");
            this.xrLedgerAmt.Summary = xrSummary1;
            // 
            // xrLedgerBankAmt
            // 
            this.xrLedgerBankAmt.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MultiAbstractProjectCashBank.AMOUNT_BANK", "{0:n}")});
            this.xrLedgerBankAmt.Name = "xrLedgerBankAmt";
            this.xrLedgerBankAmt.StylePriority.UseTextAlignment = false;
            resources.ApplyResources(this.xrLedgerBankAmt, "xrLedgerBankAmt");
            // 
            // xrSubreportCCDetails
            // 
            this.xrSubreportCCDetails.CanShrink = true;
            resources.ApplyResources(this.xrSubreportCCDetails, "xrSubreportCCDetails");
            this.xrSubreportCCDetails.Name = "xrSubreportCCDetails";
            this.xrSubreportCCDetails.ReportSource = new Bosco.Report.ReportObject.UcCCDetail();
            // 
            // xrSubreportDonorDetails
            // 
            this.xrSubreportDonorDetails.CanShrink = true;
            resources.ApplyResources(this.xrSubreportDonorDetails, "xrSubreportDonorDetails");
            this.xrSubreportDonorDetails.Name = "xrSubreportDonorDetails";
            this.xrSubreportDonorDetails.ReportSource = new Bosco.Report.ReportObject.UcCCDonorDetail();
            this.xrSubreportDonorDetails.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.xrSubreportDonorDetails_BeforePrint);
            // 
            // grpReceiptGroup
            // 
            this.grpReceiptGroup.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrtblReceiptGroup});
            resources.ApplyResources(this.grpReceiptGroup, "grpReceiptGroup");
            this.grpReceiptGroup.Name = "grpReceiptGroup";
            // 
            // xrtblReceiptGroup
            // 
            resources.ApplyResources(this.xrtblReceiptGroup, "xrtblReceiptGroup");
            this.xrtblReceiptGroup.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right) 
            | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrtblReceiptGroup.Name = "xrtblReceiptGroup";
            this.xrtblReceiptGroup.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1});
            this.xrtblReceiptGroup.StylePriority.UseBorderColor = false;
            this.xrtblReceiptGroup.StylePriority.UseBorders = false;
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrGroupName,
            this.xrLedgerGroupCashRCAmt,
            this.xrLedGroupBankAmt});
            this.xrTableRow1.Name = "xrTableRow1";
            resources.ApplyResources(this.xrTableRow1, "xrTableRow1");
            // 
            // xrGroupName
            // 
            resources.ApplyResources(this.xrGroupName, "xrGroupName");
            this.xrGroupName.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Receipts.LEDGER_GROUP")});
            this.xrGroupName.Name = "xrGroupName";
            this.xrGroupName.Padding = new DevExpress.XtraPrinting.PaddingInfo(5, 0, 0, 0, 100F);
            this.xrGroupName.StylePriority.UseBackColor = false;
            this.xrGroupName.StylePriority.UseBorderColor = false;
            this.xrGroupName.StylePriority.UseFont = false;
            this.xrGroupName.StylePriority.UsePadding = false;
            this.xrGroupName.StylePriority.UseTextAlignment = false;
            // 
            // xrLedgerGroupCashRCAmt
            // 
            resources.ApplyResources(this.xrLedgerGroupCashRCAmt, "xrLedgerGroupCashRCAmt");
            this.xrLedgerGroupCashRCAmt.Name = "xrLedgerGroupCashRCAmt";
            this.xrLedgerGroupCashRCAmt.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 7, 0, 0, 100F);
            this.xrLedgerGroupCashRCAmt.StylePriority.UseBackColor = false;
            this.xrLedgerGroupCashRCAmt.StylePriority.UseBorderColor = false;
            this.xrLedgerGroupCashRCAmt.StylePriority.UseFont = false;
            this.xrLedgerGroupCashRCAmt.StylePriority.UsePadding = false;
            this.xrLedgerGroupCashRCAmt.StylePriority.UseTextAlignment = false;
            this.xrLedgerGroupCashRCAmt.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.xrLedgerGroupCashRCAmt_BeforePrint);
            // 
            // xrLedGroupBankAmt
            // 
            resources.ApplyResources(this.xrLedGroupBankAmt, "xrLedGroupBankAmt");
            this.xrLedGroupBankAmt.Name = "xrLedGroupBankAmt";
            this.xrLedGroupBankAmt.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 7, 0, 0, 100F);
            this.xrLedGroupBankAmt.StylePriority.UseBackColor = false;
            this.xrLedGroupBankAmt.StylePriority.UseBorderColor = false;
            this.xrLedGroupBankAmt.StylePriority.UseFont = false;
            this.xrLedGroupBankAmt.StylePriority.UsePadding = false;
            this.xrLedGroupBankAmt.StylePriority.UseTextAlignment = false;
            this.xrLedGroupBankAmt.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.xrLedGroupBankAmt_BeforePrint);
            // 
            // RPDuplicateNewAbstractReceiptsCashandBank
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.grpCostCentreNameReceipts,
            this.grpcostCenterCategory,
            this.grpCCBreakup,
            this.grpReceiptGroup});
            this.DataMember = "Receipts";
            this.DataSource = this.reportSetting1;
            resources.ApplyResources(this, "$this");
            this.Version = "13.2";
            this.Controls.SetChildIndex(this.grpReceiptGroup, 0);
            this.Controls.SetChildIndex(this.grpCCBreakup, 0);
            this.Controls.SetChildIndex(this.grpcostCenterCategory, 0);
            this.Controls.SetChildIndex(this.grpCostCentreNameReceipts, 0);
            this.Controls.SetChildIndex(this.Detail, 0);
            ((System.ComponentModel.ISupportInitialize)(this.dtTOCList)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.reportSetting1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrPaymentCostCentreName)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTblCostCentreCategoryName)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrCCBreakup)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTableReceipt)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrtblReceiptGroup)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        private ReportSetting reportSetting1;
        private DevExpress.XtraReports.UI.GroupHeaderBand grpCostCentreNameReceipts;
        private DevExpress.XtraReports.UI.XRTable xrPaymentCostCentreName;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow3;
        private DevExpress.XtraReports.UI.XRTableCell xrtblCellCostcentreName;
        private DevExpress.XtraReports.UI.GroupHeaderBand grpcostCenterCategory;
        private DevExpress.XtraReports.UI.XRTable xrTblCostCentreCategoryName;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow4;
        private DevExpress.XtraReports.UI.XRTableCell xrCostCentreCategoryName;
        private DevExpress.XtraReports.UI.GroupFooterBand grpCCBreakup;
        private DevExpress.XtraReports.UI.XRTable xrCCBreakup;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow5;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell2;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell4;
        private DevExpress.XtraReports.UI.XRPageBreak xrPageBreak1;
        private DevExpress.XtraReports.UI.XRTableCell xrcellCCCAmount;
        private DevExpress.XtraReports.UI.XRTableCell xrcellCCAmount;
        private DevExpress.XtraReports.UI.XRTable xrTableReceipt;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow2;
        private DevExpress.XtraReports.UI.XRTableCell xrLedgerCode;
        private DevExpress.XtraReports.UI.XRTableCell xrLedgerName;
        private DevExpress.XtraReports.UI.XRTableCell xrLedgerAmt;
        private DevExpress.XtraReports.UI.XRSubreport xrSubreportCCDetails;
        private DevExpress.XtraReports.UI.XRSubreport xrSubreportDonorDetails;
        private DevExpress.XtraReports.UI.XRTableCell xrLedgerBankAmt;
        private DevExpress.XtraReports.UI.GroupHeaderBand grpReceiptGroup;
        private DevExpress.XtraReports.UI.XRTable xrtblReceiptGroup;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow1;
        private DevExpress.XtraReports.UI.XRTableCell xrGroupName;
        private DevExpress.XtraReports.UI.XRTableCell xrLedgerGroupCashRCAmt;
        private DevExpress.XtraReports.UI.XRTableCell xrLedGroupBankAmt;
    }
}
