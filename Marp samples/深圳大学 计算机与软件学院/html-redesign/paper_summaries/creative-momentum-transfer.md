# Creative Momentum Transfer: How Timing and Labeling of AI Suggestions Shape Iterative Human Ideation

**Venue:** IJCAI 2025 · CCF-A  **Author position:** 一作 / 通讯

## 动机
生成式 AI 已经在产品创意、文案、设计等领域产出接近甚至超越人类的输出,但绝大多数实证研究只评估"单步"AI 创意,无法回答真实场景下多轮迭代式人机协同的关键问题:AI 提示应该在创意流程的哪个时点出现?是否需要明确标注"由 AI 生成"?这两件事会怎样塑造用户的锚定、转向、拥有感与可创造性?

## 方法
提出 Creative Momentum Transfer 概念,把认知锚定理论(Tversky & Kahneman)与 System I/II 双过程模型挂在一起。组间实验 N=247,五条件:Control、Early-AI Labeled、Early-AI Unlabeled、Late-AI Labeled、Late-AI Unlabeled,任务为"未来五年减少城市塑料污染"的两轮创意。AI 提示由 GPT-4 预生成、统一长度与可读性、预先评估创造力均分 5.3/7。前测以 Alternative Uses Task 评基线创造力,Trust in AI 量表测信任;终稿由三位领域专家用改良 CAT 法在 novelty / usefulness / originality 上 7 分制评分(ICC ≥ 0.80),并用 text-embedding-ada-002 计算与 AI 提示的余弦语义距离。挑选 12 位代表性参与者做半结构化访谈与主题分析。

## 关键结果
- 条件主效应显著,F(4,237)=37.54,partial η²=.38;**Early-AI-Labeled 创造力均分最高 6.01,Control 最低 4.94,呈现明显锚定**。
- Late-AI 组在第二轮触发"中途转向":创造力增幅最大(+0.88,d=1.73),语义距离下降最快(ΔM=-0.23)。
- 标注显著提高感知 AI 影响(5.36 vs. 4.39, d=1.03)与语义贴合(0.61 vs. 0.73, d=1.58);但即使未标注,64% 参与者也能正确猜出 AI 来源。
- 基线创造力对最终创造力具有显著交叉调节作用(F(4,237)=4.42, p=.002),Trust in AI 在短期任务中并不显著。

## 贡献
- 提出 Creative Momentum Transfer 框架,统一描述多轮人机协同中的锚定与转向动态
- 通过 2×2(timing × labeling)+ Control 的组间设计,首次实验性分离时点与标注对迭代创意的独立与交互效应
- 给出"早期 AI 加速收敛、晚期 AI 触发转向"的设计指导,并讨论标注、作者权与用户自治之间的伦理张力
