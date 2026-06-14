---
title: "使用 Hugo + GitHub 搭建自己的静态博客"
meta_title: ""
description: "Use Github and Hugo to build a personal blog"
date: 2024-10-17T10:00:00+08:00
image: ""
categories: ["教程"]
author: "KeLin Cheng"
tags: ["Hugo", "GitHub Pages", "博客", "静态网站"]
draft: false
---

本教程参考以下文章：[Reference 1](https://jimmysong.io/blog/building-github-pages-with-hugo/), [Reference 2](https://sazerac-kk.github.io/p/%E6%95%99%E7%A8%8Bhugo-github%E5%8D%9A%E5%AE%A2%E9%83%A8%E7%BD%B2/), [Reference 3](https://zhuanlan.zhihu.com/p/573386870)

> 注意：本教程只是草稿，存在一些潜在的问题，请及时与作者联系。如果有反馈和建议，我会不断更新和修改。

## 1 准备工作

### 1.1 安装 Git

Git 是一个分布式版本控制系统，广泛用于软件开发和其他需要版本控制的项目中。安装完成后可参考相关教程。常用命令：`git init`, `git clone`, `git add`, `git commit`, `git push`, `git pull`, `git branch`, `git merge`。

### 1.2 GitHub 网站创建

注册 GitHub 账号。使用 GitHub Pages 进行免费网站托管。在 GitHub 上创建一个 `username.github.io` 格式的项目仓库，需要为你的仓库创建一个 README 文件，并能访问仓库中的 main 分支。

### 1.3 Hugo 的安装

Hugo 是一个领先的静态网站生成器。优点：1. 构建速度极快。2. 不需要数据库。3. 易于部署和维护。下载最新版 hugo 文件，选择 windows 系统下的扩展版本。

## 2 开始搭建

### 2.1 配置环境变量

下载后的文件解压到你本地的某个目录，建议放在 `C:\Hugo` 中。创建一个 `C:\Hugo\bin` 的文件夹，将 `hugo.exe` 文件移动到该文件夹中。选择系统环境变量中的 Path，点击编辑，将 `C:\Hugo\bin` 路径添加到 Path 中。

### 2.2 初始化 hugo 站点

在 `C:\Hugo` 中打开终端，输入命令：`hugo new site mysite`，然后进入目录 `cd mysite`。

### 2.3 设置 Hugo 网页的主题

下载并安装主题。打开 Hugo 官方网站，选择你喜欢的主题。以 Blowfish 为例。

## 3 网页部署

### 3.1 生成静态资源文件夹

在 `C:\Hugo\mysite` 目录下打开终端运行 `hugo`，就会生成一个名为 `public` 的静态资源文件夹。

### 3.2 上传到 GitHub 远程仓库

进入 `C:\Hugo\mysite\public` 目录打开终端。输入并执行提交到仓库的代码：`git init`, `git add .`, `git commit -m 'first commit'`, `git branch -M main`, `git remote add origin {你的github仓库地址}`, `git push -u origin main`。

### 3.3 Github Action 自动部署

配置 Github Action 和 token。进入 profile → Settings → Developer Settings → Personal access tokens，创建一个 token(classic)，在仓库设置中添加 secret。新建一个 GitHub 仓库 Hugo 作为源码仓库，设置为 Private。配置 `.github/workflows/deploy.yaml` 文件和 `.gitignore` 文件。

## 4 补充

### 4.1 注意事项

需要在 GitHub 上创建两个不同的仓库，分别为：静态网页文件的存放仓库 (`username.github.io`) 以及 Github Action 自动部署的源码仓库 (`Hugo.git`)。

### 4.2 错误情况

**自动部署时出现：** 403 错误。解决方案：提供正确的 Token 权限。检查 GitHub Personal Access Token (PAT)，将 token 添加到 GitHub Actions secrets 中。
