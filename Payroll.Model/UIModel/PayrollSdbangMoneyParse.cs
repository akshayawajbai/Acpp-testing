using System;
using System.Globalization;
using Bosco.Utility.ConfigSetting;

namespace Payroll.Model.UIModel
{
    /// <summary>
    /// SDBANG only: parse money using Global Setting decimal/grouping (same data as frmSettings).
    /// When <see cref="Enabled"/> is false, callers keep legacy NumberSet / double.Parse / raw strings.
    /// Used from clsprCompBuild, clsPayrollStaff, clsPrComponent, frmStaffDetails (06/04/2026, chinna — comp pipeline + staff).
    /// </summary>
    public static class PayrollSdbangMoneyParse
    {
        public static bool Enabled
        {
            get
            {
                try
                {
                    return SettingProperty.Current != null && SettingProperty.Current.IS_SDBANG;
                }
                catch
                {
                    return false;
                }
            }
        }

        /// <summary>
        /// Start from the interactive culture (so "1,00" is one when Windows is pt-AO, etc.),
        /// then override separators from Global Settings when present. Using Invariant as the base
        /// leaves ',' as thousands-only and turns "1,00" into 100 when settings are empty — wrong for payroll.
        /// </summary>
        private static NumberFormatInfo BuildNfiFromSettings()
        {
            var nfi = (NumberFormatInfo)CultureInfo.CurrentCulture.NumberFormat.Clone();
            try
            {
                var sp = SettingProperty.Current;
                if (!string.IsNullOrEmpty(sp.DecimalSeparator))
                {
                    nfi.NumberDecimalSeparator = sp.DecimalSeparator;
                    nfi.CurrencyDecimalSeparator = sp.DecimalSeparator;
                }
                if (!string.IsNullOrEmpty(sp.GroupingSeparator))
                {
                    nfi.NumberGroupSeparator = sp.GroupingSeparator;
                    nfi.CurrencyGroupSeparator = sp.GroupingSeparator;
                }
            }
            catch
            {
            }
            return nfi;
        }

        /// <summary>False for staff names, codes with letters, etc. — avoids SDBANG grid treating text as 0.</summary>
        public static bool LooksLikeNumericAmountString(string value)
        {
            if (string.IsNullOrWhiteSpace(value))
                return false;
            string t = value.Trim();
            for (int i = 0; i < t.Length; i++)
            {
                if (char.IsLetter(t[i]))
                    return false;
            }
            for (int i = 0; i < t.Length; i++)
            {
                if (char.IsDigit(t[i]))
                    return true;
            }
            return false;
        }

        public static decimal ParseDecimal(string value)
        {
            if (string.IsNullOrWhiteSpace(value))
                return 0m;
            string t = value.Trim();
            decimal d;
            // Strings WITHOUT a comma are usually DB/invariant ("1.00", "100.50"): parse invariant first.
            // With EU settings, "1.00" as dot=group becomes 100 — wrong for PAY/CompValue from MySQL.
            // Strings WITH a comma are user/EU display ("1,00", "10.000,50"): settings NFI first.
            bool hasComma = t.IndexOf(',') >= 0;
            if (!hasComma)
            {
                if (decimal.TryParse(t, NumberStyles.Number, CultureInfo.InvariantCulture, out d))
                    return d;
                if (decimal.TryParse(t, NumberStyles.Number, BuildNfiFromSettings(), out d))
                    return d;
            }
            else
            {
                if (decimal.TryParse(t, NumberStyles.Number, BuildNfiFromSettings(), out d))
                    return d;
                if (decimal.TryParse(t, NumberStyles.Any, CultureInfo.CurrentCulture, out d))
                    return d;
            }
            if (decimal.TryParse(t, NumberStyles.Any, CultureInfo.CurrentCulture, out d))
                return d;
            if (decimal.TryParse(t, NumberStyles.Number, CultureInfo.InvariantCulture, out d))
                return d;
            return 0m;
        }

        public static double ParseDouble(string value)
        {
            return (double)ParseDecimal(value);
        }

        /// <summary>STFSERVICE.PAY (varchar): invariant F2 after parse.</summary>
        public static string PayVarcharForDb(string pay)
        {
            if (string.IsNullOrWhiteSpace(pay))
                return pay;
            return ParseDecimal(pay).ToString("F2", CultureInfo.InvariantCulture);
        }

        /// <summary>Grid/labels: N2 using global setting separators (call only when <see cref="Enabled"/>).</summary>
        public static string FormatMoneyForDisplay(decimal value)
        {
            return value.ToString("N2", BuildNfiFromSettings());
        }
    }
}
