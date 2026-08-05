namespace Bosco.Utility.UIControls
{
    partial class UcAssetJournal
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            DevExpress.Utils.SerializableAppearanceObject serializableAppearanceObject1 = new DevExpress.Utils.SerializableAppearanceObject();
            this.layoutControl1 = new DevExpress.XtraLayout.LayoutControl();
            this.gcBank = new DevExpress.XtraGrid.GridControl();
            this.gvBank = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colCashSource = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rglkpCashSource = new DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCashFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rglkpCashFlag = new DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit();
            this.colCashLedger = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rglkpCashLedger = new DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit();
            this.repositoryItemGridLookUpEdit1View = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colLedgerId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLedgerName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colGroupId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colABankAccountId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCashAmount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rtxtCashAmount = new DevExpress.XtraEditors.Repository.RepositoryItemCalcEdit();
            this.colCashCheque = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterializedOn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rdtMaterializedOn = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.colLedgerBalance = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rtxtLedgerBalance = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.colBudgetAmt = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rtxtBudgetAmt = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.colTempAmt = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDeleteCashBank = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rbtnDeleteBank = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.colLedgerGroupId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLedgerType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.layoutControlGroup1 = new DevExpress.XtraLayout.LayoutControlGroup();
            this.layoutControlItem1 = new DevExpress.XtraLayout.LayoutControlItem();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSourceId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSourceName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFlagId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFlagName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCashLedgerId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCashLedgerName = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControl1)).BeginInit();
            this.layoutControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gcBank)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvBank)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rglkpCashSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rglkpCashFlag)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rglkpCashLedger)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rtxtCashAmount)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rdtMaterializedOn)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rdtMaterializedOn.CalendarTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rtxtLedgerBalance)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rtxtBudgetAmt)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rbtnDeleteBank)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlGroup1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem1)).BeginInit();
            this.SuspendLayout();
            // 
            // layoutControl1
            // 
            this.layoutControl1.Controls.Add(this.gcBank);
            this.layoutControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.layoutControl1.Location = new System.Drawing.Point(0, 0);
            this.layoutControl1.Name = "layoutControl1";
            this.layoutControl1.Root = this.layoutControlGroup1;
            this.layoutControl1.Size = new System.Drawing.Size(740, 308);
            this.layoutControl1.TabIndex = 0;
            this.layoutControl1.Text = "layoutControl1";
            // 
            // gcBank
            // 
            this.gcBank.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold);
            this.gcBank.Location = new System.Drawing.Point(2, 2);
            this.gcBank.MainView = this.gvBank;
            this.gcBank.Name = "gcBank";
            this.gcBank.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.rglkpCashFlag,
            this.rdtMaterializedOn,
            this.rtxtLedgerBalance,
            this.rbtnDeleteBank,
            this.rtxtBudgetAmt,
            this.rtxtCashAmount,
            this.rglkpCashLedger,
            this.rglkpCashSource});
            this.gcBank.Size = new System.Drawing.Size(736, 304);
            this.gcBank.TabIndex = 3;
            this.gcBank.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvBank});
            this.gcBank.Visible = false;
            this.gcBank.ProcessGridKey += new System.Windows.Forms.KeyEventHandler(this.gcBank_ProcessGridKey);
            // 
            // gvBank
            // 
            this.gvBank.Appearance.FocusedCell.BackColor = System.Drawing.Color.LightBlue;
            this.gvBank.Appearance.FocusedCell.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold);
            this.gvBank.Appearance.FocusedCell.Options.UseBackColor = true;
            this.gvBank.Appearance.FocusedCell.Options.UseFont = true;
            this.gvBank.Appearance.FocusedRow.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold);
            this.gvBank.Appearance.FocusedRow.Options.UseFont = true;
            this.gvBank.Appearance.FooterPanel.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold);
            this.gvBank.Appearance.FooterPanel.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.gvBank.Appearance.FooterPanel.Options.UseFont = true;
            this.gvBank.Appearance.FooterPanel.Options.UseForeColor = true;
            this.gvBank.Appearance.GroupFooter.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold);
            this.gvBank.Appearance.GroupFooter.Options.UseFont = true;
            this.gvBank.Appearance.HeaderPanel.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Bold);
            this.gvBank.Appearance.HeaderPanel.Options.UseFont = true;
            this.gvBank.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.gvBank.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCashSource,
            this.colCashFlag,
            this.colCashLedger,
            this.colCashAmount,
            this.colCashCheque,
            this.colMaterializedOn,
            this.colLedgerBalance,
            this.colBudgetAmt,
            this.colTempAmt,
            this.colDeleteCashBank,
            this.colLedgerGroupId,
            this.colLedgerType});
            this.gvBank.GridControl = this.gcBank;
            this.gvBank.GroupCount = 1;
            this.gvBank.GroupFormat = " [#image]{1} {2}";
            this.gvBank.Name = "gvBank";
            this.gvBank.OptionsBehavior.AllowAddRows = DevExpress.Utils.DefaultBoolean.True;
            this.gvBank.OptionsBehavior.EditorShowMode = DevExpress.Utils.EditorShowMode.MouseUp;
            this.gvBank.OptionsBehavior.ImmediateUpdateRowPosition = false;
            this.gvBank.OptionsNavigation.EnterMoveNextColumn = true;
            this.gvBank.OptionsView.ShowFooter = true;
            this.gvBank.OptionsView.ShowGroupPanel = false;
            this.gvBank.OptionsView.ShowIndicator = false;
            this.gvBank.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colLedgerType, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.gvBank.CustomDrawGroupRow += new DevExpress.XtraGrid.Views.Base.RowObjectCustomDrawEventHandler(this.gvBank_CustomDrawGroupRow);
            this.gvBank.RowCellStyle += new DevExpress.XtraGrid.Views.Grid.RowCellStyleEventHandler(this.gvBank_RowCellStyle);
            this.gvBank.RowStyle += new DevExpress.XtraGrid.Views.Grid.RowStyleEventHandler(this.gvBank_RowStyle);
            this.gvBank.GroupRowCollapsing += new DevExpress.XtraGrid.Views.Base.RowAllowEventHandler(this.gvBank_GroupRowCollapsing);
            this.gvBank.ShowingEditor += new System.ComponentModel.CancelEventHandler(this.gvBank_ShowingEditor);
            this.gvBank.ShownEditor += new System.EventHandler(this.gvBank_ShownEditor);
            this.gvBank.GotFocus += new System.EventHandler(this.gvBank_GotFocus);
            // 
            // colCashSource
            // 
            this.colCashSource.AppearanceCell.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold);
            this.colCashSource.AppearanceCell.Options.UseFont = true;
            this.colCashSource.ColumnEdit = this.rglkpCashSource;
            this.colCashSource.FieldName = "SOURCE";
            this.colCashSource.Name = "colCashSource";
            this.colCashSource.OptionsColumn.AllowEdit = false;
            this.colCashSource.OptionsColumn.AllowFocus = false;
            this.colCashSource.OptionsColumn.AllowMove = false;
            this.colCashSource.OptionsColumn.AllowShowHide = false;
            this.colCashSource.OptionsColumn.AllowSize = false;
            this.colCashSource.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.True;
            this.colCashSource.OptionsColumn.FixedWidth = true;
            this.colCashSource.OptionsColumn.ReadOnly = true;
            this.colCashSource.OptionsColumn.ShowCaption = false;
            this.colCashSource.OptionsColumn.TabStop = false;
            this.colCashSource.OptionsFilter.AllowAutoFilter = false;
            this.colCashSource.OptionsFilter.AllowFilter = false;
            this.colCashSource.Visible = true;
            this.colCashSource.VisibleIndex = 0;
            this.colCashSource.Width = 42;
            // 
            // rglkpCashSource
            // 
            this.rglkpCashSource.AutoHeight = false;
            this.rglkpCashSource.BestFitMode = DevExpress.XtraEditors.Controls.BestFitMode.BestFit;
            this.rglkpCashSource.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rglkpCashSource.CloseUpKey = new DevExpress.Utils.KeyShortcut(System.Windows.Forms.Keys.F2);
            this.rglkpCashSource.Name = "rglkpCashSource";
            this.rglkpCashSource.NullText = "";
            this.rglkpCashSource.PopupFormMinSize = new System.Drawing.Size(10, 10);
            this.rglkpCashSource.PopupFormSize = new System.Drawing.Size(25, 45);
            this.rglkpCashSource.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.rglkpCashSource.View = this.gridView1;
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colId,
            this.colName});
            this.gridView1.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.gridView1.OptionsView.ShowColumnHeaders = false;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            this.gridView1.OptionsView.ShowIndicator = false;
            // 
            // colId
            // 
            this.colId.Caption = "Id";
            this.colId.FieldName = "Id";
            this.colId.Name = "colId";
            // 
            // colName
            // 
            this.colName.Caption = "Name";
            this.colName.FieldName = "Name";
            this.colName.FilterMode = DevExpress.XtraGrid.ColumnFilterMode.DisplayText;
            this.colName.Name = "colName";
            this.colName.OptionsFilter.AllowAutoFilter = false;
            this.colName.OptionsFilter.AllowFilter = false;
            this.colName.ShowButtonMode = DevExpress.XtraGrid.Views.Base.ShowButtonModeEnum.ShowForFocusedRow;
            this.colName.Visible = true;
            this.colName.VisibleIndex = 0;
            // 
            // colCashFlag
            // 
            this.colCashFlag.Caption = "Flag";
            this.colCashFlag.ColumnEdit = this.rglkpCashFlag;
            this.colCashFlag.FieldName = "LEDGER_FLAG";
            this.colCashFlag.Name = "colCashFlag";
            this.colCashFlag.OptionsColumn.AllowMove = false;
            this.colCashFlag.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colCashFlag.OptionsColumn.FixedWidth = true;
            this.colCashFlag.OptionsFilter.AllowAutoFilter = false;
            this.colCashFlag.OptionsFilter.AllowFilter = false;
            this.colCashFlag.Width = 52;
            // 
            // rglkpCashFlag
            // 
            this.rglkpCashFlag.AutoHeight = false;
            this.rglkpCashFlag.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rglkpCashFlag.Name = "rglkpCashFlag";
            this.rglkpCashFlag.NullText = "";
            this.rglkpCashFlag.PopupFormMinSize = new System.Drawing.Size(10, 0);
            this.rglkpCashFlag.PopupFormSize = new System.Drawing.Size(52, 10);
            // 
            // colCashLedger
            // 
            this.colCashLedger.Caption = "Cash / Bank";
            this.colCashLedger.ColumnEdit = this.rglkpCashLedger;
            this.colCashLedger.FieldName = "LEDGER_ID";
            this.colCashLedger.Name = "colCashLedger";
            this.colCashLedger.OptionsFilter.AllowAutoFilter = false;
            this.colCashLedger.OptionsFilter.AllowFilter = false;
            this.colCashLedger.Visible = true;
            this.colCashLedger.VisibleIndex = 1;
            this.colCashLedger.Width = 375;
            // 
            // rglkpCashLedger
            // 
            this.rglkpCashLedger.AutoHeight = false;
            this.rglkpCashLedger.BestFitMode = DevExpress.XtraEditors.Controls.BestFitMode.BestFit;
            this.rglkpCashLedger.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rglkpCashLedger.ImmediatePopup = true;
            this.rglkpCashLedger.Name = "rglkpCashLedger";
            this.rglkpCashLedger.NullText = "";
            this.rglkpCashLedger.PopupBorderStyle = DevExpress.XtraEditors.Controls.PopupBorderStyles.Style3D;
            this.rglkpCashLedger.PopupFilterMode = DevExpress.XtraEditors.PopupFilterMode.Contains;
            this.rglkpCashLedger.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.rglkpCashLedger.View = this.repositoryItemGridLookUpEdit1View;
            this.rglkpCashLedger.EditValueChanged += new System.EventHandler(this.rglkpCashLedger_EditValueChanged);
            this.rglkpCashLedger.Leave += new System.EventHandler(this.rglkpCashLedger_Leave);
            this.rglkpCashLedger.MouseDown += new System.Windows.Forms.MouseEventHandler(this.rglkpCashLedger_MouseDown);
            this.rglkpCashLedger.Validating += new System.ComponentModel.CancelEventHandler(this.rglkpCashLedger_Validating);
            // 
            // repositoryItemGridLookUpEdit1View
            // 
            this.repositoryItemGridLookUpEdit1View.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colLedgerId,
            this.colLedgerName,
            this.colGroupId,
            this.colABankAccountId});
            this.repositoryItemGridLookUpEdit1View.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            this.repositoryItemGridLookUpEdit1View.Name = "repositoryItemGridLookUpEdit1View";
            this.repositoryItemGridLookUpEdit1View.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.repositoryItemGridLookUpEdit1View.OptionsView.ShowColumnHeaders = false;
            this.repositoryItemGridLookUpEdit1View.OptionsView.ShowGroupPanel = false;
            this.repositoryItemGridLookUpEdit1View.OptionsView.ShowIndicator = false;
            // 
            // colLedgerId
            // 
            this.colLedgerId.Caption = "LedgerId";
            this.colLedgerId.FieldName = "LEDGER_ID";
            this.colLedgerId.FilterMode = DevExpress.XtraGrid.ColumnFilterMode.DisplayText;
            this.colLedgerId.Name = "colLedgerId";
            this.colLedgerId.OptionsFilter.AllowAutoFilter = false;
            this.colLedgerId.OptionsFilter.AllowFilter = false;
            this.colLedgerId.ShowButtonMode = DevExpress.XtraGrid.Views.Base.ShowButtonModeEnum.ShowForFocusedRow;
            // 
            // colLedgerName
            // 
            this.colLedgerName.Caption = "Cash / Bank";
            this.colLedgerName.FieldName = "LEDGER_NAME";
            this.colLedgerName.FilterMode = DevExpress.XtraGrid.ColumnFilterMode.DisplayText;
            this.colLedgerName.Name = "colLedgerName";
            this.colLedgerName.OptionsFilter.AllowAutoFilter = false;
            this.colLedgerName.OptionsFilter.AllowFilter = false;
            this.colLedgerName.ShowButtonMode = DevExpress.XtraGrid.Views.Base.ShowButtonModeEnum.ShowForFocusedRow;
            this.colLedgerName.Visible = true;
            this.colLedgerName.VisibleIndex = 0;
            // 
            // colGroupId
            // 
            this.colGroupId.Caption = "Group Id";
            this.colGroupId.FieldName = "GROUP_ID";
            this.colGroupId.Name = "colGroupId";
            // 
            // colABankAccountId
            // 
            this.colABankAccountId.Caption = "BankAccountId";
            this.colABankAccountId.FieldName = "BANK_ACCOUNT_ID";
            this.colABankAccountId.Name = "colABankAccountId";
            // 
            // colCashAmount
            // 
            this.colCashAmount.AppearanceHeader.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Bold);
            this.colCashAmount.AppearanceHeader.Options.UseFont = true;
            this.colCashAmount.Caption = "Amount";
            this.colCashAmount.ColumnEdit = this.rtxtCashAmount;
            this.colCashAmount.FieldName = "AMOUNT";
            this.colCashAmount.Name = "colCashAmount";
            this.colCashAmount.OptionsColumn.FixedWidth = true;
            this.colCashAmount.OptionsFilter.AllowAutoFilter = false;
            this.colCashAmount.OptionsFilter.AllowFilter = false;
            this.colCashAmount.ShowButtonMode = DevExpress.XtraGrid.Views.Base.ShowButtonModeEnum.ShowForFocusedCell;
            this.colCashAmount.Summary.AddRange(new DevExpress.XtraGrid.GridSummaryItem[] {
            new DevExpress.XtraGrid.GridColumnSummaryItem(DevExpress.Data.SummaryItemType.Sum, "AMOUNT", "{0:C}")});
            this.colCashAmount.Visible = true;
            this.colCashAmount.VisibleIndex = 2;
            this.colCashAmount.Width = 113;
            // 
            // rtxtCashAmount
            // 
            this.rtxtCashAmount.AutoHeight = false;
            this.rtxtCashAmount.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rtxtCashAmount.Mask.EditMask = "n";
            this.rtxtCashAmount.Mask.UseMaskAsDisplayFormat = true;
            this.rtxtCashAmount.MaxLength = 10;
            this.rtxtCashAmount.Name = "rtxtCashAmount";
            // 
            // colCashCheque
            // 
            this.colCashCheque.Caption = "Ref. No (DD/Cheque)";
            this.colCashCheque.FieldName = "CHEQUE_NO";
            this.colCashCheque.Name = "colCashCheque";
            this.colCashCheque.OptionsColumn.FixedWidth = true;
            this.colCashCheque.OptionsFilter.AllowAutoFilter = false;
            this.colCashCheque.OptionsFilter.AllowFilter = false;
            this.colCashCheque.UnboundType = DevExpress.Data.UnboundColumnType.String;
            this.colCashCheque.Width = 118;
            // 
            // colMaterializedOn
            // 
            this.colMaterializedOn.Caption = "Materialized On";
            this.colMaterializedOn.ColumnEdit = this.rdtMaterializedOn;
            this.colMaterializedOn.FieldName = "MATERIALIZED_ON";
            this.colMaterializedOn.Name = "colMaterializedOn";
            this.colMaterializedOn.OptionsColumn.AllowSize = false;
            this.colMaterializedOn.OptionsColumn.FixedWidth = true;
            this.colMaterializedOn.OptionsFilter.AllowAutoFilter = false;
            this.colMaterializedOn.OptionsFilter.AllowFilter = false;
            this.colMaterializedOn.UnboundType = DevExpress.Data.UnboundColumnType.DateTime;
            this.colMaterializedOn.Width = 92;
            // 
            // rdtMaterializedOn
            // 
            this.rdtMaterializedOn.AutoHeight = false;
            this.rdtMaterializedOn.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rdtMaterializedOn.CalendarTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.rdtMaterializedOn.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.DateTimeAdvancingCaret;
            this.rdtMaterializedOn.Mask.UseMaskAsDisplayFormat = true;
            this.rdtMaterializedOn.Name = "rdtMaterializedOn";
            this.rdtMaterializedOn.EditValueChanged += new System.EventHandler(this.rdtMaterializedOn_EditValueChanged);
            // 
            // colLedgerBalance
            // 
            this.colLedgerBalance.AppearanceCell.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold);
            this.colLedgerBalance.AppearanceCell.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(128)))));
            this.colLedgerBalance.AppearanceCell.Options.UseFont = true;
            this.colLedgerBalance.AppearanceCell.Options.UseForeColor = true;
            this.colLedgerBalance.Caption = "Current Balance";
            this.colLedgerBalance.ColumnEdit = this.rtxtLedgerBalance;
            this.colLedgerBalance.FieldName = "LEDGER_BALANCE";
            this.colLedgerBalance.Name = "colLedgerBalance";
            this.colLedgerBalance.OptionsColumn.AllowEdit = false;
            this.colLedgerBalance.OptionsColumn.AllowFocus = false;
            this.colLedgerBalance.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colLedgerBalance.OptionsColumn.AllowMove = false;
            this.colLedgerBalance.OptionsColumn.AllowSize = false;
            this.colLedgerBalance.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colLedgerBalance.OptionsColumn.FixedWidth = true;
            this.colLedgerBalance.OptionsColumn.ReadOnly = true;
            this.colLedgerBalance.OptionsFilter.AllowAutoFilter = false;
            this.colLedgerBalance.OptionsFilter.AllowFilter = false;
            this.colLedgerBalance.Visible = true;
            this.colLedgerBalance.VisibleIndex = 3;
            this.colLedgerBalance.Width = 183;
            // 
            // rtxtLedgerBalance
            // 
            this.rtxtLedgerBalance.Appearance.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold);
            this.rtxtLedgerBalance.Appearance.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(128)))));
            this.rtxtLedgerBalance.Appearance.Options.UseFont = true;
            this.rtxtLedgerBalance.Appearance.Options.UseForeColor = true;
            this.rtxtLedgerBalance.AutoHeight = false;
            this.rtxtLedgerBalance.Name = "rtxtLedgerBalance";
            // 
            // colBudgetAmt
            // 
            this.colBudgetAmt.AppearanceCell.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold);
            this.colBudgetAmt.AppearanceCell.Options.UseFont = true;
            this.colBudgetAmt.Caption = "Budget Amt";
            this.colBudgetAmt.ColumnEdit = this.rtxtBudgetAmt;
            this.colBudgetAmt.FieldName = "BUDGET_AMOUNT";
            this.colBudgetAmt.Name = "colBudgetAmt";
            this.colBudgetAmt.OptionsColumn.AllowEdit = false;
            this.colBudgetAmt.OptionsColumn.AllowFocus = false;
            this.colBudgetAmt.OptionsColumn.AllowMove = false;
            this.colBudgetAmt.OptionsColumn.FixedWidth = true;
            this.colBudgetAmt.OptionsColumn.ReadOnly = true;
            this.colBudgetAmt.Width = 116;
            // 
            // rtxtBudgetAmt
            // 
            this.rtxtBudgetAmt.Appearance.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold);
            this.rtxtBudgetAmt.Appearance.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(128)))));
            this.rtxtBudgetAmt.Appearance.Options.UseFont = true;
            this.rtxtBudgetAmt.Appearance.Options.UseForeColor = true;
            this.rtxtBudgetAmt.AutoHeight = false;
            this.rtxtBudgetAmt.Name = "rtxtBudgetAmt";
            // 
            // colTempAmt
            // 
            this.colTempAmt.Caption = "TempAmt";
            this.colTempAmt.FieldName = "TEMP_AMOUNT";
            this.colTempAmt.Name = "colTempAmt";
            // 
            // colDeleteCashBank
            // 
            this.colDeleteCashBank.ColumnEdit = this.rbtnDeleteBank;
            this.colDeleteCashBank.FieldName = "ACTION";
            this.colDeleteCashBank.Name = "colDeleteCashBank";
            this.colDeleteCashBank.OptionsColumn.FixedWidth = true;
            this.colDeleteCashBank.OptionsColumn.ShowCaption = false;
            this.colDeleteCashBank.OptionsColumn.TabStop = false;
            this.colDeleteCashBank.Visible = true;
            this.colDeleteCashBank.VisibleIndex = 4;
            this.colDeleteCashBank.Width = 21;
            // 
            // rbtnDeleteBank
            // 
            this.rbtnDeleteBank.AutoHeight = false;
            this.rbtnDeleteBank.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Glyph, "", -1, true, true, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, global::ACPP.Properties.Resources.Delete_Mob, new DevExpress.Utils.KeyShortcut(System.Windows.Forms.Keys.None), serializableAppearanceObject1, "Delete Cash/Bank Voucher Entry", null, null, true)});
            this.rbtnDeleteBank.Name = "rbtnDeleteBank";
            this.rbtnDeleteBank.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            this.rbtnDeleteBank.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.rbtnDeleteBankTransaction_ButtonClick);
            // 
            // colLedgerGroupId
            // 
            this.colLedgerGroupId.FieldName = "GROUP_ID";
            this.colLedgerGroupId.Name = "colLedgerGroupId";
            this.colLedgerGroupId.OptionsColumn.AllowEdit = false;
            this.colLedgerGroupId.OptionsColumn.AllowFocus = false;
            this.colLedgerGroupId.OptionsColumn.TabStop = false;
            // 
            // colLedgerType
            // 
            this.colLedgerType.FieldName = "LEDGER_TYPE";
            this.colLedgerType.Name = "colLedgerType";
            this.colLedgerType.OptionsColumn.AllowEdit = false;
            this.colLedgerType.OptionsColumn.AllowFocus = false;
            this.colLedgerType.OptionsColumn.TabStop = false;
            this.colLedgerType.Visible = true;
            this.colLedgerType.VisibleIndex = 5;
            // 
            // layoutControlGroup1
            // 
            this.layoutControlGroup1.CustomizationFormText = "layoutControlGroup1";
            this.layoutControlGroup1.EnableIndentsWithoutBorders = DevExpress.Utils.DefaultBoolean.True;
            this.layoutControlGroup1.GroupBordersVisible = false;
            this.layoutControlGroup1.Items.AddRange(new DevExpress.XtraLayout.BaseLayoutItem[] {
            this.layoutControlItem1});
            this.layoutControlGroup1.Location = new System.Drawing.Point(0, 0);
            this.layoutControlGroup1.Name = "layoutControlGroup1";
            this.layoutControlGroup1.Padding = new DevExpress.XtraLayout.Utils.Padding(0, 0, 0, 0);
            this.layoutControlGroup1.Size = new System.Drawing.Size(740, 308);
            this.layoutControlGroup1.Text = "layoutControlGroup1";
            this.layoutControlGroup1.TextVisible = false;
            // 
            // layoutControlItem1
            // 
            this.layoutControlItem1.Control = this.gcBank;
            this.layoutControlItem1.CustomizationFormText = "layoutControlItem1";
            this.layoutControlItem1.Location = new System.Drawing.Point(0, 0);
            this.layoutControlItem1.Name = "layoutControlItem1";
            this.layoutControlItem1.Size = new System.Drawing.Size(740, 308);
            this.layoutControlItem1.Text = "layoutControlItem1";
            this.layoutControlItem1.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem1.TextToControlDistance = 0;
            this.layoutControlItem1.TextVisible = false;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "Id";
            this.gridColumn3.FieldName = "Id";
            this.gridColumn3.Name = "gridColumn3";
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "Name";
            this.gridColumn4.FieldName = "Name";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 0;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Id";
            this.gridColumn1.FieldName = "Id";
            this.gridColumn1.Name = "gridColumn1";
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "Name";
            this.gridColumn2.FieldName = "Name";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 0;
            // 
            // colSourceId
            // 
            this.colSourceId.Caption = "Id";
            this.colSourceId.FieldName = "Id";
            this.colSourceId.Name = "colSourceId";
            // 
            // colSourceName
            // 
            this.colSourceName.Caption = "Name";
            this.colSourceName.FieldName = "Name";
            this.colSourceName.Name = "colSourceName";
            this.colSourceName.Visible = true;
            this.colSourceName.VisibleIndex = 0;
            // 
            // colFlagId
            // 
            this.colFlagId.Caption = "Id";
            this.colFlagId.FieldName = "Id";
            this.colFlagId.Name = "colFlagId";
            // 
            // colFlagName
            // 
            this.colFlagName.Caption = "Name";
            this.colFlagName.FieldName = "Name";
            this.colFlagName.Name = "colFlagName";
            this.colFlagName.Visible = true;
            this.colFlagName.VisibleIndex = 0;
            // 
            // colCashLedgerId
            // 
            this.colCashLedgerId.Caption = "LedgerId";
            this.colCashLedgerId.FieldName = "LEDGER_ID";
            this.colCashLedgerId.Name = "colCashLedgerId";
            // 
            // colCashLedgerName
            // 
            this.colCashLedgerName.AppearanceCell.Font = new System.Drawing.Font("Tahoma", 9F);
            this.colCashLedgerName.AppearanceCell.Options.UseFont = true;
            this.colCashLedgerName.AppearanceHeader.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Bold);
            this.colCashLedgerName.AppearanceHeader.Options.UseFont = true;
            this.colCashLedgerName.Caption = "Ledger";
            this.colCashLedgerName.FieldName = "LEDGER_NAME";
            this.colCashLedgerName.Name = "colCashLedgerName";
            this.colCashLedgerName.Visible = true;
            this.colCashLedgerName.VisibleIndex = 0;
            this.colCashLedgerName.Width = 390;
            // 
            // UcAssetJournal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.layoutControl1);
            this.Name = "UcAssetJournal";
            this.Size = new System.Drawing.Size(740, 308);
            this.Load += new System.EventHandler(this.UcAssetJournal_Load);
            ((System.ComponentModel.ISupportInitialize)(this.layoutControl1)).EndInit();
            this.layoutControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gcBank)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvBank)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rglkpCashSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rglkpCashFlag)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rglkpCashLedger)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rtxtCashAmount)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rdtMaterializedOn.CalendarTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rdtMaterializedOn)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rtxtLedgerBalance)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rtxtBudgetAmt)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rbtnDeleteBank)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlGroup1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraLayout.LayoutControl layoutControl1;
        private DevExpress.XtraLayout.LayoutControlGroup layoutControlGroup1;
        private DevExpress.XtraGrid.Columns.GridColumn colSourceId;
        private DevExpress.XtraGrid.Columns.GridColumn colSourceName;
        private DevExpress.XtraGrid.Columns.GridColumn colFlagId;
        private DevExpress.XtraGrid.Columns.GridColumn colFlagName;
        private DevExpress.XtraGrid.Columns.GridColumn colCashLedgerId;
        private DevExpress.XtraGrid.Columns.GridColumn colCashLedgerName;
        //private DevExpress.XtraGrid.Columns.GridColumn colCashSource;
        private DevExpress.XtraGrid.GridControl gcBank;
        private DevExpress.XtraGrid.Views.Grid.GridView gvBank;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn colCashFlag;
        private DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit rglkpCashFlag;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraGrid.Columns.GridColumn colCashLedger;
        private DevExpress.XtraGrid.Columns.GridColumn colCashAmount;
        private DevExpress.XtraEditors.Repository.RepositoryItemCalcEdit rtxtCashAmount;
        private DevExpress.XtraGrid.Columns.GridColumn colCashCheque;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterializedOn;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit rdtMaterializedOn;
        private DevExpress.XtraGrid.Columns.GridColumn colLedgerBalance;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit rtxtLedgerBalance;
        private DevExpress.XtraGrid.Columns.GridColumn colBudgetAmt;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit rtxtBudgetAmt;
        private DevExpress.XtraGrid.Columns.GridColumn colTempAmt;
        private DevExpress.XtraGrid.Columns.GridColumn colDeleteCashBank;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit rbtnDeleteBank;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem1;
        private DevExpress.XtraGrid.Columns.GridColumn colCashSource;
        private DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit rglkpCashLedger;
        private DevExpress.XtraGrid.Views.Grid.GridView repositoryItemGridLookUpEdit1View;
        private DevExpress.XtraGrid.Columns.GridColumn colLedgerId;
        private DevExpress.XtraGrid.Columns.GridColumn colLedgerName;
        private DevExpress.XtraGrid.Columns.GridColumn colGroupId;
        private DevExpress.XtraGrid.Columns.GridColumn colABankAccountId;
        private DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit rglkpCashSource;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colId;
        private DevExpress.XtraGrid.Columns.GridColumn colName;
        private DevExpress.XtraGrid.Columns.GridColumn colLedgerGroupId;
        private DevExpress.XtraGrid.Columns.GridColumn colLedgerType;
    }
}
