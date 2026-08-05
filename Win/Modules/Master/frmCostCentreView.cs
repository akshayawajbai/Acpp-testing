using System;
using System.Windows.Forms;

using Bosco.Utility;
using Bosco.Model.UIModel;

using AcMEService;

using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Data;
using System.Text.RegularExpressions;
using DevExpress.XtraSplashScreen;


namespace ACPP.Modules.Master
{
    public partial class frmCostCentreView : frmFinanceBase
    {
        #region Variable Decelartion
        ResultArgs resultArgs = null;
        private int RowIndex = 0;
        #endregion

        #region Constructors

        public frmCostCentreView()
        {
            InitializeComponent();
        }
        #endregion

        #region Properties
        private int CostCentreId = 0;
        private int costCenterId
        {
            get
            {

                RowIndex = gvCostCentre.FocusedRowHandle;
                CostCentreId = gvCostCentre.GetFocusedRowCellValue(colCostCentreID) != null ? this.UtilityMember.NumberSet.ToInteger(gvCostCentre.GetFocusedRowCellValue(colCostCentreID).ToString()) : 0;
                return CostCentreId;
            }
            set
            {
                CostCentreId = value;
            }
        }

        private bool IsSdbRmg
        {
            get
            {
                return this.AppSetting.IS_SDB_RMG;
            }
        }
        private sealed class ApiCostCentreItem
        {
            public int COST_CENTRE_ID { get; set; }
            public string COST_CENTRE_NAME { get; set; }
            public int COST_CENTRE_CATEGORY_ID { get; set; }
            public string COST_CENTRE_CATEGORY_NAME { get; set; }
            public decimal COST_CENTER_OB { get; set; }
            public string COST_CENTER_OB_MODE { get; set; }
            public string PROJECTS { get; set; }
            public string CLIENT_CODE { get; set; }
        }
        #endregion

        #region Events

        /// <summary>
        /// Load the cost center details
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        private void frmCostCentreView_Load(object sender, EventArgs e)
        {
            if (AppSetting.IS_SDB_RMG)
            {
                ucToolBarCostCentre.DisableDeleteButton = false;
                ucToolBarCostCentre.DisableEditButton = false;
                ApplyUserRights();
                ApplyButtonVisibility();
            }
            else
            {
                ucToolBarCostCentre.DisableDeleteButton = true;
                ucToolBarCostCentre.DisableEditButton = true;
                ApplyUserRights();
            }
        }

        /// <summary>
        /// Apply button visibility settings based on user type
        /// </summary>
        /// bharath
        private void ApplyButtonVisibility()
        {
            if (!IsSdbRmg)
            {
                ApplyUserRights();
            }
            else
            {
                // IS_SDB_RMG specific logic - show only Edit button (as Import) and hide Add/Delete
                ucToolBarCostCentre.VisibleAddButton = DevExpress.XtraBars.BarItemVisibility.Never;
                ucToolBarCostCentre.VisibleDeleteButton = DevExpress.XtraBars.BarItemVisibility.Never;
                ucToolBarCostCentre.VisibleEditButton = DevExpress.XtraBars.BarItemVisibility.Always;
                ucToolBarCostCentre.ChangeCaption = "&Import";

                // Ensure Edit button is enabled for SDBRMG users
                // Note: DisableEditButton = true means the button is ENABLED (confusing property name!)
                ucToolBarCostCentre.DisableEditButton = true;

                // Keep Print and other standard buttons visible (they are already set to Always in designer)
            }
        }

        private void frmCostCentreView_Activated(object sender, EventArgs e)
        {
            //Added by Carmel Raj
            SetVisibileShortCuts(false, true);
            FetchCostCentreDetails();
        }

        private void ApplyUserRights()
        {
            this.enumUserRights.Add(CostCentre.CreateCostCentre);
            this.enumUserRights.Add(CostCentre.EditCostCentre);
            this.enumUserRights.Add(CostCentre.DeleteCostCentre);
            this.enumUserRights.Add(CostCentre.PrintCostCentre);
            this.enumUserRights.Add(CostCentre.ViewCostCentre);
            //bharath
            //this.ApplyUserRights(ucToolBarCostCentre, enumUserRights, (int)Menus.CostCentre);

            // Apply user rights with IS_SDB_RMG consideration
            if (IsSdbRmg)
            {
                // For IS_SDB_RMG, you might want to apply different rights
                // or handle the rights application differently
                this.ApplyUserRights(ucToolBarCostCentre, enumUserRights, (int)Menus.CostCentre);
            }
            else
            {
                // Original rights application for other congregations
                this.ApplyUserRights(ucToolBarCostCentre, enumUserRights, (int)Menus.CostCentre);
            }
        }

