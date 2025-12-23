---
permalink: /
title: "Home"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

## 📰 News

<style>
.news-container {
  background: linear-gradient(135deg, #f0f9ff 0%, #e0f2fe 100%);
  padding: 20px;
  border-radius: 12px;
  border-left: 4px solid #0ea5e9;
  margin-bottom: 20px;
}

.news-item {
  padding: 12px 0;
  border-bottom: 1px solid #e0e7ff;
  transition: all 0.3s ease;
}

.news-item:last-child {
  border-bottom: none;
}

.news-item:hover {
  background: rgba(255, 255, 255, 0.5);
  padding-left: 10px;
  border-radius: 6px;
}

.news-more {
  display: none;
}

.news-toggle {
  display: inline-block;
  margin-top: 15px;
  padding: 10px 20px;
  background: linear-gradient(135deg, #0ea5e9, #0284c7);
  color: white;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  font-weight: 600;
  transition: all 0.3s ease;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.news-toggle:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
}

.news-toggle:active {
  transform: translateY(0);
}

.news-count {
  display: inline-block;
  background: rgba(14, 165, 233, 0.1);
  color: #0369a1;
  padding: 3px 10px;
  border-radius: 12px;
  font-size: 0.85em;
  font-weight: 600;
  margin-left: 10px;
}
</style>

<div class="news-container">
  <div class="news-item">
    <strong>[2026]</strong> 🎉 Journal article accepted by <strong>International Journal of STEM Education</strong> (SCI 中科院Q1 Top): "Tool, Tutor, or Crutch?: A Grounded Theory of Cognitive Scaffolding and Offloading in AI-Assisted Programming Education"
  </div>

  <div class="news-item">
    <strong>[2025]</strong> 🏅 Paper "<strong>The impact of AI-assisted pair programming on student motivation, programming anxiety, collaborative learning, and programming performance</strong>" in <em>International Journal of STEM Education</em> selected as:
    <br />- <strong>Most cited articles (past two years)</strong>
    <br />- <strong>Most popular articles (past 9 months)</strong> (Rank 1)
  </div>

  <div class="news-item">
    <strong>[2025-12]</strong> 🎉 Paper accepted by <strong>AAAI 2026</strong> (CCF A): "Mind the Gap: Predicting, Explaining and Reducing Time-to-First-Comment (Reply Gap) in Online Mental-Health Communities"
  </div>

  <div class="news-item">
    <strong>[2025]</strong> 📝 Paper "<strong>Governing Modesty: Platformed Urban Gaze and Rural Chinese Housewives on Douyin</strong>" accepted by <em>Journal of Rural Studies</em> <strong>(SCI 中科院Q1 Top)</strong>
  </div>

  <div class="news-more">
  <div class="news-item">
    <strong>[2025]</strong> 🏆 Received <strong>First-Class Paper Award</strong> and <strong>Best Presentation Award</strong> at CPEC2025 (第九届中国计算机实践教育学术会议)
  </div>

  <div class="news-item">
    <strong>[2025]</strong> 🎤 Oral presentation at <strong>IJCAI (CCF A) 2025 Satellite Event</strong> in Guangzhou, China
  </div>

    <div class="news-item">
      <strong>[2025]</strong> 📝 Multiple papers accepted at top-tier conferences and journals including <strong>IJCAI (CCF A)</strong>, <strong>CogSci (CCF B)</strong>, and SCI Q1 journals
    </div>
  </div>

  <button class="news-toggle" onclick="toggleNews()">
    <span id="toggleText">Show More News</span>
    <span class="news-count" id="moreCount">+3</span>
  </button>
</div>

<script>
let newsExpanded = false;

function toggleNews() {
  const moreNews = document.querySelector('.news-more');
  const toggleBtn = document.querySelector('.news-toggle');
  const toggleText = document.getElementById('toggleText');
  const moreCount = document.getElementById('moreCount');
  
  newsExpanded = !newsExpanded;
  
  if (newsExpanded) {
    moreNews.style.display = 'block';
    toggleText.textContent = 'Show Less';
    moreCount.style.display = 'none';
  } else {
    moreNews.style.display = 'none';
    toggleText.textContent = 'Show More News';
    moreCount.style.display = 'inline-block';
  }
}
</script>

---

## About Me

I am a Lecturer at the School of Computer Science and Technology, Taiyuan University of Science and Technology, and a Ph.D. candidate in Computer Science at Universiti Malaya. My research focuses on **Human-Centered AI** and **Human-AI Interaction**, with applications in education, mental health, and social computing.

I am particularly interested in understanding how AI transforms human learning, communication, and decision-making—and how we can design AI systems that genuinely serve human needs.

## Research Interests

My research develops **Human-Centered AI** to understand and improve how humans interact with AI systems. I focus on three interconnected areas:

**AI in Education.** How does AI reshape learning and teaching? I study cognitive scaffolding and offloading in AI-assisted programming, examining when AI helps students grow versus when it becomes a crutch. Our work in *International Journal of STEM Education* (Q1 Top) investigates AI's impact on motivation, anxiety, and collaborative learning.

**AI-Mediated Communication & Trust.** As AI increasingly mediates human communication, new challenges emerge around authenticity, trust, and memory. I explore how AI-assisted content creation affects perceived authorship, how AI-generated videos may induce false memories, and how users navigate privacy consent in AI-driven platforms.

**AI for Social Good.** I develop AI methods to support mental health communities (e.g., predicting response delays in online support forums) and ensure algorithmic fairness in recommender systems and urban computing (e.g., fair spatiotemporal traffic prediction).

Across these areas, I combine **empirical HCI methods** (experiments, surveys, qualitative studies) with **machine learning techniques** (graph neural networks, LLMs, conformal prediction) to bridge the gap between AI capabilities and human needs.


## Education

* **Ph.D. in Computer Science**, Universiti Malaya, Malaysia (In Progress)
* **M.S. in Software Engineering**, Shanghai Jiao Tong University, China (2018)
* **B.S. in Software Engineering**, Huazhong University of Science and Technology, China (2014)

## Current Position

**Lecturer**, School of Computer Science and Technology  
Taiyuan University of Science and Technology, Taiyuan, China (2018 - Present)

## Professional Service

### Conference & Journal Reviewer

* **CHI 2026** - Conference on Human Factors in Computing Systems (CCF A)
* **Engineering Applications of Artificial Intelligence** (EAAI, SCI 中科院Q1 Top)
* **International Journal of STEM Education** (SCI 中科院Q1 Top)
* **Information, Communication & Society** (SSCI 中科院Q1 Top)

<!-- 
### Conference Organization
* TBD

### Program Committee & Chair
* TBD
-->

## Contact

📧 Email: fgr@tyust.edu.cn

Feel free to reach out for research collaboration or academic inquiries.
