# Consent Boundaries by Play: A CI-Grounded Micro-Game for Stable Preferences and Opt-Out Friction

**Venue:** ECSCW 2026 · CCF-B  **Author position:** 通讯

## 动机
Web 上的同意行为几乎都通过 Consent Management Platform (CMP) 横幅完成,而按钮显著性、首层"拒绝"是否可用等细节就能显著改变接受率,但没有相应的理解提升。现有实证文献要么只报告总体接受率,要么做合规审计,既得不到能泛化到新场景的个体决策规则,也无法判断观察到的"偏好"在 UI 干扰下是否稳定。论文提出用 Contextual Integrity (CI) 为骨架的微游戏,严格分离"真实偏好"、"UI 引致噪声"与"opt-out 摩擦"。

## 方法
设计基于 CI 五维(接收方、目的、数据类型、保留期、用户控制)的成对剖面选择微游戏,加入显式 Neither/Ask later 选项。统计上使用 heteroskedastic Hierarchical Bayes 多项 logit (HB–MNL),为每个 UI arm 估计独立 scale λ_g 与 Neither 上的额外摩擦项 δ_g。两阶段实验跨 3 UI arm(Neutral / Benign / minimal Dark-pattern)× 2 factsheet 干预,Session 1 N=168,Session 2 N=120,每人 32 任务,并附带 CMP 横幅模拟环节。后处理用 Bayesian Rule Lists 把个体效用压缩成简短"consent grammar"。

## 关键结果
- 接收方与保留期主导接受度,Delete/Portability 与 Independent audit 这两类具体保护带来最大增益。
- **Dark-pattern arm 通过"摩擦"而非改变偏好将场景级接受率提升 3–7 个百分点,在 CMP 模拟环节较 Neutral 多接受 5.4%**;个体 Neither 倾向与 CMP Reject-all 相关 ρ=0.49。
- 偏好在 Neutral 与 Benign 之间稳定,7 天 test–retest ICC 在 0.55–0.72,hold-out 多类预测准确率 0.71。
- 短规则列表(中位 4 条,AUC≈0.85)能可靠近似 HB–MNL 预测。

## 贡献
- 提出 CI-grounded 微游戏 + heteroskedastic HB–MNL,首次同时分离偏好、噪声与 opt-out 摩擦
- 给出可用于监管"freely given"判定的摩擦诊断指标 δ_g
- 输出可部署的 consent grammar 与偏好原型,把责任从用户警惕转向机构问责
