# Textless, Tiny, and Private: Hashed n-grams + LLM-Teacher Distillation + LDP for Mental-Health Screening

**Venue:** IEEE Transactions on Computational Social Systems · 中科院 SCI  **Author position:** 通讯

## 动机
要在诊所、学校、NGO 等场景对社交媒体用户做心理健康筛查,既要轻量好部署,又要从根上降低暴露个人披露文本的风险。但学界主流方案要么走 LLM 在线推理,合规与算力成本都高;要么走联邦学习,工程开销大且很少同时报告 utility 与隐私审计。已有 dense embedding 容易被 inversion 反推原文,MIA 与训练数据提取攻击进一步抬高了对"无文本表示"的需求。论文同时要把"通过 MIA 数值证明隐私"的常见误用纠正为"以 LDP 形式保证,MIA 仅作诊断"。

## 方法
设计端侧 CPU 即可训练的 pipeline:文本经清洗与可选去标识后,提取 n∈{3,4,5} 字符 n-gram,用 64-bit MurmurHash3 + 加盐做 feature hashing,逐用户聚合为二值 presence vector X_u;只对该向量做一次性 subsampled randomized response,把每用户 LDP 预算钉在 ε_user ≤ 8.8(基本组合下),避免按帖随机化所带来的 B·r·ε_b 增长。可解释性通过 LLM-teacher 概念蒸馏获得:用冻结 LLM(中英文各一,如 GPT/Qwen)在离线小子集上标注 12 个临床相关概念(无望、自责、睡眠紊乱、求助等);训练只读 hashed 特征的紧凑 logistic students 复现这些概念,并通过 mean/var/max/acf1 聚合得到用户级 K×R 概念特征;最后用 isotonic 校准的轻量 logistic 完成二分类。隐私侧广泛审计 loss-threshold MIA、LiRA、白盒 MIA、salt rotation 与跨部署 linkage。

## 关键结果
- 两个大型 Weibo 用户级语料上,Hashed + DP + Concepts 的 macro-AUPRC 与 dense embedding 基线相当,但保持 CPU-only 占用。
- **相对无概念的 hashed baseline,引入 LLM 蒸馏概念后 macro-AUPRC 一致提升,isotonic 校准后 ECE 显著下降。**
- 默认 ε_user 预算下,LDP + salt rotation 把 user-level membership inference 攻击成功率降到接近随机,跨部署 linkage AUC 显著趋近 0.5,优于 embedding inversion 基线对原文的可重建程度。
- 概念跨教师 Pearson r=0.78,说明 LLM 概念信号在 student 上具有可迁移性。

## 贡献
- 端到端 textless 表示 + 一次性用户级本地 DP,提供 ε_hash = r·ε_b 的可辩护 LDP 保证
- LLM-teacher → tiny student 概念瓶颈蒸馏,推理时不再调用 LLM,也不保留原文
- 把 utility、校准、LDP 形式保证与多种 MIA / 反演 / linkage 攻击审计并列报告
