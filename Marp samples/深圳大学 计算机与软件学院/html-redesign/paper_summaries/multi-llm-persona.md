# Multi-LLM Persona Generation for Virtual Focus Groups in Software Engineering

**Venue:** FSE 2026 / PACMSE · CCF-A  **Author position:** 一作 / 通讯

## 动机
情绪需求(Emotional Requirements, ERs)——即用户应有什么感受、系统应避免哪些情绪伤害——往往决定了软件能否被持续使用,尤其在心理健康、个人理财等敏感场景。但传统访谈、工作坊、焦点小组成本高、难复用、难扩展。已有 LLM 辅助需求挖掘的工作要么只是从已有文档里 mining,要么用单个模型扮演用户,容易产生同质化"合成声音",无法显化关键的情绪张力。

## 方法
提出 simulated focus group 工作流:LLM 生成多个 persona 卡 → 在固定脚本下进行多轮对话 → 抽取与去重候选需求 → 来源盲评。设计 4 种 AI 配置以解耦"迭代"与"模型多样性":C0 单模型一次性、C1 单模型迭代 3 步、C2 双模型、C3 三模型;同时与两类人类基线对比:HB1 人类焦点小组与 HB2 Emotional Goal Modeling (EGM)。在 mental-health 日志(主域,完整重复)与 personal finance、fitness 两个 satellite 域中执行,主域还增加 C1-MV 与 C3-SM 同模型多声部控制,以分离工作流结构与模型本身能力。所有产出由不知来源的盲评者按 relevance / clarity / feasibility / innovation 打分。

## 关键结果
- **多模型管线(C3)较单模型迭代(C1)在 AI-only 需求的来源盲评通过率上 pooled 提升 +14.7 个百分点**,且这一收益在同模型多声部控制下不消失,说明并非单纯由 provider 能力差异驱动。
- C3 生成的 persona 多样性显著高于 C0/C1,且 productive disagreement 与 empathy events 与 validated yield 显著相关。
- 与人类基线相比:simulation 在"创新性"上更强,EGM 在"清晰度/可行性"上更强,人类焦点小组在"自然措辞"上更优。

## 贡献
- 通过 C0–C3 + same-model 控制,首次实验性分离"迭代"与"模型多样性"对 persona/ER 质量的贡献
- 提出 diverge–structure–ground (DSG) 混合工作流:多 LLM 拓展 → EGM 结构化 → 人类落地
- 提供来源盲评 + 跨域复制 + 机制编码的可重复评估框架
