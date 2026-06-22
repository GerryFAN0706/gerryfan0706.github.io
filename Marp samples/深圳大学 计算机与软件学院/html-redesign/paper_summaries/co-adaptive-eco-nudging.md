# Co-Adaptive Eco-Nudging: On-Device Contextual Bandits with Autonomy-Respecting Personalization

**Venue:** CHI 2026 · CCF-A  **Author position:** 一作 / 通讯

## 动机
现有 eco-nudging 研究往往不做严格的"长度/语调/投放预算"对照,个性化也多基于服务器端的不透明用户画像,既缺少 DoNothing 行动,也不报告"提示强度 vs. 用户自主感"的权衡,更没有把系统自身能耗纳入净收益核算。结果是:很难判断一个 nudge 系统是真的环保有效,还是仅在牺牲用户自主感与多余能耗的代价下"刷指标"。

## 方法
构建浏览器扩展,包含三阶段:用户在端侧设定目标、说服风格与自治约束(静默时段、每日 0–4 条预算);自适应引擎采用受约束的 contextual bandit + Thompson sampling,从 13 个动作(4 行为目标 × 3 风格 + DoNothing)中选择,数据全部留在本地;每条 nudge 附"Why this?"解释与一键反馈,直接塑造奖励信号。Study 1 在 178 人两周实验中检验最小化语境化对依从的影响,Study 2 在 54 人 ABA(W) 设计中将 bandit 与规则策略对比,并测量到第 5 周的残留效应。

## 关键结果
- 语境化模板较通用模板在高频行为上显著提升依从率:Streaming +8.0 个百分点(p=.002),Tabs +7.7 个百分点(p=.003),且不额外牺牲自主感。
- **Bandit 学会了"克制":DoNothing 选择率从 38% 升至 68%,错误时机投票从 32% 降至 14%**;依从率较规则组在 Streaming 提升 6.9 个百分点、Tabs 提升 7.2 个百分点,HD 串流每日减少 18.5 分钟。
- 提出 Ethical-Efficacy Frontier:bandit 归一化 AUC 0.271 vs. 规则 0.226(p=.003),终点自主感 4.82 vs. 4.63。
- 撤回期效应部分持续(PPI Streaming 0.55,Tabs 0.47),第 5 周仍残留 +4.2 / +4.6 个百分点。

## 贡献
- 引入 parity 控制和 opportunity 分母,使 nudge 评估更严谨
- 端侧 contextual bandit + DoNothing 一等公民动作,实现"无画像的个性化"
- 提出 Ethical-Efficacy Frontier 与 Energy ROI 两个新报告视角
