---
title: "Adding Disqus Comments to Hugo"
meta_title: ""
description: "Add comment system to Hugo website with Disqus"
date: 2024-10-25T10:00:00+08:00
image: ""
categories: ["Tutorial"]
author: "KeLin Cheng"
tags: ["Hugo", "Disqus", "Comments"]
draft: false
---

Hugo supports two popular comment systems:
1. **Disqus** — a third-party social comment platform.
2. **Giscus** — a comment system based on GitHub Issues/Discussions.

This post covers Disqus setup.

## Step 1: Register on Disqus

Create an account on [Disqus](https://disqus.com/) and get your Shortname.

## Step 2: Hugo Configuration

In `config/_default/params.toml`:
```toml
[article]
showComments = true
```

In `hugo.toml`:
```toml
[services]
  [services.disqus]
    shortname = 'your-shortname'
```
