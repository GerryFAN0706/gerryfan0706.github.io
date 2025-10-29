---
permalink: /workshop/aiedu/ppt/
title: "AI驱动的课程PPT生成 - 教学材料制作案例"
author_profile: false
layout: single
---

<style>
:root {
  --primary-color: #2563eb;
  --secondary-color: #7c3aed;
  --success-color: #10b981;
  --warning-color: #f59e0b;
  --danger-color: #ef4444;
  --dark-bg: #1f2937;
  --light-bg: #f9fafb;
  --code-bg: #282c34;
}

.demo-container {
  max-width: 1400px;
  margin: 0 auto;
  padding: 20px;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
}

.hero-section {
  background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);
  color: white;
  padding: 60px 40px;
  border-radius: 20px;
  margin-bottom: 40px;
  text-align: center;
  box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1);
}

.hero-section h1 {
  font-size: 2.5em;
  margin: 0 0 15px 0;
  font-weight: 700;
}

.hero-section .subtitle {
  font-size: 1.3em;
  margin-bottom: 10px;
  opacity: 0.95;
}

.hero-section .course-info {
  font-size: 1.1em;
  opacity: 0.9;
  margin-top: 15px;
}

.nav-pills {
  display: flex;
  gap: 15px;
  margin-bottom: 40px;
  flex-wrap: wrap;
  background: white;
  padding: 20px;
  border-radius: 12px;
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
  position: sticky;
  top: 10px;
  z-index: 100;
}

.nav-pill {
  padding: 12px 24px;
  background: var(--light-bg);
  color: var(--dark-bg);
  border-radius: 8px;
  cursor: pointer;
  transition: all 0.3s ease;
  font-weight: 600;
  border: 2px solid transparent;
  text-decoration: none;
  display: inline-block;
}

.nav-pill:hover {
  background: var(--primary-color);
  color: white;
  transform: translateY(-2px);
}

.section {
  background: white;
  padding: 40px;
  border-radius: 16px;
  margin-bottom: 30px;
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
}

.section-title {
  font-size: 2em;
  color: var(--dark-bg);
  margin-bottom: 25px;
  padding-bottom: 15px;
  border-bottom: 3px solid var(--primary-color);
  display: flex;
  align-items: center;
  gap: 15px;
}

.section-icon {
  width: 50px;
  height: 50px;
  background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
  border-radius: 12px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 24px;
}

.method-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 30px;
  margin: 30px 0;
}

.method-card {
  background: var(--light-bg);
  padding: 30px;
  border-radius: 12px;
  border-top: 4px solid var(--primary-color);
  transition: all 0.3s ease;
}

.method-card:nth-child(1) {
  border-top-color: #e06c75;
}

.method-card:nth-child(2) {
  border-top-color: #61afef;
}

.method-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1);
}

.method-card h3 {
  margin: 0 0 15px 0;
  font-size: 1.5em;
  color: var(--dark-bg);
}

.method-badge {
  display: inline-block;
  padding: 6px 14px;
  background: white;
  border-radius: 15px;
  font-size: 0.85em;
  font-weight: 600;
  margin-bottom: 15px;
}

.method-card:nth-child(1) .method-badge {
  color: #e06c75;
  border: 2px solid #e06c75;
}

.method-card:nth-child(2) .method-badge {
  color: #61afef;
  border: 2px solid #61afef;
}

.alert-box {
  padding: 20px;
  border-radius: 10px;
  margin: 20px 0;
  display: flex;
  gap: 15px;
  align-items: flex-start;
}

.alert-box.info {
  background: #dbeafe;
  border-left: 4px solid var(--primary-color);
  color: #1e40af;
}

.alert-box.success {
  background: #d1fae5;
  border-left: 4px solid var(--success-color);
  color: #065f46;
}

.alert-box.warning {
  background: #fef3c7;
  border-left: 4px solid var(--warning-color);
  color: #92400e;
}

.alert-icon {
  font-size: 1.5em;
  flex-shrink: 0;
}

.workflow-steps {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 25px;
  margin: 30px 0;
}

.step-card {
  background: var(--light-bg);
  padding: 25px;
  border-radius: 12px;
  border-left: 4px solid var(--primary-color);
  transition: all 0.3s ease;
}

.step-card:hover {
  transform: translateX(5px);
  box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1);
}

.step-number {
  width: 40px;
  height: 40px;
  background: var(--primary-color);
  color: white;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  font-weight: 700;
  font-size: 1.2em;
  margin-bottom: 15px;
}

.step-title {
  font-size: 1.3em;
  font-weight: 700;
  margin-bottom: 10px;
  color: var(--dark-bg);
}

.step-description {
  color: #4b5563;
  line-height: 1.6;
  margin-bottom: 15px;
}

.tool-badge {
  display: inline-block;
  padding: 5px 12px;
  background: white;
  border: 2px solid var(--primary-color);
  color: var(--primary-color);
  border-radius: 20px;
  font-size: 0.85em;
  font-weight: 600;
  margin-right: 8px;
  margin-top: 8px;
}

.code-example {
  background: var(--code-bg);
  color: #abb2bf;
  padding: 25px;
  border-radius: 12px;
  margin: 20px 0;
  overflow-x: auto;
  font-family: 'Consolas', 'Monaco', 'Courier New', monospace;
  font-size: 0.95em;
  line-height: 1.6;
}

.code-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 15px;
  padding-bottom: 10px;
  border-bottom: 1px solid #4b5563;
}

.code-title {
  color: #61afef;
  font-weight: 600;
}

.code-lang {
  background: #4b5563;
  padding: 4px 10px;
  border-radius: 6px;
  font-size: 0.85em;
  color: #abb2bf;
}

.comparison-table {
  width: 100%;
  border-collapse: collapse;
  margin: 25px 0;
  background: white;
  border-radius: 8px;
  overflow: hidden;
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}

.comparison-table th {
  background: var(--primary-color);
  color: white;
  padding: 15px;
  text-align: left;
  font-weight: 600;
}

.comparison-table td {
  padding: 15px;
  border-bottom: 1px solid #e5e7eb;
}

.comparison-table tr:last-child td {
  border-bottom: none;
}

.comparison-table tr:hover {
  background: var(--light-bg);
}

.feature-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 20px;
  margin: 25px 0;
}

.feature-item {
  display: flex;
  align-items: flex-start;
  gap: 12px;
  padding: 15px;
  background: var(--light-bg);
  border-radius: 8px;
}

.feature-icon {
  font-size: 1.5em;
  flex-shrink: 0;
}

.feature-content h4 {
  margin: 0 0 5px 0;
  color: var(--dark-bg);
  font-size: 1em;
}

.feature-content p {
  margin: 0;
  color: #6b7280;
  font-size: 0.9em;
  line-height: 1.5;
}

