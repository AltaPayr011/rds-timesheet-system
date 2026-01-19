# 🔒 Password Change Feature - User Guide

## What's New?

✅ **All users can now change their own passwords!**

Previously, only admins could reset passwords for other users. Now:
- ✅ Admin users can change their own password
- ✅ Regular users can change their own password
- ✅ No admin intervention needed

---

## How to Change Your Password

### Step 1: Log In
Log in with your current username and password

### Step 2: Navigate to Change Password
In the sidebar menu, click on **"🔒 Change Password"**

### Step 3: Enter Your Details
Fill in the form:
1. **Current Password:** Your existing password
2. **New Password:** Your new password (minimum 6 characters)
3. **Confirm New Password:** Type your new password again

### Step 4: Click "Change Password"
- ✅ If successful, you'll see a success message and balloons! 🎉
- ❌ If there's an error, you'll see what went wrong

### Step 5: For Streamlit Cloud Users
**IMPORTANT:** If deployed on Streamlit Cloud:
1. After changing your password, click **"📥 Download users.json"**
2. Go to your GitHub repository
3. Update the `users.json` file with the downloaded version
4. This makes your password change permanent

---

## Password Requirements

✅ **Minimum 6 characters** (recommended)
✅ **Use a mix of letters and numbers** for security
✅ **Must be different from current password**
✅ **Don't share your password with others**

---

## Validation Messages

The system checks for common mistakes:

| Error | Meaning |
|-------|---------|
| ❌ Current password is incorrect | You entered the wrong current password |
| ❌ Please enter a new password | New password field is empty |
| ⚠️ Password should be at least 6 characters | Password too short |
| ❌ New passwords do not match | Confirm password doesn't match |
| ⚠️ New password must be different | Can't use the same password |

---

## Security Tips

🔐 **Best Practices:**
1. **Change default passwords immediately** after first login
2. **Use strong passwords** with letters, numbers, and symbols
3. **Don't reuse passwords** from other accounts
4. **Don't share your password** with colleagues
5. **Change your password regularly** (every 3-6 months)

🔐 **What makes a strong password?**
- At least 8-12 characters
- Mix of uppercase and lowercase letters
- Include numbers
- Include special characters (!@#$%^&*)
- Not a dictionary word
- Not your name or birthday

**Examples:**
- ❌ Weak: `password`, `123456`, `admin`
- ✅ Strong: `MyR0bots2024!`, `Secure#Pass99`, `TimeSheet$2024`

---

## For Admins

### Admin Password Change
Admins can change their own password using the **"🔒 Change Password"** menu.

### Reset Other Users' Passwords
Admins can still reset passwords for other users via **"👥 User Management"**.

**When to use each:**
- **Change Password:** For changing YOUR OWN password
- **User Management:** For resetting ANOTHER USER's password

---

## Troubleshooting

### "Current password is incorrect"
**Solution:** Make sure you're typing your current password correctly (check Caps Lock)

### Password change works, but resets on next login (Streamlit Cloud)
**Solution:** This is normal behavior. You MUST download the `users.json` file and update it in GitHub to make it permanent. See Step 5 above.

### Can't access "Change Password" menu
**Solution:** Make sure you're logged in. This option appears for all logged-in users.

### Forgot current password
**Solution:** 
- Contact your admin to reset it via User Management
- If you're the admin and forgot your password, you'll need to manually edit the `users.json` file in GitHub

---

## Menu Location

The **"🔒 Change Password"** option appears in the sidebar for:
- ✅ Admin users (between "Generate Report" and "Employee Management")
- ✅ Regular users (between "Generate Report" and logout)

**Sidebar Menu Structure:**

**For Regular Users:**
```
📊 Generate Report
🔒 Change Password  ← NEW!
[Logout button]
```

**For Admin Users:**
```
📊 Generate Report
🔒 Change Password  ← NEW!
👤 Employee Management
👥 User Management
[Logout button]
```

---

## Version Information

**Feature Added:** January 2026
**Available to:** All users (Admin and Regular)
**Works with:** Local deployment and Streamlit Cloud

---

## Quick Reference

**Minimum password length:** 6 characters (8+ recommended)
**Where to find it:** Sidebar → 🔒 Change Password
**Who can use it:** Everyone (all logged-in users)
**Persistence:** Download users.json and update in GitHub (Streamlit Cloud)

---

**Questions?** Test it out with your current account! The old password will work until you successfully change it.
