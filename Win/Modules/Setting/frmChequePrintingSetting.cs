using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;

using Bosco.Utility;
using Bosco.Model.Setting;
using Bosco.Model.UIModel;

namespace ACPP.Modules
{
    public partial class frmChequePrintingSetting : frmFinanceBase
    {
        private Int32 BankId = 0;
        private int ActualBankId = 0;
        private bool isLoadingSetting = false;
        private bool isSettingModified = false;

        public frmChequePrintingSetting()
        {
            InitializeComponent();
            //loadBankDetail();
            txtChequeWidth.TextChanged += ChequeSetting_TextChanged;
            txtChequeHeight.TextChanged += ChequeSetting_TextChanged;
            txtDateTop.TextChanged += ChequeSetting_TextChanged;
            txtDateLeft.TextChanged += ChequeSetting_TextChanged;
            txtDateDigitWidth.TextChanged += ChequeSetting_TextChanged;
            txtPartyNameTop.TextChanged += ChequeSetting_TextChanged;
            txtPartyNameLeft.TextChanged += ChequeSetting_TextChanged;
            txtAmountinWordsTop.TextChanged += ChequeSetting_TextChanged;
            txtAmountinWordsLeft.TextChanged += ChequeSetting_TextChanged;
            txtAmountTop.TextChanged += ChequeSetting_TextChanged;
            txtAmountLeft.TextChanged += ChequeSetting_TextChanged;

        }
        public frmChequePrintingSetting(Int32 bankid, string bankname, string branch):this()
        {
            lcgrp.Text = bankname + " (" + branch + ")";
            BankId = bankid;
            loadBankDetail();
            ActualBankId = BankId;
            loadChequePrintingSetting();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            btnSave_ClickExtracted();
        }


        private bool btnSave_ClickExtracted()
        {
            bool rtn = false;
            if (CheckValidSetting())
            {
                string bankFormat = "";

                switch (Convert.ToInt32(colCheque.EditValue))
                {
                    case 1:
                        bankFormat = "CUSTOM";
                        break;

                    case 2:
                        bankFormat = "INDIAN";
                        break;

                    case 3:
                        bankFormat = "SBI";
                        break;

                    case 4:
                        bankFormat = "CANARA";
                        break;

                    case 5:
                        bankFormat = "TMB";
                        break;
                }

                // When a predefined format is modified,
                // save it as CUSTOM.
                if (isSettingModified && bankFormat != "CUSTOM")
                {
                    bankFormat = "CUSTOM";
                }

                using (UserSystem chequesetting = new UserSystem())
                {
                    chequesetting.SaveChequeSetting(BankId, bankFormat, ChequePrinting.Width.ToString(), txtChequeWidth.Text.ToString());
                    chequesetting.SaveChequeSetting(BankId, bankFormat, ChequePrinting.Height.ToString(), txtChequeHeight.Text);
                    chequesetting.SaveChequeSetting(BankId, bankFormat, ChequePrinting.DateTop.ToString(), txtDateTop.Text);
                    chequesetting.SaveChequeSetting(BankId, bankFormat, ChequePrinting.DateLeft.ToString(), txtDateLeft.Text);
                    chequesetting.SaveChequeSetting(BankId, bankFormat, ChequePrinting.DateDigitWidth.ToString(), txtDateDigitWidth.Text);
                    chequesetting.SaveChequeSetting(BankId, bankFormat, ChequePrinting.PartyNameTop.ToString(), txtPartyNameTop.Text);
                    chequesetting.SaveChequeSetting(BankId, bankFormat, ChequePrinting.PartyNameLeft.ToString(), txtPartyNameLeft.Text);
                    chequesetting.SaveChequeSetting(BankId, bankFormat, ChequePrinting.AmountWordsTop.ToString(), txtAmountinWordsTop.Text);
                    chequesetting.SaveChequeSetting(BankId, bankFormat, ChequePrinting.AmountWordsLeft.ToString(), txtAmountinWordsLeft.Text);
                    chequesetting.SaveChequeSetting(BankId, bankFormat, ChequePrinting.AmountTop.ToString(), txtAmountTop.Text);
                    chequesetting.SaveChequeSetting(BankId, bankFormat, ChequePrinting.AmountLeft.ToString(), txtAmountLeft.Text);
                    rtn = true;
                    isSettingModified = false;

                    if (bankFormat == "CUSTOM")
                    {
                        isLoadingSetting = true;

                        try
                        {
                            colCheque.EditValue = 1;
                        }
                        finally
                        {
                            isLoadingSetting = false;
                        }
                    }
                    this.ShowSuccessMessage("Saved");
                }
            }
            return rtn;
        }