.back-button {
  display: inline-block;
  padding: 12px 24px;
  background: white;
  color: var(--primary-color);
  border: 2px solid var(--primary-color);
  border-radius: 8px;
  text-decoration: none;
  font-weight: 600;
  margin-bottom: 20px;
  transition: all 0.3s ease;
}

.back-button:hover {
  background: var(--primary-color);
  color: white;
  transform: translateX(-5px);
}

@media (max-width: 768px) {
  .method-grid {
    grid-template-columns: 1fr;
  }
  
  .hero-section h1 {
    font-size: 1.8em;
  }
  
  .section {
    padding: 25px;
  }
}
</style>

<div class="demo-container">
  <a href="/workshop/aiedu/" class="back-button">← 返回案例总览</a>

  <div class="hero-section">
    <h1>📊 AI驱动的课程PPT生成</h1>
    <p class="subtitle">在 Cursor 中使用 Beamer 和 Marp 快速制作专业教学PPT</p>
    <p class="course-info">📚 多门课程通用 | 👨‍🏫 樊光瑞</p>
  </div>

  <div class="nav-pills">
    <a class="nav-pill" href="#overview">📋 方案概述</a>
    <a class="nav-pill" href="#methods">🔀 两种技术路线</a>
    <a class="nav-pill" href="#workflow">🔄 PPT重构流程</a>
    <a class="nav-pill" href="#beamer">📕 Beamer 方式</a>
    <a class="nav-pill" href="#marp">📘 Marp 方式</a>
    <a class="nav-pill" href="#auto-upload">🚀 自动化发布</a>
    <a class="nav-pill" href="#detailed-example">📝 完整示例</a>
  </div>

  <!-- 方案概述 -->
  <section id="overview" class="section">
    <h2 class="section-title">
      <span class="section-icon">📋</span>
      方案概述
    </h2>

    <p style="font-size: 1.1em; line-height: 1.8; color: #4b5563; margin-bottom: 25px;">
      教学PPT制作是教师最耗时的工作之一。传统使用 PowerPoint 制作PPT，效率低、版本管理混乱、难以复用。本方案使用 <strong>纯文本</strong>（LaTeX Beamer 或 Markdown）配合 <strong>Cursor AI</strong>，实现PPT的快速生成、智能重构和版本控制。
    </p>

    <div class="alert-box info">
      <span class="alert-icon">💡</span>
      <div>
        <strong>核心优势：</strong>
        <ul style="margin: 10px 0 0 20px; line-height: 1.8;">
          <li><strong>纯文本编辑：</strong>使用 LaTeX/Markdown，可以用 Git 版本控制</li>
          <li><strong>Cursor 内完成：</strong>编辑、预览、生成一站式完成，无需切换软件</li>
          <li><strong>AI 智能重构：</strong>根据教学大纲和旧PPT内容，AI 自动优化结构</li>
          <li><strong>自动添加示例：</strong>AI 生成合适的代码示例和图表</li>
          <li><strong>一键发布：</strong>自动上传到 GitHub/Gitee，团队共享</li>
        </ul>
      </div>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 30px;">🎯 适用场景</h3>
    <div class="feature-grid">
      <div class="feature-item">
        <span class="feature-icon">📚</span>
        <div class="feature-content">
          <h4>新课程PPT制作</h4>
          <p>从教学大纲快速生成完整PPT框架</p>
        </div>
      </div>

      <div class="feature-item">
        <span class="feature-icon">🔄</span>
        <div class="feature-content">
          <h4>旧PPT重构</h4>
          <p>优化老旧PPT的结构和内容</p>
        </div>
      </div>

      <div class="feature-item">
        <span class="feature-icon">➕</span>
        <div class="feature-content">
          <h4>自动添加示例</h4>
          <p>AI生成代码示例和可视化图表</p>
        </div>
      </div>

      <div class="feature-item">
        <span class="feature-icon">🎨</span>
        <div class="feature-content">
          <h4>美化与排版</h4>
          <p>专业的学术风格模板</p>
        </div>
      </div>

      <div class="feature-item">
        <span class="feature-icon">🔗</span>
        <div class="feature-content">
          <h4>版本管理</h4>
          <p>Git管理，多人协作</p>
        </div>
      </div>

      <div class="feature-item">
        <span class="feature-icon">📤</span>
        <div class="feature-content">
          <h4>一键发布</h4>
          <p>自动推送到代码仓库</p>
        </div>
      </div>
    </div>
  </section>

  <!-- 两种技术路线 -->
  <section id="methods" class="section">
    <h2 class="section-title">
      <span class="section-icon">🔀</span>
      两种技术路线对比
    </h2>

    <div class="method-grid">
      <!-- Beamer 方式 -->
      <div class="method-card">
        <span class="method-badge">📕 LaTeX Beamer</span>
        <h3>方式一：LaTeX Beamer</h3>
        <p style="color: #6b7280; margin-bottom: 15px;">
          使用 LaTeX 的 Beamer 宏包制作学术风格的PPT
        </p>
        
        <h4 style="color: var(--dark-bg); margin-top: 20px;">✅ 优势</h4>
        <ul style="color: #4b5563; line-height: 1.8;">
          <li>数学公式排版完美（适合算法、理论课）</li>
          <li>学术风格专业</li>
          <li>代码高亮美观</li>
          <li>输出PDF质量高</li>
        </ul>

        <h4 style="color: var(--dark-bg); margin-top: 20px;">⚠️ 劣势</h4>
        <ul style="color: #4b5563; line-height: 1.8;">
          <li>学习曲线较陡</li>
          <li>编译速度较慢</li>
          <li>调试复杂</li>
        </ul>

        <h4 style="color: var(--dark-bg); margin-top: 20px;">🎯 适用课程</h4>
        <p style="color: #4b5563; line-height: 1.8;">
          数据结构、算法设计、编译原理等理论性强的课程
        </p>
      </div>

      <!-- Marp 方式 -->
      <div class="method-card">
        <span class="method-badge">📘 Markdown (Marp)</span>
        <h3>方式二：Markdown + Marp</h3>
        <p style="color: #6b7280; margin-bottom: 15px;">
          使用 Markdown 语法 + Marp 插件制作现代风格的PPT
        </p>
        
        <h4 style="color: var(--dark-bg); margin-top: 20px;">✅ 优势</h4>
        <ul style="color: #4b5563; line-height: 1.8;">
          <li>语法简单，易于上手</li>
          <li>实时预览，所见即所得</li>
          <li>编译速度快</li>
          <li>样式现代、灵活</li>
        </ul>

        <h4 style="color: var(--dark-bg); margin-top: 20px;">⚠️ 劣势</h4>
        <ul style="color: #4b5563; line-height: 1.8;">
          <li>数学公式不如 Beamer 完美</li>
          <li>自定义样式需要CSS知识</li>
        </ul>

        <h4 style="color: var(--dark-bg); margin-top: 20px;">🎯 适用课程</h4>
        <p style="color: #4b5563; line-height: 1.8;">
          Java Web、数据库、软件工程等实践性强的课程
        </p>
      </div>
    </div>

    <div class="alert-box success">
      <span class="alert-icon">🎓</span>
      <div>
        <strong>推荐策略：</strong>根据课程特点选择合适的工具。对于数学公式多的理论课，选择 <strong>Beamer</strong>；对于代码示例多的实践课，选择 <strong>Marp</strong>。两种方式都可以在 Cursor 中完成，都支持 AI 辅助和实时预览。
      </div>
    </div>
  </section>

  <!-- PPT重构流程 -->
  <section id="workflow" class="section">
    <h2 class="section-title">
      <span class="section-icon">🔄</span>
      PPT 重构的完整工作流程
    </h2>

    <p style="font-size: 1.1em; line-height: 1.8; color: #4b5563; margin-bottom: 25px;">
      以下展示如何使用 Cursor AI 将一份旧的 PowerPoint PPT（或现有的教学内容）重构为高质量的 Beamer/Marp PPT。
    </p>

    <div class="workflow-steps">
      <div class="step-card">
        <div class="step-number">1</div>
        <h3 class="step-title">准备原始材料</h3>
        <p class="step-description">
          收集旧PPT的内容（可以是 .pptx 导出的文本）、教学大纲、课程要点等材料。
        </p>
        <span class="tool-badge">PPT 文本提取</span>
      </div>

      <div class="step-card">
        <div class="step-number">2</div>
        <h3 class="step-title">在 Cursor 中新建文件</h3>
        <p class="step-description">
          创建 .tex（Beamer）或 .md（Marp）文件，选择合适的模板。
        </p>
        <span class="tool-badge">Cursor</span>
      </div>

      <div class="step-card">
        <div class="step-number">3</div>
        <h3 class="step-title">AI 分析与重构</h3>
        <p class="step-description">
          使用 Cursor AI（Ctrl+K）分析原始内容，按照教学大纲重新组织结构。
        </p>
        <span class="tool-badge">Cursor AI</span>
      </div>

      <div class="step-card">
        <div class="step-number">4</div>
        <h3 class="step-title">AI 生成示例代码</h3>
        <p class="step-description">
          让 AI 为每个知识点生成合适的代码示例、图表、动画。
        </p>
        <span class="tool-badge">GPT-4</span>
      </div>

      <div class="step-card">
        <div class="step-number">5</div>
        <h3 class="step-title">实时预览调整</h3>
        <p class="step-description">
          使用 Cursor 的预览功能实时查看效果，边写边调整。
        </p>
        <span class="tool-badge">PDF 预览</span>
      </div>

      <div class="step-card">
        <div class="step-number">6</div>
        <h3 class="step-title">编译生成PDF</h3>
        <p class="step-description">
          在 Cursor 终端中编译生成最终的 PDF 文件。
        </p>
        <span class="tool-badge">XeLaTeX / Marp CLI</span>
      </div>

      <div class="step-card">
        <div class="step-number">7</div>
        <h3 class="step-title">版本控制</h3>
        <p class="step-description">
          提交到 Git 仓库，记录每次修改，方便回溯和协作。
        </p>
        <span class="tool-badge">Git</span>
      </div>

      <div class="step-card">
        <div class="step-number">8</div>
        <h3 class="step-title">自动发布</h3>
        <p class="step-description">
          推送到 GitHub/Gitee，自动发布到课程网站或分享给学生。
        </p>
        <span class="tool-badge">GitHub Actions</span>
      </div>
    </div>
  </section>

  <!-- Beamer 详细说明 -->
  <section id="beamer" class="section">
    <h2 class="section-title">
      <span class="section-icon">📕</span>
      方式一：LaTeX Beamer 制作流程
    </h2>

    <h3 style="color: var(--dark-bg); margin-bottom: 20px;">🔧 在 Cursor 中配置 Beamer 环境</h3>

    <div class="alert-box info">
      <span class="alert-icon">📦</span>
      <div>
        <strong>前置准备：</strong>
        <ul style="margin: 10px 0 0 20px; line-height: 1.8;">
          <li>安装 TeX Live 或 MiKTeX（LaTeX 发行版）</li>
          <li>在 Cursor 中安装 <strong>LaTeX Workshop</strong> 扩展</li>
          <li>配置 PDF 预览功能</li>
        </ul>
      </div>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 30px; margin-bottom: 20px;">📝 Beamer 基础模板</h3>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">lecture_template.tex - Beamer 模板</span>
        <span class="code-lang">LaTeX</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;"><span style="color: #c678dd;">\\documentclass</span>{beamer}

