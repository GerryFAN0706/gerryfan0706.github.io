---
permalink: /workshop/
title: "Workshops & Resources"
author_profile: true
layout: single
---

<style>
.workshop-hero {
  text-align: center;
  padding: 40px 20px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  border-radius: 16px;
  margin-bottom: 40px;
  box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.2);
}

.workshop-hero h1 {
  margin: 0 0 15px 0;
  font-size: 2.5em;
  font-weight: 700;
}

.workshop-hero p {
  font-size: 1.15em;
  opacity: 0.95;
  max-width: 800px;
  margin: 0 auto;
}

.workshops-container {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
  gap: 30px;
  margin-bottom: 40px;
}

.workshop-card {
  background: white;
  border-radius: 12px;
  overflow: hidden;
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
  transition: all 0.3s ease;
  border-left: 5px solid #667eea;
  display: flex;
  flex-direction: column;
}

.workshop-card:hover {
  transform: translateY(-8px);
  box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.15), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
}

.workshop-header {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  padding: 30px 25px;
  color: white;
}

.workshop-icon {
  font-size: 3em;
  margin-bottom: 15px;
}

.workshop-title {
  font-size: 1.5em;
  font-weight: 700;
  margin: 0 0 10px 0;
}

.workshop-subtitle {
  font-size: 0.95em;
  opacity: 0.9;
  margin: 0;
}

.workshop-body {
  padding: 25px;
  flex: 1;
  display: flex;
  flex-direction: column;
}

.workshop-description {
  color: #4b5563;
  line-height: 1.6;
  margin-bottom: 20px;
  flex: 1;
}

.workshop-meta {
  display: flex;
  gap: 15px;
  margin-bottom: 20px;
  flex-wrap: wrap;
}

.meta-item {
  display: flex;
  align-items: center;
  gap: 5px;
  color: #6b7280;
  font-size: 0.9em;
}

.workshop-tags {
  display: flex;
  gap: 8px;
  flex-wrap: wrap;
  margin-bottom: 20px;
}

.tag {
  background: #e0e7ff;
  color: #4f46e5;
  padding: 4px 12px;
  border-radius: 12px;
  font-size: 0.85em;
  font-weight: 600;
}

.workshop-button {
  display: inline-block;
  padding: 12px 25px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  border-radius: 8px;
  text-decoration: none;
  font-weight: 600;
  text-align: center;
  transition: all 0.3s ease;
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
}

.workshop-button:hover {
  transform: translateY(-2px);
  box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.2);
  color: white;
}

.coming-soon-badge {
  position: absolute;
  top: 20px;
  right: 20px;
  background: #fbbf24;
  color: #78350f;
  padding: 6px 15px;
  border-radius: 20px;
  font-size: 0.85em;
  font-weight: 700;
}

.workshop-card.coming-soon {
  opacity: 0.8;
  position: relative;
}

.workshop-card.coming-soon .workshop-button {
  background: #9ca3af;
  cursor: not-allowed;
}

.stats-section {
  background: #f9fafb;
  padding: 30px;
  border-radius: 12px;
  margin-bottom: 40px;
  border-left: 4px solid #667eea;
}

.stats-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 20px;
}

.stat-item {
  text-align: center;
}

.stat-number {
  font-size: 2.5em;
  font-weight: 700;
  color: #667eea;
  display: block;
}

.stat-label {
  color: #6b7280;
  font-size: 0.95em;
}

@media (max-width: 768px) {
  .workshops-container {
    grid-template-columns: 1fr;
  }
  
  .workshop-hero h1 {
    font-size: 1.8em;
  }
}
</style>

<div class="workshop-hero">
  <h1>🎓 Workshops & Resources</h1>
  <p>分享教学经验、研究方法和技术工具，助力学术与教学创新</p>
</div>

<div class="stats-section">
  <div class="stats-grid">
    <div class="stat-item">
      <span class="stat-number">1</span>
      <span class="stat-label">Available Workshops</span>
    </div>
    <div class="stat-item">
      <span class="stat-number">3</span>
      <span class="stat-label">Teaching Cases</span>
    </div>
    <div class="stat-item">
      <span class="stat-number">9+</span>
      <span class="stat-label">AI Tools Covered</span>
    </div>
  </div>
</div>

