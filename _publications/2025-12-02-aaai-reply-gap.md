---
title: "Mind the Gap: Predicting, Explaining and Reducing Time-to-First-Comment (Reply Gap) in Online Mental-Health Communities (CCF A)"
collection: publications
category: conferences
permalink: /publication/2026-aaai-reply-gap
date: 2026-02-01
rank: 1
venue: 'AAAI Conference on Artificial Intelligence (AAAI 2026)'
citation: 'Fan, G., Liu, D., & Pan, L. (2026). Mind the Gap: Predicting, Explaining and Reducing Time-to-First-Comment (Reply Gap) in Online Mental-Health Communities. In <i>Proceedings of the 40th AAAI Conference on Artificial Intelligence (AAAI 2026)</i>.'
---

This paper unifies predictive modeling, causal inference, and offline policy evaluation to demonstrate how an AI system can identify Reddit users in distress at risk of being ignored and proactively route effective emotional support to them faster.

**Abstract:**  
Online peer-support communities are vital for mental health, but their therapeutic benefit hinges on receiving a timely and helpful first reply. Posts that languish unanswered can exacerbate feelings of distress and abandonment. This paper develops and validates an integrated framework to predict, explain, and reduce this "reply gap" on Reddit. First, using survival analysis on over 91,000 posts (2018–2025), we show that a deep learning model (DySurv) can accurately predict reply times (C-Index = 0.742), with a post's lexico-semantic content being a far stronger predictor than author history. Second, moving from correlation to causation, we use a causal inference framework on 48,612 posts to estimate the effect of different support types. We find that initial replies providing emotional support are most effective, increasing the odds of a positive user response by 49% (OR=1.49), an effect most pronounced for high-risk users. Third, we operationalize these insights in RiskMatch, a recommender system that routes at-risk posts to historically effective helpers. Rigorous counterfactual evaluation using inverse propensity scoring (IPS)—a method that corrects for biases in historical data—demonstrates that our system reduces the median wait time by 26 minutes for the highest-risk quintile. This work provides a validated, data-driven methodology to build more responsive and effective peer-support ecosystems, offering a concrete pathway to ensure fewer calls for help go unanswered.

**Keywords:** Public Health, Social Networks, Social Media, Mental Health Support, Causal Inference, Recommender Systems

