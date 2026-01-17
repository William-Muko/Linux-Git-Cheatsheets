# Linux Commands Cheatsheet

## File and Directory Operations

### Navigation
```bash
pwd                    # Print working directory
ls                     # List files and directories
ls -la                 # List with details and hidden files
cd /path/to/directory  # Change directory
cd ~                   # Go to home directory
cd ..                  # Go up one directory
cd -                   # Go to previous directory
```

### File Operations
```bash
touch filename         # Create empty file
cp source dest         # Copy file
cp -r source dest      # Copy directory recursively
mv source dest         # Move/rename file or directory
rm filename            # Remove file
rm -rf directory       # Remove directory recursively
mkdir dirname          # Create directory
mkdir -p path/to/dir   # Create nested directories
rmdir dirname          # Remove empty directory
```

### File Viewing and Editing
```bash
cat filename           # Display file content
less filename          # View file with pagination
head filename          # Show first 10 lines
head -n 20 filename    # Show first 20 lines
tail filename          # Show last 10 lines
tail -f filename       # Follow file changes
nano filename          # Edit with nano
vim filename           # Edit with vim
```

## File Permissions and Ownership

```bash
chmod 755 filename     # Change permissions (rwxr-xr-x)
chmod +x filename      # Make executable
chmod -x filename      # Remove execute permission
chown user:group file  # Change ownership
chgrp group filename   # Change group ownership
umask 022             # Set default permissions
```

## Search and Find

```bash
find /path -name "*.txt"           # Find files by name
find /path -type f -size +100M     # Find large files
grep "pattern" filename            # Search in file
grep -r "pattern" directory        # Recursive search
grep -i "pattern" filename         # Case-insensitive search
locate filename                    # Find file by name (uses database)
which command                      # Find command location
whereis command                    # Find command, source, manual
```

## Process Management

```bash
ps aux                 # List all processes
ps -ef                 # List processes with full format
top                    # Display running processes
htop                   # Enhanced process viewer
kill PID               # Kill process by ID
kill -9 PID            # Force kill process
killall processname    # Kill all processes by name
jobs                   # List active jobs
bg                     # Put job in background
fg                     # Bring job to foreground
nohup command &        # Run command immune to hangups
```

## System Information

```bash
uname -a               # System information
whoami                 # Current username
id                     # User and group IDs
uptime                 # System uptime
date                   # Current date and time
cal                    # Calendar
df -h                  # Disk space usage
du -sh directory       # Directory size
free -h                # Memory usage
lscpu                  # CPU information
lsblk                  # List block devices
```

## Network Commands

```bash
ping hostname          # Test connectivity
wget URL               # Download file
curl URL               # Transfer data from server
ssh user@host          # Connect via SSH
scp file user@host:path # Copy file over SSH
netstat -tuln          # Show network connections
ss -tuln               # Modern netstat alternative
ifconfig               # Network interface configuration
ip addr show           # Show IP addresses
```

## Archive and Compression

```bash
tar -czf archive.tar.gz files     # Create compressed archive
tar -xzf archive.tar.gz           # Extract compressed archive
tar -tf archive.tar.gz            # List archive contents
zip -r archive.zip directory      # Create zip archive
unzip archive.zip                 # Extract zip archive
gzip filename                     # Compress file
gunzip filename.gz                # Decompress file
```

## Text Processing

```bash
sort filename          # Sort lines in file
uniq filename          # Remove duplicate lines
cut -d',' -f1 file     # Extract column from CSV
awk '{print $1}' file  # Print first column
sed 's/old/new/g' file # Replace text
wc filename            # Count lines, words, characters
wc -l filename         # Count lines only
```

## Environment and Variables

```bash
env                    # Show environment variables
echo $VARIABLE         # Display variable value
export VAR=value       # Set environment variable
alias ll='ls -la'      # Create command alias
unalias ll             # Remove alias
history                # Command history
!!                     # Repeat last command
!n                     # Repeat command number n
```

## File Transfer and Synchronization

```bash
rsync -av source dest          # Synchronize directories
rsync -av --delete src dest    # Sync and delete extra files
scp -r dir user@host:path      # Copy directory via SSH
```

## System Control

```bash
sudo command           # Run as superuser
su - username          # Switch user
passwd                 # Change password
crontab -e             # Edit cron jobs
crontab -l             # List cron jobs
systemctl status service    # Check service status
systemctl start service     # Start service
systemctl stop service      # Stop service
systemctl restart service   # Restart service
```

## Shortcuts and Tips

```bash
Ctrl+C                 # Interrupt current command
Ctrl+Z                 # Suspend current command
Ctrl+D                 # Exit shell or end input
Ctrl+L                 # Clear screen
Ctrl+R                 # Search command history
Tab                    # Auto-complete
*                      # Wildcard for any characters
?                      # Wildcard for single character
~                      # Home directory shortcut
```