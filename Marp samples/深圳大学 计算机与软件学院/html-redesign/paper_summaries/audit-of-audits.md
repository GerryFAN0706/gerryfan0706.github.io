# Audit-of-Audits for the Web: Bayesian Meta-Evaluation for Interval-Valued Fairness Claims

**Venue:** WWW 2026 · CCF-A  **Author position:** 通讯

## 动机
内容审核、推荐、广告投放等 Web 系统每年都要做大量公平性审计,但这些审计常常彼此冲突:换一个度量(selection rate vs. TPR)、换一个子群划分(粗 vs. 交叉)、换一个时间窗或数据集,结论就翻转。AIF360、Fairlearn、Aequitas 等工具只输出单次审计的点估或区间估,无法把异质审计综合成可向监管者交付的统一结论。从 EU AI Act、NIST AI RMF 到 EEOC 80% 规则,治理决策需要的是"带不确定性的区间陈述",而不是脆弱的 pass/fail。

## 方法
提出 Bayesian audit-of-audits 框架,把异质审计在 rate 层级 pooled:对计数型审计用 Binomial/Multinomial 似然 + logit-normal 随机效应(Mode A),对重叠群体(如 CivilComments–WILDS)切换到 Beta-Binomial / Dirichlet-Multinomial 过散布(Mode B),保证"只有一种 dispersion 机制"。对仅披露 metric 值与 CI 的报告,采用 transform-aware 测量模型:差值用稳定化 logit、比率用 log,使其与同一组 latent rate(prevalence、TPR、FPR、exposure/CTR)对齐。引入软 lattice-coherence 约束跨粗/交叉子群划分,缓解 Simpson 反转。后验输出 80% rule 等阈值的尾概率、I²-like 异质性诊断、leave-one-audit-out 敏感性以及 Value-of-Information 用于决定"下一次审计该做什么"。

## 关键结果
- 在合成 Audit Zoo、CivilComments–WILDS 内容审核与广告投放仿真三类场景上,**meta-evaluator 的可信区间在覆盖率接近名义水平的同时显著更窄,且 deploy/defer/mitigate 决策翻转次数明显少于单审计基线**。
- 在 metric-only 审计无法共享原始计数的情况下,仍能无偏整合,且能预测一次潜在新审计带来的区间收缩量。
- LOAO 与异质性诊断使外部有效性可被审查。

## 贡献
- 首个在 rate 层级 pool 异质审计、可同时接受 count-based 与 metric-only 报告的 Bayesian 框架
- 通过 lattice-coherence 与统一 latent rate 把分类公平性与曝光/排序公平性放在同一模型下
- 提供阈值对齐的政策风险表、LOAO 敏感性与 VoI,使审计结论可被监管复核
