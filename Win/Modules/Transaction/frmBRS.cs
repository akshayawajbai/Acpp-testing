// 14/08/2025, *Chinna , Purpose:
// Enable multi-project selection and aggregate BRS/balances
using System;
using System.Drawing;

using Bosco.Model.UIModel;
using Bosco.Utility;
using System.Linq;
using DevExpress.XtraEditors;
using Bosco.Model.Transaction;
using DevExpress.XtraGrid.Views.Grid;
using System.Data;
using System.Windows.Forms;
using AcMEDSync.Model;
using DevExpress.Utils.Menu;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraEditors.Filtering;
using DevExpress.XtraGrid.Columns;
using System.Collections.Generic;
using Bosco.Utility.Base;
using DevExpress.Data.Filtering.Helpers;
using DevExpress.XtraEditors.Repository;
using DevExpress.Internal.DXWindow;
using DevExpress.ExpressApp;
using System.Reflection;
using DevExpress.Data;

namespace ACPP.Modules.Transaction
{
    public partial class frmBRS : frmFinanceBaseAdd
    {
        #region Variables
        private const string SELECT_COL = "SELECT";
        private const int GRID_MATIRILIZED_ON_COL = 2;

        public bool IsDateLoaded = false;
        // Performance: prevent duplicate reloads and cascading events
        private bool _suppressProjectEditEvent = false;
        private bool _suppressBankLedgerEditEvent = false;
        private int _suspendEventsCount = 0;
        private System.Windows.Forms.Timer _selectionDebounceTimer = null;
        // In-memory caches to avoid repeated calls while user toggles selections
        private readonly Dictionary<string, DataTable> _bankAccountsCache = new Dictionary<string, DataTable>();
        private readonly Dictionary<string, DataTable> _brsDetailsCache = new Dictionary<string, DataTable>();
        private readonly Dictionary<string, DataTable> _brsMaterializedCache = new Dictionary<string, DataTable>();
        // Track unsaved edits so we can validate/save on close
        private bool _hasPendingGridEdits = false;
        #endregion

        #region Properties
        ResultArgs resultArgs = null;
        private DataTable bRSDetails = null;
        private DataTable BRSDetails
        {
            get
            {
                return bRSDetails;
            }
            set
            {
                bRSDetails = value;
            }
        }
        #endregion

        #region Constructor
        public frmBRS()
        {
            InitializeComponent();
        }
        #endregion

        #region Events

        private void frmBRS_Load(object sender, EventArgs e)
        {
            deDateFrom.Properties.MinValue = UtilityMember.DateSet.ToDate(this.AppSetting.BookBeginFrom, false);
            deDateFrom.Properties.MaxValue = UtilityMember.DateSet.ToDate(this.AppSetting.YearTo, false);
            deDateTo.Properties.MinValue = UtilityMember.DateSet.ToDate(this.AppSetting.BookBeginFrom, false);
            deDateTo.Properties.MaxValue = UtilityMember.DateSet.ToDate(this.AppSetting.YearTo, false);

            deDateFrom.DateTime = UtilityMember.DateSet.ToDate(this.AppSetting.YearFrom, false);
            deDateTo.DateTime = UtilityMember.DateSet.ToDate(this.AppSetting.YearTo, false);
            LoadProject();
            //ucBankReconciliationToolBar.VisibleAddButton = DevExpress.XtraBars.BarItemVisibility.Never;
            //ucBankReconciliationToolBar.VisibleDeleteButton = DevExpress.XtraBars.BarItemVisibility.Never;
            //ucBankReconciliationToolBar.VisibleEditButton = DevExpress.XtraBars.BarItemVisibility.Never;
            if (!this.LoginUser.IsFullRightsReservedUser)
            {
                ApplyUserRights();
            }
            else
            {
                ucBankReconciliationToolBar.VisiblePrintButton = DevExpress.XtraBars.BarItemVisibility.Always;
                ucBankReconciliationToolBar.VisibleEditButton = DevExpress.XtraBars.BarItemVisibility.Always; //For Fitler                
            }

            //Enable Filter properties ---------------------------------------------------------
            //gvBRS.OptionsView.ShowFilterPanelMode = DevExpress.XtraGrid.Views.Base.ShowFilterPanelMode.ShowAlways;
            //gvBRS.OptionsFilter.DefaultFilterEditorView = FilterEditorViewMode.VisualAndText;
            //gvBRS.FilterEditorCreated += new DevExpress.XtraGrid.Views.Base.FilterControlEventHandler(gvBRS_FilterEditorCreated);
            //----------------------------------------------------------------------------------
            chkSelectAll.Visible = false;
        }



        //private void FilterControl_KeyDown(object sender, KeyEventArgs e)
        //{
        //    if (e.KeyCode == Keys.Tab)
        //        e = new KeyEventArgs(Keys.Right | Keys.Left);
        //    base.OnKeyDown(e);
        //}

        //private void FilterControl_PopupMenuShowing(object sender, DevExpress.XtraEditors.Filtering.PopupMenuShowingEventArgs e)
        //{
        //    //Hide NOT, OR operator
        //    if (e.MenuType == FilterControlMenuType.Group)
        //    {
        //        for (int i = e.Menu.Items.Count - 1; i >= 0; i--)
        //        {
        //            if (e.Menu.Items[i].Caption == Localizer.Active.GetLocalizedString(StringId.FilterGroupNotAnd) ||
        //                e.Menu.Items[i].Caption == Localizer.Active.GetLocalizedString(StringId.FilterGroupNotOr))
        //            {
        //                e.Menu.Items.RemoveAt(i);
        //            }
        //        }


        //    }
        //}

        private void ApplyUserRights()
        {
            if (CommonMethod.ApplyUserRights((int)Reconciliation.PrintBankReconciliation) != 0)
            {
                ucBankReconciliationToolBar.VisiblePrintButton = DevExpress.XtraBars.BarItemVisibility.Always;
            }
            if (CommonMethod.ApplyUserRights((int)Reconciliation.BankUnCleared) == 0)
            {
                chkUnCleared.Enabled = chkUnCleared.Checked = false;
            }
            if (CommonMethod.ApplyUserRights((int)Reconciliation.BankUnReconcilied) == 0)
            {
                chkUnReconciled.Enabled = chkUnReconciled.Checked = false;
            }
            if (CommonMethod.ApplyUserRights((int)Reconciliation.BankCleared) == 0)
            {
                chkCleared.Enabled = chkCleared.Checked = false;
            }
            if (CommonMethod.ApplyUserRights((int)Reconciliation.BankReconciled) == 0)
            {
                chkReconciled.Enabled = chkReconciled.Checked = false;
            }
        }

