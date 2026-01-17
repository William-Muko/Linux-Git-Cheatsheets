#!/bin/bash

# Simple Bash Test Script
echo "=== Bash Script Test ==="

# Variables
name="Linux-Git-Cheatsheet"
version="1.0"

# Display info
echo "Project: $name"
echo "Version: $version"
echo "Date: $(date)"

# Check if files exist
files=("README.md" "linux-commands-cheatsheet.md" "git-github-commands-cheatsheet.md")

echo -e "\n=== File Check ==="
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "✓ $file exists"
    else
        echo "✗ $file missing"
    fi
done

# Count lines in files
echo -e "\n=== Line Count ==="
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        lines=$(wc -l < "$file")
        echo "$file: $lines lines"
    fi
done

# Simple math
echo -e "\n=== Math Test ==="
num1=10
num2=5
echo "$num1 + $num2 = $((num1 + num2))"
echo "$num1 - $num2 = $((num1 - num2))"

# System info
echo -e "\n=== System Info ==="
echo "User: $(whoami)"
echo "Directory: $(pwd)"
echo "OS: $(uname -s)"

echo -e "\n=== Test Complete ==="