<span style="color: #7f848e;">% 主题选择</span>
<span style="color: #c678dd;">\\usetheme</span>{Madrid}  <span style="color: #7f848e;">% 或 Berkeley, CambridgeUS 等</span>
<span style="color: #c678dd;">\\usecolortheme</span>{dolphin}

<span style="color: #7f848e;">% 中文支持</span>
<span style="color: #c678dd;">\\usepackage</span>{ctex}
<span style="color: #c678dd;">\\usepackage</span>{xeCJK}

<span style="color: #7f848e;">% 代码高亮</span>
<span style="color: #c678dd;">\\usepackage</span>{listings}
<span style="color: #c678dd;">\\usepackage</span>{xcolor}

<span style="color: #7f848e;">% 配置 Java 代码样式</span>
<span style="color: #c678dd;">\\lstset</span>{
    language=Java,
    basicstyle=<span style="color: #c678dd;">\\ttfamily\\small</span>,
    keywordstyle=<span style="color: #c678dd;">\\color</span>{blue},
    commentstyle=<span style="color: #c678dd;">\\color</span>{gray},
    stringstyle=<span style="color: #c678dd;">\\color</span>{red},
    numbers=left,
    numberstyle=<span style="color: #c678dd;">\\tiny\\color</span>{gray},
    frame=single,
    breaklines=<span style="color: #d19a66;">true</span>
}

<span style="color: #7f848e;">% 标题信息</span>
<span style="color: #c678dd;">\\title</span>{Java Web 开发 - 第3讲}
<span style="color: #c678dd;">\\subtitle</span>{Servlet 与 HTTP 请求处理}
<span style="color: #c678dd;">\\author</span>{樊光瑞}
<span style="color: #c678dd;">\\institute</span>{太原科技大学 计算机学院}
<span style="color: #c678dd;">\\date</span>{<span style="color: #c678dd;">\\today</span>}

<span style="color: #c678dd;">\\begin</span>{document}

