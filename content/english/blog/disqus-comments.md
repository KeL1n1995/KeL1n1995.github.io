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

<div class="callout callout-ref">

**References**

- Disqus Official Documentation. https://help.disqus.com/
- Giscus Documentation. https://giscus.app/
- Hugo Disqus Template. https://gohugo.io/templates/internal/#disqus

</div>

<div class="callout callout-question">

**Discussion Questions**

1. Disqus is convenient but raises privacy concerns (third-party tracking, ads in free tier). Compare Disqus and Giscus in terms of data ownership, user privacy, and maintenance burden. Which would you recommend for an academic blog and why?
2. If you were to self-host a comment system (e.g., Isso, Remark42), what additional infrastructure and maintenance would be required? Under what circumstances is self-hosting worth the effort?

</div>
