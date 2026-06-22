# When Help Hurts: How Interaction Mode Shapes Verification Load in AI-Assisted Coding

**Venue:** CHI 2026 · CCF-A  **Author position:** 一作 / 通讯

## 动机
AI 编程助手已经广泛部署,但已有研究多在变换模型或仅评估单一交互界面,把"模型能力"与"交互设计"混在一起,无法回答:在同一个 LLM 后端下,不同交互方式如何改变开发者的核查负担、疲劳与正确率?项目同时缺少一个跨模式可比的"verification load"度量,也不清楚不同复杂度任务下哪种交互模式才是最优。这些缺口直接关系到 AI 助手是否真的"省力"。

## 方法
研究在统一 LLM 后端下对比三种交互模式:Inline 行内补全、Chat 对话式、Structured 表单脚手架。共招募 60 名开发者,其中 36 人构成 AI 组,采用 within-subjects 反平衡设计,每人完成 A/B/C 三种递增复杂度的 Python 任务;另有 24 人作为无 AI 对照。除 NASA-TLX、KSS、信任度等问卷外,提出 **V-core** 这一与模式无关的核查负担指数,由编译/测试失败、首编译耗时、代码扰动、累积停顿、上下文切换五个行为信号合成,Cronbach α = 0.80。

## 关键结果
- AI 总体降低工作量 18.2 TLX 分,完成时间快 22%,正确率 odds ratio 1.71。
- **交互界面才是真正的干预变量**:Chat 在高复杂度任务上正确率 8.0/10,显著高于 Inline (7.3) 与 Structured (7.1);Inline 接受率与正确率呈倒 U 形,最优接受率约 48%。
- V-core 中介了约 26% 的疲劳上升与 24% 的压力上升;Chat 在高复杂度任务上的 V-core 比 Inline 低 0.40。
- 出现典型 expertise reversal:新手在中等复杂度下从 Structured 获益(TLX 减少 6.2 分),老手则在简单任务用 Inline、在复杂任务切到 Chat。

## 贡献
- 提出 backend-parity 实验范式,把交互界面与模型能力解耦
- 构建 V-core 这一跨模式核查负担指标,并报告 Johnson-Neyman 切换阈值
- 给出自适应模式编排、按需透明性、脚手架式写作、可核查打包四条设计原则
