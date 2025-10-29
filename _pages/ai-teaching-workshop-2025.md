---
permalink: /workshop/ai-teaching-demo-oct2025/
title: "AI辅助教学案例展示"
author_profile: false
layout: single
---

<style>
:root {
  --primary-color: #2563eb;
  --secondary-color: #7c3aed;
  --accent-color: #10b981;
  --dark-bg: #1f2937;
  --light-bg: #f9fafb;
  --card-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
}

.workshop-container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 20px;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
}

.workshop-header {
  text-align: center;
  padding: 40px 20px;
  background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
  color: white;
  border-radius: 16px;
  margin-bottom: 40px;
  box-shadow: var(--card-shadow);
}

.workshop-header h1 {
  margin: 0 0 10px 0;
  font-size: 2.5em;
  font-weight: 700;
}

.workshop-header p {
  margin: 5px 0;
  font-size: 1.1em;
  opacity: 0.95;
}

.cases-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
  gap: 30px;
  margin-bottom: 40px;
}

.case-card {
  background: white;
  border-radius: 12px;
  padding: 25px;
  box-shadow: var(--card-shadow);
  transition: all 0.3s ease;
  border-left: 4px solid var(--primary-color);
  cursor: pointer;
  position: relative;
}

.case-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
}

.case-header {
  display: flex;
  align-items: center;
  gap: 15px;
  margin-bottom: 15px;
}

.case-icon {
  width: 50px;
  height: 50px;
  background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
  border-radius: 10px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 24px;
  flex-shrink: 0;
}

.case-title {
  font-size: 1.3em;
  font-weight: 700;
  color: var(--dark-bg);
  margin: 0;
}

.case-teacher {
  font-size: 0.9em;
  color: #6b7280;
  margin-bottom: 12px;
}

.case-category {
  display: inline-block;
  padding: 4px 12px;
  background: #dbeafe;
  color: var(--primary-color);
  border-radius: 12px;
  font-size: 0.85em;
  font-weight: 600;
  margin-bottom: 12px;
}

.case-description {
  color: #4b5563;
  line-height: 1.6;
  margin-bottom: 15px;
}

.case-tools {
  display: flex;
  gap: 8px;
  flex-wrap: wrap;
  margin-top: 12px;
}

.tool-tag {
  padding: 4px 10px;
  background: #f3f4f6;
  border-radius: 6px;
  font-size: 0.8em;
  color: #6b7280;
  font-weight: 500;
}

.case-expand {
  margin-top: 15px;
  padding-top: 15px;
  border-top: 1px solid #e5e7eb;
  display: none;
}

.case-card.expanded .case-expand {
  display: block;
  animation: slideDown 0.3s ease;
}