        // 14/08/2025, *Chinna , Purpose:
        // Trigger reload when Project edit value changes (guarded to avoid duplicate reloads)
        private void grdlProjectName_EditValueChanged(object sender, EventArgs e)
        {
            if (_suspendEventsCount > 0 || _suppressProjectEditEvent)
                return;
            RequestReloadForProjectChange();
        }

        // 14/08/2025, *Chinna , Purpose:
        // Project selection changed (checkbox) → refresh editor text and reload
        private void gridLookUpEdit1View_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (_suspendEventsCount > 0)
                return;
            // Update display and reload dependent data when project selection changes
            _suppressProjectEditEvent = true;
            try { glkpProject.RefreshEditValue(); }
            finally { _suppressProjectEditEvent = false; }
            RequestReloadForProjectChange();
        }

        // 14/08/2025, *Chinna , Purpose:
        // Custom text for Project editor for single vs multiple selection
        private void glkpProject_CustomDisplayText(object sender, CustomDisplayTextEventArgs e)
        {
            try
            {
                int[] selected = gridLookUpEdit1View.GetSelectedRows();
                if (selected == null || selected.Length == 0)
                {
                    // fallback to current EditValue
                    if (glkpProject.EditValue != null)
                    {
                        //object projectName = gridLookUpEdit1View.GetRowCellValue(gridLookUpEdit1View.FocusedRowHandle, "PROJECT");
                        // Bharath 10/06/2026
                        // Use EditValue instead of FocusedRowHandle to display the correct selected project after lookup reload.
                        object projectName = glkpProject.Properties.GetDisplayValueByKeyValue(glkpProject.EditValue);

                        if (projectName != null)
                            e.DisplayText = projectName.ToString();
                    }
                    return;
                }
                if (selected.Length == 1)
                {
                    object projectName = gridLookUpEdit1View.GetRowCellValue(selected[0], "PROJECT");
                    e.DisplayText = projectName != null ? projectName.ToString() : string.Empty;
                }
                else
                {
                    e.DisplayText = string.Format("{0} projects selected", selected.Length);
                }
            }
            catch { }
        }

        private void gvBRS_RowStyle(object sender, RowStyleEventArgs e)
        {
            GridView view = sender as GridView;
            if (e.RowHandle >= 0)
            {
                if (view.GetRowCellDisplayText(e.RowHandle, view.Columns["STATUS"]) == BankReconciliation.Cleared.ToString())
                {
                    e.Appearance.BackColor = Color.LightGreen;
                }
                else if (view.GetRowCellDisplayText(e.RowHandle, view.Columns["STATUS"]) == BankReconciliation.Uncleared.ToString())
                {
                    e.Appearance.BackColor = Color.Wheat;
                }
                else if (view.GetRowCellDisplayText(e.RowHandle, view.Columns["STATUS"]) == BankReconciliation.Realized.ToString())
                {
                    e.Appearance.BackColor = Color.LightGreen;
                }
                if (view.GetRowCellDisplayText(e.RowHandle, view.Columns["STATUS"]) == BankReconciliation.Unrealized.ToString())
                {
                    e.Appearance.BackColor = Color.Wheat;
                }

                if (this.AppSetting.IS_SDB_INM)
                {
                    if (!(view.GetRowCellDisplayText(e.RowHandle, view.Columns["CLIENT_CODE"]) == string.Empty))
                    {
                        // e.Appearance.BackColor = Color.Red;
                    }
                }
            }
        }

        private void rchkFlag_Click(object sender, EventArgs e)
        {
            string ThridPartyCode = gvBRS.GetFocusedRowCellValue(gccolThirdPartyCode) != null ? gvBRS.GetFocusedRowCellValue(gccolThirdPartyCode).ToString() : string.Empty;
            string ThridPartyMode = gvBRS.GetFocusedRowCellValue(colClientMode) != null ? gvBRS.GetFocusedRowCellValue(colClientMode).ToString() : string.Empty;

            DateTime voucherValidateDate = UtilityMember.DateSet.ToDate(gvBRS.GetFocusedRowCellValue(gvColDate).ToString(), false);
            Int32 projectId = glkpProject.EditValue != null ? this.AppSetting.NumberSet.ToInteger(glkpProject.EditValue.ToString()) : 0;
            bool islockeddate = this.IsVoucherLockedForDate(projectId, voucherValidateDate, true);
            if (!islockeddate)
            {
                if (this.AppSetting.IS_SDB_INM)
                {
                    //if (!string.IsNullOrEmpty(ThridPartyCode))
                    // if (ThridPartyMode == "Online")
                    // {
                    //     this.ShowMessageBox("This Voucher is posted by Third Party application, can not be deleted or modified");
                    //  }
                    // else
                    //{
                    if (gvBRS.GetFocusedRowCellValue(gvColStatus) != null)
                    {
                        DataTable dtBRSSort = gcBRS.DataSource as DataTable;
                        CheckEdit chkStatus = (CheckEdit)sender;
                        string status = gvBRS.GetFocusedRowCellValue(gvColStatus).ToString();
                        string voucherDate = gvBRS.GetFocusedRowCellValue(gvColDate).ToString();
                        if (chkStatus.Checked && status == BankReconciliation.Cleared.ToString())
                        {
                            gvBRS.SetFocusedRowCellValue(gvColStatus, BankReconciliation.Uncleared.ToString());
                            gvBRS.SetFocusedRowCellValue(gvColReconOn, null);
                        }
                        else if (chkStatus.Checked && status == BankReconciliation.Realized.ToString())
                        {
                            gvBRS.SetFocusedRowCellValue(gvColStatus, BankReconciliation.Unrealized.ToString());
                            gvBRS.SetFocusedRowCellValue(gvColReconOn, null);
                        }
                        else if (!chkStatus.Checked && status == BankReconciliation.Uncleared.ToString())
                        {
                            gvBRS.SetFocusedRowCellValue(gvColStatus, BankReconciliation.Cleared.ToString());
                            AddStausColumn(dtBRSSort);
                            gvBRS.SetFocusedRowCellValue(gvColReconOn, voucherDate);
                            gvBRS.FocusedColumn = gvColReconOn;
                            gvBRS.ShowEditor();
                        }
                        else if (!chkStatus.Checked && status == BankReconciliation.Unrealized.ToString())
                        {
                            gvBRS.SetFocusedRowCellValue(gvColStatus, BankReconciliation.Realized.ToString());
                            AddStausColumn(dtBRSSort);
                            gvBRS.SetFocusedRowCellValue(gvColReconOn, voucherDate);
                            gvBRS.FocusedColumn = gvColReconOn;
                            gvBRS.ShowEditor();
                            _hasPendingGridEdits = true;
                        }
                        AddStausColumn(dtBRSSort);
                    }
                    // }
                } // hence you stop it
                else
                {
                    if (gvBRS.GetFocusedRowCellValue(gvColStatus) != null)
                    {
                        DataTable dtBRSSort = gcBRS.DataSource as DataTable;
                        CheckEdit chkStatus = (CheckEdit)sender;
                        string status = gvBRS.GetFocusedRowCellValue(gvColStatus).ToString();
                        string voucherDate = gvBRS.GetFocusedRowCellValue(gvColDate).ToString();
                        if (chkStatus.Checked && status == BankReconciliation.Cleared.ToString())
                        {
                            gvBRS.SetFocusedRowCellValue(gvColStatus, BankReconciliation.Uncleared.ToString());
                            gvBRS.SetFocusedRowCellValue(gvColReconOn, null);
                        }
                        else if (chkStatus.Checked && status == BankReconciliation.Realized.ToString())
                        {
                            gvBRS.SetFocusedRowCellValue(gvColStatus, BankReconciliation.Unrealized.ToString());
                            gvBRS.SetFocusedRowCellValue(gvColReconOn, null);
                        }
                        else if (!chkStatus.Checked && status == BankReconciliation.Uncleared.ToString())
                        {
                            gvBRS.SetFocusedRowCellValue(gvColStatus, BankReconciliation.Cleared.ToString());
                            AddStausColumn(dtBRSSort);
                            gvBRS.SetFocusedRowCellValue(gvColReconOn, voucherDate);
                            gvBRS.FocusedColumn = gvColReconOn;
                            gvBRS.ShowEditor();
                        }
                        else if (!chkStatus.Checked && status == BankReconciliation.Unrealized.ToString())
                        {
                            gvBRS.SetFocusedRowCellValue(gvColStatus, BankReconciliation.Realized.ToString());
                            AddStausColumn(dtBRSSort);
                            gvBRS.SetFocusedRowCellValue(gvColReconOn, voucherDate);
                            gvBRS.FocusedColumn = gvColReconOn;
                            gvBRS.ShowEditor();
                            _hasPendingGridEdits = true;
                        }
                        AddStausColumn(dtBRSSort);
                    }
                }
            }
            chkSelectAll.Checked = false;
        }

