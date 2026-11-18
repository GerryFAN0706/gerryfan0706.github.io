---
body_class: page--case-code-review
permalink: /workshop/aiedu/code-review/
title: "智能代码审查助手 - Java Web开发课程应用案例"
author_profile: false
layout: single
---


<div class="demo-container">
  <a href="/workshop/aiedu/" class="back-button">← 返回案例总览</a>

  <div class="hero-section">
    <h1>💻 智能代码审查助手</h1>
    <p class="subtitle">基于 Cursor AI 的 Java Web 开发教学实践</p>
    <p class="course-info">📚 课程：Java Web 开发 | 👨‍🏫 樊光瑞</p>
  </div>

  <div class="nav-pills">
    <a class="nav-pill" href="#overview">📋 案例概述</a>
    <a class="nav-pill" href="#workflow">🔄 完整工作流程</a>
    <a class="nav-pill" href="#cursor">💡 Cursor 使用详解</a>
    <a class="nav-pill" href="#testing">🧪 测试用例设置</a>
    <a class="nav-pill" href="#knowledge">📖 知识点检查</a>
  </div>

  <!-- 案例概述 -->
  <section id="overview" class="section">
    <h2 class="section-title">
      <span class="section-icon">📋</span>
      案例概述
    </h2>
    
    <p style="font-size: 1.1em; line-height: 1.8; color: #4b5563; margin-bottom: 25px;">
      在 Java Web 开发课程中，学生需要完成一个完整的 Web 项目（如在线购物系统、图书管理系统等）。本案例展示如何使用 <strong>Cursor</strong> 作为主要工具，配合 ChatGPT、GitHub Copilot 等 AI 辅助工具，实现智能化的代码审查和教学反馈。
    </p>

    <div class="alert-box info">
      <span class="alert-icon">💡</span>
      <div>
        <strong>核心理念：</strong>不是简单地让 AI 帮学生写代码，而是通过 AI 帮助学生<strong>发现问题、理解问题、改进代码</strong>，培养良好的编程习惯和代码质量意识。
      </div>
    </div>

    <h3 style="margin-top: 30px; color: var(--dark-bg);">🎯 教学目标</h3>
    <ul style="line-height: 2; color: #4b5563;">
      <li>帮助学生掌握 Java Web 核心技术（Servlet、JSP、MVC、数据库操作）</li>
      <li>培养代码规范意识和最佳实践</li>
      <li>提高代码调试和问题解决能力</li>
      <li>理解软件工程中的测试思维</li>
      <li>学会使用现代 AI 辅助工具提升开发效率</li>
    </ul>

    <h3 style="margin-top: 30px; color: var(--dark-bg);">🛠️ 技术栈与工具</h3>
    <div style="margin-top: 15px;">
      <span class="tool-badge">Cursor (主要)</span>
      <span class="tool-badge">ChatGPT</span>
      <span class="tool-badge">GitHub Copilot</span>
      <span class="tool-badge">JUnit 5</span>
      <span class="tool-badge">Maven</span>
      <span class="tool-badge">Tomcat</span>
      <span class="tool-badge">MySQL</span>
      <span class="tool-badge">Git</span>
    </div>

    <h3 style="margin-top: 30px; color: var(--dark-bg);">📄 课程项目要求</h3>
    <div class="alert-box info">
      <span class="alert-icon">📋</span>
      <div>
        <strong>项目要求文档：</strong>完整的 Java Web 开发课程项目要求和评分标准，请查看：<br>
        <a href="/Java-Web开发 作业要求.pdf" target="_blank" style="display: inline-block; margin-top: 10px; padding: 10px 20px; background: var(--primary-color); color: white; border-radius: 6px; text-decoration: none; font-weight: 600;">
          📥 下载项目要求文档 (PDF)
        </a>
      </div>
    </div>
  </section>

  <!-- 完整工作流程 -->
  <section id="workflow" class="section">
    <h2 class="section-title">
      <span class="section-icon">🔄</span>
      完整工作流程
    </h2>

    <div class="workflow-steps">
      <div class="step-card">
        <div class="step-number">1</div>
        <h3 class="step-title">学生提交代码</h3>
        <p class="step-description">
          学生在 Cursor 中完成项目模块开发，将代码推送到 GitHub 仓库的个人分支。
        </p>
        <span class="tool-badge">Git</span>
        <span class="tool-badge">GitHub</span>
      </div>

      <div class="step-card">
        <div class="step-number">2</div>
        <h3 class="step-title">Cursor AI 初步审查</h3>
        <p class="step-description">
          使用 Cursor 的 AI 功能（Ctrl+K / Cmd+K）对代码进行快速扫描，识别语法错误、潜在 bug 和代码异味。
        </p>
        <span class="tool-badge">Cursor</span>
      </div>

      <div class="step-card">
        <div class="step-number">3</div>
        <h3 class="step-title">运行测试用例</h3>
        <p class="step-description">
          执行预设的 JUnit 测试用例，检查功能实现的正确性和完整性。
        </p>
        <span class="tool-badge">JUnit 5</span>
        <span class="tool-badge">Maven</span>
      </div>

      <div class="step-card">
        <div class="step-number">4</div>
        <h3 class="step-title">知识点对照检查</h3>
        <p class="step-description">
          对照课程大纲，使用 Cursor 的代码搜索和分析功能，检查学生是否正确应用了要求的知识点。
        </p>
        <span class="tool-badge">Cursor</span>
      </div>

      <div class="step-card">
        <div class="step-number">5</div>
        <h3 class="step-title">生成反馈报告</h3>
        <p class="step-description">
          结合 ChatGPT，生成详细的代码审查报告，包括问题说明、改进建议和学习资源推荐。
        </p>
        <span class="tool-badge">ChatGPT</span>
        <span class="tool-badge">Cursor</span>
      </div>

      <div class="step-card">
        <div class="step-number">6</div>
        <h3 class="step-title">学生迭代改进</h3>
        <p class="step-description">
          学生根据反馈，使用 Cursor 的 AI 辅助功能理解问题并改进代码，重新提交。
        </p>
        <span class="tool-badge">Cursor</span>
        <span class="tool-badge">GitHub Copilot</span>
      </div>
    </div>
  </section>

  <!-- Cursor 使用详解 -->
  <section id="cursor" class="section">
    <h2 class="section-title">
      <span class="section-icon">💡</span>
      Cursor 使用详解
    </h2>

    <h3 style="color: var(--dark-bg); margin-bottom: 20px;">🎓 教学中的典型使用场景</h3>

    <div class="alert-box success">
      <span class="alert-icon">✅</span>
      <div>
        <strong>场景 1：代码理解与解释</strong><br>
        学生选中一段不理解的代码，使用 <code>Ctrl+L</code> 打开 Cursor Chat，询问："这段代码是做什么的？为什么要这样写？"
      </div>
    </div>

    <div class="alert-box success">
      <span class="alert-icon">✅</span>
      <div>
        <strong>场景 2：错误诊断与修复</strong><br>
        当代码报错时，使用 <code>Ctrl+K</code> 选择错误代码，输入提示词："分析这个错误的原因，并给出修复建议"
      </div>
    </div>

    <div class="alert-box success">
      <span class="alert-icon">✅</span>
      <div>
        <strong>场景 3：代码审查与优化</strong><br>
        完成一个功能后，使用 Cursor 询问："审查这个 Servlet 的代码，检查是否有安全问题、性能问题或不符合最佳实践的地方"
      </div>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 40px; margin-bottom: 20px;">📝 Cursor 提示词示例（Java Web 项目）</h3>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">审查学生的 UserServlet 代码</span>
        <span class="code-lang">Cursor Prompt</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;">请审查这个 UserServlet 的代码，重点检查以下几点：

