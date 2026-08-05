namespace ACPP.Modules.Master
{
    partial class frmBudgetView
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            DevExpress.XtraSplashScreen.SplashScreenManager splashScreenManager1 = new DevExpress.XtraSplashScreen.SplashScreenManager(this, null, true, true);
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmBudgetView));
            DevExpress.Utils.SuperToolTip superToolTip1 = new DevExpress.Utils.SuperToolTip();
            DevExpress.Utils.ToolTipTitleItem toolTipTitleItem1 = new DevExpress.Utils.ToolTipTitleItem();
            DevExpress.Utils.ToolTipItem toolTipItem1 = new DevExpress.Utils.ToolTipItem();
            DevExpress.Utils.SuperToolTip superToolTip2 = new DevExpress.Utils.SuperToolTip();
            DevExpress.Utils.ToolTipTitleItem toolTipTitleItem2 = new DevExpress.Utils.ToolTipTitleItem();
            DevExpress.Utils.ToolTipItem toolTipItem2 = new DevExpress.Utils.ToolTipItem();
            DevExpress.Utils.SerializableAppearanceObject serializableAppearanceObject1 = new DevExpress.Utils.SerializableAppearanceObject();
            this.layoutControl1 = new DevExpress.XtraLayout.LayoutControl();
            this.btnUserDefinedBudget = new DevExpress.XtraEditors.SimpleButton();
            this.OptOneTwoMonth = new DevExpress.XtraEditors.RadioGroup();
            this.ucBudget = new Bosco.Utility.Controls.ucToolBar();
            this.pnlBudgetFooter = new DevExpress.XtraEditors.PanelControl();
            this.lblcount = new DevExpress.XtraEditors.LabelControl();
            this.lblRecordCount = new DevExpress.XtraEditors.LabelControl();
            this.chkFilterRow = new DevExpress.XtraEditors.CheckEdit();
            this.gcBudget = new DevExpress.XtraGrid.GridControl();
            this.gvBudget = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colBudgetId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBudgetMonthRow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBudgetName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBudgetLevelType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBudgetType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProject = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDateFrom = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDateTo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStatus = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsActive = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectIds = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBudgetTypeId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gccolDistributionIcon = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rbtnBudgetDistributeIcon = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.colBudgetAction = new DevExpress.XtraGrid.Columns.GridColumn();
            this.layoutControlGroup1 = new DevExpress.XtraLayout.LayoutControlGroup();
            this.layoutControlItem2 = new DevExpress.XtraLayout.LayoutControlItem();
            this.layoutControlItem3 = new DevExpress.XtraLayout.LayoutControlItem();
            this.layoutControlItem4 = new DevExpress.XtraLayout.LayoutControlItem();
            this.lcMysoreMonths = new DevExpress.XtraLayout.LayoutControlItem();
            this.lcUserDefinedBudgetDetails = new DevExpress.XtraLayout.LayoutControlItem();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControl1)).BeginInit();
            this.layoutControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.OptOneTwoMonth.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlBudgetFooter)).BeginInit();
            this.pnlBudgetFooter.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkFilterRow.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcBudget)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvBudget)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rbtnBudgetDistributeIcon)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlGroup1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcMysoreMonths)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcUserDefinedBudgetDetails)).BeginInit();
            this.SuspendLayout();
            // 
            // layoutControl1
            // 
            this.layoutControl1.Controls.Add(this.btnUserDefinedBudget);
            this.layoutControl1.Controls.Add(this.OptOneTwoMonth);
            this.layoutControl1.Controls.Add(this.ucBudget);
            this.layoutControl1.Controls.Add(this.pnlBudgetFooter);
            this.layoutControl1.Controls.Add(this.gcBudget);
            resources.ApplyResources(this.layoutControl1, "layoutControl1");
            this.layoutControl1.Name = "layoutControl1";
            this.layoutControl1.OptionsCustomizationForm.DesignTimeCustomizationFormPositionAndSize = new System.Drawing.Rectangle(929, 229, 250, 350);
            this.layoutControl1.Root = this.layoutControlGroup1;
            // 
            // btnUserDefinedBudget
            // 
            resources.ApplyResources(this.btnUserDefinedBudget, "btnUserDefinedBudget");
            this.btnUserDefinedBudget.Name = "btnUserDefinedBudget";
            this.btnUserDefinedBudget.StyleController = this.layoutControl1;
            this.btnUserDefinedBudget.Click += new System.EventHandler(this.btnUserDefinedBudget_Click);
            // 
            // OptOneTwoMonth
            // 
            resources.ApplyResources(this.OptOneTwoMonth, "OptOneTwoMonth");
            this.OptOneTwoMonth.Name = "OptOneTwoMonth";
            this.OptOneTwoMonth.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(((object)(resources.GetObject("OptOneTwoMonth.Properties.Items"))), resources.GetString("OptOneTwoMonth.Properties.Items1")),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(((object)(resources.GetObject("OptOneTwoMonth.Properties.Items2"))), resources.GetString("OptOneTwoMonth.Properties.Items3"))});
            this.OptOneTwoMonth.StyleController = this.layoutControl1;
            this.OptOneTwoMonth.SelectedIndexChanged += new System.EventHandler(this.OptOneTwoMonth_SelectedIndexChanged);
            // 
            // ucBudget
            // 
            this.ucBudget.ChangeAddCaption = "&Add";
            this.ucBudget.ChangeCaption = "&Edit";
            this.ucBudget.ChangeDeleteCaption = "&Delete";
            this.ucBudget.ChangeMoveVoucherCaption = "&Move Voucher";
            resources.ApplyResources(toolTipTitleItem1, "toolTipTitleItem1");
            toolTipItem1.LeftIndent = 6;
            resources.ApplyResources(toolTipItem1, "toolTipItem1");
            superToolTip1.Items.Add(toolTipTitleItem1);
            superToolTip1.Items.Add(toolTipItem1);
            this.ucBudget.ChangeMoveVoucherTooltip = superToolTip1;
            this.ucBudget.ChangeNatureOfPaymentCaption = "&Nature of Payments";
            this.ucBudget.ChangePostInterestCaption = "P&ost Interest";
            toolTipTitleItem2.Appearance.Image = ((System.Drawing.Image)(resources.GetObject("resource.Image")));
            toolTipTitleItem2.Appearance.Options.UseImage = true;
            resources.ApplyResources(toolTipTitleItem2, "toolTipTitleItem2");
            toolTipItem2.LeftIndent = 6;
            resources.ApplyResources(toolTipItem2, "toolTipItem2");
            superToolTip2.Items.Add(toolTipTitleItem2);
            superToolTip2.Items.Add(toolTipItem2);
            this.ucBudget.ChangePostInterestSuperToolTip = superToolTip2;
            this.ucBudget.ChangePrintCaption = "&Print/Export";
            this.ucBudget.ChnageRenewCaption = "Re<u>n</u>ew";
            this.ucBudget.DisableAddButton = true;
            this.ucBudget.DisableAMCRenew = true;
            this.ucBudget.DisableCloseButton = true;
            this.ucBudget.DisableDeleteButton = true;
            this.ucBudget.DisableDownloadExcel = true;
            this.ucBudget.DisableEditButton = true;
            this.ucBudget.DisableInsertVoucher = true;
            this.ucBudget.DisableMoveTransaction = true;
            this.ucBudget.DisableNatureofPayments = true;
            this.ucBudget.DisablePostInterest = true;
            this.ucBudget.DisablePrintButton = true;
            this.ucBudget.DisableRestoreVoucher = false;
            resources.ApplyResources(this.ucBudget, "ucBudget");
            this.ucBudget.Name = "ucBudget";
            this.ucBudget.ShowHTML = true;
            this.ucBudget.ShowMMT = true;
            this.ucBudget.ShowPDF = true;
            this.ucBudget.ShowRTF = true;
            this.ucBudget.ShowText = true;
            this.ucBudget.ShowXLS = true;
            this.ucBudget.ShowXLSX = true;
            this.ucBudget.VisbleInsertVoucher = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucBudget.VisibleAddButton = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucBudget.VisibleClose = DevExpress.XtraBars.BarItemVisibility.Always;
            this.ucBudget.VisibleDeleteButton = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucBudget.VisibleDownloadExcel = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucBudget.VisibleEditButton = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucBudget.VisibleMoveTrans = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucBudget.VisibleNatureofPayments = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucBudget.VisibleNegativeBalance = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucBudget.VisiblePostInterest = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucBudget.VisiblePrintButton = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucBudget.VisibleRefresh = DevExpress.XtraBars.BarItemVisibility.Always;
            this.ucBudget.VisibleRenew = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucBudget.VisibleRestoreVoucher = DevExpress.XtraBars.BarItemVisibility.Never;
            this.ucBudget.AddClicked += new System.EventHandler(this.ucBudget_AddClicked);
            this.ucBudget.EditClicked += new System.EventHandler(this.ucBudget_EditClicked);
            this.ucBudget.DeleteClicked += new System.EventHandler(this.ucBudget_DeleteClicked);
            this.ucBudget.PrintClicked += new System.EventHandler(this.ucBudget_PrintClicked);
            this.ucBudget.CloseClicked += new System.EventHandler(this.ucBudget_CloseClicked);
            this.ucBudget.RefreshClicked += new System.EventHandler(this.ucBudget_RefreshClicked);
            // 
            // pnlBudgetFooter
            // 
            this.pnlBudgetFooter.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.pnlBudgetFooter.Controls.Add(this.lblcount);
            this.pnlBudgetFooter.Controls.Add(this.lblRecordCount);
            this.pnlBudgetFooter.Controls.Add(this.chkFilterRow);
            resources.ApplyResources(this.pnlBudgetFooter, "pnlBudgetFooter");
            this.pnlBudgetFooter.Name = "pnlBudgetFooter";
            // 
            // lblcount
            // 
            resources.ApplyResources(this.lblcount, "lblcount");
            this.lblcount.Appearance.Font = ((System.Drawing.Font)(resources.GetObject("lblcount.Appearance.Font")));
            this.lblcount.Name = "lblcount";
            // 
            // lblRecordCount
            // 
            resources.ApplyResources(this.lblRecordCount, "lblRecordCount");
            this.lblRecordCount.Appearance.Font = ((System.Drawing.Font)(resources.GetObject("lblRecordCount.Appearance.Font")));
            this.lblRecordCount.Name = "lblRecordCount";
            // 
            // chkFilterRow
            // 
            resources.ApplyResources(this.chkFilterRow, "chkFilterRow");
            this.chkFilterRow.Name = "chkFilterRow";
            this.chkFilterRow.Properties.AllowHtmlDraw = DevExpress.Utils.DefaultBoolean.True;
            this.chkFilterRow.Properties.Caption = resources.GetString("chkFilterRow.Properties.Caption");
            this.chkFilterRow.CheckedChanged += new System.EventHandler(this.chkFilterRow_CheckedChanged);
            // 
            // gcBudget
            // 
            resources.ApplyResources(this.gcBudget, "gcBudget");
            this.gcBudget.MainView = this.gvBudget;
            this.gcBudget.Name = "gcBudget";
            this.gcBudget.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.rbtnBudgetDistributeIcon});
            this.gcBudget.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvBudget});
            // 
            // gvBudget
            // 
            this.gvBudget.Appearance.FocusedRow.Font = ((System.Drawing.Font)(resources.GetObject("gvBudget.Appearance.FocusedRow.Font")));
            this.gvBudget.Appearance.FocusedRow.Options.UseFont = true;
            this.gvBudget.Appearance.HeaderPanel.Font = ((System.Drawing.Font)(resources.GetObject("gvBudget.Appearance.HeaderPanel.Font")));
            this.gvBudget.Appearance.HeaderPanel.Options.UseFont = true;
            this.gvBudget.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colBudgetId,
            this.colBudgetMonthRow,
            this.colBudgetName,
            this.colBudgetLevelType,
            this.colBudgetType,
            this.colProject,
            this.colDateFrom,
            this.colDateTo,
            this.colStatus,
            this.colIsActive,
            this.colProjectIds,
            this.colBudgetTypeId,
            this.gccolDistributionIcon,
            this.colBudgetAction});
            this.gvBudget.GridControl = this.gcBudget;
            this.gvBudget.Name = "gvBudget";
            this.gvBudget.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.gvBudget.OptionsView.ShowGroupPanel = false;
            this.gvBudget.OptionsView.ShowIndicator = false;
            this.gvBudget.RowStyle += new DevExpress.XtraGrid.Views.Grid.RowStyleEventHandler(this.gvBudget_RowStyle);
            this.gvBudget.Click += new System.EventHandler(this.gvBudget_Click);
            this.gvBudget.DoubleClick += new System.EventHandler(this.gvBudget_DoubleClick);
            this.gvBudget.RowCountChanged += new System.EventHandler(this.gvBudget_RowCountChanged);
            // 
            // colBudgetId
            // 
            resources.ApplyResources(this.colBudgetId, "colBudgetId");
            this.colBudgetId.FieldName = "BUDGET_ID";
            this.colBudgetId.Name = "colBudgetId";
            // 
            // colBudgetMonthRow
            // 
            this.colBudgetMonthRow.AppearanceCell.Font = ((System.Drawing.Font)(resources.GetObject("colBudgetMonthRow.AppearanceCell.Font")));
            this.colBudgetMonthRow.AppearanceCell.Options.UseFont = true;
            this.colBudgetMonthRow.AppearanceCell.Options.UseTextOptions = true;
            this.colBudgetMonthRow.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colBudgetMonthRow.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colBudgetMonthRow.AppearanceHeader.Font")));
            this.colBudgetMonthRow.AppearanceHeader.Options.UseFont = true;
            resources.ApplyResources(this.colBudgetMonthRow, "colBudgetMonthRow");
            this.colBudgetMonthRow.FieldName = "MONTH_ROW";
            this.colBudgetMonthRow.Name = "colBudgetMonthRow";
            this.colBudgetMonthRow.OptionsColumn.AllowEdit = false;
            this.colBudgetMonthRow.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colBudgetMonthRow.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.True;
            this.colBudgetMonthRow.OptionsColumn.AllowMove = false;
            this.colBudgetMonthRow.OptionsFilter.AutoFilterCondition = DevExpress.XtraGrid.Columns.AutoFilterCondition.Contains;
            // 
            // colBudgetName
            // 
            this.colBudgetName.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colBudgetName.AppearanceHeader.Font")));
            this.colBudgetName.AppearanceHeader.Options.UseFont = true;
            resources.ApplyResources(this.colBudgetName, "colBudgetName");
            this.colBudgetName.FieldName = "BUDGET_NAME";
            this.colBudgetName.Name = "colBudgetName";
            this.colBudgetName.OptionsColumn.AllowEdit = false;
            this.colBudgetName.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colBudgetName.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBudgetName.OptionsColumn.AllowMove = false;
            this.colBudgetName.OptionsColumn.ReadOnly = true;
            this.colBudgetName.OptionsFilter.AutoFilterCondition = DevExpress.XtraGrid.Columns.AutoFilterCondition.Contains;
            // 
            // colBudgetLevelType
            // 
            this.colBudgetLevelType.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colBudgetLevelType.AppearanceHeader.Font")));
            this.colBudgetLevelType.AppearanceHeader.Options.UseFont = true;
            resources.ApplyResources(this.colBudgetLevelType, "colBudgetLevelType");
            this.colBudgetLevelType.FieldName = "BUDGET_LEVEL_NAME";
            this.colBudgetLevelType.Name = "colBudgetLevelType";
            // 
            // colBudgetType
            // 
            this.colBudgetType.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colBudgetType.AppearanceHeader.Font")));
            this.colBudgetType.AppearanceHeader.Options.UseFont = true;
            resources.ApplyResources(this.colBudgetType, "colBudgetType");
            this.colBudgetType.FieldName = "BUDGET_TYPE";
            this.colBudgetType.Name = "colBudgetType";
            this.colBudgetType.OptionsColumn.AllowEdit = false;
            this.colBudgetType.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colBudgetType.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBudgetType.OptionsColumn.ReadOnly = true;
            this.colBudgetType.OptionsFilter.AutoFilterCondition = DevExpress.XtraGrid.Columns.AutoFilterCondition.Contains;
            // 
            // colProject
            // 
            this.colProject.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colProject.AppearanceHeader.Font")));
            this.colProject.AppearanceHeader.Options.UseFont = true;
            resources.ApplyResources(this.colProject, "colProject");
            this.colProject.FieldName = "PROJECT";
            this.colProject.Name = "colProject";
            this.colProject.OptionsColumn.AllowEdit = false;
            this.colProject.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colProject.OptionsColumn.AllowMove = false;
            this.colProject.OptionsColumn.AllowSize = false;
            this.colProject.OptionsColumn.ReadOnly = true;
            this.colProject.OptionsFilter.AutoFilterCondition = DevExpress.XtraGrid.Columns.AutoFilterCondition.Contains;
            // 
            // colDateFrom
            // 
            this.colDateFrom.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colDateFrom.AppearanceHeader.Font")));
            this.colDateFrom.AppearanceHeader.Options.UseFont = true;
            resources.ApplyResources(this.colDateFrom, "colDateFrom");
            this.colDateFrom.FieldName = "DATE_FROM";
            this.colDateFrom.Name = "colDateFrom";
            this.colDateFrom.OptionsColumn.AllowEdit = false;
            this.colDateFrom.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colDateFrom.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDateFrom.OptionsColumn.AllowMove = false;
            this.colDateFrom.OptionsColumn.AllowSize = false;
            this.colDateFrom.OptionsColumn.FixedWidth = true;
            this.colDateFrom.OptionsColumn.ReadOnly = true;
            this.colDateFrom.OptionsFilter.AutoFilterCondition = DevExpress.XtraGrid.Columns.AutoFilterCondition.Contains;
            // 
            // colDateTo
            // 
            this.colDateTo.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colDateTo.AppearanceHeader.Font")));
            this.colDateTo.AppearanceHeader.Options.UseFont = true;
            resources.ApplyResources(this.colDateTo, "colDateTo");
            this.colDateTo.FieldName = "DATE_TO";
            this.colDateTo.Name = "colDateTo";
            this.colDateTo.OptionsColumn.AllowEdit = false;
            this.colDateTo.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colDateTo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDateTo.OptionsColumn.AllowMove = false;
            this.colDateTo.OptionsColumn.AllowSize = false;
            this.colDateTo.OptionsColumn.FixedWidth = true;
            this.colDateTo.OptionsColumn.ReadOnly = true;
            this.colDateTo.OptionsFilter.AutoFilterCondition = DevExpress.XtraGrid.Columns.AutoFilterCondition.Contains;
            // 
            // colStatus
            // 
            this.colStatus.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colStatus.AppearanceHeader.Font")));
            this.colStatus.AppearanceHeader.Options.UseFont = true;
            resources.ApplyResources(this.colStatus, "colStatus");
            this.colStatus.FieldName = "STATUS";
            this.colStatus.Name = "colStatus";
            this.colStatus.OptionsColumn.AllowEdit = false;
            this.colStatus.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colStatus.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colStatus.OptionsColumn.AllowMove = false;
            this.colStatus.OptionsColumn.AllowSize = false;
            this.colStatus.OptionsColumn.FixedWidth = true;
            this.colStatus.OptionsColumn.ReadOnly = true;
            this.colStatus.OptionsFilter.AutoFilterCondition = DevExpress.XtraGrid.Columns.AutoFilterCondition.Contains;
            // 
            // colIsActive
            // 
            resources.ApplyResources(this.colIsActive, "colIsActive");
            this.colIsActive.FieldName = "IS_ACTIVE";
            this.colIsActive.Name = "colIsActive";
            this.colIsActive.OptionsFilter.AutoFilterCondition = DevExpress.XtraGrid.Columns.AutoFilterCondition.Contains;
            // 
            // colProjectIds
            // 
            resources.ApplyResources(this.colProjectIds, "colProjectIds");
            this.colProjectIds.FieldName = "PROJECT_ID";
            this.colProjectIds.Name = "colProjectIds";
            // 
            // colBudgetTypeId
            // 
            this.colBudgetTypeId.FieldName = "BUDGET_TYPE_ID";
            this.colBudgetTypeId.Name = "colBudgetTypeId";
            // 
            // gccolDistributionIcon
            // 
            this.gccolDistributionIcon.ColumnEdit = this.rbtnBudgetDistributeIcon;
            this.gccolDistributionIcon.FieldName = "IS_MONTH_WISE";
            this.gccolDistributionIcon.Name = "gccolDistributionIcon";
            this.gccolDistributionIcon.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.gccolDistributionIcon.OptionsColumn.AllowIncrementalSearch = false;
            this.gccolDistributionIcon.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.gccolDistributionIcon.OptionsColumn.AllowMove = false;
            this.gccolDistributionIcon.OptionsColumn.AllowSize = false;
            this.gccolDistributionIcon.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.gccolDistributionIcon.OptionsColumn.FixedWidth = true;
            this.gccolDistributionIcon.OptionsColumn.ShowCaption = false;
            this.gccolDistributionIcon.OptionsColumn.ShowInCustomizationForm = false;
            this.gccolDistributionIcon.OptionsColumn.ShowInExpressionEditor = false;
            this.gccolDistributionIcon.OptionsColumn.TabStop = false;
            this.gccolDistributionIcon.OptionsFilter.AllowAutoFilter = false;
            this.gccolDistributionIcon.OptionsFilter.AllowFilter = false;
            this.gccolDistributionIcon.ShowButtonMode = DevExpress.XtraGrid.Views.Base.ShowButtonModeEnum.ShowAlways;
            resources.ApplyResources(this.gccolDistributionIcon, "gccolDistributionIcon");
            // 
            // rbtnBudgetDistributeIcon
            // 
            resources.ApplyResources(this.rbtnBudgetDistributeIcon, "rbtnBudgetDistributeIcon");
            this.rbtnBudgetDistributeIcon.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(((DevExpress.XtraEditors.Controls.ButtonPredefines)(resources.GetObject("rbtnBudgetDistributeIcon.Buttons"))), resources.GetString("rbtnBudgetDistributeIcon.Buttons1"), ((int)(resources.GetObject("rbtnBudgetDistributeIcon.Buttons2"))), ((bool)(resources.GetObject("rbtnBudgetDistributeIcon.Buttons3"))), ((bool)(resources.GetObject("rbtnBudgetDistributeIcon.Buttons4"))), ((bool)(resources.GetObject("rbtnBudgetDistributeIcon.Buttons5"))), ((DevExpress.XtraEditors.ImageLocation)(resources.GetObject("rbtnBudgetDistributeIcon.Buttons6"))), ((System.Drawing.Image)(resources.GetObject("rbtnBudgetDistributeIcon.Buttons7"))), new DevExpress.Utils.KeyShortcut(System.Windows.Forms.Keys.None), serializableAppearanceObject1, resources.GetString("rbtnBudgetDistributeIcon.Buttons8"), ((object)(resources.GetObject("rbtnBudgetDistributeIcon.Buttons9"))), ((DevExpress.Utils.SuperToolTip)(resources.GetObject("rbtnBudgetDistributeIcon.Buttons10"))), ((bool)(resources.GetObject("rbtnBudgetDistributeIcon.Buttons11"))))});
            this.rbtnBudgetDistributeIcon.Name = "rbtnBudgetDistributeIcon";
            this.rbtnBudgetDistributeIcon.Click += new System.EventHandler(this.rbtnBudgetDistributeIcon_Click);
            // 
            // colBudgetAction
            // 
            this.colBudgetAction.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colBudgetAction.AppearanceHeader.Font")));
            this.colBudgetAction.AppearanceHeader.Options.UseFont = true;
            resources.ApplyResources(this.colBudgetAction, "colBudgetAction");
            this.colBudgetAction.FieldName = "BUDGET_ACTION";
            this.colBudgetAction.Name = "colBudgetAction";
            this.colBudgetAction.OptionsColumn.AllowEdit = false;
            this.colBudgetAction.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colBudgetAction.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBudgetAction.OptionsColumn.AllowMove = false;
            this.colBudgetAction.OptionsColumn.FixedWidth = true;
            this.colBudgetAction.OptionsFilter.AutoFilterCondition = DevExpress.XtraGrid.Columns.AutoFilterCondition.Contains;
            // 
            // layoutControlGroup1
            // 
            resources.ApplyResources(this.layoutControlGroup1, "layoutControlGroup1");
            this.layoutControlGroup1.EnableIndentsWithoutBorders = DevExpress.Utils.DefaultBoolean.True;
            this.layoutControlGroup1.GroupBordersVisible = false;
            this.layoutControlGroup1.Items.AddRange(new DevExpress.XtraLayout.BaseLayoutItem[] {
            this.layoutControlItem2,
            this.layoutControlItem3,
            this.layoutControlItem4,
            this.lcMysoreMonths,
            this.lcUserDefinedBudgetDetails});
            this.layoutControlGroup1.Location = new System.Drawing.Point(0, 0);
            this.layoutControlGroup1.Name = "Root";
            this.layoutControlGroup1.Padding = new DevExpress.XtraLayout.Utils.Padding(0, 0, 0, 0);
            this.layoutControlGroup1.Size = new System.Drawing.Size(998, 464);
            this.layoutControlGroup1.TextVisible = false;
            // 
            // layoutControlItem2
            // 
            this.layoutControlItem2.Control = this.gcBudget;
            resources.ApplyResources(this.layoutControlItem2, "layoutControlItem2");
            this.layoutControlItem2.Location = new System.Drawing.Point(0, 29);
            this.layoutControlItem2.MinSize = new System.Drawing.Size(104, 24);
            this.layoutControlItem2.Name = "layoutControlItem2";
            this.layoutControlItem2.Size = new System.Drawing.Size(998, 411);
            this.layoutControlItem2.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.layoutControlItem2.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem2.TextToControlDistance = 0;
            this.layoutControlItem2.TextVisible = false;
            // 
            // layoutControlItem3
            // 
            this.layoutControlItem3.Control = this.pnlBudgetFooter;
            resources.ApplyResources(this.layoutControlItem3, "layoutControlItem3");
            this.layoutControlItem3.Location = new System.Drawing.Point(0, 440);
            this.layoutControlItem3.Name = "layoutControlItem3";
            this.layoutControlItem3.Size = new System.Drawing.Size(998, 24);
            this.layoutControlItem3.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem3.TextToControlDistance = 0;
            this.layoutControlItem3.TextVisible = false;
            // 
            // layoutControlItem4
            // 
            this.layoutControlItem4.Control = this.ucBudget;
            resources.ApplyResources(this.layoutControlItem4, "layoutControlItem4");
            this.layoutControlItem4.Location = new System.Drawing.Point(0, 0);
            this.layoutControlItem4.Name = "layoutControlItem4";
            this.layoutControlItem4.Padding = new DevExpress.XtraLayout.Utils.Padding(0, 0, 2, 0);
            this.layoutControlItem4.Size = new System.Drawing.Size(704, 29);
            this.layoutControlItem4.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem4.TextToControlDistance = 0;
            this.layoutControlItem4.TextVisible = false;
            // 
            // lcMysoreMonths
            // 
            this.lcMysoreMonths.Control = this.OptOneTwoMonth;
            resources.ApplyResources(this.lcMysoreMonths, "lcMysoreMonths");
            this.lcMysoreMonths.Location = new System.Drawing.Point(818, 0);
            this.lcMysoreMonths.MaxSize = new System.Drawing.Size(180, 29);
            this.lcMysoreMonths.MinSize = new System.Drawing.Size(180, 29);
            this.lcMysoreMonths.Name = "lcMysoreMonths";
            this.lcMysoreMonths.Size = new System.Drawing.Size(180, 29);
            this.lcMysoreMonths.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.lcMysoreMonths.TextSize = new System.Drawing.Size(0, 0);
            this.lcMysoreMonths.TextToControlDistance = 0;
            this.lcMysoreMonths.TextVisible = false;
            this.lcMysoreMonths.Visibility = DevExpress.XtraLayout.Utils.LayoutVisibility.Never;
            // 
            // lcUserDefinedBudgetDetails
            // 
            this.lcUserDefinedBudgetDetails.Control = this.btnUserDefinedBudget;
            this.lcUserDefinedBudgetDetails.ControlAlignment = System.Drawing.ContentAlignment.MiddleCenter;
            resources.ApplyResources(this.lcUserDefinedBudgetDetails, "lcUserDefinedBudgetDetails");
            this.lcUserDefinedBudgetDetails.ImageAlignment = System.Drawing.ContentAlignment.MiddleCenter;
            this.lcUserDefinedBudgetDetails.Location = new System.Drawing.Point(704, 0);
            this.lcUserDefinedBudgetDetails.MaxSize = new System.Drawing.Size(114, 29);
            this.lcUserDefinedBudgetDetails.MinSize = new System.Drawing.Size(114, 29);
            this.lcUserDefinedBudgetDetails.Name = "lcUserDefinedBudgetDetails";
            this.lcUserDefinedBudgetDetails.Padding = new DevExpress.XtraLayout.Utils.Padding(2, 2, 3, 2);
            this.lcUserDefinedBudgetDetails.Size = new System.Drawing.Size(114, 29);
            this.lcUserDefinedBudgetDetails.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.lcUserDefinedBudgetDetails.TextSize = new System.Drawing.Size(0, 0);
            this.lcUserDefinedBudgetDetails.TextToControlDistance = 0;
            this.lcUserDefinedBudgetDetails.TextVisible = false;
            this.lcUserDefinedBudgetDetails.TrimClientAreaToControl = false;
            // 
            // frmBudgetView
            // 
            resources.ApplyResources(this, "$this");
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.layoutControl1);
            this.Name = "frmBudgetView";
            this.ShowFilterClicked += new System.EventHandler(this.frmBudgetView_ShowFilterClicked);
            this.EnterClicked += new System.EventHandler(this.frmBudgetView_EnterClicked);
            this.Activated += new System.EventHandler(this.frmBudgetView_Activated);
            this.Load += new System.EventHandler(this.frmBudgetView_Load);
            ((System.ComponentModel.ISupportInitialize)(this.layoutControl1)).EndInit();
            this.layoutControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.OptOneTwoMonth.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlBudgetFooter)).EndInit();
            this.pnlBudgetFooter.ResumeLayout(false);
            this.pnlBudgetFooter.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkFilterRow.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcBudget)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvBudget)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rbtnBudgetDistributeIcon)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlGroup1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcMysoreMonths)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcUserDefinedBudgetDetails)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraLayout.LayoutControl layoutControl1;
        private DevExpress.XtraGrid.GridControl gcBudget;
        private DevExpress.XtraGrid.Views.Grid.GridView gvBudget;
        private DevExpress.XtraLayout.LayoutControlGroup layoutControlGroup1;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem2;
        private DevExpress.XtraEditors.PanelControl pnlBudgetFooter;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem3;
        private DevExpress.XtraGrid.Columns.GridColumn colBudgetName;
        private DevExpress.XtraGrid.Columns.GridColumn colDateFrom;
        private DevExpress.XtraGrid.Columns.GridColumn colDateTo;
        private DevExpress.XtraGrid.Columns.GridColumn colStatus;
        private DevExpress.XtraGrid.Columns.GridColumn colBudgetId;
        private DevExpress.XtraEditors.CheckEdit chkFilterRow;
        private DevExpress.XtraGrid.Columns.GridColumn colIsActive;
        private DevExpress.XtraEditors.LabelControl lblcount;
        private DevExpress.XtraEditors.LabelControl lblRecordCount;
        private DevExpress.XtraGrid.Columns.GridColumn colProject;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectIds;
        private DevExpress.XtraGrid.Columns.GridColumn colBudgetType;
        private DevExpress.XtraGrid.Columns.GridColumn colBudgetTypeId;
        private DevExpress.XtraGrid.Columns.GridColumn colBudgetLevelType;
        private Bosco.Utility.Controls.ucToolBar ucBudget;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem4;
        private DevExpress.XtraGrid.Columns.GridColumn gccolDistributionIcon;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit rbtnBudgetDistributeIcon;
        private DevExpress.XtraGrid.Columns.GridColumn colBudgetMonthRow;
        private DevExpress.XtraEditors.RadioGroup OptOneTwoMonth;
        private DevExpress.XtraLayout.LayoutControlItem lcMysoreMonths;
        private DevExpress.XtraGrid.Columns.GridColumn colBudgetAction;
        private DevExpress.XtraEditors.SimpleButton btnUserDefinedBudget;
        private DevExpress.XtraLayout.LayoutControlItem lcUserDefinedBudgetDetails;




    }
}