        private void loadChequePrintingSetting()
        {
            using (UserSystem chequesetting = new UserSystem())
            {
                ResultArgs resultArg = chequesetting.FetchChequeSetting(BankId);

                if (resultArg.Success && resultArg.DataSource.Table != null && resultArg.DataSource.Table.Rows.Count == 0)
                {
                    if (this.ShowConfirmationMessage("Cheque Setting is not available, Do you want to load default setting ?",
                        MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                    {
                        resultArg = chequesetting.FetchChequeSetting(0);
                    }
                }

                if (resultArg.Success && resultArg.DataSource.Table != null && resultArg.DataSource.Table.Rows.Count > 0)
                {
                    string bankFormat = resultArg.DataSource.Table.Rows[0][chequesetting.AppSchema.ChequePrinting.BANK_FORMATColumn.Caption].ToString();
                    int chequeEditValue = 1;

                    if (!string.IsNullOrEmpty(bankFormat))
                    {
                        switch (bankFormat.ToUpper())
                        {
                            case "INDIAN":
                                chequeEditValue = 2;
                                break;
                            case "SBI":
                                chequeEditValue = 3;
                                break;
                            case "CANARA":
                                chequeEditValue = 4;
                                break;
                            case "TMB":
                                chequeEditValue = 5;
                                break;
                        }
                    }

                    isLoadingSetting = true;
                    colCheque.EditValue = chequeEditValue;
                    isLoadingSetting = false;
                }

                ApplyChequeSetting(resultArg, chequesetting);
            }
        }

        private void ApplyChequeSetting(ResultArgs resultArg, UserSystem chequesetting)
        {
            if (resultArg.Success &&
                resultArg.DataSource.Table != null)
            {
                isLoadingSetting = true;

                try
                {
                    DataTable dtChequeSetting = resultArg.DataSource.Table;

                    foreach (DataRow dr in dtChequeSetting.Rows)
                    {
                        string settingName =
                            dr[chequesetting.AppSchema.ChequePrinting.SETTING_NAMEColumn.Caption]
                            .ToString();

                        string value =
                            dr[chequesetting.AppSchema.ChequePrinting.SETTING_VALUEColumn.Caption]
                            .ToString();

                        ChequePrinting chequePrintingSetting =
                            (ChequePrinting)UtilityMember.EnumSet.GetEnumItemType(
                                typeof(ChequePrinting),
                                settingName);

                        switch (chequePrintingSetting)
                        {
                            case ChequePrinting.Width:
                                txtChequeWidth.Text = value;
                                break;

                            case ChequePrinting.Height:
                                txtChequeHeight.Text = value;
                                break;

                            case ChequePrinting.DateTop:
                                txtDateTop.Text = value;
                                break;

                            case ChequePrinting.DateLeft:
                                txtDateLeft.Text = value;
                                break;

                            case ChequePrinting.DateDigitWidth:
                                txtDateDigitWidth.Text = value;
                                break;

                            case ChequePrinting.PartyNameTop:
                                txtPartyNameTop.Text = value;
                                break;

                            case ChequePrinting.PartyNameLeft:
                                txtPartyNameLeft.Text = value;
                                break;

                            case ChequePrinting.AmountWordsTop:
                                txtAmountinWordsTop.Text = value;
                                break;

                            case ChequePrinting.AmountWordsLeft:
                                txtAmountinWordsLeft.Text = value;
                                break;

                            case ChequePrinting.AmountTop:
                                txtAmountTop.Text = value;
                                break;

                            case ChequePrinting.AmountLeft:
                                txtAmountLeft.Text = value;
                                break;
                        }
                    }

                    // Freshly loaded values are not modified.
                    isSettingModified = false;
                }
                finally
                {
                    isLoadingSetting = false;
                }
            }
        }
        private bool CheckValidSetting()
        {
            bool rtn = false; //string.IsNullOrEmpty(txtDateDigitWidth.Text) ||
            bool nullvalue = (string.IsNullOrEmpty(txtChequeWidth.Text) || string.IsNullOrEmpty(txtChequeHeight.Text) ||
                string.IsNullOrEmpty(txtDateTop.Text) || string.IsNullOrEmpty(txtDateLeft.Text) || 
                string.IsNullOrEmpty(txtPartyNameTop.Text) || string.IsNullOrEmpty(txtPartyNameLeft.Text) ||
                string.IsNullOrEmpty(txtAmountinWordsTop.Text) || string.IsNullOrEmpty(txtAmountinWordsLeft.Text) ||
                string.IsNullOrEmpty(txtAmountTop.Text) || string.IsNullOrEmpty(txtAmountTop.Text));

            if (!nullvalue)
            {

                rtn = true;
            }
            else
            {
                MessageRender.ShowMessage("Fill all the values");
                txtChequeWidth.Select();
                txtChequeWidth.Focus();
                rtn = false;
            }

            return rtn;
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnPreview_Click(object sender, EventArgs e)
        {
            bool chequesettingavilable = false;

            //Check Bank setting available
            if (btnSave_ClickExtracted())
            {
                using (UserSystem chequesetting = new UserSystem())
                {
                    ResultArgs resultarg = chequesetting.FetchChequeSetting(BankId);
                    chequesettingavilable = (resultarg.Success && resultarg.DataSource.Table != null && resultarg.DataSource.Table.Rows.Count > 0);
                }

                if (chequesettingavilable)
                {
                    Bosco.Report.Base.IReport report = new Bosco.Report.Base.ReportEntry(this.MdiParent);
                    report.ShowChequePrint(0, BankId);
                }
                else
                {
                    MessageRender.ShowMessage("Cheque Printing setting is not available");
                }
            }
        }

        

        private void loadBankDetail() 
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("BANK_ID",typeof(int));
            dt.Columns.Add("BANK_NAME", typeof(string));

            dt.Rows.Add(1, "Custom");
            dt.Rows.Add(2, "Default");
            dt.Rows.Add(3, "SBI Bank");
            dt.Rows.Add(4, "Canara Bank");
            dt.Rows.Add(5, "TMB");

            colCheque.Properties.DataSource = dt;
            colCheque.Properties.DisplayMember = "BANK_NAME";
            colCheque.Properties.ValueMember = "BANK_ID";

            colCheque.Properties.PopulateViewColumns();
            colCheque.Properties.View.OptionsView.ShowColumnHeaders = false;
            colCheque.Properties.View.OptionsView.ShowIndicator = false;
        }

        private void colCheque_EditValueChanged(object sender, EventArgs e)
        {
            if (isLoadingSetting)
                return;

            if (colCheque.EditValue == null)
                return;

            int selectedId = Convert.ToInt32(colCheque.EditValue);
            string bankPrefix = string.Empty;

            switch (selectedId)
            {
                case 1:
                    bankPrefix = "CUSTOM";
                    break;
                case 2:
                    bankPrefix = "INDIAN";
                    break;

                case 3:
                    bankPrefix = "SBI";
                    break;

                case 4:
                    bankPrefix = "CANARA";
                    break;
                case 5:
                    bankPrefix = "TMB";
                    break;
            }

            if (!string.IsNullOrEmpty(bankPrefix))
            {
                using (UserSystem chequesetting = new UserSystem())
                {
                    ResultArgs resultArg = chequesetting.FetchChequeSettingforBankwise(bankPrefix);
                    if (resultArg.Success && resultArg.RowsAffected == 0)
                    {
                        loadChequePrintingSetting();
                        
                    }
                    else
                    {
                        ApplyChequeSetting(resultArg, chequesetting);
                      
                    }
                }
            }
            else
            {
                BankId = ActualBankId;
                loadChequePrintingSetting();
            }
        }


        private void ChequeSetting_TextChanged(object sender, EventArgs e)
        {
            if (!isLoadingSetting)
            {
                isSettingModified = true;
            }
        }

    }
}
