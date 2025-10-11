---
layout: single
title: "Research Dashboard"
permalink: /research-dashboard/
author_profile: true
robots: noindex, nofollow
sitemap: false
---

<div style="background-color: #fff3cd; padding: 15px; margin-bottom: 20px; border-left: 4px solid #ffc107; border-radius: 4px;">
  <strong>⚠️ 私人工作台：</strong> 本页面包含研究进度追踪工具，仅供个人使用。可通过手机随时更新。
</div>

## 📊 快速工具导航

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 15px; margin: 20px 0;">
  <a href="#notion-dashboard" style="padding: 20px; background: #f0f0f0; border-radius: 8px; text-align: center; text-decoration: none; color: #333;">
    📝 Notion 研究数据库
  </a>
  <a href="#calendar" style="padding: 20px; background: #f0f0f0; border-radius: 8px; text-align: center; text-decoration: none; color: #333;">
    📅 截止日期日历
  </a>
  <a href="#quick-notes" style="padding: 20px; background: #f0f0f0; border-radius: 8px; text-align: center; text-decoration: none; color: #333;">
    💡 快速笔记
  </a>
</div>

---

<h2 id="notion-dashboard">📝 Notion 研究数据库</h2>

<!-- Notion 嵌入示例 -->
<!-- 替换 YOUR_NOTION_SHARE_LINK 为您的 Notion 页面分享链接 -->
<div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; margin: 20px 0;">
  <iframe 
    src="YOUR_NOTION_SHARE_LINK"
    style="position: absolute; top: 0; left: 0; width: 100%; height: 600px; border: 1px solid #ddd; border-radius: 8px;"
    frameborder="0"
    allowfullscreen>
  </iframe>
</div>

<details style="margin: 20px 0; padding: 15px; background: #f8f9fa; border-radius: 8px;">
  <summary style="cursor: pointer; font-weight: bold;">🔧 如何设置 Notion 嵌入</summary>
  <div style="margin-top: 10px;">
    <ol>
      <li>在 Notion 中创建一个新页面（如"Research Tracker"）</li>
      <li>创建数据库，添加以下字段：
        <ul>
          <li>Paper Title（标题）</li>
          <li>Status（状态：Writing / Under Review / Accepted / Revision）</li>
          <li>Target Venue（目标期刊/会议）</li>
          <li>Deadline（截止日期）</li>
          <li>Priority（优先级）</li>
          <li>Notes（备注）</li>
        </ul>
      </li>
      <li>点击页面右上角 "Share" → "Share to web"</li>
      <li>开启 "Allow editing"（如果想在嵌入页面中直接编辑）</li>
      <li>复制链接，替换上面的 YOUR_NOTION_SHARE_LINK</li>
    </ol>
    <p><strong>手机访问：</strong>下载 Notion App，登录后可以随时编辑数据库</p>
  </div>
</details>

---

<h2 id="calendar">📅 研究日程日历</h2>

<!-- Google Calendar 嵌入示例 -->
<div style="margin: 20px 0;">
  <iframe 
    src="https://calendar.google.com/calendar/embed?src=YOUR_CALENDAR_ID&ctz=Asia%2FShanghai"
    style="border: 1px solid #ddd; border-radius: 8px;" 
    width="100%" 
    height="600" 
    frameborder="0" 
    scrolling="no">
  </iframe>
</div>

<details style="margin: 20px 0; padding: 15px; background: #f8f9fa; border-radius: 8px;">
  <summary style="cursor: pointer; font-weight: bold;">🔧 如何设置 Google Calendar 嵌入</summary>
  <div style="margin-top: 10px;">
    <ol>
      <li>访问 <a href="https://calendar.google.com" target="_blank">Google Calendar</a></li>
      <li>创建新日历（如"Research Deadlines"）或使用现有日历</li>
      <li>点击日历设置 → "Integrate calendar"</li>
      <li>找到 "Embed code"，复制 iframe 代码</li>
      <li>替换上面的代码（或设置为公开并使用日历 ID）</li>
    </ol>
    <p><strong>使用场景：</strong></p>
    <ul>
      <li>📌 会议投稿截止日期</li>
      <li>📌 审稿结果预计时间</li>
      <li>📌 会议举办日期</li>
      <li>📌 导师会议时间</li>
    </ul>
    <p><strong>手机访问：</strong>使用 Google Calendar App 可以添加提醒和快速编辑</p>
  </div>
</details>

---

<h2 id="quick-notes">💡 快速想法收集</h2>