@keyframes slideDown {
  from {
    opacity: 0;
    transform: translateY(-10px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.case-expand h4 {
  color: var(--primary-color);
  margin-top: 10px;
  margin-bottom: 8px;
  font-size: 1em;
}

.case-expand ul {
  margin: 0;
  padding-left: 20px;
  color: #4b5563;
  line-height: 1.8;
}

.expand-icon {
  position: absolute;
  right: 15px;
  bottom: 15px;
  color: var(--primary-color);
  font-size: 1.5em;
  transition: transform 0.3s ease;
}

.case-card.expanded .expand-icon {
  transform: rotate(180deg);
}

.stats-section {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 20px;
  margin-bottom: 40px;
}

.stat-card {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  padding: 25px;
  border-radius: 12px;
  text-align: center;
  color: white;
  box-shadow: var(--card-shadow);
}

.stat-number {
  font-size: 2.5em;
  font-weight: 700;
  margin-bottom: 5px;
}

.stat-label {
  font-size: 0.95em;
  opacity: 0.95;
}

.footer-note {
  text-align: center;
  padding: 30px;
  color: #6b7280;
  font-size: 0.9em;
  border-top: 1px solid #e5e7eb;
  margin-top: 40px;
}

@media (max-width: 768px) {
  .cases-grid {
    grid-template-columns: 1fr;
  }
  
  .workshop-header h1 {
    font-size: 1.8em;
  }
}
</style>

<div class="workshop-container">
  <div class="workshop-header">
    <h1>🎓 AI辅助教学案例</h1>
    <p style="margin-top: 15px; font-size: 1.05em;">探索人工智能在教学中的创新应用</p>
  </div>

  <div class="stats-section">
    <div class="stat-card">
      <div class="stat-number" id="totalCases">3</div>
      <div class="stat-label">教学案例</div>
    </div>
    <div class="stat-card" style="background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);">
      <div class="stat-number" id="totalTools">9+</div>
      <div class="stat-label">AI工具应用</div>
    </div>
    <div class="stat-card" style="background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);">
      <div class="stat-number">3</div>
      <div class="stat-label">应用场景</div>
    </div>
  </div>

  <div class="cases-grid" id="casesGrid">
    
    <!-- 案例1：代码审查助手 -->
    <div class="case-card" data-category="代码">
      <div class="case-header">
        <div class="case-icon">💻</div>
        <h3 class="case-title">智能代码审查助手</h3>
      </div>
      <div class="case-teacher">👨‍🏫 樊光瑞</div>
      <div class="case-category">代码教学</div>
      <p class="case-description">
        在 Java Web 开发课程中，以 Cursor 为主要工具，配合测试用例和课程大纲，实现智能化代码审查。自动识别安全问题、代码规范问题，检查知识点掌握情况，提供个性化改进建议。
      </p>
      <div class="case-tools">
        <span class="tool-tag">Cursor (主要)</span>
        <span class="tool-tag">ChatGPT</span>
        <span class="tool-tag">GitHub Copilot</span>
        <span class="tool-tag">JUnit 5</span>
      </div>
      <div class="case-expand">
        <h4>📋 实施步骤：</h4>
        <ul>
          <li>学生在 Cursor 中完成 Java Web 项目开发</li>
          <li>使用 AI 进行代码审查和问题诊断</li>
          <li>运行预设测试用例，检查功能完整性</li>
          <li>对照课程大纲检查知识点应用情况</li>
          <li>生成详细反馈报告，学生迭代改进</li>
        </ul>
        <h4>✅ 教学效果：</h4>
        <ul>
          <li>代码质量提升 30%，规范性提升 37%</li>
          <li>SQL 注入防护意识从 45% 提升至 89%</li>
          <li>教师审查时间减少 67%</li>
          <li>学生调试时间减少 40%</li>
        </ul>
        <div style="margin-top: 20px; text-align: center;">
          <a href="/workshop/ai-code-review-java-web/" style="display: inline-block; padding: 12px 30px; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); color: white; border-radius: 8px; text-decoration: none; font-weight: 600; transition: all 0.3s ease;">
            📖 查看完整案例详情 →
          </a>
        </div>
      </div>
      <span class="expand-icon">▼</span>
    </div>

    <!-- 案例2：个性化实验设计 -->
    <div class="case-card" data-category="实验">
      <div class="case-header">
        <div class="case-icon">🔬</div>
        <h3 class="case-title">个性化实验设计生成器</h3>
      </div>
      <div class="case-teacher">👨‍🏫 樊光瑞</div>
      <div class="case-category">实验设计</div>
      <p class="case-description">
        利用GPT-4为每位学生生成定制化的编程实验题目，根据学生的学习进度和能力水平调整难度。
      </p>
      <div class="case-tools">
        <span class="tool-tag">GPT-4</span>
        <span class="tool-tag">Claude</span>
        <span class="tool-tag">自研平台</span>
      </div>
      <div class="case-expand">
        <h4>📋 核心功能：</h4>
        <ul>
          <li>根据学生水平自动调整题目难度</li>
          <li>生成多样化的测试用例</li>
          <li>提供详细的参考答案和解题思路</li>
        </ul>
        <h4>✅ 教学效果：</h4>
        <ul>
          <li>实验完成率提升至95%</li>
          <li>学生满意度达92%</li>
          <li>有效避免实验雷同</li>
        </ul>
      </div>
      <span class="expand-icon">▼</span>
    </div>

    <!-- 案例3：PPT生成 -->
    <div class="case-card" data-category="其他">
      <div class="case-header">
        <div class="case-icon">📊</div>
        <h3 class="case-title">AI驱动的课程PPT生成</h3>
      </div>
      <div class="case-teacher">👨‍🏫 樊光瑞</div>
      <div class="case-category">教学材料制作</div>
      <p class="case-description">
        利用AI工具快速生成专业、美观的课程PPT，包括内容组织、排版设计、图表生成等，大幅减轻教师备课负担。
      </p>
      <div class="case-tools">
        <span class="tool-tag">Gamma AI</span>
        <span class="tool-tag">Notion AI</span>
        <span class="tool-tag">GPT-4</span>
        <span class="tool-tag">Canva AI</span>
      </div>
      <div class="case-expand">
        <h4>📋 核心功能：</h4>
        <ul>
          <li>输入课程主题，AI自动生成完整PPT结构</li>
          <li>智能选择合适的布局模板和配色方案</li>
          <li>自动生成图表、示意图和可视化内容</li>
          <li>代码示例的美化展示和语法高亮</li>
          <li>演讲备注和教学要点自动生成</li>
        </ul>
        <h4>✅ 应用效果：</h4>
        <ul>
          <li>PPT制作时间从4小时缩短至30分钟</li>
          <li>视觉呈现专业度显著提升</li>
          <li>学生课堂注意力集中度提高40%</li>
          <li>可快速迭代更新课程内容</li>
        </ul>
      </div>
      <span class="expand-icon">▼</span>
    </div>

  </div>

  <div class="footer-note">
    <p>💡 <strong>提示：</strong>点击案例卡片可查看详细信息</p>
    <p>📧 如需交流讨论，请联系：fgr@tyust.edu.cn</p>
  </div>
</div>

<script>
// 卡片展开/收起功能
document.querySelectorAll('.case-card').forEach(card => {
  card.addEventListener('click', function(e) {
    // 防止点击工具标签时触发
    if (e.target.classList.contains('tool-tag')) return;
    
    this.classList.toggle('expanded');
  });
});

// 动态统计
function updateStats() {
  const totalCases = document.querySelectorAll('.case-card').length;
  document.getElementById('totalCases').textContent = totalCases;
  
  const tools = new Set();
  document.querySelectorAll('.tool-tag').forEach(tag => {
    tools.add(tag.textContent);
  });
  document.getElementById('totalTools').textContent = tools.size + '+';
}

updateStats();

// 添加进入动画
document.addEventListener('DOMContentLoaded', function() {
  const cards = document.querySelectorAll('.case-card');
  cards.forEach((card, index) => {
    card.style.opacity = '0';
    card.style.transform = 'translateY(20px)';
    setTimeout(() => {
      card.style.transition = 'opacity 0.5s ease, transform 0.5s ease';
      card.style.opacity = '1';
      card.style.transform = 'translateY(0)';
    }, index * 100);
  });
});
</script>

