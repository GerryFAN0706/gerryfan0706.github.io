---
permalink: /workshop/ai-personalized-experiment-design/
title: "个性化实验设计生成器 - Java Web开发课程应用案例"
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
  background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
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

.problem-card {
  background: #fef2f2;
  border-left: 4px solid var(--danger-color);
  padding: 25px;
  border-radius: 10px;
  margin: 20px 0;
}

.problem-card h3 {
  color: var(--danger-color);
  margin-top: 0;
  margin-bottom: 15px;
  font-size: 1.4em;
}

.problem-list {
  list-style: none;
  padding: 0;
  margin: 15px 0;
}

.problem-list li {
  padding: 12px 0 12px 35px;
  position: relative;
  color: #4b5563;
  line-height: 1.8;
}

.problem-list li:before {
  content: "❌";
  position: absolute;
  left: 0;
  font-size: 1.2em;
}

.solution-card {
  background: #f0fdf4;
  border-left: 4px solid var(--success-color);
  padding: 25px;
  border-radius: 10px;
  margin: 20px 0;
}

.solution-card h3 {
  color: var(--success-color);
  margin-top: 0;
  margin-bottom: 15px;
  font-size: 1.4em;
}

.solution-list {
  list-style: none;
  padding: 0;
  margin: 15px 0;
}

.solution-list li {
  padding: 12px 0 12px 35px;
  position: relative;
  color: #4b5563;
  line-height: 1.8;
}

.solution-list li:before {
  content: "✅";
  position: absolute;
  left: 0;
  font-size: 1.2em;
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

.level-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 25px;
  margin: 30px 0;
}

.level-card {
  background: var(--light-bg);
  padding: 25px;
  border-radius: 12px;
  border-top: 4px solid var(--primary-color);
  transition: all 0.3s ease;
}

.level-card:nth-child(1) {
  border-top-color: #10b981;
}

.level-card:nth-child(2) {
  border-top-color: #3b82f6;
}

.level-card:nth-child(3) {
  border-top-color: #f59e0b;
}

.level-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1);
}

.level-badge {
  display: inline-block;
  padding: 6px 16px;
  background: white;
  border-radius: 20px;
  font-weight: 700;
  font-size: 0.9em;
  margin-bottom: 15px;
}

.level-card:nth-child(1) .level-badge {
  color: #10b981;
  border: 2px solid #10b981;
}

.level-card:nth-child(2) .level-badge {
  color: #3b82f6;
  border: 2px solid #3b82f6;
}

.level-card:nth-child(3) .level-badge {
  color: #f59e0b;
  border: 2px solid #f59e0b;
}

.level-card h3 {
  margin: 15px 0;
  color: var(--dark-bg);
  font-size: 1.3em;
}

.level-card ul {
  margin: 15px 0;
  padding-left: 20px;
  color: #4b5563;
  line-height: 1.8;
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

.comparison-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 25px;
  margin: 30px 0;
}

.comparison-card {
  background: var(--light-bg);
  padding: 25px;
  border-radius: 12px;
  border-left: 4px solid var(--danger-color);
}

.comparison-card.after {
  border-left-color: var(--success-color);
}