1. <span style="color: #98c379;">【知识点应用】</span>
   - 是否正确使用了 Servlet 生命周期方法
   - 是否正确处理了 HTTP 请求和响应
   - 是否使用了 MVC 模式（Model-View-Controller）

2. <span style="color: #e5c07b;">【代码质量】</span>
   - 代码是否遵循 Java 命名规范
   - 是否有重复代码需要提取
   - 异常处理是否完善

3. <span style="color: #e06c75;">【安全性】</span>
   - 是否存在 SQL 注入风险
   - 是否对用户输入进行了验证
   - 密码是否加密存储

4. <span style="color: #61afef;">【性能】</span>
   - 数据库连接是否正确关闭
   - 是否有不必要的数据库查询

请给出具体的问题位置和改进建议，并说明为什么这样改进。</pre>
    </div>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">生成针对性的学习建议</span>
        <span class="code-lang">Cursor Prompt</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;">分析这个学生的 Java Web 项目代码，识别以下问题：

1. 哪些课程要求的知识点<span style="color: #98c379;">已经正确应用</span>？
2. 哪些知识点<span style="color: #e5c07b;">使用不够规范</span>，需要改进？
3. 哪些知识点<span style="color: #e06c75;">完全缺失</span>，需要补充？

对于每个问题，请：
- 指出具体的代码位置（文件名和行号）
- 说明为什么这是个问题
- 提供一个简短的代码示例展示正确做法
- 推荐相关的学习资源（教材章节或在线资料）</pre>
    </div>
  </section>

  <!-- 测试用例设置 -->
  <section id="testing" class="section">
    <h2 class="section-title">
      <span class="section-icon">🧪</span>
      测试用例设置
    </h2>

    <p style="font-size: 1.1em; line-height: 1.8; color: #4b5563; margin-bottom: 25px;">
      测试用例是代码审查的重要组成部分。我们使用 JUnit 5 为每个项目模块预设测试用例，学生代码必须通过这些测试才算完成基本要求。
    </p>

    <h3 style="color: var(--dark-bg); margin-bottom: 20px;">🎯 测试用例设计原则</h3>
    
    <div class="workflow-steps">
      <div class="step-card">
        <div class="step-number">✓</div>
        <h3 class="step-title">功能完整性测试</h3>
        <p class="step-description">
          测试所有要求的功能是否实现（如用户注册、登录、商品查询等）
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">✓</div>
        <h3 class="step-title">边界条件测试</h3>
        <p class="step-description">
          测试特殊输入情况（空值、超长字符串、特殊字符等）
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">✓</div>
        <h3 class="step-title">异常处理测试</h3>
        <p class="step-description">
          测试错误情况下的处理（数据库连接失败、文件不存在等）
        </p>
      </div>

      <div class="step-card">
        <div class="step-number">✓</div>
        <h3 class="step-title">知识点覆盖测试</h3>
        <p class="step-description">
          确保学生使用了课程要求的技术点（如 PreparedStatement 防 SQL 注入）
        </p>
      </div>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 40px; margin-bottom: 20px;">📌 测试用例示例：用户登录功能</h3>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">UserLoginTest.java</span>
        <span class="code-lang">Java / JUnit 5</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;"><span style="color: #c678dd;">package</span> com.example.test;

