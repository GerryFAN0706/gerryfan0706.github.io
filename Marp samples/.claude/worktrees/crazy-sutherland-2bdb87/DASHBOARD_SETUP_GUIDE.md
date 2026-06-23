# 📊 Research Dashboard 设置指南

## 🎯 页面访问
- **URL**: `https://gerryfan0706.github.io/research-dashboard/`
- **手机访问**: 建议添加到浏览器书签

---

## ⚡ 快速开始（3步完成）

### 步骤 1: 选择工具组合

我推荐的最佳组合：
```
🥇 Notion（主力）- 研究项目管理
🥈 Google Calendar - 截止日期追踪  
🥉 Google Keep - 快速笔记（可选）
```

### 步骤 2: 设置 Notion（推荐！）

**为什么选 Notion？**
- ✅ 手机 App 体验最好
- ✅ 功能最强大（数据库 + 笔记）
- ✅ 免费版功能足够
- ✅ 支持多种视图

**设置步骤：**

1. **注册 Notion**
   - 访问：https://notion.so
   - 使用 Google 账号快速注册

2. **创建研究数据库**
   - 点击 "New Page" → "Database" → "Table"
   - 命名为 "Research Tracker"
   
3. **添加字段**（推荐配置）
   ```
   - Title (标题) - 默认字段
   - Status (状态) - Select 类型
     选项：💭 Idea | ✍️ Writing | 📤 Submitted | 📝 Revision | ✅ Accepted
   - Venue (期刊/会议) - Text
   - Deadline (截止日期) - Date
   - Priority (优先级) - Select
     选项：🔴 High | 🟡 Medium | 🟢 Low
   - Notes (备注) - Text (long)
   ```

4. **获取嵌入链接**
   - 点击右上角 "Share"
   - 开启 "Share to web"
   - 开启 "Allow editing"（这样可以在网页中直接编辑）
   - 复制链接

5. **添加到网站**
   - 编辑 `_pages/research-dashboard.md`
   - 找到 `YOUR_NOTION_SHARE_LINK`
   - 替换为你的 Notion 链接

6. **手机访问**
   - 下载 Notion App（iOS/Android）
   - 登录后可以随时编辑数据库

---

### 步骤 3: 设置 Google Calendar

**用途：** 追踪重要日期

1. **创建专用日历**
   - 访问：https://calendar.google.com
   - 左侧点击 "+" → "Create new calendar"
   - 命名为 "Research Deadlines"

2. **获取嵌入代码**
   - 点击日历名称旁的 "⋮" → "Settings and sharing"
   - 滚动到 "Access permissions"
   - 勾选 "Make available to public"
   - 滚动到 "Integrate calendar"
   - 复制 "Embed code" 中的 iframe 代码

3. **添加到网站**
   - 编辑 `_pages/research-dashboard.md`
   - 替换 Google Calendar 部分的 iframe 代码

4. **添加事件示例**
   ```
   - 2025-11-04: CHI 2026 Review Released
   - 2025-12-22: FSE 2026 Initial Notification
   - 2026-02-01: IJCAI 2026 Submission Deadline
   ```

---

## 📱 手机使用指南

### 方案 A: 主要通过 App（推荐）

1. **下载这些 App：**
   - Notion（必备）
   - Google Calendar（必备）
   - Google Keep（可选，用于快速笔记）

2. **工作流程：**
   ```
   有新想法 → 打开 Notion App → 添加新条目
   查看日程 → 打开 Google Calendar
   快速笔记 → Google Keep（稍后整理到 Notion）
   ```

### 方案 B: 通过网页访问

1. **添加书签**
   - 在手机浏览器打开：`https://gerryfan0706.github.io/research-dashboard/`
   - 添加到书签/主屏幕

2. **使用场景**
   - 出门在外快速查看所有信息
   - 在嵌入的 Notion 中直接编辑

---

## 🔧 其他工具选项

### Airtable（如果你喜欢表格）

**优点：**
- 类似 Excel 但更强大
- 多种视图（表格/看板/日历/画廊）
- 手机 App 很好用

**设置：**
1. 注册：https://airtable.com
2. 创建 Base → "Research Ideas"
3. Share → "Embed this view"
4. 复制代码到网站

### Google Sheets（最简单）

**优点：**
- 熟悉的界面
- 即刻上手

**设置：**
1. 创建 Google Sheet
2. File → Share → Publish to web
3. 选择 "Embed"
4. 复制 iframe 代码

---

## 💡 实用技巧

### 1. 快速记录灵感（随时随地）

**在地铁/咖啡厅突然有想法？**
```
Option 1: 打开 Notion App → 点击 "+" → 快速添加
Option 2: 打开 Google Keep → 语音输入 → 稍后整理
Option 3: 给自己发邮件 → 定期整理到 Notion
```

### 2. 定期回顾

建议每周五花10分钟：
- ✅ 更新论文状态
- ✅ 检查即将到来的截止日期
- ✅ 将想法从 Keep 迁移到 Notion
- ✅ 调整优先级

### 3. 隐私保护

- 🔒 Notion: 使用 "Share to web" 而不是完全公开
- 🔒 只分享链接给自己，不要提交到搜索引擎
- 🔒 Dashboard 页面已设置 `robots: noindex`

### 4. 多设备同步

所有推荐的工具都支持自动同步：
- 手机上添加 → 网页上即刻显示
- 网页上编辑 → 手机 App 自动更新

---

## 🎨 自定义建议

### Notion 视图建议

1. **Table View（表格视图）** - 默认，适合整体浏览
2. **Board View（看板视图）** - 按状态分组，拖拽更新状态
3. **Calendar View（日历视图）** - 按截止日期排列
4. **Gallery View（画廊视图）** - 卡片式展示

在 Notion 中点击 "+ Add a view" 来创建不同视图

---

## ❓ 常见问题

**Q: 我必须使用所有工具吗？**  
A: 不需要！我建议只用 Notion + Google Calendar，已经足够强大。

**Q: 免费版够用吗？**  
A: 完全够用！Notion 和 Airtable 的免费版对个人使用完全足够。

**Q: 嵌入的内容能在手机上编辑吗？**  
A: 可以，但建议下载对应的 App，体验更好。

**Q: 如果我不想嵌入到网页怎么办？**  
A: 你可以只用 App，不嵌入。网页嵌入只是为了方便在一个地方查看所有信息。

**Q: 数据安全吗？**  
A: 只要你：
1. 不分享链接给别人
2. 使用 "Share to web" 而非完全公开
3. Dashboard 页面已设置不被搜索引擎索引

数据就是安全的。

---

## 📞 需要帮助？

如果设置过程中遇到问题：
1. 查看各工具的官方文档
2. Notion 有中文教程：https://www.notion.so/zh-cn/help
3. Google Calendar 帮助：https://support.google.com/calendar

---

## 🚀 下一步

1. ✅ 选择 Notion 或 Airtable（推荐 Notion）
2. ✅ 注册并创建数据库
3. ✅ 导入你现有的论文数据（从 unpublished-papers.md）
4. ✅ 获取嵌入链接
5. ✅ 更新 research-dashboard.md
6. ✅ 推送到 GitHub
7. ✅ 在手机上测试

**预计耗时：** 15-30 分钟

祝你的研究管理更加高效！🎉













