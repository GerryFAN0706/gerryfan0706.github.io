# 网站自定义指南 / Website Customization Guide

欢迎使用您的个人学术网站！以下是如何添加和修改内容的详细指南。

## 📝 主要配置文件

### 1. `_config.yml` - 网站基础配置
这是您网站的主配置文件，已经更新为您的个人信息：

**需要继续完善的部分：**
```yaml
author:
  name: "Gerryfan 樊光瑞"  # ✅ 已设置
  bio: "Your biography here"  # ⚠️ 请添加您的个人简介
  location: # 添加您的所在地
  employer: # 添加您的机构/单位
  email: # 添加您的邮箱
  
  # 学术网站链接
  googlescholar: # 添加您的Google Scholar链接
  orcid: "https://orcid.org/0009-0001-8570-1636"  # ✅ 已设置
  
  # 社交媒体（可选）
  linkedin: # LinkedIn用户名
  twitter: # Twitter/X用户名
  zhihu: # 知乎用户名
```

### 2. `_data/navigation.yml` - 导航菜单
当前保留的页面：
- Publications（出版物）
- Talks（演讲）
- Teaching（教学）
- CV（简历）

## 📂 内容添加指南

### 📚 Publications（出版物）
**位置：** `_publications/` 文件夹

**如何添加：**
在 `_publications/` 文件夹中创建新的 `.md` 文件，格式如下：

```markdown
---
title: "论文标题"
collection: publications
category: manuscripts  # 可选：books, manuscripts, conferences
permalink: /publication/2024-paper-title
excerpt: '这是论文的简短描述'
date: 2024-01-01
venue: '期刊或会议名称'
paperurl: 'http://your-paper-url.com'
citation: 'Your Name. (2024). "Paper Title." <i>Journal/Conference</i>. 1(1).'
---

这里可以添加更详细的论文介绍、摘要等内容。
```

**示例文件名：** `2024-01-01-my-first-paper.md`

### 🎤 Talks（演讲/报告）
**位置：** `_talks/` 文件夹

**如何添加：**
```markdown
---
title: "演讲标题"
collection: talks
type: "Talk"  # 或 "Tutorial", "Conference"
permalink: /talks/2024-talk-1
venue: "会议或活动名称"
date: 2024-01-01
location: "城市, 国家"
---

在这里添加演讲的详细描述、内容概要等。
```

### 👨‍🏫 Teaching（教学）
**位置：** `_teaching/` 文件夹

**如何添加：**
```markdown
---
title: "课程名称"
collection: teaching
type: "本科课程"  # 或 "研究生课程", "Workshop"等
permalink: /teaching/2024-course
venue: "大学名称, 院系"
date: 2024-01-01
location: "城市, 国家"
---

课程描述、教学内容、学习目标等。
```

## 🏠 主页面修改

### About页面（主页）
**文件：** `_pages/about.md`

这是访客看到的第一个页面。请在此文件中添加：
- 您的个人介绍
- 研究兴趣
- 教育背景
- 联系方式

### CV页面
**文件：** `_pages/cv.md`

包含以下部分（请根据模板填写）：
- Education（教育背景）
- Work Experience（工作经历）
- Skills（技能）
- Publications（自动从 `_publications/` 加载）
- Talks（自动从 `_talks/` 加载）
- Teaching（自动从 `_teaching/` 加载）
- Awards and Honors（奖项荣誉）

## 🖼️ 图片管理

### 头像照片
**位置：** `images/profile.png`

将您的头像照片命名为 `profile.png` 并放在 `images/` 文件夹中。

### 其他图片
所有图片都应放在 `images/` 文件夹中。

## 📄 PDF文件

### 论文PDF、简历等
**位置：** `files/` 文件夹

将PDF文件放在此文件夹中，然后可以通过以下链接访问：
```
https://gerryfan0706.github.io/files/your-file.pdf
```

## 🚀 本地测试

在修改网站后，您可以在本地预览：

```bash
# 安装依赖（首次）
bundle install

# 启动本地服务器
bundle exec jekyll serve -l -H localhost

# 然后在浏览器访问 http://localhost:4000
```

## 📤 发布更新

修改完成后，提交并推送到GitHub：

```bash
# 添加所有修改
git add .

# 提交更改
git commit -m "更新个人信息和内容"

# 推送到GitHub
git push origin master
```

GitHub Pages会自动构建并发布您的网站（通常需要几分钟）。

## ✅ 下一步建议

1. ✏️ 完善 `_config.yml` 中的个人信息
2. 📝 更新 `_pages/about.md` 主页内容
3. 🖼️ 上传个人头像照片到 `images/profile.png`
4. 📚 在 `_publications/` 中添加您的论文
5. 🎤 在 `_talks/` 中添加演讲记录
6. 👨‍🏫 在 `_teaching/` 中添加教学经历
7. 📄 更新 `_pages/cv.md` 简历内容
8. 📤 提交并推送到GitHub

## 🔗 有用的链接

- [Jekyll文档](https://jekyllrb.com/docs/)
- [Markdown语法指南](https://www.markdownguide.org/basic-syntax/)
- [GitHub Pages文档](https://docs.github.com/en/pages)

---

如有问题，请参考原始的 Academic Pages 文档或在GitHub Issues中提问。

