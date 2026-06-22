# Mind the Gap: Predicting, Explaining and Reducing Reply Latency in Online Mental-Health Communities

**Venue:** AAAI 2026 · CCF-A  **Author position:** 一作 / 通讯

## 动机
全球心理健康负担处于"危机点",大量求助者转向 Reddit r/depression 等同伴支持社区。其疗效高度依赖一条及时、有用的首条回复——长时间未被回应会把希望转为孤立感,放大风险。然而现有工作要么只看用户长期留存,不关心 post-level 的"reply gap";要么用静态模型;要么停留在相关性,看不到不同支持类型的因果效用;评估又用易被选择偏倚污染的指标。论文要把"预测—因果解释—无偏评估"串起来,系统化降低 reply gap。

## 方法
构建三阶段 pipeline。Stage 1 把 reply gap 重构为 survival 任务:在 91,178 条 2018–2025 帖子上对比 Stratified Cox PH、Random Survival Forest 与 DySurv(条件 VAE 输出 72 小时离散时段 hazard);特征覆盖作者背景、VADER 情感、LSA 五主题、Empath 五合成、依存复杂度与元特征,共 20 维。Stage 2 用 RoBERTa 微调 RedditESS 分类器识别 emotional / informational / instrumental / validation 四类支持,在 48,612 条帖子上做倾向得分匹配 + doubly robust 估计、Rosenbaum 敏感性、Causal Forest 探索异质效应。Stage 3 把上述结果落地为 RiskMatch 推荐系统:对预测低 1-小时 hazard 的高风险帖子,匹配历史上擅长情感支持的助手;离线评估采用 IPS + DR 估计器消除选择偏倚。

## 关键结果
- TTFC 中位 47 分钟,49.1% 帖子等待 >1 小时,6.5% 在 72 小时内零回复。
- **DySurv 取得 C-Index 0.742(较 Cox 提升 7.5%),ECE 仅 0.018**;内容特征远比作者历史更具预测力,Acute Distress & Triggers 主题 HR=0.61,Intense Emotional Volition HR=1.50。
- 因果分析显示提供 emotional support 把正向反馈 odds 提升 49%(OR=1.49),对高风险用户最显著。
- RiskMatch 在 IPS 评估下把高风险五分位中位等待时间从 60 分钟缩短到 34 分钟,减少 26 分钟,首小时回复概率提升 23 个百分点,整体高风险等待时间缩短 43%。

## 贡献
- 首次把 DySurv 动态生存模型迁移到社交回复延迟预测
- 用 PSM + DR + Rosenbaum 给出在线同伴支持类型的因果效应估计
- 提出 RiskMatch 推荐系统并用 IPS 无偏离线评估其真实部署收益