<div style="background: #fff; padding: 20px; border: 2px dashed #ccc; border-radius: 8px; margin: 20px 0;">
  <h3>推荐的快速笔记工具：</h3>
  
  <div style="margin: 15px 0;">
    <strong>方案 1: Google Keep（最简单）</strong>
    <ul>
      <li>✅ 手机端超快速记录</li>
      <li>✅ 支持语音输入</li>
      <li>✅ 可以设置提醒</li>
      <li>❌ 无法直接嵌入网页（但可以通过扩展程序实现）</li>
    </ul>
  </div>

  <div style="margin: 15px 0;">
    <strong>方案 2: Airtable（最强大）</strong>
    <ul>
      <li>✅ 可嵌入网页</li>
      <li>✅ 结构化数据管理</li>
      <li>✅ 多种视图（表格/看板/日历）</li>
      <li>✅ 手机 App 体验好</li>
    </ul>
  </div>
</div>

<!-- Airtable 嵌入示例 -->
<div style="margin: 20px 0;">
  <iframe 
    class="airtable-embed" 
    src="YOUR_AIRTABLE_SHARE_LINK" 
    frameborder="0" 
    onmousewheel="" 
    width="100%" 
    height="533" 
    style="background: transparent; border: 1px solid #ccc; border-radius: 8px;">
  </iframe>
</div>

<details style="margin: 20px 0; padding: 15px; background: #f8f9fa; border-radius: 8px;">
  <summary style="cursor: pointer; font-weight: bold;">🔧 如何设置 Airtable 嵌入</summary>
  <div style="margin-top: 10px;">
    <ol>
      <li>访问 <a href="https://airtable.com" target="_blank">Airtable</a> 并注册（免费版即可）</li>
      <li>创建一个新的 Base，如"Research Ideas"</li>
      <li>设置字段：
        <ul>
          <li>Idea Title（想法标题）</li>
          <li>Category（类别：Paper Idea / Collaboration / Tool）</li>
          <li>Priority（优先级）</li>
          <li>Date Added（添加日期）</li>
          <li>Status（状态）</li>
          <li>Notes（详细说明）</li>
        </ul>
      </li>
      <li>点击 "Share" → "Embed this view"</li>
      <li>复制嵌入代码并替换上面的 YOUR_AIRTABLE_SHARE_LINK</li>
    </ol>
    <p><strong>手机访问：</strong>下载 Airtable App，可以像使用数据库一样管理想法</p>
  </div>
</details>

---

<h2 id="alternative-tools">🛠️ 其他推荐工具</h2>

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 20px; margin: 20px 0;">
  
  <div style="padding: 20px; background: #f8f9fa; border-radius: 8px; border-left: 4px solid #4285f4;">
    <h3>📋 Trello</h3>
    <p><strong>适合：</strong>项目看板管理</p>
    <p><strong>优点：</strong></p>
    <ul>
      <li>可视化任务流程</li>
      <li>拖拽式操作</li>
      <li>手机 App 流畅</li>
    </ul>
    <p><a href="https://trello.com" target="_blank">访问 Trello →</a></p>
  </div>

  <div style="padding: 20px; background: #f8f9fa; border-radius: 8px; border-left: 4px solid #34a853;">
    <h3>📊 Google Sheets</h3>
    <p><strong>适合：</strong>表格数据追踪</p>
    <p><strong>优点：</strong></p>
    <ul>
      <li>熟悉的表格界面</li>
      <li>可嵌入网页</li>
      <li>实时协作</li>
    </ul>
    <p><a href="https://sheets.google.com" target="_blank">访问 Google Sheets →</a></p>
  </div>

  <div style="padding: 20px; background: #f8f9fa; border-radius: 8px; border-left: 4px solid #ea4335;">
    <h3>🔖 Raindrop.io</h3>
    <p><strong>适合：</strong>文献书签管理</p>
    <p><strong>优点：</strong></p>
    <ul>
      <li>收藏论文链接</li>
      <li>标签分类</li>
      <li>全平台同步</li>
    </ul>
    <p><a href="https://raindrop.io" target="_blank">访问 Raindrop →</a></p>
  </div>

</div>

---

## 🎯 推荐的工作流程

<div style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); color: white; padding: 25px; border-radius: 12px; margin: 30px 0;">
  <h3 style="color: white; margin-top: 0;">💡 我的推荐组合</h3>
  <ol style="line-height: 1.8;">
    <li><strong>Notion</strong> - 主要的研究数据库和项目管理</li>
    <li><strong>Google Calendar</strong> - 重要截止日期和会议提醒</li>
    <li><strong>Airtable</strong> - 快速想法收集和数据追踪</li>
    <li><strong>Google Keep</strong> - 临时笔记和灵感（手机端）</li>
  </ol>
</div>

---

<div style="background-color: #e7f3ff; padding: 20px; margin-top: 30px; border-left: 4px solid #2196F3; border-radius: 8px;">
  <strong>📱 手机访问提示：</strong>
  <ul>
    <li>🔖 将本页面添加到手机浏览器书签</li>
    <li>📲 下载对应的 App（Notion、Airtable、Google Calendar）</li>
    <li>🔄 所有更改会自动同步到网页嵌入的内容</li>
    <li>🔐 确保设置合适的隐私权限（推荐使用"通过链接访问"）</li>
  </ul>
</div>

