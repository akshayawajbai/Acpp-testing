namespace ACPP.Modules.Master
{
    partial class frmBudgetUserDefined
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmBudgetUserDefined));
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode2 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode3 = new DevExpress.XtraGrid.GridLevelNode();
            this.layoutControl1 = new DevExpress.XtraLayout.LayoutControl();
            this.grdLkpProject = new DevExpress.XtraEditors.GridLookUpEdit();
            this.gvProjects = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gccolProjectId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gccolProject = new DevExpress.XtraGrid.Columns.GridColumn();
            this.txtCLBalanceFD = new DevExpress.XtraEditors.TextEdit();
            this.txtCLBalanceBank = new DevExpress.XtraEditors.TextEdit();
            this.txtCLBalanceCash = new DevExpress.XtraEditors.TextEdit();
            this.txtOpBalanceFD = new DevExpress.XtraEditors.TextEdit();
            this.txtBankOpBalanceAmount = new DevExpress.XtraEditors.TextEdit();
            this.txtOPBalanceCash = new DevExpress.XtraEditors.TextEdit();
            this.cbUserDefinedYear = new DevExpress.XtraEditors.ComboBoxEdit();
            this.gcExpenseLedgers = new DevExpress.XtraGrid.GridControl();
            this.gvExpenseLedger = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colExpenseLedgerId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colExpenseLedgerGroup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colExpenseLedgerCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colExpenseLedger = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colExpenseActualAmount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rtxtExpenseActualAmount = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.colExpenseActual17_18 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colExpenseActual18_19 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcIncomeLedgers = new DevExpress.XtraGrid.GridControl();
            this.gvIncomeLedger = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colIncomeLedgerId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIncomeLedgerGroup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIncomeLedgerCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIncomeLedger = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIncomeActualAmount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rtxtIncomeActualAmount = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.colIncomeActual17_18 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIncomeActual18_19 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.chkFilter = new DevExpress.XtraEditors.CheckEdit();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnSave = new DevExpress.XtraEditors.SimpleButton();
            this.layoutControlGroup1 = new DevExpress.XtraLayout.LayoutControlGroup();
            this.layoutControlItem5 = new DevExpress.XtraLayout.LayoutControlItem();
            this.layoutControlItem6 = new DevExpress.XtraLayout.LayoutControlItem();
            this.lcFilter = new DevExpress.XtraLayout.LayoutControlItem();
            this.emptySpaceItem2 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.lcIncomeBudgetLedgers = new DevExpress.XtraLayout.LayoutControlItem();
            this.lcExpenseBudgetLedgers = new DevExpress.XtraLayout.LayoutControlItem();
            this.emptySpaceItem1 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.lcUserDefinedYear = new DevExpress.XtraLayout.LayoutControlItem();
            this.lcOpBalanceCash = new DevExpress.XtraLayout.LayoutControlItem();
            this.emptySpaceItem3 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.lcOpBalanceBankAccounts = new DevExpress.XtraLayout.LayoutControlItem();
            this.emptySpaceItem4 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.lcOPBalanceFD = new DevExpress.XtraLayout.LayoutControlItem();
            this.emptySpaceItem5 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.lcCLBalanceCash = new DevExpress.XtraLayout.LayoutControlItem();
            this.lcCLBalanceBankAccount = new DevExpress.XtraLayout.LayoutControlItem();
            this.lcCLBalanceFD = new DevExpress.XtraLayout.LayoutControlItem();
            this.lblOPCaption = new DevExpress.XtraLayout.SimpleLabelItem();
            this.lblCLCaption = new DevExpress.XtraLayout.SimpleLabelItem();
            this.emptySpaceItem6 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.emptySpaceItem7 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.emptySpaceItem8 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.emptySpaceItem9 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.emptySpaceItem10 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.emptySpaceItem11 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.lcProject = new DevExpress.XtraLayout.LayoutControlItem();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControl1)).BeginInit();
            this.layoutControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.grdLkpProject.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvProjects)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCLBalanceFD.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCLBalanceBank.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCLBalanceCash.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtOpBalanceFD.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBankOpBalanceAmount.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtOPBalanceCash.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbUserDefinedYear.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcExpenseLedgers)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvExpenseLedger)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rtxtExpenseActualAmount)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcIncomeLedgers)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvIncomeLedger)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rtxtIncomeActualAmount)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkFilter.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlGroup1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem6)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcFilter)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcIncomeBudgetLedgers)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcExpenseBudgetLedgers)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcUserDefinedYear)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcOpBalanceCash)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcOpBalanceBankAccounts)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcOPBalanceFD)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcCLBalanceCash)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcCLBalanceBankAccount)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcCLBalanceFD)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lblOPCaption)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lblCLCaption)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem6)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem7)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem8)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem9)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem10)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem11)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcProject)).BeginInit();
            this.SuspendLayout();
            // 
            // layoutControl1
            // 
            this.layoutControl1.Controls.Add(this.grdLkpProject);
            this.layoutControl1.Controls.Add(this.txtCLBalanceFD);
            this.layoutControl1.Controls.Add(this.txtCLBalanceBank);
            this.layoutControl1.Controls.Add(this.txtCLBalanceCash);
            this.layoutControl1.Controls.Add(this.txtOpBalanceFD);
            this.layoutControl1.Controls.Add(this.txtBankOpBalanceAmount);
            this.layoutControl1.Controls.Add(this.txtOPBalanceCash);
            this.layoutControl1.Controls.Add(this.cbUserDefinedYear);
            this.layoutControl1.Controls.Add(this.gcExpenseLedgers);
            this.layoutControl1.Controls.Add(this.gcIncomeLedgers);
            this.layoutControl1.Controls.Add(this.chkFilter);
            this.layoutControl1.Controls.Add(this.btnCancel);
            this.layoutControl1.Controls.Add(this.btnSave);
            resources.ApplyResources(this.layoutControl1, "layoutControl1");
            this.layoutControl1.Name = "layoutControl1";
            this.layoutControl1.OptionsCustomizationForm.DesignTimeCustomizationFormPositionAndSize = new System.Drawing.Rectangle(405, 218, 266, 369);
            this.layoutControl1.Root = this.layoutControlGroup1;
            // 
            // grdLkpProject
            // 
            resources.ApplyResources(this.grdLkpProject, "grdLkpProject");
            this.grdLkpProject.Name = "grdLkpProject";
            this.grdLkpProject.Properties.BestFitMode = DevExpress.XtraEditors.Controls.BestFitMode.BestFit;
            this.grdLkpProject.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.grdLkpProject.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(((DevExpress.XtraEditors.Controls.ButtonPredefines)(resources.GetObject("grdLkpProject.Properties.Buttons"))))});
            this.grdLkpProject.Properties.ImmediatePopup = true;
            this.grdLkpProject.Properties.NullText = resources.GetString("grdLkpProject.Properties.NullText");
            this.grdLkpProject.Properties.PopupFilterMode = DevExpress.XtraEditors.PopupFilterMode.Contains;
            this.grdLkpProject.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.grdLkpProject.Properties.View = this.gvProjects;
            this.grdLkpProject.StyleController = this.layoutControl1;
            this.grdLkpProject.EditValueChanged += new System.EventHandler(this.grdLkpProject_EditValueChanged);
            // 
            // gvProjects
            // 
            this.gvProjects.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gccolProjectId,
            this.gccolProject});
            this.gvProjects.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            this.gvProjects.Name = "gvProjects";
            this.gvProjects.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.gvProjects.OptionsView.ShowColumnHeaders = false;
            this.gvProjects.OptionsView.ShowGroupPanel = false;
            this.gvProjects.OptionsView.ShowIndicator = false;
            // 
            // gccolProjectId
            // 
            resources.ApplyResources(this.gccolProjectId, "gccolProjectId");
            this.gccolProjectId.FieldName = "PROJECT_ID";
            this.gccolProjectId.Name = "gccolProjectId";
            // 
            // gccolProject
            // 
            resources.ApplyResources(this.gccolProject, "gccolProject");
            this.gccolProject.FieldName = "PROJECT";
            this.gccolProject.Name = "gccolProject";
            // 
            // txtCLBalanceFD
            // 
            resources.ApplyResources(this.txtCLBalanceFD, "txtCLBalanceFD");
            this.txtCLBalanceFD.Name = "txtCLBalanceFD";
            this.txtCLBalanceFD.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.txtCLBalanceFD.Properties.Mask.EditMask = resources.GetString("txtCLBalanceFD.Properties.Mask.EditMask");
            this.txtCLBalanceFD.Properties.Mask.MaskType = ((DevExpress.XtraEditors.Mask.MaskType)(resources.GetObject("txtCLBalanceFD.Properties.Mask.MaskType")));
            this.txtCLBalanceFD.Properties.Mask.UseMaskAsDisplayFormat = ((bool)(resources.GetObject("txtCLBalanceFD.Properties.Mask.UseMaskAsDisplayFormat")));
            this.txtCLBalanceFD.Properties.MaxLength = 13;
            this.txtCLBalanceFD.StyleController = this.layoutControl1;
            // 
            // txtCLBalanceBank
            // 
            resources.ApplyResources(this.txtCLBalanceBank, "txtCLBalanceBank");
            this.txtCLBalanceBank.Name = "txtCLBalanceBank";
            this.txtCLBalanceBank.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.txtCLBalanceBank.Properties.Mask.EditMask = resources.GetString("txtCLBalanceBank.Properties.Mask.EditMask");
            this.txtCLBalanceBank.Properties.Mask.MaskType = ((DevExpress.XtraEditors.Mask.MaskType)(resources.GetObject("txtCLBalanceBank.Properties.Mask.MaskType")));
            this.txtCLBalanceBank.Properties.Mask.UseMaskAsDisplayFormat = ((bool)(resources.GetObject("txtCLBalanceBank.Properties.Mask.UseMaskAsDisplayFormat")));
            this.txtCLBalanceBank.Properties.MaxLength = 13;
            this.txtCLBalanceBank.StyleController = this.layoutControl1;
            // 
            // txtCLBalanceCash
            // 
            resources.ApplyResources(this.txtCLBalanceCash, "txtCLBalanceCash");
            this.txtCLBalanceCash.Name = "txtCLBalanceCash";
            this.txtCLBalanceCash.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.txtCLBalanceCash.Properties.Mask.EditMask = resources.GetString("txtCLBalanceCash.Properties.Mask.EditMask");
            this.txtCLBalanceCash.Properties.Mask.MaskType = ((DevExpress.XtraEditors.Mask.MaskType)(resources.GetObject("txtCLBalanceCash.Properties.Mask.MaskType")));
            this.txtCLBalanceCash.Properties.Mask.UseMaskAsDisplayFormat = ((bool)(resources.GetObject("txtCLBalanceCash.Properties.Mask.UseMaskAsDisplayFormat")));
            this.txtCLBalanceCash.Properties.MaxLength = 13;
            this.txtCLBalanceCash.StyleController = this.layoutControl1;
            // 
            // txtOpBalanceFD
            // 
            resources.ApplyResources(this.txtOpBalanceFD, "txtOpBalanceFD");
            this.txtOpBalanceFD.Name = "txtOpBalanceFD";
            this.txtOpBalanceFD.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.txtOpBalanceFD.Properties.Mask.EditMask = resources.GetString("txtOpBalanceFD.Properties.Mask.EditMask");
            this.txtOpBalanceFD.Properties.Mask.MaskType = ((DevExpress.XtraEditors.Mask.MaskType)(resources.GetObject("txtOpBalanceFD.Properties.Mask.MaskType")));
            this.txtOpBalanceFD.Properties.Mask.UseMaskAsDisplayFormat = ((bool)(resources.GetObject("txtOpBalanceFD.Properties.Mask.UseMaskAsDisplayFormat")));
            this.txtOpBalanceFD.Properties.MaxLength = 13;
            this.txtOpBalanceFD.StyleController = this.layoutControl1;
            // 
            // txtBankOpBalanceAmount
            // 
            resources.ApplyResources(this.txtBankOpBalanceAmount, "txtBankOpBalanceAmount");
            this.txtBankOpBalanceAmount.Name = "txtBankOpBalanceAmount";
            this.txtBankOpBalanceAmount.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.txtBankOpBalanceAmount.Properties.Mask.EditMask = resources.GetString("txtBankOpBalanceAmount.Properties.Mask.EditMask");
            this.txtBankOpBalanceAmount.Properties.Mask.MaskType = ((DevExpress.XtraEditors.Mask.MaskType)(resources.GetObject("txtBankOpBalanceAmount.Properties.Mask.MaskType")));
            this.txtBankOpBalanceAmount.Properties.Mask.UseMaskAsDisplayFormat = ((bool)(resources.GetObject("txtBankOpBalanceAmount.Properties.Mask.UseMaskAsDisplayFormat")));
            this.txtBankOpBalanceAmount.Properties.MaxLength = 13;
            this.txtBankOpBalanceAmount.StyleController = this.layoutControl1;
            // 
            // txtOPBalanceCash
            // 
            resources.ApplyResources(this.txtOPBalanceCash, "txtOPBalanceCash");
            this.txtOPBalanceCash.Name = "txtOPBalanceCash";
            this.txtOPBalanceCash.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.txtOPBalanceCash.Properties.Mask.EditMask = resources.GetString("txtOPBalanceCash.Properties.Mask.EditMask");
            this.txtOPBalanceCash.Properties.Mask.MaskType = ((DevExpress.XtraEditors.Mask.MaskType)(resources.GetObject("txtOPBalanceCash.Properties.Mask.MaskType")));
            this.txtOPBalanceCash.Properties.Mask.UseMaskAsDisplayFormat = ((bool)(resources.GetObject("txtOPBalanceCash.Properties.Mask.UseMaskAsDisplayFormat")));
            this.txtOPBalanceCash.Properties.MaxLength = 13;
            this.txtOPBalanceCash.StyleController = this.layoutControl1;
            this.txtOPBalanceCash.Enter += new System.EventHandler(this.txtOPBalanceCash_Enter);
            // 
            // cbUserDefinedYear
            // 
            resources.ApplyResources(this.cbUserDefinedYear, "cbUserDefinedYear");
            this.cbUserDefinedYear.Name = "cbUserDefinedYear";
            this.cbUserDefinedYear.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Office2003;
            this.cbUserDefinedYear.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(((DevExpress.XtraEditors.Controls.ButtonPredefines)(resources.GetObject("cbUserDefinedYear.Properties.Buttons"))))});
            this.cbUserDefinedYear.Properties.Items.AddRange(new object[] {
            resources.GetString("cbUserDefinedYear.Properties.Items"),
            resources.GetString("cbUserDefinedYear.Properties.Items1")});
            this.cbUserDefinedYear.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cbUserDefinedYear.StyleController = this.layoutControl1;
            this.cbUserDefinedYear.SelectedIndexChanged += new System.EventHandler(this.cbUserDefinedYear_SelectedIndexChanged);
            // 
            // gcExpenseLedgers
            // 
            gridLevelNode1.RelationName = "Level1";
            this.gcExpenseLedgers.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            resources.ApplyResources(this.gcExpenseLedgers, "gcExpenseLedgers");
            this.gcExpenseLedgers.MainView = this.gvExpenseLedger;
            this.gcExpenseLedgers.Name = "gcExpenseLedgers";
            this.gcExpenseLedgers.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.rtxtExpenseActualAmount});
            this.gcExpenseLedgers.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvExpenseLedger});
            this.gcExpenseLedgers.ProcessGridKey += new System.Windows.Forms.KeyEventHandler(this.gcExpenseLedger_ProcessGridKey);
            // 
            // gvExpenseLedger
            // 
            this.gvExpenseLedger.Appearance.FooterPanel.BackColor = ((System.Drawing.Color)(resources.GetObject("gvExpenseLedger.Appearance.FooterPanel.BackColor")));
            this.gvExpenseLedger.Appearance.FooterPanel.BackColor2 = ((System.Drawing.Color)(resources.GetObject("gvExpenseLedger.Appearance.FooterPanel.BackColor2")));
            this.gvExpenseLedger.Appearance.FooterPanel.Font = ((System.Drawing.Font)(resources.GetObject("gvExpenseLedger.Appearance.FooterPanel.Font")));
            this.gvExpenseLedger.Appearance.FooterPanel.ForeColor = ((System.Drawing.Color)(resources.GetObject("gvExpenseLedger.Appearance.FooterPanel.ForeColor")));
            this.gvExpenseLedger.Appearance.FooterPanel.Options.UseBackColor = true;
            this.gvExpenseLedger.Appearance.FooterPanel.Options.UseFont = true;
            this.gvExpenseLedger.Appearance.FooterPanel.Options.UseForeColor = true;
            this.gvExpenseLedger.Appearance.ViewCaption.Font = ((System.Drawing.Font)(resources.GetObject("gvExpenseLedger.Appearance.ViewCaption.Font")));
            this.gvExpenseLedger.Appearance.ViewCaption.Options.UseFont = true;
            this.gvExpenseLedger.Appearance.ViewCaption.Options.UseTextOptions = true;
            this.gvExpenseLedger.Appearance.ViewCaption.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gvExpenseLedger.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colExpenseLedgerId,
            this.colExpenseLedgerGroup,
            this.colExpenseLedgerCode,
            this.colExpenseLedger,
            this.colExpenseActualAmount,
            this.colExpenseActual17_18,
            this.colExpenseActual18_19});
            this.gvExpenseLedger.GridControl = this.gcExpenseLedgers;
            this.gvExpenseLedger.Name = "gvExpenseLedger";
            this.gvExpenseLedger.OptionsBehavior.AllowAddRows = DevExpress.Utils.DefaultBoolean.False;
            this.gvExpenseLedger.OptionsEditForm.ActionOnModifiedRowChange = DevExpress.XtraGrid.Views.Grid.EditFormModifiedAction.Nothing;
            this.gvExpenseLedger.OptionsEditForm.FormCaptionFormat = "New Sub Ledger";
            this.gvExpenseLedger.OptionsEditForm.PopupEditFormWidth = 500;
            this.gvExpenseLedger.OptionsView.ShowGroupPanel = false;
            this.gvExpenseLedger.OptionsView.ShowViewCaption = true;
            resources.ApplyResources(this.gvExpenseLedger, "gvExpenseLedger");
            // 
            // colExpenseLedgerId
            // 
            resources.ApplyResources(this.colExpenseLedgerId, "colExpenseLedgerId");
            this.colExpenseLedgerId.FieldName = "LEDGER_ID";
            this.colExpenseLedgerId.Name = "colExpenseLedgerId";
            this.colExpenseLedgerId.OptionsEditForm.Visible = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colExpenseLedgerGroup
            // 
            this.colExpenseLedgerGroup.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colExpenseLedgerGroup.AppearanceHeader.Font")));
            this.colExpenseLedgerGroup.AppearanceHeader.Options.UseFont = true;
            resources.ApplyResources(this.colExpenseLedgerGroup, "colExpenseLedgerGroup");
            this.colExpenseLedgerGroup.FieldName = "LEDGER_GROUP";
            this.colExpenseLedgerGroup.Name = "colExpenseLedgerGroup";
            this.colExpenseLedgerGroup.OptionsColumn.AllowEdit = false;
            this.colExpenseLedgerGroup.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colExpenseLedgerGroup.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colExpenseLedgerGroup.OptionsColumn.AllowMove = false;
            // 
            // colExpenseLedgerCode
            // 
            this.colExpenseLedgerCode.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colExpenseLedgerCode.AppearanceHeader.Font")));
            this.colExpenseLedgerCode.AppearanceHeader.Options.UseFont = true;
            resources.ApplyResources(this.colExpenseLedgerCode, "colExpenseLedgerCode");
            this.colExpenseLedgerCode.FieldName = "LEDGER_CODE";
            this.colExpenseLedgerCode.Name = "colExpenseLedgerCode";
            this.colExpenseLedgerCode.OptionsColumn.AllowEdit = false;
            this.colExpenseLedgerCode.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colExpenseLedgerCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colExpenseLedgerCode.OptionsColumn.AllowMove = false;
            // 
            // colExpenseLedger
            // 
            this.colExpenseLedger.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colExpenseLedger.AppearanceHeader.Font")));
            this.colExpenseLedger.AppearanceHeader.Options.UseFont = true;
            resources.ApplyResources(this.colExpenseLedger, "colExpenseLedger");
            this.colExpenseLedger.FieldName = "LEDGER_NAME";
            this.colExpenseLedger.Name = "colExpenseLedger";
            this.colExpenseLedger.OptionsColumn.AllowEdit = false;
            this.colExpenseLedger.OptionsColumn.AllowFocus = false;
            this.colExpenseLedger.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colExpenseLedger.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colExpenseLedger.OptionsColumn.AllowMove = false;
            this.colExpenseLedger.OptionsEditForm.Visible = DevExpress.Utils.DefaultBoolean.False;
            this.colExpenseLedger.OptionsFilter.AutoFilterCondition = DevExpress.XtraGrid.Columns.AutoFilterCondition.Contains;
            // 
            // colExpenseActualAmount
            // 
            this.colExpenseActualAmount.AppearanceCell.BackColor = ((System.Drawing.Color)(resources.GetObject("colExpenseActualAmount.AppearanceCell.BackColor")));
            this.colExpenseActualAmount.AppearanceCell.Options.UseBackColor = true;
            this.colExpenseActualAmount.AppearanceCell.Options.UseTextOptions = true;
            this.colExpenseActualAmount.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colExpenseActualAmount.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colExpenseActualAmount.AppearanceHeader.Font")));
            this.colExpenseActualAmount.AppearanceHeader.Options.UseFont = true;
            this.colExpenseActualAmount.AppearanceHeader.Options.UseTextOptions = true;
            this.colExpenseActualAmount.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            resources.ApplyResources(this.colExpenseActualAmount, "colExpenseActualAmount");
            this.colExpenseActualAmount.ColumnEdit = this.rtxtExpenseActualAmount;
            this.colExpenseActualAmount.DisplayFormat.FormatString = "n";
            this.colExpenseActualAmount.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colExpenseActualAmount.Name = "colExpenseActualAmount";
            this.colExpenseActualAmount.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colExpenseActualAmount.OptionsColumn.AllowIncrementalSearch = false;
            this.colExpenseActualAmount.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colExpenseActualAmount.OptionsColumn.AllowMove = false;
            this.colExpenseActualAmount.OptionsColumn.AllowSize = false;
            this.colExpenseActualAmount.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colExpenseActualAmount.OptionsFilter.AllowAutoFilter = false;
            this.colExpenseActualAmount.OptionsFilter.AllowFilter = false;
            // 
            // rtxtExpenseActualAmount
            // 
            resources.ApplyResources(this.rtxtExpenseActualAmount, "rtxtExpenseActualAmount");
            this.rtxtExpenseActualAmount.Mask.EditMask = resources.GetString("rtxtExpenseActualAmount.Mask.EditMask");
            this.rtxtExpenseActualAmount.Mask.MaskType = ((DevExpress.XtraEditors.Mask.MaskType)(resources.GetObject("rtxtExpenseActualAmount.Mask.MaskType")));
            this.rtxtExpenseActualAmount.Name = "rtxtExpenseActualAmount";
            // 
            // colExpenseActual17_18
            // 
            this.colExpenseActual17_18.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colExpenseActual17_18.AppearanceHeader.Font")));
            this.colExpenseActual17_18.AppearanceHeader.Options.UseFont = true;
            resources.ApplyResources(this.colExpenseActual17_18, "colExpenseActual17_18");
            this.colExpenseActual17_18.DisplayFormat.FormatString = "n";
            this.colExpenseActual17_18.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colExpenseActual17_18.FieldName = "AMOUNT";
            this.colExpenseActual17_18.Name = "colExpenseActual17_18";
            this.colExpenseActual17_18.OptionsColumn.AllowEdit = false;
            this.colExpenseActual17_18.OptionsColumn.AllowFocus = false;
            this.colExpenseActual17_18.OptionsColumn.AllowMove = false;
            this.colExpenseActual17_18.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colExpenseActual17_18.OptionsEditForm.Visible = DevExpress.Utils.DefaultBoolean.False;
            this.colExpenseActual17_18.OptionsFilter.AllowAutoFilter = false;
            this.colExpenseActual17_18.OptionsFilter.AllowFilter = false;
            // 
            // colExpenseActual18_19
            // 
            this.colExpenseActual18_19.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colExpenseActual18_19.AppearanceHeader.Font")));
            this.colExpenseActual18_19.AppearanceHeader.Options.UseFont = true;
            resources.ApplyResources(this.colExpenseActual18_19, "colExpenseActual18_19");
            this.colExpenseActual18_19.DisplayFormat.FormatString = "n";
            this.colExpenseActual18_19.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colExpenseActual18_19.FieldName = "AMOUNT";
            this.colExpenseActual18_19.Name = "colExpenseActual18_19";
            this.colExpenseActual18_19.OptionsColumn.AllowEdit = false;
            this.colExpenseActual18_19.OptionsColumn.AllowFocus = false;
            this.colExpenseActual18_19.OptionsColumn.AllowMove = false;
            this.colExpenseActual18_19.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colExpenseActual18_19.OptionsEditForm.Visible = DevExpress.Utils.DefaultBoolean.False;
            this.colExpenseActual18_19.OptionsFilter.AllowAutoFilter = false;
            this.colExpenseActual18_19.OptionsFilter.AllowFilter = false;
            // 
            // gcIncomeLedgers
            // 
            gridLevelNode2.RelationName = "Level1";
            gridLevelNode3.RelationName = "Level2";
            this.gcIncomeLedgers.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode2,
            gridLevelNode3});
            resources.ApplyResources(this.gcIncomeLedgers, "gcIncomeLedgers");
            this.gcIncomeLedgers.MainView = this.gvIncomeLedger;
            this.gcIncomeLedgers.Name = "gcIncomeLedgers";
            this.gcIncomeLedgers.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.rtxtIncomeActualAmount});
            this.gcIncomeLedgers.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvIncomeLedger});
            this.gcIncomeLedgers.ProcessGridKey += new System.Windows.Forms.KeyEventHandler(this.gcIncomeLedger_ProcessGridKey);
            this.gcIncomeLedgers.Click += new System.EventHandler(this.gcIncomeLedgers_Click);
            // 
            // gvIncomeLedger
            // 
            this.gvIncomeLedger.Appearance.FooterPanel.BackColor = ((System.Drawing.Color)(resources.GetObject("gvIncomeLedger.Appearance.FooterPanel.BackColor")));
            this.gvIncomeLedger.Appearance.FooterPanel.BackColor2 = ((System.Drawing.Color)(resources.GetObject("gvIncomeLedger.Appearance.FooterPanel.BackColor2")));
            this.gvIncomeLedger.Appearance.FooterPanel.Font = ((System.Drawing.Font)(resources.GetObject("gvIncomeLedger.Appearance.FooterPanel.Font")));
            this.gvIncomeLedger.Appearance.FooterPanel.ForeColor = ((System.Drawing.Color)(resources.GetObject("gvIncomeLedger.Appearance.FooterPanel.ForeColor")));
            this.gvIncomeLedger.Appearance.FooterPanel.Options.UseBackColor = true;
            this.gvIncomeLedger.Appearance.FooterPanel.Options.UseFont = true;
            this.gvIncomeLedger.Appearance.FooterPanel.Options.UseForeColor = true;
            this.gvIncomeLedger.Appearance.ViewCaption.Font = ((System.Drawing.Font)(resources.GetObject("gvIncomeLedger.Appearance.ViewCaption.Font")));
            this.gvIncomeLedger.Appearance.ViewCaption.Options.UseFont = true;
            this.gvIncomeLedger.Appearance.ViewCaption.Options.UseTextOptions = true;
            this.gvIncomeLedger.Appearance.ViewCaption.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gvIncomeLedger.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colIncomeLedgerId,
            this.colIncomeLedgerGroup,
            this.colIncomeLedgerCode,
            this.colIncomeLedger,
            this.colIncomeActualAmount,
            this.colIncomeActual17_18,
            this.colIncomeActual18_19});
            this.gvIncomeLedger.GridControl = this.gcIncomeLedgers;
            resources.ApplyResources(this.gvIncomeLedger, "gvIncomeLedger");
            this.gvIncomeLedger.LevelIndent = 0;
            this.gvIncomeLedger.Name = "gvIncomeLedger";
            this.gvIncomeLedger.OptionsBehavior.AutoExpandAllGroups = true;
            this.gvIncomeLedger.OptionsView.ShowGroupPanel = false;
            this.gvIncomeLedger.OptionsView.ShowViewCaption = true;
            // 
            // colIncomeLedgerId
            // 
            resources.ApplyResources(this.colIncomeLedgerId, "colIncomeLedgerId");
            this.colIncomeLedgerId.FieldName = "LEDGER_ID";
            this.colIncomeLedgerId.Name = "colIncomeLedgerId";
            // 
            // colIncomeLedgerGroup
            // 
            this.colIncomeLedgerGroup.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colIncomeLedgerGroup.AppearanceHeader.Font")));
            this.colIncomeLedgerGroup.AppearanceHeader.Options.UseFont = true;
            resources.ApplyResources(this.colIncomeLedgerGroup, "colIncomeLedgerGroup");
            this.colIncomeLedgerGroup.FieldName = "LEDGER_GROUP";
            this.colIncomeLedgerGroup.Name = "colIncomeLedgerGroup";
            this.colIncomeLedgerGroup.OptionsColumn.AllowEdit = false;
            this.colIncomeLedgerGroup.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colIncomeLedgerGroup.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colIncomeLedgerGroup.OptionsColumn.AllowMove = false;
            // 
            // colIncomeLedgerCode
            // 
            this.colIncomeLedgerCode.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colIncomeLedgerCode.AppearanceHeader.Font")));
            this.colIncomeLedgerCode.AppearanceHeader.Options.UseFont = true;
            resources.ApplyResources(this.colIncomeLedgerCode, "colIncomeLedgerCode");
            this.colIncomeLedgerCode.FieldName = "LEDGER_CODE";
            this.colIncomeLedgerCode.Name = "colIncomeLedgerCode";
            this.colIncomeLedgerCode.OptionsColumn.AllowEdit = false;
            this.colIncomeLedgerCode.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colIncomeLedgerCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colIncomeLedgerCode.OptionsColumn.AllowMove = false;
            // 
            // colIncomeLedger
            // 
            this.colIncomeLedger.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colIncomeLedger.AppearanceHeader.Font")));
            this.colIncomeLedger.AppearanceHeader.Options.UseFont = true;
            resources.ApplyResources(this.colIncomeLedger, "colIncomeLedger");
            this.colIncomeLedger.FieldName = "LEDGER_NAME";
            this.colIncomeLedger.Name = "colIncomeLedger";
            this.colIncomeLedger.OptionsColumn.AllowEdit = false;
            this.colIncomeLedger.OptionsColumn.AllowFocus = false;
            this.colIncomeLedger.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colIncomeLedger.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colIncomeLedger.OptionsColumn.AllowMove = false;
            this.colIncomeLedger.OptionsFilter.AutoFilterCondition = DevExpress.XtraGrid.Columns.AutoFilterCondition.Contains;
            // 
            // colIncomeActualAmount
            // 
            this.colIncomeActualAmount.AppearanceCell.BackColor = ((System.Drawing.Color)(resources.GetObject("colIncomeActualAmount.AppearanceCell.BackColor")));
            this.colIncomeActualAmount.AppearanceCell.Options.UseBackColor = true;
            this.colIncomeActualAmount.AppearanceCell.Options.UseTextOptions = true;
            this.colIncomeActualAmount.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colIncomeActualAmount.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colIncomeActualAmount.AppearanceHeader.Font")));
            this.colIncomeActualAmount.AppearanceHeader.Options.UseFont = true;
            this.colIncomeActualAmount.AppearanceHeader.Options.UseTextOptions = true;
            this.colIncomeActualAmount.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            resources.ApplyResources(this.colIncomeActualAmount, "colIncomeActualAmount");
            this.colIncomeActualAmount.ColumnEdit = this.rtxtIncomeActualAmount;
            this.colIncomeActualAmount.DisplayFormat.FormatString = "n";
            this.colIncomeActualAmount.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colIncomeActualAmount.FieldName = "ACTUAL_AMOUNT";
            this.colIncomeActualAmount.Name = "colIncomeActualAmount";
            this.colIncomeActualAmount.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colIncomeActualAmount.OptionsColumn.AllowIncrementalSearch = false;
            this.colIncomeActualAmount.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colIncomeActualAmount.OptionsColumn.AllowMove = false;
            this.colIncomeActualAmount.OptionsColumn.AllowSize = false;
            this.colIncomeActualAmount.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colIncomeActualAmount.OptionsFilter.AllowAutoFilter = false;
            this.colIncomeActualAmount.OptionsFilter.AllowFilter = false;
            // 
            // rtxtIncomeActualAmount
            // 
            resources.ApplyResources(this.rtxtIncomeActualAmount, "rtxtIncomeActualAmount");
            this.rtxtIncomeActualAmount.Mask.EditMask = resources.GetString("rtxtIncomeActualAmount.Mask.EditMask");
            this.rtxtIncomeActualAmount.Mask.MaskType = ((DevExpress.XtraEditors.Mask.MaskType)(resources.GetObject("rtxtIncomeActualAmount.Mask.MaskType")));
            this.rtxtIncomeActualAmount.Name = "rtxtIncomeActualAmount";
            // 
            // colIncomeActual17_18
            // 
            this.colIncomeActual17_18.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colIncomeActual17_18.AppearanceHeader.Font")));
            this.colIncomeActual17_18.AppearanceHeader.Options.UseFont = true;
            resources.ApplyResources(this.colIncomeActual17_18, "colIncomeActual17_18");
            this.colIncomeActual17_18.DisplayFormat.FormatString = "n";
            this.colIncomeActual17_18.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colIncomeActual17_18.FieldName = "AMOUNT";
            this.colIncomeActual17_18.Name = "colIncomeActual17_18";
            this.colIncomeActual17_18.OptionsColumn.AllowEdit = false;
            this.colIncomeActual17_18.OptionsColumn.AllowFocus = false;
            this.colIncomeActual17_18.OptionsColumn.AllowMove = false;
            this.colIncomeActual17_18.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colIncomeActual17_18.OptionsFilter.AllowAutoFilter = false;
            this.colIncomeActual17_18.OptionsFilter.AllowFilter = false;
            // 
            // colIncomeActual18_19
            // 
            this.colIncomeActual18_19.AppearanceHeader.Font = ((System.Drawing.Font)(resources.GetObject("colIncomeActual18_19.AppearanceHeader.Font")));
            this.colIncomeActual18_19.AppearanceHeader.Options.UseFont = true;
            resources.ApplyResources(this.colIncomeActual18_19, "colIncomeActual18_19");
            this.colIncomeActual18_19.DisplayFormat.FormatString = "n";
            this.colIncomeActual18_19.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colIncomeActual18_19.FieldName = "ACTUAL";
            this.colIncomeActual18_19.Name = "colIncomeActual18_19";
            this.colIncomeActual18_19.OptionsColumn.AllowEdit = false;
            this.colIncomeActual18_19.OptionsColumn.AllowFocus = false;
            this.colIncomeActual18_19.OptionsColumn.AllowMove = false;
            this.colIncomeActual18_19.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colIncomeActual18_19.OptionsFilter.AllowAutoFilter = false;
            this.colIncomeActual18_19.OptionsFilter.AllowFilter = false;
            // 
            // chkFilter
            // 
            resources.ApplyResources(this.chkFilter, "chkFilter");
            this.chkFilter.Name = "chkFilter";
            this.chkFilter.Properties.AllowHtmlDraw = DevExpress.Utils.DefaultBoolean.True;
            this.chkFilter.Properties.Caption = resources.GetString("chkFilter.Properties.Caption");
            this.chkFilter.StyleController = this.layoutControl1;
            this.chkFilter.CheckedChanged += new System.EventHandler(this.chkFilter_CheckedChanged);
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            resources.ApplyResources(this.btnCancel, "btnCancel");
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.StyleController = this.layoutControl1;
            // 
            // btnSave
            // 
            resources.ApplyResources(this.btnSave, "btnSave");
            this.btnSave.Name = "btnSave";
            this.btnSave.StyleController = this.layoutControl1;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // layoutControlGroup1
            // 
            resources.ApplyResources(this.layoutControlGroup1, "layoutControlGroup1");
            this.layoutControlGroup1.EnableIndentsWithoutBorders = DevExpress.Utils.DefaultBoolean.True;
            this.layoutControlGroup1.GroupBordersVisible = false;
            this.layoutControlGroup1.Items.AddRange(new DevExpress.XtraLayout.BaseLayoutItem[] {
            this.layoutControlItem5,
            this.layoutControlItem6,
            this.lcFilter,
            this.emptySpaceItem2,
            this.lcIncomeBudgetLedgers,
            this.lcExpenseBudgetLedgers,
            this.emptySpaceItem1,
            this.lcUserDefinedYear,
            this.lcOpBalanceCash,
            this.emptySpaceItem3,
            this.lcOpBalanceBankAccounts,
            this.emptySpaceItem4,
            this.lcOPBalanceFD,
            this.emptySpaceItem5,
            this.lcCLBalanceCash,
            this.lcCLBalanceBankAccount,
            this.lcCLBalanceFD,
            this.lblOPCaption,
            this.lblCLCaption,
            this.emptySpaceItem6,
            this.emptySpaceItem7,
            this.emptySpaceItem8,
            this.emptySpaceItem9,
            this.emptySpaceItem10,
            this.emptySpaceItem11,
            this.lcProject});
            this.layoutControlGroup1.Location = new System.Drawing.Point(0, 0);
            this.layoutControlGroup1.Name = "Root";
            this.layoutControlGroup1.Padding = new DevExpress.XtraLayout.Utils.Padding(5, 5, 5, 5);
            this.layoutControlGroup1.Size = new System.Drawing.Size(961, 614);
            this.layoutControlGroup1.TextVisible = false;
            // 
            // layoutControlItem5
            // 
            this.layoutControlItem5.Control = this.btnSave;
            resources.ApplyResources(this.layoutControlItem5, "layoutControlItem5");
            this.layoutControlItem5.Location = new System.Drawing.Point(798, 576);
            this.layoutControlItem5.MaxSize = new System.Drawing.Size(77, 28);
            this.layoutControlItem5.MinSize = new System.Drawing.Size(77, 28);
            this.layoutControlItem5.Name = "layoutControlItem5";
            this.layoutControlItem5.Size = new System.Drawing.Size(77, 28);
            this.layoutControlItem5.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.layoutControlItem5.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem5.TextToControlDistance = 0;
            this.layoutControlItem5.TextVisible = false;
            // 
            // layoutControlItem6
            // 
            this.layoutControlItem6.Control = this.btnCancel;
            resources.ApplyResources(this.layoutControlItem6, "layoutControlItem6");
            this.layoutControlItem6.Location = new System.Drawing.Point(875, 576);
            this.layoutControlItem6.MaxSize = new System.Drawing.Size(76, 28);
            this.layoutControlItem6.MinSize = new System.Drawing.Size(76, 28);
            this.layoutControlItem6.Name = "layoutControlItem6";
            this.layoutControlItem6.Size = new System.Drawing.Size(76, 28);
            this.layoutControlItem6.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.layoutControlItem6.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem6.TextToControlDistance = 0;
            this.layoutControlItem6.TextVisible = false;
            // 
            // lcFilter
            // 
            this.lcFilter.Control = this.chkFilter;
            resources.ApplyResources(this.lcFilter, "lcFilter");
            this.lcFilter.Location = new System.Drawing.Point(0, 576);
            this.lcFilter.Name = "lcFilter";
            this.lcFilter.Size = new System.Drawing.Size(103, 28);
            this.lcFilter.TextSize = new System.Drawing.Size(0, 0);
            this.lcFilter.TextToControlDistance = 0;
            this.lcFilter.TextVisible = false;
            // 
            // emptySpaceItem2
            // 
            this.emptySpaceItem2.AllowHotTrack = false;
            resources.ApplyResources(this.emptySpaceItem2, "emptySpaceItem2");
            this.emptySpaceItem2.Location = new System.Drawing.Point(103, 576);
            this.emptySpaceItem2.Name = "emptySpaceItem2";
            this.emptySpaceItem2.Size = new System.Drawing.Size(695, 28);
            this.emptySpaceItem2.TextSize = new System.Drawing.Size(0, 0);
            // 
            // lcIncomeBudgetLedgers
            // 
            this.lcIncomeBudgetLedgers.Control = this.gcIncomeLedgers;
            resources.ApplyResources(this.lcIncomeBudgetLedgers, "lcIncomeBudgetLedgers");
            this.lcIncomeBudgetLedgers.Location = new System.Drawing.Point(0, 124);
            this.lcIncomeBudgetLedgers.Name = "lcIncomeBudgetLedgers";
            this.lcIncomeBudgetLedgers.Size = new System.Drawing.Size(951, 225);
            this.lcIncomeBudgetLedgers.TextSize = new System.Drawing.Size(0, 0);
            this.lcIncomeBudgetLedgers.TextToControlDistance = 0;
            this.lcIncomeBudgetLedgers.TextVisible = false;
            // 
            // lcExpenseBudgetLedgers
            // 
            this.lcExpenseBudgetLedgers.Control = this.gcExpenseLedgers;
            resources.ApplyResources(this.lcExpenseBudgetLedgers, "lcExpenseBudgetLedgers");
            this.lcExpenseBudgetLedgers.Location = new System.Drawing.Point(0, 349);
            this.lcExpenseBudgetLedgers.Name = "lcExpenseBudgetLedgers";
            this.lcExpenseBudgetLedgers.Padding = new DevExpress.XtraLayout.Utils.Padding(2, 2, 0, 2);
            this.lcExpenseBudgetLedgers.Size = new System.Drawing.Size(951, 227);
            this.lcExpenseBudgetLedgers.TextSize = new System.Drawing.Size(0, 0);
            this.lcExpenseBudgetLedgers.TextToControlDistance = 0;
            this.lcExpenseBudgetLedgers.TextVisible = false;
            // 
            // emptySpaceItem1
            // 
            this.emptySpaceItem1.AllowHotTrack = false;
            resources.ApplyResources(this.emptySpaceItem1, "emptySpaceItem1");
            this.emptySpaceItem1.Location = new System.Drawing.Point(723, 0);
            this.emptySpaceItem1.Name = "emptySpaceItem1";
            this.emptySpaceItem1.Size = new System.Drawing.Size(228, 24);
            this.emptySpaceItem1.TextSize = new System.Drawing.Size(0, 0);
            // 
            // lcUserDefinedYear
            // 
            this.lcUserDefinedYear.AppearanceItemCaption.Font = ((System.Drawing.Font)(resources.GetObject("lcUserDefinedYear.AppearanceItemCaption.Font")));
            this.lcUserDefinedYear.AppearanceItemCaption.Options.UseFont = true;
            this.lcUserDefinedYear.Control = this.cbUserDefinedYear;
            resources.ApplyResources(this.lcUserDefinedYear, "lcUserDefinedYear");
            this.lcUserDefinedYear.Location = new System.Drawing.Point(0, 0);
            this.lcUserDefinedYear.MaxSize = new System.Drawing.Size(210, 24);
            this.lcUserDefinedYear.MinSize = new System.Drawing.Size(210, 24);
            this.lcUserDefinedYear.Name = "lcUserDefinedYear";
            this.lcUserDefinedYear.Padding = new DevExpress.XtraLayout.Utils.Padding(5, 2, 2, 2);
            this.lcUserDefinedYear.Size = new System.Drawing.Size(210, 24);
            this.lcUserDefinedYear.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.lcUserDefinedYear.TextAlignMode = DevExpress.XtraLayout.TextAlignModeItem.AutoSize;
            this.lcUserDefinedYear.TextSize = new System.Drawing.Size(101, 13);
            this.lcUserDefinedYear.TextToControlDistance = 5;
            // 
            // lcOpBalanceCash
            // 
            this.lcOpBalanceCash.Control = this.txtOPBalanceCash;
            resources.ApplyResources(this.lcOpBalanceCash, "lcOpBalanceCash");
            this.lcOpBalanceCash.Location = new System.Drawing.Point(0, 52);
            this.lcOpBalanceCash.MaxSize = new System.Drawing.Size(274, 24);
            this.lcOpBalanceCash.MinSize = new System.Drawing.Size(274, 24);
            this.lcOpBalanceCash.Name = "lcOpBalanceCash";
            this.lcOpBalanceCash.Padding = new DevExpress.XtraLayout.Utils.Padding(5, 2, 2, 2);
            this.lcOpBalanceCash.Size = new System.Drawing.Size(274, 24);
            this.lcOpBalanceCash.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.lcOpBalanceCash.TextAlignMode = DevExpress.XtraLayout.TextAlignModeItem.CustomSize;
            this.lcOpBalanceCash.TextSize = new System.Drawing.Size(125, 13);
            this.lcOpBalanceCash.TextToControlDistance = 5;
            // 
            // emptySpaceItem3
            // 
            this.emptySpaceItem3.AllowHotTrack = false;
            resources.ApplyResources(this.emptySpaceItem3, "emptySpaceItem3");
            this.emptySpaceItem3.Location = new System.Drawing.Point(443, 52);
            this.emptySpaceItem3.Name = "emptySpaceItem3";
            this.emptySpaceItem3.Size = new System.Drawing.Size(508, 24);
            this.emptySpaceItem3.TextSize = new System.Drawing.Size(0, 0);
            // 
            // lcOpBalanceBankAccounts
            // 
            this.lcOpBalanceBankAccounts.Control = this.txtBankOpBalanceAmount;
            resources.ApplyResources(this.lcOpBalanceBankAccounts, "lcOpBalanceBankAccounts");
            this.lcOpBalanceBankAccounts.Location = new System.Drawing.Point(0, 76);
            this.lcOpBalanceBankAccounts.MaxSize = new System.Drawing.Size(274, 24);
            this.lcOpBalanceBankAccounts.MinSize = new System.Drawing.Size(274, 24);
            this.lcOpBalanceBankAccounts.Name = "lcOpBalanceBankAccounts";
            this.lcOpBalanceBankAccounts.Padding = new DevExpress.XtraLayout.Utils.Padding(5, 2, 2, 2);
            this.lcOpBalanceBankAccounts.Size = new System.Drawing.Size(274, 24);
            this.lcOpBalanceBankAccounts.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.lcOpBalanceBankAccounts.TextAlignMode = DevExpress.XtraLayout.TextAlignModeItem.CustomSize;
            this.lcOpBalanceBankAccounts.TextSize = new System.Drawing.Size(125, 13);
            this.lcOpBalanceBankAccounts.TextToControlDistance = 5;
            // 
            // emptySpaceItem4
            // 
            this.emptySpaceItem4.AllowHotTrack = false;
            resources.ApplyResources(this.emptySpaceItem4, "emptySpaceItem4");
            this.emptySpaceItem4.Location = new System.Drawing.Point(443, 76);
            this.emptySpaceItem4.Name = "emptySpaceItem4";
            this.emptySpaceItem4.Size = new System.Drawing.Size(508, 24);
            this.emptySpaceItem4.TextSize = new System.Drawing.Size(0, 0);
            // 
            // lcOPBalanceFD
            // 
            this.lcOPBalanceFD.Control = this.txtOpBalanceFD;
            resources.ApplyResources(this.lcOPBalanceFD, "lcOPBalanceFD");
            this.lcOPBalanceFD.Location = new System.Drawing.Point(0, 100);
            this.lcOPBalanceFD.MaxSize = new System.Drawing.Size(274, 24);
            this.lcOPBalanceFD.MinSize = new System.Drawing.Size(274, 24);
            this.lcOPBalanceFD.Name = "lcOPBalanceFD";
            this.lcOPBalanceFD.Padding = new DevExpress.XtraLayout.Utils.Padding(5, 2, 2, 2);
            this.lcOPBalanceFD.Size = new System.Drawing.Size(274, 24);
            this.lcOPBalanceFD.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.lcOPBalanceFD.TextAlignMode = DevExpress.XtraLayout.TextAlignModeItem.CustomSize;
            this.lcOPBalanceFD.TextSize = new System.Drawing.Size(125, 13);
            this.lcOPBalanceFD.TextToControlDistance = 5;
            // 
            // emptySpaceItem5
            // 
            this.emptySpaceItem5.AllowHotTrack = false;
            resources.ApplyResources(this.emptySpaceItem5, "emptySpaceItem5");
            this.emptySpaceItem5.Location = new System.Drawing.Point(443, 100);
            this.emptySpaceItem5.Name = "emptySpaceItem5";
            this.emptySpaceItem5.Size = new System.Drawing.Size(508, 24);
            this.emptySpaceItem5.TextSize = new System.Drawing.Size(0, 0);
            // 
            // lcCLBalanceCash
            // 
            this.lcCLBalanceCash.Control = this.txtCLBalanceCash;
            resources.ApplyResources(this.lcCLBalanceCash, "lcCLBalanceCash");
            this.lcCLBalanceCash.Location = new System.Drawing.Point(294, 52);
            this.lcCLBalanceCash.MaxSize = new System.Drawing.Size(149, 24);
            this.lcCLBalanceCash.MinSize = new System.Drawing.Size(149, 24);
            this.lcCLBalanceCash.Name = "lcCLBalanceCash";
            this.lcCLBalanceCash.Size = new System.Drawing.Size(149, 24);
            this.lcCLBalanceCash.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.lcCLBalanceCash.TextAlignMode = DevExpress.XtraLayout.TextAlignModeItem.CustomSize;
            this.lcCLBalanceCash.TextSize = new System.Drawing.Size(0, 0);
            this.lcCLBalanceCash.TextToControlDistance = 0;
            this.lcCLBalanceCash.TextVisible = false;
            // 
            // lcCLBalanceBankAccount
            // 
            this.lcCLBalanceBankAccount.Control = this.txtCLBalanceBank;
            resources.ApplyResources(this.lcCLBalanceBankAccount, "lcCLBalanceBankAccount");
            this.lcCLBalanceBankAccount.Location = new System.Drawing.Point(294, 76);
            this.lcCLBalanceBankAccount.MaxSize = new System.Drawing.Size(149, 24);
            this.lcCLBalanceBankAccount.MinSize = new System.Drawing.Size(149, 24);
            this.lcCLBalanceBankAccount.Name = "lcCLBalanceBankAccount";
            this.lcCLBalanceBankAccount.Size = new System.Drawing.Size(149, 24);
            this.lcCLBalanceBankAccount.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.lcCLBalanceBankAccount.TextAlignMode = DevExpress.XtraLayout.TextAlignModeItem.AutoSize;
            this.lcCLBalanceBankAccount.TextSize = new System.Drawing.Size(0, 0);
            this.lcCLBalanceBankAccount.TextToControlDistance = 0;
            this.lcCLBalanceBankAccount.TextVisible = false;
            // 
            // lcCLBalanceFD
            // 
            this.lcCLBalanceFD.Control = this.txtCLBalanceFD;
            resources.ApplyResources(this.lcCLBalanceFD, "lcCLBalanceFD");
            this.lcCLBalanceFD.Location = new System.Drawing.Point(294, 100);
            this.lcCLBalanceFD.MaxSize = new System.Drawing.Size(149, 24);
            this.lcCLBalanceFD.MinSize = new System.Drawing.Size(149, 24);
            this.lcCLBalanceFD.Name = "lcCLBalanceFD";
            this.lcCLBalanceFD.Size = new System.Drawing.Size(149, 24);
            this.lcCLBalanceFD.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.lcCLBalanceFD.TextAlignMode = DevExpress.XtraLayout.TextAlignModeItem.AutoSize;
            this.lcCLBalanceFD.TextSize = new System.Drawing.Size(0, 0);
            this.lcCLBalanceFD.TextToControlDistance = 0;
            this.lcCLBalanceFD.TextVisible = false;
            // 
            // lblOPCaption
            // 
            this.lblOPCaption.AllowHotTrack = false;
            this.lblOPCaption.AppearanceItemCaption.Font = ((System.Drawing.Font)(resources.GetObject("lblOPCaption.AppearanceItemCaption.Font")));
            this.lblOPCaption.AppearanceItemCaption.Options.UseFont = true;
            resources.ApplyResources(this.lblOPCaption, "lblOPCaption");
            this.lblOPCaption.Location = new System.Drawing.Point(0, 35);
            this.lblOPCaption.MaxSize = new System.Drawing.Size(274, 17);
            this.lblOPCaption.MinSize = new System.Drawing.Size(274, 17);
            this.lblOPCaption.Name = "lblOPCaption";
            this.lblOPCaption.Size = new System.Drawing.Size(274, 17);
            this.lblOPCaption.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.lblOPCaption.TextSize = new System.Drawing.Size(197, 13);
            // 
            // lblCLCaption
            // 
            this.lblCLCaption.AllowHotTrack = false;
            this.lblCLCaption.AppearanceItemCaption.Font = ((System.Drawing.Font)(resources.GetObject("lblCLCaption.AppearanceItemCaption.Font")));
            this.lblCLCaption.AppearanceItemCaption.Options.UseFont = true;
            resources.ApplyResources(this.lblCLCaption, "lblCLCaption");
            this.lblCLCaption.Location = new System.Drawing.Point(294, 35);
            this.lblCLCaption.Name = "lblCLCaption";
            this.lblCLCaption.Size = new System.Drawing.Size(201, 17);
            this.lblCLCaption.TextSize = new System.Drawing.Size(197, 13);
            // 
            // emptySpaceItem6
            // 
            this.emptySpaceItem6.AllowHotTrack = false;
            resources.ApplyResources(this.emptySpaceItem6, "emptySpaceItem6");
            this.emptySpaceItem6.Location = new System.Drawing.Point(0, 24);
            this.emptySpaceItem6.Name = "emptySpaceItem6";
            this.emptySpaceItem6.Size = new System.Drawing.Size(951, 11);
            this.emptySpaceItem6.TextSize = new System.Drawing.Size(0, 0);
            // 
            // emptySpaceItem7
            // 
            this.emptySpaceItem7.AllowHotTrack = false;
            resources.ApplyResources(this.emptySpaceItem7, "emptySpaceItem7");
            this.emptySpaceItem7.Location = new System.Drawing.Point(274, 52);
            this.emptySpaceItem7.MaxSize = new System.Drawing.Size(20, 24);
            this.emptySpaceItem7.MinSize = new System.Drawing.Size(20, 24);
            this.emptySpaceItem7.Name = "emptySpaceItem7";
            this.emptySpaceItem7.Size = new System.Drawing.Size(20, 24);
            this.emptySpaceItem7.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.emptySpaceItem7.TextSize = new System.Drawing.Size(0, 0);
            // 
            // emptySpaceItem8
            // 
            this.emptySpaceItem8.AllowHotTrack = false;
            resources.ApplyResources(this.emptySpaceItem8, "emptySpaceItem8");
            this.emptySpaceItem8.Location = new System.Drawing.Point(274, 76);
            this.emptySpaceItem8.MaxSize = new System.Drawing.Size(20, 24);
            this.emptySpaceItem8.MinSize = new System.Drawing.Size(20, 24);
            this.emptySpaceItem8.Name = "emptySpaceItem8";
            this.emptySpaceItem8.Size = new System.Drawing.Size(20, 24);
            this.emptySpaceItem8.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.emptySpaceItem8.TextSize = new System.Drawing.Size(0, 0);
            // 
            // emptySpaceItem9
            // 
            this.emptySpaceItem9.AllowHotTrack = false;
            resources.ApplyResources(this.emptySpaceItem9, "emptySpaceItem9");
            this.emptySpaceItem9.Location = new System.Drawing.Point(274, 100);
            this.emptySpaceItem9.MaxSize = new System.Drawing.Size(20, 24);
            this.emptySpaceItem9.MinSize = new System.Drawing.Size(20, 24);
            this.emptySpaceItem9.Name = "emptySpaceItem9";
            this.emptySpaceItem9.Size = new System.Drawing.Size(20, 24);
            this.emptySpaceItem9.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.emptySpaceItem9.TextSize = new System.Drawing.Size(0, 0);
            // 
            // emptySpaceItem10
            // 
            this.emptySpaceItem10.AllowHotTrack = false;
            resources.ApplyResources(this.emptySpaceItem10, "emptySpaceItem10");
            this.emptySpaceItem10.Location = new System.Drawing.Point(274, 35);
            this.emptySpaceItem10.MaxSize = new System.Drawing.Size(20, 17);
            this.emptySpaceItem10.MinSize = new System.Drawing.Size(20, 17);
            this.emptySpaceItem10.Name = "emptySpaceItem10";
            this.emptySpaceItem10.Size = new System.Drawing.Size(20, 17);
            this.emptySpaceItem10.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.emptySpaceItem10.TextSize = new System.Drawing.Size(0, 0);
            // 
            // emptySpaceItem11
            // 
            this.emptySpaceItem11.AllowHotTrack = false;
            resources.ApplyResources(this.emptySpaceItem11, "emptySpaceItem11");
            this.emptySpaceItem11.Location = new System.Drawing.Point(495, 35);
            this.emptySpaceItem11.Name = "emptySpaceItem11";
            this.emptySpaceItem11.Size = new System.Drawing.Size(456, 17);
            this.emptySpaceItem11.TextSize = new System.Drawing.Size(0, 0);
            // 
            // lcProject
            // 
            this.lcProject.AppearanceItemCaption.Font = ((System.Drawing.Font)(resources.GetObject("lcProject.AppearanceItemCaption.Font")));
            this.lcProject.AppearanceItemCaption.Options.UseFont = true;
            this.lcProject.Control = this.grdLkpProject;
            resources.ApplyResources(this.lcProject, "lcProject");
            this.lcProject.Location = new System.Drawing.Point(210, 0);
            this.lcProject.MaxSize = new System.Drawing.Size(513, 24);
            this.lcProject.MinSize = new System.Drawing.Size(513, 24);
            this.lcProject.Name = "lcProject";
            this.lcProject.Padding = new DevExpress.XtraLayout.Utils.Padding(5, 5, 2, 2);
            this.lcProject.Size = new System.Drawing.Size(513, 24);
            this.lcProject.SizeConstraintsType = DevExpress.XtraLayout.SizeConstraintsType.Custom;
            this.lcProject.TextAlignMode = DevExpress.XtraLayout.TextAlignModeItem.AutoSize;
            this.lcProject.TextSize = new System.Drawing.Size(41, 13);
            this.lcProject.TextToControlDistance = 5;
            // 
            // frmBudgetUserDefined
            // 
            resources.ApplyResources(this, "$this");
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.btnCancel;
            this.Controls.Add(this.layoutControl1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MinimizeBox = false;
            this.Name = "frmBudgetUserDefined";
            this.Load += new System.EventHandler(this.frmBudgetUserDefined_Load);
            ((System.ComponentModel.ISupportInitialize)(this.layoutControl1)).EndInit();
            this.layoutControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.grdLkpProject.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvProjects)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCLBalanceFD.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCLBalanceBank.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCLBalanceCash.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtOpBalanceFD.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBankOpBalanceAmount.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtOPBalanceCash.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbUserDefinedYear.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcExpenseLedgers)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvExpenseLedger)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rtxtExpenseActualAmount)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcIncomeLedgers)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvIncomeLedger)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rtxtIncomeActualAmount)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkFilter.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlGroup1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem6)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcFilter)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcIncomeBudgetLedgers)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcExpenseBudgetLedgers)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcUserDefinedYear)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcOpBalanceCash)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcOpBalanceBankAccounts)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcOPBalanceFD)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcCLBalanceCash)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcCLBalanceBankAccount)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcCLBalanceFD)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lblOPCaption)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lblCLCaption)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem6)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem7)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem8)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem9)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem10)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem11)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lcProject)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraLayout.LayoutControl layoutControl1;
        private DevExpress.XtraLayout.LayoutControlGroup layoutControlGroup1;
        private DevExpress.XtraEditors.SimpleButton btnSave;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem5;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem6;
        private DevExpress.XtraEditors.CheckEdit chkFilter;
        private DevExpress.XtraLayout.LayoutControlItem lcFilter;
        private DevExpress.XtraGrid.GridControl gcIncomeLedgers;
        private DevExpress.XtraGrid.Views.Grid.GridView gvIncomeLedger;
        private DevExpress.XtraGrid.Columns.GridColumn colIncomeLedger;
        private DevExpress.XtraGrid.Columns.GridColumn colIncomeActual17_18;
        private DevExpress.XtraGrid.Columns.GridColumn colIncomeActual18_19;
        private DevExpress.XtraLayout.LayoutControlItem lcIncomeBudgetLedgers;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit rtxtIncomeActualAmount;
        private DevExpress.XtraGrid.GridControl gcExpenseLedgers;
        private DevExpress.XtraGrid.Views.Grid.GridView gvExpenseLedger;
        private DevExpress.XtraGrid.Columns.GridColumn colExpenseActual17_18;
        private DevExpress.XtraGrid.Columns.GridColumn colExpenseActual18_19;
        private DevExpress.XtraLayout.LayoutControlItem lcExpenseBudgetLedgers;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit rtxtExpenseActualAmount;
        private DevExpress.XtraGrid.Columns.GridColumn colIncomeLedgerId;
        private DevExpress.XtraGrid.Columns.GridColumn colExpenseLedgerId;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem2;
        private DevExpress.XtraGrid.Columns.GridColumn colExpenseLedger;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem1;
        private DevExpress.XtraEditors.ComboBoxEdit cbUserDefinedYear;
        private DevExpress.XtraLayout.LayoutControlItem lcUserDefinedYear;
        private DevExpress.XtraGrid.Columns.GridColumn colIncomeActualAmount;
        private DevExpress.XtraGrid.Columns.GridColumn colExpenseActualAmount;
        private DevExpress.XtraEditors.TextEdit txtOPBalanceCash;
        private DevExpress.XtraLayout.LayoutControlItem lcOpBalanceCash;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem3;
        private DevExpress.XtraEditors.TextEdit txtBankOpBalanceAmount;
        private DevExpress.XtraLayout.LayoutControlItem lcOpBalanceBankAccounts;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem4;
        private DevExpress.XtraEditors.TextEdit txtOpBalanceFD;
        private DevExpress.XtraLayout.LayoutControlItem lcOPBalanceFD;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem5;
        private DevExpress.XtraEditors.TextEdit txtCLBalanceCash;
        private DevExpress.XtraLayout.LayoutControlItem lcCLBalanceCash;
        private DevExpress.XtraEditors.TextEdit txtCLBalanceBank;
        private DevExpress.XtraLayout.LayoutControlItem lcCLBalanceBankAccount;
        private DevExpress.XtraEditors.TextEdit txtCLBalanceFD;
        private DevExpress.XtraLayout.LayoutControlItem lcCLBalanceFD;
        private DevExpress.XtraLayout.SimpleLabelItem lblOPCaption;
        private DevExpress.XtraLayout.SimpleLabelItem lblCLCaption;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem6;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem7;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem8;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem9;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem10;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem11;
        private DevExpress.XtraGrid.Columns.GridColumn colExpenseLedgerCode;
        private DevExpress.XtraGrid.Columns.GridColumn colIncomeLedgerCode;
        private DevExpress.XtraGrid.Columns.GridColumn colIncomeLedgerGroup;
        private DevExpress.XtraGrid.Columns.GridColumn colExpenseLedgerGroup;
        private DevExpress.XtraEditors.GridLookUpEdit grdLkpProject;
        private DevExpress.XtraGrid.Views.Grid.GridView gvProjects;
        private DevExpress.XtraGrid.Columns.GridColumn gccolProjectId;
        private DevExpress.XtraGrid.Columns.GridColumn gccolProject;
        private DevExpress.XtraLayout.LayoutControlItem lcProject;
    }
}