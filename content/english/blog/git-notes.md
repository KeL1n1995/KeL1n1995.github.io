---
title: "Git Basic Syntax Notes"
meta_title: ""
description: "self-learning Notes"
date: 2024-09-01T10:00:00+08:00
image: ""
categories: ["Tutorial"]
author: "KeLin Cheng"
tags: ["Git", "Version Control"]
draft: false
---

Basic Git workflow for beginners.

## 1. Install Git

Download from https://git-scm.com/. Verify: `git --version`

## 2. Configure Git

```bash
git config --global user.name 'Your Name'
git config --global user.email 'your_email@example.com'
```

## 3. Create Repository

```bash
mkdir my_project
cd my_project
git init
```

## 4. Stage Files

```bash
git add README.md    # Add specific file
git add .            # Add all files
```

## 5. Commit Changes

```bash
git commit -m 'Initial commit'
```

## 6. Check Status & History

```bash
git status    # Working tree status
git log       # Commit history
```

## 7. Branch Operations

```bash
git branch feature-branch       # Create branch
git checkout feature-branch     # Switch branch
git checkout -b feature-branch  # Create and switch
```

## 8. Merge Branches

```bash
git checkout main
git merge feature-branch
```

## 9. Remote Repository

```bash
git remote add origin <repository-url>
git push -u origin main
git pull origin main
```

## 10. Clone Repository

```bash
git clone <repository-url>
```

<div class="callout callout-ref">

**References**

- Git Official Documentation. https://git-scm.com/doc
- Chacon, S. & Straub, B. (2014). *Pro Git* (2nd ed.). Apress. https://git-scm.com/book/en/v2

</div>

<div class="callout callout-question">

**Practice Exercises**

1. Create a new branch, make three commits on different files, then use `git rebase -i` to squash them into a single commit. What happens to the commit history, and why might you want to use rebase vs. merge?
2. Simulate a merge conflict: have two branches modify the same line of the same file, then practice resolving the conflict manually. What strategies does Git provide to help with conflict resolution?

</div>
