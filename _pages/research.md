---
layout: single
title: "Research"
permalink: /research/
author_profile: true
---

My research develops trustworthy learning and decision-making methods for
complex human–AI and networked systems. I study how AI can learn from biased,
sparse, and dynamic human and environmental feedback while maintaining
calibrated risk, human agency, and social trust.

The four directions below share one methodological core: real-world AI systems
learn from imperfect human and network feedback, and the decisions they support
carry risks that must be measured, calibrated, and controlled.

---

## Trustworthy Learning from Human & Network Feedback

Clicks, ratings, and peer responses are not a clean signal of what people
actually need. Active users are over-represented, silent users are invisible,
feedback is strategic, and behavior drifts over time. I develop methods that
debias network-sampled feedback and attach distribution-free guarantees to the
resulting predictions and decisions.

*Questions I ask:*
- How can we debias feedback observed through a social network, where active users are over-represented and silent users are invisible?
- Can we give distribution-free guarantees on top-K miss risk, fairness claims, and calibration — per group, not just on average?
- When does a prediction justify an intervention, and how do we evaluate intervention policies offline?

*Representative work:* [Graph-Preference Learning](/publication/2026-icml-graph-preference-learning) (ICML 2026) ·
[Conformal@K](/publication/2026-tois-conformal-k) (ACM TOIS) ·
[Audit-of-Audits](/publication/2026-www-audit-of-audits) (WWW 2026)

---

## Cognitive Reliability in Human–AI Collaboration

AI assistance does not only change task performance — it changes how people
verify, understand, and ultimately learn. I study the mechanisms that decide
whether help builds lasting capability or quietly replaces it, using AI-assisted
programming as a primary setting.

*Questions I ask:*
- When does AI help turn into verification burden, and how do we measure that burden?
- What remains of a skill after the AI is taken away?
- How should assistance adapt to a user's ability and to the risk of the task?

*Representative work:* [When Help Hurts: Verification Load](/publication/2026-chi-verification-load) (CHI 2026, Honourable Mention 🏆) ·
[Tool, Tutor, or Crutch?](/publication/2026-ijstem-tool-tutor-crutch) (IJ STEM Ed) ·
[AI-Assisted Pair Programming](/publication/2025-ijse-ai-pair-programming) (IJ STEM Ed, ESI Highly Cited)

---

## AI-Mediated Communication & Social Trust

When AI participates in human expression, receivers must judge who created a
message, whether it is authentic, whether it is appropriate, and whether its
AI involvement should have been disclosed. I study how these judgments form and
how they shape trust.

*Questions I ask:*
- How does the degree of AI involvement change who counts as "the author"?
- What norms govern emotional appropriateness across roles, institutions, and intensity?
- What kinds of disclosure are transparent without stigmatizing the people who used AI?

*Representative work:* [Is It Still You?](/publication/2026-chi-authorship-authenticity) (CHI 2026) ·
[Feeling Rules in Language Models](/publication/2026-acl-feeling-rules) (ACL 2026) ·
[Consent Boundaries by Play](/publication/2026-ecscw-consent-boundaries) (ECSCW 2026)

---

## Graph Spatiotemporal Intelligence for Transportation

Transportation networks are dynamic graphs: sensors fail, topology changes with
construction and incidents, and traffic patterns drift with holidays, weather,
and events. I build graph learning methods for reliable state estimation and
risk-aware prediction under these conditions.

*Questions I ask:*
- How can we recover traffic state and graph structure when observations are missing and topology changes?
- Can predictions carry calibrated intervals and miss-risk guarantees under distribution drift?
- How do these methods connect to the risk-control and calibration tools from my other work?

*Representative work:* [DynaKey-GNN](/publication/2025-eaai-dynakey-gnn) (EAAI) ·
[GNN for Traffic Forecasting: A Survey](/publication/2025-acme-gnn-survey)

---

I combine empirical HCI methods — experiments, surveys, and qualitative studies —
with machine learning techniques including graph neural networks, large language
models, and conformal prediction. For a full list of papers, see
[Publications](/publications/).
