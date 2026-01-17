# Nano Editor Cheatsheet

## Opening Files

```bash
nano filename          # Open/create file
nano +line filename    # Open file at specific line
nano -w filename       # Disable line wrapping
nano -B filename       # Create backup of original file
```

## Basic Navigation

```
Ctrl+F / →            # Move forward one character
Ctrl+B / ←            # Move backward one character
Ctrl+P / ↑            # Move up one line
Ctrl+N / ↓            # Move down one line
Ctrl+A / Home         # Move to beginning of line
Ctrl+E / End          # Move to end of line
```

## Advanced Navigation

```
Ctrl+Y / Page Up      # Move up one page
Ctrl+V / Page Down    # Move down one page
Ctrl+_ (Ctrl+Shift+-) # Go to specific line number
Alt+G                 # Go to specific line (alternative)
Ctrl+W                # Search for text
Alt+W                 # Search and replace
```

## File Operations

```
Ctrl+O                # Save file (WriteOut)
Ctrl+X                # Exit nano
Ctrl+R                # Insert another file
Ctrl+T                # Open file browser
```

## Editing Commands

```
Ctrl+K                # Cut current line
Ctrl+U                # Paste (uncut) line
Alt+6                 # Copy current line
Ctrl+^                # Mark text (start selection)
Alt+A                 # Select all text
Ctrl+6                # Mark text (alternative)
```

## Delete Operations

```
Ctrl+H / Backspace    # Delete character before cursor
Ctrl+D / Delete       # Delete character at cursor
Alt+Backspace         # Delete word to the left
Ctrl+Del              # Delete word to the right
Ctrl+K                # Delete from cursor to end of line
```

## Search and Replace

```
Ctrl+W                # Search forward
Ctrl+Q                # Search backward
Alt+W                 # Search and replace
Alt+R                 # Replace current match
Alt+A                 # Replace all matches
F6                    # Search again
```

## Useful Features

```
Alt+U                 # Undo last action
Alt+E                 # Redo last undone action
Ctrl+T                # Spell check
Alt+3                 # Comment/uncomment line
Alt+}                 # Indent line
Alt+{                 # Unindent line
```

## Display Options

```
Alt+X                 # Toggle help text
Alt+C                 # Show cursor position
Alt+#                 # Toggle line numbers
Alt+P                 # Toggle whitespace display
Alt+Y                 # Toggle syntax highlighting
```

## Multiple Buffers

```
Alt+<                 # Switch to previous buffer
Alt+>                 # Switch to next buffer
Ctrl+R                # Insert file into current buffer
```

## Command Line Options

```bash
nano -T 4 file        # Set tab size to 4
nano -E file          # Convert tabs to spaces
nano -i file          # Auto-indent new lines
nano -c file          # Show cursor position
nano -l file          # Show line numbers
nano -m file          # Enable mouse support
nano -v file          # View mode (read-only)
```

## Configuration

Create `~/.nanorc` for custom settings:
```
set linenumbers       # Show line numbers
set mouse            # Enable mouse support
set tabsize 4        # Set tab width
set autoindent       # Auto-indent
set smooth           # Smooth scrolling
```

## Quick Tips

- **Ctrl+G** - Display help screen
- **Alt+D** - Count words, lines, characters
- **Alt+J** - Justify paragraph
- **Alt+T** - Cut from cursor to end of file
- **Ctrl+C** - Show current line and column position