<span style="color: #7f848e;">% 标题页</span>
<span style="color: #c678dd;">\\frame</span>{<span style="color: #c678dd;">\\titlepage</span>}

<span style="color: #7f848e;">% 目录页</span>
<span style="color: #c678dd;">\\begin</span>{frame}{目录}
    <span style="color: #c678dd;">\\tableofcontents</span>
<span style="color: #c678dd;">\\end</span>{frame}

<span style="color: #7f848e;">% 第一部分</span>
<span style="color: #c678dd;">\\section</span>{Servlet 基础}

<span style="color: #c678dd;">\\begin</span>{frame}{什么是 Servlet？}
    <span style="color: #c678dd;">\\begin</span>{itemize}
        <span style="color: #c678dd;">\\item</span> Servlet 是运行在服务器端的 Java 程序
        <span style="color: #c678dd;">\\item</span> 用于处理客户端的 HTTP 请求并生成响应
        <span style="color: #c678dd;">\\item</span> 是 Java Web 开发的核心技术之一
    <span style="color: #c678dd;">\\end</span>{itemize}
<span style="color: #c678dd;">\\end</span>{frame}

<span style="color: #c678dd;">\\begin</span>{frame}[fragile]{Servlet 代码示例}
    <span style="color: #c678dd;">\\begin</span>{lstlisting}
<span style="color: #c678dd;">public class</span> <span style="color: #e5c07b;">HelloServlet</span> <span style="color: #c678dd;">extends</span> <span style="color: #e5c07b;">HttpServlet</span> {
    <span style="color: #c678dd;">protected void</span> <span style="color: #61afef;">doGet</span>(HttpServletRequest req, 
                             HttpServletResponse resp) {
        resp.setContentType(<span style="color: #98c379;">"text/html;charset=UTF-8"</span>);
        PrintWriter out = resp.getWriter();
        out.println(<span style="color: #98c379;">"&lt;h1&gt;Hello, Servlet!&lt;/h1&gt;"</span>);
    }
}
    <span style="color: #c678dd;">\\end</span>{lstlisting}
<span style="color: #c678dd;">\\end</span>{frame}

<span style="color: #c678dd;">\\end</span>{document}</pre>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 30px; margin-bottom: 20px;">🤖 使用 Cursor AI 重构 Beamer PPT</h3>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">Cursor 提示词：重构旧PPT</span>
        <span class="code-lang">Cursor Prompt</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;">请帮我将以下PPT内容重构为 LaTeX Beamer 格式：

<span style="color: #98c379;">【原始PPT内容】</span>
[粘贴旧PPT的文字内容]

<span style="color: #98c379;">【教学大纲要点】</span>
1. Servlet 生命周期
2. doGet 和 doPost 方法
3. 请求参数获取
4. 响应内容设置
5. 实际应用案例

<span style="color: #98c379;">【重构要求】</span>
1. 按照教学大纲重新组织内容结构
2. 每个知识点一个 section
3. 为每个知识点添加：
   - 概念解释（简洁清晰）
   - 代码示例（完整可运行）
   - 应用场景说明
4. 使用 Madrid 主题
5. 添加适当的动画效果（\\pause, \\onslide 等）
6. 确保中文显示正常

请生成完整的 .tex 文件代码。</pre>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 30px; margin-bottom: 20px;">▶️ 在 Cursor 中实时预览</h3>

    <div class="workflow-steps">
      <div class="step-card">
        <div class="step-number">1</div>
        <h3 class="step-title">安装 LaTeX Workshop</h3>
        <p class="step-description">
          在 Cursor 扩展商店搜索 "LaTeX Workshop"，点击安装
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">2</div>
        <h3 class="step-title">配置编译命令</h3>
        <p class="step-description">
          在 settings.json 中配置使用 XeLaTeX 编译（支持中文）
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">3</div>
        <h3 class="step-title">Ctrl+S 保存即编译</h3>
        <p class="step-description">
          保存文件后自动编译，几秒钟后在侧边栏看到 PDF 预览
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">4</div>
        <h3 class="step-title">实时调整</h3>
        <p class="step-description">
          修改代码，保存后立即看到效果，快速迭代
        </p>
      </div>
    </div>

    <div class="alert-box warning">
      <span class="alert-icon">⏱️</span>
      <div>
        <strong>时间对比：</strong>
        <ul style="margin: 10px 0 0 20px; line-height: 1.8;">
          <li><strong>传统 PowerPoint：</strong>制作一节课（40-50页）PPT 需要 <strong>3-4 小时</strong></li>
          <li><strong>Beamer + Cursor AI：</strong>同样的内容只需 <strong>30-40 分钟</strong></li>
          <li><strong>效率提升：</strong>约 <strong>5-6 倍</strong></li>
        </ul>
      </div>
    </div>
  </section>

  <!-- Marp 详细说明 -->
  <section id="marp" class="section">
    <h2 class="section-title">
      <span class="section-icon">📘</span>
      方式二：Markdown + Marp 制作流程
    </h2>

    <h3 style="color: var(--dark-bg); margin-bottom: 20px;">🔧 在 Cursor 中配置 Marp</h3>

    <div class="alert-box info">
      <span class="alert-icon">📦</span>
      <div>
        <strong>安装步骤：</strong>
        <ul style="margin: 10px 0 0 20px; line-height: 1.8;">
          <li>在 Cursor 扩展商店搜索 <strong>"Marp for VS Code"</strong>，点击安装</li>
          <li>安装 Marp CLI：<code>npm install -g @marp-team/marp-cli</code></li>
          <li>就这么简单！无需复杂配置</li>
        </ul>
      </div>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 30px; margin-bottom: 20px;">📝 Marp 基础模板</h3>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">lecture.md - Marp 模板</span>
        <span class="code-lang">Markdown (Marp)</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;"><span style="color: #7f848e;">---
marp: true
theme: default
paginate: true
header: 'Java Web 开发 - 第3讲'
footer: '樊光瑞 | 太原科技大学'
---</span>

<span style="color: #61afef;"># Servlet 与 HTTP 请求处理</span>

<span style="color: #98c379;">## Java Web 开发 - 第3讲</span>

**授课教师：** 樊光瑞  
**单位：** 太原科技大学 计算机学院  
**日期：** 2025年10月

<span style="color: #7f848e;">---</span>

<span style="color: #61afef;">## 本节课内容</span>

1. Servlet 基础概念
2. Servlet 生命周期
3. HTTP 请求处理
4. HTTP 响应生成
5. 实际应用案例

<span style="color: #7f848e;">---</span>

<span style="color: #61afef;">## 什么是 Servlet？</span>

<span style="color: #c678dd;">**定义**</span>
- Servlet 是运行在服务器端的 Java 程序
- 用于处理客户端的 HTTP 请求并生成响应
- 是 Java Web 开发的核心技术之一

