---
layout: single
title: "Research"
permalink: /research/
author_profile: true
---

<p class="home-lead">Human-AI Interaction: collaboration and trust in complex knowledge tasks.</p>

I study how people and teams learn, make decisions, and recover from failures when they work with AI. My work combines HCI experiments and qualitative studies with graph learning, large language models, and statistical methods for measuring and controlling risk. The work is organized in three levels (individual, group, and societal) on a shared methods base.

## Individual level: how people verify and learn with AI

Getting an answer from AI can be fast. Figuring out whether it is right, and whether you could solve the problem without it, is a separate task. In coding and programming education, I study when checking AI output becomes a source of fatigue, how learners decide what to delegate, and what skills they retain after the assistance is removed.

<ul class="pub-cards">
{% include pub-card.html url="/publication/2026-chi-verification-load" %}
{% include pub-card.html url="/publication/2026-ijstem-tool-tutor-crutch" %}
{% include pub-card.html url="/publication/2025-ijse-ai-pair-programming" %}
</ul>

## Group level: how teams recover when AI breaks down

When a shared AI tool fails, collaborators have to notice the failure, decide who will fix it, and keep the task moving. I study this often-invisible work of maintaining continuity, as well as how teams can assess the role of AI in gathering and interpreting input. In software engineering, one line of work compares AI-generated personas with human baselines for eliciting requirements.

<ul class="pub-cards">
{% include pub-card.html url="/publication/2027-cscw-continuity-work" %}
{% include pub-card.html url="/publication/2026-fse-multi-llm-persona" %}
</ul>

## Societal level: how to evaluate and control AI risk

Feedback collected through networks can overrepresent some communities and miss others. I develop methods to correct for uneven sampling and to quantify which users or groups face the most risk. Graph-Preference Learning addresses bias in network-sampled human feedback; Conformal@K provides distribution-free guarantees on the chance that a top-K recommendation misses a relevant item.

<ul class="pub-cards">
{% include pub-card.html url="/publication/2026-icml-graph-preference-learning" %}
{% include pub-card.html url="/publication/2026-tois-conformal-k" %}
{% include pub-card.html url="/publication/2026-www-audit-of-audits" %}
</ul>

## Methods base: graph learning and transportation

Road networks provide a test bed for learning from incomplete or changing observations. [DynaKey-GNN](/publication/2025-eaai-dynakey-gnn) develops graph-based spatiotemporal methods for traffic forecasting, and a [survey](/publication/2025-acme-gnn-survey) reviews graph neural networks for traffic flow prediction. I also contribute to a Shanxi research project on traffic prediction.

## Research agenda

Over the next three to five years, I plan to move from measuring the costs of human-AI collaboration to designing collaboration that people can trust. The work starts from AI-assisted software engineering and programming education and extends to learning, creative work, and online collaboration.

<ul class="agenda">
  <li><span class="agenda__when">Individual level · from year 1</span><strong>Interaction mechanisms for cognition, trust, and autonomy.</strong> Under my provincial Youth Project, study how people and AI adapt their roles. Controlled experiments will test how suggestion timing, evidence presentation, and user control shape verification load, trust calibration, and skill retention, producing a task library and interaction prototypes.</li>
  <li><span class="agenda__when">Group level · from year 2</span><strong>Breakdown and repair in AI-mediated collaboration.</strong> Compare teams working without AI, with individual AI assistants, and with a shared agent, to study how model errors spread and how members detect breakdowns and repair collaboration.</li>
  <li><span class="agenda__when">Societal level · from year 2</span><strong>Feedback learning and evaluation with statistical guarantees.</strong> Extend graph debiasing and conformal risk control to interactive systems and online communities, quantifying gains and residual risks for different groups.</li>
  <li><span class="agenda__when">Platform and applications · years 3–5</span><strong>A shared research platform.</strong> Link user studies, algorithm evaluation, and prototypes through reusable tasks, data standards, and tools, and apply them with partners in software engineering, programming education, and intelligent transportation.</li>
</ul>

I welcome collaboration on these topics. Students interested in human-AI interaction, AI-assisted programming and education, or trustworthy evaluation are welcome to email me at [fgr@tyust.edu.cn](mailto:fgr@tyust.edu.cn).

## Funded research

I lead a Shanxi Provincial Basic Research Program Youth Project on how people and AI allocate roles and collaborate reliably on complex knowledge tasks.

[Full publication list](/publications/)
