# Deployment Guide - Streamlit Cloud

This guide will help you deploy your Timesheet Processor app to Streamlit Cloud for free.

## Prerequisites

1. A GitHub account
2. Your app files ready (timesheet_app.py, requirements.txt, etc.)

## Step 1: Create a GitHub Repository

1. Go to [GitHub](https://github.com)
2. Click the "+" icon in the top right and select "New repository"
3. Name your repository (e.g., "timesheet-processor")
4. Make it Public
5. Click "Create repository"

## Step 2: Upload Your Files to GitHub

### Option A: Using GitHub Web Interface (Easiest)

1. In your new repository, click "uploading an existing file"
2. Drag and drop these files:
   - timesheet_app.py
   - requirements.txt
   - README.md
   - employee_data.json
   - .gitignore
3. Click "Commit changes"

### Option B: Using Git Command Line

```bash
# Initialize git in your project folder
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit"

# Add your GitHub repository as remote
git remote add origin https://github.com/YOUR_USERNAME/timesheet-processor.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## Step 3: Deploy to Streamlit Cloud

1. Go to [share.streamlit.io](https://share.streamlit.io)
2. Click "New app"
3. Sign in with GitHub
4. Select your repository: "YOUR_USERNAME/timesheet-processor"
5. Set the main file path: `timesheet_app.py`
6. Click "Deploy!"

## Step 4: Wait for Deployment

Streamlit Cloud will:
- Install dependencies from requirements.txt
- Start your app
- Provide you with a public URL (e.g., `https://your-app.streamlit.app`)

This usually takes 2-5 minutes.

## Step 5: Access Your App

Once deployed, you'll get a URL like:
```
https://your-username-timesheet-processor-timesheet-app-xyz123.streamlit.app
```

Share this URL with your team!

## Managing Your Deployed App

### View Logs
- Click on the menu (three dots) in the Streamlit Cloud dashboard
- Select "Logs" to see any errors or issues

### Redeploy
- Any push to your GitHub repository will automatically trigger a redeploy
- You can also manually reboot from the Streamlit Cloud dashboard

### Settings
- You can add secrets (for API keys, passwords, etc.)
- Configure resource limits
- Set custom domains

## Security Considerations

### Protecting Employee Data

By default, `employee_data.json` is stored in your GitHub repository. For production:

**Option 1: Use Streamlit Secrets**
1. In Streamlit Cloud dashboard, go to Settings > Secrets
2. Add your employee data as secrets
3. Modify the app to load from secrets instead of JSON file

**Option 2: Use a Database**
- PostgreSQL (recommended for production)
- MongoDB
- Firebase

**Option 3: Private Repository**
- Make your GitHub repository private
- Only authorized users can access the code and data

## Adding Authentication

For production use, add authentication:

### Option 1: Streamlit-Authenticator
```bash
pip install streamlit-authenticator
```

### Option 2: Custom Authentication
Implement your own login system with password hashing

### Option 3: OAuth Integration
- Google OAuth
- Microsoft OAuth
- GitHub OAuth

## Monitoring and Maintenance

### Check App Health
- Monitor the app regularly
- Check logs for errors
- Test functionality after updates

### Backup Employee Data
- Regularly export employee_data.json
- Keep backups in a secure location
- Consider version control for data changes

### Update Dependencies
- Keep requirements.txt up to date
- Test updates locally before deploying
- Monitor for security vulnerabilities

## Cost Considerations

### Streamlit Cloud Free Tier
- 1 private app
- Unlimited public apps
- Limited resources (1 GB memory)
- Community support

### Streamlit Cloud Paid Plans
- More resources
- Private apps
- Priority support
- Custom domains
- Starting at $20/month per app

## Troubleshooting

### App Won't Start
1. Check logs in Streamlit Cloud dashboard
2. Verify requirements.txt has all dependencies
3. Ensure Python version compatibility

### App is Slow
1. Optimize data processing
2. Add caching with `@st.cache_data`
3. Consider upgrading to paid plan for more resources

### Data Not Persisting
- Streamlit Cloud's file system is ephemeral
- Use Streamlit secrets or external database for persistent data
- Download/backup employee_data.json regularly

## Alternative Deployment Options

If Streamlit Cloud doesn't meet your needs:

### Heroku
- More control over infrastructure
- Supports multiple languages
- Free tier available

### AWS (Amazon Web Services)
- EC2 or Elastic Beanstalk
- Highly scalable
- More complex setup

### Google Cloud Platform
- App Engine or Cloud Run
- Good integration with Google services
- Pay-as-you-go pricing

### Self-Hosted
- Deploy on your own server
- Full control
- Requires server management skills

## Getting Help

- [Streamlit Documentation](https://docs.streamlit.io)
- [Streamlit Community Forum](https://discuss.streamlit.io)
- [Streamlit GitHub](https://github.com/streamlit/streamlit)

## Next Steps

1. Deploy your app to Streamlit Cloud
2. Test all functionality
3. Add authentication if needed
4. Share the URL with your team
5. Set up regular backups
6. Monitor app performance

Happy deploying! 🚀
