---
title: "为 Hugo 网站添加评论系统"
meta_title: ""
description: "使用 Disqus 评论插件为 Hugo 网站添加评论系统"
date: 2024-10-25T10:00:00+08:00
image: ""
categories: ["教程"]
author: "KeLin Cheng"
tags: ["Hugo", "Disqus", "评论系统"]
draft: false
---

Hugo 页面常用的评论系统有两种：
1. **Disqus** 评论插件（一款国外第三方社会化评论系统）。
2. **Giscus** 评论系统（基于 GitHub 的 Issues 或 Discussions 存储的评论系统）。

本文主要介绍第一种 Disqus 的本地设置，Giscus 评论系统以后会补充。国内用户需要科学上网，才能进行以下所有操作！

## Step 1

打开 Disqus 官网注册一个账号，也可以使用微软或者谷歌账号登陆。登录后，点击 Get Started。按照步骤填写完基本配置后，保存你填写的 Shortname。

## Step 2

生成一个 `layouts/partials/comments.html` 文件。在 `config/_default/params.toml` 中设置：

```toml
[article]
showComments = true
```

在 `hugo.toml` 中设置：

```toml
[services]
  [services.disqus]
    shortname = 'kel1n1995'
```
