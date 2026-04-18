# 📋 Standby Days Feature - User Guide

## ✅ What's New?

After uploading the HTML timesheet and selecting public holidays, you can now **enter standby days** for any employees who had standby shifts during the period!

---

## 📊 How It Works

### Step-by-Step Workflow:

1. **Upload HTML file** ✅
2. **Select public holidays** ✅
3. **⭐ NEW: Enter standby days** 
   - Expandable section appears
   - Shows all employees from uploaded timesheet
   - Enter number of standby days for each employee
   - Leave blank (or 0) for employees with no standby
4. **Set report options** ✅
5. **Generate Excel report** ✅

---

## 🎯 User Interface

### Standby Days Input Section

**What you see:**

```
3. Standby Days
Enter standby days for employees (optional):

📋 Click to enter standby days for employees [Expand]

[When expanded:]
Enter the number of standby days for each employee who had standby shifts.
Leave blank (or 0) for employees with no standby days.

Abdul Isaacs          [ 2.0 ]    Celeste Hendricks  [ 1.5 ]    Elvis Mzukwa      [ 3.0 ]
Enid Milton           [ 0.0 ]    Gareth Jacobs      [ 0.0 ]    Igshaan Brown     [ 0.0 ]
...

✅ Standby days entered for 3 employee(s): Abdul Isaacs (2.0d), Celeste Hendricks (1.5d), Elvis Mzukwa (3.0d)
```

**If no standby days entered:**
```
ℹ️ No standby days entered
```

---

## 📊 Summary Sheet - New Column

### Standby Days Column Added

The Summary sheet now includes a **"Standby Days"** column after "Short Time":

| Employee Name | Employee # | ... | Short Time | **Standby Days** | Overtime 1.0 | ... |
|---------------|------------|-----|------------|------------------|--------------|-----|
| Abdul Isaacs | RDS00045 | ... | 2.0 | **2.0** ⭐ | 8.0 | ... |
| Celeste Hendricks | RDS00043 | ... | 0.0 | **1.5** ⭐ | - | ... |
| Elvis Mzukwa | RDS00004 | ... | 1.5 | **3.0** ⭐ | - | ... |
| Enid Milton | RDS00036 | ... | 0.0 | - | - | ... |
| Gareth Jacobs | RDS00010 | ... | 3.0 | - | 5.0 | ... |

**Notes:**
- Shows the exact number of standby days entered
- Blank for employees with no standby days
- Appears between "Short Time" and overtime columns

---

## 💡 Features

### Flexible Input:
- ✅ Supports decimal values (e.g., 1.5 days, 2.5 days)
- ✅ Range: 0 to 31 days
- ✅ Step increment: 0.5 days
- ✅ Optional - can be left blank

### User-Friendly Interface:
- ✅ Expandable section (doesn't clutter the screen)
- ✅ Shows all employees from uploaded timesheet
- ✅ Organized in 3 columns for easy viewing
- ✅ Real-time summary of entries
- ✅ Clear labels with employee names

### Excel Output:
- ✅ New "Standby Days" column in Summary sheet
- ✅ Positioned logically after "Short Time"
- ✅ Only shows values when > 0
- ✅ Formatted to 2 decimal places

---

## 📋 Example Usage

### Scenario: December 2025 Report

**Employees with standby shifts:**
- Abdul Isaacs: 2 standby days
- Celeste Hendricks: 1.5 standby days  
- Elvis Mzukwa: 3 standby days

**What to do:**

1. Upload HTML timesheet ✅
2. Select public holidays ✅
3. Click **"📋 Click to enter standby days for employees"** to expand
4. Enter values:
   - Abdul Isaacs: **2.0**
   - Celeste Hendricks: **1.5**
   - Elvis Mzukwa: **3.0**
   - (Leave others at 0 or blank)
5. System shows: "✅ Standby days entered for 3 employee(s): ..."
6. Generate report ✅

**Result in Summary sheet:**
- Abdul: Shows 2.0 in Standby Days column
- Celeste: Shows 1.5 in Standby Days column
- Elvis: Shows 3.0 in Standby Days column
- Others: Blank (no standby days)

---

## 🧪 How to Test

1. Upload a test HTML timesheet
2. Complete public holiday selection
3. Look for **"3. Standby Days"** section
4. Click to expand the standby days input
5. Enter standby days for a few employees
6. Verify the confirmation message shows correct count
7. Generate Excel report
8. Open Summary sheet
9. Check "Standby Days" column appears after "Short Time"
10. Verify values match what you entered

---

## ⚠️ Important Notes

### Data Entry:
- Standby days are **optional** - you can skip this section entirely
- Standby days are **not saved** between reports
- Must be entered fresh for each timesheet period
- Only affects Summary sheet (not Detail sheet)

### Valid Values:
- Minimum: 0 days
- Maximum: 31 days
- Step: 0.5 days (allows half-days)
- Examples: 0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0, etc.

### Excel Display:
- Shows 2 decimal places (e.g., 2.00, 1.50)
- Blank cells for zero values
- Positioned logically in the flow of columns
- Easy to read and process for payroll

---

## 📊 Summary Sheet Column Order

**New column structure:**

1. Employee Name
2. Employee #
3. Normal Working Hours
4. Paid Leave
5. Unpaid Leave
6. Total Regular Hours
7. Required Hours
8. Short Time
9. **Standby Days** ⭐ NEW
10. Overtime 1.0 (if applicable)
11. Overtime 1.3 (if applicable)
12. Overtime 1.5
13. Overtime 2.0
14. Overtime 2.5 (if applicable)
15. ... (other job types)

---

## 🔮 Future Enhancements (Optional)

**If needed, we could add:**

1. **Automatic calculation:**
   - Link to standby job type in Detail sheet
   - Auto-count standby days from timesheet data

2. **Standby rates:**
   - Special pay rates for standby days
   - Calculated standby pay column

3. **Validation:**
   - Warning if standby days seem high
   - Cross-check with timesheet data

4. **Presets:**
   - Remember standby schedules
   - Quick-fill for recurring standby patterns

---

## ✅ Current Status

**Implemented:**
- ✅ Standby days input UI (expandable section)
- ✅ Shows all employees from timesheet
- ✅ Flexible numeric input (0-31 days, 0.5 increments)
- ✅ Real-time summary of entries
- ✅ "Standby Days" column in Summary sheet
- ✅ Proper positioning after "Short Time"
- ✅ Only displays non-zero values
- ✅ Formatted to 2 decimal places

**Ready for:**
- Immediate use in production
- Further enhancements if needed
- Integration with payroll systems

---

**Version:** 4.6
**Status:** ✅ Implemented and Ready
**Feature:** Standby Days Tracking and Reporting
