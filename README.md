# RDS Timesheet System v4.6

Professional timesheet processing system for RDS with MEIBC compliance, public holiday overtime reclassification, and comprehensive reporting.

## 🌟 Features

### Core Functionality
- **HTML Timesheet Parsing** - Import OpenTimeClock HTML exports
- **Employee Database** - 33 employees with MEIBC member identification
- **Excel Report Generation** - Detail and Summary sheets with comprehensive overtime tracking
- **Authentication System** - Secure login with role-based access
- **Public Holiday Support** - Automatic overtime reclassification for public holidays
- **Standby Days Tracking** - Track standby days per employee per period

### Overtime Processing
- **Regular Days** - OT 1.5, Call Out 1.5, Travel Overtime
- **Sundays** - OT 2.0, Call Out 2.0 with MEIBC minimums
- **Public Holidays** - Multi-tier reclassification (OT 1.0, 1.3, 2.0, 2.5)
- **MEIBC Compliance** - Separate rules for MEIBC members vs non-MEIBC employees
- **Dual Credit System** - MEIBC Saturday public holiday dual credit calculation

### Reporting Features
- **Detail Sheet** - Complete audit trail with original job types
- **Summary Sheet** - Payroll-ready totals with reclassified overtime
- **Required Hours** - Per-employee schedule tracking
- **Short Time** - Automatic calculation of hours shortfall
- **Standby Days** - Dedicated column for standby tracking

## 📋 Requirements

```
streamlit
pandas
openpyxl
beautifulsoup4
lxml
```

## 🚀 Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/rds-timesheet-system.git
cd rds-timesheet-system
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Ensure all files are present:
- `timesheet_app.py` - Main application
- `employee_data.json` - Employee database
- `users.json` - Authentication data
- `requirements.txt` - Python dependencies
- `RDS_Logo.jpg` - Company logo

## 💻 Usage

### Starting the Application

```bash
streamlit run timesheet_app.py
```

The app will open in your default browser at `http://localhost:8501`

### Login

**Default credentials:**
- Username: `admin`
- Password: `admin123`

⚠️ **Security Note:** Change the default password in `users.json` before deployment!

### Workflow

1. **Login** - Authenticate with credentials
2. **Upload HTML** - Upload OpenTimeClock HTML export file
3. **Select Public Holidays** - Choose dates that are public holidays
4. **Enter Standby Days** - Input standby days for each employee (optional)
5. **Set Options** - Choose report preferences
6. **Generate Report** - Download Excel file with Detail and Summary sheets

## 📊 Overtime Rules

### Regular Weekdays (Mon-Fri, not PH)
- **All employees:** OT 1.5, Call Out 1.5, Travel Overtime (as clocked)
- **No minimums or rounding**

### Regular Saturdays (not PH)
- **All employees:** OT 1.5, Call Out 1.5, Travel Overtime (as clocked)
- **No minimums or rounding**

### Regular Sundays (not PH)
- **MEIBC:** OT 2.0 minimum 8h, Call Out 2.0 minimum 4h
- **Non-MEIBC:** OT 2.0 and Call Out 2.0 → < 4h rounds to 4h

### Weekday Public Holidays (Mon-Fri)
- **MEIBC:** OT 1.5/2.0 → First 8h: OT 1.3, Above 8h: OT 2.5
- **Non-MEIBC:** OT 1.5/2.0 → First 8h: OT 1.0, Above 8h: OT 2.0
- **Call Out 2.0:** < 4h → 4h (both MEIBC and Non-MEIBC)

### Saturday Public Holidays
- **MEIBC (Dual Credit):**
  - 8h OT 1.0 (minimum guarantee)
  - + Actual hours worked (≤8h) at OT 1.3
  - + Hours above 8h at OT 2.5
  - Example: 5h worked = 8h OT 1.0 + 5h OT 1.3 = 13h paid!
- **Non-MEIBC:** Minimum 4h at OT 2.0

### Sunday Public Holidays
- **MEIBC:** Minimum 8h OT 2.0, Above 8h → OT 2.5
- **Non-MEIBC:** Minimum 4h at OT 2.0

## 👥 Employee Management

