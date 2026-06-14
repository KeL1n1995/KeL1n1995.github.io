---
title: "Git 基本语法笔记"
meta_title: ""
description: "self-learning Notes"
date: 2024-09-01T10:00:00+08:00
image: ""
categories: ["教程"]
author: "KeLin Cheng"
tags: ["Git", "版本控制"]
draft: false
---

适合初学者参考的 Git 使用基本步骤。

## 1. 安装 Git

从官网下载并安装 Git：https://git-scm.com/。安装完成后验证：`git --version`

## 2. 配置 Git

设置用户名：`git config --global user.name 'Your Name'`  
设置邮箱：`git config --global user.email 'your_email@example.com'`

## 3. 创建新仓库

创建文件夹：`mkdir my_project`  
进入文件夹：`cd my_project`  
初始化仓库：`git init`

## 4. 文件添加到暂存区

创建文件：`touch README.md`  
添加文件：`git add README.md`  
添加所有文件：`git add .`

## 5. 提交更改

提交：`git commit -m 'Initial commit'`

## 6. 查看状态和历史

查看状态：`git status`  
查看提交历史：`git log`

## 7. 分支操作

创建新分支：`git branch feature-branch`  
切换到新分支：`git checkout feature-branch`  
创建并切换：`git checkout -b feature-branch`

## 8. 合并分支

切换到主分支：`git checkout main`  
合并分支：`git merge feature-branch`

## 9. 连接远程仓库

添加远程仓库：`git remote add origin <repository-url>`  
推送到远程：`git push -u origin main`  
从远程拉取：`git pull origin main`

## 10. 克隆远程仓库

`git clone <repository-url>`

## 11. 处理远程仓库的分歧

```bash
git clone <repository-url>
cd <repository>
git rm -r *
git commit -m "clear"
git push
```

<div class="callout callout-ref">

**参考文献**

- Git 官方文档. https://git-scm.com/doc
- Chacon, S. & Straub, B. (2014). *Pro Git*（第 2 版）. Apress. https://git-scm.com/book/zh/v2

</div>

<div class="callout callout-question">

**练习**

1. 创建一个新分支，在三个不同文件上各做一次 commit，然后用 `git rebase -i` 将它们压缩为一个 commit。提交历史发生了什么变化？什么场景下应该用 rebase 而非 merge？
2. 模拟一次合并冲突：让两个分支修改同一个文件的同一行，然后练习手动解决冲突。Git 提供了哪些工具和策略来辅助冲突解决？

</div>
