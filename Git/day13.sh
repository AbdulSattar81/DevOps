# Day 13 - Git Notes

# Git add
# Use `git add <file>` to stage changes before committing.
# In a diff, everything between @@ ... @@ is called a hunk.
# `--` shows removed lines.
# `++` shows added lines.

# Creating a Git branch
# Create a new branch:
# git branch feature-login
#
# Switch to a branch:
# git checkout feature-login
#
# Create and switch in one command:
# git checkout -b feature-login

# Git rebase
# Rebase moves your branch on top of another branch for a cleaner history.
# Example:
# git checkout feature-login
# git rebase main

# Git merge
# Merge combines changes from one branch into another.
# Example:
# git checkout main
# git merge feature-login

# Git revert and reset
# `git revert <commit>` creates a new commit that undoes an older commit.
# `git reset` moves HEAD backward and can unstage or remove commits,
# depending on the option used.
#
# Example:
# git revert abc123
# git reset --soft HEAD~1
