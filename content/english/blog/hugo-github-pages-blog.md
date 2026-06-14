---
title: "Building a Static Blog with Hugo + GitHub Pages"
meta_title: ""
description: "Use Github and Hugo to build a personal blog"
date: 2024-10-17T10:00:00+08:00
image: ""
categories: ["Tutorial"]
author: "KeLin Cheng"
tags: ["Hugo", "GitHub Pages", "Blog", "Static Site"]
draft: false
---

References: [Reference 1](https://jimmysong.io/blog/building-github-pages-with-hugo/), [Reference 2](https://sazerac-kk.github.io/p/%E6%95%99%E7%A8%8Bhugo-github%E5%8D%9A%E5%AE%A2%E9%83%A8%E7%BD%B2/)

## 1. Preparation

### 1.1 Install Git

Git is a distributed version control system. Common commands: `git init`, `git clone`, `git add`, `git commit`, `git push`, `git pull`, `git branch`, `git merge`.

### 1.2 GitHub Account

Register a GitHub account. Create a repository named `username.github.io` for GitHub Pages.

### 1.3 Install Hugo

Hugo is a fast static site generator. Download the extended version for Windows.

## 2. Building

### 2.1 Environment Setup

Place the Hugo binary in a directory (e.g., `C:\Hugo\bin`) and add it to your system PATH.

### 2.2 Create Hugo Site

```bash
hugo new site mysite
cd mysite
```

### 2.3 Install Theme

Download and install a theme from the Hugo themes website (e.g., Blowfish, Congo).

## 3. Deployment

### 3.1 Build Static Assets

```bash
hugo
```
This generates a `public/` directory with all static files.

### 3.2 Upload to GitHub

```bash
cd public
git init
git add .
git commit -m 'first commit'
git branch -M main
git remote add origin https://github.com/username/username.github.io.git
git push -u origin main
```

### 3.3 GitHub Action Auto Deploy

Configure GitHub Personal Access Token (PAT) in Settings → Developer Settings. Set up the workflow in `.github/workflows/deploy.yaml`.

## 4. Notes

Create two repositories: one for static pages (`username.github.io`) and one for source code (e.g., `Hugo.git`).
