using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;

using Bosco.Model.UIModel.Master;
using Bosco.Utility;
using Bosco.Model.UIModel;
using ACPP.Modules.User_Management;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraGrid.Views.Grid;

namespace ACPP.Modules.Master
{
    public partial class frmAuditLockTransAdd : frmFinanceBaseAdd
    {
        #region Event Decelaration
        public event EventHandler UpdateHeld;
        #endregion

        #region Variables
        ResultArgs resultArgs = null;
        SimpleEncrypt.SimpleEncDec objSimpleEncrypt = new SimpleEncrypt.SimpleEncDec();
        #endregion

        #region Constructor
        public frmAuditLockTransAdd()
        {
            InitializeComponent();
        }

        public frmAuditLockTransAdd(int LockTransId)
            : this()
        {
            this.LockTransId = LockTransId;
            //this.IsAddMode = isAddMode;, bool isAddMode
        }
        #endregion

        #region Properties
        private int LockTransId { get; set; }

        private string AssignUserIds = string.Empty; //Added By Dinesh 14-05-2026
        private bool IsAddMode = false;
        #endregion

        #region Events
        private void frmAuditLockTransAdd_Load(object sender, EventArgs e)
        {
            SetDefaults();
            FetchDefaults();
            AssignLockDetails();

            if (!this.LoginUser.IsFullRightsReservedUser)
            {
                ApplyRights();
            }
            else
            {
                glkpProject.Properties.Buttons[1].Visible = true;
                glkpLockType.Properties.Buttons[1].Visible = true;
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (ValidateAuditTransType())
                {
                    using (AuditLockTransSystem AuditTypeSystem = new AuditLockTransSystem())
                    {
                        AuditTypeSystem.LockTransId = LockTransId;
                        AuditTypeSystem.LockTypeId = this.UtilityMember.NumberSet.ToInteger(glkpLockType.EditValue.ToString());
                        AuditTypeSystem.ProjectId = this.UtilityMember.NumberSet.ToInteger(glkpProject.EditValue.ToString());
                        AuditTypeSystem.DateFrom = deDateFrom.DateTime;
                        AuditTypeSystem.DateTo = deDateTo.DateTime;
                        AuditTypeSystem.Password = objSimpleEncrypt.EncryptString(txtPassword.Text);
                        AuditTypeSystem.Reason = meReason.Text;
                        AuditTypeSystem.PasswordHint = objSimpleEncrypt.EncryptString(txtPasswordHint.Text);
                        resultArgs = AuditTypeSystem.SaveAuditTrans();

                        if (resultArgs != null && resultArgs.Success)
                        {
                            //Purpose : Add and Delete for User Detail   
                            int lockTransId = AuditTypeSystem.LockTransId;
                            if (LockTransId > 0)
                            {
                                AuditTypeSystem.DeleteAuditUsers(lockTransId);
                            }
                            int[] selectedRows = gridLookUpEdit2View.GetSelectedRows();
                            foreach (int rowHandle in selectedRows)
                            {
                                object value = gridLookUpEdit2View.GetRowCellValue(rowHandle, "USER_ID");
                                if (value != null)
                                {
                                    int userId = Convert.ToInt32(value);
                                    AuditTypeSystem.UpdateAuditUsers(lockTransId, userId);
                                }
                            }
                            this.ShowSuccessMessage(this.GetMessage(MessageCatalog.Common.COMMON_SAVED_CONFIRMATION));
                            if (UpdateHeld != null)
                            {
                                UpdateHeld(this, e);
                            }
                            if (LockTransId == 0)
                            {
                                ClearValues();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                this.ShowMessageBox(ex.Message + Environment.NewLine + ex.Source);
            }
            finally { }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void glkpProject_Leave(object sender, EventArgs e)
        {
            this.SetBorderColorForGridLookUpEdit(glkpProject);
        }

        private void deDateFrom_Leave(object sender, EventArgs e)
        {
            this.SetBorderColorForDateTimeEdit(deDateFrom);
        }

        private void deDateTo_Leave(object sender, EventArgs e)
        {
            this.SetBorderColorForDateTimeEdit(deDateTo);
        }

        private void glkpLockType_Leave(object sender, EventArgs e)
        {
            this.SetBorderColorForGridLookUpEdit(glkpLockType);
        }

        private void txtPassword_Leave(object sender, EventArgs e)
        {
            this.SetBorderColor(txtPassword);
        }

        private void txtPasswordHint_Leave(object sender, EventArgs e)
        {
            this.SetBorderColor(txtPasswordHint);
        }

        private void glkpProject_Properties_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            if (e.Button.Kind == DevExpress.XtraEditors.Controls.ButtonPredefines.Plus)
            {
                LoadProjectCombo();
            }
        }

        private void glkpLockType_Properties_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            if (e.Button.Kind == DevExpress.XtraEditors.Controls.ButtonPredefines.Plus)
            {
                LoadLockTypeCombo();
            }
        }
        #endregion

        #region User Rights
        private void ApplyRights()
        {
            bool createprojectrights = (CommonMethod.ApplyUserRights((int)Forms.CreateProject) != 0);
            glkpProject.Properties.Buttons[1].Visible = createprojectrights;

            bool createauditlocktyperights = (CommonMethod.ApplyUserRights((int)Forms.CreateLockType) != 0);
            glkpLockType.Properties.Buttons[1].Visible = createauditlocktyperights;
        }
        #endregion

        #region Methods

        private void ClearValues()
        {
            glkpProject.EditValue = glkpLockType.EditValue = 0;
            txtPassword.Text = meReason.Text =txtPasswordHint.Text= string.Empty;
            deDateFrom.Text = deDateTo.Text = string.Empty;
        }

        private bool ValidateAuditTransType()
        {
            bool isSucess = true;
            if (glkpProject.EditValue == null)
            {
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Master.Project.PROJECT_NAME_EMPTY));
                this.SetBorderColorForGridLookUpEdit(glkpProject);
                glkpProject.Focus();
                isSucess = false;
            }
            else if (string.IsNullOrEmpty(deDateFrom.Text))
            {
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Master.AuditLockType.DATE_FROM_EMPTY));
                this.SetBorderColorForDateTimeEdit(deDateFrom);
                deDateFrom.Focus();
                isSucess = false;
            }
            else if (string.IsNullOrEmpty(deDateTo.Text))
            {
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Master.AuditLockType.DATETOEMPTY));
                this.SetBorderColorForDateTimeEdit(deDateTo);
                deDateTo.Focus();
                isSucess = false;
            }
            else if (glkpLockType.EditValue == null)
            {
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Master.AuditLockType.AUDITLOCKTYPEEMPTY));
                this.SetBorderColorForGridLookUpEdit(glkpLockType);
                glkpLockType.Focus();
                isSucess = false;
            }
            else if (string.IsNullOrEmpty(txtPassword.Text))
            {
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Master.AuditLockType.PASSWORDEMPTY));
                this.SetBorderColor(txtPassword);
                txtPassword.Focus();
                isSucess = false;
            }
            else if (string.IsNullOrEmpty(txtPasswordHint.Text))
            {
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Master.AuditLockType.PASSWORD_HINT_EMPTY));
                this.SetBorderColor(txtPasswordHint);
                txtPasswordHint.Focus();
                isSucess = false;
            }
            else 
            {
                Int32 Existinglockid = IsDurationExists();
                if (Existinglockid > 0 && Existinglockid != LockTransId)
                {
                    this.ShowMessageBox(this.GetMessage(MessageCatalog.Master.AuditLockType.DIFFERENT_LOCKING_PERIOD) + " '" + glkpProject.Text + "' " + this.GetMessage(MessageCatalog.Master.AuditLockType.PROJECT));
                    glkpProject.Focus();
                    isSucess = false;
                }
            }
            //else if (IsDurationExists())
            //{
            //    this.ShowMessageBox(glkpProject.Text + " " + "with the value '" + deDateFrom.DateTime.ToShortDateString() + " and " + deDateTo.DateTime.ToShortDateString() + "' already exits.Try with another.");
            //    deDateFrom.Focus();
            //    isSucess = false;
            //}

            return isSucess;
        }

        private void AssignLockDetails()
        {
            try
            {
                if (this.LockTransId > 0)
                {
                    using (AuditLockTransSystem AuditSystem = new AuditLockTransSystem(LockTransId))
                    {
                        LockTransId = AuditSystem.LockTransId;
                        glkpProject.EditValue = AuditSystem.ProjectId;
                        glkpLockType.EditValue = AuditSystem.LockTypeId;
                        deDateFrom.DateTime = AuditSystem.DateFrom;
                        deDateTo.DateTime = AuditSystem.DateTo;
                        txtPassword.Text = objSimpleEncrypt.DecryptString(AuditSystem.Password);
                        meReason.Text = AuditSystem.Reason;
                        txtPasswordHint.Text = objSimpleEncrypt.DecryptString(AuditSystem.PasswordHint);
                    }
                }
            }
            catch (Exception ex)
            {
                this.ShowMessageBox(ex.Message + Environment.NewLine + ex.Source);
            }
            finally { }
        }

        private void FetchProjects()
        {
            using (ProjectSystem projectSystem = new ProjectSystem())
            {
                resultArgs = projectSystem.FetchProjects();
                if (resultArgs != null && resultArgs.Success && resultArgs.DataSource.Table != null && resultArgs.DataSource.Table.Rows.Count > 0)
                {
                    this.UtilityMember.ComboSet.BindGridLookUpCombo(glkpProject, resultArgs.DataSource.Table, projectSystem.AppSchema.Project.PROJECTColumn.ColumnName, projectSystem.AppSchema.Project.PROJECT_IDColumn.ColumnName);
                }
            }
        }

        private void FetchAuditType()
        {
            using (AuditLockTransSystem AuditTranSystem = new AuditLockTransSystem())
            {
                resultArgs = AuditTranSystem.FetchAllAuditType();
                if (resultArgs != null && resultArgs.Success && resultArgs.DataSource.Table != null && resultArgs.DataSource.Table.Rows.Count > 0)
                {
                    this.UtilityMember.ComboSet.BindGridLookUpCombo(glkpLockType, resultArgs.DataSource.Table, AuditTranSystem.AppSchema.AuditLockType.LOCK_TYPEColumn.ColumnName, AuditTranSystem.AppSchema.AuditLockType.LOCK_TYPE_IDColumn.ColumnName);
                }
            }
        }

        private void SetDefaults()
        {
            this.Text = LockTransId == 0 ? this.GetMessage(MessageCatalog.Master.AuditLockType.LOCK_VOUCHER_ADD_CAPTION) : this.GetMessage(MessageCatalog.Master.AuditLockType.LOCK_VOUCHER_EDIT_CAPTION);
            //On 19/05/2017, This feature is fixed only one entry per project (user should extend DateFrom and DateTo, if they needed), in this case
            //here DateFrom, DateTo maxvalue is fixed current finance year, so we can't extenet period
            //Removed maxvalue, user can set any period to set to lock vouchers.
            //deDateFrom.Properties.MinValue = this.UtilityMember.DateSet.ToDate(this.AppSetting.YearFrom, false);
            //deDateFrom.Properties.MaxValue = this.UtilityMember.DateSet.ToDate(this.AppSetting.YearTo, false);
            //deDateTo.Properties.MinValue = this.UtilityMember.DateSet.ToDate(this.AppSetting.YearFrom, false);
            //deDateTo.Properties.MaxValue = this.UtilityMember.DateSet.ToDate(this.AppSetting.YearTo, false);
            
            if (LockTransId == 0) //On 19/05/2017, by defualt set current finance year as defualt period
            {
                deDateFrom.EditValue = this.UtilityMember.DateSet.ToDate(this.AppSetting.YearFrom, false);
                deDateTo.EditValue = this.UtilityMember.DateSet.ToDate(this.AppSetting.YearTo, false);
            }
        }

        private void FetchDefaults()
        {
            FetchProjects();
            FetchAuditType();
            FetchUser();
            LoadAuditUserIds(LockTransId);
        }

        private Int32 IsDurationExists()
        {
            //bool isExists = false;
            Int32 Existinglockid = 0;
            using (AuditLockTransSystem AuditSystem = new AuditLockTransSystem())
            {
                AuditSystem.ProjectId = this.UtilityMember.NumberSet.ToInteger(glkpProject.EditValue.ToString());
                AuditSystem.DateFrom = deDateFrom.DateTime;
                AuditSystem.DateTo = deDateTo.DateTime;
                Existinglockid = AuditSystem.FetchAuditDetailIdByProjectDateRange();
            }
            return Existinglockid;
        }

        // To Load the last added Project in to the Project Combo

        public void LoadProjectCombo()
        {
            if (this.AppSetting.LockMasters == (int)YesNo.No)
            {
                frmProjectAdd frmprojectAdd = new frmProjectAdd();
                frmprojectAdd.ShowDialog();
                if (frmprojectAdd.ReturnDialog == System.Windows.Forms.DialogResult.OK)
                {
                    FetchProjects();
                    if (frmprojectAdd.ReturnValue != null && this.UtilityMember.NumberSet.ToInteger(frmprojectAdd.ReturnValue.ToString()) > 0)
                    {
                        glkpProject.EditValue = this.UtilityMember.NumberSet.ToInteger(frmprojectAdd.ReturnValue.ToString());
                    }
                }
            }
            else
            {
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.LOCK_MASTERS_MESSAGE));
            }
        }

        // To Load the last added Project in to the Project Combo

        public void LoadLockTypeCombo()
        {
            if (this.AppSetting.LockMasters == (int)YesNo.No)
            {
                frmAuditLockAdd frmAuditTypeAdd = new frmAuditLockAdd();
                frmAuditTypeAdd.ShowDialog();
                if (frmAuditTypeAdd.ReturnDialog == System.Windows.Forms.DialogResult.OK)
                {
                    FetchAuditType();
                    if (frmAuditTypeAdd.ReturnValue != null && this.UtilityMember.NumberSet.ToInteger(frmAuditTypeAdd.ReturnValue.ToString()) > 0)
                    {
                        glkpLockType.EditValue = this.UtilityMember.NumberSet.ToInteger(frmAuditTypeAdd.ReturnValue.ToString());
                    }
                }
            }
            else
            {
                this.ShowMessageBox(this.GetMessage(MessageCatalog.Common.LOCK_MASTERS_MESSAGE));
            }
        }

        private void glkpProject_EditValueChanged(object sender, EventArgs e)
        {
            //if (this.UtilityMember.NumberSet.ToInteger(glkpProject.EditValue.ToString()) > 0)
            //{
            //    LockTransId = this.UtilityMember.NumberSet.ToInteger(glkpProject.EditValue.ToString());
            //    SetDefaults();
            //    AssignLockDetails();
            //}
        }

        private void glkpProject_Click(object sender, EventArgs e)
        {
            
        }

        private void glkpUser_Properties_ButtonClick(object sender, ButtonPressedEventArgs e)
        {
            if (e.Button.Kind == DevExpress.XtraEditors.Controls.ButtonPredefines.Plus)
            {
                LoadUser();
            }
        }
        /// <summary>
        /// purpose of Add New User and Call User Add Form : Dinesh 14-05-2026 
        /// </summary>
        public void LoadUser()
        {
            if (this.AppSetting.LockMasters == (int)YesNo.No)
            {
                frmAddNewUser frmaddUser = new frmAddNewUser();
                frmaddUser.ShowDialog();
                if (frmaddUser.ReturnDialog == System.Windows.Forms.DialogResult.OK)
                {
                    FetchUser();
                }
            }
        }

        private void glkpUser_QueryPopUp(object sender, CancelEventArgs e)
        {
            GridLookUpEdit edit = sender as GridLookUpEdit;
            //edit.Properties.View.ClearSelection();
            ////Add Mode -> Auto Select All Users
            //if (IsAddMode)
            //{
            //    for (int i = 0; i < gridLookUpEdit2View.DataRowCount; i++)
            //    {
            //        int rowHandle = gridLookUpEdit2View.GetRowHandle(i);
            //        if (rowHandle != DevExpress.XtraGrid.GridControl.InvalidRowHandle)
            //        {
            //            edit.Properties.View.SelectRow(rowHandle);
            //        }
            //    }
            //    return;
            //}
            if (string.IsNullOrEmpty(AssignUserIds))
                return;
            string[] userIds = AssignUserIds.Split(',');
            foreach (string user in userIds)
            {
                for (int i = 0; i < gridLookUpEdit2View.DataRowCount; i++)
                {
                    object val = gridLookUpEdit2View.GetRowCellValue(i, colUserId);
                    if (val != null && val.ToString().Equals(user))
                    {
                        int rowHandle = gridLookUpEdit2View.GetRowHandle(i);
                        if (rowHandle != DevExpress.XtraGrid.GridControl.InvalidRowHandle)
                        {
                            edit.Properties.View.SelectRow(rowHandle);
                        }
                    }
                }
            }
        }

        private void glkpUser_CustomDisplayText(object sender, CustomDisplayTextEventArgs e)
        {
            int[] selectedrows = gridLookUpEdit2View.GetSelectedRows();
            if (selectedrows != null || selectedrows.Length > 0)
            {
                e.DisplayText = "(" + selectedrows.Length + ") user(s) are selected";
            }
            else
            {
                e.DisplayText = "Select Users";
            }
        }

        //Purpose : Fetch and Bind for User Details :Dinesh 14-05-2026
        public void FetchUser()
        {
            using (UserSystem userSystem = new UserSystem())
            {
                resultArgs = userSystem.FetchUserDetail();
                if (resultArgs != null && resultArgs.Success)
                {
                    this.UtilityMember.ComboSet.BindGridLookUpCombo(
                    glkpUser,
                     resultArgs.DataSource.Table,
                     userSystem.AppSchema.User.USER_NAMEColumn.ColumnName,
                     userSystem.AppSchema.User.USER_IDColumn.ColumnName);

                    this.BeginInvoke(new MethodInvoker(glkpUser.ShowPopup));
                    this.BeginInvoke(new MethodInvoker(glkpUser.ClosePopup));
                    this.BeginInvoke(new MethodInvoker(() =>
                    {
                        glkpProject.Focus();
                    }));
                }
            }
        }

        //Purpose - seleced User Only Load On Edit in Grid :Dinesh 14-05-2026
        public void LoadAuditUserIds(int lockTransId)
        {
            using (AuditLockTransSystem auditSystem = new AuditLockTransSystem())
            {
                resultArgs = auditSystem.FetchAuditUsers(lockTransId);
                AssignUserIds = string.Empty;
                if (resultArgs != null && resultArgs.Success && resultArgs.DataSource != null)
                {
                    DataTable dt = resultArgs.DataSource.Table;
                    if (dt != null && dt.Rows.Count > 0)
                    {
                        AssignUserIds = string.Join(",", dt.AsEnumerable().Select(r => r["USER_ID"].ToString()).ToArray());
                    }
                }
            }
        }


        //private bool IsDurationExists()
        //{
        //    bool isExists = false;
        //    using (AuditLockTransSystem AuditSystem = new AuditLockTransSystem())
        //    {
        //        AuditSystem.DateFrom = deDateFrom.DateTime;
        //        AuditSystem.DateTo = deDateTo.DateTime;
        //        AuditSystem.ProjectId = this.UtilityMember.NumberSet.ToInteger(glkpProject.EditValue.ToString());
        //        isExists = AuditSystem.IsDurationExists();
        //    }
        //    return isExists;
        //}
        #endregion
    }
}