<span style="color: #c678dd;">**特点**</span>
✅ 跨平台
✅ 高性能
✅ 可扩展
✅ 安全可靠

<span style="color: #7f848e;">---</span>

<span style="color: #61afef;">## Servlet 代码示例</span>

<span style="color: #98c379;">```java
public class HelloServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, 
                         HttpServletResponse resp) 
                         throws ServletException, IOException {
        // 设置响应内容类型
        resp.setContentType("text/html;charset=UTF-8");
        
        // 获取输出流
        PrintWriter out = resp.getWriter();
        
        // 输出 HTML 内容
        out.println("&lt;h1&gt;Hello, Servlet!&lt;/h1&gt;");
        out.println("&lt;p&gt;当前时间：" + new Date() + "&lt;/p&gt;");
    }
}
```</span>

<span style="color: #7f848e;">---</span>

<span style="color: #61afef;">## Servlet 生命周期</span>

<span style="color: #c678dd;">**三个核心方法**</span>

| 方法 | 调用时机 | 调用次数 |
|------|----------|----------|
| <span style="color: #98c379;">init()</span> | Servlet 第一次被请求时 | 只调用一次 |
| <span style="color: #61afef;">service()</span> | 每次请求时 | 多次 |
| <span style="color: #e06c75;">destroy()</span> | 服务器关闭时 | 只调用一次 |

<span style="color: #7f848e;">---</span>

<span style="color: #61afef;">## 课堂练习</span>

<span style="color: #c678dd;">**任务**</span>
编写一个 Servlet，实现用户登录功能

<span style="color: #c678dd;">**要求**</span>
1. 接收用户名和密码参数
2. 验证用户名和密码（从数据库查询）
3. 登录成功：跳转到首页，设置 Session
4. 登录失败：返回登录页，显示错误提示

<span style="color: #e5c07b;">⏱️ 时间：15分钟</span></pre>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 30px; margin-bottom: 20px;">🤖 使用 Cursor AI 生成 Marp PPT</h3>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">Cursor 提示词：生成 Marp PPT</span>
        <span class="code-lang">Cursor Prompt</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;">请根据以下教学大纲，生成一份完整的 Marp 格式 PPT：

<span style="color: #98c379;">【课程信息】</span>
- 课程：Java Web 开发
- 章节：第5讲 - Session 和 Cookie
- 学时：2学时（90分钟）
- 授课对象：大三学生

<span style="color: #98c379;">【教学大纲】</span>
1. 会话跟踪技术概述
   - 为什么需要会话跟踪？
   - HTTP 无状态协议的问题
   
2. Cookie 技术
   - Cookie 的工作原理
   - Cookie 的创建和读取
   - Cookie 的属性设置
   
3. Session 技术
   - Session 的工作原理
   - Session 的创建和使用
   - Session 与 Cookie 的关系
   
4. 实际应用
   - 用户登录状态保持
   - 购物车实现
   - 防重复提交

<span style="color: #98c379;">【生成要求】</span>
1. 使用 Marp 的 Markdown 语法
2. 每个知识点包含：
   - 概念讲解（简洁清晰）
   - 代码示例（完整可运行的 Java 代码）
   - 图解说明（用文字描述或 Mermaid 图）
3. 添加课堂练习题（1-2个）
4. 总页数控制在 30-40 页
5. 使用专业的样式（可以自定义 CSS）

请生成完整的 Marp Markdown 文件。</pre>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 30px; margin-bottom: 20px;">👁️ Marp 实时预览</h3>

    <div class="feature-grid">
      <div class="feature-item">
        <span class="feature-icon">1️⃣</span>
        <div class="feature-content">
          <h4>打开预览窗口</h4>
          <p>点击右上角的 "Open Preview" 图标，或按 <code>Ctrl+Shift+V</code></p>
        </div>
      </div>

      <div class="feature-item">
        <span class="feature-icon">2️⃣</span>
        <div class="feature-content">
          <h4>分屏显示</h4>
          <p>左侧编辑 Markdown，右侧实时预览 PPT 效果</p>
        </div>
      </div>

      <div class="feature-item">
        <span class="feature-icon">3️⃣</span>
        <div class="feature-content">
          <h4>边改边看</h4>
          <p>修改代码后自动刷新预览，所见即所得</p>
        </div>
      </div>

      <div class="feature-item">
        <span class="feature-icon">4️⃣</span>
        <div class="feature-content">
          <h4>导出PDF</h4>
          <p>预览满意后，右键选择 "Export Slide Deck"</p>
        </div>
      </div>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 30px; margin-bottom: 20px;">📊 示例：AI 自动添加图表</h3>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">Cursor 提示词：添加流程图</span>
        <span class="code-lang">Cursor Prompt</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;">在这一页 PPT 中，我需要展示 "Servlet 请求处理流程"。
请用 Mermaid 图表语法生成一个清晰的流程图，展示：

1. 浏览器发送 HTTP 请求
2. Tomcat 接收请求
3. 查找对应的 Servlet
4. 调用 service() 方法
5. 根据请求方法调用 doGet() 或 doPost()
6. Servlet 处理业务逻辑
7. 生成 HTTP 响应
8. 返回给浏览器

请生成 Mermaid 代码，我会嵌入到 Marp PPT 中。</pre>
    </div>

    <p style="color: #4b5563; margin-top: 20px; line-height: 1.8;">
      <strong>AI 生成的 Mermaid 图表会自动嵌入PPT：</strong>
    </p>

    <div class="code-example">
      <pre style="margin: 0; color: #abb2bf;"><span style="color: #98c379;">```mermaid
flowchart TD
    A[浏览器发送HTTP请求] --> B[Tomcat服务器]
    B --> C{查找Servlet}
    C --> D[调用service方法]
    D --> E{判断请求方法}
    E -->|GET| F[调用doGet]
    E -->|POST| G[调用doPost]
    F --> H[处理业务逻辑]
    G --> H
    H --> I[生成HTTP响应]
    I --> J[返回给浏览器]
```</span></pre>
    </div>
  </section>

  <!-- 自动化发布 -->
  <section id="auto-upload" class="section">
    <h2 class="section-title">
      <span class="section-icon">🚀</span>
      自动化发布到 GitHub/Gitee
    </h2>

    <h3 style="color: var(--dark-bg); margin-bottom: 20px;">📦 项目结构</h3>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">推荐的项目目录结构</span>
        <span class="code-lang">File Structure</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;">teaching-slides/
