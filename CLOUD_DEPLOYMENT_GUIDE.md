# 🌐 RDS Timesheet - Streamlit Cloud Deployment Guide

## ✅ Prerequisites

Before you start, you need:
- [ ] GitHub account (free) - Create at https://github.com/signup
- [ ] Streamlit Cloud account (free) - Create at https://share.streamlit.io/signup
- [ ] All your app files ready

---

## 📦 Files You Need for Deployment

Make sure you have these files in ONE folder:

1. **timesheet_app.py** (54 KB) - The main app
2. **employee_data.json** (13 KB) - Employee database
3. **users.json** (125 bytes) - Login credentials
4. **RDS_Logo.jpg** (10 KB) - Company logo
5. **requirements.txt** (NEW VERSION - download below)
6. **.gitignore** (NEW - download below)

**IMPORTANT:** Replace your old `requirements.txt` with the NEW one I provided!

---

## 🚀 Deployment Steps

### Step 1: Create GitHub Repository

1. **Go to GitHub:**
   - Visit https://github.com
   - Click **"Sign in"** (or **"Sign up"** if you don't have an account)

2. **Create New Repository:**
   - Click the **"+"** icon (top right)
   - Click **"New repository"**
   
3. **Repository Settings:**
   - **Repository name:** `rds-timesheet-system`
   - **Description:** "RDS Timesheet System for Payroll Processing"
   - **Visibility:** Choose **PRIVATE** (recommended for company data)
   - ✅ Check **"Add a README file"**
   - Click **"Create repository"**

---

### Step 2: Upload Files to GitHub

**Option A: Web Upload (Easiest)**

1. In your new repository, click **"Add file"** → **"Upload files"**

2. **Drag and drop ALL 6 files:**
   - timesheet_app.py
   - employee_data.json
   - users.json
   - RDS_Logo.jpg
   - requirements.txt (NEW VERSION!)
   - .gitignore

3. At the bottom:
   - Commit message: "Initial commit - RDS Timesheet System"
   - Click **"Commit changes"**

**Option B: GitHub Desktop (Alternative)**

1. Download GitHub Desktop: https://desktop.github.com
2. Clone your repository
3. Copy all files into the local folder
4. Commit and push

---

### Step 3: Deploy to Streamlit Cloud

1. **Go to Streamlit Cloud:**
   - Visit https://share.streamlit.io
   - Click **"Sign in"** (use your GitHub account)

2. **Connect GitHub:**
   - Authorize Streamlit to access your GitHub account
   - Allow access to the `rds-timesheet-system` repository

3. **Create New App:**
   - Click **"New app"**
   
4. **App Settings:**
   - **Repository:** Select `yourusername/rds-timesheet-system`
   - **Branch:** main (or master)
   - **Main file path:** `timesheet_app.py`
   - **App URL:** Choose a name like `rds-timesheet` (creates: rds-timesheet.streamlit.app)

5. **Click "Deploy!"**

6. **Wait 2-5 minutes** for deployment to complete

---

### Step 4: Test Your Deployed App

1. Once deployed, you'll get a URL like:
   ```
   https://rds-timesheet.streamlit.app
   ```

2. **Open the URL** in your browser

3. **Test login:**
   - Username: admin
   - Password: admin123

4. **Upload a test HTML file** and verify it works

---

## 🔒 Security Best Practices

### ⚠️ Important Security Notes:

1. **Private Repository:**
   - Keep your GitHub repository PRIVATE
   - Employee data should not be public

2. **Change Default Password:**
   - After deployment, change the default admin password
   - Use a strong password

3. **Access Control:**
   - Only share the app URL with authorized users
   - Consider using Streamlit's authentication features for production

4. **Data Privacy:**
   - Employee data is in the repository
   - Make sure only authorized people have GitHub access

---

## 🔧 Troubleshooting

### Error: "Error installing requirements"

**Solution:**
- Make sure you uploaded the NEW `requirements.txt` (the one with >= instead of ==)
- Delete the old requirements.txt from GitHub
- Upload the new one

### Error: "File not found: employee_data.json"

**Solution:**
- Make sure ALL files are in the root of the repository (not in a subfolder)
- Check file names are exactly correct (case-sensitive)

### Error: "App is sleeping"

**Solution:**
- Free Streamlit Cloud apps sleep after inactivity
- Just click "Wake up" when you visit
- Or upgrade to a paid plan for always-on apps

### Can't see the app / Permission denied

**Solution:**
- Make sure Streamlit Cloud has access to your GitHub repository
- Check repository settings → Collaborators → Streamlit access

---

## 🔄 Updating Your Deployed App

When you need to update the app:

1. **Make changes to your local files**

2. **Upload to GitHub:**
   - Go to your repository
   - Click "Add file" → "Upload files"
   - Upload the updated file
   - Commit changes

3. **Streamlit Cloud auto-updates:**
   - Within 1-2 minutes, changes go live
   - Refresh your browser to see updates

---

## 💰 Cost Information

**Free Tier (Recommended to Start):**
- ✅ 1 private app
- ✅ Unlimited public apps
- ✅ Community support
- ⚠️ Apps sleep after inactivity
- ⚠️ 1 GB resources

**Paid Plans (Optional):**
- Always-on apps (no sleeping)
- More resources
- More private apps
- Starting from $20/month

**For your use case:** Free tier should work fine! The app wakes up instantly when you visit.

---

## 📱 Accessing Your App

**From any device:**
1. Open browser
2. Go to: `https://your-app-name.streamlit.app`
3. Login with admin/admin123
4. Use the app!

**Share with team:**
- Just send them the URL
- They can bookmark it
- Works on desktop, tablet, phone

---

## ✅ Deployment Checklist

Before deploying:
- [ ] Created GitHub account
- [ ] Created Streamlit Cloud account
- [ ] Created private GitHub repository
- [ ] Uploaded ALL 6 files (including NEW requirements.txt)
- [ ] Verified all files are in repository root (not in subfolder)
- [ ] Connected Streamlit Cloud to GitHub
- [ ] Created new app in Streamlit Cloud
- [ ] Waited for deployment to complete (2-5 min)
- [ ] Tested login (admin/admin123)
- [ ] Tested uploading HTML file
- [ ] Tested generating report

---

## 🆘 Need Help?

If you get stuck:

1. **Check the deployment logs:**
   - In Streamlit Cloud, click "Manage app"
   - View the logs for error messages

2. **Common issues:**
   - Wrong file names (case-sensitive!)
   - Files in subfolder (must be in root)
   - Old requirements.txt (use the new one!)
   - Private repo without Streamlit access

3. **Send me:**
   - Screenshot of error message
   - Screenshot of your GitHub repository file list
   - Deployment logs from Streamlit Cloud

---

## 🎉 Success!

Once deployed, you'll have:
- ✅ Web-based timesheet app
- ✅ Accessible from anywhere
- ✅ Shareable URL
- ✅ Automatic updates when you push to GitHub
- ✅ Professional cloud-hosted solution

**Your app URL will be:** `https://your-chosen-name.streamlit.app`

Share this with your team and start processing timesheets! 🚀

---

**Good luck with your deployment!** 🎊