<div class="workshops-container">
  
  <!-- Workshop 1: AI辅助教学 -->
  <div class="workshop-card">
    <div class="workshop-header">
      <div class="workshop-icon">🤖</div>
      <h3 class="workshop-title">AI辅助教学案例</h3>
      <p class="workshop-subtitle">AI-Assisted Teaching Cases</p>
    </div>
    <div class="workshop-body">
      <div class="workshop-meta">
        <div class="meta-item">
          <span>📅</span>
          <span>2025</span>
        </div>
        <div class="meta-item">
          <span>📚</span>
          <span>3 个案例</span>
        </div>
        <div class="meta-item">
          <span>⏱️</span>
          <span>持续更新</span>
        </div>
      </div>
      
      <div class="workshop-description">
        探索人工智能在教学中的创新应用，包括智能代码审查、个性化实验设计和AI驱动的课程材料制作。涵盖 Cursor、GPT-4、Claude 等多种AI工具的实践经验。
      </div>
      
      <div class="workshop-tags">
        <span class="tag">Cursor</span>
        <span class="tag">GPT-4</span>
        <span class="tag">代码审查</span>
        <span class="tag">实验设计</span>
        <span class="tag">PPT制作</span>
      </div>
      
      <a href="/workshop/aiedu/" class="workshop-button">
        进入Workshop →
      </a>
    </div>
  </div>

  <!-- Workshop 2: 研究方法 (Coming Soon) -->
  <div class="workshop-card coming-soon">
    <span class="coming-soon-badge">Coming Soon</span>
    <div class="workshop-header" style="background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);">
      <div class="workshop-icon">🔬</div>
      <h3 class="workshop-title">研究方法与工具</h3>
      <p class="workshop-subtitle">Research Methods & Tools</p>
    </div>
    <div class="workshop-body">
      <div class="workshop-meta">
        <div class="meta-item">
          <span>📅</span>
          <span>规划中</span>
        </div>
        <div class="meta-item">
          <span>📚</span>
          <span>TBD</span>
        </div>
      </div>
      
      <div class="workshop-description">
        分享学术研究中的实用方法和工具，包括文献管理、数据分析、论文写作、实验设计等方面的经验和最佳实践。
      </div>
      
      <div class="workshop-tags">
        <span class="tag">文献管理</span>
        <span class="tag">数据分析</span>
        <span class="tag">论文写作</span>
        <span class="tag">实验设计</span>
      </div>
      
      <a href="#" class="workshop-button" onclick="return false;">
        敬请期待
      </a>
    </div>
  </div>

  <!-- Workshop 3: 技术分享 (Coming Soon) -->
  <div class="workshop-card coming-soon">
    <span class="coming-soon-badge">Coming Soon</span>
    <div class="workshop-header" style="background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);">
      <div class="workshop-icon">💻</div>
      <h3 class="workshop-title">技术工具指南</h3>
      <p class="workshop-subtitle">Tech Tools Guide</p>
    </div>
    <div class="workshop-body">
      <div class="workshop-meta">
        <div class="meta-item">
          <span>📅</span>
          <span>规划中</span>
        </div>
        <div class="meta-item">
          <span>📚</span>
          <span>TBD</span>
        </div>
      </div>
      
      <div class="workshop-description">
        介绍学术工作中常用的技术工具和平台，包括版本控制、云服务、可视化工具、协作平台等的使用技巧和经验分享。
      </div>
      
      <div class="workshop-tags">
        <span class="tag">Git/GitHub</span>
        <span class="tag">云服务</span>
        <span class="tag">可视化</span>
        <span class="tag">协作工具</span>
      </div>
      
      <a href="#" class="workshop-button" onclick="return false;">
        敬请期待
      </a>
    </div>
  </div>

</div>

<div style="background: #f0f9ff; padding: 25px; border-radius: 12px; border-left: 4px solid #0ea5e9; margin-top: 40px;">
  <h3 style="margin-top: 0; color: #0369a1;">💡 关于 Workshops</h3>
  <p style="color: #475569; line-height: 1.6; margin-bottom: 10px;">
    这些 Workshop 内容是我在教学和研究实践中的经验总结，希望能为同行提供一些参考和启发。内容会持续更新和完善。
  </p>
  <p style="color: #475569; line-height: 1.6; margin: 0;">
    📧 如有问题或建议，欢迎联系：<strong>fgr@tyust.edu.cn</strong>
  </p>
</div>

<script>
// 添加卡片进入动画
document.addEventListener('DOMContentLoaded', function() {
  const cards = document.querySelectorAll('.workshop-card');
  cards.forEach((card, index) => {
    card.style.opacity = '0';
    card.style.transform = 'translateY(30px)';
    setTimeout(() => {
      card.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
      card.style.opacity = '1';
      card.style.transform = 'translateY(0)';
    }, index * 150);
  });
});
</script>



