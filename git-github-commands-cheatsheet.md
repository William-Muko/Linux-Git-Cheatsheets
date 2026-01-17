# Git & GitHub Commands Cheatsheet

## Initial Setup

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
git config --list                          # View configuration
git config --global init.defaultBranch main
```

## Repository Initialization

```bash
git init                    # Initialize new repository
git clone <url>             # Clone remote repository
git clone <url> <directory> # Clone to specific directory
git remote add origin <url> # Add remote repository
git remote -v               # View remote repositories
```

## Basic Workflow

### Staging and Committing
```bash
git status                  # Check repository status
git add <file>              # Stage specific file
git add .                   # Stage all changes
git add -A                  # Stage all changes including deletions
git commit -m "message"     # Commit with message
git commit -am "message"    # Stage and commit tracked files
git commit --amend          # Modify last commit
```

### Viewing Changes
```bash
git diff                    # Show unstaged changes
git diff --staged           # Show staged changes
git diff HEAD               # Show all changes since last commit
git diff <commit1> <commit2> # Compare commits
```

## Branch Management

```bash
git branch                  # List local branches
git branch -a               # List all branches
git branch <name>           # Create new branch
git checkout <branch>       # Switch to branch
git checkout -b <branch>    # Create and switch to branch
git switch <branch>         # Switch to branch (newer syntax)
git switch -c <branch>      # Create and switch to branch
git branch -d <branch>      # Delete branch
git branch -D <branch>      # Force delete branch
git branch -m <old> <new>   # Rename branch
```

## Merging and Rebasing

```bash
git merge <branch>          # Merge branch into current
git merge --no-ff <branch>  # Merge without fast-forward
git rebase <branch>         # Rebase current branch
git rebase -i HEAD~3        # Interactive rebase last 3 commits
git cherry-pick <commit>    # Apply specific commit
```

## Remote Operations

```bash
git fetch                   # Fetch changes from remote
git pull                    # Fetch and merge changes
git pull --rebase           # Fetch and rebase changes
git push                    # Push to remote
git push -u origin <branch> # Push and set upstream
git push --force            # Force push (use carefully)
git push --force-with-lease # Safer force push
```

## History and Logs

```bash
git log                     # View commit history
git log --oneline           # Compact log view
git log --graph             # Show branch graph
git log --author="name"     # Filter by author
git log --since="2 weeks ago" # Filter by date
git log -p                  # Show patches
git show <commit>           # Show commit details
git blame <file>            # Show line-by-line history
```

## Undoing Changes

```bash
git checkout -- <file>      # Discard unstaged changes
git restore <file>          # Discard unstaged changes (newer)
git restore --staged <file> # Unstage file
git reset HEAD <file>       # Unstage file
git reset --soft HEAD~1     # Undo last commit, keep changes staged
git reset --mixed HEAD~1    # Undo last commit, unstage changes
git reset --hard HEAD~1     # Undo last commit, discard changes
git revert <commit>         # Create commit that undoes changes
```

## Stashing

```bash
git stash                   # Stash current changes
git stash push -m "message" # Stash with message
git stash list              # List stashes
git stash pop               # Apply and remove latest stash
git stash apply             # Apply stash without removing
git stash drop              # Delete stash
git stash clear             # Delete all stashes
```

## Tags

```bash
git tag                     # List tags
git tag <name>              # Create lightweight tag
git tag -a <name> -m "msg"  # Create annotated tag
git tag -d <name>           # Delete tag
git push origin <tag>       # Push tag to remote
git push origin --tags      # Push all tags
```

## GitHub Specific

### Repository Management
```bash
gh repo create <name>       # Create repository
gh repo clone <repo>        # Clone repository
gh repo fork <repo>         # Fork repository
gh repo view                # View repository details
```

### Pull Requests
```bash
gh pr create                # Create pull request
gh pr list                  # List pull requests
gh pr view <number>         # View pull request
gh pr checkout <number>     # Checkout pull request
gh pr merge <number>        # Merge pull request
gh pr close <number>        # Close pull request
```

### Issues
```bash
gh issue create             # Create issue
gh issue list               # List issues
gh issue view <number>      # View issue
gh issue close <number>     # Close issue
```

## Advanced Git Operations

### Submodules
```bash
git submodule add <url> <path>     # Add submodule
git submodule init                 # Initialize submodules
git submodule update               # Update submodules
git submodule update --remote      # Update to latest
```

### Worktrees
```bash
git worktree add <path> <branch>   # Create worktree
git worktree list                  # List worktrees
git worktree remove <path>         # Remove worktree
```

### Bisect (Debug)
```bash
git bisect start            # Start bisect session
git bisect bad              # Mark current commit as bad
git bisect good <commit>    # Mark commit as good
git bisect reset            # End bisect session
```

## Configuration and Aliases

```bash
# Useful aliases
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
git config --global alias.visual '!gitk'
```

## Workflow Patterns

### Feature Branch Workflow
```bash
git checkout main
git pull origin main
git checkout -b feature/new-feature
# Make changes and commits
git push -u origin feature/new-feature
# Create pull request on GitHub
```

### Gitflow Workflow
```bash
git flow init               # Initialize gitflow
git flow feature start <name>    # Start feature
git flow feature finish <name>   # Finish feature
git flow release start <version> # Start release
git flow hotfix start <name>     # Start hotfix
```

## Troubleshooting

```bash
git reflog                  # View reference log
git fsck                    # Check repository integrity
git gc                      # Garbage collection
git clean -fd               # Remove untracked files and directories
git remote prune origin     # Clean up remote references
```

## Useful Tips

- Use `.gitignore` to exclude files from tracking
- Write clear, descriptive commit messages
- Commit often with logical chunks
- Use branches for features and experiments
- Always pull before pushing to avoid conflicts
- Use `git status` frequently to understand repository state