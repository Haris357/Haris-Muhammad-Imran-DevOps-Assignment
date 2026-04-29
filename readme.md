# DevOps Assignment - Activity 1

**Student:** Haris Muhammad Imran
**Activity:** Git Hands-on Challenge

## Overview
This repository demonstrates a real Git workflow:
creating a repo, staging files, committing changes, modifying a file,
producing a second commit, and pushing the history to GitHub.

## Files
| File        | Purpose                                            |
|-------------|----------------------------------------------------|
| `app.txt`   | Placeholder application description                |
| `notes.txt` | Personal notes / step-by-step walkthrough          |
| `readme.md` | This file - project overview and instructions     |

## Git Workflow Performed
```bash
git init
git add .
git commit -m "Initial commit: add app.txt, notes.txt, readme.md"
# modify notes.txt
git add notes.txt
git commit -m "Update notes.txt with workflow takeaways"
git remote add origin <github-url>
git branch -M main
git push -u origin main
```

## Commit History
Use `git log --oneline` to view all commits made for this assignment.