.comparison-card h4 {
  margin: 0 0 15px 0;
  font-size: 1.2em;
  color: var(--dark-bg);
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

.example-showcase {
  background: var(--light-bg);
  padding: 30px;
  border-radius: 12px;
  margin: 25px 0;
  border: 2px solid var(--primary-color);
}

.example-header {
  background: var(--primary-color);
  color: white;
  padding: 15px 25px;
  margin: -30px -30px 20px -30px;
  border-radius: 10px 10px 0 0;
  font-weight: 700;
  font-size: 1.2em;
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
  .comparison-grid {
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
  <a href="/workshop/ai-teaching-demo-oct2025/" class="back-button">← 返回案例总览</a>

  <div class="hero-section">
    <h1>🔬 个性化实验设计生成器</h1>
    <p class="subtitle">基于 AI 的差异化教学与防抄袭解决方案</p>
    <p class="course-info">📚 课程：Java Web 开发 | 👨‍🏫 樊光瑞</p>
  </div>

  <div class="nav-pills">
    <a class="nav-pill" href="#problems">⚠️ 教学痛点</a>
    <a class="nav-pill" href="#solution">💡 AI 解决方案</a>
    <a class="nav-pill" href="#levels">📊 分层设计</a>
    <a class="nav-pill" href="#manual">📖 实验手册生成</a>
    <a class="nav-pill" href="#examples">🎯 实际案例</a>
  </div>

  <!-- 教学痛点 -->
  <section id="problems" class="section">
    <h2 class="section-title">
      <span class="section-icon">⚠️</span>
      传统实验教学的痛点
    </h2>

    <div class="problem-card">
      <h3>🚨 最大问题：学生抄袭现象严重</h3>
      <p style="font-size: 1.1em; line-height: 1.8; color: #4b5563; margin-bottom: 15px;">
        在传统的 Java Web 实验教学中，由于所有学生做相同的实验题目，抄袭现象难以避免且难以发现。
      </p>
      <ul class="problem-list">
        <li><strong>直接复制粘贴：</strong>学生之间互相复制代码，甚至连变量名、注释都一模一样</li>
        <li><strong>网上搜索答案：</strong>实验题目固定，网上很容易找到现成的解答</li>
        <li><strong>GitHub 公开项目：</strong>往届学生的代码公开在 GitHub，本届学生直接 Fork</li>
        <li><strong>难以检测：</strong>传统的代码查重工具容易被绕过（改变量名、调整顺序等）</li>
        <li><strong>学习效果差：</strong>抄袭的学生没有真正理解知识点，考试时露馅</li>
      </ul>
    </div>

    <div class="problem-card">
      <h3>📉 其他痛点</h3>
      <ul class="problem-list">
        <li><strong>一刀切的难度：</strong>同一个实验题目，基础好的学生觉得太简单，基础差的学生觉得太难</li>
        <li><strong>缺乏个性化：</strong>无法根据学生的学习进度和能力调整实验内容</li>
        <li><strong>反馈不及时：</strong>教师手工批改实验报告，往往要等一周以上才能得到反馈</li>
        <li><strong>题目更新难：</strong>教师每学期要设计新题目防止抄袭，工作量大</li>
      </ul>
    </div>

    <div class="alert-box warning">
      <span class="alert-icon">📊</span>
      <div>
        <strong>数据触目惊心：</strong>在引入 AI 个性化实验之前，通过代码相似度检测，发现约 <strong>45%</strong> 的学生提交的实验代码存在高度相似（相似度 > 80%），其中约 <strong>23%</strong> 的代码几乎完全一致。
      </div>
    </div>
  </section>

  <!-- AI 解决方案 -->
  <section id="solution" class="section">
    <h2 class="section-title">
      <span class="section-icon">💡</span>
      AI 个性化实验设计方案
    </h2>

    <div class="solution-card">
      <h3>🎯 核心思路</h3>
      <ul class="solution-list">
        <li><strong>一人一题：</strong>使用 AI 为每个学生生成不同的实验题目，考察相同知识点但场景不同</li>
        <li><strong>难度分层：</strong>根据学生的历史成绩和学习能力，自动调整实验难度</li>
        <li><strong>自动生成手册：</strong>AI 自动生成详细的实验指导手册，包括需求说明、测试用例、评分标准</li>
        <li><strong>动态题库：</strong>题目无限生成，每学期、每个班级都不重复</li>
        <li><strong>从源头杜绝抄袭：</strong>每个学生的题目不同，抄袭失去意义</li>
      </ul>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 40px; margin-bottom: 20px;">🛠️ 技术实现</h3>

    <div class="workflow-steps">
      <div class="step-card">
        <div class="step-number">1</div>
        <h3 class="step-title">学生能力评估</h3>
        <p class="step-description">
          根据学生的历史作业成绩、测验分数、知识点掌握情况，使用简单的分类算法将学生分为三个层次。
        </p>
        <span class="tool-badge">Python</span>
        <span class="tool-badge">数据分析</span>
      </div>

      <div class="step-card">
        <div class="step-number">2</div>
        <h3 class="step-title">知识点映射</h3>
        <p class="step-description">
          明确本次实验要考察的知识点（如 Servlet、Session、MVC 等），确保不同题目覆盖相同的知识点。
        </p>
        <span class="tool-badge">课程大纲</span>
      </div>

      <div class="step-card">
        <div class="step-number">3</div>
        <h3 class="step-title">AI 生成题目</h3>
        <p class="step-description">
          使用 GPT-4/Claude 根据学生层次和知识点要求，生成个性化的实验题目和业务场景。
        </p>
        <span class="tool-badge">GPT-4</span>
        <span class="tool-badge">Claude</span>
      </div>

      <div class="step-card">
        <div class="step-number">4</div>
        <h3 class="step-title">生成实验手册</h3>
        <p class="step-description">
          AI 自动生成包含需求说明、功能列表、测试用例、评分标准的完整实验手册（PDF/Markdown）。
        </p>
        <span class="tool-badge">Markdown</span>
        <span class="tool-badge">PDF</span>
      </div>

      <div class="step-card">
        <div class="step-number">5</div>
        <h3 class="step-title">分发与追踪</h3>
        <p class="step-description">
          通过教学平台将个性化实验分发给学生，记录每个学生的题目和完成情况。
        </p>
        <span class="tool-badge">数据库</span>
      </div>

      <div class="step-card">
        <div class="step-number">6</div>
        <h3 class="step-title">自动评估</h3>
        <p class="step-description">
          结合测试用例和 AI 代码审查，自动评估学生提交的代码，生成反馈报告。
        </p>
        <span class="tool-badge">JUnit</span>
        <span class="tool-badge">Cursor AI</span>
      </div>
    </div>
  </section>

  <!-- 分层设计 -->
  <section id="levels" class="section">
    <h2 class="section-title">
      <span class="section-icon">📊</span>
      基于能力的分层实验设计
    </h2>

    <p style="font-size: 1.1em; line-height: 1.8; color: #4b5563; margin-bottom: 25px;">
      根据学生的编程基础和学习能力，将实验分为三个难度层次。<strong>相同的知识点，不同的业务场景和实现难度。</strong>
    </p>

    <div class="level-grid">
      <div class="level-card">
        <span class="level-badge">🟢 基础层</span>
        <h3>适合编程基础较弱的学生</h3>
        <p style="color: #6b7280; margin-bottom: 15px;">
          <strong>特点：</strong>业务逻辑简单，提供更多代码框架和提示
        </p>
        <ul>
          <li>功能需求清晰、单一</li>
          <li>提供部分代码框架</li>
          <li>详细的分步指导</li>
          <li>测试用例较少，覆盖核心功能</li>
        </ul>
        <p style="margin-top: 15px; color: #059669; font-weight: 600;">
          目标：确保学生能够完成实验，掌握基本知识点
        </p>
      </div>

      <div class="level-card">
        <span class="level-badge">🔵 进阶层</span>
        <h3>适合编程基础中等的学生</h3>
        <p style="color: #6b7280; margin-bottom: 15px;">
          <strong>特点：</strong>业务逻辑适中，需要学生自主设计
        </p>
        <ul>
          <li>功能需求明确但有多个模块</li>
          <li>仅提供接口定义，不提供实现</li>
          <li>需要考虑边界条件和异常处理</li>
          <li>测试用例覆盖主要功能和边界情况</li>
        </ul>
        <p style="margin-top: 15px; color: #2563eb; font-weight: 600;">
          目标：培养独立分析和设计能力
        </p>
      </div>

      <div class="level-card">
        <span class="level-badge">🟠 挑战层</span>
        <h3>适合编程基础较强的学生</h3>
        <p style="color: #6b7280; margin-bottom: 15px;">
          <strong>特点：</strong>业务逻辑复杂，需要优化和创新
        </p>
        <ul>
          <li>功能需求多样，有性能要求</li>
          <li>需要自主设计架构和数据库</li>
          <li>考察代码优化和最佳实践</li>
          <li>测试用例包含性能测试和压力测试</li>
        </ul>
        <p style="margin-top: 15px; color: #d97706; font-weight: 600;">
          目标：挑战高水平学生，培养工程思维
        </p>
      </div>
    </div>

    <div class="alert-box info">
      <span class="alert-icon">💡</span>
      <div>
        <strong>重要说明：</strong>虽然难度不同，但<strong>所有层次的实验都考察相同的核心知识点</strong>（如 Servlet、Session、JDBC 等），确保教学目标一致，评分公平。差异主要体现在业务复杂度、代码量、优化要求等方面。
      </div>
    </div>
  </section>

  <!-- 实验手册生成 -->
  <section id="manual" class="section">
    <h2 class="section-title">
      <span class="section-icon">📖</span>
      AI 自动生成实验手册
    </h2>

    <p style="font-size: 1.1em; line-height: 1.8; color: #4b5563; margin-bottom: 25px;">
      使用 GPT-4/Claude，为每个学生自动生成一份完整的实验指导手册，包括项目背景、功能需求、技术要求、测试用例、评分标准等。
    </p>

    <h3 style="color: var(--dark-bg); margin-bottom: 20px;">📋 实验手册标准结构</h3>

    <div class="workflow-steps">
      <div class="step-card">
        <div class="step-number">📌</div>
        <h3 class="step-title">1. 项目背景</h3>
        <p class="step-description">
          描述一个真实的业务场景，让学生理解为什么要做这个系统
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">📌</div>
        <h3 class="step-title">2. 功能需求</h3>
        <p class="step-description">
          列出系统必须实现的功能模块，分为必做和选做
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">📌</div>
        <h3 class="step-title">3. 技术要求</h3>
        <p class="step-description">
          明确必须使用的技术栈和知识点
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">📌</div>
        <h3 class="step-title">4. 数据库设计</h3>
        <p class="step-description">
          提供数据表结构参考（基础层提供完整 SQL，进阶层只提示字段）
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">📌</div>
        <h3 class="step-title">5. 测试用例</h3>
        <p class="step-description">
          提供自动化测试代码，学生可以自测
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">📌</div>
        <h3 class="step-title">6. 评分标准</h3>
        <p class="step-description">
          明确告知如何评分，让学生知道哪些是重点
        </p>
      </div>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 40px; margin-bottom: 20px;">🤖 AI 生成提示词模板</h3>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">生成个性化实验题目的提示词</span>
        <span class="code-lang">GPT-4 / Claude Prompt</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;">你是一位经验丰富的 Java Web 开发课程教师。请为学生生成一个个性化的实验项目。

<span style="color: #98c379;">【基本信息】</span>
- 学生 ID: {{student_id}}
- 学生层次: {{level}}  (基础层 / 进阶层 / 挑战层)
- 本次实验序号: 第 {{experiment_number}} 次实验

<span style="color: #e5c07b;">【知识点要求】（必须考察以下所有知识点）</span>
1. Servlet 的使用（doGet/doPost 方法）
2. HTTP 请求与响应处理
3. Session 和 Cookie 管理
4. JDBC 数据库操作（PreparedStatement）
5. MVC 模式应用
6. 异常处理与日志记录

<span style="color: #61afef;">【难度要求】</span>
- 基础层：业务简单，3-4个功能模块，提供代码框架
- 进阶层：业务适中，5-6个功能模块，需自主设计
- 挑战层：业务复杂，7-8个功能模块，需考虑性能优化

<span style="color: #e06c75;">【生成要求】</span>
1. 选择一个真实的业务场景（如：在线选课、图书借阅、宿舍报修、失物招领等）
2. 确保与其他学生的题目不同（避免使用常见的电商、博客系统）
3. 业务场景要贴近学生生活，有代入感
4. 生成完整的实验手册，包含：
   - 项目背景（200字左右）
   - 功能需求列表（必做 + 选做）
   - 技术要求说明
   - 数据库表结构设计
   - 参考界面原型（文字描述）
   - 评分标准（100分制）

请以 Markdown 格式输出完整的实验手册。</pre>
    </div>

    <div class="alert-box success">
      <span class="alert-icon">✨</span>
      <div>
        <strong>实际应用：</strong>将上述提示词中的 <code>{{student_id}}</code>、<code>{{level}}</code>、<code>{{experiment_number}}</code> 替换为实际值，输入到 GPT-4 或 Claude，即可获得一份完整的个性化实验手册。
      </div>
    </div>
  </section>

  <!-- 实际案例 -->
  <section id="examples" class="section">
    <h2 class="section-title">
      <span class="section-icon">🎯</span>
      具体案例：三个层次的实验对比
    </h2>

    <p style="font-size: 1.1em; line-height: 1.8; color: #4b5563; margin-bottom: 25px;">
      以下展示针对同一知识点（Servlet + Session + JDBC），为三个不同层次的学生生成的实验题目。可以看到，<strong>考察的知识点完全相同，但业务场景和难度各异</strong>。
    </p>

    <!-- 基础层案例 -->
    <div class="example-showcase" style="border-color: #10b981;">
      <div class="example-header" style="background: #10b981;">
        🟢 基础层案例：简易图书借阅系统
      </div>

      <h3 style="color: var(--dark-bg); margin-top: 20px;">📖 项目背景</h3>
      <p style="color: #4b5563; line-height: 1.8;">
        学校图书馆需要一个简单的图书借阅管理系统。学生可以浏览图书列表、查看图书详情、借阅和归还图书。管理员可以添加新图书。
      </p>

      <h3 style="color: var(--dark-bg); margin-top: 25px;">✅ 功能需求（必做）</h3>
      <ul style="color: #4b5563; line-height: 1.8;">
        <li>用户登录功能（学生账号）</li>
        <li>图书列表展示（分页显示，每页 10 本）</li>
        <li>图书详情查看</li>
        <li>图书借阅功能（检查是否已借阅）</li>
        <li>我的借阅记录</li>
      </ul>

      <h3 style="color: var(--dark-bg); margin-top: 25px;">🔧 技术要求</h3>
      <ul style="color: #4b5563; line-height: 1.8;">
        <li>使用 Servlet 处理请求</li>
        <li>使用 Session 存储登录状态</li>
        <li>使用 JDBC 操作数据库（提供数据库连接工具类）</li>
        <li>使用 JSP 展示页面</li>
      </ul>

      <h3 style="color: var(--dark-bg); margin-top: 25px;">🗄️ 数据库设计（已提供）</h3>
      <div class="code-example">
        <pre style="margin: 0; color: #abb2bf;"><span style="color: #c678dd;">CREATE TABLE</span> users (
    id <span style="color: #e5c07b;">INT</span> <span style="color: #c678dd;">PRIMARY KEY</span> <span style="color: #c678dd;">AUTO_INCREMENT</span>,
    username <span style="color: #e5c07b;">VARCHAR</span>(<span style="color: #d19a66;">50</span>) <span style="color: #c678dd;">UNIQUE</span>,
    password <span style="color: #e5c07b;">VARCHAR</span>(<span style="color: #d19a66;">50</span>)
);

<span style="color: #c678dd;">CREATE TABLE</span> books (
    id <span style="color: #e5c07b;">INT</span> <span style="color: #c678dd;">PRIMARY KEY</span> <span style="color: #c678dd;">AUTO_INCREMENT</span>,
    title <span style="color: #e5c07b;">VARCHAR</span>(<span style="color: #d19a66;">100</span>),
    author <span style="color: #e5c07b;">VARCHAR</span>(<span style="color: #d19a66;">50</span>),
    available <span style="color: #e5c07b;">INT</span> <span style="color: #c678dd;">DEFAULT</span> <span style="color: #d19a66;">1</span>
);

<span style="color: #c678dd;">CREATE TABLE</span> borrow_records (
    id <span style="color: #e5c07b;">INT</span> <span style="color: #c678dd;">PRIMARY KEY</span> <span style="color: #c678dd;">AUTO_INCREMENT</span>,
    user_id <span style="color: #e5c07b;">INT</span>,
    book_id <span style="color: #e5c07b;">INT</span>,
    borrow_date <span style="color: #e5c07b;">DATETIME</span>,
    return_date <span style="color: #e5c07b;">DATETIME</span>
);</pre>
      </div>

      <h3 style="color: var(--dark-bg); margin-top: 25px;">📝 评分标准（100分）</h3>
      <ul style="color: #4b5563; line-height: 1.8;">
        <li>功能完整性（40分）- 所有必做功能正常运行</li>
        <li>知识点应用（30分）- 正确使用 Servlet、Session、JDBC</li>
        <li>代码规范（20分）- 命名规范、注释完整</li>
        <li>界面美观（10分）- 基本的 CSS 美化</li>
      </ul>
    </div>

    <!-- 进阶层案例 -->
    <div class="example-showcase" style="border-color: #3b82f6;">
      <div class="example-header" style="background: #3b82f6;">
        🔵 进阶层案例：在线选课系统
      </div>

      <h3 style="color: var(--dark-bg); margin-top: 20px;">📖 项目背景</h3>
      <p style="color: #4b5563; line-height: 1.8;">
        开发一个在线选课系统，学生可以浏览课程、选课、退课，查看已选课程和课程表。系统需要处理选课冲突（时间冲突、人数限制）。
      </p>

      <h3 style="color: var(--dark-bg); margin-top: 25px;">✅ 功能需求</h3>
      <p style="color: #4b5563; margin-bottom: 10px;"><strong>必做功能：</strong></p>
      <ul style="color: #4b5563; line-height: 1.8;">
        <li>用户登录/注册（学生、教师两种角色）</li>
        <li>课程浏览（支持按院系、时间筛选）</li>
        <li>在线选课（检查时间冲突、人数上限）</li>
        <li>退课功能（检查退课时间限制）</li>
        <li>我的课程表（按周显示）</li>
        <li>教师发布课程（仅教师可用）</li>
      </ul>
      <p style="color: #4b5563; margin-top: 15px;"><strong>选做功能（加分）：</strong></p>
      <ul style="color: #4b5563; line-height: 1.8;">
        <li>课程评价系统</li>
        <li>选课人数实时更新（AJAX）</li>
        <li>导出课程表为 PDF</li>
      </ul>

      <h3 style="color: var(--dark-bg); margin-top: 25px;">🔧 技术要求</h3>
      <ul style="color: #4b5563; line-height: 1.8;">
        <li>使用 Servlet 实现 MVC 模式（Controller-Service-DAO 三层）</li>
        <li>使用 Session 管理用户登录状态和购物车</li>
        <li>使用 PreparedStatement 防止 SQL 注入</li>
        <li>使用 Filter 实现登录验证和字符编码</li>
        <li>使用数据库连接池（推荐 HikariCP）</li>
        <li>密码使用 MD5 或 SHA-256 加密存储</li>
      </ul>

      <h3 style="color: var(--dark-bg); margin-top: 25px;">🗄️ 数据库设计（需自行设计）</h3>
      <p style="color: #4b5563; line-height: 1.8;">
        提示：至少需要以下数据表
      </p>
      <ul style="color: #4b5563; line-height: 1.8;">
        <li>用户表（users）- 存储学生和教师信息</li>
        <li>课程表（courses）- 存储课程基本信息</li>
        <li>选课记录表（course_selection）- 存储选课关系</li>
        <li>时间表（course_schedule）- 存储课程时间安排</li>
      </ul>

      <h3 style="color: var(--dark-bg); margin-top: 25px;">📝 评分标准（100分）</h3>
      <ul style="color: #4b5563; line-height: 1.8;">
        <li>功能完整性（35分）- 所有必做功能正常运行</li>
        <li>业务逻辑（25分）- 正确处理选课冲突、权限控制</li>
        <li>知识点应用（20分）- MVC 模式、Filter、连接池等</li>
        <li>代码质量（15分）- 代码规范、异常处理、注释</li>
        <li>界面设计（5分）- 用户体验良好</li>
        <li>选做功能（最多+10分）</li>
      </ul>
    </div>

    <!-- 挑战层案例 -->
    <div class="example-showcase" style="border-color: #f59e0b;">
      <div class="example-header" style="background: #f59e0b;">
        🟠 挑战层案例：智能实验室预约平台
      </div>

      <h3 style="color: var(--dark-bg); margin-top: 20px;">📖 项目背景</h3>
      <p style="color: #4b5563; line-height: 1.8;">
        学院有多个实验室，学生和教师可以在线预约实验室使用时间。系统需要智能处理预约冲突、自动提醒、使用记录统计分析等复杂功能。
      </p>

      <h3 style="color: var(--dark-bg); margin-top: 25px;">✅ 功能需求</h3>
      <p style="color: #4b5563; margin-bottom: 10px;"><strong>核心功能：</strong></p>
      <ul style="color: #4b5563; line-height: 1.8;">
        <li>用户系统（学生、教师、管理员三种角色，权限不同）</li>
        <li>实验室管理（增删改查、设备信息、容量管理）</li>
        <li>在线预约（可视化时间选择、冲突检测、审批流程）</li>
        <li>预约审核（教师审核学生预约）</li>
        <li>签到签退（二维码扫码或手动）</li>
        <li>使用统计（按实验室、按时间段、按用户统计）</li>
        <li>邮件/短信提醒（预约前1小时提醒）</li>
        <li>评价系统（使用后评价实验室设备）</li>
      </ul>

      <h3 style="color: var(--dark-bg); margin-top: 25px;">🔧 技术要求</h3>
      <ul style="color: #4b5563; line-height: 1.8;">
        <li>完整的 MVC 三层架构，使用设计模式（工厂、单例等）</li>
        <li>使用 Listener 实现在线人数统计</li>
        <li>使用 AJAX 实现部分页面无刷新交互</li>
        <li>使用数据库连接池和事务管理</li>
        <li>使用日志框架（Log4j 或 SLF4J）</li>
        <li>敏感信息加密存储，防止 SQL 注入和 XSS 攻击</li>
        <li>性能优化：缓存常用数据、索引优化</li>
      </ul>

      <h3 style="color: var(--dark-bg); margin-top: 25px;">🗄️ 数据库设计（需自行设计）</h3>
      <p style="color: #4b5563; line-height: 1.8;">
        要求：设计完整的数据库 E-R 图，至少包含 6-8 张表，合理设计外键关系，建立必要的索引。
      </p>

      <h3 style="color: var(--dark-bg); margin-top: 25px;">⚡ 性能要求</h3>
      <ul style="color: #4b5563; line-height: 1.8;">
        <li>支持至少 100 个并发用户</li>
        <li>页面响应时间 < 2 秒</li>
        <li>数据库查询优化（使用索引、避免 N+1 查询）</li>
      </ul>

      <h3 style="color: var(--dark-bg); margin-top: 25px;">📝 评分标准（100分 + 20分加分项）</h3>
      <ul style="color: #4b5563; line-height: 1.8;">
        <li>功能完整性（30分）- 所有核心功能完整实现</li>
        <li>架构设计（25分）- MVC 分层清晰、设计模式应用</li>
        <li>业务逻辑（20分）- 正确处理复杂业务（冲突、权限、审批）</li>
        <li>代码质量（15分）- 规范、可维护性、异常处理</li>
        <li>安全性（5分）- SQL 注入防护、XSS 防护、加密</li>
        <li>性能优化（5分）- 缓存、索引、并发处理</li>
        <li>加分项：创新功能、优秀的用户体验（+20分）</li>
      </ul>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 40px; margin-bottom: 20px;">📊 三个层次的对比总结</h3>

    <div class="comparison-grid">
      <div class="comparison-card">
        <h4 style="color: #dc2626;">❌ 传统方式：所有学生相同题目</h4>
        <ul style="color: #4b5563; line-height: 1.8; margin: 15px 0;">
          <li>题目：学生管理系统（每年都一样）</li>
          <li>网上答案泛滥</li>
          <li>学生互相抄袭</li>
          <li>代码高度相似</li>
          <li>真实学习效果差</li>
        </ul>
      </div>

      <div class="comparison-card after">
        <h4 style="color: #059669;">✅ AI 个性化：每个学生不同题目</h4>
        <ul style="color: #4b5563; line-height: 1.8; margin: 15px 0;">
          <li>学生A：图书借阅系统</li>
          <li>学生B：在线选课系统</li>
          <li>学生C：实验室预约系统</li>
          <li>知识点相同，场景各异</li>
          <li>抄袭无从下手</li>
        </ul>
      </div>
    </div>

  </section>

  <!-- 实验手册生成示例 -->
  <section id="manual-example" class="section">
    <h2 class="section-title">
      <span class="section-icon">📄</span>
      完整实验手册生成示例
    </h2>

    <p style="font-size: 1.1em; line-height: 1.8; color: #4b5563; margin-bottom: 25px;">
      以下展示使用 AI 为一位进阶层学生生成的完整实验手册（部分内容）。
    </p>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">实验手册示例 - 校园失物招领系统.md</span>
        <span class="code-lang">AI Generated</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;"><span style="color: #61afef;"># Java Web 实验三：校园失物招领系统</span>

<span style="color: #98c379;">## 一、项目背景</span>

校园内经常有学生丢失物品（如校园卡、钥匙、书籍等）或捡到失物。
目前主要通过班级群、朋友圈等方式发布寻物/招领信息，效率低下。
本项目旨在开发一个校园失物招领平台，方便学生发布失物信息和招领信息，
提高失物找回的成功率。

<span style="color: #98c379;">## 二、功能需求</span>

<span style="color: #e5c07b;">### 必做功能（90分）</span>

<span style="color: #c678dd;">#### 2.1 用户模块</span>
- 用户注册（学号、姓名、手机、密码）
- 用户登录（验证学号和密码）
- 个人信息修改
- 退出登录

<span style="color: #c678dd;">#### 2.2 失物发布模块</span>
- 发布失物信息（物品名称、丢失地点、丢失时间、描述、联系方式）
- 上传物品图片（可选）
- 查看自己发布的失物信息
- 修改/删除自己的失物信息
- 标记失物已找回

<span style="color: #c678dd;">#### 2.3 招领发布模块</span>
- 发布招领信息（物品名称、捡到地点、捡到时间、描述）
- 查看自己发布的招领信息
- 标记物品已归还

<span style="color: #c678dd;">#### 2.4 信息浏览模块</span>
- 浏览所有失物信息（分页显示）
- 浏览所有招领信息（分页显示）
- 按关键词搜索（物品名称、地点）
- 按时间排序

<span style="color: #c678dd;">#### 2.5 匹配提示模块</span>
- 当有新的招领信息时，自动匹配相似的失物信息
- 给失物发布者发送提示（页面通知即可）

<span style="color: #e5c07b;">### 选做功能（加分项，最多+10分）</span>
- 评论功能（在失物/招领下留言）
- 管理员审核（防止虚假信息）
- 数据统计（月度找回率、热门丢失地点等）

<span style="color: #98c379;">## 三、技术要求</span>

<span style="color: #c678dd;">### 3.1 必须使用的技术</span>
- <span style="color: #e06c75;">Servlet</span>：处理所有 HTTP 请求
- <span style="color: #e06c75;">JSP</span>：作为视图层展示页面
- <span style="color: #e06c75;">JDBC</span>：数据库操作（必须使用 PreparedStatement）
- <span style="color: #e06c75;">Session</span>：保持用户登录状态
- <span style="color: #e06c75;">Filter</span>：登录验证、字符编码过滤
- <span style="color: #e06c75;">MVC 模式</span>：清晰的三层架构

<span style="color: #c678dd;">### 3.2 推荐使用</span>
- 数据库连接池（HikariCP / DBCP）
- 密码加密（MD5 / SHA-256）
- 日志框架（Log4j）
- 前端框架（Bootstrap 美化界面）

<span style="color: #98c379;">## 四、数据库设计</span>

请自行设计数据库表结构，参考以下要点：

<span style="color: #c678dd;">### 4.1 用户表（users）</span>
字段建议：id, student_id（学号）, name, phone, password（加密存储）, 
          created_at, updated_at

<span style="color: #c678dd;">### 4.2 失物表（lost_items）</span>
字段建议：id, user_id, item_name, lost_place, lost_time, description, 
          contact, image_url, status（未找回/已找回）, created_at

<span style="color: #c678dd;">### 4.3 招领表（found_items）</span>
字段建议：id, user_id, item_name, found_place, found_time, description, 
          status（未归还/已归还）, created_at

<span style="color: #98c379;">## 五、测试用例</span>

系统将使用以下测试用例验证你的代码：

1. <span style="color: #98c379;">用户注册测试</span>：正常注册、重复学号注册
2. <span style="color: #98c379;">用户登录测试</span>：正确密码、错误密码、SQL 注入尝试
3. <span style="color: #98c379;">失物发布测试</span>：正常发布、字段验证
4. <span style="color: #98c379;">搜索功能测试</span>：关键词搜索、分页测试
5. <span style="color: #98c379;">Session 测试</span>：未登录访问受限页面应跳转登录
6. <span style="color: #98c379;">权限测试</span>：只能修改/删除自己发布的信息

<span style="color: #98c379;">## 六、评分标准（100分）</span>

| 评分项 | 分值 | 说明 |
|--------|------|------|
| 功能完整性 | 35分 | 所有必做功能正常运行 |
| 业务逻辑正确性 | 25分 | 匹配算法、权限控制、数据验证 |
| 知识点应用 | 20分 | MVC、Filter、PreparedStatement 等 |
| 代码质量 | 15分 | 命名规范、异常处理、代码复用 |
| 界面友好性 | 5分 | 布局合理、操作便捷 |
| 选做功能 | +10分 | 额外加分项 |

<span style="color: #98c379;">## 七、提交要求</span>

1. 提交完整的源代码（包含 SQL 建表脚本）
2. 提交实验报告（包含功能截图、数据库设计说明、难点分析）
3. 代码能够在 Tomcat 9+ 上正常运行
4. 提供测试账号和数据

<span style="color: #98c379;">## 八、参考资料</span>

- 教材第 5-8 章：Servlet、JSP、Session
- 课件：MVC 模式设计
- 示例项目：图书管理系统（仅供参考架构，不可直接使用）

<span style="color: #e06c75;">---
注意：本实验为个性化题目，请独立完成。如发现抄袭，本次实验记 0 分。
---</span></pre>
    </div>

    <div class="alert-box info">
      <span class="alert-icon">💡</span>
      <div>
        <strong>手册特点：</strong>
        <ul style="margin: 10px 0 0 20px; line-height: 1.8;">
          <li>结构完整，学生一看就懂</li>
          <li>明确告知技术要求和知识点</li>
          <li>提供评分标准，学生有目标</li>
          <li>难度适中，有挑战但不过分</li>
          <li>可以直接导出为 PDF 发给学生</li>
        </ul>
      </div>
    </div>
  </section>

  <!-- 如何使用 AI 生成 -->
  <section id="how-to" class="section">
    <h2 class="section-title">
      <span class="section-icon">🚀</span>
      实际操作：如何为一个班级生成个性化实验
    </h2>

    <h3 style="color: var(--dark-bg); margin-bottom: 20px;">📝 Step 1: 准备学生信息</h3>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">students.csv - 学生名单与能力层次</span>
        <span class="code-lang">CSV</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;">student_id,name,level,previous_score
2021001,张三,基础层,68
2021002,李四,进阶层,82
2021003,王五,挑战层,95
2021004,赵六,基础层,71
...
</pre>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 30px; margin-bottom: 20px;">📝 Step 2: 使用 Python 脚本批量生成</h3>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">generate_experiments.py</span>
        <span class="code-lang">Python</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;"><span style="color: #c678dd;">import</span> csv
<span style="color: #c678dd;">import</span> openai  <span style="color: #7f848e;"># 或使用 anthropic for Claude</span>
<span style="color: #c678dd;">import</span> os

<span style="color: #7f848e;"># 配置 API Key</span>
openai.api_key = os.getenv(<span style="color: #98c379;">"OPENAI_API_KEY"</span>)

<span style="color: #7f848e;"># 业务场景池（防止重复）</span>
scenarios = [
    <span style="color: #98c379;">"图书借阅系统"</span>, <span style="color: #98c379;">"在线选课系统"</span>, <span style="color: #98c379;">"失物招领系统"</span>,
    <span style="color: #98c379;">"宿舍报修系统"</span>, <span style="color: #98c379;">"实验室预约系统"</span>, <span style="color: #98c379;">"社团活动管理"</span>,
    <span style="color: #98c379;">"兼职信息平台"</span>, <span style="color: #98c379;">"二手交易平台"</span>, <span style="color: #98c379;">"教室借用系统"</span>,
    <span style="color: #98c379;">"志愿者管理系统"</span>, <span style="color: #98c379;">"校园跑腿服务"</span>, <span style="color: #98c379;">"问卷调查系统"</span>
]

<span style="color: #c678dd;">def</span> <span style="color: #61afef;">generate_experiment</span>(student_id, name, level, scenario):
    <span style="color: #98c379;">"""使用 GPT-4 生成个性化实验手册"""</span>
    
    prompt = <span style="color: #98c379;">f"""你是一位经验丰富的 Java Web 开发课程教师。
请为学生生成一个个性化的实验项目。

【基本信息】
- 学生 ID: {student_id}
- 学生姓名: {name}
- 学生层次: {level}
- 业务场景: {scenario}
- 实验编号: 第3次实验

【知识点要求】（必须全部考察）
1. Servlet 的使用
2. Session 和 Cookie 管理
3. JDBC 数据库操作（PreparedStatement）
4. MVC 模式
5. Filter 应用
6. 异常处理

【难度要求】
- 基础层：3-4个功能模块，提供数据库建表 SQL 和部分代码框架
- 进阶层：5-6个功能模块，仅提供数据库表结构提示
- 挑战层：7-8个功能模块，需自行设计数据库和架构

请生成完整的实验手册（Markdown格式），包含：
1. 项目背景（200字）
2. 功能需求（必做+选做）
3. 技术要求
4. 数据库设计指导
5. 测试用例说明
6. 评分标准
7. 提交要求
"""</span>

    response = openai.ChatCompletion.create(
        model=<span style="color: #98c379;">"gpt-4"</span>,
        messages=[{<span style="color: #98c379;">"role"</span>: <span style="color: #98c379;">"user"</span>, <span style="color: #98c379;">"content"</span>: prompt}],
        temperature=<span style="color: #d19a66;">0.8</span>  <span style="color: #7f848e;"># 提高多样性</span>
    )
    
    <span style="color: #c678dd;">return</span> response.choices[<span style="color: #d19a66;">0</span>].message.content

<span style="color: #7f848e;"># 读取学生名单</span>
<span style="color: #c678dd;">with</span> <span style="color: #61afef;">open</span>(<span style="color: #98c379;">'students.csv'</span>, <span style="color: #98c379;">'r'</span>, encoding=<span style="color: #98c379;">'utf-8'</span>) <span style="color: #c678dd;">as</span> f:
    reader = csv.DictReader(f)
    used_scenarios = <span style="color: #61afef;">set</span>()
    
    <span style="color: #c678dd;">for</span> i, student <span style="color: #c678dd;">in</span> <span style="color: #61afef;">enumerate</span>(reader):
        <span style="color: #7f848e;"># 选择一个未使用的场景</span>
        scenario = scenarios[i % <span style="color: #61afef;">len</span>(scenarios)]
        
        <span style="color: #7f848e;"># 生成实验手册</span>
        manual = <span style="color: #61afef;">generate_experiment</span>(
            student[<span style="color: #98c379;">'student_id'</span>],
            student[<span style="color: #98c379;">'name'</span>],
            student[<span style="color: #98c379;">'level'</span>],
            scenario
        )
        
        <span style="color: #7f848e;"># 保存为 Markdown 文件</span>
        filename = <span style="color: #98c379;">f"实验手册_{student['student_id']}_{student['name']}.md"</span>
        <span style="color: #c678dd;">with</span> <span style="color: #61afef;">open</span>(filename, <span style="color: #98c379;">'w'</span>, encoding=<span style="color: #98c379;">'utf-8'</span>) <span style="color: #c678dd;">as</span> out:
            out.write(manual)
        
        <span style="color: #61afef;">print</span>(<span style="color: #98c379;">f"✓ 已生成: {student['name']} - {scenario}"</span>)

<span style="color: #61afef;">print</span>(<span style="color: #98c379;">"\\n🎉 所有实验手册生成完成！"</span>)</pre>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 30px; margin-bottom: 20px;">📝 Step 3: 转换为 PDF（可选）</h3>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">convert_to_pdf.sh</span>
        <span class="code-lang">Bash</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;"><span style="color: #7f848e;">#!/bin/bash</span>
<span style="color: #7f848e;"># 使用 pandoc 将 Markdown 转换为 PDF</span>

<span style="color: #c678dd;">for</span> file in 实验手册_*.md; <span style="color: #c678dd;">do</span>
    output=<span style="color: #98c379;">"${file%.md}.pdf"</span>
    pandoc <span style="color: #98c379;">"$file"</span> -o <span style="color: #98c379;">"$output"</span> \
           --pdf-engine=xelatex \
           -V mainfont=<span style="color: #98c379;">"SimSun"</span> \
           -V fontsize=12pt
    <span style="color: #61afef;">echo</span> <span style="color: #98c379;">"✓ 已转换: $output"</span>
<span style="color: #c678dd;">done</span>

<span style="color: #61afef;">echo</span> <span style="color: #98c379;">"\\n🎉 所有 PDF 生成完成！"</span></pre>
    </div>

    <div class="alert-box warning">
      <span class="alert-icon">⏱️</span>
      <div>
        <strong>时间成本：</strong>使用 AI 为一个 40 人的班级生成个性化实验手册，大约需要 <strong>15-20 分钟</strong>（主要是 API 调用时间）。而传统方式人工设计 40 个不同题目，至少需要 <strong>几天时间</strong>，且质量难以保证。
      </div>
    </div>
  </section>

  <!-- 质量控制 -->
  <section id="quality" class="section">
    <h2 class="section-title">
      <span class="section-icon">🎯</span>
      质量控制与优化
    </h2>

    <h3 style="color: var(--dark-bg); margin-bottom: 20px;">✅ 如何确保 AI 生成的题目质量？</h3>

    <div class="workflow-steps">
      <div class="step-card">
        <div class="step-number">✓</div>
        <h3 class="step-title">人工抽查</h3>
        <p class="step-description">
          教师抽查 10-20% 的生成结果，确保题目合理、难度适当、知识点覆盖完整
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">✓</div>
        <h3 class="step-title">模板约束</h3>
        <p class="step-description">
          使用严格的提示词模板，规定必须包含的内容和格式，减少生成质量波动
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">✓</div>
        <h3 class="step-title">多次生成</h3>
        <p class="step-description">
          对于质量不理想的结果，重新生成或微调提示词，直到满意为止
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">✓</div>
        <h3 class="step-title">学生反馈</h3>
        <p class="step-description">
          收集学生对题目的反馈，不断优化生成策略
        </p>
      </div>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 40px; margin-bottom: 20px;">🔄 迭代优化</h3>

    <div class="alert-box success">
      <span class="alert-icon">📈</span>
      <div>
        <strong>经验总结：</strong>
        <ul style="margin: 10px 0 0 20px; line-height: 1.8;">
          <li>第一次使用时，建议提前 1-2 周生成，留出调整时间</li>
          <li>保存所有生成的题目，建立题库，后续可以复用和微调</li>
          <li>每学期更换业务场景池，确保往届学生无法提供答案</li>
          <li>对于挑战层学生，可以让他们提出想做的项目，AI 辅助完善需求</li>
        </ul>
      </div>
    </div>
  </section>

  <div style="text-align: center; margin: 40px 0;">
    <a href="/workshop/ai-teaching-demo-oct2025/" class="back-button">← 返回案例总览</a>
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

