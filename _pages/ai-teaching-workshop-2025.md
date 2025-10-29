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

.filter-tabs {
  display: flex;
  gap: 10px;
  margin-bottom: 30px;
  flex-wrap: wrap;
  justify-content: center;
}

.filter-tab {
  padding: 10px 24px;
  border: 2px solid var(--primary-color);
  background: white;
  color: var(--primary-color);
  border-radius: 25px;
  cursor: pointer;
  transition: all 0.3s ease;
  font-weight: 600;
  font-size: 0.95em;
}

.filter-tab:hover {
  background: var(--primary-color);
  color: white;
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(37, 99, 235, 0.3);
}

.filter-tab.active {
  background: var(--primary-color);
  color: white;
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

.case-card.hidden {
  display: none;
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
    <h1>🎓 AI辅助教学案例展示</h1>
    <p>太原科技大学计算机学院教学研讨会</p>
    <p>📅 2025年10月</p>
  </div>

  <div class="stats-section">
    <div class="stat-card">
      <div class="stat-number" id="totalCases">8</div>
      <div class="stat-label">教学案例</div>
    </div>
    <div class="stat-card" style="background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);">
      <div class="stat-number" id="totalTools">15+</div>
      <div class="stat-label">AI工具应用</div>
    </div>
    <div class="stat-card" style="background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);">
      <div class="stat-number">5</div>
      <div class="stat-label">应用场景</div>
    </div>
  </div>

  <div class="filter-tabs">
    <button class="filter-tab active" data-category="all">全部案例</button>
    <button class="filter-tab" data-category="代码">代码教学</button>
    <button class="filter-tab" data-category="理论">理论讲解</button>
    <button class="filter-tab" data-category="实验">实验设计</button>
    <button class="filter-tab" data-category="评估">作业评估</button>
    <button class="filter-tab" data-category="其他">其他应用</button>
  </div>

  <div class="cases-grid" id="casesGrid">
    
    <!-- 案例1：示例 - 您可以复制此模板添加更多案例 -->
    <div class="case-card" data-category="代码">
      <div class="case-header">
        <div class="case-icon">💻</div>
        <h3 class="case-title">智能代码审查助手</h3>
      </div>
      <div class="case-teacher">👨‍🏫 授课教师：樊光瑞</div>
      <div class="case-category">代码教学</div>
      <p class="case-description">
        利用AI工具（GitHub Copilot + ChatGPT）辅助学生进行代码审查，自动识别代码中的潜在问题、优化建议，并提供个性化的改进方案。
      </p>
      <div class="case-tools">
        <span class="tool-tag">GitHub Copilot</span>
        <span class="tool-tag">ChatGPT</span>
        <span class="tool-tag">VS Code</span>
      </div>
      <div class="case-expand">
        <h4>📋 实施步骤：</h4>
        <ul>
          <li>学生提交作业代码到GitHub仓库</li>
          <li>使用Copilot进行实时代码建议</li>
          <li>ChatGPT分析代码质量并生成详细报告</li>
          <li>学生根据反馈进行迭代改进</li>
        </ul>
        <h4>✅ 教学效果：</h4>
        <ul>
          <li>代码质量提升30%</li>
          <li>学生调试时间减少40%</li>
          <li>编程规范意识显著增强</li>
        </ul>
      </div>
      <span class="expand-icon">▼</span>
    </div>

    <!-- 案例2 -->
    <div class="case-card" data-category="理论">
      <div class="case-header">
        <div class="case-icon">📚</div>
        <h3 class="case-title">AI辅助概念可视化</h3>
      </div>
      <div class="case-teacher">👨‍🏫 授课教师：张老师</div>
      <div class="case-category">理论讲解</div>
      <p class="case-description">
        使用AI图像生成工具将抽象的计算机科学概念转化为直观的可视化图表，帮助学生理解复杂的数据结构和算法。
      </p>
      <div class="case-tools">
        <span class="tool-tag">DALL-E</span>
        <span class="tool-tag">Midjourney</span>
        <span class="tool-tag">Mermaid AI</span>
      </div>
      <div class="case-expand">
        <h4>📋 应用场景：</h4>
        <ul>
          <li>二叉树、图论等数据结构可视化</li>
          <li>排序算法动态演示图生成</li>
          <li>系统架构图自动绘制</li>
        </ul>
        <h4>✅ 教学效果：</h4>
        <ul>
          <li>学生理解速度提升50%</li>
          <li>课堂互动性显著增强</li>
          <li>知识点记忆率提高35%</li>
        </ul>
      </div>
      <span class="expand-icon">▼</span>
    </div>

    <!-- 案例3 -->
    <div class="case-card" data-category="实验">
      <div class="case-header">
        <div class="case-icon">🔬</div>
        <h3 class="case-title">个性化实验设计生成器</h3>
      </div>
      <div class="case-teacher">👨‍🏫 授课教师：李老师</div>
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

    <!-- 案例4 -->
    <div class="case-card" data-category="评估">
      <div class="case-header">
        <div class="case-icon">📊</div>
        <h3 class="case-title">智能作业批改系统</h3>
      </div>
      <div class="case-teacher">👨‍🏫 授课教师：王老师</div>
      <div class="case-category">作业评估</div>
      <p class="case-description">
        结合多个AI模型自动批改编程作业，提供详细的反馈报告，包括代码质量、算法效率、可读性等多维度评价。
      </p>
      <div class="case-tools">
        <span class="tool-tag">CodeBERT</span>
        <span class="tool-tag">GPT-4</span>
        <span class="tool-tag">JudgeOnline</span>
      </div>
      <div class="case-expand">
        <h4>📋 评估维度：</h4>
        <ul>
          <li>代码正确性（单元测试）</li>
          <li>算法时间/空间复杂度分析</li>
          <li>代码规范性和可读性</li>
          <li>创新性和优化建议</li>
        </ul>
        <h4>✅ 教学效果：</h4>
        <ul>
          <li>批改效率提升10倍</li>
          <li>反馈及时性从3天缩短至5分钟</li>
          <li>评分一致性达98%</li>
        </ul>
      </div>
      <span class="expand-icon">▼</span>
    </div>

    <!-- 案例5 -->
    <div class="case-card" data-category="理论">
      <div class="case-header">
        <div class="case-icon">🤖</div>
        <h3 class="case-title">AI对话式学习助手</h3>
      </div>
      <div class="case-teacher">👨‍🏫 授课教师：赵老师</div>
      <div class="case-category">理论讲解</div>
      <p class="case-description">
        开发基于大语言模型的24/7在线学习助手，为学生提供课后答疑、概念解释、学习路径规划等服务。
      </p>
      <div class="case-tools">
        <span class="tool-tag">ChatGPT</span>
        <span class="tool-tag">Langchain</span>
        <span class="tool-tag">知识库RAG</span>
      </div>
      <div class="case-expand">
        <h4>📋 主要功能：</h4>
        <ul>
          <li>课程知识点即时答疑</li>
          <li>编程问题调试建议</li>
          <li>个性化学习资源推荐</li>
          <li>学习进度跟踪与提醒</li>
        </ul>
        <h4>✅ 使用数据：</h4>
        <ul>
          <li>日均对话量：200+次</li>
          <li>问题解决率：85%</li>
          <li>学生使用率：78%</li>
        </ul>
      </div>
      <span class="expand-icon">▼</span>
    </div>

    <!-- 案例6 -->
    <div class="case-card" data-category="代码">
      <div class="case-header">
        <div class="case-icon">🎯</div>
        <h3 class="case-title">错误模式识别与诊断</h3>
      </div>
      <div class="case-teacher">👨‍🏫 授课教师：陈老师</div>
      <div class="case-category">代码教学</div>
      <p class="case-description">
        使用机器学习模型识别学生代码中的常见错误模式，提供针对性的教学干预和个性化辅导。
      </p>
      <div class="case-tools">
        <span class="tool-tag">自研模型</span>
        <span class="tool-tag">TensorFlow</span>
        <span class="tool-tag">数据分析平台</span>
      </div>
      <div class="case-expand">
        <h4>📋 识别内容：</h4>
        <ul>
          <li>语法错误模式分类</li>
          <li>逻辑错误常见场景</li>
          <li>算法理解偏差识别</li>
          <li>编程思维误区发现</li>
        </ul>
        <h4>✅ 应用效果：</h4>
        <ul>
          <li>提前发现80%潜在问题</li>
          <li>针对性辅导效率提升3倍</li>
          <li>学生错误重复率降低60%</li>
        </ul>
      </div>
      <span class="expand-icon">▼</span>
    </div>

    <!-- 案例7 -->
    <div class="case-card" data-category="其他">
      <div class="case-header">
        <div class="case-icon">✍️</div>
        <h3 class="case-title">自动化教学材料生成</h3>
      </div>
      <div class="case-teacher">👨‍🏫 授课教师：刘老师</div>
      <div class="case-category">其他应用</div>
      <p class="case-description">
        利用AI快速生成课程PPT、练习题、知识点总结等教学材料，大幅减轻教师备课负担。
      </p>
      <div class="case-tools">
        <span class="tool-tag">Gamma AI</span>
        <span class="tool-tag">Notion AI</span>
        <span class="tool-tag">GPT-4</span>
      </div>
      <div class="case-expand">
        <h4>📋 生成内容：</h4>
        <ul>
          <li>课程PPT自动排版与美化</li>
          <li>章节练习题库（含答案）</li>
          <li>知识点脑图与总结</li>
          <li>课程大纲与教学计划</li>
        </ul>
        <h4>✅ 效率提升：</h4>
        <ul>
          <li>备课时间减少70%</li>
          <li>教学材料多样性提升</li>
          <li>更新迭代速度提升5倍</li>
        </ul>
      </div>
      <span class="expand-icon">▼</span>
    </div>

    <!-- 案例8 -->
    <div class="case-card" data-category="实验">
      <div class="case-header">
        <div class="case-icon">🎮</div>
        <h3 class="case-title">游戏化学习平台</h3>
      </div>
      <div class="case-teacher">👨‍🏫 授课教师：周老师</div>
      <div class="case-category">实验设计</div>
      <p class="case-description">
        结合AI技术打造游戏化编程学习平台，通过闯关、积分、排行榜等机制激发学生学习兴趣。
      </p>
      <div class="case-tools">
        <span class="tool-tag">Unity</span>
        <span class="tool-tag">强化学习</span>
        <span class="tool-tag">GPT API</span>
      </div>
      <div class="case-expand">
        <h4>📋 核心机制：</h4>
        <ul>
          <li>AI动态调整关卡难度</li>
          <li>智能提示系统（非直接答案）</li>
          <li>代码对战模式</li>
          <li>成就系统与社交分享</li>
        </ul>
        <h4>✅ 学习效果：</h4>
        <ul>
          <li>学生主动学习时长增加200%</li>
          <li>课程参与度提升至96%</li>
          <li>知识掌握度提高45%</li>
        </ul>
      </div>
      <span class="expand-icon">▼</span>
    </div>

  </div>

  <div class="footer-note">
    <p>💡 <strong>提示：</strong>点击案例卡片可查看详细信息</p>
    <p>📧 如需交流讨论，请联系：fgr@tyust.edu.cn</p>
    <p style="margin-top: 15px; font-size: 0.85em; color: #9ca3af;">
      本页面仅用于内部教学研讨 | 太原科技大学计算机学院 | 2025年10月
    </p>
  </div>
</div>

<script>
// 筛选功能
document.querySelectorAll('.filter-tab').forEach(tab => {
  tab.addEventListener('click', function() {
    // 更新激活状态
    document.querySelectorAll('.filter-tab').forEach(t => t.classList.remove('active'));
    this.classList.add('active');
    
    const category = this.dataset.category;
    const cards = document.querySelectorAll('.case-card');
    
    cards.forEach(card => {
      if (category === 'all' || card.dataset.category === category) {
        card.classList.remove('hidden');
      } else {
        card.classList.add('hidden');
      }
    });
  });
});

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