        private void chkUnReconciled_CheckedChanged(object sender, EventArgs e)
        {
            SortStatus();
        }

        private void chkReconciled_CheckedChanged(object sender, EventArgs e)
        {
            SortStatus();
        }

        private void chkUnCleared_CheckedChanged(object sender, EventArgs e)
        {
            SortStatus();
        }

        private void chkCleared_CheckedChanged(object sender, EventArgs e)
        {
            SortStatus();
        }

        private void btnCloseBRS_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnApply_Click(object sender, EventArgs e)
        {
            FetchBankAccounts();
            FetchBRSDetails();
            //chkSelectAll.Checked = false;
        }

        private void btnSaveBRS_Click(object sender, EventArgs e)
        {
            DataTable dtBRSSave = gcBRS.DataSource as DataTable;

            if (dtBRSSave != null)
            {
                gvBRS.CloseEditor();
                gvBRS.UpdateCurrentRow();
                using (VoucherTransactionSystem voucherBRS = new VoucherTransactionSystem())
                {
                    //Dinesh 04/07/2025
                    //this.ShowWaitDialog("Updating BRS");
                    this.ShowWaitDialog(this.GetMessage(MessageCatalog.Common.GENERAL_UPDATEING_BRS));
                    resultArgs = voucherBRS.UpdateBRSDetails(dtBRSSave);
                    if (resultArgs != null && resultArgs.Success && resultArgs.RowsAffected > 0)
                    {
                        // Persisted successfully: invalidate caches so the subsequent reload reflects updates
                        _bankAccountsCache.Clear();
                        _brsDetailsCache.Clear();
                        _brsMaterializedCache.Clear();
                        _hasPendingGridEdits = false;
                        FetchBRSDetails();
                        this.CloseWaitDialog();
                    }
                    else
                    {
                        this.CloseWaitDialog();
                        MessageRender.ShowMessage(resultArgs.Message);
                    }
                }
            }
        }

