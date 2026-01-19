# RDS Timesheet System - Setup & Usage Guide

## 📋 Overview
This is a secure, web-based timesheet management system for RDS with:
- ✅ User login system (Users + Admin)
- ✅ HTML file upload from OpenTimeClock
- ✅ Automatic Excel report generation
- ✅ Individual employee schedule support
- ✅ User management (admin only)

## 🚀 Quick Start

### Files Needed
Make sure all these files are in the same folder:
```
your-project-folder/
├── timesheet_app.py
├── employee_data.json
├── RDS_Logo.jpg
└── requirements.txt
```

### Installation

1. **Install Python** (if not already installed)
   - Download from https://www.python.org/downloads/
   - Make sure to check "Add Python to PATH" during installation

2. **Install dependencies**
   Open terminal/command prompt in your project folder and run:
   ```bash
   pip install -r requirements.txt
   ```

3. **Run the app**
   ```bash
   streamlit run timesheet_app.py
   ```

4. **Access the app**
   - The app will open automatically in your browser
   - If not, go to: http://localhost:8501

## 🔐 Login Credentials

### Default Admin Account
- **Username:** admin
- **Password:** admin123

⚠️ **IMPORTANT:** Change the admin password immediately after first login!

## 👥 User Management

### Admin Capabilities
- ✅ Generate reports
- ✅ Create new users
- ✅ Reset user passwords
- ✅ View all users

### Regular User Capabilities
- ✅ Generate reports
- ❌ Cannot create users
- ❌ Cannot reset passwords

### Creating New Users (Admin Only)
1. Log in as admin
2. Go to "👥 User Management"
3. Enter username and password
4. Check "Admin User" if needed
5. Click "Create User"

### Resetting Passwords (Admin Only)
1. Go to "👥 User Management"
2. Scroll to "Reset Password" section
3. Select user from dropdown
4. Enter new password
5. Click "Reset Password"

## 📊 Generating Reports

### Step 1: Export from OpenTimeClock
1. Log into OpenTimeClock
2. Go to **List View**
3. Select your **date range** (start and end dates)
4. Select **"All Users"** from the employee list
5. File → Save Page As → **"Webpage, Complete"**
6. Save the HTML file

### Step 2: Upload to App
1. Log into the RDS Timesheet System
2. Click "Browse files" under "Upload HTML Timesheet File"
3. Select the HTML file you just saved
4. The app will automatically parse the data

### Step 3: Generate Excel
1. Review the parsed data summary
2. Choose options (skip unknown employees if needed)
3. Click **"Generate Excel Report"**
4. Click **"📥 Download Excel Report"**

## 📁 Excel Report Contents

The generated Excel file contains two sheets:

### Sheet 1: Timesheet Detail
- Complete day-by-day breakdown for each employee
- Grey rows indicate missing entries (absent days)
- Summary section for each employee showing totals by category

### Sheet 2: Employee Summary
- **Normal Working Hours:** Regular work hours
- **Paid Leave:** Vacation, sick leave, etc.
- **Total Regular Hours:** Normal + Paid Leave
- **Required Hours:** Based on employee's schedule
- **Short Time:** Hours missing (if any)
- **OT:** Overtime hours
- **Other Hours:** Travel time, call-out, etc.

## 👤 Employee Schedules

The system automatically calculates required hours based on each employee's schedule:

### Standard Schedule (Most Employees)
- **Monday-Thursday:** 8.75 hours each
- **Friday:** 5.0 hours
- **Total:** 40 hours/week

### Special Schedules
- **Eunice Mphoswa:** Only Mon & Thu (6h each) = 12h/week
- **Veronica du Preez:** Only Mon-Thu (8.5h each) = 34h/week
- **Celeste Venter:** Mon-Thu (7.5h), Fri (6h) = 36h/week

## 🔧 Updating Employee Data

If you need to add/modify employees:

1. Edit `employee_data.json`
2. Format for each employee:
```json
"First_Last": {
  "first_name": "First",
  "last_name": "Last",
  "employee_number": "RDS00XXX",
  "area": "Workshop",
  "required_hours": {
    "Monday": 8.75,
    "Tuesday": 8.75,
    "Wednesday": 8.75,
    "Thursday": 8.75,
    "Friday": 5.0,
    "Saturday": 0.0,
    "Sunday": 0.0
  },
  "notes": ""
}
```

## 🌐 Deployment Options

### Option 1: Run Locally (Free)
- Run on your computer
- Access only from your computer
- No internet required

### Option 2: Streamlit Cloud (Free - Basic)
- Limited features
- Cannot use HTML upload (no BeautifulSoup)
- Not recommended for this app

### Option 3: Streamlit Cloud (Paid - $20/month)
- Access from anywhere
- Supports HTML upload
- Easy deployment

### Option 4: Self-Host
- Full control
- Run on your own server
- Requires technical knowledge

## 🆘 Troubleshooting

### "Module not found" error
```bash
pip install -r requirements.txt
```

### App won't start
- Make sure all files are in the same folder
- Check that Python is installed: `python --version`
- Try: `python -m streamlit run timesheet_app.py`

### Logo not showing
- Make sure `RDS_Logo.jpg` is in the same folder as `timesheet_app.py`

### "No employees in database"
- Make sure `employee_data.json` is in the same folder
- Check the JSON file format is correct

### Unknown employees warning
- Employees in the HTML file but not in employee_data.json
- You can choose to skip them or include with default schedule

## 📞 Support

For issues or questions, contact your IT administrator.

## 🔒 Security Notes

- User passwords are hashed (not stored as plain text)
- Change default admin password immediately
- Keep `users.json` secure
- Don't share login credentials

## ✅ Version Information

**Version:** 2.0
**Last Updated:** January 2026
**Features:**
- User authentication system
- HTML timesheet parsing
- Individual employee schedules
- User management for admins