        /// <summary>
        /// Fire When the add button is clicked.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        private void ucToolBarCostCentre_AddClicked(object sender, EventArgs e)
        {
            ShowCostCenterForm((int)AddNewRow.NewRow);
        }

        /// <summary>
        /// Edit the cost center form based on the cost center id.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        private void ucToolBarCostCentre_EditClicked(object sender, EventArgs e)
        {
            if (IsSdbRmg)
            {
                // For IS_SDB_RMG, handle Import logic instead of Edit
                HandleImportCostCentre();
            }
            else
            {
                // Original Edit logic for other congregations
                ShowCostCenterForm();
            }
        }

        /// <summary>
        /// Fires when grid is double clicked.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        private void gcCostCentre_DoubleClick(object sender, EventArgs e)
        {
            if (IsSdbRmg)
            {
              this.ShowMessageBox("Not able to edit");
                return;
            }
            else
            {
                // Original Edit logic for other congregations
                ShowCostCenterForm();
            }
        }

        private void HandleImportCostCentre()
        {
            try
            {
                if (!this.isEditable)
                {
                    this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.COMMON_USER_RIGHTS));
                    return;
                }

                ShowWait("Importing cost centres", "Downloading and syncing…");
                ImportCostCentresFromApi();
                LoadCostCentreGrid();
            }
            catch (Exception ex)
            {
                MessageRender.ShowMessage(ex.ToString(), true);
            }
            finally
            {
                CloseWait();
            }
        }

        private void ShowWait(string caption, string description)
        {
            try
            {
                SplashScreenManager.ShowForm(this, typeof(frmWait), true, true, false);
                if (SplashScreenManager.Default != null)
                {
                    SplashScreenManager.Default.SetWaitFormCaption(string.IsNullOrEmpty(caption) ? "Please wait" : caption);
                    SplashScreenManager.Default.SetWaitFormDescription(description ?? string.Empty);
                }
            }
            catch { /* ignore visual exceptions */ }
        }

        private void CloseWait()
        {
            try
            {
                if (SplashScreenManager.Default != null && SplashScreenManager.Default.IsSplashFormVisible)
                    SplashScreenManager.CloseForm(false);
            }
            catch { /* ignore visual exceptions */ }
        }

        private void LoadCostCentreGrid()
        {
            FetchCostCentreDetails();
        }

        private void ImportCostCentresFromApi()
        {
            List<string> errors = new List<string>(64);
            int touched = 0;

            string[] projSep = new string[] { "$#" };

            AcmeERPSSPService svc = new AcmeERPSSPService();
            string json = svc.APIGetCostCentres();

            if (string.IsNullOrWhiteSpace(json))
            {
                this.ShowMessageBox("Could not fetch Cost Centres from API. Please try again.");
                return;
            }

            Dictionary<string, object> root = null;
            try
            {
                var ser = new System.Web.Script.Serialization.JavaScriptSerializer();
                object obj = ser.DeserializeObject(json);
                root = obj as Dictionary<string, object>;
            }
            catch
            {
                this.ShowMessageBox("Invalid JSON received from API.");
                return;
            }

            if (root == null)
            {
                this.ShowMessageBox("Invalid JSON received from API.");
                return;
            }

            int status = 0;
            object statusObj;
            if (root.TryGetValue("status", out statusObj) && statusObj != null)
            {
                try { status = System.Convert.ToInt32(statusObj, System.Globalization.CultureInfo.InvariantCulture); }
                catch { status = 0; }
            }
            if (status != 200)
            {
                string apiMessage = null;
                object msgObj;
                if (root.TryGetValue("message", out msgObj) && msgObj != null)
                    apiMessage = msgObj as string ?? msgObj.ToString();

                this.ShowMessageBox("API returned non-success status: " + status + ". " + apiMessage);
                return;
            }

            object dataObj;
            if (!root.TryGetValue("data", out dataObj) || dataObj == null)
            {
                this.ShowMessageBox("API returned no rows to import.");
                return;
            }
            object[] data = dataObj as object[];
            if (data == null || data.Length == 0)
            {
                this.ShowMessageBox("API returned no rows to import.");
                return;
            }

            SetMissingCostCentresFromApi(data);

            Dictionary<string, int> projectCache = new Dictionary<string, int>(System.StringComparer.OrdinalIgnoreCase);

            using (ProjectSystem ps = new ProjectSystem())
            {
                for (int di = 0; di < data.Length; di++)
                {
                    Dictionary<string, object> rowDict = data[di] as Dictionary<string, object>;
                    if (rowDict == null)
                    {
                        errors.Add("Row is null.");
                        continue;
                    }

                    ApiCostCentreItem row = new ApiCostCentreItem();

                    object v;
                    if (rowDict.TryGetValue("COST_CENTRE_ID", out v) && v != null)
                    {
                        try { row.COST_CENTRE_ID = System.Convert.ToInt32(v, System.Globalization.CultureInfo.InvariantCulture); }
                        catch { row.COST_CENTRE_ID = 0; }
                    }

                    if (rowDict.TryGetValue("COST_CENTRE_NAME", out v) && v != null)
                        row.COST_CENTRE_NAME = v as string ?? v.ToString();

                    if (rowDict.TryGetValue("COST_CENTRE_CATEGORY_ID", out v) && v != null)
                    {
                        try { row.COST_CENTRE_CATEGORY_ID = System.Convert.ToInt32(v, System.Globalization.CultureInfo.InvariantCulture); }
                        catch { row.COST_CENTRE_CATEGORY_ID = 0; }
                    }

                    if (rowDict.TryGetValue("COST_CENTRE_CATEGORY_NAME", out v) && v != null)
                        row.COST_CENTRE_CATEGORY_NAME = v as string ?? v.ToString();

                    if (rowDict.TryGetValue("PROJECTS", out v) && v != null)
                        row.PROJECTS = v as string ?? v.ToString();

                    if (rowDict.TryGetValue("COST_CENTER_OB_MODE", out v) && v != null)
                        row.COST_CENTER_OB_MODE = v as string ?? v.ToString();

                    if (rowDict.TryGetValue("COST_CENTER_OB", out v) && v != null)
                    {
                        try
                        {
                            row.COST_CENTER_OB = System.Convert.ToDecimal(v, System.Globalization.CultureInfo.InvariantCulture);
                        }
                        catch
                        {
                            decimal dtmp;
                            string s = v as string;
                            if (!string.IsNullOrEmpty(s) &&
                                decimal.TryParse(s, System.Globalization.NumberStyles.Any, System.Globalization.CultureInfo.InvariantCulture, out dtmp))
                                row.COST_CENTER_OB = dtmp;
                            else
                                row.COST_CENTER_OB = 0M;
                        }
                    }
                    else
                    {
                        row.COST_CENTER_OB = 0M;
                    }

                    // === Validation ===
                    if (row.COST_CENTRE_ID <= 0)
                    {
                        errors.Add("Missing COST_CENTRE_ID.");
                        continue;
                    }
                    if (string.IsNullOrWhiteSpace(row.COST_CENTRE_NAME))
                    {
                        errors.Add(string.Format("COST_CENTRE_ID {0}: Missing COST_CENTRE_NAME.", row.COST_CENTRE_ID));
                        continue;
                    }
                    if (row.COST_CENTRE_CATEGORY_ID <= 0)
                    {
                        errors.Add(string.Format("COST_CENTRE_ID {0}: Missing COST_CENTRE_CATEGORY_ID.", row.COST_CENTRE_ID));
                        continue;
                    }
                    if (string.IsNullOrWhiteSpace(row.COST_CENTRE_CATEGORY_NAME))
                    {
                        errors.Add(string.Format("COST_CENTRE_ID {0}: Missing COST_CENTRE_CATEGORY_NAME.", row.COST_CENTRE_ID));
                        continue;
                    }
                    if (string.IsNullOrWhiteSpace(row.PROJECTS))
                    {
                        errors.Add(string.Format("COST_CENTRE_ID {0}: Missing PROJECTS.", row.COST_CENTRE_ID));
                        continue;
                    }

                    string ccName = row.COST_CENTRE_NAME.Trim();
                    string catName = row.COST_CENTRE_CATEGORY_NAME.Trim();
                    string obMode = string.IsNullOrWhiteSpace(row.COST_CENTER_OB_MODE)
                        ? "CR"
                        : row.COST_CENTER_OB_MODE.Trim().ToUpperInvariant();

                    string[] raw = row.PROJECTS.Split(projSep, StringSplitOptions.RemoveEmptyEntries);
                    HashSet<string> projectNames = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
                    for (int i = 0; i < raw.Length; i++)
                    {
                        string p = (raw[i] == null) ? null : raw[i].Trim();
                        if (!string.IsNullOrEmpty(p)) projectNames.Add(p);
                    }
                    if (projectNames.Count == 0)
                    {
                        errors.Add(string.Format("COST_CENTRE_ID {0}: PROJECTS field is empty.", row.COST_CENTRE_ID));
                        continue;
                    }

                    int catId = InsertCostCentreCategoryapi(catName, row.COST_CENTRE_CATEGORY_ID);


                    if (catId == 0)
                    {
                        errors.Add(string.Format(
                            "Failed to upsert Category '{0}' for COST_CENTRE_ID {1}.",
                            catName, row.COST_CENTRE_ID));
                        continue;
                    }

                    List<int> projectIds = new List<int>();
                    foreach (string projectName in projectNames)
                    {
                        int projectId;
                        if (!projectCache.TryGetValue(projectName, out projectId))
                        {
                            ResultArgs projRa = ps.FetchProjectIdByProjectName(projectName);
                            projectId = (projRa != null) ? projRa.DataSource.Sclar.ToInteger : 0;
                            projectCache[projectName] = projectId;
                        }

                        if (projectId == 0)
                        {
                            errors.Add(string.Format(
                                "Project '{0}' not found for COST_CENTRE_ID {1}.",
                                projectName, row.COST_CENTRE_ID));
                            continue;
                        }

                        projectIds.Add(projectId);
                    }

                    if (projectIds.Count == 0)
                    {
                        errors.Add(string.Format("COST_CENTRE_ID {0}: No valid projects resolved.", row.COST_CENTRE_ID));
                        continue;
                    }

                    double obAsDouble = decimal.ToDouble(row.COST_CENTER_OB);
                    int savedId = InsertCostCentreapi(
                        ccName,
                        projectIds,
                        catId,
                        obAsDouble,
                        obMode,
                        row.COST_CENTRE_ID);

                    if (savedId == 0)
                    {
                        errors.Add(string.Format(
                            "Failed to upsert Cost Centre '{0}' (COST_CENTRE_ID {1}).",
                            ccName, row.COST_CENTRE_ID));
                        continue;
                    }

                    touched++;
                }
            }

            if (errors.Count == 0)
            {
                ShowSuccessMessage("Import completed. Updated/Inserted: " + touched + ".");
            }
            else
            {
                int max = (errors.Count < 10) ? errors.Count : 10;
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                for (int idx = 0; idx < max; idx++)
                {
                    if (idx > 0) sb.Append("\n- ");
                    else sb.Append("- ");
                    sb.Append(errors[idx]);
                }

                ShowMessageBox(
                    "Updated/Inserted: " + touched + ".\n" +
                    errors.Count + " issue(s). First 10:\n" + sb.ToString()
                );
            }
        }


        private List<int> _missingApiCostCentreIds = new List<int>();
        private void SetMissingCostCentresFromApi(object[] apiData)
        {
            try
            {
                HashSet<int> apiIds = new HashSet<int>();
                if (apiData != null)
                {
                    for (int i = 0; i < apiData.Length; i++)
                    {
                        Dictionary<string, object> row = apiData[i] as Dictionary<string, object>;
                        if (row == null) continue;

                        int id = 0;
                        object idObj;
                        if (row.TryGetValue("COST_CENTRE_ID", out idObj) && idObj != null)
                        {
                            try { id = System.Convert.ToInt32(idObj, System.Globalization.CultureInfo.InvariantCulture); }
                            catch
                            {
                                int tmp;
                                string s = idObj as string;
                                if (!string.IsNullOrEmpty(s) && int.TryParse(s, out tmp)) id = tmp;
                            }
                        }
                        if (id > 0 && !apiIds.Contains(id)) apiIds.Add(id);
                    }
                }

                System.Data.DataTable dt = null;
                using (CostCentreSystem costCenterSystem = new CostCentreSystem())
                {
                    ResultArgs ra = costCenterSystem.FetchCostCentreIdMap();
                    if (ra != null && ra.Success && ra.DataSource != null && ra.DataSource.Table != null)
                    {
                        dt = ra.DataSource.Table;
                    }
                }

                if (dt == null || dt.Rows.Count == 0)
                {
                    _missingApiCostCentreIds = new List<int>();
                    return;
                }

                string apiCol = dt.Columns.Contains("ApiId") ? "ApiId" : "THIRD_PARTY_COST_CENTRE_ID";

                List<int> missing = new List<int>();
                foreach (System.Data.DataRow row in dt.Rows)
                {
                    int localId = 0;
                    int apiId = 0;

                    object localObj = row["LocalId"];
                    if (localObj != null && localObj != System.DBNull.Value)
                    {
                        int tmpLocal;
                        if (int.TryParse(localObj.ToString(), out tmpLocal)) localId = tmpLocal;
                    }

                    object apiObj = row[apiCol];
                    if (apiObj != null && apiObj != System.DBNull.Value)
                    {
                        int tmpApi;
                        if (int.TryParse(apiObj.ToString(), out tmpApi)) apiId = tmpApi;
                    }

                    if (apiId > 0 && !apiIds.Contains(apiId))
                    {
                        missing.Add(localId);
                    }
                }

                _missingApiCostCentreIds = missing;

                HashSet<int> usedCostCentreIds = new HashSet<int>();
                using (CostCentreSystem costCentreSystem = new CostCentreSystem())
                {
                    ResultArgs ra = costCentreSystem.FetchVoucherCostCentreUsage();
                    if (ra != null && ra.Success && ra.DataSource != null && ra.DataSource.Table != null)
                    {
                        foreach (System.Data.DataRow row in ra.DataSource.Table.Rows)
                        {
                            int id;
                            object val = row["LocalId"];
                            if (val != null && val != System.DBNull.Value && int.TryParse(val.ToString(), out id))
                                usedCostCentreIds.Add(id);
                        }
                    }
                }

                for (int i = 0; i < _missingApiCostCentreIds.Count; i++)
                {
                    int missingId = _missingApiCostCentreIds[i];
                    if (usedCostCentreIds.Contains(missingId))
                    {
                        AcMELog.WriteLog(string.Format("Cost Centre {0} is used in voucher transactions.", missingId));
                    }
                    else
                    {
                        AcMELog.WriteLog(string.Format("No voucher transaction found for Cost Centre {0}. Deleting...", missingId));
                        using (var costCentreSystem = new CostCentreSystem())
                        {
                            costCentreSystem.DeleteUnusedCostCentre(missingId);
                        }
                    }
                }

                AcMELog.WriteLog(string.Format(
                    "Missing API-mapped cost centres (count={0}).",
                    _missingApiCostCentreIds.Count));
            }
            catch (System.Exception ex)
            {
                AcMELog.WriteLog("SetMissingCostCentresFromApi error: " + ex.ToString());
                _missingApiCostCentreIds = new List<int>();
            }
        }

        /// <summary>
        /// Insert Cost centre Category api
        /// </summary>
        /// <param name="costCentreCategoryName"></param>
        /// <param name="apiCategoryId"></param>
        /// <returns></returns>
        public int InsertCostCentreCategoryapi(string costCentreCategoryName, int apiCategoryId)
        {
            int id = 0;
            try
            {
                if (string.IsNullOrWhiteSpace(costCentreCategoryName) || apiCategoryId <= 0)
                    return 0;

                using (CostCentreCategorySystem cat = new CostCentreCategorySystem())
                {
                    // 1) Lookup by API id (mapping check)
                    resultArgs = cat.IsCostCentreCategoryExistsByApiId(apiCategoryId);
                    if (resultArgs != null && resultArgs.Success)
                        id = resultArgs.DataSource.Sclar.ToInteger;

                    // Always set properties for insert/update
                    cat.CostCentreCategoryName = costCentreCategoryName;
                    cat.ApiCostCentreCategoryId = apiCategoryId;

                    if (id == 0)
                    {
                        // 2) INSERT new category (with API mapping)
                        resultArgs = cat.SaveCostCentreCatogoryDetailsapi();
                        if (resultArgs != null && resultArgs.Success)
                            id = this.UtilityMember.NumberSet.ToInteger(resultArgs.RowUniqueId.ToString());
                    }
                    else
                    {
                        // 3) UPDATE existing category (keep API mapping)
                        cat.CostCentreCategoryId = id;
                        resultArgs = cat.SaveCostCentreCatogoryDetailsapi();
                    }
                }
            }
            catch (Exception ex)
            {
                resultArgs.Message = "Exception in Insert/Update Cost Centre Category (API). " + ex.ToString();
                AcMELog.WriteLog(ex.Message);
            }
            return id;
        }

        /// Cost Centre Name api 
        /// <summary>
        /// newly
        /// </summary>
        /// <param name="CostCentre"></param>
        /// <param name="Project"></param>
        /// <param name="CostCategoryId"></param>
        /// <returns></returns>

        public int InsertCostCentreapi(string costCentreName, List<int> projectIds, int costCategoryId, double ccAmount, string ccTransMode, int apiCostCentreId)
        {
            int costCentreId = 0;

            try
            {
                if (string.IsNullOrWhiteSpace(costCentreName) || projectIds == null || projectIds.Count == 0 || apiCostCentreId <= 0)
                    return 0;

                // normalize like non-API flow
                //string ccName = NormalizeCostCentreName(costCentreName);

                using (var cc = new CostCentreSystem())
                {
                    // 1) Try find by API id
                    var exists = cc.IsCostCentreExistsByApiId(apiCostCentreId);
                    if (exists != null && exists.Success)
                        costCentreId = exists.DataSource.Sclar.ToInteger;

                    // 2) Assign common props
                    cc.ApiCostCentreId = apiCostCentreId;
                    cc.CostCentreName = costCentreName;
                    cc.CostCategoryId = costCategoryId;
                    cc.CCAmount = ccAmount;
                    cc.CCTransMode = string.IsNullOrWhiteSpace(ccTransMode) ? "CR" : ccTransMode.Trim().ToUpper();
                    cc.LedgerId = 0;

                    // 3) Insert or Update
                    if (costCentreId == 0)
                    {
                        var save = cc.IndividualSaveCostCentreApi();
                        if (save != null && save.Success)
                        {
                            var r = cc.IsCostCentreExistsByApiId(apiCostCentreId);
                            if (r != null && r.Success)
                                costCentreId = r.DataSource.Sclar.ToInteger;
                        }
                    }
                    else
                    {
                        cc.CostCentreId = costCentreId;
                        cc.UpdateCostCentreAllByApiId();
                    }

                    // 4) Handle project mappings - Simple approach without unmapping
                    if (costCentreId > 0)
                    {
                        cc.CostCentreId = costCentreId;

                        // Just update mappings for the provided projects
                        foreach (int projectId in projectIds)
                        {
                            cc.ProjectId = projectId;
                            cc.CCAmount = ccAmount;
                            cc.CCTransMode = ccTransMode;

                            var mapChk = cc.CheckCostCentreMapped();
                            if (mapChk != null && mapChk.Success && mapChk.DataSource.Sclar.ToInteger == 0)
                            {
                                // Not mapped - create new mapping
                                cc.MapProjectWithCostCentre();
                            }
                            else
                            {
                                // Already mapped - update the mapping
                                cc.UpdateMapProjectWithCostCentre();
                            }
                        }

                        // ensure category association
                        if (costCategoryId > 0)
                            cc.SaveCostcentreCostCategory(costCentreId);
                    }
                }
            }
            catch (Exception ex)
            {
                resultArgs.Message = "Exception in Insert/Update Cost Centre (API). " + ex.ToString();
                AcMELog.WriteLog(ex.Message);
            }

            return costCentreId;
        }

        /// <summary>
        /// Delete the cost center details based on the cost center id.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        private void ucToolBarCostCentre_DeleteClicked(object sender, EventArgs e)
        {
            try
            {

                if (gvCostCentre.RowCount != 0)
                {
                    if (costCenterId != 0)
                    {
                        using (CostCentreSystem costCentreSystem = new CostCentreSystem())
                        {
                            if (this.ShowConfirmationMessage(this.GetMessage(MessageCatalog.Common.COMMON_DELETE_CONFIRMATION), MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                            {
                                resultArgs = costCentreSystem.DeleteCostCentreDetails(costCenterId);
                                if (resultArgs.Success)
                                {
                                    this.ShowSuccessMessage(this.GetMessage(MessageCatalog.Common.COMMON_DELETED_CONFIRMATION));
                                    FetchCostCentreDetails();
                                }
                            }
                        }
                    }
                    else
                    {
                        this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.COMMON_NOSELECTION_FOR_DELETE));
                    }
                }
                else
                {
                    this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.COMMON_GRID_EMPTY));
                }
            }
            catch (Exception ex)
            {
                MessageRender.ShowMessage(ex.ToString(), true);
            }
            finally { }
        }

        /// <summary>
        /// Print the cost center details.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        private void ucToolBarCostCentre_PrintClicked(object sender, EventArgs e)
        {
            PrintGridViewDetails(gcCostCentre, this.GetMessage(MessageCatalog.Master.CostCentre.COST_CENTER_PRINT_CAPTION), PrintType.DT, gvCostCentre);
        }

        /// <summary>
        /// Enable or Disable Show Filter 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        private void chkShowFilter_CheckedChanged(object sender, EventArgs e)
        {
            gvCostCentre.OptionsView.ShowAutoFilterRow = chkShowFilter.Checked;
            if (chkShowFilter.Checked)
            {
                this.SetFocusRowFilter(gvCostCentre, colCostCentreName);
            }
        }

        /// <summary>
        /// Set record counts.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        private void gvCostCentre_RowCountChanged(object sender, EventArgs e)
        {
            lblRecordCount.Text = gvCostCentre.RowCount.ToString();
        }

        /// <summary>
        /// Refresh the grie after adding and editing the values. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected override void OnUpdateHeld(object sender, EventArgs e)
        {
            FetchCostCentreDetails();
            gvCostCentre.FocusedRowHandle = RowIndex;
        }

        /// <summary>
        /// Close the cost center form
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        private void ucToolBarCostCentre_CloseClicked(object sender, EventArgs e)
        {
            this.Close();
        }
        /// <summary>
        /// To refresh the Grid
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ucToolBarCostCentre_RefreshClicked(object sender, EventArgs e)
        {
            FetchCostCentreDetails();
        }
        #endregion

        #region Methods

        /// <summary>
        /// Load the cost center details
        /// </summary>

        private void FetchCostCentreDetails()
        {
            try
            {
                using (CostCentreSystem costCenterSystem = new CostCentreSystem())
                {
                    resultArgs = costCenterSystem.FetchCostCentreDetails();
                    if (resultArgs.Success)
                    {
                        gcCostCentre.DataSource = resultArgs.DataSource.Table;
                        gcCostCentre.RefreshDataSource();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageRender.ShowMessage(ex.ToString(), true);
            }
            finally { }
        }

        /// <summary>
        /// Show Cost center Form based on the id.
        /// </summary>
        /// <param name="costCenterId"></param>

        private void ShowCostCenterForm(int CostCenterId)
        {
            try
            {
                frmCostCentreAdd frmCostCenter = new frmCostCentreAdd(CostCenterId);
                frmCostCenter.UpdateHeld += new EventHandler(OnUpdateHeld);
                frmCostCenter.ShowDialog();
            }
            catch (Exception ex)
            {
                MessageRender.ShowMessage(ex.ToString(), true);
            }
            finally { }
            //this.CostCentreId = 0;
        }

        private void ShowCostCenterForm()
        {
            if (this.isEditable)
            {
                if (gvCostCentre.RowCount != 0)
                {
                    if (costCenterId != 0)
                    {
                        ShowCostCenterForm(costCenterId);
                    }
                    else
                    {
                        if (!chkShowFilter.Checked)
                        {
                            this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.COMMON_NOSELECTION_FOR_EDIT));
                        }
                    }
                }
                else
                {
                    this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.COMMON_GRID_EMPTY));
                }
            }
            else
            {
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.COMMON_USER_RIGHTS));
            }
        }
        #endregion

        private void frmCostCentreView_ShowFilterClicked(object sender, EventArgs e)
        {
            chkShowFilter.Checked = (chkShowFilter.Checked) ? false : true;
        }

        private void frmCostCentreView_EnterClicked(object sender, EventArgs e)
        {
            ShowCostCenterForm();
        }
    }
}