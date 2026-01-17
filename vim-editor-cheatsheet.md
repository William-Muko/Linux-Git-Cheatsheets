# Vim Editor Cheatsheet

## Modes

```
i                     # Insert mode (before cursor)
a                     # Insert mode (after cursor)
o                     # Insert mode (new line below)
O                     # Insert mode (new line above)
Esc                   # Return to Normal mode
:                     # Command mode
v                     # Visual mode (character selection)
V                     # Visual mode (line selection)
Ctrl+v                # Visual block mode
```

## Opening and Saving Files

```bash
vim filename          # Open file
vim +n filename       # Open file at line n
vim +/pattern file    # Open file and search for pattern
```

```
:w                    # Save file
:w filename           # Save as filename
:wq or :x             # Save and quit
:q                    # Quit (if no changes)
:q!                   # Quit without saving
:wa                   # Save all open files
:qa                   # Quit all files
```

## Basic Navigation

```
h, j, k, l            # Left, down, up, right
w                     # Next word
b                     # Previous word
e                     # End of word
0                     # Beginning of line
^                     # First non-blank character
$                     # End of line
gg                    # Go to first line
G                     # Go to last line
nG                    # Go to line n
Ctrl+f                # Page down
Ctrl+b                # Page up
```

## Editing Commands

```
x                     # Delete character
dd                    # Delete line
dw                    # Delete word
d$                    # Delete to end of line
d0                    # Delete to beginning of line
yy                    # Copy (yank) line
yw                    # Copy word
y$                    # Copy to end of line
p                     # Paste after cursor
P                     # Paste before cursor
u                     # Undo
Ctrl+r                # Redo
.                     # Repeat last command
```

## Search and Replace

```
/pattern              # Search forward
?pattern              # Search backward
n                     # Next search result
N                     # Previous search result
*                     # Search for word under cursor
#                     # Search backward for word under cursor

:s/old/new/           # Replace first occurrence in line
:s/old/new/g          # Replace all in line
:%s/old/new/g         # Replace all in file
:%s/old/new/gc        # Replace all with confirmation
```

## Visual Mode Operations

```
v                     # Start visual selection
V                     # Select entire lines
Ctrl+v                # Block selection
y                     # Copy selection
d                     # Delete selection
c                     # Change selection
>                     # Indent selection
<                     # Unindent selection
```

## Advanced Navigation

```
f{char}               # Find character forward in line
F{char}               # Find character backward in line
t{char}               # Move to before character forward
T{char}               # Move to before character backward
;                     # Repeat last f/F/t/T
,                     # Repeat last f/F/t/T in opposite direction
%                     # Jump to matching bracket
```

## Text Objects

```
ciw                   # Change inner word
caw                   # Change a word (including space)
ci"                   # Change inside quotes
ca"                   # Change around quotes
ci(                   # Change inside parentheses
ca(                   # Change around parentheses
cit                   # Change inside HTML tag
```

## Multiple Files and Windows

```
:e filename           # Edit another file
:split filename       # Split window horizontally
:vsplit filename      # Split window vertically
Ctrl+w h/j/k/l        # Navigate between windows
Ctrl+w w              # Switch to next window
:tabnew filename      # Open file in new tab
gt                    # Next tab
gT                    # Previous tab
```

## Marks and Jumps

```
ma                    # Set mark 'a'
'a                    # Jump to mark 'a'
''                    # Jump to previous position
Ctrl+o                # Jump to older position
Ctrl+i                # Jump to newer position
```

## Macros

```
qa                    # Start recording macro 'a'
q                     # Stop recording
@a                    # Execute macro 'a'
@@                    # Execute last macro
```

## Command Mode Operations

```
:!command             # Execute shell command
:r filename           # Insert file contents
:r !command           # Insert command output
:set number           # Show line numbers
:set nonumber         # Hide line numbers
:syntax on            # Enable syntax highlighting
:set tabstop=4        # Set tab width
:set expandtab        # Use spaces instead of tabs
```

## Useful Settings

Add to `~/.vimrc`:
```vim
set number            " Show line numbers
set tabstop=4         " Tab width
set shiftwidth=4      " Indent width
set expandtab         " Use spaces for tabs
set autoindent        " Auto-indent
set hlsearch          " Highlight search results
set incsearch         " Incremental search
syntax on             " Syntax highlighting
```

## Quick Tips

- **:help** - Open help system
- **:help command** - Get help for specific command
- **Ctrl+g** - Show file status
- **:set paste** - Enable paste mode
- **:noh** - Clear search highlighting
- **ZZ** - Save and quit (same as :wq)
- **ZQ** - Quit without saving (same as :q!)