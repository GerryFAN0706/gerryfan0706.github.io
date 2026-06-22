# Graph-Preference Learning: Debiasing Network-Sampled Human Feedback for Target Welfare Estimation

**Venue:** ICML 2026 · CCF-A  **Author position:** 一作 / 通讯

## 动机
RLHF 与 DPO 的标准做法假设标注者是 i.i.d. 抽样,但现实中标注者通过平台曝光、机构联系与社交关系被招募,呈现明显的网络结构,导致 inclusion probability 与图中心性相关:结构上居中的群体贡献了过多的偏好对。当 identity 被丢弃时,标准 scalar reward model 实际上学到的是"按 inclusion 加权的福利",从而系统性高估中心化社区的偏好。论文要回答:在网络抽样下,reward model 到底学到了什么 aggregate welfare?如何把它向设计者选定的 target welfare 校准?

## 方法
将标注者视为图 G=(V,E) 上的节点,显式区分观察到的 inclusion 分布 q 与规范目标权重 π,并证明:identity-agnostic scalar reward 最小化的是 q-mixture 目标(Theorem 1),从而隐含 inclusion 加权 welfare w_q。提出 **Graph-Preference Learning** 两个组件:GPRM(graph-personalized reward model)通过 message-passing 注释者嵌入 + 拉普拉斯正则的 Bradley–Terry 损失学习 per-annotator reward;GBA(graph-balanced aggregation)解一个凸 QP,把原始重要性比 π_i/q_i 稳定化为 α*,并给出诱导权重 \tildeπ = q ⊙ α*。理论上从 weight mismatch、模型逼近误差、有限样本误差三方面给出 welfare deviation bound。

## 关键结果
- 在合成图与 LMArena 偏好数据 semi-synthetic 案例(通过 graph-based 采样人为注入网络偏置)上,target-welfare 恢复误差最大降低 **62%**。
- 在跨语言群体之间的性能差距降低 17%,整体偏好预测准确率提升 18%。
- α* 经稳定化后比朴素逆倾向权重显著降低方差,在高异质图上仍稳健;权重可直接接入下游 DPO/PPO 目标进行重加权。

## 贡献
- 首次形式化"network-sampled 标注者下的 reward modeling"问题并刻画 q ≠ π 引致的 welfare gap
- 提出 GPRM + GBA 两阶段方法及其稳定化 QP,提供 welfare deviation 上界
- 在合成与真实偏好数据上给出 debiasing 量化证据,可即插入到 RLHF / DPO 流水线