├── <span style="color: #61afef;">java-web/</span>              <span style="color: #7f848e;"># Java Web 课程</span>
│   ├── <span style="color: #98c379;">lecture-01-intro.md</span>        <span style="color: #7f848e;"># 第1讲（Marp）</span>
│   ├── <span style="color: #98c379;">lecture-02-servlet.md</span>     <span style="color: #7f848e;"># 第2讲（Marp）</span>
│   ├── <span style="color: #98c379;">lecture-03-session.md</span>     <span style="color: #7f848e;"># 第3讲（Marp）</span>
│   └── <span style="color: #e5c07b;">pdf/</span>                      <span style="color: #7f848e;"># 编译后的PDF</span>
│
├── <span style="color: #61afef;">algorithm/</span>             <span style="color: #7f848e;"># 算法课程</span>
│   ├── <span style="color: #98c379;">lecture-01-intro.tex</span>      <span style="color: #7f848e;"># 第1讲（Beamer）</span>
│   ├── <span style="color: #98c379;">lecture-02-sort.tex</span>       <span style="color: #7f848e;"># 第2讲（Beamer）</span>
│   └── <span style="color: #e5c07b;">pdf/</span>
│
├── <span style="color: #98c379;">.github/workflows/</span>     <span style="color: #7f848e;"># GitHub Actions</span>
│   └── <span style="color: #98c379;">build.yml</span>                <span style="color: #7f848e;"># 自动编译和发布</span>
│
├── <span style="color: #98c379;">README.md</span>
└── <span style="color: #98c379;">.gitignore</span></pre>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 30px; margin-bottom: 20px;">🔄 使用 Cursor 的 Git 功能</h3>

    <div class="workflow-steps">
      <div class="step-card">
        <div class="step-number">1</div>
        <h3 class="step-title">初始化 Git 仓库</h3>
        <p class="step-description">
          在 Cursor 终端中：<code>git init</code><br>
          或使用 Cursor 的源代码管理面板（Ctrl+Shift+G）
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">2</div>
        <h3 class="step-title">编辑并预览PPT</h3>
        <p class="step-description">
          在 Cursor 中编辑 .tex 或 .md 文件，实时预览效果
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">3</div>
        <h3 class="step-title">编译生成PDF</h3>
        <p class="step-description">
          Beamer: 自动编译<br>
          Marp: <code>marp lecture.md --pdf</code>
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">4</div>
        <h3 class="step-title">提交到 Git</h3>
        <p class="step-description">
          在源代码管理面板中，添加更改说明，点击"提交"
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">5</div>
        <h3 class="step-title">推送到远程仓库</h3>
        <p class="step-description">
          点击"同步更改"按钮，自动推送到 GitHub/Gitee
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">6</div>
        <h3 class="step-title">自动发布（可选）</h3>
        <p class="step-description">
          配置 GitHub Actions，自动编译和发布PDF到 Release
        </p>
      </div>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 40px; margin-bottom: 20px;">⚙️ GitHub Actions 自动编译配置</h3>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">.github/workflows/build.yml</span>
        <span class="code-lang">YAML</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;"><span style="color: #c678dd;">name:</span> Build Slides

<span style="color: #c678dd;">on:</span>
  <span style="color: #c678dd;">push:</span>
    <span style="color: #c678dd;">branches:</span> [ main ]