<span style="color: #c678dd;">import</span> org.junit.jupiter.api.*;
<span style="color: #c678dd;">import static</span> org.junit.jupiter.api.Assertions.*;

<span style="color: #7f848e;">/**
 * 用户登录功能测试
 * 测试知识点：Servlet、Session、数据库操作、密码加密
 */</span>
<span style="color: #c678dd;">public class</span> <span style="color: #e5c07b;">UserLoginTest</span> {
    
    <span style="color: #61afef;">@Test</span>
    <span style="color: #61afef;">@DisplayName</span>(<span style="color: #98c379;">"测试正确的用户名和密码登录"</span>)
    <span style="color: #c678dd;">public void</span> <span style="color: #61afef;">testValidLogin</span>() {
        <span style="color: #7f848e;">// 测试学生是否正确实现了用户验证逻辑</span>
        String username = <span style="color: #98c379;">"testuser"</span>;
        String password = <span style="color: #98c379;">"Test@123"</span>;
        
        <span style="color: #c678dd;">boolean</span> result = userService.<span style="color: #61afef;">login</span>(username, password);
        <span style="color: #61afef;">assertTrue</span>(result, <span style="color: #98c379;">"有效的用户名和密码应该登录成功"</span>);
    }
    
    <span style="color: #61afef;">@Test</span>
    <span style="color: #61afef;">@DisplayName</span>(<span style="color: #98c379;">"测试 SQL 注入防护"</span>)
    <span style="color: #c678dd;">public void</span> <span style="color: #61afef;">testSQLInjectionPrevention</span>() {
        <span style="color: #7f848e;">// 重要：检查学生是否使用 PreparedStatement</span>
        String maliciousInput = <span style="color: #98c379;">"admin' OR '1'='1"</span>;
        String password = <span style="color: #98c379;">"anything"</span>;
        
        <span style="color: #c678dd;">boolean</span> result = userService.<span style="color: #61afef;">login</span>(maliciousInput, password);
        <span style="color: #61afef;">assertFalse</span>(result, <span style="color: #98c379;">"应该防止 SQL 注入攻击"</span>);
    }
    
    <span style="color: #61afef;">@Test</span>
    <span style="color: #61afef;">@DisplayName</span>(<span style="color: #98c379;">"测试密码加密存储"</span>)
    <span style="color: #c678dd;">public void</span> <span style="color: #61afef;">testPasswordEncryption</span>() {
        <span style="color: #7f848e;">// 检查密码是否经过加密（MD5/SHA-256）</span>
        String rawPassword = <span style="color: #98c379;">"Test@123"</span>;
        String storedPassword = userDAO.<span style="color: #61afef;">getPasswordByUsername</span>(<span style="color: #98c379;">"testuser"</span>);
        
        <span style="color: #61afef;">assertNotEquals</span>(rawPassword, storedPassword, 
            <span style="color: #98c379;">"密码不应该明文存储在数据库中"</span>);
        <span style="color: #61afef;">assertTrue</span>(storedPassword.length() >= <span style="color: #d19a66;">32</span>, 
            <span style="color: #98c379;">"加密后的密码长度应符合加密算法要求"</span>);
    }
    
    <span style="color: #61afef;">@Test</span>
    <span style="color: #61afef;">@DisplayName</span>(<span style="color: #98c379;">"测试 Session 管理"</span>)
    <span style="color: #c678dd;">public void</span> <span style="color: #61afef;">testSessionManagement</span>() {
        <span style="color: #7f848e;">// 验证登录后是否正确设置了 Session</span>
        MockHttpServletRequest request = <span style="color: #c678dd;">new</span> <span style="color: #61afef;">MockHttpServletRequest</span>();
        MockHttpServletResponse response = <span style="color: #c678dd;">new</span> <span style="color: #61afef;">MockHttpServletResponse</span>();
        
        loginServlet.<span style="color: #61afef;">doPost</span>(request, response);
        
        <span style="color: #61afef;">assertNotNull</span>(request.<span style="color: #61afef;">getSession</span>().<span style="color: #61afef;">getAttribute</span>(<span style="color: #98c379;">"user"</span>),
            <span style="color: #98c379;">"登录成功后应该在 Session 中存储用户信息"</span>);
    }
}</pre>
    </div>

  </section>

  <!-- 知识点检查 -->
  <section id="knowledge" class="section">
    <h2 class="section-title">
      <span class="section-icon">📖</span>
      结合课程大纲检查知识点
    </h2>

    <p style="font-size: 1.1em; line-height: 1.8; color: #4b5563; margin-bottom: 25px;">
      除了功能测试，更重要的是检查学生是否<strong>正确应用了课程要求的知识点</strong>。我们使用 Cursor 的代码分析能力，对照课程大纲逐项检查。
    </p>

    <h3 style="color: var(--dark-bg); margin-bottom: 20px;">📚 Java Web 开发课程大纲（核心知识点）</h3>

    <div class="knowledge-checklist">
      <div class="knowledge-item">
        <div class="check-icon success">✓</div>
        <div class="knowledge-content">
          <h4>知识点 1：Servlet 基础与生命周期</h4>
          <p><strong>检查项：</strong>是否正确继承 HttpServlet，是否重写了 doGet/doPost 方法，是否理解 init、service、destroy 的作用</p>
        </div>
      </div>

      <div class="knowledge-item">
        <div class="check-icon success">✓</div>
        <div class="knowledge-content">
          <h4>知识点 2：请求与响应处理</h4>
          <p><strong>检查项：</strong>是否正确使用 request.getParameter()，是否设置了正确的 Content-Type，是否处理了中文乱码</p>
        </div>
      </div>

      <div class="knowledge-item">
        <div class="check-icon success">✓</div>
        <div class="knowledge-content">
          <h4>知识点 3：MVC 模式应用</h4>
          <p><strong>检查项：</strong>是否将业务逻辑分离到 Service 层，是否使用 DAO 模式访问数据库，是否使用 JSP 作为视图层</p>
        </div>
      </div>

      <div class="knowledge-item">
        <div class="check-icon success">✓</div>
        <div class="knowledge-content">
          <h4>知识点 4：数据库连接与 JDBC</h4>
          <p><strong>检查项：</strong>是否使用 PreparedStatement（防 SQL 注入），是否正确关闭资源（try-with-resources），是否使用连接池</p>
        </div>
      </div>

      <div class="knowledge-item warning">
        <div class="check-icon warning">!</div>
        <div class="knowledge-content">
          <h4>知识点 5：Session 和 Cookie 管理</h4>
          <p><strong>检查项：</strong>是否正确使用 Session 存储用户状态，是否设置了 Session 超时，是否理解 Cookie 的作用</p>
        </div>
      </div>

      <div class="knowledge-item">
        <div class="check-icon success">✓</div>
        <div class="knowledge-content">
          <h4>知识点 6：异常处理与日志</h4>
          <p><strong>检查项：</strong>是否使用 try-catch 处理异常，是否记录了错误日志，是否给用户友好的错误提示</p>
        </div>
      </div>

      <div class="knowledge-item error">
        <div class="check-icon error">✗</div>
        <div class="knowledge-content">
          <h4>知识点 7：安全性考虑</h4>
          <p><strong>检查项：</strong>是否对用户输入进行验证，是否加密存储敏感信息，是否防止了 XSS 攻击</p>
        </div>
      </div>

      <div class="knowledge-item">
        <div class="check-icon success">✓</div>
        <div class="knowledge-content">
          <h4>知识点 8：Filter 和 Listener</h4>
          <p><strong>检查项：</strong>是否使用 Filter 处理编码、权限验证等横切关注点，是否理解 Listener 的应用场景</p>
        </div>
      </div>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 40px; margin-bottom: 20px;">🔍 使用 Cursor 自动检查知识点</h3>

    <div class="code-example">
      <div class="code-header">
        <span class="code-title">知识点检查提示词</span>
        <span class="code-lang">Cursor Prompt</span>
      </div>
      <pre style="margin: 0; color: #abb2bf;">分析这个 Java Web 项目，对照以下课程大纲检查知识点应用情况：

