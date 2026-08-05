using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraBars;

namespace Bosco.Utility.UIControls
{
    public partial class ucAdditionalInfoMenu : UserControl
    {
        public event EventHandler DonorClicked;
        public event EventHandler DeleteVoucherClicked;
        public event EventHandler EntryMethodClicked;

        public ucAdditionalInfoMenu()
        {
            InitializeComponent();
        }

        public BarItemVisibility DiableDonor
        {
            get { return bbiDonorInfo.Visibility; }
            set { bbiDonorInfo.Visibility = value; }
        }

        public string DeleteCaption
        {
            set { bbiDeleteVocuher.Caption = value; }
        }

        public BarItemVisibility DisableEntryMethod
        {
            get { return bbiEntryMethod.Visibility; }
            set { bbiEntryMethod.Visibility = value; }
        }
        public BarItemVisibility DisableDeleteVocuher
        {
            get { return bbiDeleteVocuher.Visibility; }
            set { bbiDeleteVocuher.Visibility = value; }
        }

        public string EntryCaption
        {
            get { return bbiEntryMethod.Caption; }
            set { bbiEntryMethod.Caption = value; }
        }

        private void bbiDonorInfo_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (DonorClicked != null)
            {
                DonorClicked(this, e);
            }
        }

        private void bbiEntryMethod_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (EntryMethodClicked != null)
            {
                EntryMethodClicked(this, e);
            }
        }

        private void bbiDeleteVocuher_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (DeleteVoucherClicked != null)
            {
                DeleteVoucherClicked(this, e);
            }
        }
    }
}
