# 👥 User Management Guide

## 🔧 Fixed: Login Issue

**Problem:** The app uses SHA256 password hashing, but the original `users.json` had plain text passwords.

**Solution:** Updated `users.json` with properly hashed passwords.

---

## ✅ Default Login Credentials

**Username:** `admin`  
**Password:** `admin123`

These credentials will now work correctly! 🎉

---

## 🔐 Password Hashing Explained

The app uses SHA256 hashing for security. Passwords are NOT stored in plain text.

**users.json structure:**
```json
{
  "admin": {
    "password": "240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9",
    "is_admin": true
  }
}
```

The long hash string is the SHA256 hash of "admin123".

---

## 👤 Adding New Users

### Method 1: Using Python Script

Create a file called `add_user.py`:

```python
import hashlib
import json

def add_user(username, password, is_admin=False):
    # Load existing users
    try:
        with open('users.json', 'r') as f:
            users = json.load(f)
    except FileNotFoundError:
        users = {}
    
    # Hash the password
    hashed_password = hashlib.sha256(password.encode()).hexdigest()
    
    # Add the user
    users[username] = {
        "password": hashed_password,
        "is_admin": is_admin
    }
    
    # Save
    with open('users.json', 'w') as f:
        json.dump(users, f, indent=2)
    
    print(f"✅ User '{username}' added successfully!")

# Example: Add a new user
add_user("john", "secure_password_123", is_admin=False)
add_user("manager", "manager_pass_456", is_admin=True)
```

Run it:
```bash
python add_user.py
```

---

### Method 2: Manual Hash Generation

Generate the hash for a password:

```python
import hashlib

password = "your_new_password"
hashed = hashlib.sha256(password.encode()).hexdigest()
print(f"Hashed password: {hashed}")
```

Then manually add to `users.json`:
```json
{
  "admin": {
    "password": "240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9",
    "is_admin": true
  },
  "newuser": {
    "password": "YOUR_GENERATED_HASH_HERE",
    "is_admin": false
  }
}
```

---

## 🔄 Changing Passwords

### Change Admin Password:

1. Generate new hash:
```python
import hashlib
new_password = "new_secure_password"
hashed = hashlib.sha256(new_password.encode()).hexdigest()
print(hashed)
```

2. Update `users.json`:
```json
{
  "admin": {
    "password": "NEW_HASH_HERE",
    "is_admin": true
  }
}
```

3. Restart the Streamlit app

---

## 📋 User Roles

The app currently supports one role field:

- **is_admin**: `true` or `false`

Example users.json with multiple users:
```json
{
  "admin": {
    "password": "240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9",
    "is_admin": true
  },
  "john_doe": {
    "password": "5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8",
    "is_admin": false
  },
  "manager": {
    "password": "8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92",
    "is_admin": true
  }
}
```

---

## 🛠️ Quick Password Hashes

Here are some pre-generated hashes for common passwords (for testing only - change in production!):

| Password | SHA256 Hash |
|----------|-------------|
| admin123 | `240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9` |
| password | `5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8` |
| 123456 | `8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92` |

⚠️ **WARNING:** These are for testing only! Use strong, unique passwords in production.

---

## 🔒 Security Best Practices

### For Production Deployment:

1. **Change Default Password Immediately**
   - Default: `admin123`
   - Change to strong password: 12+ characters, mixed case, numbers, symbols

2. **Use Strong Passwords**
   - Minimum 12 characters
   - Mix of uppercase, lowercase, numbers, symbols
   - No common words or patterns

3. **Limit Admin Access**
   - Only give `is_admin: true` to necessary users
   - Regular users should have `is_admin: false`

4. **Regular Password Updates**
   - Change passwords every 90 days
   - Never reuse old passwords

5. **Secure the users.json File**
   - Don't commit to public repositories
   - Restrict file permissions: `chmod 600 users.json`
   - Keep backups in secure location

---

## 🧪 Testing Login

After updating `users.json`:

1. Stop the Streamlit app (Ctrl+C)
2. Restart: `streamlit run timesheet_app.py`
3. Try logging in with credentials
4. If it doesn't work, check:
   - Password hash is correct
   - JSON syntax is valid
   - No extra spaces in username
   - File saved correctly

---

## ❓ Troubleshooting

### Login Still Not Working?

**Check 1: Verify users.json format**
```bash
python -m json.tool users.json
```
Should show valid JSON. If error, fix the JSON syntax.

**Check 2: Verify password hash**
```python
import hashlib
password = "admin123"
expected = hashlib.sha256(password.encode()).hexdigest()
print(f"Expected hash: {expected}")

# Compare with hash in users.json
import json
with open('users.json', 'r') as f:
    users = json.load(f)
    actual = users['admin']['password']
    print(f"Actual hash:   {actual}")
    print(f"Match: {expected == actual}")
```

**Check 3: Restart the app**
```bash
# Stop the app (Ctrl+C)
streamlit run timesheet_app.py
```

**Check 4: Clear browser cache**
- Sometimes browser caches old credentials
- Try incognito/private mode
- Or clear browser cache

---

## 📞 Support

If login issues persist:

1. Delete `users.json`
2. Restart app - it will create default admin user
3. Try logging in with `admin` / `admin123`
4. If still failing, check app logs for errors

---

**Updated:** April 18, 2026  
**Version:** 4.6  
**Status:** ✅ Login Fixed
