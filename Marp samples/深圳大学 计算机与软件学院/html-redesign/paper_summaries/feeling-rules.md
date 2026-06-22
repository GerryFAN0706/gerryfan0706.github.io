# Feeling Rules in Language Models: Mapping Norms of Emotional Appropriateness

**Venue:** ACL 2026 · CCF-A  **Author position:** 一作 / 通讯

## 动机
现有情感类基准主要评估 LLM 的"能力"——能否识别情绪、生成共情语言——却几乎不评估它们的"规范立场":在特定角色与制度情境下,某种情绪是否被视为可接受。当 LLM 进入心理咨询、职场沟通、教育辅导等场景,这种隐含的"feeling rules"会直接影响用户能否安全披露情绪。论文借社会学的情绪规则与情感劳动理论,把"规范性情感"提为一个独立的对齐评估维度。

## 方法
构建 **Feeling Rules Atlas** 控制基准,系统变化 6 种制度情境(法庭、医院、学校、职场、福利、警察)、12 类角色、7 种情绪、5 级强度与公开/私密两类受众,加上基于评估理论的 trigger–emotion 映射,共生成 1,320 个 vignette。配套两种探测协议:E1 显式判断(APPROPRIATE / INAPPROPRIATE / DEPENDS + 置信度);E2 隐式 cloze 通过 log-prob 对比 "acceptable" vs. "unacceptable"。在 Claude-Sonnet-4、GPT-5、DeepSeek、Qwen-235B、Gemini-2.5-Flash、LLaMA-3.3-70B 六个模型上评测,并由五名研究生对 480 个样本做人工审计(Fleiss κ=0.54)。

## 关键结果
- 六模型的基线 INAPPROPRIATE 率差异极大:LLaMA 0.621、Claude 0.592、Gemini 仅 0.245,且"严厉度"无法解释 norm signature 的结构差异(Claude–Qwen 去均值后 r=0.72)。
- 公开表达普遍提高制裁概率(β=0.58 [0.49, 0.67]);强度每增一档制裁概率上升 β=0.42。
- **首次揭示 endorsement–exposure gap:Claude 显隐一致(D=0.168,ρ=0.687);DeepSeek 表面宽容但隐式严厉(D=0.480,H_pub=0.479);LLaMA 反向——显式比隐式更严(L_pub=0.172),疑似安全微调过度纠偏。**
- 模式跨措辞稳健(r=0.89),与人工审计在高强度公开场景一致率 >74%。

## 贡献
- 把规范性情感(normative affect)操作化为独立的对齐评估目标
- 公开 1,320 vignette 的 Feeling Rules Atlas 基准与显隐两种探测
- 提出 norm-profile card 用于情感敏感部署的模型选型与回归测试