<span style="color: #c678dd;">jobs:</span>
  <span style="color: #c678dd;">build-marp:</span>
    <span style="color: #c678dd;">runs-on:</span> ubuntu-latest
    <span style="color: #c678dd;">steps:</span>
      - <span style="color: #c678dd;">uses:</span> actions/checkout@v3
      
      - <span style="color: #c678dd;">name:</span> Marp Build
        <span style="color: #c678dd;">uses:</span> docker://marpteam/marp-cli:latest
        <span style="color: #c678dd;">with:</span>
          <span style="color: #c678dd;">args:</span> <span style="color: #98c379;">java-web/*.md --pdf --allow-local-files -o pdf/</span>
      
      - <span style="color: #c678dd;">name:</span> Upload PDFs
        <span style="color: #c678dd;">uses:</span> actions/upload-artifact@v3
        <span style="color: #c678dd;">with:</span>
          <span style="color: #c678dd;">name:</span> slides-pdf
          <span style="color: #c678dd;">path:</span> pdf/*.pdf
      
      - <span style="color: #c678dd;">name:</span> Create Release
        <span style="color: #c678dd;">uses:</span> softprops/action-gh-release@v1
        <span style="color: #c678dd;">if:</span> startsWith(github.ref, 'refs/tags/')
        <span style="color: #c678dd;">with:</span>
          <span style="color: #c678dd;">files:</span> pdf/*.pdf</pre>
    </div>

    <div class="alert-box success">
      <span class="alert-icon">🎉</span>
      <div>
        <strong>自动化效果：</strong>
        <ul style="margin: 10px 0 0 20px; line-height: 1.8;">
          <li>在 Cursor 中编辑完PPT，保存</li>
          <li>使用 Cursor 的 Git 功能提交并推送</li>
          <li>GitHub Actions 自动编译所有 Markdown 为 PDF</li>
          <li>PDF 自动发布到 Releases，学生可以直接下载</li>
          <li><strong>全程无需手动操作！</strong></li>
        </ul>
      </div>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 40px; margin-bottom: 20px;">🔗 推送到 Gitee（国内访问更快）</h3>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">在 Cursor 终端中配置 Gitee 远程仓库</span>
        <span class="code-lang">Bash</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;"><span style="color: #7f848e;"># 添加 Gitee 作为第二个远程仓库</span>
git remote add gitee https://gitee.com/your-username/teaching-slides.git

<span style="color: #7f848e;"># 同时推送到 GitHub 和 Gitee</span>
git push origin main
git push gitee main

<span style="color: #7f848e;"># 或者配置一次推送到多个仓库</span>
git remote set-url --add --push origin https://gitee.com/your-username/teaching-slides.git
git push  <span style="color: #7f848e;"># 一次推送到两个仓库</span></pre>
    </div>
  </section>


  <!-- 详细示例 -->
  <section id="detailed-example" class="section">
    <h2 class="section-title">
      <span class="section-icon">📝</span>
      完整示例：在 Cursor 中使用 AI 重构PPT
    </h2>

    <h3 style="color: var(--dark-bg); margin-bottom: 20px;">场景：重构 "Session 与 Cookie" 这一讲</h3>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">Step 1: 准备原始内容（粘贴到 Cursor）</span>
        <span class="code-lang">Text</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;"><span style="color: #7f848e;">=== 旧PPT内容 ===</span>

<span style="color: #98c379;">第一页：</span> 会话跟踪
- HTTP是无状态的
- 需要会话跟踪技术

<span style="color: #98c379;">第二页：</span> Cookie
- Cookie 是什么
- Cookie 的作用

<span style="color: #98c379;">第三页：</span> Session
- Session 是什么
- Session 的使用

<span style="color: #7f848e;">（内容过于简单，缺少代码示例和实际应用）</span></pre>
    </div>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">Step 2: 准备教学大纲要求</span>
        <span class="code-lang">Text</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;"><span style="color: #7f848e;">=== 教学大纲 ===</span>

<span style="color: #98c379;">知识点：</span>
1. HTTP 无状态协议的问题
2. Cookie 的工作原理和 API
3. Session 的工作原理和 API
4. Cookie 与 Session 的区别
5. 实际应用：用户登录、购物车

<span style="color: #98c379;">要求：</span>
- 每个知识点要有完整的代码示例
- 要有流程图说明
- 要有实际的应用案例（完整代码）</pre>
    </div>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">Step 3: Cursor AI 重构提示词</span>
        <span class="code-lang">Cursor Prompt (Ctrl+K)</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;">请将以下旧PPT内容重构为 Marp 格式的现代化教学PPT：

<span style="color: #98c379;">【旧PPT内容】</span>
[粘贴上面的旧PPT内容]

<span style="color: #98c379;">【教学大纲要求】</span>
[粘贴教学大纲]

<span style="color: #98c379;">【重构要求】</span>
1. 按照教学大纲重新组织内容结构
2. 为每个知识点添加：
   - 清晰的概念解释（用通俗易懂的语言）
   - 完整的 Java 代码示例（可直接运行）
   - 流程图或架构图（使用 Mermaid 语法）
   - 注意事项或常见错误

3. 添加实际应用案例：
   - 用户登录状态保持（完整代码）
   - 购物车实现（核心代码）

4. 添加课堂互动：
   - 每个 section 后添加思考题
   - 添加 1-2 个课堂练习

5. 使用 Marp 语法，风格现代、专业

6. 总页数控制在 35-40 页

请生成完整的 Marp Markdown 文件。</pre>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 40px; margin-bottom: 20px;">✨ AI 生成的重构结果（部分展示）</h3>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">session-cookie.md - AI 重构后的 Marp PPT（节选）</span>
        <span class="code-lang">Markdown (Marp)</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;"><span style="color: #7f848e;">---
marp: true
theme: default
paginate: true
header: 'Java Web 开发 - 第5讲'
footer: '樊光瑞 | 太原科技大学'
style: |
  section {
    background: linear-gradient(to bottom, #ffffff, #f0f9ff);
  }
  h1 { color: #1e40af; }
  h2 { color: #2563eb; }
---</span>

<span style="color: #61afef;"># Session 与 Cookie</span>

<span style="color: #98c379;">## 会话跟踪技术详解</span>

**授课教师：** 樊光瑞  
**课时：** 2学时  
**日期：** 2025年10月

<span style="color: #7f848e;">---</span>

<span style="color: #61afef;">## 本节课内容</span>

1. 🤔 为什么需要会话跟踪？
2. 🍪 Cookie 技术详解
3. 📦 Session 技术详解
4. 🔄 Cookie 与 Session 的关系
5. 💻 实战：用户登录系统
6. 🛒 实战：购物车实现

<span style="color: #7f848e;">---</span>

<span style="color: #61afef;"># 第一部分</span>
<span style="color: #98c379;">## 为什么需要会话跟踪？</span>

<span style="color: #7f848e;">---</span>

<span style="color: #61afef;">## HTTP 协议的特点</span>

<span style="color: #c678dd;">**HTTP 是无状态协议**</span>

- 每次请求都是独立的
- 服务器不会记住之前的请求
- 浏览器每次请求都需要重新提供身份信息

<span style="color: #e06c75;">**问题场景**</span>
- 用户登录后，访问其他页面时服务器不知道用户是谁
- 购物车：添加商品后刷新页面，商品消失
- 无法实现"记住我"功能

<span style="color: #7f848e;">---</span>

<span style="color: #61afef;">## 会话跟踪技术对比</span>

| 技术 | 存储位置 | 数据大小 | 安全性 | 生命周期 |
|------|----------|----------|--------|----------|
| <span style="color: #98c379;">Cookie</span> | 客户端浏览器 | 4KB | 较低 | 可设置 |
| <span style="color: #61afef;">Session</span> | 服务器内存 | 无限制 | 较高 | 会话期间 |

<span style="color: #7f848e;">---</span>

<span style="color: #61afef;"># 第二部分</span>
<span style="color: #98c379;">## Cookie 技术详解</span>

<span style="color: #7f848e;">---</span>

<span style="color: #61afef;">## Cookie 的工作原理</span>

<span style="color: #98c379;">```mermaid
sequenceDiagram
    participant Browser as 浏览器
    participant Server as 服务器
    
    Browser->>Server: 首次访问（无Cookie）
    Server->>Browser: 响应 + Set-Cookie: user=zhangsan
    Note over Browser: 保存Cookie到本地
    
    Browser->>Server: 再次访问（携带Cookie）
    Note over Server: 读取Cookie，识别用户
    Server->>Browser: 个性化响应
```</span>

<span style="color: #7f848e;">---</span>

<span style="color: #61afef;">## Cookie 的创建和读取</span>

<span style="color: #c678dd;">**创建 Cookie**</span>
<span style="color: #98c379;">```java
// 1. 创建 Cookie 对象
Cookie cookie = new Cookie("username", "zhangsan");

// 2. 设置 Cookie 属性
cookie.setMaxAge(7 * 24 * 60 * 60);  // 有效期7天
cookie.setPath("/");  // 整个网站都可访问

// 3. 将 Cookie 发送到浏览器
response.addCookie(cookie);
```</span>

<span style="color: #7f848e;">---</span>

<span style="color: #61afef;">## 读取 Cookie</span>

<span style="color: #98c379;">```java
// 获取所有 Cookie
Cookie[] cookies = request.getCookies();

if (cookies != null) {
    for (Cookie cookie : cookies) {
        if ("username".equals(cookie.getName())) {
            String username = cookie.getValue();
            System.out.println("用户名：" + username);
            break;
        }
    }
}
```</span>

<span style="color: #7f848e;">---</span>

<span style="color: #61afef;"># 第三部分</span>
<span style="color: #98c379;">## Session 技术详解</span>

<span style="color: #7f848e;">---</span>

<span style="color: #61afef;">## Session 的创建和使用</span>

<span style="color: #98c379;">```java
// 1. 获取 Session（如果不存在则创建）
HttpSession session = request.getSession();

// 2. 向 Session 中存储数据
session.setAttribute("user", userObject);
session.setAttribute("role", "student");

// 3. 从 Session 中读取数据
User user = (User) session.getAttribute("user");

// 4. 删除 Session 中的数据
session.removeAttribute("user");

// 5. 销毁整个 Session
session.invalidate();
```</span>

<span style="color: #7f848e;">---</span>

<span style="color: #61afef;"># 第五部分</span>
<span style="color: #98c379;">## 实战案例：用户登录系统</span>

<span style="color: #7f848e;">---</span>

<span style="color: #61afef;">## 完整的登录 Servlet</span>

<span style="color: #98c379;">```java
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, 
                          HttpServletResponse resp) 
                          throws ServletException, IOException {
        // 1. 获取表单参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String remember = req.getParameter("remember");
        
        // 2. 验证用户（从数据库查询）
        UserService service = new UserService();
        User user = service.login(username, password);
        
        if (user != null) {
            // 3. 登录成功 - 创建 Session
            HttpSession session = req.getSession();
            session.setAttribute("user", user);
            session.setMaxInactiveInterval(30 * 60);  // 30分钟
            
            // 4. 如果勾选"记住我" - 创建 Cookie
            if ("on".equals(remember)) {
                Cookie cookie = new Cookie("username", username);
                cookie.setMaxAge(7 * 24 * 60 * 60);  // 7天
                resp.addCookie(cookie);
            }
            
            // 5. 跳转到首页
            resp.sendRedirect("index.jsp");
        } else {
            // 登录失败
            req.setAttribute("error", "用户名或密码错误");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}
```</span>

<span style="color: #7f848e;">---</span>

<span style="color: #61afef;">## 课堂练习</span>

<span style="color: #c678dd;">**练习1：实现"记住我"功能**</span>

要求：
1. 用户勾选"记住我"，下次访问自动填充用户名
2. 使用 Cookie 实现
3. 考虑安全性（不要存储密码）

<span style="color: #e5c07b;">⏱️ 时间：10分钟</span>

<span style="color: #7f848e;">---</span>

<span style="color: #61afef;">## 本节课总结</span>

<span style="color: #c678dd;">**核心知识点**</span>
- ✅ Cookie：客户端存储，小数据量
- ✅ Session：服务器存储，安全性高
- ✅ 两者结合使用实现会话跟踪

<span style="color: #c678dd;">**实际应用**</span>
- 用户登录状态保持
- 购物车实现
- 用户偏好设置

<span style="color: #c678dd;">**下节课预告**</span>
- Filter 和 Listener 的使用</pre>
    </div>

    <div class="alert-box success">
      <span class="alert-icon">🎉</span>
      <div>
        <strong>重构效果：</strong>
        <ul style="margin: 10px 0 0 20px; line-height: 1.8;">
          <li>从 3 页扩充到 20+ 页，内容更加详实</li>
          <li>添加了 5 个完整代码示例</li>
          <li>添加了 2 个 Mermaid 流程图</li>
          <li>添加了课堂练习和思考题</li>
          <li>结构清晰，逻辑连贯</li>
        </ul>
      </div>
    </div>
  </section>

  <!-- 参考资料 -->
  <section id="resources" class="section">
    <h2 class="section-title">
      <span class="section-icon">📚</span>
      参考示例与资源
    </h2>

    <h3 style="color: var(--dark-bg); margin-bottom: 20px;">📥 示例文件下载</h3>

    <div class="feature-grid">
      <div class="feature-item">
        <span class="feature-icon">📕</span>
        <div class="feature-content">
          <h4>Beamer 示例</h4>
          <p><a href="/PPT beamer.pdf" target="_blank" style="color: var(--primary-color); font-weight: 600;">查看 Beamer PPT 示例 →</a></p>
        </div>
      </div>

      <div class="feature-item">
        <span class="feature-icon">📘</span>
        <div class="feature-content">
          <h4>Marp 示例</h4>
          <p><a href="/PPT markdown.pdf" target="_blank" style="color: var(--primary-color); font-weight: 600;">查看 Marp PPT 示例 →</a></p>
        </div>
      </div>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 30px; margin-bottom: 20px;">🔗 有用的资源链接</h3>

    <table class="comparison-table">
      <thead>
        <tr>
          <th>资源</th>
          <th>说明</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><strong>Marp 官方文档</strong></td>
          <td><a href="https://marpit.marp.app/" target="_blank" style="color: var(--primary-color);">https://marpit.marp.app/</a></td>
        </tr>
        <tr>
          <td><strong>Beamer 用户手册</strong></td>
          <td><a href="https://ctan.org/pkg/beamer" target="_blank" style="color: var(--primary-color);">https://ctan.org/pkg/beamer</a></td>
        </tr>
        <tr>
          <td><strong>Mermaid 图表语法</strong></td>
          <td><a href="https://mermaid.js.org/" target="_blank" style="color: var(--primary-color);">https://mermaid.js.org/</a></td>
        </tr>
        <tr>
          <td><strong>LaTeX 数学公式</strong></td>
          <td><a href="https://katex.org/" target="_blank" style="color: var(--primary-color);">https://katex.org/</a></td>
        </tr>
      </tbody>
    </table>

    <h3 style="color: var(--dark-bg); margin-top: 30px; margin-bottom: 20px;">💡 最佳实践建议</h3>

    <div class="workflow-steps">
      <div class="step-card">
        <div class="step-number">✓</div>
        <h3 class="step-title">保持源文件简洁</h3>
        <p class="step-description">
          使用 Git 管理，避免一个 PPT 有多个版本文件
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">✓</div>
        <h3 class="step-title">模块化组织</h3>
        <p class="step-description">
          将常用的代码片段、图表保存为独立文件，方便复用
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">✓</div>
        <h3 class="step-title">定期备份</h3>
        <p class="step-description">
          推送到 GitHub/Gitee，既是备份又是版本控制
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">✓</div>
        <h3 class="step-title">团队协作</h3>
        <p class="step-description">
          多位教师可以通过 Git 分支协作，共同完善PPT
        </p>
      </div>
    </div>
  </section>

  <div style="text-align: center; margin: 40px 0;">
    <a href="/workshop/aiedu/" class="back-button">← 返回案例总览</a>
  </div>

</div>

<script>
// 平滑滚动到锚点
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
  anchor.addEventListener('click', function (e) {
    e.preventDefault();
    const target = document.querySelector(this.getAttribute('href'));
    if (target) {
      target.scrollIntoView({
        behavior: 'smooth',
        block: 'start'
      });
    }
  });
});

// 高亮当前导航
window.addEventListener('scroll', function() {
  const sections = document.querySelectorAll('.section');
  const navPills = document.querySelectorAll('.nav-pill');
  
  let current = '';
  sections.forEach(section => {
    const sectionTop = section.offsetTop;
    const sectionHeight = section.clientHeight;
    if (scrollY >= (sectionTop - 200)) {
      current = section.getAttribute('id');
    }
  });

  navPills.forEach(pill => {
    pill.style.background = '';
    pill.style.color = '';
    if (pill.getAttribute('href') === '#' + current) {
      pill.style.background = 'var(--primary-color)';
      pill.style.color = 'white';
    }
  });
});
</script>