### MEIBC Members (21 employees)
The following employees are MEIBC members with special overtime rules:
- Andre Venter
- Bradley Botha
- Christopher Engelbrecht
- Enid Milton
- Gerrit Hendricks
- Jacques Nel
- James Visagie
- Japie Meyer
- Juandre Landman
- Logan Scheepers
- Lulu Taljaard
- Luther Miller
- Michael Scheepers
- Pieter Henning
- Riaan van der Walt
- Rowan Adams
- Sven van Deventer
- Tertius Marais
- Wesley Swart
- Willem Cloete
- Wynand Jacobs

### Modifying Employee Data

Edit `employee_data.json` to:
- Add/remove employees
- Update MEIBC member status
- Modify required hours schedules
- Update employee areas

Example employee entry:
```json
"John_Doe": {
  "first_name": "John",
  "last_name": "Doe",
  "employee_number": "RDS00099",
  "area": "Field",
  "is_meibc_member": true,
  "required_hours": {
    "Monday": 8.5,
    "Tuesday": 8.5,
    "Wednesday": 8.5,
    "Thursday": 8.5,
    "Friday": 6.0,
    "Saturday": 0.0,
    "Sunday": 0.0
  },
  "notes": ""
}
```

## 📁 Output Files

### Detail Sheet
- Employee-level detail with original job types
- Serves as audit trail
- Shows all clock entries as recorded

### Summary Sheet
Contains the following columns:
- Employee Name
- Employee #
- Normal
- Paid Leave
- Unpaid Leave
- Total Regular
- Required Hours
- Short Time
- Standby Days
- Call Out 2.0
- Overtime 2.0
- Overtime 1.0 *(created by PH reclassification)*
- Overtime 1.3 *(created by PH reclassification)*
- Overtime 1.5
- Overtime 2.5 *(created by PH reclassification)*
- Travel Overtime

## 🔧 Configuration

### Authentication
Edit `users.json` to add/modify users:
```json
{
  "username": {
    "password": "password123",
    "role": "admin"
  }
}
```

### Logo
Replace `RDS_Logo.jpg` with your company logo (recommended size: 200x60px)

## 📝 Important Notes

### Rounding Rules
- **Regular weekdays/Saturdays:** NO rounding (all as clocked)
- **Sundays:** MEIBC minimums apply (OT 2.0: 8h, Call Out 2.0: 4h)
- **Public holidays:** Specific reclassification rules apply

### Public Holiday Reclassification
- **Only OT 1.5 and OT 2.0** are reclassified on public holidays
- **Call-Outs and Travel Overtime** are NEVER reclassified (always as clocked)
- **Detail Sheet** shows original job types (audit trail)
- **Summary Sheet** shows reclassified rates (payroll)

### Travel Overtime
- **NO special rules** ever
- **NO minimums** ever
- **NO reclassification** on public holidays
- Always paid as clocked

## 🐛 Troubleshooting

### Common Issues

**Issue:** File upload fails
- **Solution:** Ensure HTML file is from OpenTimeClock export

**Issue:** Wrong overtime amounts
- **Solution:** Verify employee MEIBC status in employee_data.json
- **Solution:** Check if dates are correctly marked as public holidays

**Issue:** Missing columns in Summary sheet
- **Solution:** Update to latest version (v4.6) - all overtime columns now always appear

## 📜 Version History

### v4.6 (Current - April 2026)
- ✅ Fixed rounding (NO rounding on regular weekdays/Saturdays)
- ✅ Added standby days tracking
- ✅ Fixed Summary sheet column generation
- ✅ Verified all public holiday formulas
- ✅ Confirmed Enid Milton MEIBC status

### v4.5
- Public holiday overtime reclassification
- MEIBC Sunday minimums corrected

### v4.2-4.4
- Employee database with MEIBC identification
- Required Hours and Short Time columns
- Public holiday selection interface

### v4.0-4.1
- Initial release with authentication
- HTML parsing and Excel reporting

## 🤝 Contributing

Contributions are welcome! Please ensure:
1. All overtime formulas are tested
2. MEIBC compliance is maintained
3. Documentation is updated

## 📄 License

Proprietary - RDS Internal Use Only

## 👨‍💻 Support

For issues or questions, contact the RDS IT department.

---

**Version:** 4.6  
**Last Updated:** April 18, 2026  
**Status:** ✅ Production Ready
