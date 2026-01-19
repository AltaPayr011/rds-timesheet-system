# Feature Update: Skip Unknown Employees

## What Changed

The app now **automatically skips employees** who appear in the PDF but are not in your employee database.

## Before vs After

### Before ❌
- Had to add ALL employees before uploading PDF
- Would fail or error if unknown employees were present
- Required complete employee list upfront

### After ✅
- Upload PDF with any employees
- Known employees: Data extracted
- Unknown employees: Automatically skipped
- See list of skipped employees after upload
- Add missing employees anytime

## How It Works

### 1. Upload PDF
You upload a timesheet PDF with various employees

### 2. Automatic Parsing
The app:
- Matches employee names against your database
- Extracts data for known employees
- Tracks unknown employees

### 3. Results Display
You see:
```
✅ Successfully parsed 45 timesheet entries from PDF

ℹ️ 3 employee(s) skipped (not in database)
The following employees were found in the PDF but are not in your 
employee database. They have been ignored:
- John Contractor
- Jane Temporary
- Bob Former-Employee

💡 Add these employees in the 'Manage Employees' page if you want to include them.
```

### 4. Your Options
**Option A: Ignore them**
- Generate Excel with only known employees
- Perfect for contractors or temps you don't track

**Option B: Add them**
- Go to "Manage Employees"
- Add the skipped employees
- Re-upload PDF
- Now they'll be included

## Use Cases

### 1. Contractors & Temporary Workers
You have regular employees in your database, but occasionally have contractors:
- Upload PDF with everyone
- Generate report for regular employees only
- Skip contractors automatically

### 2. Gradual Database Building
You're starting fresh:
- Add your core team first
- Upload timesheets
- See who else appears
- Add them gradually

### 3. Former Employees
Your PDF includes someone who left:
- They're automatically skipped
- No need to filter them out manually
- Only active employees in your report

### 4. Name Variations
Someone's name is spelled differently in PDF:
- They're skipped if no match found
- You see their name in skipped list
- Add correct spelling to database
- Re-upload to include them

## Benefits

✅ **Flexible**: Don't need complete employee list upfront  
✅ **Forgiving**: Won't fail on unknown employees  
✅ **Transparent**: Always shows who was skipped  
✅ **Gradual**: Build your database over time  
✅ **Selective**: Only track employees you care about  

## Example Workflow

**Week 1:**
1. Add your 10 core team members
2. Upload timesheet with 15 people
3. See 5 people skipped (contractors)
4. Generate Excel for your 10 core members
5. ✅ Done!

**Week 2:**
1. One contractor now regular employee
2. Add them to database
3. Upload timesheet
4. Now 11 employees in report, 4 skipped
5. ✅ Done!

## Technical Details

### Matching Logic
- Employee names from PDF are compared to database
- Partial matches accepted (e.g., "John Smith" matches "John Smith")
- Case-insensitive matching
- If no match found → employee is skipped

### What Gets Skipped
- The entire employee's timesheet entries
- All their dates, times, hours
- Nothing is included in Excel report
- But you see their name in the skipped list

### No Errors
- Skipping is silent and graceful
- No error messages
- Processing continues normally
- You're just informed via the skipped list

## FAQ

**Q: Will skipped employees appear anywhere?**  
A: Yes, in an expandable info box after upload showing their names.

**Q: Can I get their data later?**  
A: Yes, add them to the database and re-upload the PDF.

**Q: What if I skip someone by accident?**  
A: You'll see them in the skipped list. Add them and re-upload.

**Q: Do I have to re-upload if I add employees?**  
A: Yes, each upload is independent. Re-upload to include newly added employees.

**Q: What if the PDF has 100 employees but I only have 10 in my database?**  
A: Perfect! You'll get data for your 10, and see a list of the other 90 skipped.

**Q: Does this affect performance?**  
A: No, skipping is fast and efficient.

## Summary

**The app is now more flexible and forgiving:**
- ✅ Upload any PDF, any time
- ✅ Automatically handles unknown employees
- ✅ Shows you who was skipped
- ✅ Add employees as needed
- ✅ No errors, just information

This makes the app perfect for:
- Growing teams
- Mixed workforce (employees + contractors)
- Transitioning from manual tracking
- Testing with sample data

**Bottom line**: Upload your PDF without worry - the app will handle it!

---

**Feature Version**: 2.1  
**Date**: January 2026  
**Status**: Active