<span style="color: #98c379;">【必须应用的知识点】</span>
1. Servlet 的正确使用（继承 HttpServlet，正确重写方法）
2. MVC 模式（Controller-Service-DAO 三层架构）
3. JDBC 数据库操作（使用 PreparedStatement，正确关闭资源）
4. Session 管理（用户登录状态保持）
5. 请求转发与重定向的正确使用
6. 中文乱码处理
7. 基本的异常处理

<span style="color: #e5c07b;">【加分项】</span>
1. 使用数据库连接池（如 HikariCP）
2. 使用 Filter 实现编码过滤器和权限验证
3. 密码加密存储
4. 使用日志框架（Log4j/SLF4J）
5. 代码注释完整，命名规范

请对每个知识点给出：
- ✅ 已正确应用 / ⚠️ 应用不规范 / ❌ 缺失
- 具体的代码位置（文件名:行号）
- 如果有问题，说明为什么不符合要求
- 提供改进建议和示例代码

最后给出一个综合评分（0-100分）和总结性评价。</pre>
    </div>

    <h3 style="color: var(--dark-bg); margin-top: 40px; margin-bottom: 20px;">📄 示例检查报告</h3>

    <div class="alert-box info">
      <span class="alert-icon">📋</span>
      <div>
        <strong>AI 生成的知识点检查报告示例：</strong>查看一份完整的学生代码审查报告，了解 Cursor AI 如何分析和反馈。<br>
        <a href="/files/知识点检查报告示例.pdf" target="_blank" style="display: inline-block; margin-top: 10px; padding: 10px 20px; background: var(--primary-color); color: white; border-radius: 6px; text-decoration: none; font-weight: 600;">
          📥 下载示例检查报告 (PDF)
        </a>
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

