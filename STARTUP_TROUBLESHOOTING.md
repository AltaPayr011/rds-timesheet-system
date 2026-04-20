# 🔍 App Won't Start - Troubleshooting Guide

## ❌ Error Message

```
Oh no.
Error running app. If this keeps happening, please contact support.
```

## 🎯 Most Common Causes

### 1. Missing Required Files ⚠️

The app needs these files in the SAME directory as `timesheet_app.py`:

**Required Files:**
- ✅ `timesheet_app.py` (the main app)
- ✅ `employee_data.json` (employee database)
- ✅ `users.json` (login credentials)
- ✅ `RDS_Logo.jpg` (company logo)

**Check your directory:**
```bash
ls -la
```

You should see all 4 files listed.

### 2. Wrong Directory ⚠️

Make sure you're running the app from the correct directory:

```bash
# Navigate to the directory with all files
cd /path/to/your/files

# Then run
streamlit run timesheet_app.py
```

### 3. Files in Different Locations ⚠️

All files MUST be in the same folder. Don't put them in subfolders.

**Wrong:**
```
my_folder/
  ├── timesheet_app.py
  ├── data/
  │   ├── employee_data.json
  │   └── users.json
  └── images/
      └── RDS_Logo.jpg
```

**Correct:**
```
my_folder/
  ├── timesheet_app.py
  ├── employee_data.json
  ├── users.json
  └── RDS_Logo.jpg
```

## 🔧 How to Fix

### Step 1: Check Files

Open a terminal/command prompt and navigate to your app directory:

```bash
cd /path/to/your/timesheet/app
ls
```

You should see:
```
employee_data.json
RDS_Logo.jpg
timesheet_app.py
users.json
```

### Step 2: If Files Are Missing

Download them again:
1. Download all files from this session
2. Put them ALL in the SAME folder
3. Make sure the folder contains ALL 4 files

### Step 3: Restart Streamlit

```bash
# Make sure you're in the right directory
cd /path/to/your/timesheet/app

# Run the app
streamlit run timesheet_app.py
```

## 🔍 Still Not Working?

### Check Terminal Output

When you run `streamlit run timesheet_app.py`, look at the terminal output for error messages.

**Common errors you might see:**

1. **File not found:**
   ```
   FileNotFoundError: [Errno 2] No such file or directory: 'employee_data.json'
   ```
   **Fix:** Make sure employee_data.json is in the same folder

2. **JSON decode error:**
   ```
   JSONDecodeError: Expecting value
   ```
   **Fix:** The JSON file might be corrupted - re-download it

3. **Import error:**
   ```
   ModuleNotFoundError: No module named 'openpyxl'
   ```
   **Fix:** Install requirements: `pip install -r requirements.txt`

## 📋 Complete Setup Checklist

- [ ] Created a folder for the app
- [ ] Downloaded ALL 4 files
- [ ] Put ALL files in the SAME folder
- [ ] Opened terminal/command prompt
- [ ] Navigated to the folder (`cd /path/to/folder`)
- [ ] Installed requirements (`pip install -r requirements.txt`)
- [ ] Started app (`streamlit run timesheet_app.py`)
- [ ] App opens in browser

## 🚨 Emergency Restart

If nothing works, try this complete restart:

1. **Create a new folder:**
   ```bash
   mkdir rds-timesheet-fresh
   cd rds-timesheet-fresh
   ```

2. **Download fresh copies of ALL files:**
   - timesheet_app.py
   - employee_data.json
   - users.json  
   - RDS_Logo.jpg
   - requirements.txt

3. **Install requirements:**
   ```bash
   pip install -r requirements.txt
   ```

4. **Start the app:**
   ```bash
   streamlit run timesheet_app.py
   ```

## 💡 Pro Tip: Check the Terminal

The actual error message appears in the terminal/command prompt, not in the browser!

**Browser shows:**
```
Oh no.
Error running app.
```

**Terminal shows THE REAL ERROR:**
```
FileNotFoundError: [Errno 2] No such file or directory: 'employee_data.json'
```

**Always check the terminal to see what's really wrong!**

---

## ✅ What to Send for Help

If you still can't get it working, send:

1. Screenshot of your folder showing all files (`ls` or `dir` command)
2. Full error message from the terminal (not just the browser)
3. Output of `pip list | grep streamlit`

This will help diagnose the exact issue!
