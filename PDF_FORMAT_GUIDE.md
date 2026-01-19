# PDF Format Requirements

The Timesheet Processor app automatically parses timesheet PDFs. This document explains the expected PDF format and how the parsing works.

## Supported PDF Formats

The app is designed to work with **OpenTimeClock** format PDFs and similar timesheet systems that contain:

### Required Information
- Employee names (must match names in your employee database)
- Dates (in YYYY/MM/DD, DD/MM/YYYY, or MM/DD/YYYY format)
- Time In (HH:MM format)
- Time Out (HH:MM format)
- Hours worked (decimal format, e.g., 8.75)
- Job/Absence type (e.g., "Normal Working Hours", "Overtime 1,5")
- Notes/Comments (optional)

## How PDF Parsing Works

### 1. Table Extraction (Primary Method)
The app first tries to extract structured tables from the PDF. This works best when your PDF contains:
- Clear column headers (Employee Name, Date, Time In, Time Out, Hours, Type, Notes)
- Tabular data with consistent formatting
- Row-by-row entries

### 2. Text Extraction (Fallback Method)
If no tables are found, the app falls back to text extraction and uses pattern matching to identify:
- Employee names (matched against your employee database)
- Date patterns
- Time patterns
- Hours worked
- Job types based on keywords

## Employee Name Matching

**IMPORTANT**: The app will automatically skip employees found in the PDF who are not in your database.

The app matches employee names from the PDF against your employee database:
- ✅ Known employees: Data is extracted and included
- ⚠️ Unknown employees: Automatically skipped (ignored)
- 💡 After upload, you'll see a list of skipped employees if any

**Best Practice:**
1. Add all your regular employees to the database first
2. Upload PDF - any missing employees will be shown
3. Add the missing employees if needed
4. Re-upload PDF to include them

**Matching behavior:**
- Partial matches work (e.g., "John Smith" in PDF matches "John Smith" in database)
- Case-insensitive matching
- Handles minor variations in names

## Job/Absence Type Detection

The app automatically detects job types based on keywords in the PDF:

| Keywords in PDF | Detected Type |
|----------------|---------------|
| "Overtime 1.5" or "Overtime 1,5" | Overtime 1,5 |
| "Overtime 2.0" or "Overtime 2,0" | Overtime 2,0 |
| "Paid Leave" | Paid Leave - Any type |
| "Travel" | Travel Time |
| "Call Out 1.5" or "Call Out 1,5" | Call Out 1,5 |
| "Call Out 2.0" or "Call Out 2,0" | Call Out 2,0 |
| Default | Normal Working Hours |

## Troubleshooting

### "No timesheet entries found in PDF"
**Possible causes:**
1. All employees in PDF are not in your database (all were skipped)
2. PDF format is very different from expected
3. PDF is scanned/image-based (not text-based)
4. Date format not recognized

**Solutions:**
1. Check the "skipped employees" list - add them to your database
2. Verify PDF contains text (not just images)
3. Try exporting PDF with text layer enabled
4. Ensure dates are in standard format (YYYY/MM/DD or DD/MM/YYYY)

### "Parsed entries look incorrect"
**Possible causes:**
1. PDF has unusual formatting
2. Multiple entries on same line
3. Complex table structure

**Solutions:**
1. Review the parsed data before generating Excel
2. If parsing fails repeatedly, consider using a different PDF export format
3. Contact support with sample PDF (redacted if needed)

### "Some employees missing from parsed data"
**This is expected behavior!**

The app automatically **skips employees who are not in your database**. After uploading, you'll see:
- ✅ Successfully parsed entries (for known employees)
- ℹ️ Skipped employees list (employees not in database)

**To include skipped employees:**
1. Note the names in the "skipped employees" list
2. Go to "Manage Employees" page
3. Add the missing employees
4. Upload the PDF again

**Why this happens:**
- You may have contractors or temporary workers not yet in your database
- Names might have slight spelling differences
- Former employees who are no longer active

## Best Practices

1. **Standardize PDF exports**: Use consistent PDF export settings from your time tracking system
2. **Test with sample data**: Upload a test PDF first to verify parsing
3. **Review before generating**: Always review parsed entries before generating Excel report
4. **Add employees first**: Ensure all employees are in the database before uploading PDF
5. **Use text-based PDFs**: Avoid scanned/image-based PDFs

## PDF Format Examples

### ✅ Good Format (Table-based)
```
Employee Name | Date       | Time In | Time Out | Hours | Type                  | Notes
John Smith    | 2025/09/16 | 08:00   | 17:00    | 8.50  | Normal Working Hours  |
John Smith    | 2025/09/17 | 08:00   | 17:00    | 8.50  | Normal Working Hours  |
Jane Doe      | 2025/09/16 | 07:00   | 15:30    | 8.00  | Normal Working Hours  |
```

### ✅ Good Format (List-based)
```
John Smith
2025/09/16 Tuesday 08:00 - 17:00 8.50 Normal Working Hours
2025/09/17 Wednesday 08:00 - 17:00 8.50 Normal Working Hours

Jane Doe
2025/09/16 Tuesday 07:00 - 15:30 8.00 Normal Working Hours
```

### ❌ Poor Format (Scanned/Image)
```
[Image of timesheet - text not selectable]
```

### ❌ Poor Format (Complex layout)
```
Week of 09/16-09/22                    TIMESHEET
----------------------------------------
Employee: John | Mon: 8h | Tue: 8.5h | Wed: 8h...
[Complex merged cells, no clear structure]
```

## Getting Help

If you're having trouble with PDF parsing:
1. Check this guide first
2. Verify your PDF contains text (try selecting text in PDF viewer)
3. Ensure all employees are in the database
4. Review the parsed entries carefully
5. Test with a small sample PDF first

## Technical Details

The app uses `pdfplumber` library for PDF parsing, which supports:
- Text extraction from text-based PDFs
- Table detection and extraction
- Pattern matching for dates, times, and numbers
- Multi-page PDF processing

It does NOT support:
- Image-based/scanned PDFs without OCR
- Password-protected PDFs
- Corrupted or malformed PDFs