        private void gvBRS_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            int brsStatus = this.UtilityMember.NumberSet.ToInteger(gvBRS.GetFocusedRowCellValue(colFlag).ToString());
            string materializedOn = gvBRS.GetFocusedRowCellValue(gvColReconOn).ToString();
            DateTime voucherDate = this.UtilityMember.DateSet.ToDate(gvBRS.GetFocusedRowCellValue(gvColDate).ToString(), false);
            if (string.IsNullOrEmpty(materializedOn)) //08-12-2025 Modifiyed By Dinesh -purpose Allow Date Value is Null or Empty 
            {
                e.Valid = true;
                return;
            }
            if (!IsValidBRSRow())
            {
                e.Valid = false;

                if (brsStatus == 1 && string.IsNullOrEmpty(materializedOn))
                {
                    gvBRS.FocusedColumn = gvColReconOn;
                    gvBRS.ShowEditor();
                }
                else if (brsStatus == 1 && !this.UtilityMember.DateSet.ValidateDate(voucherDate, this.UtilityMember.DateSet.ToDate(materializedOn, false)))
                {
                    // this.ShowMessageBox("Materialized on should be greater than Voucher Date");
                    this.ShowMessageBox(this.GetMessage(MessageCatalog.Transaction.VocherTransaction.BRS_MATERIALIZED_DATE));
                    gvBRS.FocusedColumn = gvColReconOn;
                    gvBRS.ShowEditor();
                }
            }
            else if (!string.IsNullOrEmpty(materializedOn))
            {
                gvBRS.SetFocusedRowCellValue(colFlag, 1);
                _hasPendingGridEdits = true;
                // Row became realized/cleared with a date → ensure on-screen totals reflect it without manual refresh
                try
                {
                    // Update aggregates and avoid stale cache for this period
                    _brsDetailsCache.Clear();
                    _brsMaterializedCache.Clear();
                    GetBRSBankBalance();
                }
                catch { }
            }
        }

        #endregion

        #region Methods

        private bool HasAnyProjectSelected()
        {
            try
            {
                int[] selectedRowHandles = gridLookUpEdit1View.GetSelectedRows();
                return selectedRowHandles != null && selectedRowHandles.Length > 0;
            }
            catch { return false; }
        }

        private List<int> GetSelectedProjectIds()
        {
            List<int> selectedProjectIds = new List<int>();
            try
            {
                int[] selectedRowHandles = gridLookUpEdit1View.GetSelectedRows();
                if (selectedRowHandles != null && selectedRowHandles.Length > 0)
                {
                    foreach (int rowHandle in selectedRowHandles)
                    {
                        object value = gridLookUpEdit1View.GetRowCellValue(rowHandle, "PROJECT_ID");
                        if (value != null && value != DBNull.Value)
                        {
                            int projectId = this.UtilityMember.NumberSet.ToInteger(value.ToString());
                            if (projectId > 0 && !selectedProjectIds.Contains(projectId))
                            {
                                selectedProjectIds.Add(projectId);
                            }
                        }
                    }
                }
            }
            catch { }
            if (selectedProjectIds.Count == 0)
            {
                int fallbackProjectId = (glkpProject.EditValue != null && !string.IsNullOrEmpty(glkpProject.EditValue.ToString())) ?
                    this.UtilityMember.NumberSet.ToInteger(glkpProject.EditValue.ToString()) :
                    this.UtilityMember.NumberSet.ToInteger(this.AppSetting.UserProjectId);
                if (fallbackProjectId > 0)
                    selectedProjectIds.Add(fallbackProjectId);
            }
            return selectedProjectIds;
        }

        private void LoadProject()
        {
            try
            {
                // Store current multiple selections before reloading
                List<int> previouslySelectedProjectIds = GetSelectedProjectIds();
                
                using (MappingSystem mappingSystem = new MappingSystem())
                {
                    mappingSystem.ProjectClosedDate = deDateFrom.Text;
                    resultArgs = mappingSystem.FetchProjectsLookup();
                    glkpProject.Properties.DataSource = null;

                    Int32 projectId = (glkpProject.EditValue != null && !string.IsNullOrEmpty(glkpProject.EditValue.ToString())) ?
                         this.UtilityMember.NumberSet.ToInteger(glkpProject.EditValue.ToString()) : this.UtilityMember.NumberSet.ToInteger(this.AppSetting.UserProjectId);
                    if (resultArgs.Success && resultArgs.DataSource.Table.Rows.Count > 0)
                    {
                        this.UtilityMember.ComboSet.BindGridLookUpCombo(glkpProject, resultArgs.DataSource.Table, mappingSystem.AppSchema.Project.PROJECTColumn.ColumnName, mappingSystem.AppSchema.Project.PROJECT_IDColumn.ColumnName);
                        
                        // Restore multiple selections if they exist in the new data
                        try
                        {
                            _suspendEventsCount++;
                            gridLookUpEdit1View.ClearSelection();
                            int rowCount = gridLookUpEdit1View.DataRowCount;
                            
                            // If we had multiple selections before, try to restore them
                            if (previouslySelectedProjectIds.Count > 1)
                            {
                                bool anyRestored = false;
                                foreach (int selectedProjectId in previouslySelectedProjectIds)
                                {
                                    for (int i = 0; i < rowCount; i++)
                                    {
                                        object val = gridLookUpEdit1View.GetRowCellValue(i, "PROJECT_ID");
                                        if (val != null && this.UtilityMember.NumberSet.ToInteger(val.ToString()) == selectedProjectId)
                                        {
                                            gridLookUpEdit1View.SelectRow(i);
                                            anyRestored = true;
                                            break;
                                        }
                                    }
                                }
                                
                                // If we couldn't restore any of the previous selections, fall back to single selection
                                if (!anyRestored)
                                {
                                    for (int i = 0; i < rowCount; i++)
                                    {
                                        object val = gridLookUpEdit1View.GetRowCellValue(i, "PROJECT_ID");
                                        if (val != null && this.UtilityMember.NumberSet.ToInteger(val.ToString()) == projectId)
                                        {
                                            gridLookUpEdit1View.SelectRow(i);
                                            break;
                                        }
                                    }
                                }
                                
                                // For multiple selections, set EditValue to null to let CustomDisplayText handle the display
                                glkpProject.EditValue = null;
                                
                                // Refresh the display text to show "X projects selected"
                                glkpProject.RefreshEditValue();
                            }
                            else
                            {
                                // Single selection - restore the previous single selection or fall back to default
                                for (int i = 0; i < rowCount; i++)
                                {
                                    object val = gridLookUpEdit1View.GetRowCellValue(i, "PROJECT_ID");
                                    if (val != null && this.UtilityMember.NumberSet.ToInteger(val.ToString()) == projectId)
                                    {
                                        gridLookUpEdit1View.SelectRow(i);
                                        break;
                                    }
                                }
                                
                                // For single selection, set the EditValue
                                glkpProject.EditValue = (glkpProject.Properties.GetDisplayValueByKeyValue(projectId) != null ? projectId : glkpProject.Properties.GetKeyValue(0));
                            }
                        }
                        finally
                        {
                            _suspendEventsCount--;
                        }
                    }
                }
            }
            catch (Exception Ex)
            {
                MessageRender.ShowMessage(Ex.Message);
            }
            finally { }
        }

        // 14/08/2025, *Chinna , Purpose:
        // Fetch and bind bank accounts for selected projects (dedup by LEDGER_ID)
        private void FetchBankAccounts()
        {
            try
            {
                // If no project ticked, don't load bank accounts
                if (!HasAnyProjectSelected())
                {
                    glkpBankLedger.Properties.DataSource = null;
                    return;
                }

                //Dinesh 04/07/2025
                //this.ShowWaitDialog("Loading BRS");
                //Implemmantaion
                this.ShowWaitDialog(this.GetMessage(MessageCatalog.Common.GENERAL_LOADING_BRS));

                glkpBankLedger.Properties.DataSource = null;
                List<int> projectIds = GetSelectedProjectIds();
                using (BankSystem banksystem = new BankSystem())
                {
                    banksystem.BankClosedDate = this.UtilityMember.DateSet.ToDate(deDateFrom.Text);
                    DataTable merged = null;
                    HashSet<int> seenLedgerIds = new HashSet<int>();
                    foreach (int pid in projectIds)
                    {
                        string cacheKey = pid + "|" + deDateFrom.DateTime.ToString("yyyyMMdd");
                        DataTable dtBankAccount;
                        if (!_bankAccountsCache.TryGetValue(cacheKey, out dtBankAccount))
                        {
                            dtBankAccount = banksystem.FetchBankByProjectId(pid.ToString());
                            if (dtBankAccount != null)
                            {
                                _bankAccountsCache[cacheKey] = dtBankAccount.Copy();
                            }
                        }
                        if (dtBankAccount == null || dtBankAccount.Rows.Count == 0)
                            continue;
                        if (merged == null)
                            merged = dtBankAccount.Clone();
                        foreach (DataRow row in dtBankAccount.Rows)
                        {
                            int ledgerId = 0;
                            if (dtBankAccount.Columns.Contains("LEDGER_ID") && row["LEDGER_ID"] != DBNull.Value)
                                ledgerId = this.UtilityMember.NumberSet.ToInteger(row["LEDGER_ID"].ToString());
                            if (!seenLedgerIds.Contains(ledgerId))
                            {
                                merged.ImportRow(row);
                                seenLedgerIds.Add(ledgerId);
                            }
                        }
                    }
                    if (merged != null)
                    {
                        Int32 CashBankLedgerId = glkpBankLedger.EditValue != null ? this.UtilityMember.NumberSet.ToInteger(glkpBankLedger.EditValue.ToString()) : 0;
                        _suppressBankLedgerEditEvent = true;
                        try
                        {
                            this.UtilityMember.ComboSet.BindGridLookUpComboEmptyItem(glkpBankLedger, merged, "BANK", "LEDGER_ID", true, "- For all Bank Accounts -");
                            glkpBankLedger.EditValue = glkpBankLedger.Properties.GetDisplayValueByKeyValue(CashBankLedgerId) != null ? CashBankLedgerId : glkpBankLedger.Properties.GetKeyValue(0);
                        }
                        finally
                        {
                            _suppressBankLedgerEditEvent = false;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageRender.ShowMessage(ex.Message + "\n" + ex.StackTrace, true);
            }
            finally
            {
                this.CloseWaitDialog();
            }
        }

        // 14/08/2025, *Chinna , Purpose:
        // Fetch and bind BRS details combining multiple projects
        private void FetchBRSDetails()
        {
            try
            {
                // If no project ticked, keep grid empty and skip
                if (!HasAnyProjectSelected())
                {
                    gcBRS.DataSource = BRSDetails = new DataTable();
                    return;
                }

                //Dinesh 04/07/2025 
                //this.ShowWaitDialog("Loading BRS Balance");
                //Implemantaion
                this.ShowWaitDialog(this.GetMessage(MessageCatalog.Common.GENERAL_LOADING_BRS_BALANCE));

                using (VoucherTransactionSystem voucherSystem = new VoucherTransactionSystem())
                {
                    Int32 BankLedgerId = glkpBankLedger.EditValue != null ? this.AppSetting.NumberSet.ToInteger(glkpBankLedger.EditValue.ToString()) : 0;
                    gvColBankAccount.Visible = (BankLedgerId == 0);
                    List<int> projectIds = GetSelectedProjectIds();

                    DataTable merged = null;
                    foreach (int pid in projectIds)
                    {
                        string key = pid + "|" + BankLedgerId.ToString() + "|" + deDateFrom.DateTime.ToString("yyyyMMdd") + "|" + deDateTo.DateTime.ToString("yyyyMMdd");
                        DataTable tableFromCache;
                        if (!_brsDetailsCache.TryGetValue(key, out tableFromCache))
                        {
                            ResultArgs ra = (BankLedgerId > 0)
                                ? voucherSystem.FetchBRSDetails(pid, BankLedgerId, deDateFrom.DateTime, deDateTo.DateTime)
                                : voucherSystem.FetchBRSDetails(pid, deDateFrom.DateTime, deDateTo.DateTime);
                            if (ra != null && ra.Success && ra.DataSource.Table != null)
                            {
                                tableFromCache = ra.DataSource.Table.Copy();
                                _brsDetailsCache[key] = tableFromCache;
                                resultArgs = ra; // keep last non-null for message if needed
                            }
                        }
                        if (tableFromCache != null)
                        {
                            if (merged == null)
                                merged = tableFromCache.Clone();
                            // Faster than row-by-row ImportRow
                            merged.Merge(tableFromCache, true, System.Data.MissingSchemaAction.Add);
                        }
                    }
                    if (merged == null)
                        merged = new DataTable();
                    DataTable dtBRS = AddStausColumn(merged);
                    gcBRS.DataSource = BRSDetails = dtBRS;
                    GetBRSBankBalance();
                }
                SortStatus();
            }
            catch (Exception Ex)
            {
                MessageRender.ShowMessage(Ex.Message);
            }
            finally
            {
                this.CloseWaitDialog();
            }
        }

        private void SortStatus()
        {
            DataTable dtBRSSort = new DataTable();
            string SortColumn = string.Empty;
            if (BRSDetails != null && BRSDetails.Rows.Count > 0)
            {
                if (!chkUnReconciled.Checked && !chkReconciled.Checked && !chkUnCleared.Checked && !chkCleared.Checked)
                {
                    //chkUnReconciled.Checked = chkReconciled.Checked = chkUnCleared.Checked = chkCleared.Checked = true;
                    chkUnReconciled.Checked = chkUnCleared.Checked = true;
                }

                if (chkUnReconciled.Checked)
                    SortColumn += " STATUS='Unrealized'";
                if (chkReconciled.Checked)
                    SortColumn += " OR " + " STATUS='Realized'";
                if (chkUnCleared.Checked)
                    SortColumn += " OR " + " STATUS='Uncleared'";
                if (chkCleared.Checked)
                    SortColumn += " OR " + "STATUS='Cleared'";

                if (SortColumn.StartsWith(" OR"))
                    SortColumn = SortColumn.Substring(3, SortColumn.Length - 3);
                DataView dv = new DataView(BRSDetails);
                dv.RowFilter = SortColumn;
                dtBRSSort = dv.ToTable();
                gcBRS.DataSource = dtBRSSort;
                dv.RowFilter = "";
            }
        }

        private DataTable AddStausColumn(DataTable dtBRSDeatails)
        {
            if (!dtBRSDeatails.Columns.Contains(SELECT_COL))
                dtBRSDeatails.Columns.Add(SELECT_COL, typeof(Int32));
            foreach (DataRow drBRS in dtBRSDeatails.Rows)
            {
                if (drBRS["STATUS"].ToString() == "Realized" || drBRS["STATUS"].ToString() == "Cleared")
                {
                    drBRS[SELECT_COL] = (int)YesNo.Yes;
                }
                else
                {
                    drBRS[SELECT_COL] = (int)YesNo.No;
                }
            }
            return dtBRSDeatails;
        }

        private bool IsValidBRSRow()
        {
            bool IsBRSValid = true;
            try
            {
                int brsStatus = this.UtilityMember.NumberSet.ToInteger(gvBRS.GetFocusedRowCellValue(colFlag).ToString());
                string materializedOn = gvBRS.GetFocusedRowCellValue(gvColReconOn).ToString();
                DateTime voucherDate = this.UtilityMember.DateSet.ToDate(gvBRS.GetFocusedRowCellValue(gvColDate).ToString(), false);
                if (brsStatus > 0 && string.IsNullOrEmpty(materializedOn))
                    IsBRSValid = false;
                else if (brsStatus == 1 && !this.UtilityMember.DateSet.ValidateDate(voucherDate, this.UtilityMember.DateSet.ToDate(materializedOn, false)))
                {
                    IsBRSValid = false;
                }

                //else if (brsStatus == 0)
                //{
                //    IsBRSValid = true;
                //    gvBRS.SetFocusedRowCellValue(gvColReconOn, null);
                //}

            }
            catch (Exception ex)
            {
                MessageRender.ShowMessage(ex.ToString(), true);
            }
            return IsBRSValid;
        }

        #endregion

        private void ucBankReconciliationToolBar_PrintClicked(object sender, EventArgs e)
        {
            PrintGridViewDetails(gcBRS, this.GetMessage(MessageCatalog.Transaction.VocherTransaction.BANK_RECONCILIATION), PrintType.DT, gvBRS);
        }

        private void ucBankReconciliationToolBar_CloseClicked(object sender, EventArgs e)
        {
            try
            {
                if (_hasPendingGridEdits)
                {
                    if (this.ShowConfirmationMessage(this.GetMessage(MessageCatalog.Common.GENERATE_PROCESSING_TO) + "\nUnsaved BRS changes detected. Save before closing?", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                    {
                        btnSaveBRS_Click(sender, e);
                    }
                }
            }
            finally
            {
                this.Close();
            }
        }

        private void ucBankReconciliationToolBar_RefreshClicked(object sender, EventArgs e)
        {
            gvBRS.ActiveFilter.Clear();
            FetchBRSDetails();
        }

        private void gcBRS_ProcessGridKey(object sender, System.Windows.Forms.KeyEventArgs e)
        {
            if (e.KeyData == System.Windows.Forms.Keys.Enter || e.KeyData == System.Windows.Forms.Keys.Tab)
            {
                if (gvBRS.IsLastRow)
                {
                    btnSaveBRS.Select();
                    btnSaveBRS.Focus();
                }
            }
        }


        protected override bool ProcessCmdKey(ref Message msg, Keys KeyData)
        {
            if (KeyData == (Keys.F3))
            {
                //   deBRSDateFrom.Focus();

                frmDatePicker datePicker = new frmDatePicker(deDateTo.DateTime, DatePickerType.ChangePeriod);
                datePicker.ShowDialog();
                deDateTo.DateTime = AppSetting.VoucherDateTo;
            }
            return base.ProcessCmdKey(ref msg, KeyData);
        }

        private void rdetMaterializedOn_Leave(object sender, EventArgs e)
        {
            string materializedOn = gvBRS.GetFocusedRowCellValue(gvColReconOn).ToString();
            int brsStatus = this.UtilityMember.NumberSet.ToInteger(gvBRS.GetFocusedRowCellValue(colFlag).ToString());
            if (!string.IsNullOrEmpty(materializedOn) && brsStatus == 0)
            {
                gvBRS.SetFocusedRowCellValue(colFlag, 1);
                _hasPendingGridEdits = true;
                DataTable dtBRSSort = gcBRS.DataSource as DataTable;
                string status = gvBRS.GetFocusedRowCellValue(gvColStatus).ToString();
                if (status == BankReconciliation.Cleared.ToString())
                {
                    gvBRS.SetFocusedRowCellValue(gvColStatus, BankReconciliation.Uncleared.ToString());
                }
                else if (status == BankReconciliation.Realized.ToString())
                {
                    gvBRS.SetFocusedRowCellValue(gvColStatus, BankReconciliation.Unrealized.ToString());
                }
                else if (status == BankReconciliation.Uncleared.ToString())
                {
                    gvBRS.SetFocusedRowCellValue(gvColStatus, BankReconciliation.Cleared.ToString());
                    AddStausColumn(dtBRSSort);
                }
                else if (status == BankReconciliation.Unrealized.ToString())
                {
                    gvBRS.SetFocusedRowCellValue(gvColStatus, BankReconciliation.Realized.ToString());
                    AddStausColumn(dtBRSSort);
                }
                AddStausColumn(dtBRSSort);
                gvBRS.FocusedColumn = gvColReconOn;
                gvBRS.ShowEditor();
                // Ensure summary labels reflect changes immediately without manual refresh
                try
                {
                    _brsDetailsCache.Clear();
                    _brsMaterializedCache.Clear();
                    GetBRSBankBalance();
                }
                catch { }
            }

        }


        /// <summary>
        /// This method is used to get BRS Balnace (Bank Balance as per cash book and Bank Balance as per Bank statement)
        /// </summary>
        // 14/08/2025, *Chinna , Purpose:
        // Compute totals across selected projects (and bank if specified)
        private void GetBRSBankBalance()
        {
            try
            {
                string transmode = string.Empty;
                if (!HasAnyProjectSelected())
                {
                    lblStatementBankBalanceValue.Text = "0.0";
                    lblCashbookBankBalanceValue.Text = "0.0";
                    lblNotMatrilizedValue.Text = "0.0";
                    lclblBRSBalanceTitle.Text = "BRS Bank balance";
                    return;
                }
                List<int> projectIds = GetSelectedProjectIds();
                int bankAccountLedgerId = (glkpBankLedger.EditValue == null ? 0 : this.UtilityMember.NumberSet.ToInteger(glkpBankLedger.EditValue.ToString()));
                double Statementbankbalance = 0;
                double Cashbookbankbalance = 0;
                double NotMatrilzed = 0;
                double UnRealizedAmt = 0;
                double UnClearedAmt = 0;


                lblStatementBankBalanceValue.Text = "0.0";
                lblCashbookBankBalanceValue.Text = "0.0";
                lblNotMatrilizedValue.Text = "0.0";
                lclblBRSBalanceTitle.Text = "BRS Bank balance as on " + deDateTo.DateTime.ToShortDateString();

                //Get BRS for given DateTo
                DataTable combined = null;
                using (VoucherTransactionSystem voucherSystem = new VoucherTransactionSystem())
                {
                    foreach (int pid in projectIds)
                    {
                        string matKey = pid + "|" + bankAccountLedgerId.ToString() + "|" + deDateTo.DateTime.ToString("yyyyMMdd") + "|M";
                        DataTable matTable;
                        if (!_brsMaterializedCache.TryGetValue(matKey, out matTable))
                        {
                            ResultArgs ra;
                            if (bankAccountLedgerId > 0)
                                ra = voucherSystem.FetchBRSDetailsByMaterialized(pid, bankAccountLedgerId, deDateTo.DateTime);
                            else
                                ra = voucherSystem.FetchBRSDetailsByMaterialized(pid, deDateTo.DateTime);
                            if (ra != null && ra.Success && ra.DataSource.Table != null)
                            {
                                matTable = ra.DataSource.Table.Copy();
                                _brsMaterializedCache[matKey] = matTable;
                            }
                        }
                        if (matTable != null)
                        {
                            if (combined == null)
                                combined = matTable.Clone();
                            combined.Merge(matTable, true, System.Data.MissingSchemaAction.Add);
                        }
                    }
                }


                if (combined != null)
                {
                    DataTable dtBRSList = combined;

                    //GEt bank and fd closing balance and make as over all bank closing
                    using (BalanceSystem balanceSystem = new BalanceSystem())
                    {
                        foreach (int pid in projectIds)
                        {
                            BalanceProperty bankBalanceProperty;
                            if (bankAccountLedgerId == 0)
                            {
                                bankBalanceProperty = balanceSystem.GetBankBalance(pid, deDateTo.DateTime.ToShortDateString(), BalanceSystem.BalanceType.ClosingBalance);
                            }
                            else
                            {
                                bankBalanceProperty = balanceSystem.GetBankBalance(0, pid, bankAccountLedgerId, deDateTo.DateTime.ToShortDateString(), BalanceSystem.BalanceType.ClosingBalance);
                            }
                            if (bankAccountLedgerId > 0 && AppSetting.AllowMultiCurrency == 1)
                            {
                                Cashbookbankbalance += (bankBalanceProperty.TransFCMode == TransactionMode.CR.ToString() ? -bankBalanceProperty.AmountFC : bankBalanceProperty.AmountFC);
                            }
                            else
                            {
                                Cashbookbankbalance += (bankBalanceProperty.TransMode == TransactionMode.CR.ToString() ? -bankBalanceProperty.Amount : bankBalanceProperty.Amount);
                            }
                        }
                    }

                    //Get Unrealized and UnCleared Amount
                    //UnRealizedAmt = this.UtilityMember.NumberSet.ToDouble(dtBRSList.Compute("SUM(RECEIPT)", "STATUS='Unrealized'").ToString());
                    //UnClearedAmt = this.UtilityMember.NumberSet.ToDouble(dtBRSList.Compute("SUM(PAYMENT)", "STATUS='Uncleared'").ToString());
                    UnRealizedAmt = this.UtilityMember.NumberSet.ToDouble(dtBRSList.Compute("SUM(UnRealised)", "").ToString());
                    UnClearedAmt = this.UtilityMember.NumberSet.ToDouble(dtBRSList.Compute("SUM(UnCleared)", "").ToString());

                    Statementbankbalance = Cashbookbankbalance - UnRealizedAmt;
                    Statementbankbalance += UnClearedAmt;
                    NotMatrilzed = UnRealizedAmt + UnClearedAmt;

                    lblStatementBankBalanceValue.Text = this.UtilityMember.NumberSet.ToNumber(Math.Abs(Statementbankbalance)) + " " + (Statementbankbalance >= 0 ? TransactionMode.DR.ToString() : TransactionMode.CR.ToString()).ToString();
                    lblCashbookBankBalanceValue.Text = this.UtilityMember.NumberSet.ToNumber(Math.Abs(Cashbookbankbalance)) + " " + (Cashbookbankbalance >= 0 ? TransactionMode.DR.ToString() : TransactionMode.CR.ToString()).ToString();
                    lblNotMatrilizedValue.Text = this.UtilityMember.NumberSet.ToNumber(Math.Abs(NotMatrilzed)) + " " + (NotMatrilzed >= 0 ? TransactionMode.DR.ToString() : TransactionMode.CR.ToString()).ToString();
                }
            }
            catch (Exception err)
            {
                //Dinesh 04/07/2025
                //MessageRender.ShowMessage("Could not generate BRS Bank Balance " + err.Message);
                MessageRender.ShowMessage(this.GetMessage(MessageCatalog.Common.GENERATE_BRS_BANK) + err.Message);
            }
        }

        private void deBRSDateTo_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void glkpBankLedger_EditValueChanged(object sender, EventArgs e)
        {
            if (_suppressBankLedgerEditEvent || _suspendEventsCount > 0)
                return;
            FetchBRSDetails();
        }

        private void ucBankReconciliationToolBar_EditClicked(object sender, EventArgs e)
        {
            this.ShowCustomFilter(gcBRS);
        }

        private void deDateFrom_EditValueChanged(object sender, EventArgs e)
        {
            //On 12/07/2018, For closed Projects----
            _suspendEventsCount++;
            try
            {
                // Changing the period invalidates caches
                _bankAccountsCache.Clear();
                _brsDetailsCache.Clear();
                _brsMaterializedCache.Clear();
                LoadProject();
                FetchBankAccounts();
                FetchBRSDetails();
            }
            finally
            {
                _suspendEventsCount--;
            }
            //--------------------------------------
        }

        private void chkShowFilter_CheckedChanged(object sender, EventArgs e)
        {
            gvBRS.OptionsView.ShowAutoFilterRow = chkShowFilter.Checked;
            if (chkShowFilter.Checked)
            {
                this.SetFocusRowFilter(gvBRS, gvcolChequeNo);
            }
        }

        // 14/08/2025, *Chinna , Purpose:
        // Maintain popup sizing for usability
        private void glkpProject_QueryPopUp(object sender, System.ComponentModel.CancelEventArgs e)
        {
            //19/07/2021, To set Popup widow size
            if (sender != null)
            {
                GridLookUpEdit editor = (GridLookUpEdit)sender;
                SetGridLookPopupWindowSize(editor);
            }
        }

        private void chkSelectAll_CheckedChanged(object sender, EventArgs e)
        {
            if (chkSelectAll.Checked)
            {
                SelectAllUnMaterializedVouchers();
            }
        }

        private void SelectAllUnMaterializedVouchers()
        {
            bool isValid = false;
            try
            {
                if (gcBRS.DataSource != null)
                {

                    DataTable dtBRS = (gcBRS.DataSource as DataTable).DefaultView.ToTable();
                    Int32 projectId = glkpProject.EditValue != null ? this.AppSetting.NumberSet.ToInteger(glkpProject.EditValue.ToString()) : 0;
                    if (dtBRS.Rows.Count > 0)
                    {
                        dtBRS.DefaultView.RowFilter = "STATUS IN ('" + BankReconciliation.Uncleared.ToString() + "', '" + BankReconciliation.Unrealized.ToString() + "')";
                        isValid = (dtBRS.DefaultView.Count > 0);
                        if (!isValid)
                        {
                            //Dinesh 04/07/2025
                            //this.ShowMessageBox("Uncleared/Unrealized Vouchers are not available");
                            //Implemantaion
                            this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.GENERATE_UNCLERARED_UNREALIZD_VOUCHER));
                        }
                        dtBRS.DefaultView.RowFilter = string.Empty;

                        //Dinesh 04/07/2025
                        // if (isValid && this.ShowConfirmationMessage("Are you sure to set Voucher Date as Materialized Date for all the Uncleared/Unrealized Vouchers ? ",
                        //Implemantaion
                        if (isValid && this.ShowConfirmationMessage(this.GetMessage(MessageCatalog.Common.GENERATE_MATERIALIZED_DATE_UNCLEARED_VOUCHERS),
                                    MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                        {
                            //Dinesh 04/07/2025
                            //this.ShowWaitDialog("Processing");
                            //Implemantion
                            this.ShowWaitDialog(this.GetMessage(MessageCatalog.Common.GENERATE_PROCESSING_TO));
                            //CheckEdit chkStatus = (CheckEdit)sender;
                            int Row = 0;
                            foreach (DataRow drBRS in dtBRS.Rows)
                            {
                                string ThridPartyCode = gvBRS.GetRowCellValue(Row, gccolThirdPartyCode) != null ? gvBRS.GetRowCellValue(Row, gccolThirdPartyCode).ToString() : string.Empty;
                                string ThridPartyMode = gvBRS.GetRowCellValue(Row, colClientMode) != null ? gvBRS.GetRowCellValue(Row, colClientMode).ToString() : string.Empty;
                                string status = gvBRS.GetRowCellValue(Row, gvColStatus).ToString();
                                string voucherDate = gvBRS.GetRowCellValue(Row, gvColDate).ToString();
                                bool islockeddate = this.IsVoucherLockedForDate(projectId, UtilityMember.DateSet.ToDate(voucherDate, false), false, glkpProject.SelectedText);
                                if (!islockeddate)
                                {
                                    //  if (ThridPartyMode != "Online")
                                    // {
                                    if (status == BankReconciliation.Uncleared.ToString())
                                    {
                                        gvBRS.SetRowCellValue(Row, gvColStatus, BankReconciliation.Cleared.ToString());
                                        gvBRS.SetRowCellValue(Row, colFlag, (int)YesNo.Yes);
                                        gvBRS.SetRowCellValue(Row, gvColReconOn, voucherDate);
                                        gvBRS.FocusedColumn = gvColReconOn;
                                        gvBRS.ShowEditor();
                                    }
                                    else if (status == BankReconciliation.Unrealized.ToString())
                                    {
                                        gvBRS.SetRowCellValue(Row, gvColStatus, BankReconciliation.Realized.ToString());
                                        gvBRS.SetRowCellValue(Row, colFlag, (int)YesNo.Yes);
                                        gvBRS.SetRowCellValue(Row, gvColReconOn, voucherDate);
                                        gvBRS.FocusedColumn = gvColReconOn;
                                        gvBRS.ShowEditor();
                                    }
                                }

                                // }
                                Row++;
                            }
                        }
                        chkSelectAll.Checked = false;
                    }
                }
                this.CloseWaitDialog();
            }
            catch (Exception err)
            {
                this.CloseWaitDialog();
                this.ShowMessageBox(err.Message);
            }
            finally
            {
                this.CloseWaitDialog();
            }
        }

        private void btnSelectAllUnMaterializedVouchers_Click(object sender, EventArgs e)
        {
            SelectAllUnMaterializedVouchers();
        }

        private void gvBRS_RowCountChanged(object sender, EventArgs e)
        {
            lblRecordCount.Text = gvBRS.RowCount.ToString();
        }

        // Debounced reload to avoid multiple loads while user ticks several projects
        private void RequestReloadForProjectChange()
        {
            if (_selectionDebounceTimer == null)
            {
                _selectionDebounceTimer = new System.Windows.Forms.Timer();
                _selectionDebounceTimer.Interval = 300; // ms
                _selectionDebounceTimer.Tick += (s, e) =>
                {
                    _selectionDebounceTimer.Stop();
                    if (_suspendEventsCount > 0)
                        return;
                    _suspendEventsCount++;
                    try
                    {
                        FetchBankAccounts();
                        FetchBRSDetails();
                    }
                    finally
                    {
                        _suspendEventsCount--;
                    }
                };
            }
            _selectionDebounceTimer.Stop();
            _selectionDebounceTimer.Start();
        }

        //private void rdetMaterializedOn_EditValueChanged(object sender, EventArgs e)
        //{
        //    //if (this.AppSetting.IS_SDB_INM)
        //    //{
        //    //    string materializedOn = gvBRS.GetFocusedRowCellValue(gvColReconOn).ToString();
        //    //    string ThridPartyCode = gvBRS.GetFocusedRowCellValue(gccolThirdPartyCode) != null ? gvBRS.GetFocusedRowCellValue(gccolThirdPartyCode).ToString() : string.Empty;
        //    //    if (string.IsNullOrEmpty(ThridPartyCode))
        //    //    {
        //    //        MessageRender.ShowMessage("This Voucher is posted by Third Party application, can not be deleted or modified");
        //    //        gvBRS.SetFocusedRowCellValue(gvColReconOn, materializedOn);
        //    //        gvBRS.FocusedColumn = gvColReconOn;
        //    //        gvBRS.ShowEditor();
        //    //    }

        //    //}
        //}
    }
}

///// <summary>
//      /// Attach Filter Control properties
//      /// </summary>
//      /// <param name="sender"></param>
//      /// <param name="e"></param>
//      private void gvBRS_FilterEditorCreated(object sender, DevExpress.XtraGrid.Views.Base.FilterControlEventArgs e)
//      {
//          e.FilterControl.TabStop = true;
//          e.FilterControl.PopupMenuShowing += new DevExpress.XtraEditors.Filtering.PopupMenuShowingEventHandler(FilterControl_PopupMenuShowing);
//          e.FilterControl.ShowGroupCommandsIcon = true;
//          e.FilterControl.ShowOperandTypeIcon = true;
//          e.FilterControl.ShowToolTips = true;

//          //Load all visible columns into Fitler control, based on its properties
//          FilterColumnCollection filterColumns = new FilterColumnCollection();
//          foreach (GridColumn dc in gvBRS.Columns)
//          {
//              if (dc.Visible && dc.FieldName.ToUpper() != "SELECT")
//              {
//                  Type columndatatype = dc.ColumnType;
//                  RepositoryItem repitem = new RepositoryItemTextEdit();
//                  if (columndatatype == typeof(DateTime))
//                  {
//                      repitem = new RepositoryItemDateEdit();
//                  }

//                  CustomUnboundFilterColumn column = new CustomUnboundFilterColumn(dc.Caption, dc.FieldName, columndatatype, repitem, FilterColumnClauseClass.String);
//                  filterColumns.Add(column);
//              }
//          }

//          //e.FilterControl.KeyDown += new KeyEventHandler(FilterControl_KeyDown); 
//          //e.FilterControl

//          e.FilterControl.SetFilterColumnsCollection(filterColumns);                        
//      }
