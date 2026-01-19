#!/bin/bash

# Timesheet Processor - Quick Start Script

echo "=================================="
echo "Timesheet Processor Setup"
echo "=================================="
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3.8 or higher."
    exit 1
fi

echo "✅ Python 3 found: $(python3 --version)"
echo ""

# Check if pip is installed
if ! command -v pip3 &> /dev/null; then
    echo "❌ pip3 is not installed. Please install pip."
    exit 1
fi

echo "✅ pip3 found"
echo ""

# Install dependencies
echo "📦 Installing dependencies..."
pip3 install -r requirements.txt --quiet

if [ $? -eq 0 ]; then
    echo "✅ Dependencies installed successfully"
else
    echo "❌ Failed to install dependencies"
    exit 1
fi

echo ""
echo "=================================="
echo "Starting Streamlit App..."
echo "=================================="
echo ""
echo "The app will open in your browser at:"
echo "http://localhost:8501"
echo ""
echo "To stop the app, press Ctrl+C"
echo ""

# Run the Streamlit app
streamlit run timesheet_app.py
